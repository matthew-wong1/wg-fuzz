struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec2<i32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 8>;

var<private> global1: array<Struct_2, 24> = array<Struct_2, 24>(Struct_2(vec2<i32>(0i, 0i), Struct_1(75819u), vec2<i32>(0i, 2147483647i)), Struct_2(vec2<i32>(i32(-2147483648), -1i), Struct_1(47224u), vec2<i32>(-14121i, 2843i)), Struct_2(vec2<i32>(-41252i, 0i), Struct_1(27969u), vec2<i32>(-6025i, -35684i)), Struct_2(vec2<i32>(0i, 1i), Struct_1(84965u), vec2<i32>(-1i, 1i)), Struct_2(vec2<i32>(0i, 26140i), Struct_1(45633u), vec2<i32>(15566i, 2147483647i)), Struct_2(vec2<i32>(2147483647i, 1i), Struct_1(1u), vec2<i32>(1460i, -74347i)), Struct_2(vec2<i32>(1i, -13568i), Struct_1(30261u), vec2<i32>(-30561i, -6715i)), Struct_2(vec2<i32>(1i, 14752i), Struct_1(0u), vec2<i32>(-1i, i32(-2147483648))), Struct_2(vec2<i32>(i32(-2147483648), -43772i), Struct_1(4294967295u), vec2<i32>(-25866i, 2147483647i)), Struct_2(vec2<i32>(-2072i, i32(-2147483648)), Struct_1(5198u), vec2<i32>(1i, 1i)), Struct_2(vec2<i32>(0i, -12752i), Struct_1(0u), vec2<i32>(9390i, 2147483647i)), Struct_2(vec2<i32>(47453i, -26934i), Struct_1(4627u), vec2<i32>(2147483647i, -1i)), Struct_2(vec2<i32>(-6640i, -50598i), Struct_1(26506u), vec2<i32>(32852i, 1i)), Struct_2(vec2<i32>(-40554i, -14653i), Struct_1(0u), vec2<i32>(2147483647i, i32(-2147483648))), Struct_2(vec2<i32>(0i, i32(-2147483648)), Struct_1(0u), vec2<i32>(-1i, 1i)), Struct_2(vec2<i32>(2147483647i, 24847i), Struct_1(63899u), vec2<i32>(5433i, -1i)), Struct_2(vec2<i32>(i32(-2147483648), 27154i), Struct_1(59097u), vec2<i32>(i32(-2147483648), 1i)), Struct_2(vec2<i32>(1i, 31166i), Struct_1(0u), vec2<i32>(-20905i, 3102i)), Struct_2(vec2<i32>(1i, i32(-2147483648)), Struct_1(4294967295u), vec2<i32>(-20265i, -1i)), Struct_2(vec2<i32>(1i, -1i), Struct_1(38366u), vec2<i32>(-1i, -1i)), Struct_2(vec2<i32>(i32(-2147483648), 45260i), Struct_1(19824u), vec2<i32>(-21174i, -1i)), Struct_2(vec2<i32>(-38708i, -1i), Struct_1(45883u), vec2<i32>(31440i, -1i)), Struct_2(vec2<i32>(-38859i, -2956i), Struct_1(4294967295u), vec2<i32>(1932i, 0i)), Struct_2(vec2<i32>(15026i, i32(-2147483648)), Struct_1(4294967295u), vec2<i32>(-1i, 16401i)));

var<private> global2: array<Struct_1, 19>;

var<private> global3: Struct_2;

var<private> global4: f32 = 131f;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec2<bool>) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-648f, -1059f, _wgslsmith_div_f32(1987f, 858f)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-863f, -1103f, -695f))))), select(select(arg_0, vec3<bool>(true, true, false), true), arg_0, select(arg_0.x, arg_1.x, false))))));
    global3 = global1[_wgslsmith_index_u32(u_input.a, 24u)];
    global1 = array<Struct_2, 24>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x));
    let var_2 = select(arg_0, arg_0, false);
    return _wgslsmith_f_op_f32(-var_0.x);
}

