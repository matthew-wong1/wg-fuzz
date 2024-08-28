struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec2<f32>,
    d: vec4<u32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: f32,
    c: u32,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_3,
    c: Struct_1,
    d: f32,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 15> = array<vec4<u32>, 15>(vec4<u32>(0u, 5055u, 4294967295u, 0u), vec4<u32>(50086u, 46280u, 41741u, 4294967295u), vec4<u32>(0u, 0u, 1u, 89065u), vec4<u32>(3515u, 43432u, 21594u, 41176u), vec4<u32>(35643u, 11058u, 3238u, 0u), vec4<u32>(67204u, 0u, 21350u, 1u), vec4<u32>(8411u, 104264u, 1u, 58431u), vec4<u32>(4294967295u, 14975u, 31335u, 0u), vec4<u32>(29768u, 102539u, 825u, 24864u), vec4<u32>(35891u, 4294967295u, 60368u, 33968u), vec4<u32>(1u, 4294967295u, 68291u, 9293u), vec4<u32>(0u, 46669u, 53869u, 1u), vec4<u32>(4294967295u, 83925u, 4294967295u, 47528u), vec4<u32>(1u, 1u, 15418u, 56531u), vec4<u32>(68719u, 0u, 1898u, 83271u));

var<private> global1: array<bool, 1>;

var<private> global2: Struct_1 = Struct_1(vec3<u32>(35707u, 50132u, 23041u));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> u32 {
    global0 = array<vec4<u32>, 15>();
    global1 = array<bool, 1>();
    global1 = array<bool, 1>();
    let var_0 = Struct_1(~vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.a, global2.a.x), ~1u), _wgslsmith_clamp_u32(global2.a.x, u_input.c, 1u), ~(~u_input.c)));
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 551f, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-751f - 134f), -1366f))), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(floor(762f)))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-602f, 1016f, 664f, -249f))))))));
    return ~var_0.a.x;
}

fn func_2(arg_0: vec2<bool>, arg_1: f32, arg_2: i32, arg_3: f32) -> f32 {
    global2 = Struct_1(global2.a);
    let var_0 = vec3<bool>(false, global1[_wgslsmith_index_u32(~u_input.c, 1u)], true);
    global0 = array<vec4<u32>, 15>();
    let var_1 = _wgslsmith_mod_vec4_u32((vec4<u32>(func_3(), _wgslsmith_div_u32(4294967295u, u_input.a), 24379u, _wgslsmith_sub_u32(global2.a.x, u_input.c)) ^ global0[_wgslsmith_index_u32(select(global2.a.x, _wgslsmith_mod_u32(19814u, u_input.c), all(var_0.yz)), 15u)]) << (abs(~(vec4<u32>(0u, 0u, 4294967295u, u_input.a) ^ global0[_wgslsmith_index_u32(global2.a.x, 15u)])) % vec4<u32>(32u)), ~firstTrailingBit(global0[_wgslsmith_index_u32(countOneBits(~u_input.a), 15u)]));
    var var_2 = _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_add_i32(1i, i32(-1i) * -3544i), min(countOneBits(u_input.d), 1i)), vec2<i32>(_wgslsmith_sub_i32(u_input.d, -2147483647i), -(~_wgslsmith_mult_i32(arg_2, u_input.b.x))));
    return 602f;
}

