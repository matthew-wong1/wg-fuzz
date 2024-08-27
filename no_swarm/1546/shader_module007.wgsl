struct Struct_1 {
    a: u32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: f32,
    d: vec4<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: vec2<f32>,
    c: i32,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<u32>,
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

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_4, arg_1: vec4<bool>, arg_2: vec4<f32>) -> u32 {
    var var_0 = Struct_4(reverseBits(-max(~arg_0.a, u_input.c)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-arg_2.yw), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(164f, arg_2.x) - arg_0.b)))))), u_input.c);
    var_0 = arg_0;
    var_0 = Struct_4(u_input.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.b) * vec2<f32>(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(select(-437f, -217f, arg_1.x)))) - _wgslsmith_f_op_vec2_f32(-var_0.b)), arg_0.a);
    let var_1 = select(abs(0u), 28067u, arg_2.x > _wgslsmith_f_op_f32(ceil(var_0.b.x))) | 1u;
    var_0 = arg_0;
    return abs(93441u);
}

fn func_2(arg_0: u32) -> vec4<u32> {
    let var_0 = ~_wgslsmith_add_vec4_u32(countOneBits(vec4<u32>(25517u, 0u, arg_0, 4294967295u)) << ((vec4<u32>(0u, arg_0, arg_0, 55300u) & vec4<u32>(u_input.b, u_input.d, 68703u, 1u)) % vec4<u32>(32u)), ~(~vec4<u32>(22872u, 1u, 90694u, 37379u))) ^ _wgslsmith_div_vec4_u32(~vec4<u32>(abs(4294967295u), _wgslsmith_add_u32(arg_0, 59879u), 35543u, _wgslsmith_mult_u32(arg_0, arg_0)), ~vec4<u32>(~arg_0, u_input.b, ~arg_0, arg_0));
    let var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(1096f, 1313f) * vec2<f32>(1009f, _wgslsmith_f_op_f32(floor(-464f)))), var_0, Struct_1(func_3(Struct_4(-13492i, _wgslsmith_f_op_vec2_f32(vec2<f32>(-1292f, 834f) * vec2<f32>(1518f, 732f)), ~u_input.a.x), vec4<bool>(select(true, false, false), true, select(true, false, false), u_input.a.x <= -1i), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1552f, -293f, -421f, -1000f)))))), vec4<bool>(true, select(true, all(vec3<bool>(true, false, false)), false), !any(vec2<bool>(false, false)), select(true, true, true))));
    var var_2 = Struct_2(Struct_1(var_1.c.a >> (84449u % 32u), vec4<bool>(1u == var_1.b.x, any(select(vec3<bool>(false, var_1.c.b.x, true), vec3<bool>(true, var_1.c.b.x, var_1.c.b.x), vec3<bool>(var_1.c.b.x, var_1.c.b.x, false))), var_1.c.b.x & true, 2001i > _wgslsmith_dot_vec4_i32(u_input.a, u_input.a))), var_1.c.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1183f * var_1.a.x) * -1015f), abs(abs(var_1.b)), Struct_1(_wgslsmith_div_u32(firstTrailingBit(abs(0u)), _wgslsmith_mult_u32(~4294967295u, firstTrailingBit(var_0.x))), var_1.c.b));
    var_2 = Struct_2(Struct_1(89649u, !vec4<bool>(false, true, var_1.c.b.x, var_2.a.b.x)), !((5008u >> (var_2.a.a % 32u)) <= var_2.a.a) && true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1487f)), -1000f))), vec4<u32>(firstLeadingBit(firstLeadingBit(reverseBits(var_1.c.a))), ~42033u, (_wgslsmith_add_u32(var_0.x, 4294967295u) & 1u) & _wgslsmith_div_u32(~var_2.d.x, var_0.x), _wgslsmith_sub_u32(4294967295u, u_input.d)), var_1.c);
    var_2 = Struct_2(Struct_1(var_0.x, select(var_2.e.b, select(var_1.c.b, vec4<bool>(false, false, false, false), select(vec4<bool>(var_1.c.b.x, var_1.c.b.x, var_1.c.b.x, var_1.c.b.x), var_2.e.b, vec4<bool>(true, var_1.c.b.x, true, var_1.c.b.x))), !var_2.e.b)), var_1.c.b.x, 1878f, vec4<u32>(countOneBits(_wgslsmith_div_u32(u_input.e, arg_0) & 24994u), var_0.x, var_2.e.a, ~_wgslsmith_add_u32(var_0.x & 4294967295u, ~4294967295u)), var_1.c);
    return vec4<u32>(var_2.e.a, _wgslsmith_mod_u32(firstLeadingBit(max(54573u, var_1.b.x) & var_0.x), ~4294967295u), arg_0, select(firstTrailingBit(firstTrailingBit(1u)), u_input.d, false));
}

