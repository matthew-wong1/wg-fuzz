struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: i32,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: Struct_2,
    d: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: vec2<f32>,
    d: vec3<i32>,
}

struct Struct_5 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: Struct_1,
    d: Struct_2,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>) -> i32 {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1166f * arg_0.b) * _wgslsmith_f_op_f32(round(arg_0.b))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b)))), true, Struct_2(!select(!arg_1.wz, select(arg_1.zw, vec2<bool>(arg_1.x, arg_1.x), true), select(arg_1.ww, arg_1.zx, vec2<bool>(true, arg_1.x))), _wgslsmith_add_i32(u_input.b.x, u_input.b.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1312f))));
    var_0 = Struct_3(var_0.a, var_0.c.a.x, var_0.c, -795f);
    let var_1 = select(u_input.b.xzx, countOneBits(vec3<i32>(2147483647i, -2147483647i, max(-28229i, -3176i)) << (~_wgslsmith_mod_vec3_u32(vec3<u32>(22440u, 9606u, 6884u), u_input.c) % vec3<u32>(32u))), vec3<bool>(var_0.d == var_0.d, !var_0.c.a.x, !all(select(vec4<bool>(false, var_0.c.a.x, arg_1.x, true), arg_1, arg_1.x))));
    var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b) + 853f)), !var_0.b, var_0.c, arg_0.b);
    let var_2 = all(!(!(!arg_1.wz)));
    return ~(u_input.b.x & 0i);
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: u32, arg_3: f32) -> u32 {
    let var_0 = Struct_3(-582f, true, Struct_2(vec2<bool>(any(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true))), true), firstTrailingBit(u_input.b.x << (~7140u % 32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3) * _wgslsmith_f_op_f32(select(-103f, arg_3, true)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b * arg_1.b) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b)))));
    var var_1 = Struct_5(~(~(~vec4<u32>(u_input.a, arg_2, 8599u, u_input.a))) >> (_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(266u, arg_0.x, u_input.a, 25589u) | vec4<u32>(u_input.c.x, arg_0.x, 13404u, 73603u), reverseBits(vec4<u32>(arg_0.x, u_input.a, 1u, 40911u))), vec4<u32>(u_input.a, 43901u, ~u_input.c.x, u_input.c.x)) % vec4<u32>(32u)), ~u_input.c, arg_1, Struct_2(!var_0.c.a, 1i), all(select(select(select(vec4<bool>(var_0.c.a.x, false, var_0.c.a.x, var_0.b), vec4<bool>(var_0.b, false, false, var_0.c.a.x), vec4<bool>(true, var_0.c.a.x, true, true)), select(vec4<bool>(var_0.b, var_0.b, false, false), vec4<bool>(false, true, true, var_0.b), vec4<bool>(false, var_0.b, true, var_0.b)), true), select(vec4<bool>(false, false, false, var_0.b), vec4<bool>(false, false, var_0.c.a.x, var_0.c.a.x), vec4<bool>(var_0.b, true, false, false)), !vec4<bool>(false, false, true, var_0.b))));
    var_1 = Struct_5(vec4<u32>(1u, ~var_1.a.x, arg_2, ~6137u), _wgslsmith_div_vec3_u32(reverseBits(var_1.a.zxy) & abs(vec3<u32>(0u, 48114u, arg_0.x)), vec3<u32>(min(1u, arg_0.x), _wgslsmith_add_u32(u_input.c.x, u_input.c.x), abs(1546u))) << (var_1.b % vec3<u32>(32u)), arg_1, Struct_2(vec2<bool>(reverseBits(var_1.c.a) > 1i, false), _wgslsmith_dot_vec4_i32(reverseBits(min(u_input.b, u_input.b)), _wgslsmith_mod_vec4_i32(u_input.b, u_input.b) ^ ~vec4<i32>(var_1.d.b, 15941i, u_input.b.x, 19824i))), any(vec3<bool>(true, var_1.e || true, !var_1.e)) & true);
    var_1 = Struct_5(_wgslsmith_add_vec4_u32(abs(var_1.a), select(vec4<u32>(u_input.c.x, arg_2, var_1.a.x, _wgslsmith_dot_vec4_u32(var_1.a, var_1.a)), max(select(var_1.a, var_1.a, vec4<bool>(var_0.c.a.x, var_0.c.a.x, var_0.c.a.x, true)), ~var_1.a), select(!vec4<bool>(var_0.c.a.x, true, false, var_0.c.a.x), select(vec4<bool>(var_0.c.a.x, var_0.c.a.x, var_1.e, false), vec4<bool>(var_0.b, false, var_0.b, var_1.d.a.x), vec4<bool>(var_0.c.a.x, var_0.c.a.x, var_1.e, var_1.e)), vec4<bool>(false, var_1.d.a.x, var_1.e, false)))), _wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(var_1.b, min(var_1.b, min(vec3<u32>(arg_2, arg_0.x, arg_0.x), u_input.c))), var_1.b | vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(25210u, 25903u, 89953u, arg_0.x), var_1.a), ~arg_0.x, 10558u)), arg_1, var_1.d, !(!var_1.e));
    let var_2 = 1u;
    return 1u;
}

