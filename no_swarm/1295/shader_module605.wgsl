struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: vec2<f32>,
    d: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec4<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 1> = array<Struct_4, 1>(Struct_4(Struct_1(true, vec2<f32>(446f, -924f), vec2<f32>(1054f, -1025f), 5658u), Struct_2(vec2<i32>(8253i, 0i), vec4<u32>(1u, 60232u, 53193u, 1u)), vec2<f32>(523f, -607f)));

var<private> global1: vec2<u32>;

var<private> global2: f32 = 1000f;

var<private> global3: array<Struct_4, 2>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_4, arg_2: f32) -> vec2<f32> {
    var var_0 = 1i;
    let var_1 = _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(~u_input.a.x, ~(i32(-1i) * -35147i), ~1i), _wgslsmith_mult_vec3_i32(~vec3<i32>(-21949i, u_input.a.x, u_input.a.x), vec3<i32>(1i, 1i, -1i) & u_input.a.wzy) ^ vec3<i32>(u_input.a.x, u_input.a.x, -17021i)), ~(-u_input.a.yxz));
    let var_2 = _wgslsmith_add_i32(1i, ~(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(var_1.zz, vec2<i32>(1i, var_1.x)), u_input.a.x, ~arg_1.b.a.x) >> (countOneBits(countOneBits(1u)) % 32u)));
    let var_3 = Struct_2(_wgslsmith_add_vec2_i32(select(vec2<i32>(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.a.x, 36725i, var_1.x), u_input.a)), ~u_input.a.yy, vec2<bool>(true, select(true, arg_1.a.a, false))), ~vec2<i32>(arg_1.b.a.x, ~arg_1.b.a.x)), vec4<u32>(_wgslsmith_add_u32(select(22198u, 1u, true), ~arg_1.a.d) << (u_input.b % 32u), 4294967295u, reverseBits(4294967295u), 58684u ^ abs(arg_1.a.d)));
    let var_4 = vec4<bool>(all(select(select(vec4<bool>(false, arg_1.a.a, arg_1.a.a, arg_1.a.a), !vec4<bool>(arg_1.a.a, true, true, arg_1.a.a), select(vec4<bool>(arg_1.a.a, arg_1.a.a, arg_1.a.a, arg_1.a.a), vec4<bool>(false, arg_1.a.a, arg_1.a.a, true), vec4<bool>(false, arg_1.a.a, false, false))), !select(vec4<bool>(arg_1.a.a, false, true, arg_1.a.a), vec4<bool>(false, arg_1.a.a, arg_1.a.a, arg_1.a.a), vec4<bool>(true, false, arg_1.a.a, false)), all(select(vec2<bool>(false, false), vec2<bool>(true, false), true)))), all(!vec2<bool>(true, !arg_1.a.a)), arg_1.a.a, select(false, true, all(select(!vec2<bool>(arg_1.a.a, arg_1.a.a), select(vec2<bool>(false, false), vec2<bool>(false, false), arg_1.a.a), arg_1.a.c.x <= arg_0.x))));
    return arg_0.xw;
}