fn func_1(arg_0: u32, arg_1: i32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1087f);
    let var_1 = Struct_2(Struct_1(_wgslsmith_dot_vec4_u32(func_2(~arg_0), vec4<u32>(u_input.e | arg_0, ~u_input.b, firstTrailingBit(62795u), 20042u ^ u_input.b)), !(!select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), true))), !all(select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, false), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-705f, 598f, false)), _wgslsmith_f_op_f32(round(-1484f)))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(466f)), 468f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-573f + 1000f))) * 1f), false)), ~(~(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 37947u, 4294967295u, u_input.e), vec4<u32>(1u, arg_0, 1u, 40149u)) >> (~vec4<u32>(u_input.e, arg_0, arg_0, arg_0) % vec4<u32>(32u)))), Struct_1(arg_0, vec4<bool>((u_input.a.x < u_input.c) & true, true, false, false)));
    var var_2 = select(vec2<u32>((abs(arg_0) & u_input.e) >> (~(u_input.b ^ u_input.b) % 32u), 115872u), firstLeadingBit(~vec2<u32>(0u, var_1.d.x)), var_1.a.b.zz);
    let var_3 = var_1;
    var_0 = var_3.c;
    return var_1.e;
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: i32, arg_3: bool) -> i32 {
    var var_0 = (_wgslsmith_mod_i32(reverseBits(2837i), firstTrailingBit(-50220i)) ^ ~_wgslsmith_div_i32(arg_1, _wgslsmith_mult_i32(arg_1, u_input.c))) >> (~_wgslsmith_dot_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(1u, u_input.d, 0u), vec3<u32>(13823u, arg_0.a, 28689u)), vec3<u32>(~45806u, u_input.d, ~1u)) % 32u);
    let var_1 = Struct_2(Struct_1(u_input.b, !(!vec4<bool>(false, arg_0.b.x, true, arg_3))), false, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -585f) - 815f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(461f)), _wgslsmith_f_op_f32(f32(-1f) * -531f))))))), abs(func_2(1u)), arg_0);
    let var_2 = select(vec2<i32>(_wgslsmith_dot_vec4_i32(-_wgslsmith_mult_vec4_i32(vec4<i32>(arg_1, u_input.a.x, -2147483647i, arg_2), vec4<i32>(-2147483647i, arg_1, u_input.a.x, u_input.c)), vec4<i32>(0i, 0i, arg_1, 3380i) >> (vec4<u32>(4294967295u, 4294967295u, u_input.e, 1u) % vec4<u32>(32u))), firstLeadingBit(-1i)), max(~_wgslsmith_div_vec2_i32(-u_input.a.wz, u_input.a.zw ^ vec2<i32>(arg_2, u_input.a.x)), ~vec2<i32>(u_input.a.x, ~23628i)), arg_3);
    let var_3 = vec3<i32>(u_input.c, min(countOneBits(-35091i) >> (1u % 32u), -(-var_2.x ^ _wgslsmith_add_i32(u_input.a.x, arg_1))), 2147483647i);
    var var_4 = u_input.a.xxz;
    return 27969i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(select(_wgslsmith_mod_u32(4294967295u, _wgslsmith_div_u32(46283u, u_input.b)), u_input.d, ~u_input.e > _wgslsmith_div_u32(u_input.d, u_input.b)), 1i), _wgslsmith_mult_i32(-4264i, reverseBits(u_input.c)), reverseBits(u_input.a.x), true);
    var var_1 = ~_wgslsmith_mod_i32(2147483647i, firstLeadingBit(var_0));
    let var_2 = Struct_2(func_1(1u, select(_wgslsmith_add_i32(_wgslsmith_mod_i32(-2147483647i, 2147483647i), ~(-2147483647i)), i32(-1i) * -25951i, false)), false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-585f - _wgslsmith_f_op_f32(339f + 665f)))), vec4<u32>(_wgslsmith_mod_u32(u_input.e, ~u_input.e >> (1u % 32u)), 1u, countOneBits(u_input.b), ~(~u_input.b)), Struct_1(4294967295u, !vec4<bool>(false, any(vec4<bool>(false, true, true, false)), true, true)));
    let var_3 = var_2.a;
    let var_4 = abs(_wgslsmith_sub_u32(firstTrailingBit(11969u), _wgslsmith_dot_vec3_u32(~(~vec3<u32>(4294967295u, 34987u, 4294967295u)), _wgslsmith_mult_vec3_u32(vec3<u32>(var_3.a, 6782u, 62197u) << (vec3<u32>(var_2.e.a, u_input.e, 77074u) % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(var_2.d.yzx, vec3<u32>(u_input.b, var_2.a.a, 620u))))));
    let var_5 = -(~u_input.a.x);
    var_1 = var_5;
    var var_6 = firstTrailingBit(vec2<u32>(var_3.a, abs(33935u)));
    var_1 = -var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(var_2.c)), ~_wgslsmith_add_i32(_wgslsmith_sub_i32(-2147483647i, var_5), ~(-2147483647i)) ^ ~var_0, ~select(func_2(_wgslsmith_mult_u32(var_2.e.a, 0u)), var_2.d, var_2.a.b));
}

