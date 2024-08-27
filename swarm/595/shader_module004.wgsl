struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: u32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: u32,
    c: f32,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 31>;

var<private> global1: array<vec4<f32>, 28>;

var<private> global2: Struct_3 = Struct_3(vec2<u32>(0u, 17904u), 4294967295u, 1634f, Struct_2(vec2<bool>(false, false), 52026u), Struct_1(vec3<bool>(false, false, false), 4294967295u, vec4<u32>(0u, 924u, 15494u, 91687u)));

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: f32) -> f32 {
    var var_0 = Struct_2(vec2<bool>(all(global2.e.a), true), ~u_input.a.x);
    global0 = array<vec4<u32>, 31>();
    global1 = array<vec4<f32>, 28>();
    let var_1 = Struct_1(vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.c * global2.c)) == _wgslsmith_f_op_f32(1077f - _wgslsmith_f_op_f32(f32(-1f) * -399f)), !var_0.a.x, false), var_0.b, reverseBits(global2.e.c));
    var var_2 = true;
    return arg_0;
}

fn func_4(arg_0: f32, arg_1: u32, arg_2: bool, arg_3: vec3<u32>) -> f32 {
    global2 = Struct_3(arg_3.xz, 1u, 2408f, Struct_2(select(select(vec2<bool>(true, true), vec2<bool>(false, false), select(vec2<bool>(arg_2, false), vec2<bool>(false, true), true)), select(global2.d.a, global2.d.a, arg_2), any(vec2<bool>(global2.e.a.x, global2.e.a.x))), _wgslsmith_dot_vec4_u32(select(vec4<u32>(global2.b, arg_3.x, 4294967295u, 0u), global2.e.c, vec4<bool>(arg_2, global2.d.a.x, global2.e.a.x, global2.e.a.x)), ~vec4<u32>(global2.b, 0u, arg_3.x, 36075u)) >> (arg_3.x % 32u)), global2.e);
    var var_0 = arg_2;
    var var_1 = Struct_2(global2.e.a.zz, ~((~arg_3.x | max(arg_1, global2.a.x)) | (arg_3.x << (arg_1 % 32u))));
    var var_2 = Struct_2(!vec2<bool>(any(global2.e.a), 0u == u_input.b), 30301u);
    let var_3 = Struct_3(~arg_3.yz >> (select(vec2<u32>(~global2.b, 4416u), select(vec2<u32>(0u, 0u), ~vec2<u32>(41960u, arg_1), select(var_1.a, vec2<bool>(var_1.a.x, false), global2.d.a.x)), select(!var_1.a, !vec2<bool>(true, arg_2), global2.d.a)) % vec2<u32>(32u)), ~var_2.b, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global2.c)) * -1244f), _wgslsmith_f_op_f32(step(global2.c, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-944f, arg_0) * _wgslsmith_f_op_f32(arg_0 + 247f)))), var_2.a.x)), global2.d, global2.e);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f));
}

fn func_2(arg_0: u32, arg_1: vec3<f32>, arg_2: i32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(func_3(-1673f)), 1u, all(vec2<bool>(true, any(!global2.e.a))), ~u_input.a.zyw));
    global2 = Struct_3(max(select(global2.a, ~firstLeadingBit(u_input.a.wz), arg_1.x >= var_0), ~vec2<u32>(1u, 1u)), global2.a.x, 2157f, Struct_2(select(select(select(global2.e.a.yy, global2.d.a, false), select(global2.e.a.yy, global2.e.a.xz, false), !global2.d.a), vec2<bool>(43916i > arg_2, true), vec2<bool>(global2.e.a.x, global2.e.a.x)), ~1u), global2.e);
    global2 = Struct_3(vec2<u32>(~28005u, ~(arg_0 | 4294967295u)), _wgslsmith_mod_u32(~_wgslsmith_sub_u32(arg_0, ~global2.d.b), select(u_input.a.x << (_wgslsmith_dot_vec4_u32(vec4<u32>(13564u, 1u, global2.d.b, 15677u), u_input.a) % 32u), ~(~global2.e.c.x), any(select(vec4<bool>(global2.e.a.x, global2.e.a.x, false, global2.d.a.x), vec4<bool>(false, global2.d.a.x, true, global2.e.a.x), vec4<bool>(false, global2.e.a.x, global2.d.a.x, global2.e.a.x))))), _wgslsmith_f_op_f32(global2.c + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0), 861f)) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global2.c), _wgslsmith_f_op_f32(f32(-1f) * -653f))))), Struct_2(vec2<bool>(global2.e.a.x, false), 1u | (1u >> (u_input.a.x % 32u))), Struct_1(global2.e.a, 1u, vec4<u32>(0u, ~29494u, 12833u, _wgslsmith_dot_vec3_u32(~u_input.a.www, _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, 85921u, 88767u), u_input.a.zwx)))));
    global1 = array<vec4<f32>, 28>();
    global2 = Struct_3(_wgslsmith_mod_vec2_u32(~_wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(arg_0, arg_0) >> (u_input.a.xw % vec2<u32>(32u))), vec2<u32>(~(~arg_0), _wgslsmith_div_u32(global2.b, u_input.b))), _wgslsmith_clamp_u32(reverseBits(_wgslsmith_dot_vec3_u32(u_input.a.zyx, ~vec3<u32>(u_input.b, 39762u, 0u))), reverseBits(~countOneBits(u_input.b)), firstTrailingBit(u_input.b)), 1089f, global2.d, global2.e);
    return global2.e;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec4<bool>) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.c, arg_1.c) - vec2<f32>(arg_1.c, -1000f)))))));
    global1 = array<vec4<f32>, 28>();
    global1 = array<vec4<f32>, 28>();
    let var_1 = arg_1;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(global1[_wgslsmith_index_u32(1u, 28u)], vec4<f32>(313f, -113f, global2.c, -1475f)), vec4<f32>(global2.c, arg_1.c, 1695f, 1000f)), global1[_wgslsmith_index_u32(~u_input.b, 28u)]))));
    return arg_1;
}

