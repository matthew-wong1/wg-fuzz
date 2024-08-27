struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: vec4<u32>,
    d: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<i32>,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 7>;

var<private> global1: u32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> bool {
    var var_0 = ~vec3<i32>(_wgslsmith_add_i32(0i, _wgslsmith_mult_i32(10105i, -23780i) << (~u_input.a.x % 32u)), _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(308i, 63420i, 2775i), vec3<i32>(2147483647i, 15096i, -2147483647i)), 2147483647i, 1i), vec3<i32>(-1i, select(-2147483647i, -2147483647i, true), ~10411i)), 24281i);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-624f, -1343f, -889f, -1737f) + _wgslsmith_div_vec4_f32(vec4<f32>(500f, -291f, 485f, -702f), vec4<f32>(1368f, -833f, -2093f, 2101f))))))));
    var var_2 = Struct_1(any(select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec2<bool>(true, true)), true, true, true), true)), select(vec3<u32>(~_wgslsmith_dot_vec3_u32(u_input.a.yyy, u_input.a.wwz), ~0u, u_input.b.x), select(_wgslsmith_mult_vec3_u32(vec3<u32>(75570u, u_input.b.x, 8478u), ~vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x)), countOneBits(vec3<u32>(51123u, u_input.a.x, u_input.a.x)), vec3<bool>(true, true, true)), select(!select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), var_0.x <= -1i))), vec4<u32>(u_input.b.x, ~_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, 94055u, u_input.a.x, 65874u)), _wgslsmith_dot_vec2_u32(u_input.a.yx, vec2<u32>(27608u, u_input.b.x))), 0u, countOneBits(~4800u)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-1196f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1208f)) * _wgslsmith_f_op_f32(trunc(var_1.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1569f + var_1.x))))))));
    let var_3 = reverseBits(_wgslsmith_div_vec4_u32(~var_2.c, u_input.a));
    let var_4 = Struct_1(true, vec3<u32>(~var_3.x, ~abs(var_2.b.x), var_2.b.x), u_input.a, -200f);
    return false;
}

