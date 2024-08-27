struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: i32,
    d: vec4<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<f32>(895f, 1514f, -504f, -1924f), true, false);

var<private> global1: array<f32, 27>;

var<private> global2: array<f32, 30> = array<f32, 30>(-281f, -478f, -1000f, 327f, 748f, 2034f, 211f, -426f, 161f, 120f, 536f, -1288f, 1688f, -882f, 306f, -1060f, -236f, -474f, 157f, -747f, 419f, -717f, 372f, -2387f, -193f, 1177f, 3474f, -1000f, -1000f, -723f);

var<private> global3: array<vec3<i32>, 22> = array<vec3<i32>, 22>(vec3<i32>(-38342i, 3041i, 1i), vec3<i32>(32267i, -1i, 2147483647i), vec3<i32>(13034i, -12609i, -31281i), vec3<i32>(-14564i, 66777i, 15449i), vec3<i32>(7358i, i32(-2147483648), -69716i), vec3<i32>(-58018i, -22136i, 5440i), vec3<i32>(-42784i, -15368i, 0i), vec3<i32>(2147483647i, 0i, 0i), vec3<i32>(0i, 0i, -56096i), vec3<i32>(2193i, 37748i, -1i), vec3<i32>(-66754i, i32(-2147483648), -17201i), vec3<i32>(-1i, 28325i, 6660i), vec3<i32>(2286i, -18298i, -54481i), vec3<i32>(27412i, 2147483647i, -34872i), vec3<i32>(19940i, 1i, 0i), vec3<i32>(2147483647i, 0i, 1i), vec3<i32>(1i, 1i, -1i), vec3<i32>(1i, 9498i, 0i), vec3<i32>(0i, 1i, -46757i), vec3<i32>(-10284i, 42199i, -29102i), vec3<i32>(0i, -1i, 12827i), vec3<i32>(14997i, -1i, i32(-2147483648)));

var<private> global4: array<Struct_1, 6>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: i32) -> f32 {
    global0 = arg_0;
    global0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.a.x))), arg_0.a.x, _wgslsmith_f_op_f32(floor(1539f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-737f)) + global1[_wgslsmith_index_u32(0u, 27u)]) - global0.a.x)), any(vec3<bool>(true, global0.b, global0.b)) && all(!select(vec4<bool>(true, true, false, arg_0.c), vec4<bool>(true, global0.b, false, global0.c), false)), !(true && global0.b));
    var var_0 = Struct_2(~u_input.b, Struct_1(_wgslsmith_f_op_vec4_f32(step(arg_0.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1817f, 152f, -605f, -266f), global0.a))))), any(vec3<bool>(all(vec3<bool>(arg_0.c, true, global0.c)), !arg_0.b, arg_0.b)), arg_0.b), global4[_wgslsmith_index_u32(~_wgslsmith_add_u32(u_input.d.x >> (u_input.d.x % 32u), 62864u >> (1u % 32u)) << (_wgslsmith_div_u32(u_input.d.x, 0u) % 32u), 6u)]);
    global1 = array<f32, 27>();
    let var_1 = vec3<bool>(false, !(!all(select(vec4<bool>(false, arg_0.c, false, true), vec4<bool>(true, true, true, var_0.b.c), vec4<bool>(false, true, var_0.b.b, false)))), false & !(!any(vec2<bool>(var_0.b.b, true))));
    return 133f;
}

