struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: i32,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 16> = array<vec2<i32>, 16>(vec2<i32>(-12655i, 26567i), vec2<i32>(0i, 1i), vec2<i32>(2147483647i, 0i), vec2<i32>(1i, 2147483647i), vec2<i32>(-16173i, -1i), vec2<i32>(1i, 0i), vec2<i32>(11385i, 19273i), vec2<i32>(1i, 13634i), vec2<i32>(-31271i, 24495i), vec2<i32>(8639i, 60274i), vec2<i32>(-9694i, 560i), vec2<i32>(-18379i, 43616i), vec2<i32>(5479i, 2147483647i), vec2<i32>(12103i, 2138i), vec2<i32>(10574i, 1i), vec2<i32>(0i, i32(-2147483648)));

var<private> global1: Struct_1 = Struct_1(vec2<bool>(true, true));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: f32) -> vec4<i32> {
    let var_0 = _wgslsmith_clamp_vec4_i32(select(-(countOneBits(vec4<i32>(0i, u_input.a, -2147483647i, -26545i)) >> (vec4<u32>(3963u, 52454u, 12806u, 23407u) % vec4<u32>(32u))), ~vec4<i32>(u_input.a, 2147483647i, -33645i, -u_input.a), any(vec4<bool>(global1.a.x, global1.a.x, true, false))), _wgslsmith_sub_vec4_i32(vec4<i32>(-u_input.a, -1i, u_input.a, 2147483647i), ~_wgslsmith_mod_vec4_i32(-vec4<i32>(u_input.a, 0i, u_input.a, -11392i), vec4<i32>(2147483647i, u_input.a, 60672i, u_input.a))), abs(vec4<i32>(0i, 0i, u_input.a, ~(~u_input.a))));
    var var_1 = vec2<u32>(53978u, min(_wgslsmith_mod_u32(~u_input.b, u_input.b) ^ u_input.b, ~(~u_input.b | (u_input.b & 4294967295u))));
    var var_2 = Struct_4(vec4<i32>(_wgslsmith_mod_i32(select(var_0.x, -1i, global1.a.x), -2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, 51644i), ~global0[_wgslsmith_index_u32(var_1.x, 16u)]), select(_wgslsmith_add_i32(u_input.a, var_0.x), u_input.a, 4294967295u > u_input.b), (u_input.a >> (var_1.x % 32u)) << (_wgslsmith_mult_u32(var_1.x, 4294967295u) % 32u)) << ((((vec4<u32>(u_input.b, 26406u, 24173u, var_1.x) | vec4<u32>(var_1.x, u_input.b, 0u, 32415u)) | ~vec4<u32>(u_input.b, var_1.x, var_1.x, u_input.b)) >> ((~vec4<u32>(var_1.x, var_1.x, 1u, 31525u) << (_wgslsmith_add_vec4_u32(vec4<u32>(63241u, 0u, var_1.x, 1u), vec4<u32>(u_input.b, 23599u, 146183u, var_1.x)) % vec4<u32>(32u))) % vec4<u32>(32u))) % vec4<u32>(32u)));
    var var_3 = Struct_2(_wgslsmith_mod_i32(u_input.a, _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, var_0.x, var_0.x), vec3<i32>(-5065i, u_input.a, 14946i)), 1i) << (~26017u % 32u)), _wgslsmith_mod_vec2_u32(select(countOneBits(vec2<u32>(1u, 4294967295u) >> (vec2<u32>(u_input.b, 80146u) % vec2<u32>(32u))), _wgslsmith_mod_vec2_u32(vec2<u32>(45678u, 4294967295u), ~vec2<u32>(1u, var_1.x)), !(!global1.a)), vec2<u32>(1u, ~(~9504u))), vec3<i32>(_wgslsmith_dot_vec4_i32(var_2.a, vec4<i32>(1i, var_2.a.x, var_2.a.x, var_2.a.x)) << (firstLeadingBit(u_input.b) % 32u), var_0.x, firstLeadingBit(-1266i)) | var_0.zyx, 4506i);
    var_1 = vec2<u32>(~abs(~0u), ~(~27157u));
    return vec4<i32>(-2147483647i, _wgslsmith_mod_i32(-30376i, _wgslsmith_div_i32(~var_0.x, ~var_2.a.x)), var_3.a, (var_3.c.x >> (10244u % 32u)) ^ u_input.a);
}

