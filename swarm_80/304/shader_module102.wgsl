struct Struct_1 {
    a: u32,
    b: bool,
    c: i32,
    d: vec2<bool>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: Struct_2,
    d: u32,
}

struct Struct_4 {
    a: i32,
    b: i32,
    c: vec4<i32>,
}

struct Struct_5 {
    a: u32,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 20>;

var<private> global1: bool;

var<private> global2: vec2<i32>;

var<private> global3: array<vec4<f32>, 25>;

var<private> global4: array<vec4<bool>, 3> = array<vec4<bool>, 3>(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true));

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2() -> Struct_4 {
    global4 = array<vec4<bool>, 3>();
    return Struct_4(-1i, reverseBits(-89377i), _wgslsmith_clamp_vec4_i32(min(_wgslsmith_sub_vec4_i32(vec4<i32>(global2.x, 1i, 25206i, -2147483647i), vec4<i32>(global2.x, -44943i, global2.x, -1i)), select(vec4<i32>(-5492i, 1i, -2147483647i, 34163i), vec4<i32>(-4463i, 0i, global2.x, u_input.d), global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 20u)], 3u)])), _wgslsmith_div_vec4_i32(abs(vec4<i32>(u_input.d, u_input.d, -18090i, u_input.d)), vec4<i32>(global2.x, global2.x, global2.x, -1i)), _wgslsmith_sub_vec4_i32(firstLeadingBit(vec4<i32>(-2147483647i, u_input.e, -59621i, global2.x)), vec4<i32>(u_input.e, 1i, 2147483647i, 1i))) | (vec4<i32>(max(1i, 2147483647i), -1i, 1i, ~u_input.e) | min(~vec4<i32>(u_input.e, -18369i, -58028i, -2147483647i), vec4<i32>(-1i, global2.x, -1833i, global2.x) | vec4<i32>(-21408i, -2147483647i, u_input.d, 1i))));
}

fn func_3(arg_0: vec4<i32>) -> vec4<i32> {
    let var_0 = select(vec4<bool>(!(u_input.e == -27458i), (all(vec2<bool>(false, false)) || true) & !all(vec3<bool>(false, false, true)), false, _wgslsmith_f_op_f32(abs(-1034f)) <= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-699f + 1406f)))), global4[_wgslsmith_index_u32(u_input.b.x | 1u, 3u)], vec4<bool>(arg_0.x <= arg_0.x, false, true, true));
    global3 = array<vec4<f32>, 25>();
    let var_1 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_div_f32(-1470f, 403f), -496f), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1400f - -1144f) * _wgslsmith_f_op_f32(ceil(-1202f))), _wgslsmith_f_op_f32(-1000f * 587f))));
    var var_2 = var_1;
    global2 = ~vec2<i32>(_wgslsmith_div_i32(~0i, -(~0i)), 1i);
    return ~arg_0;
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_2) -> vec2<i32> {
    var var_0 = func_2();
    var var_1 = arg_0.zxw;
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -444f);
    var var_3 = ~func_3(arg_1.a.e);
    var var_4 = all(select(select(select(arg_0.xyy, !vec3<bool>(false, var_1.x, true), select(arg_0.xxx, vec3<bool>(false, false, false), arg_0.wwz)), vec3<bool>(arg_0.x, true, false), !var_1.x | (arg_0.x || var_1.x)), !arg_0.xyy, any(vec2<bool>(var_1.x, arg_1.a.d.x))));
    return vec2<i32>(_wgslsmith_mult_i32(var_0.a, ~1i | ~_wgslsmith_dot_vec3_i32(arg_1.d, var_0.c.wyy)), i32(-1i) * -3754i);
}

