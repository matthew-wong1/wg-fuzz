struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: u32,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_3,
}

struct Struct_5 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: i32) -> u32 {
    let var_0 = max(_wgslsmith_clamp_i32(arg_3, _wgslsmith_sub_i32(firstTrailingBit(u_input.a), _wgslsmith_dot_vec4_i32(arg_1.e, _wgslsmith_div_vec4_i32(vec4<i32>(arg_3, arg_3, -11294i, -2147483647i), arg_1.e))), arg_3), -1820i);
    let var_1 = Struct_5(_wgslsmith_add_i32(reverseBits(u_input.a) << (~arg_1.c % 32u), -2147483647i), arg_1, Struct_1(~max(abs(arg_1.a), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, var_0, 0i, -33223i), arg_1.d)), -1449f, arg_1.c, _wgslsmith_add_vec4_i32(arg_1.e, ~vec4<i32>(var_0, -20138i, u_input.a, -2147483647i)), vec4<i32>(_wgslsmith_sub_i32(u_input.a | 39782i, arg_1.d.x), countOneBits(reverseBits(53076i)), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 1i), vec2<i32>(u_input.a, -44282i)), arg_1.d.x)), arg_1.e.x);
    let var_2 = arg_2;
    let var_3 = Struct_3(_wgslsmith_mod_u32(~(~(~var_1.b.c)), 64381u), arg_1);
    var var_4 = Struct_5(0i, Struct_1(~firstTrailingBit(countOneBits(var_3.b.a)), var_3.b.b, arg_1.c, var_3.b.e, ~(-_wgslsmith_clamp_vec4_i32(vec4<i32>(-45657i, var_3.b.e.x, u_input.a, 2147483647i), arg_1.a, var_1.c.a))), Struct_1(vec4<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-20249i, var_1.d, var_0), var_1.b.e.wyw), var_0), _wgslsmith_div_i32(var_1.c.a.x, _wgslsmith_add_i32(var_1.a, 1i)), _wgslsmith_mod_i32(select(arg_3, -1i, false), ~var_0), ~12237i), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-245f, _wgslsmith_f_op_f32(abs(arg_0))))), ~16374u, -(vec4<i32>(var_3.b.d.x, 2147483647i, var_0, u_input.a) >> (firstLeadingBit(vec4<u32>(arg_1.c, 88858u, var_1.b.c, arg_1.c)) % vec4<u32>(32u))), -arg_1.a), ~var_1.a);
    return 15952u;
}