fn func_2() -> Struct_1 {
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-698f + 1f), _wgslsmith_f_op_f32(-348f - 1000f)));
    var var_0 = Struct_4(Struct_1(true, _wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(830f, 679f, 1692f, 328f))), Struct_4(Struct_1(false, vec2<f32>(150f, -590f), vec2<f32>(2180f, -502f), 64155u), Struct_2(u_input.a.wx, vec4<u32>(0u, 0u, 4294967295u, 58991u)), vec2<f32>(1f, 1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2234f * 126f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(vec4<f32>(523f, 1436f, 798f, -2164f), global0[_wgslsmith_index_u32(global1.x, 1u)], 1000f)))), _wgslsmith_div_u32(48502u, ~(~global1.x))), Struct_2(vec2<i32>(u_input.a.x, -1i), vec4<u32>(41576u, global1.x, _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(u_input.c, u_input.c), ~global1.x), global1.x)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(560f, -442f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1800f))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1284f - -134f))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.b.x, 238f, 378f, -174f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(463f, var_0.c.x, 1352f, var_0.c.x)) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-2698f, var_0.c.x, -1664f, var_0.c.x), vec4<f32>(var_0.c.x, var_0.c.x, var_0.c.x, 2053f)))))));
    global0 = array<Struct_4, 1>();
    var var_2 = var_0.a;
    return Struct_1(true, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.a.c * var_1.yx), vec2<f32>(875f, var_1.x))), vec2<f32>(1222f, _wgslsmith_f_op_f32(-210f + _wgslsmith_f_op_f32(f32(-1f) * -279f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(var_2.c.x, -602f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-703f, var_1.x) + vec2<f32>(var_0.a.b.x, var_2.b.x)))))), 35652u << (global1.x % 32u));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec4<i32>, arg_3: Struct_4) -> Struct_1 {
    var var_0 = Struct_1(true, arg_3.c, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-arg_0.c))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_3.c), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-420f, arg_0.c.x))) * vec2<f32>(_wgslsmith_f_op_f32(max(-805f, arg_0.b.x)), _wgslsmith_f_op_f32(max(arg_0.c.x, arg_0.b.x)))), arg_3.a.a)), 59793u);
    global1 = ~u_input.c.wy;
    var var_1 = Struct_4(Struct_1(select(_wgslsmith_sub_i32(16809i, -1i), u_input.a.x, arg_0.a) == _wgslsmith_sub_i32(_wgslsmith_mult_i32(-2147483647i, 0i), max(arg_2.x, arg_2.x)), arg_3.c, vec2<f32>(-438f, arg_0.b.x), arg_3.a.d), Struct_2(arg_3.b.a, vec4<u32>(global1.x, _wgslsmith_add_u32(arg_0.d, 15009u), global1.x, _wgslsmith_sub_u32(arg_3.a.d, 4294967295u)) >> (select(firstLeadingBit(arg_3.b.b), u_input.c | vec4<u32>(arg_0.d, arg_0.d, arg_3.a.d, global1.x), !arg_1.x) % vec4<u32>(32u))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_0.c.x - _wgslsmith_f_op_f32(select(arg_3.a.b.x, -459f, arg_3.a.a))), 642f)));
    global3 = array<Struct_4, 2>();
    var var_2 = arg_3.a.b.x;
    return func_2();
}

fn func_5(arg_0: Struct_1) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c.x, 388f, arg_0.b.x, 341f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-516f, arg_0.c.x, 724f, 396f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c.x, arg_0.c.x, arg_0.b.x, arg_0.b.x)) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1177f, arg_0.b.x, arg_0.b.x, arg_0.b.x))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(976f, _wgslsmith_f_op_f32(-arg_0.b.x), -2657f, _wgslsmith_f_op_f32(-492f - -2943f))))));
    let var_1 = _wgslsmith_f_op_vec3_f32(select(var_0.ywy, vec3<f32>(var_0.x, 419f, _wgslsmith_f_op_f32(1000f - var_0.x)), false));
    global2 = -772f;
    let var_2 = vec4<bool>(arg_0.a & (arg_0.a || !(!arg_0.a)), countOneBits(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(u_input.a, u_input.a), firstLeadingBit(u_input.a))) >= ((reverseBits(u_input.a.x) << (~arg_0.d % 32u)) ^ -31006i), !arg_0.a, !(true | arg_0.a));
    var var_3 = Struct_2(-vec2<i32>(max(u_input.a.x, 0i), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(u_input.a.yz, u_input.a.wz), ~11553i)), u_input.c);
    return Struct_3(!var_2.x, arg_0, _wgslsmith_div_i32(-13356i, -4630i));
}

