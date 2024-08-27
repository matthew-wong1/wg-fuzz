struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: f32,
    c: vec4<f32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec4<i32>,
    d: vec4<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, true, true);

var<private> global1: vec3<f32>;

var<private> global2: vec3<f32> = vec3<f32>(346f, -1000f, -2102f);

var<private> global3: array<vec4<f32>, 16> = array<vec4<f32>, 16>(vec4<f32>(-360f, 1263f, 182f, -599f), vec4<f32>(-1000f, -1221f, -1000f, -262f), vec4<f32>(-1244f, 413f, -1000f, -920f), vec4<f32>(266f, -1000f, 321f, 411f), vec4<f32>(1609f, 990f, -458f, -1572f), vec4<f32>(-690f, 845f, 448f, 1010f), vec4<f32>(-2983f, -487f, 1570f, -1534f), vec4<f32>(-1779f, -1000f, -579f, 1887f), vec4<f32>(-1000f, -672f, -1000f, -134f), vec4<f32>(1199f, 655f, -580f, -341f), vec4<f32>(116f, 427f, -1555f, -984f), vec4<f32>(-412f, 457f, 167f, 374f), vec4<f32>(-228f, -271f, -341f, 2222f), vec4<f32>(939f, 490f, 546f, -966f), vec4<f32>(-576f, -1000f, -1245f, 657f), vec4<f32>(743f, 711f, -874f, 773f));

var<private> global4: i32;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: vec2<bool>) -> vec2<bool> {
    var var_0 = Struct_3(global2.x, Struct_1(0i, vec3<i32>(arg_0, countOneBits(0i), arg_0), arg_1 << (~_wgslsmith_mult_u32(u_input.a.x, arg_1) % 32u), global2.x));
    global3 = array<vec4<f32>, 16>();
    let var_1 = select(vec3<bool>(!arg_2.x, ~(u_input.a.x >> (arg_1 % 32u)) <= arg_1, true | global0.x), vec3<bool>(true, arg_0 < select(-2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, -2147483647i), u_input.b.wz), any(vec3<bool>(false, false, global0.x))), true), vec3<bool>(true, true, !all(select(vec2<bool>(false, global0.x), vec2<bool>(global0.x, arg_2.x), false))));
    global1 = vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global1.x)) * global1.x) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global2.x)))), global1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x * global2.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.a, var_0.a)) * -2900f));
    var_0 = Struct_3(global2.x, Struct_1(arg_0, -select(vec3<i32>(var_0.b.a, arg_0, -47658i), u_input.b.zzz, select(var_1, vec3<bool>(false, var_1.x, false), false)), ~_wgslsmith_clamp_u32(arg_1, 30520u, 0u), _wgslsmith_f_op_f32(abs(783f))));
    return vec2<bool>(var_1.x, false);
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: Struct_2) -> vec2<bool> {
    global3 = array<vec4<f32>, 16>();
    let var_0 = Struct_2(vec2<bool>(all(vec2<bool>(!arg_0.x, true)), all(!select(vec2<bool>(global0.x, global0.x), arg_0.xx, vec2<bool>(true, arg_3.a.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(324f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x * 1371f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.d + arg_3.c.x) + 1707f))), global3[_wgslsmith_index_u32(~61071u, 16u)]);
    let var_1 = Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -17354i, -2147483647i), _wgslsmith_div_vec3_i32(select(_wgslsmith_mod_vec3_i32(arg_1.b, arg_1.b), arg_1.b, arg_0), _wgslsmith_div_vec3_i32(~u_input.b.xwz, countOneBits(arg_1.b)))), -vec3<i32>(abs(-u_input.b.x), ~_wgslsmith_add_i32(u_input.b.x, -24881i), -2147483647i), ~_wgslsmith_sub_u32(_wgslsmith_clamp_u32(u_input.a.x, reverseBits(u_input.a.x), 31782u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, 1u, u_input.a.x), _wgslsmith_mod_vec4_u32(vec4<u32>(46702u, 1u, arg_1.c, arg_1.c), vec4<u32>(arg_1.c, 4294967295u, 4294967295u, arg_1.c)))), 674f);
    global1 = _wgslsmith_f_op_vec3_f32(-var_0.c.ywy);
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(arg_3.c.yww)));
    return vec2<bool>(var_0.a.x, !arg_3.a.x);
}

fn func_2(arg_0: vec2<f32>, arg_1: f32) -> vec3<u32> {
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, -825f, arg_1)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, arg_1, global1.x))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.x, -489f, 344f), vec3<f32>(arg_1, arg_0.x, arg_0.x), vec3<bool>(true, true, global0.x))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-461f, _wgslsmith_div_f32(global1.x, -1581f), _wgslsmith_f_op_f32(round(global2.x))))));
    var var_0 = max(vec4<i32>(29048i, 9236i, ~firstLeadingBit(u_input.b.x << (0u % 32u)), u_input.b.x), select(select(vec4<i32>(max(0i, u_input.b.x), ~u_input.b.x, i32(-1i) * -3474i, u_input.b.x), firstLeadingBit(u_input.b) ^ (u_input.b | vec4<i32>(21376i, 27227i, u_input.b.x, 11152i)), !vec4<bool>(global0.x, global0.x, false, global0.x)), u_input.b, true));
    global4 = _wgslsmith_div_i32(-37578i, u_input.b.x);
    let var_1 = global0.yy;
    var var_2 = Struct_2(func_4(vec3<bool>(false, var_1.x && global0.x, countOneBits(0u) != ~u_input.a.x), Struct_1(countOneBits(13931i) << (min(0u, u_input.a.x) % 32u), _wgslsmith_add_vec3_i32(u_input.b.xxz, -vec3<i32>(-2147483647i, 11158i, u_input.b.x)), ~27996u, -1227f), vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(global1.x)), _wgslsmith_f_op_f32(396f + global1.x))), global1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.x * 3091f), 1151f)), Struct_2(func_3(abs(var_0.x), u_input.a.x, global0.yy), global1.x, vec4<f32>(_wgslsmith_f_op_f32(arg_0.x + global1.x), _wgslsmith_f_op_f32(arg_1 * global2.x), _wgslsmith_f_op_f32(round(1000f)), arg_0.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(-global2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.x, _wgslsmith_f_op_f32(floor(1133f))))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -421f), 166f, 1068f, -1000f))))));
    return ~select(reverseBits(~(vec3<u32>(u_input.a.x, 20326u, 4294967295u) >> (vec3<u32>(u_input.a.x, 1u, u_input.a.x) % vec3<u32>(32u)))), ~reverseBits(u_input.a.wyy), var_2.b >= 642f);
}

