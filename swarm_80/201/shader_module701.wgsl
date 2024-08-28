struct Struct_1 {
    a: f32,
    b: u32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: f32,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 25>;

var<private> global1: array<bool, 24>;

var<private> global2: i32;

var<private> global3: array<Struct_2, 29>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> vec2<f32> {
    var var_0 = global0[_wgslsmith_index_u32(0u, 25u)];
    var var_1 = Struct_1(var_0.a, var_0.b, select(vec3<bool>(global1[_wgslsmith_index_u32(0u, 24u)], false, any(!vec4<bool>(var_0.c.x, true, var_0.c.x, var_0.c.x))), vec3<bool>(true, global1[_wgslsmith_index_u32(var_0.b, 24u)], !all(vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 24u)], false, var_0.c.x, true))), var_0.c.x));
    let var_2 = false;
    global3 = array<Struct_2, 29>();
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-1035f)), _wgslsmith_f_op_f32(abs(var_0.a)))))), countOneBits(4294967295u), vec3<bool>(var_0.c.x || all(var_1.c), true, any(!select(vec4<bool>(true, false, var_0.c.x, var_0.c.x), vec4<bool>(var_0.c.x, global1[_wgslsmith_index_u32(var_0.b, 24u)], var_1.c.x, true), vec4<bool>(global1[_wgslsmith_index_u32(var_0.b, 24u)], global1[_wgslsmith_index_u32(var_0.b, 24u)], var_0.c.x, global1[_wgslsmith_index_u32(var_1.b, 24u)])))));
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_1.a, var_3.a)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(500f + var_0.a), _wgslsmith_f_op_f32(var_0.a * 162f)))));
}

fn func_2(arg_0: i32, arg_1: vec2<f32>, arg_2: Struct_2, arg_3: f32) -> f32 {
    var var_0 = u_input.d.zz;
    let var_1 = countOneBits(_wgslsmith_mult_i32(-(5425i << (u_input.b % 32u)), 0i));
    let var_2 = false;
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.c, arg_2.b) + vec2<f32>(-373f, 533f)) * arg_1) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(arg_1)) + _wgslsmith_f_op_vec2_f32(arg_1 - arg_1))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3()) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(arg_1)) * vec2<f32>(arg_2.c, 1000f))))) - vec2<f32>(arg_2.b, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-597f, arg_3)), -319f))));
    var var_4 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.c, arg_2.c, 556f, -1000f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(754f, -523f, arg_3, 338f))), true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-821f, -1000f, var_3.x, var_3.x), vec4<f32>(arg_1.x, -343f, arg_3, 261f), vec4<bool>(global1[_wgslsmith_index_u32(4325u, 24u)], false, var_2, var_2))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-107f, -700f, var_3.x, -1475f) * vec4<f32>(arg_2.b, arg_3, arg_2.c, arg_3)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(arg_2.b)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_2.b - -270f))), -727f, _wgslsmith_f_op_f32(abs(1256f))))));
    return var_3.x;
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: vec2<u32>, arg_3: f32) -> bool {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(select(~vec2<u32>(1u, 38210u), ~arg_2, true), arg_2), 24u)];
    var_0 = !(firstTrailingBit(13971u) > _wgslsmith_add_u32(arg_1.d & ~u_input.b, _wgslsmith_sub_u32(u_input.b, _wgslsmith_mult_u32(arg_1.d, 1u))));
    let var_1 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0.x * -1925f)))), arg_3, _wgslsmith_f_op_f32(436f - 301f), arg_3), vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), arg_1.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.c - arg_3), arg_3)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(969f, arg_0.x)))))), !select(!vec4<bool>(global1[_wgslsmith_index_u32(74465u, 24u)], global1[_wgslsmith_index_u32(arg_1.d, 24u)], true, false), vec4<bool>(!global1[_wgslsmith_index_u32(arg_1.d, 24u)], true, true, all(vec4<bool>(global1[_wgslsmith_index_u32(arg_1.d, 24u)], false, false, global1[_wgslsmith_index_u32(arg_2.x, 24u)]))), _wgslsmith_f_op_f32(-arg_0.x) > arg_0.x)));
    global2 = arg_1.a;
    let var_2 = Struct_1(1000f, ~_wgslsmith_clamp_u32(abs(u_input.a), ~arg_1.d, 0u), vec3<bool>(any(vec2<bool>(global1[_wgslsmith_index_u32(countOneBits(u_input.b), 24u)], false && global1[_wgslsmith_index_u32(u_input.b, 24u)])), !global1[_wgslsmith_index_u32(countOneBits(1u), 24u)], global1[_wgslsmith_index_u32(arg_1.d, 24u)]));
    return true;
}