fn func_2() -> i32 {
    global1 = array<Struct_2, 24>();
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-270f - -1201f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -543f))), _wgslsmith_f_op_f32(func_3(!vec3<bool>(global0[_wgslsmith_index_u32(1u, 8u)], global0[_wgslsmith_index_u32(1043u, 8u)], false), select(vec2<bool>(global0[_wgslsmith_index_u32(2187u, 8u)], false), vec2<bool>(true, false), vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 8u)], true))))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-712f + -844f) * _wgslsmith_div_f32(663f, -1865f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(326f, -1015f)), -1000f)))));
    var var_1 = global1[_wgslsmith_index_u32(~(0u & global3.b.a), 24u)];
    global2 = array<Struct_1, 19>();
    global4 = var_0.x;
    return 17593i;
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2, arg_3: f32) -> Struct_1 {
    let var_0 = Struct_3(vec4<i32>(arg_1.c.x, global3.c.x, _wgslsmith_sub_i32(global3.c.x, ~2147483647i), func_2()), select(vec3<bool>(any(vec3<bool>(true, true, true)), any(!vec2<bool>(global0[_wgslsmith_index_u32(arg_0.b.a, 8u)], true)), !(global0[_wgslsmith_index_u32(arg_1.b.a, 8u)] | global0[_wgslsmith_index_u32(global3.b.a, 8u)])), !(!(!vec3<bool>(true, global0[_wgslsmith_index_u32(arg_1.b.a, 8u)], global0[_wgslsmith_index_u32(0u, 8u)]))), !select(vec3<bool>(global0[_wgslsmith_index_u32(arg_0.b.a, 8u)], global0[_wgslsmith_index_u32(arg_0.b.a, 8u)], false), !vec3<bool>(global0[_wgslsmith_index_u32(66818u, 8u)], global0[_wgslsmith_index_u32(33799u, 8u)], global0[_wgslsmith_index_u32(u_input.a, 8u)]), true)));
    global3 = arg_0;
    global3 = Struct_2(_wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(countOneBits(-vec2<i32>(arg_0.c.x, global3.c.x)), arg_0.c), vec2<i32>(_wgslsmith_clamp_i32(u_input.b, arg_1.a.x, -2147483647i), var_0.a.x)), Struct_1(arg_1.b.a), arg_0.c);
    let var_1 = arg_2.b;
    global4 = arg_3;
    return Struct_1(max(~(~0u), 10290u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(global1[_wgslsmith_index_u32(select(1u, 17836u, !((global3.c.x ^ -4955i) > ~2147483647i)), 24u)], Struct_2(global3.c, Struct_1(~(0u << (u_input.a % 32u))), ~(vec2<i32>(u_input.b, u_input.b) << (_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(global3.b.a, 18674u)) % vec2<u32>(32u)))), global1[_wgslsmith_index_u32(abs(u_input.a), 24u)], -629f);
    let var_1 = 1368f;
    var var_2 = Struct_1(max(29819u, select(_wgslsmith_dot_vec4_u32(select(vec4<u32>(global3.b.a, 0u, global3.b.a, var_0.a), vec4<u32>(39980u, 1u, global3.b.a, 1u), vec4<bool>(global0[_wgslsmith_index_u32(global3.b.a, 8u)], true, false, global0[_wgslsmith_index_u32(var_0.a, 8u)])), countOneBits(vec4<u32>(global3.b.a, var_0.a, u_input.a, 55780u))), reverseBits(var_0.a), !(!global0[_wgslsmith_index_u32(0u, 8u)]))));
    var var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, var_1));
    var var_4 = ~firstTrailingBit(4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(abs(4294967295u), var_2.a) ^ max(var_2.a, var_2.a), -1052f);
}

