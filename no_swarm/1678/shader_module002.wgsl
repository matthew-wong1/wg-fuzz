struct Struct_1 {
    a: i32,
    b: u32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec3<i32>,
    c: Struct_1,
    d: vec3<i32>,
}

struct Struct_4 {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: u32, arg_1: vec4<u32>, arg_2: vec3<u32>) -> vec3<bool> {
    let var_0 = Struct_3(vec4<bool>(select(any(vec3<bool>(true, true, true)), true, !any(vec2<bool>(true, true))), true, any(select(vec2<bool>(true, true), vec2<bool>(true, true), true)), all(vec3<bool>(any(vec4<bool>(true, false, false, false)), true, true))), vec3<i32>(-_wgslsmith_sub_i32(u_input.b, 22956i) << (arg_1.x % 32u), 1i, -u_input.e), Struct_1(min(-17109i, -13647i), 22027u ^ arg_0, -_wgslsmith_sub_vec4_i32(reverseBits(vec4<i32>(u_input.e, -42052i, -28420i, u_input.b)), ~vec4<i32>(u_input.e, 1643i, 2147483647i, u_input.e))), vec3<i32>(-abs(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, -1i, u_input.b), vec3<i32>(u_input.b, u_input.b, u_input.b))), 48563i, -74739i));
    var var_1 = 1u;
    let var_2 = firstTrailingBit(vec3<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.e, -2147483647i, -62413i, u_input.e), ~var_0.c.c), _wgslsmith_sub_i32(u_input.b, _wgslsmith_clamp_i32(u_input.b, -2147483647i, var_0.b.x)), -2147483647i)) >> (arg_2 % vec3<u32>(32u));
    var var_3 = Struct_1(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(reverseBits(var_2.x), var_0.b.x), i32(-1i) * -var_2.x, ~u_input.b), var_0.c.b, ~((-var_0.c.c << (~vec4<u32>(arg_2.x, 4294967295u, 0u, 4294967295u) % vec4<u32>(32u))) >> (select(firstLeadingBit(vec4<u32>(1u, 4294967295u, var_0.c.b, u_input.c.x)), select(vec4<u32>(22617u, arg_2.x, arg_0, arg_0), arg_1, vec4<bool>(true, var_0.a.x, var_0.a.x, var_0.a.x)), !var_0.a) % vec4<u32>(32u))));
    var var_4 = -_wgslsmith_sub_vec4_i32(firstLeadingBit(-(vec4<i32>(0i, 0i, var_2.x, 0i) ^ var_3.c)), -var_0.c.c);
    return vec3<bool>(!(!(_wgslsmith_mult_i32(11706i, -39667i) >= ~var_0.b.x)), var_0.a.x, var_0.a.x);
}

fn func_2(arg_0: f32) -> Struct_4 {
    let var_0 = Struct_2(!func_3(~5485u, firstTrailingBit(select(vec4<u32>(68403u, u_input.d.x, 48119u, 4486u), vec4<u32>(u_input.c.x, u_input.d.x, u_input.a, 6213u), true)), u_input.d), vec3<u32>(1975u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, u_input.a, 1u) >> (vec3<u32>(12147u, 135803u, 4294967295u) % vec3<u32>(32u)), max(u_input.d, vec3<u32>(u_input.d.x, u_input.d.x, 1u))), ~_wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.a, u_input.c.x), abs(4294967295u))), Struct_1(select(u_input.b, (u_input.b & -85463i) & u_input.e, all(vec3<bool>(true, false, true))), select(_wgslsmith_dot_vec4_u32(vec4<u32>(3385u, 19882u, u_input.c.x, 64317u) | vec4<u32>(15411u, u_input.a, 12398u, u_input.d.x), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c.x, 1u, u_input.c.x, u_input.c.x), vec4<u32>(62880u, 0u, u_input.a, 5209u))), firstTrailingBit(_wgslsmith_mod_u32(u_input.d.x, u_input.c.x)), arg_0 >= arg_0), vec4<i32>(-1i) * -vec4<i32>(0i, 1i, 4857i, -54295i)));
    var var_1 = abs(u_input.e);
    let var_2 = Struct_4(~u_input.d.x, 4294967295u, u_input.d.x, select(u_input.c.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 6404u, 0u, var_0.b.x) ^ vec4<u32>(0u, 38627u, 38086u, 5109u), vec4<u32>(1u, 0u, 1u, 0u)) & u_input.d.x, false));
    var var_3 = _wgslsmith_dot_vec2_i32(~(-vec2<i32>(abs(1i), _wgslsmith_mult_i32(16074i, u_input.e))), -(~vec2<i32>(var_0.c.a, firstTrailingBit(u_input.b))));
    let var_4 = Struct_4(max(~u_input.c.x, ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, var_0.c.b), var_0.b))), 1u, var_2.d, ~var_0.b.x);
    return var_2;
}

