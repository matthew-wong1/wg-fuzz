struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: bool,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 5>;

var<private> global1: Struct_2;

var<private> global2: Struct_1;

var<private> global3: Struct_2 = Struct_2(Struct_1(vec4<u32>(46510u, 4294967295u, 28364u, 4294967295u)), vec2<f32>(-759f, 510f), false, i32(-2147483648), Struct_1(vec4<u32>(4294967295u, 0u, 92582u, 1u)));

var<private> global4: array<vec3<f32>, 7> = array<vec3<f32>, 7>(vec3<f32>(120f, -3143f, -865f), vec3<f32>(-971f, -2900f, -475f), vec3<f32>(1051f, -1240f, -2407f), vec3<f32>(-1204f, -2284f, 1000f), vec3<f32>(-581f, 1563f, -1151f), vec3<f32>(1000f, 546f, -221f), vec3<f32>(1292f, -660f, 1530f));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_1) -> vec4<u32> {
    let var_0 = firstLeadingBit(~firstTrailingBit(~(-vec2<i32>(u_input.d, u_input.d))));
    var var_1 = Struct_1(_wgslsmith_add_vec4_u32(global2.a, _wgslsmith_mult_vec4_u32(~vec4<u32>(0u, global1.e.a.x, arg_0.a.x, 0u), arg_0.a)));
    var var_2 = vec3<bool>(select(any(!(!vec3<bool>(global3.c, true, false))), (all(vec3<bool>(false, global3.c, global1.c)) && true) == false, select(8626i, -2147483647i, true && global1.c) != 0i), global3.c & any(!vec4<bool>(global3.c, global1.c, global3.c, global1.c)), global3.c);
    return vec4<u32>(~select(1u, 4294967295u, !(false || global1.c)), 72442u, 33698u, global1.a.a.x);
}

fn func_2(arg_0: u32, arg_1: vec3<f32>, arg_2: Struct_2, arg_3: Struct_1) -> Struct_1 {
    global3 = arg_2;
    var var_0 = Struct_1(func_3(Struct_1(~global1.e.a)));
    global4 = array<vec3<f32>, 7>();
    global1 = Struct_2(Struct_1(global3.e.a), arg_1.xy, false, ~_wgslsmith_mult_i32(_wgslsmith_clamp_i32(u_input.d ^ -47538i, u_input.c >> (global3.e.a.x % 32u), _wgslsmith_div_i32(arg_2.d, u_input.c)), global3.d), Struct_1(vec4<u32>(~5047u, arg_2.a.a.x, (var_0.a.x & var_0.a.x) | ~u_input.b, arg_0)));
    var var_1 = _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, _wgslsmith_mult_u32(1u, reverseBits(49830u)), _wgslsmith_clamp_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.a, 19019u), firstTrailingBit(arg_2.a.a.x)), 11730u, _wgslsmith_div_u32(0u, ~global3.a.a.x)), 4294967295u), ~vec4<u32>(countOneBits(_wgslsmith_div_u32(arg_0, global2.a.x)), arg_3.a.x, firstLeadingBit(~0u), _wgslsmith_mod_u32(arg_0, reverseBits(1u))), min(~_wgslsmith_sub_vec4_u32(global2.a, arg_3.a), ~_wgslsmith_div_vec4_u32(~vec4<u32>(101479u, var_0.a.x, 0u, 45016u), ~vec4<u32>(6785u, 48353u, global1.a.a.x, 51879u))));
    return global3.e;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<f32>) -> vec4<u32> {
    global4 = array<vec3<f32>, 7>();
    let var_0 = select(_wgslsmith_mod_u32(~(~23425u), _wgslsmith_sub_u32(global1.a.a.x, 1u)), arg_1.a.x, global1.c) ^ reverseBits((_wgslsmith_dot_vec2_u32(global2.a.xx, arg_0.a.xw) | _wgslsmith_sub_u32(global1.a.a.x, arg_2.a.x)) & firstLeadingBit(global2.a.x));
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.b.x - _wgslsmith_f_op_f32(select(-1750f, 1000f, global3.c)))) * _wgslsmith_f_op_f32(ceil(553f))), 410f));
    var var_2 = vec4<bool>(global3.c, any(select(select(vec4<bool>(true, false, global1.c, global1.c), !vec4<bool>(true, global3.c, true, false), global1.c), vec4<bool>(global1.c, -339f > global0[_wgslsmith_index_u32(arg_1.a.x, 5u)], true, global3.c | true), !(!vec4<bool>(global1.c, true, global3.c, false)))), false, true);
    let var_3 = Struct_1(_wgslsmith_mod_vec4_u32(arg_0.a >> (~reverseBits(arg_0.a) % vec4<u32>(32u)), ~global2.a & arg_2.a));
    return select(var_3.a, global2.a << (select(~reverseBits(vec4<u32>(4294967295u, 15891u, global1.e.a.x, global3.a.a.x)), arg_2.a, _wgslsmith_f_op_f32(step(global3.b.x, var_1)) == _wgslsmith_f_op_f32(-337f * global3.b.x)) % vec4<u32>(32u)), vec4<bool>(global3.c, any(select(vec2<bool>(false, true), vec2<bool>(true, global3.c), global1.c)), true, global3.c));
}