fn func_2() -> bool {
    global1 = array<f32, 27>();
    var var_0 = global4[_wgslsmith_index_u32(u_input.d.x | (_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(66698u, u_input.d.x, u_input.d.x, u_input.d.x), vec4<u32>(4294967295u, u_input.d.x, 18784u, 15690u)), _wgslsmith_sub_u32(u_input.d.x, ~u_input.d.x)) << (~(~23005u) % 32u)), 6u)];
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1098f, _wgslsmith_div_f32(1811f, -1558f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0.a.x)) * _wgslsmith_f_op_f32(ceil(-425f))), 216f))), any(vec4<bool>(global0.b, -1198f <= _wgslsmith_f_op_f32(func_3(global4[_wgslsmith_index_u32(0u, 6u)], u_input.a.xx, 1i)), var_0.c, global0.c)), any(select(vec2<bool>(var_0.c, any(vec2<bool>(true, global0.c))), select(select(vec2<bool>(true, var_0.b), vec2<bool>(false, true), var_0.c), !vec2<bool>(global0.b, true), !global0.c), true)));
    let var_1 = _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(~(select(u_input.d.x, u_input.d.x, false) << (~30923u % 32u)), ~u_input.d.x), 30u)] * 725f);
    return !(!any(vec3<bool>(global0.a.x < global2[_wgslsmith_index_u32(u_input.d.x, 30u)], false, all(vec4<bool>(true, false, global0.b, var_0.b)))));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<i32>) -> u32 {
    let var_0 = vec3<u32>(~(~u_input.d.x), u_input.d.x << (u_input.d.x % 32u), 4294967295u);
    global0 = Struct_1(global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(~u_input.d.x, 30u)] * -382f)) > -299f, !func_2());
    global3 = array<vec3<i32>, 22>();
    var var_1 = Struct_2(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(u_input.a.xz, ~u_input.a.yx), _wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(u_input.c, -37356i, u_input.c))) >> (~(~u_input.d.x) % 32u), Struct_1(arg_0.a, true, !(!func_2())), Struct_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.a - vec4<f32>(-1049f, 1135f, global0.a.x, -976f)) * _wgslsmith_f_op_vec4_f32(arg_0.a * vec4<f32>(global2[_wgslsmith_index_u32(u_input.d.x, 30u)], -1250f, -739f, global1[_wgslsmith_index_u32(var_0.x, 27u)]))))), arg_0.c, !arg_0.b));
    var var_2 = max(global3[_wgslsmith_index_u32(select(_wgslsmith_div_u32(u_input.d.x, ~u_input.d.x), abs(~u_input.d.x), select(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(var_0.x, 30u)]) >= _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.d.x, 27u)]), any(!vec3<bool>(false, global0.b, false)), false)), 22u)], _wgslsmith_mod_vec3_i32(vec3<i32>(~(u_input.b & u_input.c), _wgslsmith_mult_i32(arg_1.x, 0i) ^ min(2147483647i, 0i), _wgslsmith_sub_i32(-55000i, i32(-1i) * -1i)), _wgslsmith_sub_vec3_i32(reverseBits(vec3<i32>(var_1.a, -50236i, 0i)), abs(vec3<i32>(-8836i, u_input.a.x, 38895i)) | _wgslsmith_div_vec3_i32(u_input.a, u_input.a))));
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(_wgslsmith_mod_u32(0u, ~max(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 61604u, u_input.d.x, u_input.d.x), vec4<u32>(4294967295u, 103593u, 4294967295u, u_input.d.x)), 28021u)), 4294967295u, ~_wgslsmith_add_u32(6211u, 0u), 0u << ((select(func_1(global4[_wgslsmith_index_u32(4294967295u, 6u)], u_input.a.zx), u_input.d.x | 4294967295u, false) >> (u_input.d.x % 32u)) % 32u));
    global2 = array<f32, 30>();
    global2 = array<f32, 30>();
    var var_1 = reverseBits(0i);
    let var_2 = vec4<u32>(var_0.x & var_0.x, _wgslsmith_sub_u32(~58775u, 15346u), ~var_0.x, u_input.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(50000u, global2[_wgslsmith_index_u32(abs(min(~(~6118u), 4294967295u)), 30u)], vec3<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~41779u & var_0.x, 30u)]), global1[_wgslsmith_index_u32(u_input.d.x | var_2.x, 27u)], -1462f));
}

