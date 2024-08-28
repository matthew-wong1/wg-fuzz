struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<u32>,
    d: u32,
    e: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: Struct_1;

var<private> global2: array<f32, 24>;

var<private> global3: array<u32, 1> = array<u32, 1>(4294967295u);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: vec2<f32>, arg_3: u32) -> u32 {
    global2 = array<f32, 24>();
    global2 = array<f32, 24>();
    let var_0 = Struct_4(select(vec2<bool>(true, select(arg_0.e, any(vec2<bool>(arg_0.e, true)), true)), select(select(vec2<bool>(false, arg_0.e), vec2<bool>(false, arg_0.e), select(vec2<bool>(arg_1.x, true), arg_1.ww, arg_0.e)), arg_1.yz, vec2<bool>(!arg_0.e, arg_1.x)), arg_1.yy), arg_0.b);
    return 4294967295u;
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: bool) -> vec4<i32> {
    global0 = abs(_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(select(vec4<u32>(57590u, arg_2.x, arg_2.x, arg_2.x), vec4<u32>(global0.x, 34591u, 37996u, 1u), vec4<bool>(arg_0.x, arg_3, arg_0.x, arg_0.x)), vec4<u32>(u_input.a, arg_2.x, global0.x, 9454u)), ~(vec4<u32>(global3[_wgslsmith_index_u32(4294u, 1u)], global3[_wgslsmith_index_u32(global0.x, 1u)], 25240u, 1685u) ^ vec4<u32>(1u, 1u, global0.x, 326u))), ~(~_wgslsmith_mod_vec4_u32(vec4<u32>(global0.x, arg_2.x, 1u, 1u), vec4<u32>(1u, 4294967295u, 4294967295u, u_input.a)))));
    var var_0 = arg_1;
    global0 = countOneBits(_wgslsmith_clamp_vec4_u32((vec4<u32>(u_input.a, 0u, 46312u, arg_2.x) << (vec4<u32>(global0.x, 0u, 1u, arg_2.x) % vec4<u32>(32u))) ^ select(vec4<u32>(76545u, 4294967295u, 0u, 1u), vec4<u32>(2437u, 11103u, 21669u, arg_2.x), arg_0.x), vec4<u32>(~global3[_wgslsmith_index_u32(14979u, 1u)], ~global3[_wgslsmith_index_u32(0u, 1u)], ~2728u, 4294967295u), _wgslsmith_mult_vec4_u32(firstLeadingBit(vec4<u32>(arg_2.x, global3[_wgslsmith_index_u32(4294967295u, 1u)], 4294967295u, arg_2.x)), vec4<u32>(global0.x, 4294967295u, u_input.a, 4294967295u)))) << (select(reverseBits(~vec4<u32>(arg_2.x, 0u, 49815u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(42759u, 1u)], 1u)])), min(vec4<u32>(21773u, 50402u, global0.x, arg_2.x), vec4<u32>(4294967295u, 30452u, u_input.a, global0.x) << (vec4<u32>(arg_2.x, arg_2.x, global3[_wgslsmith_index_u32(1u, 1u)], u_input.a) % vec4<u32>(32u))) >> (vec4<u32>(82132u, 4294967295u, ~58377u, abs(8655u)) % vec4<u32>(32u)), arg_0.x) % vec4<u32>(32u));
    var var_1 = global0.yx;
    var var_2 = _wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u, global0.x << (var_1.x % 32u)), 24u)]));
    return vec4<i32>(_wgslsmith_clamp_i32(3280i, -1i, _wgslsmith_add_i32(2147483647i, arg_1.a.x)), 0i, -var_0.a.x & -max(-2147483647i, global1.a.x), _wgslsmith_sub_i32(countOneBits(~global1.a.x), abs(-1i))) ^ (max(-(arg_1.a ^ vec4<i32>(arg_1.a.x, -1i, u_input.b.x, 1i)), _wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(u_input.b, var_0.a), -global1.a)) & ~reverseBits(select(vec4<i32>(1i, 35937i, u_input.b.x, -6737i), vec4<i32>(global1.a.x, u_input.b.x, -18641i, 73048i), arg_0.x)));
}

