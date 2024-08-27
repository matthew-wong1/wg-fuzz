struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(true, vec4<i32>(2849i, 2147483647i, -46738i, 41124i), vec2<u32>(0u, 75999u), vec4<u32>(1u, 55905u, 4294967295u, 0u)), Struct_1(true, vec4<i32>(9275i, 29245i, 0i, 24591i), vec2<u32>(10015u, 12037u), vec4<u32>(4294967295u, 93747u, 4294967295u, 1u)), Struct_1(true, vec4<i32>(2147483647i, 750i, 1i, -59556i), vec2<u32>(1u, 24684u), vec4<u32>(35342u, 14753u, 1u, 4294967295u)), Struct_1(false, vec4<i32>(0i, -11799i, -36907i, 7751i), vec2<u32>(45582u, 1u), vec4<u32>(13411u, 1u, 1u, 9271u)), Struct_1(false, vec4<i32>(0i, 1i, i32(-2147483648), 2147483647i), vec2<u32>(0u, 1u), vec4<u32>(6492u, 47848u, 1u, 4294967295u)), Struct_1(true, vec4<i32>(0i, 1220i, 1i, i32(-2147483648)), vec2<u32>(1u, 4294967295u), vec4<u32>(0u, 19655u, 42604u, 0u)), Struct_1(false, vec4<i32>(14168i, i32(-2147483648), -29665i, i32(-2147483648)), vec2<u32>(41341u, 26092u), vec4<u32>(71871u, 1u, 0u, 1u)), Struct_1(true, vec4<i32>(i32(-2147483648), 1i, 1i, 9259i), vec2<u32>(71556u, 1u), vec4<u32>(4294967295u, 22593u, 48926u, 0u)), Struct_1(false, vec4<i32>(20598i, -1i, 8057i, -23472i), vec2<u32>(1u, 1u), vec4<u32>(50016u, 4294967295u, 1u, 31568u)), Struct_1(true, vec4<i32>(-5043i, -42423i, 44907i, 2147483647i), vec2<u32>(1u, 20217u), vec4<u32>(1u, 21157u, 28518u, 1u)), Struct_1(false, vec4<i32>(-23597i, 30066i, -1i, 1i), vec2<u32>(14212u, 1u), vec4<u32>(1u, 1u, 12468u, 13602u)), Struct_1(true, vec4<i32>(-1i, i32(-2147483648), 42627i, 0i), vec2<u32>(21262u, 0u), vec4<u32>(1u, 4086u, 22793u, 12697u)), Struct_1(true, vec4<i32>(4273i, 1i, 24430i, 27591i), vec2<u32>(38044u, 0u), vec4<u32>(14965u, 4294967295u, 15536u, 1u)), Struct_1(true, vec4<i32>(-48958i, -6178i, -27509i, -25680i), vec2<u32>(0u, 20366u), vec4<u32>(0u, 39755u, 0u, 62273u)));

var<private> global1: Struct_1 = Struct_1(true, vec4<i32>(-1i, -1i, -13807i, -19751i), vec2<u32>(51412u, 1u), vec4<u32>(1u, 15077u, 1u, 0u));

var<private> global2: vec3<u32>;

var<private> global3: vec4<f32> = vec4<f32>(425f, 386f, 360f, 254f);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: vec4<f32>, arg_2: Struct_1) -> vec4<f32> {
    let var_0 = -vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(select(vec4<i32>(global1.b.x, arg_2.b.x, global1.b.x, global1.b.x), arg_2.b, arg_2.a), vec4<i32>(arg_2.b.x, u_input.d, arg_2.b.x, 2935i)), ~1i), ~(-44451i), ~(~abs(-9636i)));
    global3 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(arg_1)), vec4<f32>(-510f, global3.x, global3.x, -614f))) * vec4<f32>(arg_0, -123f, _wgslsmith_div_f32(-2018f, -740f), _wgslsmith_f_op_f32(max(-903f, 650f)))))));
    global1 = Struct_1(!(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(259f, arg_0)) > _wgslsmith_div_f32(global3.x, arg_0)), -arg_2.b, _wgslsmith_mult_vec2_u32(vec2<u32>(max(min(29020u, 0u), min(global1.d.x, 25570u)), ~1207u), select(global2.xy, global2.yy, vec2<bool>(global1.a, all(vec4<bool>(arg_2.a, arg_2.a, global1.a, false))))), global1.d);
    global0 = array<Struct_1, 14>();
    global0 = array<Struct_1, 14>();
    return arg_1;
}

