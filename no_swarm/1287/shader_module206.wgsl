struct Struct_1 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: Struct_2,
    d: vec2<u32>,
    e: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: vec4<f32>,
    c: i32,
    d: vec3<bool>,
}

struct Struct_5 {
    a: u32,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: Struct_4 = Struct_4(1i, vec4<f32>(-1000f, 513f, 152f, 853f), 2147483647i, vec3<bool>(true, true, false));

var<private> global2: Struct_2;

var<private> global3: Struct_2;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: u32, arg_1: Struct_2) -> bool {
    global3 = arg_1;
    global2 = global0.a;
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-260f, _wgslsmith_f_op_f32(round(global0.b)), -1000f)) + global1.b.zww) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(665f, global2.a.d.x, _wgslsmith_f_op_f32(global3.a.d.x + -197f))), vec3<f32>(_wgslsmith_f_op_f32(sign(-199f)), _wgslsmith_f_op_f32(min(global1.b.x, _wgslsmith_f_op_f32(exp2(global3.a.d.x)))), _wgslsmith_f_op_f32(floor(arg_1.a.d.x))), vec3<bool>(!global1.d.x, (global0.d.x ^ 0u) >= ~0u, global0.e.a.x))));
    global2 = Struct_2(arg_1.a, _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(-(~global0.c.a.b.zz), _wgslsmith_div_vec2_i32(~vec2<i32>(0i, u_input.b), vec2<i32>(-73676i, arg_1.b))), max(reverseBits(abs(arg_1.b)), 2147483647i >> (~u_input.a.x % 32u))));
    let var_1 = arg_1;
    return global3.a.a.x;
}

fn func_2() -> Struct_4 {
    var var_0 = vec4<bool>(select(all(!(!vec2<bool>(global0.c.a.a.x, true))), !global3.a.a.x || true, any(global2.a.a)), true, true, firstLeadingBit(global0.c.a.b.x) >= 1i);
    let var_1 = select(vec2<bool>(!var_0.x != var_0.x, func_3(countOneBits(13895u), global0.a)), !var_0.wx, vec2<bool>(global2.a.a.x, all(vec3<bool>(global0.a.a.a.x, select(global1.d.x, true, global1.d.x), true))));
    global2 = Struct_2(global0.c.a, abs(i32(-1i) * -9008i));
    let var_2 = ~_wgslsmith_mod_vec4_i32(abs(vec4<i32>(_wgslsmith_add_i32(-7465i, global2.b), global0.a.a.b.x, i32(-1i) * -2147483647i, i32(-1i) * -9716i)), vec4<i32>((23902i ^ global0.c.a.b.x) ^ (30901i ^ global1.c), max(global0.e.b.x, u_input.b), abs(u_input.b), -global1.a));
    let var_3 = Struct_4(9707i, vec4<f32>(_wgslsmith_f_op_f32(-1f), -185f, global3.a.d.x, _wgslsmith_f_op_f32(max(104f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.a.d.x * -123f) - -1439f)))), -3612i, vec3<bool>(var_0.x, var_0.x, true));
    return Struct_4(global2.a.b.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_3.b.x, -1107f, global2.a.d.x, -251f), vec4<f32>(-1819f, global3.a.d.x, global3.a.d.x, -666f), var_3.d.x)), var_3.b) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(global1.b)))) + vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1035f * -1594f), -425f), _wgslsmith_f_op_f32(sign(-1044f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1359f + global0.e.d.x)))), -12843i, vec3<bool>(global1.d.x | !any(global3.a.a), !var_3.d.x, !all(!global1.d)));
}

fn func_1(arg_0: Struct_5, arg_1: Struct_3, arg_2: i32, arg_3: i32) -> u32 {
    global2 = global0.a;
    global1 = func_2();
    var var_0 = -global2.b;
    let var_1 = 66923u;
    global0 = arg_1;
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~select(vec3<u32>(global2.a.c.x << (19929u % 32u), _wgslsmith_mult_u32(~1u, func_1(Struct_5(25628u, vec2<bool>(global0.e.a.x, true)), Struct_3(global0.a, 335f, Struct_2(global0.a.a, 13478i), global2.a.c.xy, Struct_1(global0.c.a.a, global0.e.b, global0.a.a.c, vec3<f32>(-1475f, -1130f, global1.b.x))), u_input.b, 1i)), 4294967295u), reverseBits(u_input.a.wzy), vec3<bool>(true, any(global2.a.a.zwy), select(global3.a.a.x, global2.a.a.x, any(vec3<bool>(false, global0.c.a.a.x, false)))));
    var var_1 = global2.a;
    var var_2 = select(!select(select(select(global3.a.a, vec4<bool>(false, global1.d.x, var_1.a.x, global1.d.x), global2.a.a), !global2.a.a, var_1.a), global0.a.a.a, true), !(!global3.a.a), global3.a.a.x);
    var var_3 = func_2().d.yz;
    var_1 = global2.a;
    var var_4 = global2.a.c.zz >> (max(~(~vec2<u32>(11765u, 1u)), var_1.c.yx) % vec2<u32>(32u));
    global2 = Struct_2(Struct_1(select(vec4<bool>(global2.a.a.x, var_2.x, false, global1.d.x | true), vec4<bool>(all(vec3<bool>(true, global0.a.a.a.x, false)), true, true, true), !(true || global3.a.a.x)), -global2.a.b, vec3<u32>(_wgslsmith_mod_u32(var_0.x, max(46029u, global2.a.c.x)), abs(var_4.x), firstTrailingBit(var_4.x)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(global1.b.xyz, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.d.x, -357f, var_1.d.x)), false)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0.a.a.d.x, global3.a.d.x, 995f)))))))), 68226i);
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_add_i32(~var_1.b.x, var_1.b.x), global2.a.b.wyx);
}

