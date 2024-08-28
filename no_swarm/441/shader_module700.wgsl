struct Struct_1 {
    a: vec2<bool>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec3<u32>) -> vec4<bool> {
    var var_0 = Struct_2(Struct_1(!select(vec2<bool>(false, false), vec2<bool>(true, true), select(true, true, true)), ~(~25696u)), Struct_1(vec2<bool>(true, true), u_input.b & 38593u), -_wgslsmith_sub_vec2_i32(~(~vec2<i32>(-3777i, -30782i)), ~select(vec2<i32>(-23820i, -13129i), vec2<i32>(-8571i, 2147483647i), vec2<bool>(false, false))));
    let var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1379f))))))));
    var var_2 = firstLeadingBit(abs(select(-countOneBits(vec3<i32>(4105i, -2147483647i, var_0.c.x)), _wgslsmith_mod_vec3_i32(vec3<i32>(var_0.c.x, 8693i, var_0.c.x), vec3<i32>(-13407i, -2267i, var_0.c.x)) & -vec3<i32>(59704i, 16545i, var_0.c.x), vec3<bool>(true, all(vec2<bool>(false, false)), any(vec4<bool>(false, false, false, var_0.a.a.x))))));
    var var_3 = Struct_2(Struct_1(select(vec2<bool>(true & var_0.a.a.x, var_0.b.a.x), select(vec2<bool>(true, false), vec2<bool>(false, var_0.b.a.x), var_0.a.a), var_0.a.a.x), ~36014u), var_0.a, -(-vec2<i32>(var_2.x, var_0.c.x) & var_2.yx));
    var_0 = Struct_2(Struct_1(var_3.b.a, 13185u), Struct_1(select(var_3.b.a, !(!vec2<bool>(false, var_3.a.a.x)), select(true, true, false)), firstTrailingBit(4294967295u)), abs(var_3.c));
    return vec4<bool>(var_3.a.a.x, select(false, all(select(select(vec4<bool>(false, true, var_3.b.a.x, true), vec4<bool>(false, true, false, var_0.b.a.x), vec4<bool>(true, var_0.b.a.x, true, var_0.a.a.x)), !vec4<bool>(var_3.a.a.x, var_0.b.a.x, false, false), true)), var_3.b.a.x), !(-55708i > _wgslsmith_add_i32(var_2.x, _wgslsmith_clamp_i32(var_3.c.x, var_0.c.x, var_3.c.x))), true);
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<i32>) -> u32 {
    var var_0 = Struct_2(Struct_1(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)), ~firstLeadingBit(78357u)), Struct_1(vec2<bool>(select(true, true, true), all(vec2<bool>(true, true))), 1u), arg_0);
    var var_1 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -252f)), 439f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1545f - -682f) + _wgslsmith_f_op_f32(sign(-1123f))), 2188f))));
    var_0 = Struct_2(var_0.b, var_0.a, arg_1.xy);
    var var_2 = !vec2<bool>(true, var_0.b.a.x);
    let var_3 = select(func_3(~(~vec3<u32>(4294967295u, 39034u, 0u) ^ vec3<u32>(20302u, u_input.b, 0u))), vec4<bool>(!all(!vec2<bool>(var_0.b.a.x, false)), !select(var_1.x >= 1784f, var_1.x < var_1.x, var_0.a.a.x), false, var_2.x == true), select(vec4<bool>(var_0.b.a.x, var_2.x, var_0.a.a.x, all(!vec4<bool>(var_0.a.a.x, true, var_2.x, true))), vec4<bool>(true, min(var_0.c.x, var_0.c.x) <= select(var_0.c.x, arg_0.x, false), !var_2.x, !var_2.x), true));
    return ~(~1u);
}

fn func_1() -> Struct_1 {
    let var_0 = 1u;
    var var_1 = Struct_3(vec4<u32>(1u, firstLeadingBit(_wgslsmith_clamp_u32(_wgslsmith_add_u32(1u, u_input.b), func_2(vec2<i32>(29731i, 44247i), vec3<i32>(2147483647i, -1i, 1i)), 3059u)), 4294967295u, u_input.b), Struct_1(!select(select(vec2<bool>(true, true), vec2<bool>(false, false), false), vec2<bool>(true, true), any(vec4<bool>(true, false, true, true))), ~4294967295u), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-1000f)), -959f, true)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(954f)) + _wgslsmith_f_op_f32(f32(-1f) * -568f))))));
    return var_1.b;
}

