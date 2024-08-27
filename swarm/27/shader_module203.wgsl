struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 7> = array<u32, 7>(41678u, 20783u, 26963u, 0u, 0u, 13198u, 0u);

var<private> global1: array<Struct_3, 11>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: Struct_2) -> i32 {
    global1 = array<Struct_3, 11>();
    global0 = array<u32, 7>();
    let var_0 = !(!select(select(vec4<bool>(arg_1.b, false, true, false), select(vec4<bool>(true, arg_2.b, arg_2.b, false), vec4<bool>(true, false, false, arg_1.b), arg_2.b), !vec4<bool>(arg_1.b, true, arg_1.b, arg_2.b)), vec4<bool>(true, select(arg_1.b, arg_2.b, true), arg_2.b && arg_1.b, arg_1.b), false));
    let var_1 = arg_1.a.d;
    global1 = array<Struct_3, 11>();
    return arg_2.a.c;
}

fn func_2() -> i32 {
    let var_0 = _wgslsmith_dot_vec4_i32(abs(vec4<i32>(u_input.b, u_input.b, ~_wgslsmith_div_i32(u_input.b, u_input.b), func_3(-2155f, Struct_2(Struct_1(u_input.b, vec4<i32>(u_input.b, u_input.b, 2147483647i, -12946i), -36220i, vec2<i32>(2147483647i, u_input.b)), true), Struct_2(Struct_1(u_input.b, vec4<i32>(2147483647i, 0i, u_input.b, u_input.b), u_input.b, vec2<i32>(u_input.b, u_input.b)), true)))), abs(select(vec4<i32>(26028i, u_input.b, u_input.b, -29310i), ~vec4<i32>(u_input.b, u_input.b, u_input.b, -2147483647i), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 7u)], 7u)] > 0u)) << (vec4<u32>(u_input.c, (global0[_wgslsmith_index_u32(12069u, 7u)] ^ u_input.c) ^ _wgslsmith_add_u32(u_input.c, 1u), abs(~global0[_wgslsmith_index_u32(0u, 7u)]), ~(~47823u)) % vec4<u32>(32u)));
    global1 = array<Struct_3, 11>();
    var var_1 = Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(func_3(_wgslsmith_f_op_f32(floor(503f)), Struct_2(Struct_1(-26897i, vec4<i32>(23139i, 1i, u_input.b, u_input.b), u_input.b, vec2<i32>(1i, var_0)), false), Struct_2(Struct_1(2147483647i, vec4<i32>(-7962i, -1i, -1i, -1i), -5331i, vec2<i32>(var_0, 2147483647i)), false)), _wgslsmith_div_i32(_wgslsmith_sub_i32(var_0, var_0), -2147483647i), -u_input.b & -2147483647i, _wgslsmith_dot_vec2_i32(-vec2<i32>(1i, u_input.b), vec2<i32>(8235i, var_0))), ((vec4<i32>(-2147483647i, var_0, -2147483647i, u_input.b) << (vec4<u32>(global0[_wgslsmith_index_u32(5155u, 7u)], 5612u, u_input.c, global0[_wgslsmith_index_u32(u_input.c, 7u)]) % vec4<u32>(32u))) << (max(vec4<u32>(0u, 9032u, 4294967295u, global0[_wgslsmith_index_u32(16852u, 7u)]), vec4<u32>(u_input.c, 0u, 77507u, global0[_wgslsmith_index_u32(u_input.c, 7u)])) % vec4<u32>(32u))) ^ vec4<i32>(1i, -2147483647i, 1i, u_input.b | -2147483647i)), vec4<i32>(min(_wgslsmith_mult_i32(1i, _wgslsmith_mult_i32(-23331i, var_0)), abs(~24203i)), u_input.b | (u_input.b >> (min(31472u, u_input.c) % 32u)), ~_wgslsmith_clamp_i32(func_3(514f, Struct_2(Struct_1(var_0, vec4<i32>(u_input.b, var_0, u_input.b, u_input.b), var_0, vec2<i32>(u_input.b, 0i)), true), Struct_2(Struct_1(var_0, vec4<i32>(3793i, u_input.b, 38822i, var_0), 61082i, vec2<i32>(u_input.b, 103821i)), false)), var_0, 1i), u_input.b), select(u_input.b, i32(-1i) * -22855i, true), ~(~_wgslsmith_mod_vec2_i32(vec2<i32>(var_0, -1i), vec2<i32>(var_0, var_0))) << (reverseBits(vec2<u32>(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(u_input.c, 7u)], u_input.c), 7u)], u_input.a)) % vec2<u32>(32u)));
    var var_2 = Struct_3(vec3<u32>(~(global0[_wgslsmith_index_u32(8920u, 7u)] ^ u_input.a) | select(~44109u, ~u_input.a, true), 144474u << (countOneBits(firstTrailingBit(0u)) % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(u_input.a, 7u)], 4294967295u) ^ vec2<u32>(global0[_wgslsmith_index_u32(1u, 7u)], 1u), ~vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(u_input.a, 7u)])) >> (31919u % 32u)));
    var var_3 = any(vec2<bool>(true, any(vec4<bool>(true, true, false, false)) || all(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)))));
    return _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(var_1.b, -var_1.b), ~(var_1.b ^ -var_1.b));
}

