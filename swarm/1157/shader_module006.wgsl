struct Struct_1 {
    a: vec2<bool>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: i32,
    d: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: vec4<u32>,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
    d: u32,
    e: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_2 = Struct_2(Struct_1(vec2<bool>(false, true), vec2<u32>(52837u, 28850u)), vec3<bool>(true, true, true), -1i, 665f);

var<private> global2: array<Struct_3, 13>;

var<private> global3: Struct_1;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> u32 {
    global3 = global1.a;
    let var_0 = !(global1.d <= global1.d) != (any(select(global3.a, global1.b.zz, select(global3.a, global1.b.yy, global3.a.x))) | !all(!global1.b));
    let var_1 = Struct_2(Struct_1(vec2<bool>(select(select(var_0, var_0, true), false, !var_0), true), _wgslsmith_mod_vec2_u32(~(~u_input.b), firstLeadingBit(global3.b))), global1.b, -_wgslsmith_mult_i32(firstLeadingBit(_wgslsmith_sub_i32(global1.c, global1.c)), _wgslsmith_add_i32(-2147483647i << (global1.a.b.x % 32u), u_input.c.x << (u_input.d % 32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -243f)));
    var var_2 = u_input.e;
    var var_3 = firstLeadingBit(~_wgslsmith_mod_i32((-11139i & global1.c) ^ (var_1.c >> (47846u % 32u)), u_input.a));
    return 1u;
}

fn func_2(arg_0: vec4<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_sub_vec3_u32(vec3<u32>(global3.b.x, func_3(), ~_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(5498u, 20706u, 1892u, 21391u), vec4<u32>(u_input.e.x, 4294967295u, 69492u, 0u)), _wgslsmith_add_u32(global1.a.b.x, 1u))), u_input.e);
    var var_1 = Struct_1(vec2<bool>(all(!select(vec4<bool>(false, global3.a.x, true, false), vec4<bool>(false, false, false, global1.b.x), vec4<bool>(false, global1.b.x, global1.b.x, global3.a.x))), true), vec2<u32>(4294967295u, var_0.x));
    var var_2 = global1.a;
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(653f, _wgslsmith_f_op_f32(global1.d * arg_0.x))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1429f, -534f), _wgslsmith_f_op_vec2_f32(arg_0.yz * arg_0.zw))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(arg_0.xy)), arg_0.zy))));
    global0 = 0u;
    return global1.a;
}

fn func_1() -> bool {
    global3 = global1.a;
    var var_0 = Struct_2(func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-939f, global1.d, 704f, -699f), vec4<f32>(global1.d, global1.d, -133f, global1.d), vec4<bool>(global1.b.x, global3.a.x, false, global1.b.x)))))), select(!(!(!global1.b)), !(!global1.b), !global3.a.x), _wgslsmith_mult_i32(-23854i << (~abs(global3.b.x) % 32u), firstTrailingBit(_wgslsmith_sub_i32(_wgslsmith_div_i32(40615i, u_input.c.x), global1.c))), _wgslsmith_f_op_f32(abs(1000f)));
    let var_1 = vec4<bool>(!(!all(vec4<bool>(var_0.a.a.x, global3.a.x, false, false))), var_0.b.x, any(vec2<bool>(all(!var_0.b), any(select(vec3<bool>(false, var_0.b.x, true), global1.b, global1.b.x)))), true);
    var var_2 = global1.a;
    var_0 = Struct_2(var_0.a, vec3<bool>(var_1.x, true, any(!select(vec2<bool>(var_2.a.x, true), var_1.xw, var_0.b.x))), max(_wgslsmith_div_i32(-2147483647i, var_0.c), abs(2147483647i)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(var_0.d)), global1.d, var_2.a.x)));
    return true;
}