fn func_2() -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -547f)) + 1619f) - _wgslsmith_f_op_f32(f32(-1f) * -255f));
    let var_1 = -1161f;
    var var_2 = -1281f;
    var var_3 = ~vec3<u32>(0u, u_input.b, ~4294967295u);
    let var_4 = _wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, 2147483647i, -7539i), func_3(-460f)), u_input.a) & firstLeadingBit(max(min(vec2<i32>(u_input.a, -30003i), global0[_wgslsmith_index_u32(1u, 16u)]), global0[_wgslsmith_index_u32(u_input.b | var_3.x, 16u)])), _wgslsmith_div_vec2_i32(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(1940u, u_input.b, var_3.x, 0u)), vec4<u32>(u_input.b, var_3.x, 0u, var_3.x)), 1u), 16u)], abs(_wgslsmith_div_vec2_i32(select(global0[_wgslsmith_index_u32(28485u, 16u)], global0[_wgslsmith_index_u32(7612u, 16u)], vec2<bool>(global1.a.x, global1.a.x)), vec2<i32>(1i, u_input.a)))));
    return ~firstTrailingBit(_wgslsmith_mult_vec4_i32(~vec4<i32>(u_input.a, var_4.x, var_4.x, u_input.a) >> (~vec4<u32>(15728u, 1u, var_3.x, var_3.x) % vec4<u32>(32u)), (vec4<i32>(u_input.a, var_4.x, var_4.x, -2147483647i) | vec4<i32>(12463i, u_input.a, u_input.a, var_4.x)) | ~vec4<i32>(29003i, 2147483647i, -13397i, var_4.x)));
}

fn func_1(arg_0: i32, arg_1: vec3<f32>) -> Struct_4 {
    global0 = array<vec2<i32>, 16>();
    global0 = array<vec2<i32>, 16>();
    let var_0 = Struct_4(-func_2());
    global1 = Struct_1(!vec2<bool>(var_0.a.x != (arg_0 >> (51934u % 32u)), true == global1.a.x));
    global1 = Struct_1(vec2<bool>(global1.a.x, global1.a.x));
    return var_0;
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_4) -> Struct_3 {
    global0 = array<vec2<i32>, 16>();
    let var_0 = u_input.b;
    global0 = array<vec2<i32>, 16>();
    let var_1 = _wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(max(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 0u, u_input.b), ~vec3<u32>(var_0, var_0, 16079u)), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, var_0, 18156u) & vec3<u32>(0u, u_input.b, u_input.b), firstTrailingBit(vec3<u32>(56048u, 36111u, var_0)))), select(vec3<u32>(~u_input.b, var_0 << (var_0 % 32u), 1u), (vec3<u32>(var_0, u_input.b, u_input.b) << (vec3<u32>(u_input.b, 28010u, var_0) % vec3<u32>(32u))) | ~vec3<u32>(6836u, 6336u, u_input.b), vec3<bool>(u_input.b == 7895u, 0u <= u_input.b, arg_0.x))), _wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(35835u, 4294967295u, u_input.b) >> (vec3<u32>(var_0, 1u, 66361u) % vec3<u32>(32u)), vec3<u32>(1u, var_0, 81007u)), ~vec3<u32>(var_0, u_input.b, var_0)), vec3<u32>(1u, countOneBits(abs(84513u)), reverseBits(4294967295u) | ~var_0)));
    var var_2 = select(arg_0.xy, vec2<bool>(1126f == _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(930f + -855f))), all(!vec2<bool>(arg_0.x, true))), select(vec2<bool>(select(global1.a.x, all(arg_0), true), all(vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x)) | global1.a.x), !(!select(arg_0.zy, vec2<bool>(true, arg_0.x), vec2<bool>(arg_0.x, false))), select(select(select(global1.a, vec2<bool>(arg_0.x, false), arg_0.yx), select(global1.a, global1.a, false), any(vec4<bool>(global1.a.x, global1.a.x, true, arg_0.x))), select(vec2<bool>(false, arg_0.x), vec2<bool>(false, arg_0.x), global1.a), arg_0.xz)));
    return Struct_3(_wgslsmith_dot_vec2_i32(min(~vec2<i32>(arg_1.a.x, u_input.a), vec2<i32>(2147483647i, firstTrailingBit(u_input.a))), vec2<i32>(~(-2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 2147483647i), vec2<i32>(arg_1.a.x, arg_1.a.x))) ^ func_2().zz), Struct_2(arg_1.a.x, vec2<u32>(0u, 4294967295u), _wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(0i, u_input.a, -2147483647i) >> (vec3<u32>(var_0, 38020u, var_0) % vec3<u32>(32u)), firstLeadingBit(arg_1.a.yzw)), _wgslsmith_sub_vec3_i32(arg_1.a.yzy, vec3<i32>(u_input.a, 1i, u_input.a)) & (arg_1.a.wxy & vec3<i32>(2147483647i, u_input.a, -1i))), 18405i), Struct_2(~(-abs(u_input.a)), abs(_wgslsmith_sub_vec2_u32(vec2<u32>(var_1.x, 60384u), vec2<u32>(u_input.b, var_0))) ^ ~countOneBits(var_1.yz), vec3<i32>(u_input.a, arg_1.a.x, _wgslsmith_sub_i32(arg_1.a.x, firstTrailingBit(u_input.a))), ~u_input.a));
}

