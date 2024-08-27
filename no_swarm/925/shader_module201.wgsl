struct Struct_1 {
    a: f32,
    b: u32,
    c: u32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec3<bool>,
    d: vec2<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: Struct_2,
    d: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<f32, 15> = array<f32, 15>(-826f, 1794f, -1000f, -1000f, 1266f, -1120f, 1146f, 165f, 1870f, 212f, 367f, 163f, 2269f, -825f, 909f);

var<private> global2: array<f32, 10>;

var<private> global3: array<u32, 15> = array<u32, 15>(1u, 4294967295u, 4294967295u, 4294967295u, 4294967295u, 4294967295u, 25578u, 41506u, 8939u, 1u, 46895u, 1006u, 0u, 32509u, 47760u);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: vec2<i32>) -> u32 {
    global2 = array<f32, 10>();
    var var_0 = Struct_4(vec4<i32>(2147483647i, _wgslsmith_mult_i32(arg_2.x, 34382i), _wgslsmith_sub_i32(_wgslsmith_add_i32(arg_0.d.x, 2147483647i) | _wgslsmith_div_i32(-1i, arg_2.x), u_input.b.x), _wgslsmith_div_i32(arg_2.x, arg_2.x)), select(arg_2, min(abs(~arg_0.d.zx), arg_0.d.xz), !(!select(vec2<bool>(arg_1, true), vec2<bool>(arg_1, true), arg_1))), Struct_2(Struct_1(_wgslsmith_div_f32(1376f, _wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(0u, 15u)], arg_0.a))), 59909u, _wgslsmith_dot_vec2_u32(u_input.d.zz, u_input.d.xz), (u_input.b.zzz & vec3<i32>(1552i, arg_2.x, 2147483647i)) >> (vec3<u32>(1u, 0u, 1u) % vec3<u32>(32u))), arg_2.x, !select(vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(arg_1, false, true), vec3<bool>(false, true, true)), vec2<f32>(global1[_wgslsmith_index_u32(~arg_0.b | ~u_input.d.x, 15u)], _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(1u, 15u)]))))), arg_0), Struct_3(arg_0, any(!select(vec4<bool>(arg_1, arg_1, false, arg_1), vec4<bool>(arg_1, false, true, arg_1), vec4<bool>(arg_1, arg_1, arg_1, arg_1))), vec3<u32>(_wgslsmith_clamp_u32(2019u, 124413u, _wgslsmith_sub_u32(1u, arg_0.c)), _wgslsmith_mult_u32(4294967295u | global3[_wgslsmith_index_u32(39441u, 15u)], ~u_input.d.x), global3[_wgslsmith_index_u32(arg_0.b, 15u)]), _wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(-16613i, arg_2.x), 22269i), arg_0.d.xz)));
    let var_1 = -458f;
    global3 = array<u32, 15>();
    var var_2 = 55515u;
    return global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.d, min(reverseBits(u_input.d), u_input.c)), 15u)], 15u)];
}

fn func_2() -> Struct_1 {
    global1 = array<f32, 15>();
    global3 = array<u32, 15>();
    global3 = array<u32, 15>();
    return Struct_1(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.c.x, 15u)] - global2[_wgslsmith_index_u32(4294967295u, 10u)]), ~countOneBits(4294967295u) | (abs(1u) | u_input.c.x), _wgslsmith_div_u32(firstTrailingBit(u_input.d.x), global3[_wgslsmith_index_u32(func_3(Struct_1(-279f, ~29823u, 0u, -u_input.b.yxw), true, vec2<i32>(_wgslsmith_dot_vec4_i32(u_input.b, u_input.b), u_input.b.x & u_input.a)), 15u)]), u_input.b.ywz);
}