fn func_4(arg_0: bool) -> Struct_4 {
    let var_0 = vec2<bool>(global3.a.x, !any(!global1.b.xx));
    var var_1 = vec4<u32>(global1.a.b.x, 4294967295u, select(max(7080u, global1.a.b.x), ~4294967295u, true) << (firstLeadingBit(firstLeadingBit(1u)) % 32u), abs(0u) | (_wgslsmith_dot_vec4_u32(vec4<u32>(global1.a.b.x, u_input.d, 0u, 0u), vec4<u32>(0u, global1.a.b.x, 0u, u_input.b.x)) << (_wgslsmith_div_u32(4294967295u, u_input.d) % 32u))) | select(_wgslsmith_mult_vec4_u32(~vec4<u32>(global1.a.b.x, u_input.e.x, global1.a.b.x, 71299u) ^ _wgslsmith_add_vec4_u32(vec4<u32>(573u, 8023u, global1.a.b.x, 9114u), vec4<u32>(45058u, u_input.d, global3.b.x, 0u)), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, global1.a.b.x, 4294967295u), vec3<u32>(u_input.e.x, global3.b.x, 54025u)), _wgslsmith_mult_u32(9049u, global3.b.x), ~1u, 0u)), ~(~(~vec4<u32>(52227u, 12748u, global3.b.x, u_input.d))), _wgslsmith_sub_i32(~u_input.a, u_input.a) != (global1.c & global1.c));
    var var_2 = Struct_2(Struct_1(select(!select(global1.b.yz, var_0, vec2<bool>(var_0.x, global1.a.a.x)), !vec2<bool>(global3.a.x, false), !select(var_0, vec2<bool>(var_0.x, true), global3.a)), firstLeadingBit(~(~vec2<u32>(global3.b.x, 0u)))), select(select(vec3<bool>(true, true, arg_0), vec3<bool>(global3.a.x | true, all(var_0), true), global1.b.x && any(vec3<bool>(true, global1.b.x, global1.a.a.x))), global1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(493f))) < _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(global1.d))))), ~_wgslsmith_sub_i32(-1925i, _wgslsmith_sub_i32(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(global1.c, global1.c), vec2<i32>(-42376i, u_input.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.d * global1.d) + _wgslsmith_f_op_f32(floor(global1.d))), global1.d, true && !global3.a.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(221f, _wgslsmith_f_op_f32(-1362f + 575f))) + global1.d)));
    let var_3 = Struct_1(vec2<bool>(true, global1.a.a.x), ~(~vec2<u32>(var_2.a.b.x, 29933u)) & global1.a.b);
    var var_4 = var_2.d;
    return Struct_4(Struct_2(Struct_1(var_0, vec2<u32>(global1.a.b.x, var_3.b.x)), vec3<bool>(all(func_2(vec4<f32>(-540f, 993f, global1.d, var_2.d)).a), _wgslsmith_f_op_f32(sign(global1.d)) > _wgslsmith_f_op_f32(528f * 259f), any(select(global1.b, global1.b, global1.b))), ~(-_wgslsmith_dot_vec3_i32(vec3<i32>(1i, var_2.c, 0i), vec3<i32>(2147483647i, 20405i, 5706i))), 599f), global1.a, Struct_2(global1.a, global1.b, ~(-1i), var_2.d), ~min(62534u, _wgslsmith_dot_vec3_u32(u_input.e, ~var_1.wwz)), global2[_wgslsmith_index_u32(var_2.a.b.x, 13u)]);
}

fn func_5(arg_0: Struct_4, arg_1: vec4<bool>, arg_2: vec4<bool>) -> vec2<u32> {
    let var_0 = false;
    var var_1 = _wgslsmith_add_vec4_u32(arg_0.e.c, vec4<u32>(61188u, ~1u & select(1u, min(global3.b.x, global1.a.b.x), global1.a.a.x), 62756u, 49719u));
    global0 = _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(abs(var_1.zzx) << (~(~var_1.wzz) % vec3<u32>(32u)), ~(arg_0.e.c.yww ^ vec3<u32>(global1.a.b.x, u_input.b.x, var_1.x))), ~vec3<u32>(~49080u & _wgslsmith_mult_u32(0u, u_input.b.x), ~1u, global3.b.x));
    var var_2 = ~global1.c;
    var_1 = arg_0.e.c;
    return u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = global1.a;
    var var_0 = _wgslsmith_div_i32(-_wgslsmith_mult_i32(global1.c, global1.c), u_input.c.x);
    global3 = Struct_1(!select(select(!global1.b.yx, !global1.a.a, global1.d < global1.d), global3.a, false), u_input.e.yx << (func_5(func_4(func_1()), select(!vec4<bool>(true, global3.a.x, global3.a.x, global3.a.x), !vec4<bool>(global1.b.x, global1.b.x, global1.b.x, true), !vec4<bool>(true, global3.a.x, true, false)), vec4<bool>(!global3.a.x, select(global3.a.x, global1.b.x, global1.a.a.x), true, true)) % vec2<u32>(32u)));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    let var_2 = i32(-1i) * -_wgslsmith_clamp_i32(max(-2147483647i, ~1i), i32(-1i) * -10058i, 1i);
    let var_3 = Struct_2(Struct_1(select(!(!vec2<bool>(true, global3.a.x)), vec2<bool>(func_4(true).a.b.x, false), any(!global1.b)), ~u_input.e.xz), select(vec3<bool>(~(-22598i) >= u_input.c.x, global3.a.x, true), !global1.b, vec3<bool>(false, !(!global3.a.x), true)), 13644i, _wgslsmith_div_f32(318f, -445f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_u32(~vec4<u32>(firstTrailingBit(global1.a.b.x), 1u, _wgslsmith_mult_u32(27802u, u_input.d), _wgslsmith_mult_u32(global3.b.x, 38520u)), ~(~firstTrailingBit(vec4<u32>(0u, u_input.e.x, global3.b.x, 32826u))), _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(global1.a.b.x, 1u, u_input.b.x, global1.a.b.x), _wgslsmith_add_vec4_u32(vec4<u32>(4443u, global1.a.b.x, 34384u, var_3.a.b.x), vec4<u32>(6529u, 0u, 63218u, 1u))), vec4<u32>(u_input.b.x, select(u_input.d, global1.a.b.x, global3.a.x), func_3(), 72621u))), vec4<u32>(global3.b.x, abs(_wgslsmith_clamp_u32(~var_3.a.b.x, 4294967295u, 1u)), 4294967295u >> ((_wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(1u, global3.b.x)) & u_input.e.x) % 32u), _wgslsmith_sub_u32(~global1.a.b.x, 0u)), ~(-(~u_input.c)), 44187u, func_4(global1.b.x).e.a.a.b);
}

