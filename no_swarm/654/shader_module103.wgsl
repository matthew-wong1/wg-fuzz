struct Struct_1 {
    a: i32,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: u32,
    b: vec2<i32>,
    c: bool,
    d: vec2<i32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct Struct_5 {
    a: vec2<f32>,
    b: bool,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 14>;

var<private> global1: Struct_4;

var<private> global2: array<f32, 16> = array<f32, 16>(1015f, -514f, -149f, -626f, -501f, -1846f, 123f, -614f, 658f, 879f, 1791f, -737f, 640f, 491f, -2519f, 1155f);

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: bool) -> i32 {
    return 16792i;
}

fn func_2(arg_0: f32, arg_1: f32) -> u32 {
    var var_0 = vec4<u32>(max(~3660u, 37076u), _wgslsmith_div_u32(~1u, select(~0u, 1u, true)) ^ firstLeadingBit(_wgslsmith_sub_u32(~61165u, _wgslsmith_dot_vec3_u32(vec3<u32>(7407u, 25374u, 81739u), vec3<u32>(1u, 4294967295u, 0u)))), 26184u, _wgslsmith_mod_u32(_wgslsmith_mult_u32(~(~1u), 4294967295u), firstTrailingBit(1u)));
    let var_1 = ~abs(_wgslsmith_sub_vec4_i32(abs(vec4<i32>(u_input.b.x, -41143i, -77743i, -40886i)), vec4<i32>(u_input.b.x, u_input.b.x, -1i, u_input.b.x))) >> (vec4<u32>(~4294967295u, countOneBits(1u), 1u, ~(~(~4294967295u))) % vec4<u32>(32u));
    let var_2 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a.x, -582f, arg_0) - vec3<f32>(220f, global1.a.x, -563f))) + global1.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(~40102u, 16u)], _wgslsmith_f_op_f32(f32(-1f) * -629f), global1.a.x))))));
    var var_3 = Struct_2(4294967295u, vec2<i32>(-func_3(4294967295u, any(vec4<bool>(false, false, false, true))), 1i & ~var_1.x), !all(vec3<bool>(global0[_wgslsmith_index_u32(var_0.x, 14u)], false, var_0.x >= var_0.x)), -_wgslsmith_mod_vec2_i32(vec2<i32>(-52458i, 24720i), ~_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b.x, -3559i), u_input.b.zx, vec2<i32>(-62287i, u_input.b.x))));
    global1 = Struct_4(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(global1.a, vec3<f32>(-848f, global1.a.x, global2[_wgslsmith_index_u32(var_0.x, 16u)]))) * vec3<f32>(arg_1, _wgslsmith_div_f32(-133f, arg_0), 756f)))));
    return _wgslsmith_dot_vec2_u32(~select(vec2<u32>(var_3.a, var_0.x), var_0.wz, vec2<bool>(false, global0[_wgslsmith_index_u32(var_0.x, 14u)])) | reverseBits(abs(vec2<u32>(var_0.x, 1u))), var_0.zz) ^ (~_wgslsmith_div_u32(max(46030u, var_3.a), ~88259u) >> (~26084u % 32u));
}

fn func_4(arg_0: Struct_3) -> Struct_2 {
    global1 = Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.x, global2[_wgslsmith_index_u32(arg_0.c.b, 16u)], global2[_wgslsmith_index_u32(0u, 16u)]))) + _wgslsmith_f_op_vec3_f32(global1.a + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(0u, 16u)], global2[_wgslsmith_index_u32(24834u, 16u)], global2[_wgslsmith_index_u32(arg_0.c.b, 16u)])))));
    let var_0 = abs(firstTrailingBit(vec3<i32>(~firstLeadingBit(-22043i), u_input.a, arg_0.b.b.x)));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-830f)) - _wgslsmith_f_op_f32(-global1.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(106629u, 16u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 16u)]))), 161f);
    var var_2 = Struct_3(var_0.x, Struct_2(_wgslsmith_mod_u32(4294967295u, ~(0u >> (arg_0.b.a % 32u))), arg_0.b.d & ~(-arg_0.b.b), true, vec2<i32>(arg_0.a & u_input.b.x, -1i << (arg_0.b.a % 32u)) << (countOneBits(vec2<u32>(arg_0.b.a, arg_0.b.a) << (vec2<u32>(arg_0.c.b, arg_0.b.a) % vec2<u32>(32u))) % vec2<u32>(32u))), arg_0.c);
    global0 = array<bool, 14>();
    return Struct_2(var_2.b.a, countOneBits(_wgslsmith_add_vec2_i32(-arg_0.b.b, vec2<i32>(1i, ~arg_0.c.a))), false, var_0.yz);
}

