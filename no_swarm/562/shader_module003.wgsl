struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 30> = array<vec3<i32>, 30>(vec3<i32>(-1i, 19932i, 2147483647i), vec3<i32>(37641i, -15481i, i32(-2147483648)), vec3<i32>(2147483647i, 6950i, -17125i), vec3<i32>(-24117i, 9761i, 2147483647i), vec3<i32>(0i, -1i, 1i), vec3<i32>(64737i, 2147483647i, -51982i), vec3<i32>(-1i, -18626i, 2147483647i), vec3<i32>(0i, i32(-2147483648), -23443i), vec3<i32>(14448i, 2018i, -11008i), vec3<i32>(-1i, -4731i, -76724i), vec3<i32>(26738i, 89598i, 43882i), vec3<i32>(i32(-2147483648), 0i, 2147483647i), vec3<i32>(0i, 1i, 0i), vec3<i32>(-1126i, 1i, 2147483647i), vec3<i32>(2147483647i, 2147483647i, 35060i), vec3<i32>(-29756i, -33461i, 1i), vec3<i32>(1i, -3753i, -23911i), vec3<i32>(18467i, 1i, 2147483647i), vec3<i32>(-11925i, -26554i, 1i), vec3<i32>(2147483647i, -36540i, 1i), vec3<i32>(50222i, 2995i, 6550i), vec3<i32>(23381i, -20209i, 1i), vec3<i32>(968i, -31150i, 32685i), vec3<i32>(-37793i, -1855i, -1i), vec3<i32>(-1i, -26016i, 9511i), vec3<i32>(0i, 39940i, -43406i), vec3<i32>(33363i, i32(-2147483648), -40762i), vec3<i32>(0i, i32(-2147483648), -13370i), vec3<i32>(-21404i, 2147483647i, -46555i), vec3<i32>(-3610i, 1i, 0i));

var<private> global1: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(227f), Struct_1(-1713f), Struct_1(-1327f), Struct_1(-831f), Struct_1(1224f), Struct_1(-232f), Struct_1(-176f), Struct_1(-842f), Struct_1(157f), Struct_1(351f), Struct_1(-1000f), Struct_1(-1216f), Struct_1(-1106f), Struct_1(-435f), Struct_1(-851f), Struct_1(1061f), Struct_1(966f), Struct_1(-1153f), Struct_1(1095f), Struct_1(1205f), Struct_1(-298f), Struct_1(-1890f), Struct_1(-629f), Struct_1(-1000f), Struct_1(1670f), Struct_1(1331f), Struct_1(374f), Struct_1(2318f), Struct_1(1045f), Struct_1(-286f));

var<private> global2: Struct_2;

var<private> global3: vec3<i32>;

var<private> global4: i32;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: bool) -> i32 {
    var var_0 = -335f;
    global2 = arg_1;
    global3 = ~vec3<i32>(firstTrailingBit(_wgslsmith_div_i32(1i, -22472i)), _wgslsmith_dot_vec3_i32(global0[_wgslsmith_index_u32(42211u, 30u)] ^ global0[_wgslsmith_index_u32(19483u, 30u)], global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.e.x, u_input.b), 30u)]), global3.x) ^ vec3<i32>(global3.x | _wgslsmith_clamp_i32(1i, 1i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, 16405i, u_input.d), global0[_wgslsmith_index_u32(1u, 30u)])), _wgslsmith_div_i32(u_input.d, -2147483647i), 24385i);
    global0 = array<vec3<i32>, 30>();
    let var_1 = arg_1.a;
    return global3.x;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec2<u32>) -> i32 {
    global4 = _wgslsmith_clamp_i32(121261i, i32(-1i) * -_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(global0[_wgslsmith_index_u32(0u, 30u)], global0[_wgslsmith_index_u32(0u, 30u)]), global3.x, reverseBits(global3.x)), _wgslsmith_mult_i32(_wgslsmith_add_i32(func_3(vec3<bool>(true, true, true), Struct_2(Struct_1(-1055f), global2.b), vec2<bool>(false, global2.b), global2.b), -2147483647i), _wgslsmith_add_i32(u_input.d, abs(u_input.a))));
    var var_0 = -2147483647i;
    return 43603i;
}

fn func_1(arg_0: i32) -> Struct_2 {
    let var_0 = _wgslsmith_mod_i32(u_input.d, -19846i ^ max(u_input.a, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-499i, -21850i, global3.x, 1i), vec4<i32>(11314i, u_input.d, arg_0, arg_0)), vec4<i32>(global3.x, 22036i, -1i, 41092i))));
    global0 = array<vec3<i32>, 30>();
    global2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(581f, -1539f))), -select(0i, ~u_input.d, select(global2.b, true, global2.b)) != -2147483647i);
    var var_1 = func_2(global3.xx, ~min(u_input.e, u_input.c.yy));
    var var_2 = u_input.e.x;
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(908f, global2.a.a))))), _wgslsmith_f_op_f32(max(441f, global2.a.a)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-481f)))));
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: vec2<bool>, arg_3: bool) -> Struct_1 {
    var var_0 = true;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.a * _wgslsmith_f_op_f32(-818f * -523f)) * arg_0.a.a);
    global2 = arg_0;
    global3 = _wgslsmith_sub_vec3_i32(global0[_wgslsmith_index_u32(4294967295u, 30u)], -vec3<i32>(u_input.d, i32(-1i) * -24247i, u_input.d) | ~(~vec3<i32>(-9906i, u_input.a, -5718i)));
    let var_2 = vec4<f32>(991f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-366f - 479f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(1f, 1815f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1337f))))) + global2.a.a), _wgslsmith_f_op_f32(arg_0.a.a * 1015f));
    return Struct_1(func_1(u_input.d).a.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_4(func_1(~(i32(-1i) * -33012i)), ~(~u_input.c.x), !select(vec2<bool>(true, false), vec2<bool>(false, true), global2.b), false), select(global2.b, select(_wgslsmith_f_op_f32(-global2.a.a) != _wgslsmith_f_op_f32(trunc(980f)), false, global2.b), false));
    let var_1 = reverseBits(vec4<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.e, ~u_input.e), firstLeadingBit(~vec2<u32>(1u, 8442u))), _wgslsmith_mult_u32(~u_input.c.x, 29894u), ~_wgslsmith_clamp_u32(max(u_input.c.x, 61647u), 47799u, _wgslsmith_mult_u32(u_input.e.x, 0u)), _wgslsmith_div_u32(0u, 18180u)));
    global1 = array<Struct_1, 30>();
    global1 = array<Struct_1, 30>();
    let var_2 = ~firstLeadingBit(~(~vec3<u32>(0u, 51052u, var_1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~max(min(-u_input.a, _wgslsmith_sub_i32(2147483647i, 19441i)), -1i), func_2(global3.xx, ~_wgslsmith_clamp_vec2_u32(~var_1.ww, ~vec2<u32>(var_1.x, 4294967295u), var_1.zx >> (vec2<u32>(4294967295u, 0u) % vec2<u32>(32u)))));
}