fn func_2() -> vec2<bool> {
    var var_0 = global3.wxx;
    global0 = array<Struct_1, 14>();
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(683f, -145f)), -1000f, -117f, -1000f) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, global3.x, global3.x, 601f), vec4<f32>(-208f, var_0.x, global3.x, -614f), vec4<bool>(false, false, global1.a, global1.a))))))) - vec4<f32>(_wgslsmith_f_op_f32(round(var_0.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-596f - var_0.x)), _wgslsmith_f_op_f32(626f + _wgslsmith_div_f32(-1682f, var_0.x)))), -154f, global3.x));
    var var_2 = global0[_wgslsmith_index_u32(0u, 14u)];
    var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, -202f, -1377f, global3.x) + vec4<f32>(global3.x, var_1.x, global3.x, global3.x))), global0[_wgslsmith_index_u32(u_input.c, 14u)])))));
    return !(!(!(!(!vec2<bool>(false, global1.a)))));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: bool, arg_3: vec3<i32>) -> vec3<bool> {
    var var_0 = global0[_wgslsmith_index_u32(42360u, 14u)];
    var var_1 = global0[_wgslsmith_index_u32(2798u, 14u)];
    var_1 = global0[_wgslsmith_index_u32(~abs(~(8610u << (_wgslsmith_add_u32(var_0.c.x, 0u) % 32u))), 14u)];
    var_1 = Struct_1(func_2().x, var_0.b, arg_0.d.wx, var_1.d);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global3.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(global3.x, global3.x))), global3.x)));
    return vec3<bool>(var_0.a, !all(vec4<bool>(!arg_2, arg_2, false, arg_1.x)), arg_0.a);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> vec3<bool> {
    let var_0 = min(4294967295u, global2.x);
    let var_1 = _wgslsmith_f_op_f32(-global3.x);
    global3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, -522f, -975f, _wgslsmith_f_op_f32(floor(-459f))));
    global0 = array<Struct_1, 14>();
    global0 = array<Struct_1, 14>();
    return !select(func_4(Struct_1(1177f < var_1, _wgslsmith_clamp_vec4_i32(arg_0.b, arg_0.b, vec4<i32>(-21477i, u_input.d, -10087i, -45812i)), firstTrailingBit(arg_1.d.xx), vec4<u32>(4294967295u, 38294u, 4294967295u, var_0) >> (vec4<u32>(44711u, u_input.c, global1.c.x, arg_0.c.x) % vec4<u32>(32u))), func_2(), any(!vec2<bool>(true, arg_1.a)), arg_1.b.zwx), !vec3<bool>(true, !arg_1.a, !arg_1.a), vec3<bool>(true, !(arg_0.a || true), !arg_0.a));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-624f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-605f * global3.x)), _wgslsmith_f_op_f32(-201f - _wgslsmith_f_op_f32(global3.x - 482f)), 899f))));
    var var_0 = -5449i;
    global2 = vec3<u32>(global1.c.x, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(global2.x, global1.d.x, u_input.c, global1.d.x)), vec4<u32>(1u, _wgslsmith_add_u32(44204u, 18527u), 4294967295u, _wgslsmith_sub_u32(u_input.c, u_input.c))), max(min(global2.x, global1.d.x), ~global2.x) >> (~(~49460u) % 32u)), global2.x);
    let var_1 = vec4<bool>(false, any(select(select(!vec3<bool>(global1.a, false, global1.a), select(vec3<bool>(true, false, false), vec3<bool>(global1.a, false, true), vec3<bool>(true, true, false)), select(vec3<bool>(global1.a, true, false), vec3<bool>(false, global1.a, false), vec3<bool>(global1.a, global1.a, global1.a))), select(select(vec3<bool>(false, true, true), vec3<bool>(global1.a, global1.a, global1.a), true), select(vec3<bool>(false, true, global1.a), vec3<bool>(false, global1.a, global1.a), false), !vec3<bool>(global1.a, false, global1.a)), func_1(Struct_1(true, vec4<i32>(0i, -2147483647i, global1.b.x, 2147483647i), global1.c, global1.d), global0[_wgslsmith_index_u32(12266u, 14u)]))), !global1.a, all(vec3<bool>(!any(vec4<bool>(false, true, false, global1.a)), global1.a, true)));
    var var_2 = global0[_wgslsmith_index_u32(abs(reverseBits(firstTrailingBit(1u))), 14u)];
    var var_3 = global3.ww;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(_wgslsmith_mult_i32(var_2.b.x, global1.b.x | countOneBits(u_input.d)), _wgslsmith_div_i32(-(var_2.b.x ^ -1i), -_wgslsmith_dot_vec4_i32(vec4<i32>(-26192i, -1i, var_2.b.x, 0i), vec4<i32>(-1i, -2541i, var_2.b.x, var_2.b.x)))));
}

