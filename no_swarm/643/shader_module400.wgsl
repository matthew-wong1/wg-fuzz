struct Struct_1 {
    a: u32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: vec2<bool>,
    d: i32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-12182i, 34709i, 0i);

var<private> global1: vec4<i32>;

var<private> global2: array<vec2<bool>, 19>;

var<private> global3: vec2<bool> = vec2<bool>(true, true);

var<private> global4: Struct_2 = Struct_2(vec3<bool>(false, true, false), vec2<f32>(-816f, 683f));

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<i32>) -> vec4<u32> {
    var var_0 = !(!global4.a);
    let var_1 = Struct_1(~_wgslsmith_sub_u32(firstTrailingBit(_wgslsmith_clamp_u32(u_input.b, 40101u, u_input.b)), select(0u, u_input.b, any(vec4<bool>(false, false, true, true)))), select(~select(abs(vec4<u32>(0u, u_input.b, u_input.b, 54251u)), select(vec4<u32>(u_input.b, 13228u, u_input.b, 1u), vec4<u32>(53299u, u_input.b, u_input.b, 0u), vec4<bool>(global4.a.x, false, false, true)), !vec4<bool>(false, false, global4.a.x, false)), vec4<u32>(79691u, u_input.b, abs(1u), u_input.b), false));
    let var_2 = Struct_2(select(select(select(global4.a, vec3<bool>(var_0.x, true, false), !global4.a), !vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(!global4.a.x, var_0.x, global4.a.x == false)), !(!(!global4.a)), var_0.x), _wgslsmith_f_op_vec2_f32(-global4.b));
    var var_3 = Struct_2(!vec3<bool>(true, var_1.a <= _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a, u_input.b, u_input.b, var_1.a), vec4<u32>(var_1.b.x, u_input.b, u_input.b, 0u)), u_input.b < _wgslsmith_mult_u32(0u, 0u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.b - global4.b)))));
    global1 = vec4<i32>(~_wgslsmith_sub_i32(~min(1i, 18377i), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), global0.xy)), abs(7505i), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, 20663i, 5432i), vec3<i32>(global1.x, global0.x, global1.x)) | ~global1.wyz, global1.wxz) | -1i, abs(-(1i | global0.x)));
    return var_1.b;
}

fn func_2(arg_0: Struct_2, arg_1: vec3<bool>) -> Struct_3 {
    global3 = select(!arg_0.a.zy, global2[_wgslsmith_index_u32(~u_input.b, 19u)], true);
    global3 = !arg_1.xz;
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-229f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global4.b.x - arg_0.b.x), _wgslsmith_f_op_f32(abs(-522f)))))))));
    let var_1 = Struct_1(~u_input.b, countOneBits(_wgslsmith_clamp_vec4_u32(func_3(global0.yy), reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, 0u, 0u, u_input.b), vec4<u32>(16627u, u_input.b, 54560u, u_input.b))), max(~vec4<u32>(0u, 78975u, u_input.b, 645u), vec4<u32>(1u, 12490u, u_input.b, u_input.b)))));
    var var_2 = -594f;
    return Struct_3(var_1, 453f, global4.a.zz, reverseBits(select(global0.x, countOneBits(global1.x), any(arg_1.yx)) & 0i), arg_0);
}

fn func_4(arg_0: Struct_3) -> Struct_2 {
    let var_0 = -_wgslsmith_mod_i32(51482i, ~(-2147483647i));
    return arg_0.e;
}

fn func_5(arg_0: Struct_2, arg_1: bool, arg_2: Struct_2, arg_3: vec2<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_sub_vec3_u32(firstTrailingBit(vec3<u32>(~arg_3.x, firstTrailingBit(40069u), u_input.b)) << ((_wgslsmith_add_vec3_u32(~vec3<u32>(1u, u_input.b, 23489u), select(vec3<u32>(arg_3.x, 0u, arg_3.x), vec3<u32>(arg_3.x, u_input.b, 2585u), vec3<bool>(global3.x, arg_2.a.x, arg_1))) ^ func_3(min(vec2<i32>(14659i, global1.x), global0.yx)).wyx) % vec3<u32>(32u)), func_2(arg_2, arg_2.a).a.b.wxw);
    return Struct_1(_wgslsmith_div_u32(u_input.b, u_input.b), vec4<u32>(abs(_wgslsmith_clamp_u32(var_0.x, u_input.b, 0u) ^ (u_input.b ^ 4294967295u)), ~(var_0.x >> (reverseBits(10374u) % 32u)), _wgslsmith_mod_u32(~arg_3.x, ~(~4294967295u)), u_input.b));
}