fn func_2() -> u32 {
    var var_0 = vec3<u32>(u_input.c.x, ~4294967295u, 0u);
    var_0 = _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(1u, 9437u)), u_input.c.yz << (_wgslsmith_mult_vec2_u32(var_0.zx, vec2<u32>(u_input.a, 0u)) % vec2<u32>(32u))), _wgslsmith_div_u32(_wgslsmith_div_u32(firstLeadingBit(14634u), 1u), ~(var_0.x | 15195u)), var_0.x), vec3<u32>(~87505u, ~u_input.c.x, var_0.x));
    var_0 = u_input.c;
    var var_1 = vec3<u32>(var_0.x, ~(u_input.a | 4294967295u), u_input.c.x);
    var_1 = vec3<u32>(func_4(countOneBits(~u_input.c.zy), Struct_1(func_3(Struct_1(u_input.b.x, -935f), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), false)), 1f), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.x, var_0.x, var_0.x, u_input.a), vec4<u32>(var_1.x, var_0.x, 0u, 57274u)), firstTrailingBit(firstLeadingBit(vec4<u32>(4294967295u, u_input.a, 17237u, 0u)))), -1037f), 55604u, _wgslsmith_add_u32(18550u, ~var_1.x));
    return u_input.a;
}

fn func_1() -> vec4<u32> {
    let var_0 = ~(~_wgslsmith_mult_vec4_i32(u_input.b, u_input.b));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-131f + -182f) - -1000f);
    let var_2 = vec2<bool>(u_input.a >= (~u_input.c.x << (min(func_2(), _wgslsmith_div_u32(u_input.c.x, u_input.a)) % 32u)), false);
    var var_3 = u_input.b;
    return vec4<u32>(_wgslsmith_sub_u32(u_input.a, _wgslsmith_dot_vec3_u32(reverseBits(u_input.c), u_input.c)), _wgslsmith_clamp_u32(4294967295u, firstTrailingBit(30463u), _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 69163u, 18611u), _wgslsmith_mult_vec3_u32(vec3<u32>(55686u, u_input.c.x, 68621u), vec3<u32>(8346u, 88587u, u_input.c.x)))), ~select(u_input.a, ~6278u, var_2.x), u_input.c.x) << (select(vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.c.x, u_input.c.x), max(1346u, 22588u)), u_input.c.x, ~(~35097u), ~u_input.c.x), ~abs(abs(vec4<u32>(25656u, 20529u, u_input.c.x, u_input.a))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(757f + 1255f), -1478f) == _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1)))) % vec4<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(select(max(~(vec4<u32>(1u, u_input.a, 27464u, 4294967295u) ^ vec4<u32>(u_input.c.x, 1u, u_input.a, u_input.c.x)), ~vec4<u32>(u_input.c.x, u_input.a, 39368u, 21770u) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 17120u, 4294967295u, 4294967295u), vec4<u32>(1u, 0u, u_input.a, u_input.a)) % vec4<u32>(32u))), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.c.x, 0u, u_input.a, ~u_input.c.x), vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.c.x) | func_1()), vec4<bool>(!all(vec3<bool>(true, false, true)), any(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true))), ~u_input.a != (11707u << (0u % 32u)), true)), reverseBits(_wgslsmith_div_vec3_u32(u_input.c, vec3<u32>(~u_input.c.x, _wgslsmith_sub_u32(u_input.a, u_input.a), 1u))), Struct_1(~(_wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(u_input.b.x, u_input.b.x, -1i, -79556i)) | func_3(Struct_1(u_input.b.x, 1000f), vec4<bool>(false, false, false, true))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-138f)), _wgslsmith_f_op_f32(f32(-1f) * -1139f)), _wgslsmith_f_op_f32(1000f - 1134f)))), Struct_2(select(vec2<bool>(true, true), vec2<bool>(true, true), true), u_input.b.x), max(~u_input.b.x, u_input.b.x) != (-17990i << (_wgslsmith_mult_u32(u_input.c.x, ~5156u) % 32u)));
    var var_1 = true;
    let var_2 = ~(~4294967295u);
    let var_3 = Struct_4(Struct_3(-575f, ~(0u >> (1u % 32u)) != u_input.c.x, Struct_2(!(!vec2<bool>(true, var_0.d.a.x)), ~_wgslsmith_clamp_i32(-2147483647i, u_input.b.x, 1i)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(671f - var_0.c.b) - _wgslsmith_f_op_f32(min(1524f, var_0.c.b)))))), -(~select(1i, -28469i, var_0.d.a.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(sign(1262f)), 1184f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.c.b, var_0.c.b), vec2<f32>(114f, 508f)))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c.b, 1000f) - vec2<f32>(var_0.c.b, var_0.c.b)) * vec2<f32>(var_0.c.b, 420f)))), ~u_input.b.yzy);
    let var_4 = var_0;
    var_1 = select(var_4.d.a.x, ~_wgslsmith_div_i32(var_0.c.a & 2147483647i, var_0.c.a) >= 2147483647i, false);
    let x = u_input.a;
    s_output = StorageBuffer(max(var_3.d, -vec3<i32>(var_3.a.c.b, 1i, _wgslsmith_div_i32(var_0.d.b, var_3.a.c.b))));
}