fn func_6(arg_0: Struct_3, arg_1: Struct_1, arg_2: f32, arg_3: vec3<u32>) -> Struct_3 {
    var var_0 = func_5(Struct_1(arg_0.e.a, _wgslsmith_div_u32(arg_0.a.x, ~4294967295u), vec4<u32>(abs(_wgslsmith_mult_u32(1u, u_input.b)), ~(~u_input.a.x), arg_1.c.x, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.c.x, u_input.a.x), ~vec2<u32>(arg_0.a.x, 51947u)))), func_5(Struct_1(select(!arg_0.e.a, !arg_1.a, !arg_0.d.a.x), ~1u, vec4<u32>(1u, ~arg_0.e.c.x, global2.e.b, arg_3.x)), Struct_3(arg_0.a, abs(_wgslsmith_div_u32(u_input.a.x, u_input.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_2, arg_2)) * _wgslsmith_f_op_f32(step(-1615f, -1051f))), Struct_2(arg_1.a.yz, arg_0.d.b), arg_1), !(!(!vec4<bool>(true, true, global2.e.a.x, true)))), !(!vec4<bool>(true, true, global2.e.a.x, false)));
    let var_1 = arg_0;
    let var_2 = Struct_3(u_input.a.ww, firstLeadingBit(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, arg_3.x, global2.e.c.x), vec3<u32>(1u, arg_3.x, 85542u)) >> (u_input.a.x % 32u)), _wgslsmith_f_op_f32(-1454f - _wgslsmith_f_op_f32(step(func_5(arg_0.e, func_5(Struct_1(vec3<bool>(false, true, arg_1.a.x), arg_0.d.b, global0[_wgslsmith_index_u32(10939u, 31u)]), arg_0, vec4<bool>(false, global2.e.a.x, true, true)), vec4<bool>(false, true, arg_1.a.x, global2.e.a.x)).c, -1051f))), arg_0.d, Struct_1(vec3<bool>(false, false, (arg_3.x >> (0u % 32u)) <= ~global2.d.b), ~81857u, firstLeadingBit(u_input.a)));
    global2 = Struct_3(var_2.a, u_input.b, -292f, var_1.d, var_1.e);
    let var_3 = Struct_2(func_2(1u, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c, 635f, arg_2) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-280f, var_2.c, arg_2))))), countOneBits(-_wgslsmith_div_i32(-11760i, -53496i))).a.yy, _wgslsmith_mult_u32(69523u, 25498u));
    return func_5(func_5(func_2(global2.b, _wgslsmith_div_vec3_f32(vec3<f32>(412f, arg_0.c, 2055f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.c, 1531f, var_2.c))), firstTrailingBit(58475i) & ~2147483647i), var_1, select(!select(vec4<bool>(false, true, false, arg_0.d.a.x), vec4<bool>(true, var_3.a.x, var_1.d.a.x, true), vec4<bool>(false, global2.e.a.x, true, var_2.d.a.x)), vec4<bool>(false, true, true, var_2.d.a.x), var_1.e.a.x)).e, Struct_3(vec2<u32>(var_3.b, u_input.b), 0u, _wgslsmith_f_op_f32(666f + _wgslsmith_f_op_f32(func_3(arg_0.c))), func_5(var_2.e, func_5(global2.e, var_2, !vec4<bool>(true, true, arg_0.d.a.x, true)), select(!vec4<bool>(false, var_3.a.x, var_0.e.a.x, true), vec4<bool>(true, true, false, arg_0.d.a.x), vec4<bool>(arg_1.a.x, var_0.e.a.x, var_3.a.x, var_3.a.x))).d, arg_0.e), vec4<bool>(select(arg_2 < -501f, false, !(var_3.a.x || var_2.d.a.x)), !(all(vec4<bool>(true, global2.e.a.x, false, true)) | var_3.a.x), true, true));
}