fn func_1(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: Struct_3) -> bool {
    let var_0 = arg_0.b;
    let var_1 = arg_0.c.x;
    let var_2 = select(vec3<u32>(1u, (u_input.a.x & 1u) >> (abs(95078u) % 32u), u_input.a.x) ^ _wgslsmith_sub_vec3_u32(func_2(global1.yy, 206f) | max(u_input.a.zzx, u_input.a.xzz), ~u_input.a.xwy), ~u_input.a.wzy << (~u_input.a.zxw % vec3<u32>(32u)), select(!select(select(vec3<bool>(arg_0.a.x, false, true), vec3<bool>(false, global0.x, global0.x), vec3<bool>(false, global0.x, arg_0.a.x)), select(vec3<bool>(arg_0.a.x, global0.x, true), vec3<bool>(arg_0.a.x, false, arg_0.a.x), vec3<bool>(true, true, arg_0.a.x)), !vec3<bool>(false, false, arg_0.a.x)), vec3<bool>(true, true, true), !(!(!vec3<bool>(arg_0.a.x, global0.x, arg_0.a.x)))));
    var var_3 = arg_2.b;
    global2 = _wgslsmith_f_op_vec3_f32(round(arg_0.c.yzw));
    return global0.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 8151u;
    global2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global2.x, -661f, global1.x)))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global2.x, 1446f, global2.x), vec3<f32>(-1000f, global2.x, 767f)))) - vec3<f32>(-1449f, _wgslsmith_f_op_f32(global2.x * global1.x), _wgslsmith_f_op_f32(-462f + 1100f)))) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, -1167f, 920f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(739f, -1000f, global1.x))), vec3<f32>(-972f, _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(floor(1280f))), vec3<bool>(true, func_1(Struct_2(global0.yx, global1.x, vec4<f32>(global1.x, 174f, 954f, global2.x)), vec4<i32>(u_input.b.x, -2448i, u_input.b.x, 0i), Struct_3(global2.x, Struct_1(u_input.b.x, vec3<i32>(u_input.b.x, -37810i, -31623i), u_input.a.x, 1536f))), false))))));
    let var_1 = Struct_2(vec2<bool>(any(vec2<bool>(false, global0.x)) && ((u_input.b.x > u_input.b.x) == select(global0.x, global0.x, true)), true), 321f, vec4<f32>(global1.x, -272f, _wgslsmith_f_op_f32(f32(-1f) * -886f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-196f)) + global1.x) * global1.x)));
    var var_2 = firstLeadingBit(firstLeadingBit(_wgslsmith_div_vec4_i32(vec4<i32>(-1i) * -u_input.b, min(u_input.b, vec4<i32>(27608i, u_input.b.x, u_input.b.x, u_input.b.x)))));
    var var_3 = var_1.c;
    global0 = vec3<bool>(false != any(vec3<bool>(true, true, true)), (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-533f - -134f)) <= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global2.x - global2.x), _wgslsmith_f_op_f32(843f - -262f)))) & global0.x, true);
    let var_4 = Struct_3(_wgslsmith_div_f32(961f, _wgslsmith_f_op_f32(sign(var_3.x))), Struct_1(~(-9786i), firstTrailingBit(_wgslsmith_sub_vec3_i32(abs(var_2.wxx), _wgslsmith_div_vec3_i32(u_input.b.wxz, var_2.xyw))), 36654u, 2422f));
    var_0 = ~16530u;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c, var_4.b.a, u_input.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, var_1.b, global1.x, -1791f) * vec4<f32>(-1121f, var_1.c.x, -1131f, var_1.c.x)) * _wgslsmith_f_op_vec4_f32(-global3[_wgslsmith_index_u32(49231u, 16u)])))) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - _wgslsmith_f_op_f32(-191f - global2.x)), _wgslsmith_f_op_f32(global2.x * -2945f), 245f, var_3.x)), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(func_2(global2.xy, -512f), u_input.a.zzw, firstTrailingBit(vec3<u32>(var_4.b.c, u_input.a.x, var_4.b.c))), vec3<u32>(max(57558u, u_input.a.x), var_4.b.c, ~u_input.a.x)), _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(var_4.b.c, 4294967295u, var_4.b.c), vec3<u32>(var_4.b.c, 74238u, 71131u)), select(u_input.a.wwz, u_input.a.xyw, false) & abs(u_input.a.xwz))));
}