fn func_1() -> u32 {
    var var_0 = global1.a.x;
    let var_1 = func_4(Struct_3(~u_input.a << (func_2(_wgslsmith_div_f32(-1219f, global2[_wgslsmith_index_u32(42307u, 16u)]), global1.a.x) % 32u), Struct_2(~(~4294967295u), _wgslsmith_sub_vec2_i32(countOneBits(vec2<i32>(u_input.b.x, u_input.a)), -vec2<i32>(u_input.a, u_input.b.x)), u_input.a <= -18291i, vec2<i32>(u_input.b.x, abs(0i))), Struct_1(-_wgslsmith_add_i32(-13912i, u_input.a), _wgslsmith_div_u32(firstLeadingBit(1u), ~0u), ~reverseBits(-2147483647i))));
    var var_2 = all(vec4<bool>(!global0[_wgslsmith_index_u32(_wgslsmith_add_u32(var_1.a, var_1.a) ^ 1u, 14u)], true, -9469i == _wgslsmith_mod_i32(u_input.b.x, -18931i), all(select(select(vec2<bool>(var_1.c, false), vec2<bool>(true, false), global0[_wgslsmith_index_u32(4294967295u, 14u)]), vec2<bool>(true, global0[_wgslsmith_index_u32(33239u, 14u)]), all(vec4<bool>(true, false, true, false))))));
    global0 = array<bool, 14>();
    let var_3 = func_4(Struct_3(1i, var_1, Struct_1(-var_1.b.x >> (select(0u, var_1.a, global0[_wgslsmith_index_u32(1u, 14u)]) % 32u), _wgslsmith_mult_u32(0u, _wgslsmith_mult_u32(var_1.a, 1u)), ~firstLeadingBit(1i))));
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<f32, 16>();
    global0 = array<bool, 14>();
    let var_0 = countOneBits(abs(~(_wgslsmith_clamp_vec4_i32(vec4<i32>(-16678i, -32900i, u_input.a, -63129i), vec4<i32>(1i, u_input.a, 0i, 2147483647i), vec4<i32>(-6132i, u_input.a, u_input.b.x, 20478i)) ^ _wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, u_input.a, u_input.b.x, -1i), vec4<i32>(u_input.b.x, u_input.a, u_input.b.x, u_input.a)))));
    var var_1 = ~select(vec2<u32>(~func_1(), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u))), vec2<u32>(4294967295u, 9802u), vec2<bool>(!all(vec4<bool>(global0[_wgslsmith_index_u32(6453u, 14u)], global0[_wgslsmith_index_u32(66852u, 14u)], global0[_wgslsmith_index_u32(0u, 14u)], true)), !global0[_wgslsmith_index_u32(1u, 14u)] && all(vec4<bool>(global0[_wgslsmith_index_u32(10731u, 14u)], false, global0[_wgslsmith_index_u32(6312u, 14u)], false))));
    var var_2 = -16109i;
    let var_3 = Struct_5(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(global1.a.yx * global1.a.xx), vec2<f32>(-537f, -1000f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(39782u, 16u)], -1689f)) + _wgslsmith_f_op_vec2_f32(-global1.a.zz))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1597f, _wgslsmith_f_op_f32(f32(-1f) * -1316f)) - vec2<f32>(-1565f, -1198f)))), any(select(!(!vec4<bool>(true, true, global0[_wgslsmith_index_u32(0u, 14u)], true)), select(select(vec4<bool>(global0[_wgslsmith_index_u32(8624u, 14u)], true, global0[_wgslsmith_index_u32(var_1.x, 14u)], global0[_wgslsmith_index_u32(17097u, 14u)]), vec4<bool>(global0[_wgslsmith_index_u32(44352u, 14u)], true, true, global0[_wgslsmith_index_u32(var_1.x, 14u)]), false), select(vec4<bool>(global0[_wgslsmith_index_u32(52539u, 14u)], true, false, false), vec4<bool>(global0[_wgslsmith_index_u32(var_1.x, 14u)], global0[_wgslsmith_index_u32(var_1.x, 14u)], true, false), global0[_wgslsmith_index_u32(4294967295u, 14u)]), vec4<bool>(global0[_wgslsmith_index_u32(var_1.x, 14u)], global0[_wgslsmith_index_u32(var_1.x, 14u)], global0[_wgslsmith_index_u32(50251u, 14u)], global0[_wgslsmith_index_u32(var_1.x, 14u)])), true)), global0[_wgslsmith_index_u32(24592u, 14u)], Struct_1(2147483647i, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, 48279u, _wgslsmith_sub_u32(41980u, var_1.x), ~var_1.x), vec4<u32>(13212u, var_1.x, 27859u, var_1.x) & firstTrailingBit(vec4<u32>(var_1.x, 4294967295u, var_1.x, var_1.x))), var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(var_3.d.b, var_1.x), (func_3(4294967295u, any(vec4<bool>(true, false, var_3.c, true))) << (33040u % 32u)) & (var_3.d.c | -5757i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(var_1.x, 16u)]))));
}