fn func_2(arg_0: bool) -> vec4<bool> {
    var var_0 = Struct_2(-vec4<i32>(37831i, abs(_wgslsmith_add_i32(-41055i, 11335i)), select(countOneBits(0i), ~44627i, arg_0), -8722i), _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-17029i, 696i, -1i, -37431i), vec4<i32>(5747i, 2147483647i, 0i, -66821i) << (vec4<u32>(u_input.a.x, u_input.a.x, 7390u, u_input.a.x) % vec4<u32>(32u))), vec4<i32>(~(-18662i), ~1i, -1i, countOneBits(-20931i))) | _wgslsmith_sub_vec4_i32(vec4<i32>(1i, select(-52893i, 2147483647i, arg_0), _wgslsmith_mod_i32(1i, -72226i), _wgslsmith_dot_vec3_i32(vec3<i32>(0i, -59497i, -1909i), vec3<i32>(2147483647i, 32084i, 1i))), abs(select(vec4<i32>(-3399i, -25615i, 0i, -2147483647i), vec4<i32>(-1399i, 1i, -87448i, 2147483647i), arg_0))), _wgslsmith_f_op_f32(-1000f * 1f), Struct_1(arg_0, select(u_input.a.zww << (vec3<u32>(4294967295u, u_input.b.x, u_input.a.x) % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(u_input.a.zyw, u_input.a.xyz), vec3<bool>(!arg_0, true, false && arg_0)), ~(~(~u_input.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -783f))));
    let var_1 = func_3();
    let var_2 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(942f, var_0.d.d, -684f, var_0.d.d)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(264f, var_0.d.d, -882f, var_0.c), vec4<f32>(var_0.c, 777f, -298f, var_0.d.d)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c, 824f, var_0.c, 682f) - vec4<f32>(var_0.d.d, var_0.d.d, 875f, var_0.c))), !arg_0)))));
    let var_3 = ~0u;
    return select(select(select(select(!vec4<bool>(var_0.d.a, arg_0, arg_0, var_1), vec4<bool>(var_1, false, true, true), !vec4<bool>(var_0.d.a, var_0.d.a, var_1, false)), !select(vec4<bool>(var_0.d.a, false, true, false), vec4<bool>(false, true, false, var_1), true), arg_0), vec4<bool>(arg_0, false, true, true), select(vec4<bool>(var_0.b.x == -2147483647i, select(arg_0, arg_0, arg_0), func_3(), true), vec4<bool>(any(vec4<bool>(var_0.d.a, var_0.d.a, false, true)), arg_0, !arg_0, var_1), any(vec2<bool>(arg_0, true)))), vec4<bool>(true, !(!arg_0), arg_0, all(vec4<bool>(var_2.x < 762f, true, false && arg_0, false && var_0.d.a))), any(select(vec2<bool>(var_2.x > var_0.d.d, true), select(select(vec2<bool>(false, var_0.d.a), vec2<bool>(arg_0, var_0.d.a), vec2<bool>(var_0.d.a, var_1)), vec2<bool>(arg_0, arg_0), !var_0.d.a), !select(vec2<bool>(true, true), vec2<bool>(var_1, false), var_0.d.a))));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: bool) -> vec4<bool> {
    var var_0 = (-(i32(-1i) * -33398i) | (arg_1.x >> (u_input.b.x % 32u))) | 1i;
    var var_1 = vec3<bool>(arg_2, (false & !arg_0.a) || true, !(!any(select(vec3<bool>(false, arg_2, true), vec3<bool>(arg_0.a, arg_0.a, false), vec3<bool>(arg_2, false, arg_2)))));
    var_0 = i32(-1i) * -max(countOneBits(firstTrailingBit(arg_1.x)), -(29661i ^ arg_1.x));
    var_1 = select(select(select(select(!vec3<bool>(var_1.x, false, arg_0.a), !vec3<bool>(arg_0.a, true, var_1.x), select(vec3<bool>(arg_0.a, var_1.x, false), vec3<bool>(var_1.x, var_1.x, arg_0.a), vec3<bool>(false, arg_0.a, true))), !vec3<bool>(false, arg_2, false), select(select(vec3<bool>(false, arg_0.a, arg_0.a), vec3<bool>(var_1.x, var_1.x, false), vec3<bool>(var_1.x, false, arg_0.a)), select(vec3<bool>(true, true, true), vec3<bool>(true, var_1.x, true), vec3<bool>(false, var_1.x, true)), arg_1.x < 1i)), !select(select(vec3<bool>(false, var_1.x, arg_0.a), vec3<bool>(arg_2, false, arg_0.a), false), !vec3<bool>(var_1.x, var_1.x, true), select(vec3<bool>(arg_2, true, false), vec3<bool>(true, arg_0.a, false), vec3<bool>(arg_0.a, arg_0.a, var_1.x))), any(!(!vec3<bool>(arg_2, false, arg_2)))), vec3<bool>(true, false, true), select(vec3<bool>(true, true, false), !vec3<bool>(false, arg_0.a != arg_0.a, var_1.x), arg_1.x != -1i));
    global1 = u_input.a.x;
    return select(!(!select(vec4<bool>(true, true, true, true), func_2(arg_2), !arg_0.a)), func_2(reverseBits(1u) != _wgslsmith_clamp_u32(_wgslsmith_mod_u32(44014u, arg_0.b.x), u_input.b.x, 1u)), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    var var_1 = 66754u;
    let var_2 = !select(all(vec2<bool>(true, true)) | all(func_1(Struct_1(true, vec3<u32>(u_input.b.x, u_input.b.x, 0u), vec4<u32>(4294967295u, 0u, 0u, 4294967295u), 1000f), vec3<i32>(-1i, 2147483647i, 22014i), true)), true, true);
    global1 = _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(~u_input.a, u_input.a), max(vec4<u32>(_wgslsmith_mod_u32(79523u, ~u_input.a.x), ~_wgslsmith_dot_vec2_u32(global0[_wgslsmith_index_u32(4294967295u, 7u)], vec2<u32>(48073u, u_input.b.x)), u_input.b.x, u_input.b.x), vec4<u32>(41838u, u_input.a.x, countOneBits(4294967295u), max(_wgslsmith_clamp_u32(4294967295u, 4294967295u, 9229u), abs(u_input.b.x)))));
    var var_3 = Struct_1(true & var_2, vec3<u32>(57903u, 1u, ~(~(~0u))), vec4<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 4294967295u), vec2<u32>(u_input.b.x, u_input.b.x)), reverseBits(~u_input.b.x & ~u_input.b.x), 1u, u_input.a.x), -2534f);
    let var_4 = _wgslsmith_f_op_f32(-var_3.d);
    var var_5 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -627f) * _wgslsmith_f_op_f32(step(-233f, var_3.d))), _wgslsmith_f_op_f32(sign(1919f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -571f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_4))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-921f * 1001f))))));
    var_5 = _wgslsmith_div_f32(-1087f, -724f);
    global0 = array<vec2<u32>, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(var_3.d, _wgslsmith_f_op_f32(f32(-1f) * -1631f), firstLeadingBit(countOneBits(~var_3.b.x)) ^ _wgslsmith_dot_vec4_u32(max(vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.a.x), vec4<u32>(46052u, var_3.b.x, var_3.b.x, var_3.c.x)), (var_3.c >> (vec4<u32>(var_3.c.x, var_3.b.x, 10096u, var_3.b.x) % vec4<u32>(32u))) | (vec4<u32>(u_input.a.x, var_3.b.x, u_input.a.x, 127338u) & vec4<u32>(0u, var_3.b.x, var_3.c.x, 11395u))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(var_4)))), -1323f, all(vec2<bool>(true, !var_3.a)))));
}

