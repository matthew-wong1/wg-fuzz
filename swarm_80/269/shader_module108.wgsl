struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: i32,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: Struct_2 = Struct_2(Struct_1(i32(-2147483648)));

var<private> global2: vec4<bool> = vec4<bool>(true, false, false, false);

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: bool, arg_3: Struct_2) -> Struct_1 {
    let var_0 = u_input.c;
    var var_1 = Struct_3(Struct_2(Struct_1(var_0.x | -arg_1.a.a)), vec2<u32>(u_input.e, ~0u), arg_3.a.a, Struct_2(arg_3.a), arg_3);
    var var_2 = true;
    let var_3 = arg_1;
    let var_4 = true;
    return Struct_1(-18931i);
}

fn func_1(arg_0: bool, arg_1: Struct_3, arg_2: Struct_3) -> i32 {
    var var_0 = Struct_2(Struct_1(49974i));
    var_0 = arg_1.a;
    let var_1 = arg_2.b.x;
    let var_2 = reverseBits(u_input.c.yww);
    var var_3 = func_2(firstLeadingBit(vec3<u32>(_wgslsmith_sub_u32(~var_1, ~4294967295u), 1u, _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(0u, arg_1.b.x, 4294967295u, 0u)), _wgslsmith_div_vec4_u32(vec4<u32>(25779u, 1u, 10026u, var_1), vec4<u32>(7431u, 21025u, 4294967295u, var_1))))), arg_2.e, false, Struct_2(Struct_1(arg_1.c)));
    return ~(-u_input.c.x);
}

fn func_3(arg_0: Struct_2) -> vec2<bool> {
    let var_0 = global2.yx;
    global2 = select(select(!(!vec4<bool>(var_0.x, true, global2.x, false)), select(vec4<bool>(true, false, var_0.x, !var_0.x), vec4<bool>(false, false, global2.x | true, u_input.b >= arg_0.a.a), u_input.d <= u_input.d), any(vec4<bool>(global0.x > global0.x, global0.x > -1110f, true, true))), vec4<bool>(!global2.x, !all(global2.xxz), false, global2.x), var_0.x);
    var var_1 = Struct_2(arg_0.a);
    global2 = vec4<bool>(true, any(vec4<bool>(_wgslsmith_div_u32(19637u, u_input.d) >= firstTrailingBit(u_input.d), any(vec2<bool>(global2.x, global2.x)) && var_0.x, global2.x || global2.x, global1.a.a != ~0i)), var_0.x, !(!all(global2.wx)));
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1137f, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(425f, global0.x), _wgslsmith_f_op_f32(global0.x * global0.x)))))) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global0.x, global0.x))) * _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-1000f, global0.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0.x, global0.x), vec2<f32>(-1244f, global0.x))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, 1135f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) + vec2<f32>(-1249f, global0.x)))))));
    return vec2<bool>(!(_wgslsmith_f_op_f32(global0.x + -477f) < global0.x), any(global2.wxw));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.a;
    global2 = select(!vec4<bool>(!(!global2.x), false, !any(vec2<bool>(global2.x, global2.x)), false), vec4<bool>(true, (firstTrailingBit(-1i) != func_1(global2.x, Struct_3(Struct_2(global1.a), vec2<u32>(u_input.a, 843u), var_0.a, Struct_2(global1.a), Struct_2(global1.a)), Struct_3(Struct_2(Struct_1(0i)), vec2<u32>(u_input.d, 1u), 1i, Struct_2(Struct_1(var_0.a)), Struct_2(global1.a)))) | !global2.x, -1139f <= global0.x, any(func_3(Struct_2(Struct_1(1i))))), !(!(!(!vec4<bool>(global2.x, global2.x, global2.x, true)))));
    let var_1 = Struct_3(Struct_2(global1.a), vec2<u32>(1437u, u_input.a), i32(-1i) * -19853i, Struct_2(func_2(select(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, u_input.d, u_input.e), vec3<u32>(u_input.a, 19727u, 0u)), vec3<u32>(14240u, 4294967295u, 0u), any(vec4<bool>(true, false, true, global2.x))), Struct_2(func_2(vec3<u32>(1u, u_input.e, u_input.d), Struct_2(Struct_1(global1.a.a)), true, Struct_2(global1.a))), !global2.x, Struct_2(func_2(vec3<u32>(20549u, 0u, u_input.d), Struct_2(global1.a), false, Struct_2(global1.a))))), Struct_2(Struct_1(43773i)));
    var_0 = func_2(vec3<u32>(~var_1.b.x, ~_wgslsmith_div_u32(~1u, u_input.a), ~u_input.a), Struct_2(func_2(~(vec3<u32>(u_input.a, var_1.b.x, 27771u) << (vec3<u32>(u_input.d, 1u, var_1.b.x) % vec3<u32>(32u))), var_1.a, global2.x, Struct_2(var_1.a.a))), all(select(!select(vec4<bool>(true, false, false, global2.x), vec4<bool>(false, false, global2.x, global2.x), true), select(!vec4<bool>(true, false, global2.x, true), vec4<bool>(global2.x, false, global2.x, false), !vec4<bool>(global2.x, global2.x, global2.x, true)), select(vec4<bool>(false, global2.x, true, global2.x), select(vec4<bool>(false, true, false, false), vec4<bool>(true, global2.x, true, global2.x), vec4<bool>(false, true, global2.x, global2.x)), any(vec4<bool>(global2.x, global2.x, global2.x, global2.x))))), Struct_2(global1.a));
    var var_2 = !(!select(!(!vec4<bool>(global2.x, global2.x, global2.x, global2.x)), !(!vec4<bool>(global2.x, true, global2.x, true)), vec4<bool>(global2.x, false, global0.x >= global0.x, any(global2.yy))));
    var var_3 = Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a, u_input.b), firstTrailingBit(_wgslsmith_div_vec2_i32(u_input.c.zy, u_input.c.wy))) >> (~_wgslsmith_mod_u32(~1u, 72069u) % 32u));
    var var_4 = !select(vec3<bool>(!all(global2.zx), true, all(select(var_2.wxx, var_2.xxz, false))), !(!global2.xxz), vec3<bool>(global2.x, any(vec4<bool>(global2.x, false, false, true)), (global1.a.a < global1.a.a) || true));
    let var_5 = 701f;
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_mult_vec4_i32(u_input.c, u_input.c), firstLeadingBit(u_input.c.wzw), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-495f * var_5)), _wgslsmith_add_i32(var_1.c, 16800i));
}

