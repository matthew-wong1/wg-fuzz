struct Struct_1 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: Struct_1,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: f32,
    d: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<f32, 27> = array<f32, 27>(144f, -2476f, 296f, -1256f, -1000f, 329f, 906f, 487f, -677f, 553f, 1000f, -604f, -161f, -636f, 467f, 478f, 1089f, 524f, 584f, 1070f, -1609f, 1000f, 1000f, 194f, 2825f, 986f, -1446f);

var<private> global2: vec3<u32>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec2<u32>, arg_2: i32, arg_3: Struct_2) -> Struct_1 {
    global0 = _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~71262u, 27u)] - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.c.b.x)));
    global2 = u_input.a.wxw;
    let var_0 = _wgslsmith_add_u32(min(0u, countOneBits(~arg_1.x)), abs(~((arg_3.a.x >> (arg_1.x % 32u)) >> (_wgslsmith_div_u32(33189u, global2.x) % 32u))));
    var var_1 = 1u;
    let var_2 = 4294967295u;
    return arg_3.c;
}

fn func_3(arg_0: vec3<f32>, arg_1: f32) -> vec2<u32> {
    global1 = array<f32, 27>();
    let var_0 = select(!vec3<bool>(any(vec2<bool>(true, true)), all(vec4<bool>(true, true, true, true)) == false, (global2.x >= u_input.b) != true), select(vec3<bool>(true, true, global1[_wgslsmith_index_u32(4294967295u, 27u)] > global1[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u, u_input.b), 27u)]), vec3<bool>(true, false, true), vec3<bool>(!(global2.x == 16715u), !(4294967295u < u_input.a.x), select(select(true, true, true), select(false, false, true), all(vec2<bool>(true, true))))), true);
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global1[_wgslsmith_index_u32(global2.x, 27u)], global1[_wgslsmith_index_u32(global2.x, 27u)], arg_0.x, 1000f))) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1000f, -730f, arg_1, global1[_wgslsmith_index_u32(u_input.b, 27u)])))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0.x, -1162f, -338f, -845f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(572f, arg_1, arg_0.x, 622f), vec4<f32>(953f, global1[_wgslsmith_index_u32(31700u, 27u)], global1[_wgslsmith_index_u32(5779u, 27u)], global1[_wgslsmith_index_u32(496u, 27u)]), vec4<bool>(true, var_0.x, false, true)))))), vec4<f32>(_wgslsmith_f_op_f32(arg_1 - -407f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(arg_1)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1627f, global1[_wgslsmith_index_u32(u_input.a.x, 27u)])), -2032f), all(var_0))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-638f - _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b, 27u)])), 1982f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(arg_0.zx, vec2<f32>(global1[_wgslsmith_index_u32(u_input.b, 27u)], global1[_wgslsmith_index_u32(15485u, 27u)]), var_0.zy)), _wgslsmith_f_op_vec2_f32(floor(arg_0.xx)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(arg_0.zx, vec2<f32>(872f, arg_0.x), var_0.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(arg_1 * global1[_wgslsmith_index_u32(u_input.b, 27u)]))) * -1022f));
    let var_2 = false && any(vec4<bool>(false && all(vec4<bool>(true, var_0.x, var_0.x, false)), all(!vec2<bool>(false, var_0.x)), !var_0.x, var_0.x == var_0.x));
    var var_3 = Struct_3(u_input.c, ~firstTrailingBit(_wgslsmith_mod_u32(0u, 7643u ^ global2.x)), _wgslsmith_f_op_f32(floor(var_1.b.x)), 1u);
    return ~_wgslsmith_add_vec2_u32(global2.xz, ~select(global2.zy, _wgslsmith_mult_vec2_u32(global2.xz, global2.zx), true));
}

fn func_4(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: Struct_2) -> f32 {
    global1 = array<f32, 27>();
    global0 = 1297f;
    let var_0 = select(0u, 22142u, true) << (4294967295u % 32u);
    let var_1 = Struct_2(arg_3.a, arg_3.b, func_1(vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_div_u32(arg_3.a.x, 1u), arg_0.b & 1u), 4294967295u, arg_3.a.x), vec2<u32>(global2.x >> (0u % 32u), arg_0.b), arg_0.a, Struct_2(min(vec2<u32>(global2.x, u_input.a.x), u_input.a.yx << (arg_3.a % vec2<u32>(32u))), select(arg_3.b, select(vec4<bool>(true, arg_3.d, false, false), arg_3.b, vec4<bool>(arg_3.b.x, arg_3.d, true, false)), vec4<bool>(arg_3.b.x, true, arg_3.b.x, arg_3.b.x)), Struct_1(arg_1, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global1[_wgslsmith_index_u32(global2.x, 27u)], 321f))), -539f), select(arg_3.b.x, any(vec3<bool>(arg_3.b.x, arg_3.d, arg_3.d)), arg_3.b.x), arg_3.e)), false, func_1(u_input.a.xxx, _wgslsmith_mult_vec2_u32(~(vec2<u32>(arg_3.a.x, 18602u) >> (vec2<u32>(u_input.b, 4294967295u) % vec2<u32>(32u))), global2.yx), arg_0.a, arg_3));
    var var_2 = max(_wgslsmith_div_vec2_i32(-vec2<i32>(u_input.c, 7242i) | -countOneBits(vec2<i32>(-55i, -1i)), vec2<i32>(u_input.c, _wgslsmith_dot_vec3_i32(-vec3<i32>(-24642i, u_input.c, u_input.c), _wgslsmith_add_vec3_i32(vec3<i32>(1i, arg_0.a, arg_0.a), vec3<i32>(-357i, -50633i, arg_0.a))))), _wgslsmith_add_vec2_i32(max(vec2<i32>(select(-1i, u_input.c, true), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, 0i), vec2<i32>(arg_0.a, u_input.c))), ~(-vec2<i32>(u_input.c, 53035i))), select(_wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(arg_0.a, -28407i), vec2<i32>(1i, 45850i)), countOneBits(vec2<i32>(u_input.c, 4724i)), _wgslsmith_clamp_vec2_i32(vec2<i32>(arg_0.a, 11303i), vec2<i32>(arg_0.a, u_input.c), vec2<i32>(9556i, 17032i))), vec2<i32>(2147483647i, 12882i), var_1.b.xx)));
    return _wgslsmith_f_op_f32(sign(func_1(~firstLeadingBit(u_input.a.xzz) & firstTrailingBit(vec3<u32>(0u, 4294967295u, var_0)), _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 13386u), u_input.a.xw, vec2<u32>(arg_3.a.x, ~var_0)), -52548i, arg_3).a.x));
}

