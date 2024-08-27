struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: i32,
    e: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 1> = array<vec4<bool>, 1>(vec4<bool>(true, false, false, true));

var<private> global1: array<Struct_3, 5> = array<Struct_3, 5>(Struct_3(Struct_2(Struct_1(895f, vec4<u32>(28954u, 19613u, 4294967295u, 40639u), vec2<f32>(1275f, -678f)), true, Struct_1(1000f, vec4<u32>(4294967295u, 56296u, 4294967295u, 23758u), vec2<f32>(-963f, -267f)), 11114i, vec4<f32>(223f, 438f, -449f, 747f))), Struct_3(Struct_2(Struct_1(450f, vec4<u32>(0u, 0u, 22827u, 30761u), vec2<f32>(-684f, -2006f)), false, Struct_1(-1159f, vec4<u32>(4294967295u, 14047u, 17534u, 1u), vec2<f32>(1405f, 1714f)), -1i, vec4<f32>(-1793f, -991f, -1618f, -2211f))), Struct_3(Struct_2(Struct_1(487f, vec4<u32>(4294967295u, 1u, 0u, 4294967295u), vec2<f32>(248f, -1267f)), false, Struct_1(269f, vec4<u32>(4294967295u, 48343u, 1u, 6304u), vec2<f32>(-1000f, 1114f)), 0i, vec4<f32>(-947f, 943f, -258f, -905f))), Struct_3(Struct_2(Struct_1(250f, vec4<u32>(51864u, 1u, 1u, 4294967295u), vec2<f32>(-587f, -1000f)), false, Struct_1(-882f, vec4<u32>(56136u, 4294967295u, 4294967295u, 52752u), vec2<f32>(571f, -224f)), 2147483647i, vec4<f32>(160f, 2422f, -1372f, 1000f))), Struct_3(Struct_2(Struct_1(1915f, vec4<u32>(1u, 28954u, 30267u, 138069u), vec2<f32>(1000f, -1316f)), false, Struct_1(2186f, vec4<u32>(22951u, 4294967295u, 34870u, 45409u), vec2<f32>(1502f, -1721f)), i32(-2147483648), vec4<f32>(-1306f, -1249f, -1822f, -1043f))));

var<private> global2: Struct_4 = Struct_4(-2067f, Struct_2(Struct_1(-925f, vec4<u32>(19794u, 4294967295u, 0u, 0u), vec2<f32>(1241f, 220f)), true, Struct_1(-773f, vec4<u32>(1u, 4294967295u, 20357u, 120435u), vec2<f32>(325f, 1935f)), 19623i, vec4<f32>(-198f, 934f, 415f, -158f)));

var<private> global3: array<u32, 25>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_4, arg_1: vec2<u32>, arg_2: f32, arg_3: Struct_1) -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(min(global2.b.e, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(arg_0.b.e)))));
    let var_1 = Struct_1(-1066f, abs(arg_3.b), _wgslsmith_f_op_vec2_f32(arg_3.c * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(var_0.yw))) + _wgslsmith_f_op_vec2_f32(-arg_3.c))));
    var var_2 = _wgslsmith_sub_u32(_wgslsmith_mod_u32(1u, arg_0.b.a.b.x) & (firstLeadingBit(var_1.b.x) ^ ~45955u), ~(_wgslsmith_dot_vec3_u32(arg_0.b.a.b.zyz, vec3<u32>(var_1.b.x, 1u, 79523u)) ^ var_1.b.x)) << (abs(_wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.a.x, global3[_wgslsmith_index_u32(arg_1.x, 25u)]), ~global3[_wgslsmith_index_u32(86488u, 25u)]) >> (19160u % 32u)) % 32u);
    global1 = array<Struct_3, 5>();
    let var_3 = arg_0.b.e.yzy;
    return 2147483647i;
}

fn func_2(arg_0: vec2<i32>) -> Struct_1 {
    let var_0 = ~_wgslsmith_div_i32(-arg_0.x, 2147483647i) & reverseBits(func_3(Struct_4(global2.a, global2.b), ~u_input.a.yz, -370f, global2.b.c) ^ 1i);
    let var_1 = global2.b;
    global0 = array<vec4<bool>, 1>();
    var var_2 = reverseBits(~global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~(~global2.b.a.b), var_1.c.b), 25u)]);
    global0 = array<vec4<bool>, 1>();
    return var_1.c;
}

