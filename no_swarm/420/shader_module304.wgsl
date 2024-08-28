struct Struct_1 {
    a: vec4<bool>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: vec3<i32>,
}

struct Struct_4 {
    a: u32,
    b: vec3<u32>,
    c: Struct_2,
    d: vec2<u32>,
}

struct Struct_5 {
    a: f32,
    b: vec4<i32>,
    c: f32,
    d: vec3<u32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: u32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec3<i32>;

var<private> global2: array<Struct_3, 3> = array<Struct_3, 3>(Struct_3(false, 1481f, vec3<i32>(-1i, 0i, 0i)), Struct_3(true, 410f, vec3<i32>(-27194i, 1i, 27136i)), Struct_3(false, 486f, vec3<i32>(53749i, 9637i, 0i)));

var<private> global3: Struct_1 = Struct_1(vec4<bool>(true, false, false, false), vec2<u32>(29497u, 4282u));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> i32 {
    var var_0 = select(~_wgslsmith_sub_u32(global3.b.x, countOneBits(u_input.a)), 1u, true);
    let var_1 = Struct_3(!(!(all(global3.a.wxy) & any(vec4<bool>(true, true, true, global3.a.x)))), _wgslsmith_f_op_f32(sign(339f)), min(u_input.b, reverseBits(reverseBits(u_input.b << (vec3<u32>(global3.b.x, global3.b.x, u_input.a) % vec3<u32>(32u))))));
    let var_2 = 94184u;
    var var_3 = !(!vec4<bool>(1472f > _wgslsmith_f_op_f32(-var_1.b), !var_1.a, all(vec4<bool>(false, var_1.a, global3.a.x, false)), any(vec4<bool>(global3.a.x, var_1.a, var_1.a, true))));
    var var_4 = Struct_4(4294967295u, ~(~(~select(vec3<u32>(u_input.a, global3.b.x, var_2), vec3<u32>(u_input.a, 4294967295u, var_2), vec3<bool>(true, var_3.x, false)))), Struct_2(vec2<u32>(~_wgslsmith_add_u32(2104u, 7647u), var_2)), global3.b);
    return i32(-1i) * -(i32(-1i) * -1i);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_5, arg_2: f32) -> vec3<u32> {
    global1 = arg_1.b.yxy;
    global2 = array<Struct_3, 3>();
    let var_0 = global3.a.xyz;
    var var_1 = arg_1.d.x;
    global1 = _wgslsmith_sub_vec3_i32(vec3<i32>(func_3(), u_input.b.x, 5355i), arg_1.b.wxx);
    return arg_1.d;
}

fn func_1(arg_0: vec4<f32>, arg_1: i32) -> u32 {
    let var_0 = firstLeadingBit(vec3<u32>(_wgslsmith_add_u32(0u, ~0u), ~(~u_input.a), ~41972u) << (vec3<u32>(_wgslsmith_mult_u32(~u_input.a, 3547u), u_input.a, _wgslsmith_mult_u32(global3.b.x, u_input.a)) % vec3<u32>(32u)));
    var var_1 = Struct_4(_wgslsmith_mod_u32(global3.b.x, u_input.a), ~(var_0 & select(func_2(Struct_1(global3.a, var_0.xx), Struct_5(800f, vec4<i32>(-1i, u_input.b.x, 2147483647i, u_input.b.x), -862f, var_0, Struct_2(var_0.zy)), arg_0.x), vec3<u32>(var_0.x, 51540u, u_input.a), !global3.a.x)), Struct_2(~vec2<u32>(var_0.x, var_0.x) >> (vec2<u32>(_wgslsmith_add_u32(4294967295u, global3.b.x), global3.b.x) % vec2<u32>(32u))), firstLeadingBit(vec2<u32>(1u, var_0.x)));
    var var_2 = _wgslsmith_div_u32(firstTrailingBit(global3.b.x), _wgslsmith_mult_u32(firstTrailingBit(74778u), _wgslsmith_mod_u32(~(36561u | u_input.a), ~_wgslsmith_div_u32(u_input.a, global3.b.x))));
    var_2 = global3.b.x;
    global1 = -u_input.b;
    return u_input.a >> (~(~(~4648u)) % 32u);
}

fn func_4(arg_0: vec2<i32>, arg_1: f32, arg_2: Struct_2, arg_3: Struct_5) -> Struct_5 {
    global1 = vec3<i32>(arg_0.x, 0i, reverseBits(-1i));
    global1 = vec3<i32>(-1i) * -arg_3.b.wwz;
    let var_0 = vec2<i32>(-24912i, abs(abs(-arg_3.b.x)));
    let var_1 = !vec3<bool>((!global3.a.x || (true | global3.a.x)) || !global3.a.x, global3.a.x, any(!select(global3.a.yz, global3.a.yz, global3.a.x)));
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(abs(-max(vec2<i32>(global1.x, -61568i), global1.xx)), -572f, Struct_2(~(~global3.b)), Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(896f)), _wgslsmith_f_op_f32(abs(-134f)))), vec4<i32>(global1.x, 3472i, -2147483647i, abs(i32(-1i) * -8520i)), _wgslsmith_div_f32(-2725f, 1050f), vec3<u32>(func_1(vec4<f32>(-1182f, -325f, -856f, -1613f), u_input.b.x ^ global1.x), 1u, max(24912u, u_input.a)), Struct_2(vec2<u32>(~u_input.a, u_input.a))));
    var var_1 = 40423u;
    global2 = array<Struct_3, 3>();
    global3 = Struct_1(vec4<bool>(true, true, !all(select(vec3<bool>(global3.a.x, global3.a.x, false), global3.a.xww, global3.a.zwy)), !(!global3.a.x && !global3.a.x)), vec2<u32>(~((7854u >> (global3.b.x % 32u)) ^ 0u), global3.b.x | 4294967295u));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-211f, 1008f, -525f)) + vec3<f32>(214f, var_0.a, var_0.c))))) - vec3<f32>(var_0.a, _wgslsmith_f_op_f32(-763f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(var_0.a)), 1f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c) + var_0.a)));
    global2 = array<Struct_3, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(max(~vec4<u32>(global3.b.x, 4294967295u, 4294967295u, global3.b.x), countOneBits(~vec4<u32>(74791u, 0u, global3.b.x, var_0.d.x)))), ~(~var_0.d), ~78180u, firstTrailingBit(vec2<u32>(~var_0.d.x, 4294967295u)) ^ var_0.d.xx);
}

