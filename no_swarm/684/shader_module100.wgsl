struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: Struct_1,
    d: u32,
    e: bool,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 11> = array<vec3<bool>, 11>(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true));

var<private> global1: Struct_4;

var<private> global2: array<vec3<i32>, 32> = array<vec3<i32>, 32>(vec3<i32>(-42492i, -51433i, i32(-2147483648)), vec3<i32>(2147483647i, -7038i, 3507i), vec3<i32>(22747i, -18674i, 84622i), vec3<i32>(2147483647i, 1i, 2722i), vec3<i32>(2147483647i, 75405i, -1i), vec3<i32>(1i, i32(-2147483648), 2147483647i), vec3<i32>(i32(-2147483648), 25283i, 1i), vec3<i32>(0i, -35296i, 2147483647i), vec3<i32>(0i, 1i, -25250i), vec3<i32>(0i, -56847i, -66554i), vec3<i32>(i32(-2147483648), -15048i, -6512i), vec3<i32>(-54256i, -22046i, 9783i), vec3<i32>(-1i, -51495i, -50426i), vec3<i32>(35613i, 14426i, i32(-2147483648)), vec3<i32>(0i, 27234i, 2147483647i), vec3<i32>(-5499i, 45766i, -1i), vec3<i32>(39701i, 32959i, 0i), vec3<i32>(2147483647i, 1i, i32(-2147483648)), vec3<i32>(35929i, -8102i, 0i), vec3<i32>(0i, 2147483647i, -21836i), vec3<i32>(-42326i, 23021i, -33777i), vec3<i32>(i32(-2147483648), 12354i, 2147483647i), vec3<i32>(-5874i, 2147483647i, -27086i), vec3<i32>(0i, -1i, 24717i), vec3<i32>(i32(-2147483648), -16439i, i32(-2147483648)), vec3<i32>(12985i, 23566i, -748i), vec3<i32>(-24265i, 49287i, -1i), vec3<i32>(-41387i, 2147483647i, 0i), vec3<i32>(46484i, -33265i, 1i), vec3<i32>(4774i, 26036i, 15515i), vec3<i32>(30061i, 1i, -1i), vec3<i32>(-24754i, -1i, 23871i));

var<private> global3: array<f32, 18>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_4, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: i32) -> i32 {
    global0 = array<vec3<bool>, 11>();
    global2 = array<vec3<i32>, 32>();
    var var_0 = arg_0;
    global0 = array<vec3<bool>, 11>();
    global3 = array<f32, 18>();
    return -arg_0.a;
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<i32>) -> vec2<i32> {
    global3 = array<f32, 18>();
    global1 = Struct_4(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, u_input.a, -2147483647i), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_0.x, 97174u), 32u)]), vec3<i32>(u_input.b.x, func_3(Struct_4(global1.a), Struct_2(Struct_1(true, arg_0.x), Struct_1(false, arg_0.x), u_input.b), vec4<f32>(global3[_wgslsmith_index_u32(1u, 18u)], 1038f, global3[_wgslsmith_index_u32(1u, 18u)], -1176f), u_input.b.x), firstTrailingBit(arg_1.x))) << (0u % 32u));
    let var_0 = any(!vec2<bool>(!(1842f < global3[_wgslsmith_index_u32(0u, 18u)]), true));
    global1 = Struct_4(func_3(Struct_4(global1.a), Struct_2(Struct_1(true, abs(70726u)), Struct_1(true, arg_0.x), u_input.b), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(2184f, 445f, global3[_wgslsmith_index_u32(arg_0.x, 18u)], -592f) - vec4<f32>(global3[_wgslsmith_index_u32(arg_0.x, 18u)], global3[_wgslsmith_index_u32(arg_0.x, 18u)], global3[_wgslsmith_index_u32(9124u, 18u)], global3[_wgslsmith_index_u32(arg_0.x, 18u)]))) - vec4<f32>(-705f, -430f, _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(13818u, 18u)] * -1456f), _wgslsmith_f_op_f32(exp2(global3[_wgslsmith_index_u32(arg_0.x, 18u)])))), i32(-1i) * -global1.a));
    global1 = Struct_4(~arg_1.x);
    return ~arg_1;
}

fn func_1(arg_0: Struct_5) -> u32 {
    var var_0 = global3[_wgslsmith_index_u32(13852u, 18u)];
    var var_1 = vec2<bool>(arg_0.a.e, arg_0.a.c.a);
    let var_2 = select(vec2<i32>(global1.a, -2147483647i), func_2(_wgslsmith_clamp_vec2_u32(~(vec2<u32>(16950u, arg_0.a.d) | vec2<u32>(arg_0.a.a, arg_0.a.a)), ~_wgslsmith_mult_vec2_u32(vec2<u32>(arg_0.a.a, 0u), vec2<u32>(arg_0.a.d, arg_0.a.d)), vec2<u32>(_wgslsmith_add_u32(0u, 4294967295u), ~64613u)), -u_input.b), select(false, true, !select(false, false, true) | arg_0.a.c.a));
    global0 = array<vec3<bool>, 11>();
    let var_3 = Struct_1(true, 4294967295u);
    return select(min(~abs(arg_0.a.c.b), (1u ^ arg_0.a.c.b) & arg_0.a.a), arg_0.a.c.b, all(vec2<bool>(true, arg_0.a.b))) & arg_0.a.d;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3) -> Struct_3 {
    var var_0 = countOneBits(75685u);
    let var_1 = Struct_5(Struct_3(~arg_0.a.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-690f * global3[_wgslsmith_index_u32(arg_1.a, 18u)])) >= 412f, Struct_1(arg_0.a.a, 1u), 85852u, arg_0.a.a));
    var var_2 = -1i;
    let var_3 = false;
    var_0 = reverseBits(abs(_wgslsmith_dot_vec2_u32(~vec2<u32>(arg_1.c.b, 90995u), max(vec2<u32>(0u, arg_1.d), ~vec2<u32>(arg_1.d, arg_1.a)))));
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~abs(1u), 1u, ~1u), 18u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-336f, 426f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(45076u, 18u)])) + -504f)));
    var var_1 = Struct_5(func_4(Struct_2(Struct_1(true, func_1(Struct_5(Struct_3(0u, false, Struct_1(true, 22213u), 0u, true)))), Struct_1(true, _wgslsmith_sub_u32(0u, 0u)), u_input.b), Struct_3(1u >> (1u % 32u), true, Struct_1(all(vec3<bool>(true, false, false)), ~3981u), 22664u, true)));
    let var_2 = ~vec2<i32>(_wgslsmith_add_i32(_wgslsmith_clamp_i32(global1.a, 0i, 0i), 1i) | -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, global1.a, u_input.a), vec3<i32>(2147483647i, u_input.b.x, -3904i)), abs(-1i));
    let var_3 = !(!(!select(select(vec4<bool>(var_1.a.c.a, false, false, var_1.a.b), vec4<bool>(var_1.a.e, true, true, false), vec4<bool>(var_1.a.b, true, false, false)), vec4<bool>(true, var_1.a.b, true, true), var_1.a.b)));
    global3 = array<f32, 18>();
    let var_4 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(~var_1.a.a, ~(~var_1.a.a)), 32u)];
    global0 = array<vec3<bool>, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_div_u32(~var_1.a.c.b, max(15406u, var_1.a.d))), ~vec4<u32>(_wgslsmith_sub_u32(4294967295u, 1u << (var_1.a.a % 32u)), var_1.a.c.b, var_1.a.c.b, 4294967295u));
}