fn func_1(arg_0: f32, arg_1: vec4<i32>) -> Struct_3 {
    global2 = array<f32, 24>();
    global0 = ~vec4<u32>(_wgslsmith_mult_u32(25706u, global3[_wgslsmith_index_u32(func_2(Struct_2(Struct_1(u_input.b), Struct_1(global1.a), vec2<u32>(1u, 0u), 1u, false), vec4<bool>(false, true, false, false), vec2<f32>(arg_0, arg_0), global3[_wgslsmith_index_u32(u_input.a, 1u)]), 1u)]), abs(_wgslsmith_mod_u32(1u, u_input.a)), _wgslsmith_add_u32(global0.x, 24541u), ~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~0u, 1u)], 1u)]) ^ ~_wgslsmith_mod_vec4_u32(~vec4<u32>(1u, global3[_wgslsmith_index_u32(global0.x, 1u)], 28784u, 48540u), ~(vec4<u32>(global3[_wgslsmith_index_u32(24238u, 1u)], u_input.a, 1u, 0u) & vec4<u32>(35748u, u_input.a, 1u, 7049u)));
    global2 = array<f32, 24>();
    global3 = array<u32, 1>();
    global2 = array<f32, 24>();
    return Struct_3(Struct_2(Struct_1(_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, arg_1.x, 22294i, global1.a.x), countOneBits(arg_1))), Struct_1(-func_3(vec4<bool>(true, false, false, false), Struct_1(vec4<i32>(global1.a.x, u_input.b.x, 5721i, arg_1.x)), global0.zz, false)), vec2<u32>(~u_input.a, ~113961u), ~u_input.a, all(vec3<bool>(true, true, all(vec2<bool>(true, false))))), Struct_1(u_input.b << (abs(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 26935u, 12143u, global3[_wgslsmith_index_u32(u_input.a, 1u)]), vec4<u32>(1u, global3[_wgslsmith_index_u32(4294967295u, 1u)], global0.x, 24969u))) % vec4<u32>(32u))));
}

fn func_4(arg_0: Struct_4, arg_1: u32, arg_2: Struct_3, arg_3: vec4<u32>) -> vec2<bool> {
    let var_0 = func_1(130f, global1.a).a;
    let var_1 = arg_2.a;
    global3 = array<u32, 1>();
    let var_2 = false;
    global0 = arg_3;
    return vec2<bool>(any(vec2<bool>(func_1(_wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(50269u, 24u)])), -vec4<i32>(u_input.b.x, 0i, -1i, var_1.a.a.x)).a.e, var_2)), all(vec4<bool>(false, true, arg_0.a.x, false)));
}

fn func_5(arg_0: f32, arg_1: vec2<bool>, arg_2: Struct_4) -> Struct_3 {
    let var_0 = true;
    global0 = ~vec4<u32>(1u, u_input.a, u_input.a, ~77363u);
    global0 = vec4<u32>(4294967295u, countOneBits(firstTrailingBit(global3[_wgslsmith_index_u32(func_2(Struct_2(Struct_1(vec4<i32>(global1.a.x, arg_2.b.a.x, arg_2.b.a.x, -36855i)), arg_2.b, global0.zx, 43505u, arg_2.a.x), vec4<bool>(arg_2.a.x, arg_2.a.x, arg_2.a.x, arg_2.a.x), vec2<f32>(-557f, arg_0), u_input.a) >> (max(u_input.a, global3[_wgslsmith_index_u32(global0.x, 1u)]) % 32u), 1u)])), ~global3[_wgslsmith_index_u32(1u, 1u)], global3[_wgslsmith_index_u32(~global0.x, 1u)] << (4294967295u % 32u));
    let var_1 = -374f;
    let var_2 = _wgslsmith_mult_vec4_u32(vec4<u32>(reverseBits(select(56121u, global3[_wgslsmith_index_u32(4294967295u, 1u)] ^ global3[_wgslsmith_index_u32(u_input.a, 1u)], !arg_2.a.x)), ~select(106116u, ~57553u, true), u_input.a, ~(~0u)), abs(vec4<u32>(countOneBits(_wgslsmith_add_u32(global3[_wgslsmith_index_u32(53753u, 1u)], 8380u)), _wgslsmith_div_u32(global0.x, ~global0.x), global0.x, global0.x)));
    return func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1f + -1151f))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * arg_0), _wgslsmith_f_op_f32(-1f)))), vec4<i32>(~_wgslsmith_add_i32(-1909i, -17187i), _wgslsmith_dot_vec2_i32(vec2<i32>(i32(-1i) * -27986i, 36588i), abs(vec2<i32>(global1.a.x, 14359i)) ^ vec2<i32>(2147483647i, global1.a.x)), reverseBits(min(abs(arg_2.b.a.x), ~u_input.b.x)), arg_2.b.a.x));
}

