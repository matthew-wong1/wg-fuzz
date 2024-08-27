struct Struct_1 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec2<f32>,
    d: i32,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: vec2<f32>) -> f32 {
    var var_0 = Struct_1(-_wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(39661i, 0i), vec2<i32>(1i, 17404i)), vec2<i32>(u_input.a, 2147483647i) >> (vec2<u32>(1u, 74935u) % vec2<u32>(32u))) >> (_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, arg_0) << (firstTrailingBit(vec2<u32>(0u, 4294967295u)) % vec2<u32>(32u)), abs(abs(vec2<u32>(arg_0, 1u)))) % vec2<u32>(32u)), ~vec2<u32>(arg_0, 34317u), arg_1, u_input.a);
    let var_1 = vec2<u32>(arg_0, _wgslsmith_dot_vec4_u32(~min(~vec4<u32>(arg_0, arg_0, u_input.b, u_input.b), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, var_0.b.x, 0u, 50021u), vec4<u32>(arg_0, 1u, var_0.b.x, 4294967295u))), ~(~vec4<u32>(var_0.b.x, var_0.b.x, arg_0, 0u)) | ~_wgslsmith_add_vec4_u32(vec4<u32>(29517u, arg_0, arg_0, 1u), vec4<u32>(38912u, 88106u, 4294967295u, 61529u))));
    var_0 = Struct_1(vec2<i32>(2147483647i, u_input.a), var_1, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-914f, -373f)))), _wgslsmith_add_i32(var_0.a.x, u_input.a));
    let var_2 = u_input.b;
    var_0 = Struct_1(var_0.a, vec2<u32>(87514u, ~(~(~arg_0))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0.c.x, arg_1.x), var_0.c))))), i32(-1i) * -49494i);
    return arg_1.x;
}

fn func_2(arg_0: bool) -> f32 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1478f), _wgslsmith_f_op_f32(1031f * 592f), 1306f, _wgslsmith_f_op_f32(select(2564f, -259f, arg_0))))) * vec4<f32>(_wgslsmith_div_f32(258f, -511f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(218f - -325f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-746f + 534f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1342f * -1011f)))));
    var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.a - var_0.a)), _wgslsmith_f_op_vec4_f32(var_0.a + _wgslsmith_f_op_vec4_f32(floor(var_0.a))))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-321f, var_0.a.x), _wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(1143f)), var_0.a.x)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(3617u, var_0.a.xz)))))));
    var var_2 = u_input.b;
    var var_3 = select(select(select(vec3<bool>(any(vec2<bool>(arg_0, true)), true, !arg_0), select(vec3<bool>(arg_0, false, arg_0), !vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(arg_0, true, arg_0)), !(!vec3<bool>(true, arg_0, true))), select(select(!vec3<bool>(arg_0, arg_0, arg_0), select(vec3<bool>(arg_0, true, false), vec3<bool>(true, true, true), vec3<bool>(false, arg_0, arg_0)), arg_0), !vec3<bool>(arg_0, arg_0, false), !select(vec3<bool>(arg_0, false, false), vec3<bool>(arg_0, arg_0, true), arg_0)), false), !select(vec3<bool>(all(vec2<bool>(arg_0, arg_0)), select(arg_0, true, true), true), vec3<bool>(false, select(false, arg_0, false), false), !vec3<bool>(true, true, arg_0)), select(select(select(select(vec3<bool>(arg_0, false, arg_0), vec3<bool>(false, true, arg_0), vec3<bool>(true, arg_0, arg_0)), vec3<bool>(arg_0, arg_0, arg_0), !vec3<bool>(arg_0, false, false)), select(!vec3<bool>(arg_0, false, false), select(vec3<bool>(arg_0, false, arg_0), vec3<bool>(false, true, arg_0), true), arg_0), select(select(vec3<bool>(arg_0, false, true), vec3<bool>(arg_0, false, arg_0), vec3<bool>(true, arg_0, false)), !vec3<bool>(false, false, arg_0), vec3<bool>(true, true, false))), vec3<bool>(arg_0, true, select(!arg_0, all(vec2<bool>(true, true)), all(vec4<bool>(arg_0, arg_0, false, false)))), !vec3<bool>(arg_0, arg_0, true)));
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1.x - var_0.a.x)));
}

