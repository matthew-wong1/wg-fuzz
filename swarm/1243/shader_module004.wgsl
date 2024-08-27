struct Struct_1 {
    a: bool,
    b: f32,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<bool>,
    d: bool,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(true, 110f, 0i, 1815f), Struct_1(true, 598f, 7990i, 755f), Struct_1(false, 588f, 2147483647i, 497f), Struct_1(false, -827f, i32(-2147483648), 383f), Struct_1(false, -204f, -12887i, 944f), Struct_1(true, 1000f, 2147483647i, -1275f), Struct_1(true, 795f, i32(-2147483648), -1699f), Struct_1(true, 1000f, -1i, -100f));

var<private> global1: array<bool, 6>;

var<private> global2: array<Struct_4, 12>;

var<private> global3: f32;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2, arg_2: f32, arg_3: f32) -> u32 {
    var var_0 = abs(arg_1.a.c);
    global1 = array<bool, 6>();
    return 0u;
}

fn func_4(arg_0: Struct_4, arg_1: Struct_4, arg_2: u32, arg_3: Struct_1) -> f32 {
    global3 = -1741f;
    let var_0 = Struct_2(Struct_1(true, arg_3.b, min(-9121i, ~(-16820i)), _wgslsmith_f_op_f32(f32(-1f) * -215f)), global0[_wgslsmith_index_u32(10391u, 8u)], !vec4<bool>(!all(vec4<bool>(false, true, true, arg_3.a)), !all(vec2<bool>(true, false)), !all(vec4<bool>(arg_0.a, false, true, global1[_wgslsmith_index_u32(arg_2, 6u)])), arg_3.a), arg_3.a && arg_3.a);
    var var_1 = ~(0i >> (reverseBits(arg_2) % 32u));
    var var_2 = u_input.a.wyw;
    let var_3 = vec3<u32>(~_wgslsmith_div_u32(~min(u_input.a.x, arg_2), ~_wgslsmith_mult_u32(u_input.a.x, var_2.x)), arg_2, _wgslsmith_div_u32(~39710u, ~_wgslsmith_mod_u32(28832u, 1u)));
    return _wgslsmith_f_op_f32(exp2(arg_3.b));
}

fn func_2() -> u32 {
    global0 = array<Struct_1, 8>();
    let var_0 = Struct_1(!(!(!global1[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, u_input.b), 6u)])), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_4(global2[_wgslsmith_index_u32(87958u, 12u)], Struct_4(false), abs(func_3(Struct_3(vec3<f32>(-418f, 1329f, -1010f)), Struct_2(Struct_1(global1[_wgslsmith_index_u32(27521u, 6u)], 895f, u_input.e, -1065f), Struct_1(true, 779f, u_input.d, 352f), vec4<bool>(false, false, true, true), false), -585f, 1000f)), Struct_1(global1[_wgslsmith_index_u32(u_input.a.x, 6u)], 711f, -u_input.d, -753f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-360f))))))), max(~_wgslsmith_div_i32(i32(-1i) * -1i, -u_input.c.x), 11463i), _wgslsmith_f_op_f32(floor(112f)));
    let var_1 = global2[_wgslsmith_index_u32(u_input.a.x, 12u)];
    let var_2 = select(_wgslsmith_sub_vec3_u32(~vec3<u32>(~39233u, u_input.b, _wgslsmith_mod_u32(2929u, u_input.a.x)), u_input.a.yxy), vec3<u32>(_wgslsmith_dot_vec2_u32(u_input.a.yy, ~u_input.a.yw), firstLeadingBit(~27600u), ~_wgslsmith_add_u32(max(48629u, 4294967295u), ~u_input.a.x)), !select(!select(vec3<bool>(false, var_0.a, false), vec3<bool>(false, var_1.a, false), vec3<bool>(var_0.a, true, var_1.a)), vec3<bool>(!global1[_wgslsmith_index_u32(0u, 6u)], true, false), !(!vec3<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 6u)], false, false))));
    global1 = array<bool, 6>();
    return ~_wgslsmith_add_u32(~((var_2.x >> (16450u % 32u)) << ((var_2.x << (u_input.b % 32u)) % 32u)), u_input.b & _wgslsmith_sub_u32(~1u, abs(u_input.a.x)));
}