fn func_5(arg_0: vec2<bool>, arg_1: vec4<u32>) -> vec4<u32> {
    var var_0 = func_2(~5391u, global4[_wgslsmith_index_u32(1u, 7u)], Struct_2(Struct_1(~(~global3.a.a)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-382f, 1557f))), arg_0.x, global1.d, Struct_1(arg_1)), global1.e);
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(920f - global1.b.x) * global3.b.x), _wgslsmith_f_op_f32(-1668f + _wgslsmith_f_op_f32(-global1.b.x)))));
    let var_2 = global3.a.a.x;
    var var_3 = global3.e.a.x;
    var var_4 = ~arg_1;
    return ~(~countOneBits(~firstLeadingBit(vec4<u32>(41581u, 1u, global1.a.a.x, global2.a.x))));
}

fn func_1(arg_0: vec4<bool>) -> vec4<u32> {
    let var_0 = !global3.c;
    global2 = Struct_1(func_5(arg_0.xw, func_4(func_2(~1u, vec3<f32>(405f, 228f, global3.b.x), Struct_2(global3.e, global3.b, var_0, -4339i, Struct_1(global3.e.a)), global3.a), func_2(1u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(30182u, 5u)], 1000f, -182f)), Struct_2(Struct_1(vec4<u32>(global2.a.x, global3.a.a.x, 45816u, global2.a.x)), vec2<f32>(global0[_wgslsmith_index_u32(global3.e.a.x, 5u)], -1190f), true, -15422i, global3.e), func_2(global1.a.a.x, vec3<f32>(355f, -1412f, -251f), Struct_2(Struct_1(vec4<u32>(u_input.b, 7273u, 7599u, 1147u)), global3.b, true, 13402i, Struct_1(global2.a)), global3.e)), func_2(~u_input.b, global4[_wgslsmith_index_u32(select(4294967295u, global1.e.a.x, var_0), 7u)], Struct_2(Struct_1(vec4<u32>(global1.e.a.x, u_input.a, global3.a.a.x, 31366u)), global3.b, global3.c, global1.d, Struct_1(vec4<u32>(69481u, 53653u, 61395u, global3.a.a.x))), func_2(global1.a.a.x, global4[_wgslsmith_index_u32(global2.a.x, 7u)], Struct_2(global1.e, vec2<f32>(global3.b.x, -270f), global1.c, 1i, global3.a), global3.a)), vec3<f32>(411f, _wgslsmith_f_op_f32(sign(266f)), 1565f))));
    global3 = Struct_2(Struct_1(firstLeadingBit(~vec4<u32>(0u, 3757u, global2.a.x, 1u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-global3.b))) - _wgslsmith_f_op_vec2_f32(global1.b * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-175f, 521f)))))), global3.c, _wgslsmith_mod_i32(u_input.c, -global1.d) & -(~(~33328i)), func_2(_wgslsmith_dot_vec3_u32(global2.a.yxx, global3.a.a.xyy), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-500f, _wgslsmith_f_op_f32(global3.b.x * global1.b.x), _wgslsmith_f_op_f32(692f - 735f))), Struct_2(global3.a, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global3.b.x, 1627f))))), any(arg_0), i32(-1i) * -1i, Struct_1(func_2(1u, global4[_wgslsmith_index_u32(4294967295u, 7u)], Struct_2(global3.e, global3.b, true, global3.d, Struct_1(vec4<u32>(global2.a.x, 0u, 39723u, 1u))), global3.a).a)), func_2(~u_input.a >> (global2.a.x % 32u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(global1.e.a.x, 5u)], global1.b.x, global0[_wgslsmith_index_u32(4294967295u, 5u)]))), Struct_2(Struct_1(global1.e.a), _wgslsmith_f_op_vec2_f32(min(global1.b, vec2<f32>(711f, -561f))), arg_0.x, 100293i, global1.e), Struct_1(vec4<u32>(88462u, 8464u, 0u, 4294967295u) << (global3.e.a % vec4<u32>(32u))))));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -409f);
    return vec4<u32>(~(~1u), global1.e.a.x, global3.a.a.x | ~_wgslsmith_mod_u32(global3.e.a.x, ~43088u), global2.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_2(global1.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.b)), true && !select(false, !global1.c, false & global3.c), u_input.d, Struct_1(min(~(~vec4<u32>(29461u, global1.e.a.x, 39292u, 5394u)), _wgslsmith_mod_vec4_u32(~global1.e.a, func_1(vec4<bool>(global1.c, false, global1.c, true))))));
    var var_0 = Struct_2(Struct_1(vec4<u32>(global3.e.a.x >> (23318u % 32u), countOneBits(_wgslsmith_clamp_u32(global2.a.x, 21397u, global2.a.x)), ~(global2.a.x & 30439u), u_input.a)), vec2<f32>(global3.b.x, -837f), global3.c, -85402i, global3.e);
    var var_1 = ~(~13221u);
    var var_2 = Struct_2(global3.e, _wgslsmith_f_op_vec2_f32(select(global3.b, global3.b, vec2<bool>(false, all(!vec4<bool>(global3.c, var_0.c, true, global1.c))))), !(!all(select(vec3<bool>(true, true, true), vec3<bool>(false, global3.c, global1.c), var_0.c))), ~(~reverseBits(global3.d >> (1u % 32u))), Struct_1(global2.a));
    var var_3 = ~(select(vec3<i32>(0i, i32(-1i) * -4851i, -2147483647i), min(vec3<i32>(-31334i, global3.d, -2147483647i), vec3<i32>(-1i, 1i, u_input.c)) & vec3<i32>(global1.d, global1.d, global1.d), var_2.c) & -vec3<i32>(max(8547i, -1i), -34166i, var_2.d));
    let var_4 = Struct_1(~global2.a);
    var_2 = Struct_2(Struct_1(vec4<u32>(0u, ~(~global2.a.x), 1u << (firstLeadingBit(var_4.a.x) % 32u), ~4294967295u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(var_2.a.a.x, 33415u), 5u)] - _wgslsmith_f_op_f32(select(3191f, -1000f, var_2.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.b.x)))), global1.c, abs(-1i), var_0.e);
    global0 = array<f32, 5>();
    let var_5 = var_2.e.a.ywx;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global3.b.x), global0[_wgslsmith_index_u32(global3.e.a.x, 5u)])))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.b.x), _wgslsmith_f_op_f32(-1334f * _wgslsmith_div_f32(global3.b.x, 1024f)))));
}

