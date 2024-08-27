struct Struct_1 {
    a: u32,
    b: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<f32>,
    d: i32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 1> = array<vec3<u32>, 1>(vec3<u32>(26387u, 4294967295u, 4294967295u));

var<private> global1: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(1u, 882f));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_1(arg_0: vec2<i32>, arg_1: i32) -> u32 {
    var var_0 = 0u;
    global1 = array<Struct_1, 1>();
    var_0 = 0u;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-715f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(582f - -1406f) + 1000f))));
    global0 = array<vec3<u32>, 1>();
    return 1u;
}

fn func_3() -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-1798f, _wgslsmith_div_f32(-1322f, -1363f)), _wgslsmith_f_op_f32(f32(-1f) * -475f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1000f, -1561f)) - -181f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(1636f)), _wgslsmith_f_op_f32(sign(-343f)), any(vec2<bool>(false, true)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(930f, 1000f, 856f, 846f) * vec4<f32>(-1186f, -1872f, 1776f, -283f))))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1204f, -1569f, -724f, 968f), vec4<f32>(-1083f, -1160f, -616f, -728f))), vec4<f32>(-1000f, 1331f, 657f, 373f))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1603f, -962f, -537f, -1163f), vec4<f32>(357f, 1407f, 505f, 613f)))))), (firstTrailingBit(func_1(vec2<i32>(-2147483647i, 2147483647i), -2147483647i)) < ((u_input.d.x ^ u_input.a.x) << (u_input.a.x % 32u))) == false));
    var var_1 = _wgslsmith_clamp_vec3_i32(max((select(vec3<i32>(424i, 2147483647i, 2147483647i), vec3<i32>(-74869i, -26799i, 1i), vec3<bool>(false, false, true)) << (global0[_wgslsmith_index_u32(~u_input.b, 1u)] % vec3<u32>(32u))) >> ((global0[_wgslsmith_index_u32(4294967295u << (u_input.b % 32u), 1u)] << (~global0[_wgslsmith_index_u32(u_input.d.x, 1u)] % vec3<u32>(32u))) % vec3<u32>(32u)), vec3<i32>(-_wgslsmith_mult_i32(1i, 79777i), 11523i, ~(~2147483647i))), ~vec3<i32>(0i, max(_wgslsmith_div_i32(-57023i, 58075i), ~(-2147483647i)), -24299i << (u_input.d.x % 32u)), -reverseBits(reverseBits(~vec3<i32>(1i, 0i, 1i))));
    global1 = array<Struct_1, 1>();
    var_1 = vec3<i32>(var_1.x & _wgslsmith_sub_i32(var_1.x, _wgslsmith_clamp_i32(45190i & var_1.x, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 0i, var_1.x), vec3<i32>(0i, -2147483647i, var_1.x)), _wgslsmith_sub_i32(var_1.x, var_1.x))), _wgslsmith_dot_vec4_i32(-_wgslsmith_mult_vec4_i32(-vec4<i32>(2147483647i, -2147483647i, -6039i, var_1.x), vec4<i32>(1i, var_1.x, -42252i, 30339i)), _wgslsmith_mult_vec4_i32(vec4<i32>(var_1.x, _wgslsmith_dot_vec2_i32(var_1.zy, vec2<i32>(1i, -5198i)), abs(var_1.x), min(var_1.x, 1i)), _wgslsmith_div_vec4_i32(vec4<i32>(var_1.x, 1i, 0i, var_1.x), vec4<i32>(-24471i, 1i, -652i, 1i)))), i32(-1i) * -2147483647i);
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(var_0.x)))), 399f), 1027f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -394f)))), var_0.x) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(var_0))), _wgslsmith_f_op_vec4_f32(var_0 - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1487f, var_0.x, 1285f, 924f))))));
    return vec3<f32>(288f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-1368f))))), var_2.x);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>) -> bool {
    let var_0 = arg_0;
    return any(select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false))), select(select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false)), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), false), all(vec2<bool>(false, false))), vec3<bool>(true, true, true), true), vec3<bool>(true | (208f > arg_0.b), false, true)));
}

fn func_2() -> Struct_1 {
    var var_0 = u_input.d & u_input.a;
    global1 = array<Struct_1, 1>();
    var_0 = u_input.a;
    let var_1 = vec4<bool>(true, func_4(global1[_wgslsmith_index_u32(var_0.x, 1u)], _wgslsmith_f_op_vec3_f32(func_3())), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-551f - _wgslsmith_f_op_f32(trunc(-1551f))))) == -186f, func_4(Struct_1(1u, _wgslsmith_f_op_f32(-2056f * _wgslsmith_f_op_f32(floor(-164f)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1000f, 470f, 2653f)))))));
    let var_2 = Struct_1((_wgslsmith_sub_u32(1u, 1u) >> ((~var_0.x >> (u_input.c % 32u)) % 32u)) << (~(~(~u_input.a.x)) % 32u), _wgslsmith_f_op_f32(trunc(-571f)));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~_wgslsmith_sub_u32(func_1(~vec2<i32>(2147483647i, 2147483647i), -1i), firstTrailingBit(72504u >> (u_input.b % 32u))), _wgslsmith_f_op_f32(f32(-1f) * -954f));
    var var_1 = firstLeadingBit(vec3<i32>(i32(-1i) * -_wgslsmith_mod_i32(-2147483647i, -12330i), max(1i, -1i), -11493i));
    var_0 = func_2();
    var var_2 = 6571u;
    let var_3 = var_1.x;
    global0 = array<vec3<u32>, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(~1u, -(~((0i & var_1.x) >> (_wgslsmith_add_u32(var_0.a, 0u) % 32u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(max(var_0.b, var_0.b)), _wgslsmith_f_op_f32(var_0.b * var_0.b), var_0.b, 872f))) - vec4<f32>(_wgslsmith_div_f32(-2352f, _wgslsmith_f_op_f32(var_0.b + var_0.b)), var_0.b, -1477f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -527f))))), select(1i, ~firstLeadingBit(var_1.x), true), select(_wgslsmith_mod_vec2_u32(~(~vec2<u32>(0u, 0u)), ~vec2<u32>(4294967295u, var_0.a) << ((u_input.d << (vec2<u32>(8703u, u_input.d.x) % vec2<u32>(32u))) % vec2<u32>(32u))), min(~abs(vec2<u32>(4294967295u, 0u)), u_input.a), !any(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true)))));
}