fn func_6(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: u32, arg_3: Struct_1) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(837f, -1243f, _wgslsmith_f_op_f32(min(global4.b.x, 1171f)), global4.b.x))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1062f, global4.b.x, 2827f, global4.b.x) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.b.x, global4.b.x, global4.b.x, global4.b.x)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(898f, global4.b.x, global4.b.x, global4.b.x)), vec4<f32>(_wgslsmith_f_op_f32(global4.b.x + global4.b.x), _wgslsmith_f_op_f32(round(-887f)), global4.b.x, _wgslsmith_div_f32(global4.b.x, 493f))), all(!global4.a))));
    var var_1 = vec2<u32>(~u_input.b, _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(firstLeadingBit(arg_3.a), func_2(Struct_2(vec3<bool>(false, global3.x, false), global4.b), vec3<bool>(true, true, global3.x)).a.b.x), u_input.b), ~arg_3.b.wx << (vec2<u32>(_wgslsmith_mod_u32(7770u, 26636u), reverseBits(arg_3.b.x)) % vec2<u32>(32u))));
    let var_2 = func_2(func_4(Struct_3(arg_0, 408f, select(vec2<bool>(global4.a.x, false), !global4.a.yy, !global2[_wgslsmith_index_u32(arg_3.a, 19u)]), 1i, Struct_2(global4.a, _wgslsmith_div_vec2_f32(global4.b, global4.b)))), !(!vec3<bool>(true, arg_1.x && arg_1.x, all(global4.a)))).c.x;
    return Struct_3(Struct_1(27702u, abs(_wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(arg_3.b, arg_3.b), vec4<u32>(0u, 4294967295u, 69071u, arg_2)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), func_2(func_2(Struct_2(!vec3<bool>(global4.a.x, arg_1.x, var_2), global4.b), vec3<bool>(false, global4.a.x | var_2, false)).e, vec3<bool>(any(global4.a), var_2, false || (global3.x & true))).c, global1.x, func_2(Struct_2(global4.a, vec2<f32>(_wgslsmith_f_op_f32(min(-433f, var_0.x)), _wgslsmith_f_op_f32(1429f * 433f))), vec3<bool>(global3.x, true, any(global4.a))).e);
}