fn func_5(arg_0: vec4<f32>, arg_1: bool, arg_2: vec3<bool>, arg_3: Struct_1) -> vec2<u32> {
    let var_0 = _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, arg_3.b, 0u, u_input.b), vec4<u32>(8526u, u_input.a, 92238u, arg_3.b), vec4<u32>(110441u, u_input.b, 11391u, arg_3.b)), _wgslsmith_clamp_vec4_u32(vec4<u32>(29197u, 76056u, arg_3.b, arg_3.b), vec4<u32>(4294967295u, u_input.b, arg_3.b, 4294967295u) << (vec4<u32>(u_input.a, arg_3.b, 114528u, 4294967295u) % vec4<u32>(32u)), select(vec4<u32>(u_input.b, u_input.a, 1u, 0u), vec4<u32>(4294967295u, 1u, arg_3.b, arg_3.b), false))), max(vec4<u32>(_wgslsmith_clamp_u32(68284u, u_input.b, u_input.a), reverseBits(arg_3.b), _wgslsmith_clamp_u32(0u, 4294967295u, 4294967295u), 49875u), vec4<u32>(arg_3.b, 91183u, u_input.b, 12958u) | _wgslsmith_mod_vec4_u32(vec4<u32>(0u, 44478u, 69221u, arg_3.b), vec4<u32>(u_input.b, arg_3.b, 63817u, u_input.b)))), firstTrailingBit(vec4<u32>(u_input.b, ~u_input.b, select(arg_3.b, arg_3.b, false), arg_3.b)) >> (vec4<u32>(4294967295u, 3030u, _wgslsmith_sub_u32(arg_3.b, arg_3.b) | u_input.a, abs(_wgslsmith_add_u32(1u, arg_3.b))) % vec4<u32>(32u)));
    let var_1 = global0[_wgslsmith_index_u32(0u, 25u)];
    var var_2 = var_0;
    let var_3 = -334f;
    var_2 = min(vec4<u32>(u_input.a, 1u, var_0.x, _wgslsmith_mult_u32(_wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.b, 17793u), _wgslsmith_div_u32(var_2.x, 4294967295u)), ~(~32530u))), vec4<u32>(~(~27154u), ~select(var_0.x, 46959u >> (arg_3.b % 32u), arg_3.c.x), _wgslsmith_dot_vec3_u32(var_0.xxy, _wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(96138u, var_2.x, 33261u), var_0.xwx), var_0.zyy)), _wgslsmith_dot_vec4_u32(~(~var_0), countOneBits(var_0))));
    return var_0.zy;
}

fn func_1() -> vec3<bool> {
    let var_0 = !global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b, 1u, 4294967295u) ^ vec3<u32>(4294967295u, u_input.a, u_input.a), vec3<u32>(u_input.b << (u_input.a % 32u), 28444u, 21359u)), _wgslsmith_mult_u32(u_input.b, 55474u)), 24u)];
    global1 = array<bool, 24>();
    let var_1 = func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-148f, -1538f, -679f, 115f))), vec4<f32>(336f, 894f, -932f, 1330f)) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(253f, -858f, 858f, 373f) + vec4<f32>(-295f, 2199f, 2140f, -2449f)))))), func_4(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1862f * 2897f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(u_input.e, vec2<f32>(-1541f, 131f), global3[_wgslsmith_index_u32(u_input.a, 29u)], -370f)))), global3[_wgslsmith_index_u32(4294967295u, 29u)], _wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(u_input.a, 1u), u_input.b), _wgslsmith_mult_vec2_u32(min(vec2<u32>(4294967295u, 0u), vec2<u32>(u_input.b, 15672u)), ~vec2<u32>(u_input.a, u_input.b))), _wgslsmith_f_op_f32(select(232f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1836f) - _wgslsmith_f_op_f32(step(-424f, -1591f))), var_0))), select(!(!vec3<bool>(global1[_wgslsmith_index_u32(13660u, 24u)], false, true)), vec3<bool>(!(!var_0), false, var_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(755f + 3717f) + _wgslsmith_f_op_f32(select(187f, 919f, false))) >= 874f), global0[_wgslsmith_index_u32(~firstTrailingBit(u_input.b), 25u)]);
    let var_2 = var_1.x ^ var_1.x;
    let var_3 = abs(abs(select(~u_input.b, max(abs(u_input.b), ~var_2), false)));
    return select(select(!select(vec3<bool>(var_0, false, var_0), vec3<bool>(false, var_0, var_0), true), !select(select(vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.b, 24u)], var_0), vec3<bool>(global1[_wgslsmith_index_u32(var_2, 24u)], var_0, var_0), true), !vec3<bool>(true, global1[_wgslsmith_index_u32(var_2, 24u)], true), false), true), !vec3<bool>(true, !(var_0 && global1[_wgslsmith_index_u32(var_3, 24u)]), var_0), select(vec3<bool>(!any(vec3<bool>(global1[_wgslsmith_index_u32(0u, 24u)], global1[_wgslsmith_index_u32(var_2, 24u)], var_0)), 64031u <= reverseBits(var_3), var_0), vec3<bool>(!global1[_wgslsmith_index_u32(abs(var_2), 24u)], var_0, false), vec3<bool>(true, true, !select(global1[_wgslsmith_index_u32(1u, 24u)], true, global1[_wgslsmith_index_u32(var_2, 24u)]))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!func_1());
    let var_1 = select(select(vec3<bool>(true, false, !(!var_0.x)), var_0, true), !vec3<bool>(var_0.x, var_0.x, func_1().x), !((-36168i <= u_input.d.x) || true));
    let var_2 = reverseBits(_wgslsmith_dot_vec3_i32(u_input.d, _wgslsmith_mod_vec3_i32(u_input.d, u_input.d)));
    global3 = array<Struct_2, 29>();
    var var_3 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(-24599i, select(abs(min(u_input.a | u_input.b, 4294967295u)), 0u, func_1().x), vec4<i32>(~(var_2 >> (~u_input.a % 32u)), reverseBits(0i), _wgslsmith_add_i32(-u_input.c, var_2 & 15566i), -_wgslsmith_div_i32(var_2, var_2)));
}