fn func_2(arg_0: Struct_1) -> u32 {
    var var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1088f))), 839f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(23029u, 27u)], -1000f)) + global1[_wgslsmith_index_u32(u_input.a.x >> (u_input.a.x % 32u), 27u)])), -632f), arg_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-582f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) - -411f))));
    var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-328f - 1095f)) + -483f), 1000f, _wgslsmith_f_op_f32(func_4(Struct_3(u_input.c, ~62660u, _wgslsmith_f_op_f32(step(229f, arg_0.c)), 0u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-272f, 1829f, global1[_wgslsmith_index_u32(global2.x, 27u)], -1113f)), func_1(~u_input.a.yyy, func_3(var_0.a.yzz, var_0.a.x), -10757i, Struct_2(u_input.a.zz, vec4<bool>(false, true, false, true), Struct_1(vec4<f32>(arg_0.a.x, arg_0.c, 1015f, -646f), vec2<f32>(-1281f, global1[_wgslsmith_index_u32(u_input.b, 27u)]), 626f), true, arg_0)), Struct_2(vec2<u32>(global2.x, 1u), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), false), arg_0, true, Struct_1(arg_0.a, var_0.a.ww, -1009f)))), _wgslsmith_f_op_f32(ceil(280f))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(exp2(arg_0.a.wz)))))), _wgslsmith_f_op_f32(-1140f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -334f))));
    let var_1 = func_1(u_input.a.zzy, global2.zy, _wgslsmith_add_i32(~_wgslsmith_add_i32(u_input.c, 2147483647i) ^ u_input.c, i32(-1i) * -(~u_input.c)), Struct_2(vec2<u32>(_wgslsmith_mult_u32(~global2.x, 47330u | u_input.a.x), ~global2.x), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(vec4<bool>(false, false, false, true))), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false))), arg_0, all(vec2<bool>(true, true)), arg_0));
    return _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(26670u, u_input.a.x)), vec2<u32>(global2.x, ~global2.x)) ^ firstLeadingBit(firstTrailingBit(global2.x)), ~u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c;
    let var_1 = 4294967295u;
    global1 = array<f32, 27>();
    var var_2 = !(~global2.x <= func_2(func_1(u_input.a.wzx, _wgslsmith_mult_vec2_u32(vec2<u32>(50282u, 6874u), vec2<u32>(var_1, u_input.a.x)), var_0, Struct_2(vec2<u32>(global2.x, 4294967295u), vec4<bool>(false, true, true, true), Struct_1(vec4<f32>(-2350f, global1[_wgslsmith_index_u32(var_1, 27u)], 216f, 913f), vec2<f32>(global1[_wgslsmith_index_u32(0u, 27u)], -1006f), global1[_wgslsmith_index_u32(4294967295u, 27u)]), false, Struct_1(vec4<f32>(global1[_wgslsmith_index_u32(var_1, 27u)], -1050f, global1[_wgslsmith_index_u32(global2.x, 27u)], global1[_wgslsmith_index_u32(0u, 27u)]), vec2<f32>(-727f, global1[_wgslsmith_index_u32(16471u, 27u)]), global1[_wgslsmith_index_u32(global2.x, 27u)])))));
    let var_3 = firstLeadingBit(select(u_input.a.zxy, abs(_wgslsmith_mod_vec3_u32(firstTrailingBit(u_input.a.ywy), _wgslsmith_mult_vec3_u32(vec3<u32>(var_1, var_1, var_1), u_input.a.yzz))), !(!select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), false))));
    let var_4 = vec4<i32>(abs(u_input.c), reverseBits(-1i), u_input.c & _wgslsmith_dot_vec2_i32(-vec2<i32>(1i, var_0) & (vec2<i32>(u_input.c, 1i) & vec2<i32>(u_input.c, 1i)), select(vec2<i32>(-33746i, var_0), select(vec2<i32>(-62687i, var_0), vec2<i32>(var_0, 9889i), true), true)), i32(-1i) * -2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(var_1, 27u)], 1602f))))))), ~(0u ^ _wgslsmith_sub_u32(_wgslsmith_mult_u32(var_3.x, 4294967295u), u_input.a.x)));
}