fn func_5(arg_0: Struct_4, arg_1: i32, arg_2: Struct_3) -> Struct_2 {
    var var_0 = global1.a.x;
    let var_1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -651f, -2789f, 347f)) + vec4<f32>(-544f, 2230f, -849f, 1198f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1604f, 1086f, 904f, 580f)) + vec4<f32>(1652f, 319f, -1000f, 185f)), global1.a.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-960f, -409f, 1725f, 1261f))), _wgslsmith_div_vec4_f32(vec4<f32>(166f, -434f, 1454f, 698f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(134f, -1916f, -1084f, -703f)))))));
    var var_2 = Struct_2(u_input.a, func_4(vec3<bool>(true, var_1.x >= var_1.x, true), arg_0).b.b ^ ~arg_2.b.b, -arg_2.b.c, func_1(arg_1, var_1.yzy).a.x);
    var var_3 = Struct_3(~u_input.a, func_4(vec3<bool>(any(!vec3<bool>(global1.a.x, true, false)), !all(vec4<bool>(global1.a.x, true, global1.a.x, global1.a.x)), true), func_1(~abs(10286i), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -670f), _wgslsmith_f_op_f32(-var_1.x), 421f))).c, Struct_2(2147483647i, countOneBits(vec2<u32>(_wgslsmith_add_u32(arg_2.c.b.x, var_2.b.x), _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.b.x, u_input.b, arg_2.b.b.x, arg_2.b.b.x), vec4<u32>(8022u, 23228u, u_input.b, 24436u)))), vec3<i32>(abs(~arg_0.a.x), func_4(vec3<bool>(global1.a.x, true, global1.a.x), arg_0).b.d, 1i), arg_2.b.c.x));
    let var_4 = Struct_3(14969i, arg_2.b, Struct_2(u_input.a, (~var_3.b.b & var_2.b) ^ min(vec2<u32>(var_3.c.b.x, 54532u), vec2<u32>(38292u, var_3.c.b.x)), vec3<i32>(abs(func_3(-1237f).x), 0i, 2147483647i), -(~func_1(3484i, var_1.wzx).a.x)));
    return var_3.c;
}

fn func_6(arg_0: Struct_2) -> Struct_3 {
    return Struct_3(-arg_0.c.x, Struct_2(-(~_wgslsmith_clamp_i32(-56256i, 0i, arg_0.c.x)), ~_wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 32213u), arg_0.b), abs(vec2<u32>(7778u, arg_0.b.x)), vec2<u32>(u_input.b, 34050u)), select(_wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(49690i, 2147483647i, arg_0.a), arg_0.c), vec3<i32>(77149i, u_input.a, -2147483647i)), ~(~vec3<i32>(0i, -1i, -3037i)), select(false, global1.a.x, global1.a.x)), 2147483647i), func_4(select(!select(vec3<bool>(true, false, global1.a.x), vec3<bool>(global1.a.x, global1.a.x, global1.a.x), vec3<bool>(global1.a.x, global1.a.x, true)), select(vec3<bool>(true, false, global1.a.x), select(vec3<bool>(false, global1.a.x, global1.a.x), vec3<bool>(true, false, global1.a.x), false), select(vec3<bool>(false, global1.a.x, global1.a.x), vec3<bool>(global1.a.x, true, global1.a.x), vec3<bool>(global1.a.x, global1.a.x, global1.a.x))), true), func_1((-2147483647i & arg_0.a) | arg_0.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-2996f, -421f, 670f), vec3<f32>(1292f, -305f, -1000f))))).b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a >= (6992i | ~_wgslsmith_clamp_i32(28169i, ~(-24200i), u_input.a << (74074u % 32u)));
    let var_1 = func_6(func_5(Struct_4(min(vec4<i32>(18210i, u_input.a, -77967i, 0i), -vec4<i32>(0i, 1i, u_input.a, -31488i))), _wgslsmith_mult_i32(u_input.a & 1i, u_input.a), func_4(!vec3<bool>(true, global1.a.x, var_0), func_1(u_input.a, vec3<f32>(-645f, -884f, 606f)))));
    var var_2 = -50535i;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(313f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -338f) + 1083f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * 1847f) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(208f)))))));
    let var_4 = _wgslsmith_f_op_f32(403f + _wgslsmith_f_op_f32(-var_3));
    global1 = Struct_1(!global1.a);
    let var_5 = select(func_4(!(!(!vec3<bool>(var_0, true, global1.a.x))), Struct_4(-vec4<i32>(u_input.a, u_input.a, 2147483647i, 2147483647i))).c.b.x, u_input.b, false);
    let var_6 = !(countOneBits(_wgslsmith_sub_u32(4294967295u, reverseBits(var_5))) != ~(~_wgslsmith_dot_vec2_u32(var_1.b.b, var_1.c.b)));
    let var_7 = ~_wgslsmith_add_u32(1u, var_5);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_4))) + _wgslsmith_f_op_f32(step(112f, _wgslsmith_f_op_f32(round(1613f))))))), 20956i);
}