fn func_6(arg_0: Struct_3) -> vec4<u32> {
    global2 = array<f32, 24>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_add_u32(u_input.a, 101308u) & _wgslsmith_dot_vec2_u32(vec2<u32>(83112u, global0.x), vec2<u32>(0u, global3[_wgslsmith_index_u32(0u, 1u)])), global3[_wgslsmith_index_u32(arg_0.a.c.x, 1u)]), 24u)], -1111f));
    global3 = array<u32, 1>();
    global1 = arg_0.a.b;
    global3 = array<u32, 1>();
    return _wgslsmith_add_vec4_u32(~(~(~vec4<u32>(u_input.a, global0.x, arg_0.a.d, u_input.a) | ~vec4<u32>(0u, u_input.a, global3[_wgslsmith_index_u32(75684u, 1u)], 0u))), _wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(firstTrailingBit(vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global0.x, 1u)], 1u)], 54481u, arg_0.a.c.x, 37052u)), ~vec4<u32>(global0.x, arg_0.a.d, global3[_wgslsmith_index_u32(1u, 1u)], 7892u), ~vec4<u32>(33668u, 0u, 4294967295u, 26431u)), vec4<u32>(~17903u, func_5(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(16206u, 1u)], 24u)], vec2<bool>(arg_0.a.e, arg_0.a.e), Struct_4(vec2<bool>(true, false), arg_0.b)).a.d, 1u, u_input.a)), ~vec4<u32>(firstLeadingBit(u_input.a), ~u_input.a, ~1u, 0u & global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global0.x, 1u)], 1u)])));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -(~(-(u_input.b.x ^ _wgslsmith_dot_vec2_i32(vec2<i32>(global1.a.x, 2147483647i), vec2<i32>(u_input.b.x, global1.a.x)))));
    var var_1 = global1.a.xw;
    var var_2 = Struct_1(u_input.b);
    global0 = func_6(func_5(global2[_wgslsmith_index_u32(1u, 24u)], !func_4(Struct_4(vec2<bool>(false, false), Struct_1(vec4<i32>(global1.a.x, u_input.b.x, -29675i, -2147483647i))), 4294967295u, func_1(global2[_wgslsmith_index_u32(global0.x, 24u)], u_input.b), reverseBits(vec4<u32>(24210u, global0.x, 0u, 4123u))), Struct_4(vec2<bool>(select(false, false, false), any(vec2<bool>(true, true))), Struct_1(-global1.a))));
    var_1 = func_3(vec4<bool>(true, true, true, true), Struct_1(~vec4<i32>(i32(-1i) * -2147483647i, -1i, var_1.x, var_2.a.x)), global0.xz, _wgslsmith_mult_i32(_wgslsmith_add_i32(func_1(-219f, var_2.a).b.a.x, i32(-1i) * -2147483647i), -30446i) > _wgslsmith_mod_i32(max(24320i & global1.a.x, 0i), firstTrailingBit(_wgslsmith_mod_i32(38192i, global1.a.x)))).yx;
    global2 = array<f32, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.xy);
}

