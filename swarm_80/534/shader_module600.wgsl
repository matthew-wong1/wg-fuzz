struct Struct_1 {
    a: f32,
    b: f32,
    c: u32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: bool,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: f32,
    b: vec4<i32>,
    c: vec4<bool>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_2,
    c: vec3<f32>,
    d: Struct_2,
}

struct Struct_5 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
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

var<private> global0: array<i32, 30> = array<i32, 30>(30925i, 0i, 0i, -30022i, 0i, -35184i, 1i, 1i, 2147483647i, 0i, -52812i, -1i, 8288i, 26462i, 51719i, i32(-2147483648), 19660i, 2147483647i, -16107i, 2147483647i, 51739i, -1505i, i32(-2147483648), 0i, 2147483647i, 0i, 21661i, i32(-2147483648), -10550i, -11143i);

var<private> global1: Struct_3;

var<private> global2: array<Struct_3, 30>;

var<private> global3: u32 = 0u;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_2) -> u32 {
    global3 = 4294967295u;
    var var_0 = arg_0.a.c;
    let var_1 = false;
    global2 = array<Struct_3, 30>();
    var var_2 = (min(-vec4<i32>(arg_0.a.d.x, global0[_wgslsmith_index_u32(4294967295u, 30u)], u_input.a, global1.b.x), ~_wgslsmith_clamp_vec4_i32(global1.b, vec4<i32>(global1.b.x, -2147483647i, -1i, -4540i), global1.b)) >> ((~max(vec4<u32>(1u, u_input.c, u_input.b, arg_0.d.c), vec4<u32>(34392u, u_input.c, 4294967295u, arg_0.a.c)) >> (~vec4<u32>(4294967295u, arg_0.a.c, 4294967295u, 1u) % vec4<u32>(32u))) % vec4<u32>(32u))) ^ global1.b;
    return firstLeadingBit(0u);
}

fn func_2(arg_0: f32) -> i32 {
    var var_0 = Struct_1(arg_0, -1401f, 6666u & firstLeadingBit(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, u_input.b, u_input.c), vec3<u32>(1u, 0u, 0u)), _wgslsmith_clamp_u32(68806u, u_input.b, u_input.b), func_3(Struct_2(Struct_1(global1.a, 2125f, u_input.c, vec2<i32>(-2147483647i, 2147483647i)), vec4<f32>(-810f, global1.a, 1000f, global1.a), false, Struct_1(global1.a, global1.a, u_input.b, global1.b.yx), -18411i)))), firstLeadingBit(vec2<i32>(reverseBits(-2147483647i) | ~global1.b.x, global1.b.x)));
    var var_1 = Struct_4(global1.c, Struct_2(Struct_1(1381f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.b))), var_0.c, vec2<i32>(u_input.a & u_input.a, var_0.d.x)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(global1.a + -1245f), global1.a, var_0.b, _wgslsmith_f_op_f32(ceil(var_0.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a, -924f, -427f, var_0.b))))), global1.c.x, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000f)) * var_0.a), var_0.b, 0u, vec2<i32>(-2147483647i, min(27933i, 2147483647i))), _wgslsmith_sub_i32(_wgslsmith_div_i32(firstLeadingBit(-42459i), i32(-1i) * -45868i), -global0[_wgslsmith_index_u32(u_input.b >> (u_input.c % 32u), 30u)])), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.b, -836f, -123f))) * vec3<f32>(1180f, -703f, arg_0)), vec3<f32>(var_0.a, var_0.a, _wgslsmith_f_op_f32(-var_0.b))))), Struct_2(Struct_1(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(1120f)))), ~5285u, global1.b.zy), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(floor(global1.a)), _wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(global1.a - -714f), arg_0))), !any(global1.c.wz), Struct_1(_wgslsmith_f_op_f32(step(-146f, -1191f)), arg_0, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.c, 4294967295u, u_input.b, u_input.b), _wgslsmith_sub_vec4_u32(vec4<u32>(var_0.c, var_0.c, u_input.b, 4294967295u), vec4<u32>(4294967295u, 1u, 1u, u_input.c))), vec2<i32>(global1.b.x, ~(-44344i))), _wgslsmith_add_i32(-var_0.d.x ^ 55399i, -12567i)));
    global0 = array<i32, 30>();
    let var_2 = Struct_5(max(min(select(abs(vec2<u32>(var_0.c, u_input.b)), select(vec2<u32>(0u, var_0.c), vec2<u32>(31769u, 1u), vec2<bool>(global1.c.x, true)), vec2<bool>(false, var_1.d.c)), _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(var_0.c, 4294967295u)) >> (~vec2<u32>(21927u, 0u) % vec2<u32>(32u))), _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(u_input.b, var_0.c), 15837u), select(~vec2<u32>(12533u, 23165u), ~vec2<u32>(var_1.d.d.c, 1u), select(global1.c.wx, vec2<bool>(true, var_1.d.c), global1.c.x)))));
    let var_3 = min(65287i, firstTrailingBit(~14048i));
    return _wgslsmith_clamp_i32(abs(-(~0i)) << (~_wgslsmith_sub_u32(var_0.c, _wgslsmith_div_u32(u_input.c, var_0.c)) % 32u), (~var_0.d.x & _wgslsmith_sub_i32(0i, -2988i)) << (4294967295u % 32u), max(u_input.a, min(-21744i >> (var_2.a.x % 32u), _wgslsmith_add_i32(-1i, var_3))) ^ min(u_input.a, min(0i, firstLeadingBit(35689i))));
}

