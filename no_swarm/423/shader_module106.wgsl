struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<vec2<i32>, 19>;

var<private> global2: i32 = 1i;

var<private> global3: array<vec2<i32>, 13>;

var<private> global4: array<f32, 15> = array<f32, 15>(2457f, -206f, 1169f, -519f, -141f, 704f, -1249f, -706f, 450f, -1000f, 725f, 1030f, 1165f, -1072f, -922f);

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: u32) -> Struct_2 {
    let var_0 = !(!(!select(vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(false, true))));
    global1 = array<vec2<i32>, 19>();
    var var_1 = Struct_2(u_input.e.x, Struct_1(global0.x), u_input.d);
    let var_2 = Struct_1(select(2147483647i, 31629i, global4[_wgslsmith_index_u32(reverseBits(_wgslsmith_mod_u32(arg_2, 4294967295u)), 15u)] == 810f));
    let var_3 = i32(-1i) * -1i;
    return Struct_2(u_input.e.x, var_2, 6939i);
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: Struct_2) -> i32 {
    global3 = array<vec2<i32>, 13>();
    var var_0 = arg_1.b;
    var var_1 = -34863i;
    let var_2 = !(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), false));
    let var_3 = arg_3;
    return select(-2147483647i, 2147483647i, true);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec2<u32>, arg_3: i32) -> u32 {
    let var_0 = Struct_2(firstTrailingBit(19544u), Struct_1(min(-select(arg_1.c, arg_0.a, true), -2147483647i)), firstLeadingBit(~global0.x));
    var var_1 = func_2(_wgslsmith_add_u32(_wgslsmith_sub_u32(func_2(arg_1.a, var_0.b, 34053u).a, ~1u), arg_2.x) ^ ~(~36100u), Struct_1(~_wgslsmith_dot_vec4_i32(-vec4<i32>(arg_3, arg_1.b.a, -7095i, arg_3), vec4<i32>(-15489i, global0.x, -13754i, -13862i))), 22442u);
    var var_2 = select(select(select(vec3<bool>(any(vec3<bool>(true, false, true)), true, all(vec2<bool>(false, true))), vec3<bool>(true, true, true), true), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, true)), vec3<bool>(!all(vec4<bool>(true, true, true, true)), true, any(vec4<bool>(any(vec4<bool>(true, false, true, true)), any(vec4<bool>(true, false, false, true)), true, true))), select(!vec3<bool>(true, 2440f != global4[_wgslsmith_index_u32(2179u, 15u)], true), select(vec3<bool>(u_input.a <= var_0.a, true, true), vec3<bool>(select(true, false, true), 2147483647i != var_0.b.a, true), vec3<bool>(true, true, true)), false));
    var var_3 = vec4<f32>(-2465f, global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(firstLeadingBit(arg_1.a), var_1.a << (4294967295u % 32u)), vec2<u32>(abs(~arg_2.x), ~_wgslsmith_div_u32(u_input.e.x, 4294967295u))), 15u)], 590f, 495f);
    let var_4 = _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(global0.yyw, global0.wzz | global0.zyz), global0.yyy);
    return _wgslsmith_sub_u32(0u, firstLeadingBit(~u_input.a));
}

fn func_1(arg_0: u32, arg_1: vec3<f32>) -> vec4<i32> {
    let var_0 = u_input.b;
    var var_1 = min(79898u, 4294967295u) == u_input.e.x;
    var var_2 = true;
    var var_3 = vec3<u32>(select(u_input.e.x, reverseBits(func_4(Struct_1(global0.x), func_2(58944u, Struct_1(u_input.d), u_input.e.x), vec2<u32>(arg_0, 0u), func_3(vec4<f32>(-1253f, arg_1.x, 1744f, 707f), Struct_2(arg_0, Struct_1(u_input.b), -39087i), vec3<u32>(arg_0, arg_0, u_input.a), Struct_2(1u, Struct_1(var_0), 40790i)))), u_input.e.x == func_2(1u, func_2(u_input.a, Struct_1(u_input.d), u_input.a).b, ~1u).a), u_input.a, 3924u);
    global2 = u_input.b & (_wgslsmith_mod_i32(var_0, firstTrailingBit(func_2(78591u, Struct_1(1559i), 112147u).b.a)) & (-20646i | (var_0 | ~u_input.b)));
    return -vec4<i32>(6988i, 19503i, 22784i, countOneBits(reverseBits(-u_input.c)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(all(select(vec3<bool>(true, true, true), vec3<bool>(true, any(vec2<bool>(true, false)), all(vec3<bool>(true, false, false))), !all(vec3<bool>(true, false, true)))), true, true, true);
    let var_1 = (~(vec4<i32>(u_input.d, u_input.c, 40810i, 2147483647i) & _wgslsmith_add_vec4_i32(vec4<i32>(global0.x, -1i, global0.x, 9040i), vec4<i32>(-4721i, 1i, global0.x, u_input.d))) | (vec4<i32>(global0.x, 40278i, -u_input.d, u_input.d) | (func_1(82710u, vec3<f32>(2185f, 1099f, global4[_wgslsmith_index_u32(4294967295u, 15u)])) & vec4<i32>(40080i, -2147483647i, global0.x, global0.x)))) ^ (vec4<i32>(1i, -global0.x, abs(min(u_input.d, global0.x)), _wgslsmith_mod_i32(1i, _wgslsmith_sub_i32(u_input.b, u_input.c))) ^ abs(vec4<i32>(_wgslsmith_dot_vec3_i32(global0.zww, vec3<i32>(-2147483647i, -1i, u_input.d)), global0.x, ~2147483647i, global0.x)));
    global4 = array<f32, 15>();
    var var_2 = global4[_wgslsmith_index_u32(~(1u >> (u_input.a % 32u)), 15u)];
    global2 = _wgslsmith_mult_i32(abs(firstLeadingBit(-2147483647i)), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(var_1.zxx, vec3<i32>(-global0.x, ~global0.x, ~var_1.x)), global0.x));
    let var_3 = Struct_1(var_1.x);
    let var_4 = Struct_1(-2147483647i & _wgslsmith_div_i32(-15552i, u_input.c));
    let var_5 = Struct_2(firstTrailingBit(abs(reverseBits(_wgslsmith_mult_u32(u_input.e.x, 55524u)))), Struct_1(_wgslsmith_dot_vec4_i32(var_1, min(-var_1, _wgslsmith_div_vec4_i32(vec4<i32>(35134i, var_4.a, var_4.a, -43486i), vec4<i32>(var_3.a, -1i, -2147483647i, var_1.x))))), 4737i);
    var var_6 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1279f, global4[_wgslsmith_index_u32(var_5.a, 15u)]))) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(1115f, global4[_wgslsmith_index_u32(u_input.e.x, 15u)]) + global4[_wgslsmith_index_u32(u_input.a >> (8903u % 32u), 15u)]))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(1u, 15u)]))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b << (var_5.a % 32u), ~vec4<u32>(select(var_5.a, ~4294967295u, any(var_0.wx)), ~u_input.e.x >> (0u % 32u), ~select(u_input.a, var_5.a, var_0.x), ~abs(u_input.e.x)));
}