fn func_1() -> Struct_4 {
    global3 = array<u32, 15>();
    global3 = array<u32, 15>();
    var var_0 = Struct_2(func_2(), u_input.a, !vec3<bool>(true && all(vec2<bool>(true, false)), (global3[_wgslsmith_index_u32(16354u, 15u)] <= global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.c.x, 15u)], 15u)]) || true, select(select(true, true, false), true, 1u < u_input.c.x)), vec2<f32>(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.c.x, abs(_wgslsmith_dot_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 15u)], 15u)], 15u)], u_input.d.x, global3[_wgslsmith_index_u32(4294967295u, 15u)]), u_input.c))), 15u)], _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1268f, global2[_wgslsmith_index_u32(26005u, 10u)])), _wgslsmith_f_op_f32(select(1047f, global1[_wgslsmith_index_u32(u_input.d.x, 15u)], false))))), Struct_1(_wgslsmith_f_op_f32(1449f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 15u)], 10u)] - global2[_wgslsmith_index_u32(u_input.c.x, 10u)]), _wgslsmith_f_op_f32(f32(-1f) * -162f))), 1u, ~func_3(Struct_1(global2[_wgslsmith_index_u32(66341u, 10u)], 42945u, 13525u, u_input.b.ywy), 170f == global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(22926u, 15u)], 15u)], 15u)], u_input.b.xw), _wgslsmith_sub_vec3_i32(~vec3<i32>(u_input.b.x, u_input.a, u_input.b.x), u_input.b.zzy)));
    let var_1 = vec3<i32>(u_input.a, i32(-1i) * -1i, min(2147483647i, ~min(firstLeadingBit(-2147483647i), firstLeadingBit(46818i))));
    let var_2 = Struct_2(var_0.a, var_0.b, vec3<bool>(var_0.c.x, var_0.c.x, true), vec2<f32>(-242f, _wgslsmith_f_op_f32(floor(-1217f))), Struct_1(-380f, ~reverseBits(~u_input.d.x), 37259u, vec3<i32>(countOneBits(var_1.x) >> ((var_0.a.c ^ global3[_wgslsmith_index_u32(1u, 15u)]) % 32u), u_input.a, 0i)));
    return Struct_4(vec4<i32>(abs(20250i), 16902i, firstLeadingBit(-(~var_2.a.d.x)), var_1.x), firstTrailingBit(countOneBits(~select(vec2<i32>(var_2.a.d.x, 23404i), u_input.b.zw, true))), var_2, Struct_3(var_2.e, true, ~firstLeadingBit(firstTrailingBit(u_input.d)), u_input.b.wz));
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: Struct_4, arg_3: vec4<f32>) -> Struct_3 {
    let var_0 = 2147483647i;
    var var_1 = func_1().c;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-320f - arg_3.x));
    var var_2 = var_1.e;
    var var_3 = func_1().c;
    return arg_2.d;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<u32, 15>();
    let var_0 = u_input.b.x;
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(~(u_input.c.x | 4294967295u), 15u)], -2172f, global1[_wgslsmith_index_u32(~0u, 15u)]) + vec3<f32>(global2[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(29915u, 15u)], 10u)], -367f, -1220f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-260f, global1[_wgslsmith_index_u32(u_input.d.x, 15u)], 976f)), !(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), false))));
    var var_2 = vec3<i32>(-1i, 0i, _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(11251i, -2147483647i, _wgslsmith_div_i32(var_0, u_input.a)), -u_input.b.yzy), _wgslsmith_add_i32(-abs(2147483647i), _wgslsmith_div_i32(u_input.b.x, var_0 & var_0))));
    let var_3 = vec3<i32>(_wgslsmith_div_i32(i32(-1i) * -u_input.a, -reverseBits(46427i)), var_0 | max(-17697i, var_0), _wgslsmith_mod_i32(-3531i, ~126i));
    let var_4 = func_4(39214u, all(!select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true)))), func_1(), _wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(0u, 10u)], _wgslsmith_f_op_f32(f32(-1f) * -284f), -1774f, 1344f) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(251f, -1541f, -482f, 585f)))))));
    global3 = array<u32, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(21234u, _wgslsmith_clamp_u32(100292u, _wgslsmith_mod_u32(func_3(var_4.a, true, var_4.a.d.yx), u_input.c.x), u_input.d.x ^ u_input.d.x)));
}

