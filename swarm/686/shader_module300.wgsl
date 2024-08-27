struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: vec4<u32>,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: bool,
    c: f32,
    d: bool,
    e: f32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_1,
    c: f32,
    d: u32,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<f32, 21>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2() -> i32 {
    global0 = vec4<i32>(reverseBits(_wgslsmith_sub_i32(-33749i >> (0u % 32u), firstTrailingBit(-22357i))), -u_input.b.x & global0.x, _wgslsmith_dot_vec2_i32(abs(vec2<i32>(u_input.b.x, 1i)), select(u_input.b.xy, u_input.b.wx << (u_input.a.yw % vec2<u32>(32u)), false)), u_input.b.x) | -_wgslsmith_div_vec4_i32(~(~u_input.b), countOneBits(~u_input.b));
    var var_0 = u_input.a;
    let var_1 = -_wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, global0.x, global0.x, -11864i), u_input.b, vec4<i32>(global0.x, global0.x, u_input.b.x, 0i)), -vec4<i32>(global0.x, -46309i, -14032i, -27318i)), u_input.b), ~vec4<i32>(1i, 2147483647i, ~u_input.b.x, -1i));
    var_0 = vec4<u32>(var_0.x, _wgslsmith_mod_u32(firstTrailingBit(u_input.a.x), u_input.a.x), 14161u, ~(~(~(~var_0.x))));
    global1 = array<f32, 21>();
    return -2147483647i;
}

fn func_3() -> vec3<u32> {
    global0 = ~_wgslsmith_clamp_vec4_i32(vec4<i32>(select(u_input.b.x, ~2147483647i, true), func_2(), _wgslsmith_mult_i32(0i, u_input.b.x), -1i), ~u_input.b, _wgslsmith_mult_vec4_i32(reverseBits(u_input.b), min(-u_input.b, vec4<i32>(u_input.b.x, global0.x, 38271i, 2147483647i))));
    global0 = ~select(vec4<i32>(u_input.b.x, firstLeadingBit(global0.x), ~2147483647i, abs(-19165i)), ~(u_input.b & u_input.b), any(vec4<bool>(26091u <= u_input.a.x, all(vec4<bool>(false, false, true, false)), false, any(vec3<bool>(true, false, false)))));
    var var_0 = u_input.a;
    var var_1 = global1[_wgslsmith_index_u32(select(u_input.c, _wgslsmith_clamp_u32(~u_input.c ^ var_0.x, var_0.x, ~_wgslsmith_dot_vec3_u32(u_input.a.wzz, vec3<u32>(0u, var_0.x, 21247u))), true), 21u)] < _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(~4294967295u, 4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 41235u, 86807u), vec3<u32>(u_input.a.x, 0u, var_0.x))), 21u)] - global1[_wgslsmith_index_u32(u_input.a.x, 21u)]);
    var_1 = true;
    return _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c, countOneBits(countOneBits(var_0.x)), 18258u), vec3<u32>(~(~var_0.x), ~(0u << (u_input.c % 32u)), _wgslsmith_mod_u32(countOneBits(u_input.a.x), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 0u, 1u), vec3<u32>(var_0.x, var_0.x, 4294967295u))))) ^ ~max(min(vec3<u32>(u_input.c, 33264u, 54767u), u_input.a.zzw), vec3<u32>(4294967295u, ~0u, 1u));
}

fn func_1() -> Struct_3 {
    global0 = -u_input.b;
    var var_0 = reverseBits(_wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b.x, -2147483647i, u_input.b.x), select(global0.xyw, vec3<i32>(u_input.b.x, 1i, global0.x), false)), vec3<i32>(2147483647i, u_input.b.x, 0i) << (~u_input.a.yxx % vec3<u32>(32u))) | global0.xzx);
    global0 = vec4<i32>(func_2(), u_input.b.x, func_2(), _wgslsmith_dot_vec2_i32(~global0.wx, u_input.b.yw)) >> (u_input.a % vec4<u32>(32u));
    var var_1 = abs(-13880i);
    var var_2 = -970f;
    return Struct_3(~(~_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, 0u), func_3())), Struct_1(true, !(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true))), firstTrailingBit(u_input.a), false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-275f * global1[_wgslsmith_index_u32(u_input.a.x, 21u)]))) * _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.c, 2026u), 21u)] + global1[_wgslsmith_index_u32(~u_input.c, 21u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~u_input.c, 21u)] * global1[_wgslsmith_index_u32(u_input.c, 21u)]) * 1217f), u_input.a.x);
}