fn func_1() -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(100f, -1627f, -1663f, 933f)), vec4<f32>(101f, -1000f, -537f, -733f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(304f, -303f, 640f, 806f) * vec4<f32>(717f, -459f, 719f, -1000f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(731f, 778f, 1035f, -1000f) * vec4<f32>(-354f, 202f, 318f, -477f)))))), vec4<f32>(_wgslsmith_f_op_f32(func_2(!vec2<bool>(false, global1[_wgslsmith_index_u32(global2.a.x, 1u)]), -816f, -u_input.b.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1089f + -951f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-465f, -236f), _wgslsmith_f_op_f32(3065f + -1386f)))), -1125f, _wgslsmith_f_op_f32(step(1487f, 256f))), vec4<bool>(global1[_wgslsmith_index_u32((42443u & global2.a.x) << (abs(~u_input.a) % 32u), 1u)], true, all(select(select(vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.a, 1u)], false, true), vec4<bool>(global1[_wgslsmith_index_u32(0u, 1u)], global1[_wgslsmith_index_u32(u_input.a, 1u)], false, false), global1[_wgslsmith_index_u32(40484u, 1u)]), vec4<bool>(false, global1[_wgslsmith_index_u32(global2.a.x, 1u)], true, false), select(vec4<bool>(global1[_wgslsmith_index_u32(87165u, 1u)], true, false, global1[_wgslsmith_index_u32(global2.a.x, 1u)]), vec4<bool>(false, false, global1[_wgslsmith_index_u32(global2.a.x, 1u)], false), global1[_wgslsmith_index_u32(u_input.c, 1u)]))), global1[_wgslsmith_index_u32(func_3(), 1u)])));
    var var_1 = u_input.b.zz;
    var var_2 = reverseBits(select(u_input.a, ~u_input.c, all(select(vec4<bool>(false, false, false, global1[_wgslsmith_index_u32(802u, 1u)]), vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.a, 1u)], global1[_wgslsmith_index_u32(1u, 1u)], false), vec4<bool>(global1[_wgslsmith_index_u32(0u, 1u)], global1[_wgslsmith_index_u32(18769u, 1u)], true, global1[_wgslsmith_index_u32(u_input.a, 1u)]))) | false));
    let var_3 = 61868u;
    let var_4 = ~global2.a;
    return _wgslsmith_dot_vec4_u32(vec4<u32>(~global2.a.x, 43761u, max(_wgslsmith_sub_u32(var_3, var_4.x), reverseBits(0u)) | ~(~global2.a.x), u_input.c), ~vec4<u32>(global2.a.x & ~0u, select(global2.a.x, var_3, global1[_wgslsmith_index_u32(firstTrailingBit(1u), 1u)]), 66595u, ~(~var_4.x)));
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: Struct_3) -> Struct_3 {
    global1 = array<bool, 1>();
    var var_0 = reverseBits(arg_2.b.a.a.x);
    global1 = array<bool, 1>();
    global2 = Struct_1(select(global2.a, max(~min(vec3<u32>(u_input.a, 6368u, u_input.a), arg_2.b.d.wzx), ~vec3<u32>(31282u, arg_0, 3292u)), vec3<bool>(global1[_wgslsmith_index_u32(global2.a.x, 1u)], all(!vec4<bool>(arg_2.a, arg_2.c.b, arg_2.c.b, false)), (101882u << (global2.a.x % 32u)) <= (arg_0 | 1u))));
    let var_1 = reverseBits(-1i);
    return Struct_3(true, Struct_2(Struct_1(abs(vec3<u32>(42415u, u_input.c, 1u)) ^ ~arg_2.b.a.a), all(!select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, arg_2.a))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(arg_2.c.c + arg_2.b.c)))), arg_2.b.d), arg_2.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(~func_1(), ~_wgslsmith_sub_i32(u_input.d, u_input.d), Struct_3(select((global1[_wgslsmith_index_u32(u_input.c, 1u)] | true) == true, select(!global1[_wgslsmith_index_u32(1u, 1u)], global1[_wgslsmith_index_u32(func_3(), 1u)], true), all(!vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 1u)], global1[_wgslsmith_index_u32(42734u, 1u)]))), Struct_2(Struct_1(global2.a), global1[_wgslsmith_index_u32(~(~u_input.c), 1u)], _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(895f, 1000f), vec2<f32>(732f, -1512f), vec2<bool>(false, global1[_wgslsmith_index_u32(48469u, 1u)]))))), global0[_wgslsmith_index_u32(countOneBits(global2.a.x), 15u)] & abs(global0[_wgslsmith_index_u32(59373u, 15u)])), Struct_2(Struct_1(abs(vec3<u32>(global2.a.x, u_input.c, 64098u))), true, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1319f, 2348f)), vec4<u32>(~10982u, ~24792u, ~23044u, 0u & global2.a.x))));
    var var_1 = min(-(~(-vec4<i32>(-1i, u_input.d, -30799i, u_input.d) | reverseBits(vec4<i32>(-18973i, -20686i, -70083i, 46285i)))), (vec4<i32>(abs(-10810i), u_input.d << (global2.a.x % 32u), -40244i, -u_input.b.x) & (_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d, -1i, 2147483647i, u_input.b.x), vec4<i32>(-73132i, 36607i, u_input.b.x, u_input.b.x)) << (vec4<u32>(1u, global2.a.x, global2.a.x, u_input.c) % vec4<u32>(32u)))) ^ ((-vec4<i32>(-1i, u_input.b.x, u_input.d, u_input.b.x) & vec4<i32>(-43914i, -2147483647i, u_input.d, 2147483647i)) | ~vec4<i32>(u_input.b.x, -31259i, 43371i, 1i)));
    var var_2 = Struct_4(_wgslsmith_f_op_f32(-var_0.b.c.x), _wgslsmith_div_f32(2063f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-2587f + var_0.c.c.x)))))), ~(~1u));
    global1 = array<bool, 1>();
    global1 = array<bool, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-var_0.b.c));
}