fn func_2(arg_0: i32) -> u32 {
    var var_0 = Struct_5(12105i, Struct_1(firstTrailingBit(countOneBits(vec4<i32>(u_input.a, arg_0, u_input.a, arg_0))) ^ vec4<i32>(-arg_0, arg_0, 1i, ~u_input.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1510f, _wgslsmith_f_op_f32(f32(-1f) * -1245f)))), ~max(1u, 0u) | (countOneBits(4294967295u) >> (select(49644u, 16725u, true) % 32u)), ~firstLeadingBit(vec4<i32>(0i, -15888i, -2147483647i, 1i)), -firstTrailingBit(vec4<i32>(2147483647i, arg_0, arg_0, 38318i)) | vec4<i32>(u_input.a, ~(-1565i), abs(u_input.a), _wgslsmith_mod_i32(u_input.a, arg_0))), Struct_1(abs(vec4<i32>(7736i ^ u_input.a, -arg_0, -10731i, -1i)), _wgslsmith_f_op_f32(-629f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(687f + -2287f)))), ~abs(1u), abs(vec4<i32>(arg_0 << (17911u % 32u), 9730i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, -1i, 1i), vec4<i32>(u_input.a, u_input.a, -24550i, u_input.a)), u_input.a)), firstLeadingBit(vec4<i32>(12472i ^ u_input.a, _wgslsmith_div_i32(-53692i, u_input.a), 2147483647i, u_input.a))), ~abs(~abs(arg_0)));
    var_0 = Struct_5(58187i, Struct_1(select(var_0.c.a, -var_0.c.a, true), _wgslsmith_f_op_f32(-var_0.b.b), max(_wgslsmith_sub_u32(4294967295u, var_0.b.c), _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.b.c, var_0.b.c), vec2<u32>(24557u, var_0.b.c))) ^ (max(1u, var_0.b.c) | var_0.c.c), abs(var_0.b.d), select(~var_0.c.a, select(var_0.c.e, max(vec4<i32>(1i, 46399i, 1i, 0i), var_0.c.a), false), true)), Struct_1(abs(vec4<i32>(abs(-2147483647i), 1i, var_0.a, _wgslsmith_sub_i32(arg_0, -15198i))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.b.b, _wgslsmith_f_op_f32(abs(-1440f))) + _wgslsmith_f_op_f32(ceil(1574f))), (~var_0.c.c ^ (var_0.c.c ^ var_0.c.c)) | func_3(_wgslsmith_f_op_f32(f32(-1f) * -1052f), var_0.c, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.c.b, var_0.c.b))), _wgslsmith_dot_vec3_i32(vec3<i32>(-17996i, 0i, u_input.a), var_0.c.e.yww)), _wgslsmith_clamp_vec4_i32(vec4<i32>(abs(-1i), u_input.a, 11780i, u_input.a << (var_0.b.c % 32u)), _wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(var_0.c.a, var_0.b.a), _wgslsmith_mod_vec4_i32(var_0.b.d, vec4<i32>(44295i, -47393i, -2147483647i, 1i))), vec4<i32>(arg_0, -var_0.a, var_0.a, 20928i)), abs(_wgslsmith_add_vec4_i32(~vec4<i32>(var_0.d, 1i, -30619i, arg_0), var_0.c.e))), reverseBits(u_input.a));
    let var_1 = -1000f;
    let var_2 = _wgslsmith_dot_vec3_i32(~firstLeadingBit(countOneBits(vec3<i32>(u_input.a, arg_0, -2147483647i))), countOneBits(var_0.c.d.zyz)) << (_wgslsmith_mod_u32(abs(var_0.b.c), _wgslsmith_div_u32(var_0.b.c, var_0.c.c)) % 32u);
    var var_3 = Struct_4(~_wgslsmith_mult_vec3_u32(reverseBits(vec3<u32>(var_0.b.c, var_0.c.c, 55950u)), vec3<u32>(var_0.c.c, 0u, var_0.b.c) << (_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.b.c, 13764u, 27638u), vec3<u32>(4294967295u, var_0.c.c, 1u)) % vec3<u32>(32u))), Struct_3(var_0.c.c, var_0.b));
    return firstLeadingBit(~var_3.a.x << (var_0.c.c % 32u));
}