fn func_4(arg_0: Struct_5, arg_1: bool) -> Struct_2 {
    global4 = array<vec4<bool>, 3>();
    let var_0 = Struct_2(Struct_1(1u, !any(select(vec3<bool>(arg_1, true, arg_1), vec3<bool>(false, arg_1, false), arg_1)), u_input.d, vec2<bool>(!any(vec3<bool>(true, false, true)), all(vec3<bool>(true, true, true))), func_3(_wgslsmith_add_vec4_i32(func_2().c, _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.e, 56203i, -3566i, global2.x), vec4<i32>(u_input.d, -9823i, 2147483647i, global2.x))))), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_0.a, 4294967295u), 20u)], select(_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(arg_0.b, _wgslsmith_div_vec4_u32(u_input.a, vec4<u32>(global0[_wgslsmith_index_u32(71181u, 20u)], 1u, u_input.c.x, 1u))), abs(arg_0.b), countOneBits(u_input.a)), arg_0.b, false), -(~(-vec3<i32>(27346i, arg_0.c.x, -1i))));
    var var_1 = Struct_3(Struct_2(Struct_1(firstTrailingBit(u_input.a.x), true, _wgslsmith_mult_i32(firstTrailingBit(var_0.a.e.x), ~u_input.d), !vec2<bool>(true, var_0.a.d.x), var_0.a.e), ~firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.c.x, u_input.c.x, 3643u, 4294967295u), arg_0.b)), ~(~(~arg_0.b)), select(var_0.a.e.wwz, _wgslsmith_mod_vec3_i32(vec3<i32>(1i, 1i, var_0.d.x), vec3<i32>(1i, 2147483647i, 0i)), any(vec2<bool>(arg_1, var_0.a.b))) << (var_0.c.zzz % vec3<u32>(32u))), min(-abs(_wgslsmith_mult_i32(28065i, -5665i)), var_0.a.e.x), Struct_2(Struct_1(4294967295u, all(var_0.a.d), -10095i, !vec2<bool>(arg_1, true), vec4<i32>(-1182i, global2.x, -39179i, 2147483647i) ^ var_0.a.e), 19953u, firstTrailingBit(_wgslsmith_div_vec4_u32(var_0.c >> (vec4<u32>(69821u, global0[_wgslsmith_index_u32(arg_0.b.x, 20u)], 1505u, u_input.a.x) % vec4<u32>(32u)), firstTrailingBit(vec4<u32>(1u, 58063u, 48206u, u_input.a.x)))), -(~var_0.a.e.zyz)), ~(~_wgslsmith_div_u32(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0.b.x, 20u)], 20u)]) ^ ~arg_0.b.x));
    var var_2 = abs(-85921i | func_3(firstTrailingBit(var_1.c.a.e)).x);
    var var_3 = arg_0.b.x;
    return Struct_2(var_1.a.a, ~10203u, var_0.c & ~(~var_0.c | vec4<u32>(global0[_wgslsmith_index_u32(63559u, 20u)], 1u, arg_0.a, u_input.c.x)), -vec3<i32>(arg_0.c.x, ~(-2147483647i), -2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 2147483647i;
    var var_1 = ~vec3<i32>(_wgslsmith_mult_i32(-1i, 0i), _wgslsmith_sub_i32(abs(~(-1i)), abs(firstLeadingBit(1i))), var_0);
    var var_2 = func_4(Struct_5(1u, vec4<u32>(1u, ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(80825u, 20u)], 20u)], ~(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(65031u, 20u)], 20u)] >> (global0[_wgslsmith_index_u32(u_input.a.x, 20u)] % 32u)), _wgslsmith_mod_u32(firstLeadingBit(global0[_wgslsmith_index_u32(23334u, 20u)]), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 20u)] & 59399u, 20u)])), ~func_1(select(vec4<bool>(false, true, true, false), global4[_wgslsmith_index_u32(u_input.a.x, 3u)], vec4<bool>(false, true, true, false)), Struct_2(Struct_1(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 20u)], 20u)], 20u)], false, 1i, vec2<bool>(false, false), vec4<i32>(-1313i, -24611i, -1i, global2.x)), u_input.a.x, u_input.a, vec3<i32>(var_1.x, -2147483647i, var_0)))), any(vec4<bool>(true, true, true, !select(true, false, false))));
    var_2 = Struct_2(var_2.a, abs(_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 45576u, var_2.b), countOneBits(vec3<u32>(global0[_wgslsmith_index_u32(var_2.c.x, 20u)], 69663u, 4294967295u)))), vec4<u32>(_wgslsmith_mult_u32(~firstLeadingBit(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_2.a.a, 20u)], 20u)]), ~u_input.a.x), ~(~u_input.a.x), 1u, _wgslsmith_add_u32(~_wgslsmith_clamp_u32(65357u, 4294967295u, var_2.b), 22673u)), select(_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, ~var_0, 2147483647i), vec3<i32>(-1i) * -var_2.d), vec3<i32>((i32(-1i) * -1i) | (var_0 ^ var_0), -1i, ~(-var_2.a.e.x)), select(select(vec3<bool>(false, var_2.a.d.x, true), vec3<bool>(false, true, true), var_2.a.d.x), vec3<bool>(var_2.a.a != global0[_wgslsmith_index_u32(108202u, 20u)], var_2.a.d.x, !var_2.a.d.x), !select(vec3<bool>(false, false, true), vec3<bool>(false, false, var_2.a.d.x), var_2.a.b))));
    global3 = array<vec4<f32>, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(global2.x, _wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(min(min(vec3<i32>(81491i, -27741i, -18656i), vec3<i32>(var_0, var_0, -49512i)), ~vec3<i32>(var_2.d.x, global2.x, var_0)), reverseBits(vec3<i32>(9065i, var_1.x, 0i))), _wgslsmith_clamp_vec3_i32(select(~vec3<i32>(-1i, var_1.x, -84321i), vec3<i32>(-5068i, 13556i, 1i), !var_2.a.d.x), var_2.d, -vec3<i32>(-20524i, var_1.x, 0i))));
}