fn func_4(arg_0: Struct_3, arg_1: vec3<f32>) -> vec4<bool> {
    let var_0 = func_1();
    let var_1 = abs(_wgslsmith_mod_i32(1i, _wgslsmith_sub_i32(5869i, abs(1i))));
    var var_2 = arg_0;
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -1593f);
    let var_4 = vec3<bool>(all(var_2.b.a), func_3(countOneBits(_wgslsmith_add_vec3_u32(var_2.a.zyz, vec3<u32>(u_input.a, arg_0.a.x, 61612u)))).x | !var_0.a.x, var_2.b.a.x);
    return vec4<bool>(any(!arg_0.b.a), false, false, !var_0.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(_wgslsmith_clamp_i32(~(~min(54969i, 1i)), 2147483647i, -34880i), 1i >> (~u_input.b % 32u), max(_wgslsmith_mod_i32(_wgslsmith_div_i32(abs(-1i), _wgslsmith_dot_vec3_i32(vec3<i32>(-61517i, 0i, -1969i), vec3<i32>(-2147483647i, 1i, 17720i))), 1i), -(~(-2147483647i >> (u_input.b % 32u)))));
    var var_1 = select(func_4(Struct_3(firstTrailingBit(~vec4<u32>(u_input.b, u_input.b, u_input.a, 1u)), func_1(), _wgslsmith_f_op_f32(727f + -1657f)), vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(1010f)), -725f, true)), _wgslsmith_f_op_f32(f32(-1f) * -206f), _wgslsmith_f_op_f32(f32(-1f) * -1111f))), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false));
    let var_2 = Struct_2(func_1(), Struct_1(vec2<bool>(true, _wgslsmith_f_op_f32(797f - 231f) > _wgslsmith_f_op_f32(select(898f, 253f, var_1.x))), ((29685u >> (u_input.a % 32u)) | ~u_input.b) & func_1().b), firstTrailingBit(_wgslsmith_div_vec2_i32(var_0.xx, var_0.yz)) ^ (~(-vec2<i32>(-15338i, 1i)) ^ firstTrailingBit(-vec2<i32>(-1i, var_0.x))));
    let var_3 = u_input.b;
    var_0 = -_wgslsmith_mod_vec3_i32(~firstTrailingBit(vec3<i32>(var_2.c.x, var_0.x, var_2.c.x)), -_wgslsmith_add_vec3_i32(abs(vec3<i32>(1014i, -10414i, var_0.x)), ~vec3<i32>(39414i, -2147483647i, -47358i)));
    var_0 = _wgslsmith_div_vec3_i32(-countOneBits(min(vec3<i32>(var_2.c.x, -1i, -1i) ^ vec3<i32>(var_2.c.x, var_0.x, var_0.x), reverseBits(vec3<i32>(-1i, 5221i, var_2.c.x)))), vec3<i32>(var_0.x ^ _wgslsmith_div_i32(var_2.c.x | var_0.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-60524i, var_0.x, -40374i), vec3<i32>(var_2.c.x, var_0.x, var_0.x))), ~abs(var_2.c.x), var_0.x));
    var var_4 = Struct_3(~vec4<u32>(u_input.a, u_input.a, ~0u, ~11910u) | _wgslsmith_add_vec4_u32(~vec4<u32>(u_input.b, 78819u, var_2.b.b, 48912u) | _wgslsmith_sub_vec4_u32(vec4<u32>(var_2.b.b, var_2.b.b, 0u, 22029u), vec4<u32>(4294967295u, 0u, 14271u, 31380u)), select(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, var_3, 0u, var_3), vec4<u32>(var_3, 30576u, var_2.b.b, 1u)), vec4<u32>(var_3, 1491u, 47554u, 4294967295u) ^ vec4<u32>(56880u, 7189u, var_2.a.b, 67056u), true)), var_2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(282f)) * _wgslsmith_f_op_f32(f32(-1f) * -1158f)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(sign(-1200f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.c)) * 1f)));
}