fn func_1(arg_0: vec3<i32>) -> bool {
    var var_0 = Struct_2(Struct_1(func_2() < ~37429u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-700f))), 756i, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-1994f)), -548f))), global0[_wgslsmith_index_u32(1u, 8u)], select(vec4<bool>(any(vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.b, 6u)])) == all(vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.a.x, 6u)])), global1[_wgslsmith_index_u32(4294967295u, 6u)], ~u_input.a.x >= ~u_input.a.x, false), select(!select(vec4<bool>(true, true, false, global1[_wgslsmith_index_u32(u_input.a.x, 6u)]), vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.a.x, 6u)], global1[_wgslsmith_index_u32(0u, 6u)], global1[_wgslsmith_index_u32(38632u, 6u)]), vec4<bool>(false, false, global1[_wgslsmith_index_u32(u_input.a.x, 6u)], false)), !select(vec4<bool>(global1[_wgslsmith_index_u32(109927u, 6u)], true, false, global1[_wgslsmith_index_u32(4294967295u, 6u)]), vec4<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 6u)], false, global1[_wgslsmith_index_u32(u_input.b, 6u)]), vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 6u)], global1[_wgslsmith_index_u32(u_input.a.x, 6u)], global1[_wgslsmith_index_u32(u_input.a.x, 6u)], global1[_wgslsmith_index_u32(0u, 6u)])), !(!vec4<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 6u)], global1[_wgslsmith_index_u32(4294967295u, 6u)], false))), u_input.a.x < (u_input.a.x ^ u_input.a.x)), global1[_wgslsmith_index_u32(0u, 6u)]);
    var var_1 = global2[_wgslsmith_index_u32(u_input.b, 12u)];
    var var_2 = Struct_4(var_0.b.c == _wgslsmith_mult_i32(~2147483647i << (select(45796u, 4294967295u, true) % 32u), abs(u_input.e) ^ var_0.a.c));
    global0 = array<Struct_1, 8>();
    var var_3 = vec3<u32>(0u, ~(~(~(~1u))), u_input.b);
    return _wgslsmith_div_u32(u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_3.x, 26563u) ^ vec3<u32>(u_input.b, u_input.b, 1u), vec3<u32>(4294967295u, 59403u, _wgslsmith_sub_u32(1u, u_input.a.x)))) == ~0u;
}

fn func_5(arg_0: Struct_4, arg_1: Struct_2) -> f32 {
    var var_0 = Struct_4(!global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, _wgslsmith_clamp_u32(u_input.a.x, 9234u, u_input.b), firstLeadingBit(0u)), vec3<u32>(38038u, 1u, ~0u)), 6u)]);
    global3 = _wgslsmith_f_op_f32(exp2(arg_1.b.b));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(154f, _wgslsmith_f_op_f32(floor(1f)), all(vec4<bool>(true, false, arg_0.a, func_1(u_input.c.zxw))))) + _wgslsmith_f_op_f32(max(307f, -1089f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(569f, -1000f, -910f) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(160f, -670f, -931f), vec3<f32>(-722f, -194f, 1241f))))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_div_f32(499f, 553f), 1338f, _wgslsmith_f_op_f32(-444f + -574f))))));
    global3 = _wgslsmith_f_op_f32(func_5(Struct_4(func_1((vec3<i32>(-1i, u_input.d, u_input.e) & u_input.c.xww) | ~u_input.c.zww)), Struct_2(global0[_wgslsmith_index_u32(u_input.a.x, 8u)], global0[_wgslsmith_index_u32(~u_input.a.x, 8u)], !vec4<bool>(all(vec3<bool>(false, true, global1[_wgslsmith_index_u32(u_input.a.x, 6u)])), any(vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.b, 6u)])), true, global1[_wgslsmith_index_u32(0u, 6u)] || global1[_wgslsmith_index_u32(u_input.a.x, 6u)]), global1[_wgslsmith_index_u32(~u_input.a.x, 6u)])));
    let var_1 = _wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, _wgslsmith_sub_i32(u_input.c.x, _wgslsmith_dot_vec2_i32(u_input.c.zw, u_input.c.yy)) ^ (_wgslsmith_clamp_i32(u_input.c.x, u_input.c.x, u_input.d) ^ ~0i), u_input.e), u_input.c.xxz, u_input.c.ywz | (~vec3<i32>(3267i, u_input.d, u_input.d) >> (~_wgslsmith_sub_vec3_u32(vec3<u32>(0u, u_input.a.x, u_input.b), u_input.a.ywy) % vec3<u32>(32u))));
    var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.x, -343f, var_0.a.x) * vec3<f32>(778f, -2914f, -1688f)) + var_0.a), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.x, 537f, 1139f) * var_0.a), vec3<f32>(var_0.a.x, var_0.a.x, 1716f)))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-553f, var_0.a.x, 1000f))))));
    let var_2 = ~_wgslsmith_mult_vec3_u32(u_input.a.xww, u_input.a.zzw);
    let var_3 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1604f, _wgslsmith_div_f32(-1590f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-251f, var_0.a.x)))), _wgslsmith_f_op_f32(sign(-337f)), _wgslsmith_f_op_f32(trunc(var_0.a.x)))));
    var var_4 = ~_wgslsmith_sub_u32(reverseBits(u_input.a.x), _wgslsmith_mod_u32(firstTrailingBit(0u), 4294967295u));
    global2 = array<Struct_4, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(min(reverseBits(-(~u_input.c.yxy)), -var_1), u_input.d, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_0.a.x, -1423f)), 1846f), 506f)));
}

