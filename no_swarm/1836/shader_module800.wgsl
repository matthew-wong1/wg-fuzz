struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: f32, arg_3: Struct_3) -> u32 {
    let var_0 = arg_0;
    return firstLeadingBit(~_wgslsmith_add_u32(~_wgslsmith_mod_u32(26111u, arg_3.b.a.x), ~reverseBits(0u)));
}

fn func_2() -> f32 {
    var var_0 = select(firstLeadingBit(_wgslsmith_sub_u32(firstTrailingBit(17018u), 32352u)) << ((u_input.b & 4294967295u) % 32u), u_input.b, true);
    let var_1 = ~(~(min(abs(vec4<u32>(u_input.b, u_input.b, 11905u, u_input.b)), ~vec4<u32>(4294967295u, u_input.b, 0u, u_input.b)) ^ vec4<u32>(~u_input.b, func_3(1i, 734f, 513f, Struct_3(vec3<bool>(true, false, true), Struct_1(vec3<u32>(0u, 2250u, 0u)))), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, u_input.b), vec3<u32>(22066u, 0u, u_input.b)), 29576u)));
    var var_2 = Struct_3(select(select(vec3<bool>(true, true, 1i < u_input.a), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true))), true), vec3<bool>(true, select(false, true, all(vec3<bool>(false, true, false))), !(u_input.a < 2147483647i)), vec3<bool>(true, true, true)), Struct_1(firstTrailingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(55133u, var_1.x, 4294967295u), var_1.zww, vec3<u32>(var_1.x, u_input.b, u_input.b)) | var_1.xzx)));
    let var_3 = Struct_1(var_2.b.a);
    let var_4 = var_2.b.a.x;
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-990f))) * 727f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(145f)), _wgslsmith_f_op_f32(floor(-841f)), var_2.a.x || var_2.a.x)), _wgslsmith_f_op_f32(ceil(195f))) + -405f), 0u > var_1.x));
}

fn func_1() -> i32 {
    var var_0 = _wgslsmith_add_u32(u_input.b, 0u);
    var var_1 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) - 918f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1149f, 2327f)) + -577f) + -590f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1476f, -638f, true)) * _wgslsmith_f_op_f32(f32(-1f) * -1367f)) + _wgslsmith_f_op_f32(-557f - _wgslsmith_f_op_f32(trunc(1084f)))))));
    var var_2 = Struct_4(Struct_3(!vec3<bool>(true, true, 159843u >= u_input.b), Struct_1(_wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 6140u, 29542u), vec3<u32>(22613u, u_input.b, 71068u)), vec3<u32>(u_input.b, 0u, u_input.b)))));
    var_1 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, var_1.x)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_1.x, var_1.x, -1352f))))), vec3<f32>(var_1.x, _wgslsmith_f_op_f32(floor(-1280f)), _wgslsmith_f_op_f32(-1f)))));
    var_0 = u_input.b;
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(_wgslsmith_mult_i32(~(~1i), -1i) ^ func_1());
    var_0 = firstLeadingBit(u_input.a);
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -431f);
    var var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -658f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -460f))))));
    var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1655f);
    var_1 = 778f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-534f, _wgslsmith_f_op_f32(-1000f * 1844f), _wgslsmith_f_op_f32(abs(-178f)), -700f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(383f, 525f, -133f, -905f)) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(661f, 1393f, 468f, -1109f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-328f, -276f, 395f, 634f) - vec4<f32>(1069f, 437f, -1843f, -1000f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1260f, -158f, 827f, 244f) - vec4<f32>(-1280f, 1253f, 655f, 204f)), true)) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1130f, 285f, 1000f, -616f)), _wgslsmith_div_vec4_f32(vec4<f32>(118f, -659f, -1600f, -1000f), vec4<f32>(-236f, 429f, -380f, -2047f)))))), u_input.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(960f, 208f, 607f, -848f), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(261f, 626f, -1000f, -1000f), vec4<f32>(1397f, 1328f, -931f, 1000f))), vec4<bool>(false, false, true, false))) * vec4<f32>(_wgslsmith_f_op_f32(1439f - -684f), _wgslsmith_f_op_f32(sign(-737f)), _wgslsmith_f_op_f32(-208f - 467f), _wgslsmith_f_op_f32(1000f * 633f))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1000f, -1000f, 537f, 708f), vec4<f32>(-897f, 2890f, 268f, 124f))), _wgslsmith_div_vec4_f32(vec4<f32>(776f, 638f, -1213f, 733f), vec4<f32>(379f, -590f, -1000f, 1000f)))))));
}