fn func_4(arg_0: Struct_3) -> i32 {
    var var_0 = u_input.b;
    var var_1 = Struct_2(!(!select(select(arg_0.b.b.zxw, vec3<bool>(arg_0.b.a, true, arg_0.b.d), false), arg_0.b.b.xwy, !vec3<bool>(arg_0.b.b.x, arg_0.b.b.x, arg_0.b.b.x))), all(arg_0.b.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(25245u, 21u)]))), arg_0.b.e)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.c), global1[_wgslsmith_index_u32(min(min(4294967295u, u_input.c), 24130u), 21u)]))), all(arg_0.b.b), arg_0.b.e);
    var_1 = Struct_2(vec3<bool>(true, arg_0.b.a, true), arg_0.b.a, _wgslsmith_div_f32(903f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1.e * -1389f), var_1.c)), 1000f)), true && ((u_input.b.x | abs(-1i)) <= 1i), var_1.e);
    var var_2 = _wgslsmith_sub_u32(_wgslsmith_clamp_u32(~3122u, firstLeadingBit(0u), 22812u), ~reverseBits(~(30801u ^ arg_0.a.x)));
    var_2 = 1u;
    return ~u_input.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(func_4(func_1()) < firstLeadingBit(func_4(Struct_3(u_input.a.yyy, Struct_1(true, vec4<bool>(false, false, false, false), u_input.a, false, 372f), global1[_wgslsmith_index_u32(u_input.c, 21u)], 50327u))), select(vec4<bool>(!all(vec3<bool>(true, true, false)), all(vec4<bool>(false, false, false, false)) | true, !(global0.x > u_input.b.x), true), select(vec4<bool>(u_input.b.x > -1i, false, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true)), true), true || all(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true)))), u_input.a, false, global1[_wgslsmith_index_u32(_wgslsmith_div_u32(abs(_wgslsmith_div_u32(_wgslsmith_div_u32(u_input.c, u_input.a.x), _wgslsmith_div_u32(13570u, 3530u))), 110604u), 21u)]);
    var var_1 = _wgslsmith_f_op_f32(round(-989f));
    let var_2 = _wgslsmith_mult_vec4_u32(firstLeadingBit(abs(_wgslsmith_mult_vec4_u32(var_0.c & vec4<u32>(4294967295u, var_0.c.x, u_input.a.x, 29488u), ~u_input.a))), vec4<u32>(u_input.c, _wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.c | 53407u, func_1().d), u_input.a.x), min(min(67819u, ~43382u), _wgslsmith_sub_u32(~u_input.c, 1u)), reverseBits(~(~u_input.c))));
    global0 = _wgslsmith_mult_vec4_i32(u_input.b, (vec4<i32>(u_input.b.x, firstLeadingBit(global0.x), abs(1i), 2147483647i) >> (firstTrailingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 19470u, u_input.c, u_input.c), vec4<u32>(u_input.c, 20064u, 4294967295u, u_input.a.x), vec4<u32>(4294967295u, 4294967295u, u_input.c, var_2.x))) % vec4<u32>(32u))) << (vec4<u32>(var_2.x, max(abs(var_0.c.x), ~var_0.c.x), var_2.x, 25164u) % vec4<u32>(32u)));
    let var_3 = var_0.d;
    var_1 = _wgslsmith_div_f32(var_0.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.c, 21u)] + var_0.e), _wgslsmith_f_op_f32(min(var_0.e, var_0.e)))) * 1084f)));
    var_0 = Struct_1(any(select(select(vec4<bool>(false, false, var_0.a, false), select(vec4<bool>(true, true, var_0.d, false), var_0.b, var_0.b), var_0.b), var_0.b, var_0.b)), !select(!var_0.b, vec4<bool>(true, select(false, var_0.d, var_0.d), u_input.b.x != global0.x, var_0.d), vec4<bool>(var_0.a, all(var_0.b.zxx), false, var_0.d)), max(~vec4<u32>(~64572u, _wgslsmith_add_u32(4294967295u, u_input.c), ~var_0.c.x, u_input.c), var_0.c << (vec4<u32>(37518u, func_1().b.c.x, select(var_0.c.x, 0u, var_0.a), _wgslsmith_div_u32(38470u, u_input.a.x)) % vec4<u32>(32u))), var_0.b.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_0.e)), _wgslsmith_div_f32(var_0.e, -983f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.e - _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 21u)] - -467f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1278f, var_0.e) * _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global1[_wgslsmith_index_u32(var_0.c.x, 21u)], global1[_wgslsmith_index_u32(4294967295u, 21u)])))))), firstLeadingBit(firstTrailingBit(vec4<i32>(_wgslsmith_clamp_i32(global0.x, 32514i, 2147483647i), func_2(), -47219i, -u_input.b.x))));
}