fn func_1(arg_0: vec4<i32>) -> Struct_2 {
    global0 = array<u32, 7>();
    var var_0 = max(arg_0 >> (vec4<u32>(~0u, 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(22745u, 26030u, u_input.a, 36062u), vec4<u32>(0u, u_input.c, 1u, 0u)) << (~4294967295u % 32u), ~(u_input.a ^ 0u)) % vec4<u32>(32u)), vec4<i32>(arg_0.x, _wgslsmith_add_i32(-5818i >> (global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(36838u, 4294967295u, u_input.a), 7u)] % 32u), 1i), countOneBits(func_2()), _wgslsmith_add_i32(_wgslsmith_mult_i32(i32(-1i) * -68559i, countOneBits(2147483647i)), countOneBits(1i))));
    let var_1 = ~_wgslsmith_mod_u32(0u, 20905u);
    let var_2 = Struct_1(_wgslsmith_mod_i32(-select(firstLeadingBit(arg_0.x), -1i, true), func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -172f)), Struct_2(Struct_1(arg_0.x, vec4<i32>(0i, -2147483647i, -2147483647i, var_0.x), arg_0.x, vec2<i32>(arg_0.x, 2147483647i)), false), Struct_2(Struct_1(var_0.x, arg_0, var_0.x, arg_0.ww), arg_0.x >= -58215i))), vec4<i32>(min(~(-555i), -arg_0.x), _wgslsmith_mod_i32(-u_input.b | min(arg_0.x, 41907i), _wgslsmith_div_i32(-1i, u_input.b ^ 1i)), 0i, u_input.b), u_input.b, var_0.zw);
    let var_3 = -_wgslsmith_clamp_i32(arg_0.x, i32(-1i) * -1i, 18254i);
    return Struct_2(var_2, true);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1) -> Struct_1 {
    global0 = array<u32, 7>();
    let var_0 = global1[_wgslsmith_index_u32(27764u >> (firstLeadingBit(u_input.c) % 32u), 11u)];
    let var_1 = func_1(-vec4<i32>(1i, 0i, _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(-43188i, 13580i, arg_1.d.x)), vec3<i32>(arg_0.a.a, 15363i, 2147483647i)), arg_0.a.a));
    global1 = array<Struct_3, 11>();
    var var_2 = _wgslsmith_dot_vec2_u32(~_wgslsmith_div_vec2_u32(var_0.a.yx, countOneBits(~vec2<u32>(u_input.a, u_input.c))), var_0.a.zz);
    return arg_1;
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_2) -> Struct_2 {
    var var_0 = ~(~firstTrailingBit(_wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 0u, 7849u, 58614u), vec4<u32>(4294967295u, 63224u, 49228u, 4294967295u), vec4<u32>(u_input.c, 0u, 1u, global0[_wgslsmith_index_u32(0u, 7u)])), vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 7u)], u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 7u)], 7u)], u_input.a), min(vec4<u32>(0u, global0[_wgslsmith_index_u32(0u, 7u)], u_input.a, u_input.a), vec4<u32>(u_input.a, global0[_wgslsmith_index_u32(1u, 7u)], global0[_wgslsmith_index_u32(4294967295u, 7u)], u_input.c)))));
    let var_1 = arg_2;
    global0 = array<u32, 7>();
    var var_2 = vec2<u32>(u_input.a, 1311u);
    let var_3 = arg_2;
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_3, 11>();
    var var_0 = ~_wgslsmith_mult_i32(u_input.b, select(_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.b, u_input.b, 30996i, u_input.b), ~vec4<i32>(-2147483647i, u_input.b, -42562i, u_input.b)), ~(-u_input.b), max(-55818i, u_input.b) > countOneBits(u_input.b)));
    global0 = array<u32, 7>();
    let var_1 = func_5(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1f, 1f, 1f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-417f, _wgslsmith_div_f32(-875f, 1117f), 1f))), func_4(func_1(~abs(vec4<i32>(u_input.b, u_input.b, -33360i, 9188i))), func_1(_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, u_input.b, u_input.b, u_input.b), abs(vec4<i32>(u_input.b, u_input.b, u_input.b, 1i)), ~vec4<i32>(u_input.b, -1i, u_input.b, 93775i))).a), func_1(vec4<i32>(u_input.b, -58487i, -19661i, ~1i)));
    let var_2 = ~(_wgslsmith_clamp_vec3_u32(min(vec3<u32>(16787u, u_input.a, 1u), vec3<u32>(44403u, 0u, 1u)) ^ vec3<u32>(4294967295u, u_input.c, 1188u), min(select(vec3<u32>(u_input.a, 92855u, 874u), vec3<u32>(u_input.c, u_input.c, 13986u), true), select(vec3<u32>(global0[_wgslsmith_index_u32(39582u, 7u)], 0u, u_input.c), vec3<u32>(74975u, 1u, 0u), false)), vec3<u32>(u_input.c, 1u, 57950u)) >> (vec3<u32>(_wgslsmith_add_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c, 7u)], 7u)], 7u)], 7u)], 7u)], 13398u), ~(0u << (u_input.a % 32u)), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(max(1u, 33074u), ~u_input.c), 7u)]) % vec3<u32>(32u)));
    let var_3 = !(!select(select(select(vec3<bool>(true, var_1.b, false), vec3<bool>(false, var_1.b, var_1.b), vec3<bool>(false, var_1.b, var_1.b)), !vec3<bool>(var_1.b, var_1.b, true), select(true, var_1.b, true)), vec3<bool>(any(vec3<bool>(false, var_1.b, var_1.b)), var_1.b, select(var_1.b, var_1.b, var_1.b)), var_1.b || true));
    let var_4 = _wgslsmith_div_vec4_u32(~vec4<u32>(0u, u_input.c, u_input.a, var_2.x) & ~(~vec4<u32>(u_input.c, global0[_wgslsmith_index_u32(825u, 7u)], u_input.a, 1u)), vec4<u32>(firstLeadingBit(12725u), u_input.c, _wgslsmith_div_u32(global0[_wgslsmith_index_u32(var_2.x, 7u)], u_input.c) ^ global0[_wgslsmith_index_u32(max(97823u, var_2.x), 7u)], firstTrailingBit(76160u))) | ~reverseBits(max(vec4<u32>(global0[_wgslsmith_index_u32(68251u, 7u)], 88457u, 4294967295u, var_2.x), vec4<u32>(0u, global0[_wgslsmith_index_u32(28918u, 7u)], 58057u, u_input.c)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-145f + -200f), _wgslsmith_f_op_f32(f32(-1f) * -670f), -1450f, _wgslsmith_f_op_f32(floor(796f)))))), _wgslsmith_f_op_f32(-1f), vec4<i32>(_wgslsmith_div_i32(var_1.a.b.x, _wgslsmith_sub_i32(u_input.b, 1i)), _wgslsmith_add_i32(_wgslsmith_mod_i32(abs(0i), _wgslsmith_dot_vec3_i32(var_1.a.b.zxw, vec3<i32>(var_1.a.a, var_1.a.c, 1i))), 63815i), var_1.a.d.x << (~_wgslsmith_mult_u32(4294967295u, 0u) % 32u), u_input.b));
}

