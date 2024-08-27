struct Struct_1 {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: i32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> i32 {
    var var_0 = 46223u & firstTrailingBit(u_input.a.x);
    var var_1 = ~(-vec3<i32>(-20019i, 6604i >> (~u_input.a.x % 32u), -69269i));
    var_1 = vec3<i32>(-2147483647i, var_1.x, var_1.x);
    let var_2 = ~(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a.x, 29694u) << (vec2<u32>(u_input.a.x, 60448u) % vec2<u32>(32u)), u_input.a.yw >> (abs(u_input.a.zy) % vec2<u32>(32u)), u_input.a.yx) << (~u_input.a.yy % vec2<u32>(32u)));
    var_1 = ~vec3<i32>(1i, ~0i, _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(28061i, var_1.x, var_1.x, -2147483647i), abs(vec4<i32>(17247i, 19071i, var_1.x, -50973i))), -2147483647i));
    return -var_1.x;
}

fn func_2() -> vec2<i32> {
    let var_0 = true;
    var var_1 = 0u;
    let var_2 = Struct_1(vec2<i32>(_wgslsmith_sub_i32(~(~(-53293i)), func_3()), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), reverseBits(~vec4<i32>(29656i, -35796i, -1i, -1i)))), ~(-_wgslsmith_mod_vec4_i32(vec4<i32>(-46449i, -1i, -1i, -19621i), vec4<i32>(-4811i, 1i, -2147483647i, -19189i))));
    var var_3 = -1776f;
    var var_4 = abs(vec4<i32>(var_2.b.x, select(-2147483647i, _wgslsmith_mod_i32(var_2.a.x, var_2.b.x), any(!vec4<bool>(var_0, true, var_0, var_0))), max(var_2.b.x, _wgslsmith_mult_i32(_wgslsmith_div_i32(0i, -10636i), _wgslsmith_div_i32(var_2.a.x, -21752i))), 96724i));
    return -(~select(var_2.a, select(~var_2.b.zw, var_4.yy ^ var_4.zw, !vec2<bool>(var_0, false)), true));
}

fn func_4(arg_0: vec2<i32>) -> vec2<i32> {
    let var_0 = abs(u_input.a.x & u_input.a.x) <= 31789u;
    var var_1 = var_0;
    var var_2 = Struct_1(_wgslsmith_add_vec2_i32(vec2<i32>(firstTrailingBit(arg_0.x), -(~arg_0.x)), arg_0), -firstLeadingBit(~(~vec4<i32>(13004i, -2147483647i, arg_0.x, 12894i))));
    let var_3 = Struct_1(~(countOneBits(-vec2<i32>(0i, var_2.a.x)) >> (vec2<u32>(_wgslsmith_div_u32(42981u, 1u), _wgslsmith_mult_u32(u_input.a.x, 1u)) % vec2<u32>(32u))), vec4<i32>(-1i) * -max(min(vec4<i32>(var_2.a.x, arg_0.x, -7269i, 0i), vec4<i32>(-944i, 0i, -2018i, -1i)), countOneBits(var_2.b)));
    var_2 = var_3;
    return vec2<i32>(15126i, abs(0i & (arg_0.x ^ -458i)));
}

fn func_1() -> vec3<bool> {
    let var_0 = Struct_1(func_4(func_2()), _wgslsmith_clamp_vec4_i32(firstLeadingBit(~(vec4<i32>(27838i, -13880i, 35727i, 0i) >> (vec4<u32>(u_input.a.x, 43307u, 0u, u_input.a.x) % vec4<u32>(32u)))), reverseBits(firstLeadingBit(select(vec4<i32>(-2147483647i, -2147483647i, -46457i, 2147483647i), vec4<i32>(25814i, 2147483647i, -2147483647i, 1i), false))), vec4<i32>(2147483647i << (u_input.a.x % 32u), _wgslsmith_div_i32(-20257i, -2147483647i), ~8212i, -3363i) & max(vec4<i32>(13213i, -2147483647i, 2147483647i, 59629i), ~vec4<i32>(-2147483647i, 2147483647i, -30608i, -56513i))));
    var var_1 = var_0.b.x;
    var_1 = 0i;
    var_1 = var_0.a.x;
    var var_2 = vec2<bool>(true, var_0.a.x <= var_0.a.x);
    return vec3<bool>(select(var_2.x, true, var_2.x), select(true, true, var_2.x), !all(vec4<bool>(true, true, var_2.x, any(vec4<bool>(false, false, true, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!select(select(vec3<bool>(false, true, true), func_1(), vec3<bool>(false, false, true)), select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), vec3<bool>(true, false, true)), select(vec3<bool>(false, true, all(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), false))), !vec3<bool>(all(vec2<bool>(false, false)), true, true), select(any(vec3<bool>(true, true, true)), true && all(vec3<bool>(true, true, true)), all(vec2<bool>(true, false)))), true & (max(max(u_input.a.x, 1u), countOneBits(u_input.a.x)) < min(_wgslsmith_div_u32(u_input.a.x, 23618u), 1u >> (u_input.a.x % 32u))));
    var_0 = select(!select(vec3<bool>(all(vec3<bool>(var_0.x, false, var_0.x)), var_0.x, !var_0.x), select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, false, false), true), var_0.x), vec3<bool>(-1i == -_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 13750i, 2147483647i), vec3<i32>(2147483647i, -1i, 41523i)), !(true & var_0.x), (true || var_0.x) && true), vec3<bool>(true, !(!(!var_0.x)), var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(51265u, ~_wgslsmith_clamp_u32(~22918u, u_input.a.x, u_input.a.x), (u_input.a.x << (26371u % 32u)) ^ _wgslsmith_clamp_u32(_wgslsmith_add_u32(44826u, u_input.a.x), _wgslsmith_mult_u32(u_input.a.x, 1u), u_input.a.x)), u_input.a ^ _wgslsmith_mod_vec4_u32(~vec4<u32>(1u, 1u, u_input.a.x, u_input.a.x), u_input.a), -2147483647i, _wgslsmith_mod_i32(-59605i, i32(-1i) * -1i), reverseBits(_wgslsmith_div_i32(1i, func_3())) ^ (i32(-1i) * -50469i));
}