fn func_4(arg_0: u32, arg_1: vec2<u32>, arg_2: Struct_4, arg_3: Struct_1) -> u32 {
    var var_0 = u_input.e | arg_3.a;
    var var_1 = _wgslsmith_mod_vec4_i32(~arg_3.c, arg_3.c);
    let var_2 = all(select(vec4<bool>(true, true, true, true), vec4<bool>(func_3(reverseBits(1u), vec4<u32>(arg_0, arg_3.b, arg_2.c, u_input.c.x), ~u_input.d).x, true, !any(vec3<bool>(true, false, true)), true | (25495u >= arg_2.b)), !(!select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true)))));
    var_0 = _wgslsmith_sub_i32(-1i, -2147483647i);
    let var_3 = Struct_3(!select(vec4<bool>(true, true, var_2, true), vec4<bool>(true, true, true, var_2), select(vec4<bool>(false, var_2, var_2, var_2), vec4<bool>(true, var_2, var_2, var_2), vec4<bool>(false, false, var_2, var_2))), firstLeadingBit(abs(~(~vec3<i32>(1i, u_input.e, u_input.e)))), Struct_1(arg_3.c.x, ~(~4294967295u | (arg_1.x ^ 14609u)), _wgslsmith_sub_vec4_i32(vec4<i32>(arg_3.a, arg_3.c.x ^ -8382i, var_1.x >> (arg_3.b % 32u), min(45645i, 1i)), arg_3.c)), firstLeadingBit(_wgslsmith_div_vec3_i32(-(~vec3<i32>(-37116i, -27715i, 1i)), ~_wgslsmith_mult_vec3_i32(var_1.wxy, vec3<i32>(arg_3.a, var_1.x, -38543i)))));
    return _wgslsmith_dot_vec4_u32(vec4<u32>(1u, _wgslsmith_mult_u32(max(~1u, arg_1.x), arg_0), ~(~arg_3.b), 4294967295u & (select(4294967295u, 1u, var_2) & 0u)), abs(~max(countOneBits(vec4<u32>(u_input.d.x, var_3.c.b, u_input.a, arg_3.b)), ~vec4<u32>(80423u, arg_0, arg_3.b, arg_2.b))));
}

fn func_1() -> bool {
    let var_0 = Struct_4(u_input.d.x, func_4(abs(4294967295u), countOneBits(vec2<u32>(4294967295u, u_input.a)) ^ vec2<u32>(1u, u_input.d.x), func_2(_wgslsmith_f_op_f32(round(1467f))), Struct_1(-1i, _wgslsmith_add_u32(u_input.c.x, 1u), ~vec4<i32>(49984i, 0i, u_input.e, u_input.b))) | (~u_input.c.x | ~(u_input.d.x & u_input.c.x)), u_input.a, u_input.a ^ 1u);
    let var_1 = Struct_1(_wgslsmith_add_i32(u_input.b, ~u_input.e), u_input.a, -_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-47742i, u_input.b, u_input.e, -1023i), vec4<i32>(64802i, -1i, -4363i, u_input.e)) << (~vec4<u32>(var_0.b, var_0.c, 11692u, 40674u) % vec4<u32>(32u)), vec4<i32>(-1i) * -vec4<i32>(u_input.e, u_input.e, -2147483647i, 14859i)));
    let var_2 = Struct_2(vec3<bool>(any(vec3<bool>(true, all(vec3<bool>(true, true, true)), all(vec3<bool>(false, false, true)))), any(vec2<bool>(false, true)), true), vec3<u32>(u_input.c.x, reverseBits(var_0.a), 22920u ^ firstTrailingBit(8604u)), var_1);
    let var_3 = var_2;
    let var_4 = all(!vec4<bool>(all(!vec3<bool>(false, var_3.a.x, true)), all(vec3<bool>(true, var_2.a.x, var_2.a.x)), all(vec2<bool>(var_2.a.x, var_2.a.x)), true));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c;
    var var_1 = true;
    let var_2 = vec4<bool>((all(vec4<bool>(true, true, true, true)) & any(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false)))) && all(vec2<bool>(any(vec2<bool>(true, true)), true)), false, func_1(), ~firstTrailingBit(_wgslsmith_div_u32(var_0.x, 5305u)) < func_2(572f).b);
    var_0 = vec2<u32>(abs(~u_input.a), 4294967295u);
    var_1 = !var_2.x;
    let var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>((-u_input.e | -45824i) | u_input.b, firstTrailingBit(min(2147483647i, -2147483647i)) ^ _wgslsmith_mod_i32(u_input.e, 0i), firstTrailingBit(u_input.b) ^ u_input.e), _wgslsmith_dot_vec2_u32(u_input.c, reverseBits(~_wgslsmith_mod_vec2_u32(vec2<u32>(var_0.x, u_input.d.x), vec2<u32>(var_0.x, u_input.d.x)))), abs(abs(abs(u_input.d))));
}