fn func_4(arg_0: Struct_1) -> u32 {
    var var_0 = any(vec2<bool>(0u > (global2.b.c.b.x ^ _wgslsmith_dot_vec4_u32(arg_0.b, global2.b.c.b)), !(!global2.b.b) && (-144f > arg_0.a)));
    var var_1 = func_2(vec2<i32>(-1i) * -u_input.b.yx).c.x;
    global3 = array<u32, 25>();
    let var_2 = _wgslsmith_dot_vec2_i32(-u_input.b.xy, -firstLeadingBit(u_input.b.xz));
    global2 = Struct_4(430f, Struct_2(func_2(-(vec2<i32>(u_input.c.x, 0i) ^ u_input.b.zy)), true, Struct_1(arg_0.c.x, ~select(vec4<u32>(4294967295u, global3[_wgslsmith_index_u32(0u, 25u)], 4294967295u, global3[_wgslsmith_index_u32(global2.b.a.b.x, 25u)]), arg_0.b, global0[_wgslsmith_index_u32(1u, 1u)]), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-global2.b.c.c), vec2<f32>(1709f, -378f)))), var_2, vec4<f32>(_wgslsmith_f_op_f32(-arg_0.c.x), _wgslsmith_f_op_f32(-arg_0.c.x), _wgslsmith_f_op_f32(ceil(arg_0.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(642f - -323f)))));
    return ~_wgslsmith_dot_vec3_u32(~(~select(arg_0.b.xxz, arg_0.b.zww, vec3<bool>(true, global2.b.b, true))), vec3<u32>(global2.b.c.b.x, ~1u, 1u ^ (arg_0.b.x << (0u % 32u))));
}

fn func_1() -> Struct_3 {
    var var_0 = _wgslsmith_mod_u32(0u | abs(_wgslsmith_div_u32(_wgslsmith_clamp_u32(global3[_wgslsmith_index_u32(global2.b.a.b.x, 25u)], 43486u, global2.b.c.b.x), reverseBits(62303u))), _wgslsmith_div_u32(5876u, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~global2.b.a.b, global2.b.a.b), _wgslsmith_mod_vec4_u32(global2.b.c.b, countOneBits(global2.b.a.b)))));
    var var_1 = select(global0[_wgslsmith_index_u32(u_input.a.x, 1u)], vec4<bool>(!(!(!global2.b.b)), global2.b.b, false, false), true);
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(148f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-1723f, -220f))))), vec4<u32>(global3[_wgslsmith_index_u32(73508u, 25u)] ^ 23678u, 0u, 28460u, func_4(func_2(vec2<i32>(-9102i, global2.b.d)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(global2.b.e.xy + vec2<f32>(-914f, global2.b.a.c.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-764f, global2.b.c.c.x) * global2.b.e.yx))))), any(select(global0[_wgslsmith_index_u32(52162u, 1u)], !vec4<bool>(global2.b.b, var_1.x, true, true), !vec4<bool>(global2.b.b, var_1.x, true, false))) || false, global2.b.c, 0i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(global2.b.e * vec4<f32>(global2.a, 448f, global2.a, global2.a)), vec4<f32>(-1221f, 100f, -1106f, -944f), all(!var_1.xwy)))));
    var var_3 = ~global2.b.c.b.zx;
    global3 = array<u32, 25>();
    return Struct_3(Struct_2(var_2.c, var_2.b, func_2(u_input.c), abs(countOneBits(u_input.c.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, var_2.e.x, 812f, -471f)) * _wgslsmith_f_op_vec4_f32(-global2.b.e))));
}

fn func_5(arg_0: Struct_2, arg_1: u32, arg_2: Struct_3) -> f32 {
    var var_0 = ~(~select(-(vec2<i32>(arg_2.a.d, arg_0.d) ^ vec2<i32>(-2147483647i, 28182i)), select(u_input.c, u_input.b.zz, !vec2<bool>(arg_2.a.b, true)), !any(vec2<bool>(true, arg_0.b))));
    var var_1 = arg_0;
    var var_2 = Struct_3(func_1().a);
    var var_3 = _wgslsmith_sub_i32(_wgslsmith_mod_i32(func_1().a.d, (arg_0.d << (global3[_wgslsmith_index_u32(min(16204u, arg_2.a.a.b.x), 25u)] % 32u)) << (_wgslsmith_sub_u32(firstLeadingBit(82252u), 1u) % 32u)), 71383i);
    let var_4 = var_1.b;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.e.x))), 1977f, true)) - -986f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !global0[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(global2.b.a.b.x, 25u)], 1u)];
    let var_1 = global2.b;
    var var_2 = Struct_4(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(Struct_2(Struct_1(522f, vec4<u32>(global2.b.a.b.x, var_1.c.b.x, global3[_wgslsmith_index_u32(4294967295u, 25u)], 0u), global2.b.c.c), false, global2.b.a, var_1.d, vec4<f32>(global2.a, var_1.c.c.x, -1000f, global2.a)), 49031u, func_1()))))), func_1().a);
    let var_3 = Struct_1(var_1.a.c.x, global2.b.c.b, var_1.a.c);
    var var_4 = _wgslsmith_sub_i32(var_1.d, max(~(~(-12088i)), -(~global2.b.d)));
    global1 = array<Struct_3, 5>();
    var var_5 = ~(-u_input.c);
    var var_6 = func_1();
    global3 = array<u32, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b.a.b.x, ~select(~(~var_2.b.c.b.zw), ~vec2<u32>(global3[_wgslsmith_index_u32(29538u, 25u)], 22298u), var_6.a.b), -841f, _wgslsmith_mod_i32(2147483647i, ~_wgslsmith_mod_i32(i32(-1i) * -2147483647i, -1i)));
}