fn func_1() -> Struct_5 {
    global3 = firstTrailingBit(~u_input.c);
    let var_0 = vec4<bool>(false, any(select(!(!vec4<bool>(false, true, false, global1.c.x)), global1.c, true)), true, true);
    let var_1 = -2147483647i;
    let var_2 = ~vec3<i32>(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~_wgslsmith_mod_u32(1u, u_input.b), u_input.b), 30u)], _wgslsmith_sub_i32(_wgslsmith_mult_i32(firstTrailingBit(0i), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.b, 2470u, u_input.c), 30u)]), func_2(global1.a)), _wgslsmith_add_i32(-28066i, (global1.b.x << (u_input.c % 32u)) << (_wgslsmith_div_u32(u_input.b, 26086u) % 32u)));
    var var_3 = Struct_4(global1.c, Struct_2(Struct_1(1000f, global1.a, u_input.b, vec2<i32>(-1i, func_2(-1000f))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(484f, global1.a, global1.a, 1000f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a, global1.a, global1.a, 444f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a, global1.a, global1.a, 228f))))), select(!(global1.c.x && global1.c.x), false, var_0.x), Struct_1(1000f, _wgslsmith_f_op_f32(round(global1.a)), min(_wgslsmith_mult_u32(u_input.c, u_input.b), _wgslsmith_div_u32(u_input.c, 85083u)), ~global1.b.yz), u_input.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-472f, global1.a, -228f), vec3<f32>(-829f, global1.a, -1000f), global1.c.www)) - vec3<f32>(1323f, global1.a, global1.a))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a, global1.a, global1.a)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(772f, global1.a, 542f))))), Struct_2(Struct_1(global1.a, global1.a, ~_wgslsmith_clamp_u32(0u, 8923u, 57816u), vec2<i32>(-global0[_wgslsmith_index_u32(u_input.b, 30u)], -var_1)), vec4<f32>(_wgslsmith_f_op_f32(global1.a - _wgslsmith_f_op_f32(global1.a * -236f)), global1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), -924f), !select(var_0.x, global1.c.x, 47313i == global1.b.x), Struct_1(_wgslsmith_f_op_f32(global1.a * _wgslsmith_f_op_f32(abs(global1.a))), -776f, 1u, vec2<i32>(-2147483647i, 0i)), i32(-1i) * -global0[_wgslsmith_index_u32(~u_input.c, 30u)]));
    return Struct_5(_wgslsmith_mod_vec2_u32(abs(vec2<u32>(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_3.b.a.c, 0u, 0u, 1u), vec4<u32>(var_3.b.a.c, u_input.c, var_3.d.d.c, var_3.d.d.c)))), vec2<u32>(0u, 4294967295u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.a)));
    global2 = array<Struct_3, 30>();
    let var_2 = Struct_4(vec4<bool>(!all(vec3<bool>(false, global1.c.x, global1.c.x)) & false, !global1.c.x, all(global1.c.wwy), global1.c.x), Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global1.a)) + _wgslsmith_f_op_f32(max(global1.a, 791f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(2622f))), select(u_input.b, 53534u, global1.c.x), global1.b.wz), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(326f, -1243f, global1.a, global1.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1273f, 1139f, global1.a, -308f)))), true, Struct_1(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1000f, 1674f)) + _wgslsmith_f_op_f32(step(global1.a, -112f))), abs(var_0.a.x), vec2<i32>(-51738i, u_input.a)), -1i), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a, -1164f, 854f) - vec3<f32>(global1.a, -157f, global1.a)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a, 555f, global1.a) * vec3<f32>(global1.a, 638f, global1.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1673f, global1.a, global1.a), vec3<f32>(-622f, -436f, 253f)))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(214f, 863f, global1.a))))))), Struct_2(Struct_1(-389f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a * 777f)), min(var_0.a.x, 1u) << (abs(u_input.b) % 32u), _wgslsmith_div_vec2_i32(global1.b.zw, vec2<i32>(-1i, global1.b.x))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global1.a, global1.a, -545f, 369f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, global1.a, global1.a, 307f)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-485f, global1.a, -558f, global1.a), vec4<f32>(global1.a, global1.a, -1066f, global1.a), vec4<bool>(global1.c.x, global1.c.x, true, false))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a, 1000f, 144f, global1.a) * vec4<f32>(global1.a, global1.a, 445f, global1.a))))), global1.c.x, Struct_1(-142f, 1f, firstTrailingBit(_wgslsmith_add_u32(u_input.c, u_input.c)), vec2<i32>(u_input.a, _wgslsmith_mult_i32(-1i, global0[_wgslsmith_index_u32(65439u, 30u)]))), -global1.b.x));
    var var_3 = vec3<bool>(global1.c.x, all(!var_2.a.zwy) & (false | !any(vec4<bool>(false, global1.c.x, var_2.b.c, false))), all(vec4<bool>(!(!var_2.d.c), var_2.a.x, !global1.c.x, true || !var_2.d.c)));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b.d.a);
}