fn func_1() -> i32 {
    global2 = func_6(func_5(func_2(_wgslsmith_div_u32(_wgslsmith_add_u32(0u, global2.e.c.x), ~0u), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1809f, 370f, global2.c) + vec3<f32>(global2.c, global2.c, 1454f)))), 2147483647i), Struct_3(abs(min(vec2<u32>(global2.d.b, u_input.a.x), vec2<u32>(global2.a.x, 4294967295u))), 1u ^ _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.a.x), vec2<u32>(global2.e.b, global2.a.x)), _wgslsmith_f_op_f32(select(114f, global2.c, all(vec4<bool>(true, global2.e.a.x, false, global2.d.a.x)))), Struct_2(!vec2<bool>(true, global2.e.a.x), _wgslsmith_add_u32(global2.b, u_input.a.x)), func_2(_wgslsmith_mult_u32(67499u, 0u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -822f, global2.c)), -14028i)), vec4<bool>(u_input.b != select(u_input.a.x, 44079u, global2.d.a.x), !(!global2.d.a.x), global2.e.a.x, !(-744f < global2.c))), global2.e, global2.c, u_input.a.yxx);
    global0 = array<vec4<u32>, 31>();
    global0 = array<vec4<u32>, 31>();
    var var_0 = select(select(vec4<bool>(all(!vec4<bool>(global2.e.a.x, global2.e.a.x, true, true)), global2.e.a.x, !global2.d.a.x & true, !global2.d.a.x), select(select(select(vec4<bool>(global2.e.a.x, global2.e.a.x, false, true), vec4<bool>(false, false, false, global2.d.a.x), vec4<bool>(false, global2.e.a.x, true, true)), !vec4<bool>(global2.e.a.x, false, global2.e.a.x, global2.d.a.x), true), select(vec4<bool>(false, global2.d.a.x, true, global2.e.a.x), vec4<bool>(true, true, true, true), select(vec4<bool>(true, global2.e.a.x, global2.d.a.x, false), vec4<bool>(global2.e.a.x, false, global2.d.a.x, true), global2.d.a.x)), false), select(!vec4<bool>(false, global2.d.a.x, global2.e.a.x, false), !(!vec4<bool>(global2.d.a.x, true, global2.e.a.x, global2.e.a.x)), select(vec4<bool>(global2.e.a.x, global2.d.a.x, true, true), !vec4<bool>(false, false, global2.d.a.x, true), func_6(Struct_3(global2.e.c.wx, 22159u, global2.c, Struct_2(global2.e.a.zy, global2.b), Struct_1(global2.e.a, u_input.a.x, vec4<u32>(0u, 1u, global2.d.b, global2.a.x))), Struct_1(global2.e.a, 4294967295u, global2.e.c), 538f, global2.e.c.wzx).e.a.x))), select(select(vec4<bool>(global2.d.a.x, true, true, true), !select(vec4<bool>(false, global2.d.a.x, global2.e.a.x, global2.d.a.x), vec4<bool>(global2.e.a.x, false, global2.e.a.x, global2.d.a.x), vec4<bool>(global2.e.a.x, false, global2.d.a.x, false)), vec4<bool>(global2.d.a.x, true, false, global2.e.a.x && false)), !vec4<bool>(global2.e.a.x, global2.d.a.x, true, !global2.d.a.x), !(u_input.b > 18842u) || all(!vec4<bool>(true, false, global2.e.a.x, true))), select(vec4<bool>(true, func_2(0u << (u_input.b % 32u), vec3<f32>(1000f, global2.c, -317f), -2147483647i).a.x, true, !global2.d.a.x), !vec4<bool>(true, any(global2.e.a), !global2.e.a.x, global2.d.a.x), select(!select(vec4<bool>(true, global2.e.a.x, global2.e.a.x, false), vec4<bool>(global2.e.a.x, false, global2.e.a.x, true), vec4<bool>(global2.d.a.x, false, global2.d.a.x, false)), select(vec4<bool>(global2.d.a.x, true, global2.e.a.x, global2.d.a.x), vec4<bool>(true, true, true, false), vec4<bool>(false, global2.d.a.x, global2.d.a.x, false)), any(!vec3<bool>(global2.d.a.x, global2.e.a.x, global2.e.a.x)))));
    let var_1 = 2147483647i;
    return select(var_1, 2147483647i, false);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<f32>, 28>();
    var var_0 = _wgslsmith_mult_i32(1i, -2602i);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, func_1());
}