fn func_7(arg_0: Struct_3, arg_1: i32, arg_2: vec3<i32>, arg_3: Struct_2) -> Struct_1 {
    var var_0 = ~countOneBits(arg_0.a.a);
    global3 = global4.a.yy;
    let var_1 = true;
    global1 = ~vec4<i32>(~0i, _wgslsmith_mod_i32(abs(-arg_0.d), (global1.x | 26239i) | -2147483647i), max(global0.x, -2147483647i), ~abs(arg_0.d));
    global4 = Struct_2(vec3<bool>(min(-95566i, min(global1.x, 43114i)) < -33680i, func_3(~vec2<i32>(global0.x, u_input.a.x)).x > (~11571u ^ u_input.b), true), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_3.b.x, _wgslsmith_f_op_f32(487f + global4.b.x)), global4.b), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1540f, 1163f))));
    return func_2(func_2(Struct_2(global4.a, arg_3.b), arg_0.e.a).e, !func_6(func_2(arg_0.e, func_2(arg_3, vec3<bool>(true, global3.x, global4.a.x)).e.a).a, !(!global4.a.yy), 8061u, Struct_1(reverseBits(0u), arg_0.a.b ^ vec4<u32>(u_input.b, u_input.b, u_input.b, arg_0.a.b.x))).e.a).a;
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: bool) -> u32 {
    var var_0 = func_7(func_6(func_5(Struct_2(select(global4.a, vec3<bool>(true, true, global3.x), vec3<bool>(global4.a.x, true, true)), vec2<f32>(887f, arg_0)), !global4.a.x, func_4(func_2(Struct_2(global4.a, vec2<f32>(441f, global4.b.x)), vec3<bool>(false, global4.a.x, arg_3))), vec2<u32>(8014u, arg_1.b.x)), vec2<bool>(all(!global2[_wgslsmith_index_u32(u_input.b, 19u)]), any(select(vec4<bool>(true, false, true, global4.a.x), vec4<bool>(true, true, global4.a.x, global3.x), true))), max(4294967295u, u_input.b), func_5(Struct_2(select(vec3<bool>(false, true, false), vec3<bool>(global4.a.x, global3.x, false), arg_3), func_2(Struct_2(vec3<bool>(false, false, global3.x), vec2<f32>(arg_0, -1416f)), vec3<bool>(arg_3, true, true)).e.b), global4.a.x, func_2(func_2(Struct_2(vec3<bool>(global3.x, global4.a.x, false), vec2<f32>(arg_2.x, -614f)), vec3<bool>(global3.x, true, true)).e, global4.a).e, _wgslsmith_mod_vec2_u32(vec2<u32>(131897u, arg_1.b.x), arg_1.b.ww) ^ _wgslsmith_sub_vec2_u32(vec2<u32>(0u, arg_1.a), arg_1.b.zy))), _wgslsmith_mult_i32(-_wgslsmith_mod_i32(_wgslsmith_sub_i32(global0.x, global0.x), 9783i ^ u_input.a.x), _wgslsmith_div_i32(-2147483647i | _wgslsmith_mult_i32(0i, global0.x), _wgslsmith_dot_vec4_i32(select(vec4<i32>(-36216i, 0i, u_input.a.x, u_input.a.x), vec4<i32>(global0.x, 21095i, global0.x, -4768i), vec4<bool>(global3.x, global3.x, global3.x, arg_3)), -vec4<i32>(49079i, global0.x, global1.x, 9970i)))), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(14400i, -26049i, ~(-2147483647i)), vec3<i32>(countOneBits(1i), _wgslsmith_add_i32(-2147483647i, 22939i), 36380i)), 1i, select(1i << (func_3(global0.yy).x % 32u), ~func_6(Struct_1(0u, arg_1.b), global2[_wgslsmith_index_u32(4294967295u, 19u)], 54595u, arg_1).d, 2147483647i == firstTrailingBit(2147483647i))), func_2(Struct_2(!(!global4.a), _wgslsmith_f_op_vec2_f32(-arg_2.zz)), vec3<bool>(func_4(Struct_3(arg_1, global4.b.x, vec2<bool>(global4.a.x, global3.x), global0.x, Struct_2(global4.a, vec2<f32>(818f, -1760f)))).a.x, all(vec2<bool>(global3.x, global4.a.x)), global3.x)).e);
    return _wgslsmith_add_u32(abs(var_0.b.x), func_7(func_2(Struct_2(global4.a, vec2<f32>(-822f, global4.b.x)), func_6(arg_1, global2[_wgslsmith_index_u32(42089u, 19u)], 29622u, arg_1).e.a), 2147483647i, -global1.yyx, Struct_2(vec3<bool>(global4.a.x, global3.x, true), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_2.x, -197f))))).a) & var_0.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_vec4_u32(reverseBits(~(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, 10699u, 120693u, u_input.b), vec4<u32>(u_input.b, 4294967295u, 44725u, u_input.b)))), vec4<u32>(~(~func_1(global4.b.x, Struct_1(1041u, vec4<u32>(u_input.b, 45818u, 20380u, u_input.b)), vec3<f32>(global4.b.x, 343f, -894f), global4.a.x)), ~_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 10004u), vec2<u32>(693u, u_input.b)), _wgslsmith_add_u32(1u, u_input.b)), _wgslsmith_add_u32(u_input.b ^ (1u ^ u_input.b), ~1u), 1u));
    var var_1 = Struct_3(func_2(func_6(func_7(func_6(Struct_1(u_input.b, var_0), vec2<bool>(global4.a.x, true), 39076u, Struct_1(6245u, vec4<u32>(1u, var_0.x, var_0.x, u_input.b))), u_input.a.x, vec3<i32>(1i, u_input.a.x, 1i), Struct_2(vec3<bool>(global3.x, global4.a.x, true), global4.b)), func_6(Struct_1(var_0.x, vec4<u32>(u_input.b, u_input.b, 91074u, u_input.b)), vec2<bool>(false, false), reverseBits(var_0.x), Struct_1(var_0.x, var_0)).c, func_6(Struct_1(u_input.b, var_0), global4.a.zz, 4294967295u, Struct_1(var_0.x, var_0)).a.b.x << (_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, u_input.b), vec2<u32>(u_input.b, 0u)) % 32u), Struct_1(~var_0.x, vec4<u32>(58225u, var_0.x, var_0.x, 0u))).e, vec3<bool>(global4.a.x, var_0.x == u_input.b, false)).a, _wgslsmith_f_op_f32(f32(-1f) * -1158f), global2[_wgslsmith_index_u32(max(60845u, ~u_input.b), 19u)], _wgslsmith_sub_i32(firstLeadingBit(u_input.a.x), -2147483647i), Struct_2(vec3<bool>(true | func_2(Struct_2(global4.a, vec2<f32>(612f, 765f)), vec3<bool>(true, true, false)).e.a.x, true, true), global4.b));
    let var_2 = true;
    let var_3 = ~reverseBits(1u) < ~(~(~(~var_1.a.b.x)));
    var_1 = func_2(func_4(func_6(func_5(func_2(Struct_2(var_1.e.a, global4.b), var_1.e.a).e, false, Struct_2(global4.a, global4.b), vec2<u32>(0u, var_0.x)), global4.a.xx, firstLeadingBit(_wgslsmith_mod_u32(4294967295u, 52487u)), Struct_1(1u, vec4<u32>(16760u, var_1.a.b.x, 32248u, var_0.x)))), vec3<bool>(true, any(vec3<bool>(func_6(Struct_1(0u, var_0), var_1.e.a.zz, 1u, var_1.a).c.x, false, true)), true));
    let var_4 = var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(countOneBits(u_input.a)) >> (vec2<u32>(~7423u, var_1.a.b.x) % vec2<u32>(32u)), 73598u, ~var_0.x, -(~vec4<i32>(-2147483647i, firstLeadingBit(19555i), -2147483647i, u_input.a.x)));
}

