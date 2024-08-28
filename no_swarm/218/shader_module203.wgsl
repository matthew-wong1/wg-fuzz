struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: vec4<f32> = vec4<f32>(834f, -792f, 1765f, 414f);

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec2<u32>) -> u32 {
    var var_0 = arg_0;
    let var_1 = false;
    var var_2 = _wgslsmith_div_u32(var_0.x | 19900u, _wgslsmith_mult_u32(arg_0.x, (~35030u | var_0.x) << (reverseBits(1u) % 32u)));
    var var_3 = vec4<bool>(!any(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, var_1, var_1, false), vec4<bool>(var_1, true, var_1, true))), !(!all(vec3<bool>(var_1, false, true))) | !var_1, false, all(!vec3<bool>(var_1, false, select(var_1, true, false))));
    let var_4 = var_3.x;
    return 9582u;
}

fn func_2(arg_0: vec4<f32>, arg_1: u32, arg_2: vec2<i32>, arg_3: vec2<f32>) -> i32 {
    global0 = vec2<u32>(_wgslsmith_div_u32(arg_1, func_3(~(~vec2<u32>(15960u, arg_1)))), ~18597u);
    var var_0 = _wgslsmith_sub_u32(u_input.a, global0.x);
    global0 = vec2<u32>(global0.x, 50585u);
    var var_1 = Struct_1(firstTrailingBit(0i));
    var var_2 = Struct_1(var_1.a);
    return _wgslsmith_add_i32(arg_2.x, -10506i);
}

fn func_1(arg_0: Struct_2) -> bool {
    let var_0 = Struct_2(_wgslsmith_div_i32(55767i, ~(func_2(vec4<f32>(global1.x, -1203f, 648f, global1.x), 28021u, vec2<i32>(0i, -1i), vec2<f32>(-638f, -1017f)) ^ (arg_0.a & arg_0.b.a))), Struct_1(-30947i));
    let var_1 = (((vec3<u32>(global0.x, 0u, u_input.b.x) ^ u_input.b.xxx) ^ countOneBits(vec3<u32>(global0.x, 1253u, u_input.a))) ^ ~abs(vec3<u32>(global0.x, u_input.b.x, global0.x))) << (~(abs(vec3<u32>(global0.x, 4294967295u, 1u)) >> (_wgslsmith_add_vec3_u32(select(u_input.b.wxx, vec3<u32>(0u, 0u, u_input.b.x), false), u_input.b.wyx) % vec3<u32>(32u))) % vec3<u32>(32u));
    var var_2 = var_1.yy;
    let var_3 = 1u;
    var var_4 = !(!any(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true))) & true);
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(false, global1.x >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(global1.x, -907f)))), false & func_1(Struct_2(1i, Struct_1(32641i))), all(!select(select(vec2<bool>(true, true), vec2<bool>(true, false), false), vec2<bool>(true, true), vec2<bool>(true, true))));
    var var_1 = global0.x;
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, global1.x, global1.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1322f, -107f, -412f, global1.x)))))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-504f, 450f, global1.x, global1.x) * vec4<f32>(1364f, global1.x, global1.x, global1.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-285f, -1618f, global1.x, global1.x) - vec4<f32>(650f, -1029f, 1024f, 118f)))))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(ceil(global1.x)), _wgslsmith_f_op_f32(global1.x * -3256f)))), vec2<f32>(_wgslsmith_f_op_f32(global1.x - 1f), -634f)));
    var var_3 = Struct_2(~_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(-2147483647i, -23230i), _wgslsmith_add_i32(14511i, -1i), abs(0i), ~(-1797i)), reverseBits(vec4<i32>(-1i, -1i, -50557i, -35257i))), Struct_1(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(-2147483647i, -38815i)), vec2<i32>(1i, 1i)), abs(-2147483647i))));
    var_1 = ~1u;
    var var_4 = _wgslsmith_add_u32(firstLeadingBit(18573u), select(4294967295u, 4294967295u, var_0.x || true));
    let var_5 = 811f;
    let var_6 = select(abs(abs(_wgslsmith_sub_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(var_3.a, -2147483647i)))), _wgslsmith_mult_vec2_i32(-(~firstTrailingBit(vec2<i32>(-16833i, 0i))), ~vec2<i32>(11235i, var_3.b.a & var_3.a)), all(select(vec2<bool>(true, var_0.x | var_0.x), select(vec2<bool>(true, true), var_0.zz, var_0.x), !var_0.yy)));
    let x = u_input.a;
    s_output = StorageBuffer(~firstLeadingBit(u_input.b.yy) >> (_wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.a, 4294967295u), min(vec2<u32>(u_input.a, 5620u), u_input.b.yy) | ~vec2<u32>(1u, u_input.b.x)) % vec2<u32>(32u)), vec3<i32>(-_wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(var_6.x, var_6.x, 799i)), ~vec3<i32>(-47851i, 12703i, var_6.x)), _wgslsmith_mult_i32(-_wgslsmith_dot_vec4_i32(vec4<i32>(14122i, var_6.x, -2147483647i, var_6.x), vec4<i32>(-43708i, var_3.b.a, -23276i, var_3.a)), 0i), -15065i), ~u_input.b.wzw);
}