fn func_6(arg_0: Struct_3) -> Struct_2 {
    let var_0 = arg_0.b.b.x;
    return Struct_2(vec2<i32>(-_wgslsmith_add_i32(arg_0.c >> (0u % 32u), abs(u_input.a.x)), reverseBits(_wgslsmith_add_i32(u_input.a.x, arg_0.c)) << (_wgslsmith_add_u32(_wgslsmith_sub_u32(33932u, 30428u), countOneBits(4294967295u)) % 32u)), countOneBits(vec4<u32>(~(~48480u), 58485u, arg_0.b.d, ~min(54626u, 70279u))));
}

fn func_1(arg_0: i32, arg_1: Struct_2) -> f32 {
    var var_0 = func_6(func_5(func_4(func_2(), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), true), vec2<bool>(true, true)), vec4<i32>(abs(u_input.a.x), 0i, -2578i, firstTrailingBit(u_input.a.x)), Struct_4(func_2(), arg_1, _wgslsmith_f_op_vec2_f32(vec2<f32>(1860f, -303f) - vec2<f32>(-607f, 248f))))));
    var var_1 = vec3<bool>(any(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), true)), all(vec2<bool>(func_4(Struct_1(true, vec2<f32>(-1456f, 632f), vec2<f32>(-988f, -418f), arg_1.b.x), vec2<bool>(false, true), vec4<i32>(-1i, u_input.a.x, arg_0, -2147483647i), global0[_wgslsmith_index_u32(1u, 1u)]).a && true, all(vec3<bool>(true, true, true)))), !any(vec3<bool>(true, true, true)));
    let var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_4(Struct_1(var_1.x, vec2<f32>(1000f, 1207f), vec2<f32>(-214f, -993f), var_0.b.x), !vec2<bool>(true, var_1.x), ~u_input.a, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(2970u, var_0.b.x), 1u)]).c.x) - _wgslsmith_f_op_f32(trunc(2320f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(1f))))));
    let var_3 = func_2();
    let var_4 = _wgslsmith_f_op_vec2_f32(var_3.b * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(var_3, vec2<bool>(var_3.a, var_1.x), firstTrailingBit(u_input.a), Struct_4(var_3, Struct_2(arg_1.a, u_input.c), vec2<f32>(var_3.c.x, var_2))).c + vec2<f32>(_wgslsmith_f_op_f32(trunc(-825f)), _wgslsmith_f_op_f32(f32(-1f) * -276f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(vec4<f32>(551f, var_2, 233f, var_2), Struct_4(var_3, arg_1, var_3.b), var_2))))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.b.x + var_4.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.x))), -1752f);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = 1513f;
    var var_0 = -u_input.a.xzy;
    global2 = 1423f;
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + 1000f) + _wgslsmith_f_op_f32(max(-1247f, 1819f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_1(2147483647i, Struct_2(vec2<i32>(-7450i, 1i), u_input.c))))))));
    let var_1 = Struct_1(false, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -956f) * 1346f)), _wgslsmith_div_f32(-906f, _wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1000f, 679f, 789f, 2460f))), Struct_4(Struct_1(true, vec2<f32>(250f, -1690f), vec2<f32>(-1107f, 1000f), global1.x), Struct_2(vec2<i32>(u_input.a.x, 1i), u_input.c), vec2<f32>(-1000f, 1150f)), -348f)).x)), _wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1040f, -941f, func_2().b.x, _wgslsmith_f_op_f32(f32(-1f) * -1042f)))), Struct_4(Struct_1(true, _wgslsmith_f_op_vec2_f32(vec2<f32>(-519f, -569f) - vec2<f32>(-963f, -340f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1207f, 451f)), u_input.c.x), func_6(func_5(Struct_1(false, vec2<f32>(-645f, 353f), vec2<f32>(615f, 744f), 0u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(248f, -2108f)))), 681f)), 14240u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.x, var_1.c.x, var_1.c.x, var_1.c.x))))), u_input.c.x, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.b.x, 807f, -961f, 391f), vec4<f32>(-1265f, -1000f, -146f, var_1.c.x)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1581f, var_1.c.x, 1231f, -752f), vec4<f32>(var_1.b.x, 911f, var_1.b.x, var_1.b.x))))))))), 1u);
}