fn func_4(arg_0: vec2<f32>, arg_1: f32, arg_2: f32) -> Struct_1 {
    let var_0 = Struct_1(min(max(abs(~vec2<i32>(-2147483647i, -10047i)), reverseBits(vec2<i32>(u_input.a, -1i))), ~max(_wgslsmith_sub_vec2_i32(vec2<i32>(1i, u_input.a), vec2<i32>(u_input.a, u_input.a)), vec2<i32>(-4120i, u_input.a))), countOneBits(vec2<u32>(u_input.b & ~4294967295u, _wgslsmith_div_u32(35085u, u_input.b))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(arg_0 + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1422f, 1876f)))), arg_0, arg_1 != -401f)), u_input.a);
    var var_1 = Struct_1(select(_wgslsmith_clamp_vec2_i32(var_0.a, var_0.a, vec2<i32>(var_0.a.x << (var_0.b.x % 32u), -1i)), select(~vec2<i32>(u_input.a, var_0.d), vec2<i32>(1i, 1i), select(vec2<bool>(false, true), vec2<bool>(false, true), true)) << (var_0.b % vec2<u32>(32u)), !vec2<bool>(all(vec4<bool>(false, false, true, false)), all(vec4<bool>(true, true, false, false)))), var_0.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-615f, arg_0.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(var_0.c.x)), -547f)))), ~firstLeadingBit(_wgslsmith_mod_i32(-u_input.a, -8232i & var_0.a.x)));
    var var_2 = abs(~(~vec3<u32>(1u, 1u, 1u)) ^ (_wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, 8346u, var_0.b.x), vec3<u32>(u_input.b, var_1.b.x, var_1.b.x)), vec3<u32>(u_input.b, u_input.b, 28126u)) | ~vec3<u32>(21754u, var_0.b.x, var_1.b.x)));
    var_1 = Struct_1(select(vec2<i32>(i32(-1i) * -2012i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a.x, 1i, 2147483647i, u_input.a), vec4<i32>(u_input.a, var_1.d, 16042i, u_input.a))) << (var_2.yz % vec2<u32>(32u)), vec2<i32>(0i, var_0.a.x), vec2<bool>(true, _wgslsmith_f_op_f32(floor(-124f)) >= 349f)), var_0.b, vec2<f32>(arg_1, -126f), -9856i);
    let var_3 = Struct_1(var_1.a >> (~vec2<u32>(u_input.b, ~26307u) % vec2<u32>(32u)), ~var_0.b, var_0.c, -44961i);
    return Struct_1(vec2<i32>(var_0.d, var_0.d), var_2.zx, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(826f, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_0.c.x, var_0.c.x), arg_2))))), -1i);
}

fn func_1() -> vec2<f32> {
    var var_0 = func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(827f, -1936f))) - vec2<f32>(-802f, 960f)))), _wgslsmith_f_op_f32(184f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(true)))), _wgslsmith_f_op_f32(-1117f - 1843f));
    var var_1 = _wgslsmith_f_op_f32(-1352f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -125f), -1000f))))));
    let var_2 = -reverseBits(_wgslsmith_mult_i32(var_0.a.x, firstLeadingBit(abs(-1i))));
    return _wgslsmith_div_vec2_f32(var_0.c, var_0.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(func_1());
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-586f, -465f, var_0.x, var_0.x))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 1344f, 619f, 344f) + vec4<f32>(870f, -2056f, 1568f, var_0.x)))))));
    var var_2 = true;
    var var_3 = vec4<u32>(60905u, _wgslsmith_clamp_u32(u_input.b, u_input.b ^ 4294967295u, _wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.b, u_input.b), 4294967295u) >> (_wgslsmith_mod_u32(u_input.b, _wgslsmith_mod_u32(1u, u_input.b)) % 32u)), 0u, u_input.b);
    var var_4 = vec2<bool>(any(select(select(select(vec2<bool>(false, true), vec2<bool>(true, false), true), vec2<bool>(true, true), true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, true))), !(any(vec2<bool>(true, true)) && true));
    var_2 = var_4.x;
    let var_5 = -6533i;
    var var_6 = !vec2<bool>(var_4.x, true);
    let var_7 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(var_5, var_5) | 2147483647i, _wgslsmith_f_op_f32(var_1.a.x * 268f));
}