fn func_4(arg_0: bool, arg_1: u32) -> bool {
    let var_0 = countOneBits(vec2<i32>(u_input.a, 85230i));
    let var_1 = 1u;
    var var_2 = Struct_5(min(countOneBits(_wgslsmith_mod_i32(-43302i, 33043i & u_input.a)), -_wgslsmith_div_i32(max(-34441i, var_0.x), 1i)), Struct_1(-(select(vec4<i32>(19771i, u_input.a, -1i, 2147483647i), vec4<i32>(32788i, 10726i, var_0.x, -35698i), arg_0) ^ (vec4<i32>(-21856i, 9432i, 57447i, u_input.a) | vec4<i32>(var_0.x, 12354i, -4416i, 2147483647i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-956f - 1548f)), 42336u, ~(~vec4<i32>(5484i, 2147483647i, -2147483647i, var_0.x)), _wgslsmith_clamp_vec4_i32(abs(_wgslsmith_sub_vec4_i32(vec4<i32>(0i, var_0.x, -56923i, -2147483647i), vec4<i32>(1i, var_0.x, -9235i, var_0.x))), abs(firstLeadingBit(vec4<i32>(1i, 2147483647i, var_0.x, -2147483647i))), -vec4<i32>(1i, u_input.a, 23331i, -1323i) >> (vec4<u32>(4294967295u, arg_1, 30303u, 58699u) % vec4<u32>(32u)))), Struct_1(~vec4<i32>(min(u_input.a, var_0.x), countOneBits(var_0.x), ~0i, u_input.a << (var_1 % 32u)), _wgslsmith_f_op_f32(f32(-1f) * -360f), ~var_1 & arg_1, vec4<i32>(_wgslsmith_sub_i32(19826i, -1i) >> (arg_1 % 32u), ~(~(-10390i)), _wgslsmith_sub_i32(_wgslsmith_div_i32(var_0.x, u_input.a), 1i | u_input.a), -(~u_input.a)), vec4<i32>(u_input.a, -(~21814i), -_wgslsmith_add_i32(u_input.a, var_0.x), max(~1i, var_0.x))), var_0.x);
    let var_3 = Struct_5(reverseBits(select(abs(-var_2.a), abs(var_0.x), arg_0)), var_2.b, var_2.c, _wgslsmith_mod_i32(_wgslsmith_sub_i32(firstLeadingBit(~49787i), _wgslsmith_div_i32(-var_2.c.d.x, -1i)), ~(~(-22447i) ^ u_input.a)));
    var var_4 = -vec4<i32>(var_0.x, abs(-abs(17179i)), _wgslsmith_add_i32(1i, ~(-2147483647i)), -countOneBits(22500i));
    return true;
}

fn func_1() -> i32 {
    let var_0 = !func_4(true, _wgslsmith_mod_u32(func_2(firstTrailingBit(u_input.a)), ~(~0u)));
    var var_1 = abs(vec4<i32>(min(_wgslsmith_clamp_i32(u_input.a, u_input.a, 1i), u_input.a), _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-4309i, 2147483647i, 69467i, 1i), vec4<i32>(u_input.a, 1i, u_input.a, 7371i)), -u_input.a), -firstLeadingBit(-1i), u_input.a | select(u_input.a, 1i, var_0))) & vec4<i32>(_wgslsmith_div_i32(~_wgslsmith_div_i32(u_input.a, u_input.a), ~_wgslsmith_div_i32(1i, u_input.a)), ~(-_wgslsmith_clamp_i32(u_input.a, u_input.a, u_input.a)), _wgslsmith_sub_i32(_wgslsmith_clamp_i32(u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, 1i)), 1i), u_input.a), ~(~u_input.a));
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec4<i32>(min(u_input.a, -2147483647i), u_input.a, -(i32(-1i) * -u_input.a), func_1()), _wgslsmith_f_op_f32(max(-423f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1294f, -193f, any(vec3<bool>(false, false, false)))) - 331f))), firstLeadingBit(1u), vec4<i32>(u_input.a, firstLeadingBit(-18094i ^ u_input.a), _wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.a, u_input.a, -45169i), reverseBits(vec3<i32>(1i, u_input.a, u_input.a) >> (vec3<u32>(20583u, 8584u, 11314u) % vec3<u32>(32u)))), firstLeadingBit(u_input.a)), ((abs(vec4<i32>(u_input.a, 43928i, 39839i, -37201i)) | vec4<i32>(u_input.a, 33041i, 0i, 12253i)) ^ _wgslsmith_div_vec4_i32(reverseBits(vec4<i32>(u_input.a, -17330i, u_input.a, u_input.a)), select(vec4<i32>(1i, 51432i, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<bool>(true, false, true, false)))) ^ _wgslsmith_mult_vec4_i32(firstTrailingBit(-vec4<i32>(u_input.a, -1i, 0i, 29279i)), -vec4<i32>(u_input.a, u_input.a, 0i, 0i) << (vec4<u32>(4294967295u, 4294967295u, 0u, 11892u) % vec4<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.c, abs(64553u), 1u), abs(vec3<u32>(4294967295u, 32212u, var_0.c))));
}

