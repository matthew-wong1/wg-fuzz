struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: f32,
    c: Struct_1,
    d: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: u32,
    d: vec4<i32>,
}

struct Struct_5 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_4,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 25> = array<Struct_3, 25>(Struct_3(Struct_1(1346f), vec3<bool>(false, false, false)), Struct_3(Struct_1(-1047f), vec3<bool>(false, false, false)), Struct_3(Struct_1(-447f), vec3<bool>(false, true, false)), Struct_3(Struct_1(1053f), vec3<bool>(false, true, false)), Struct_3(Struct_1(-1331f), vec3<bool>(false, false, false)), Struct_3(Struct_1(-1669f), vec3<bool>(true, false, true)), Struct_3(Struct_1(619f), vec3<bool>(false, true, false)), Struct_3(Struct_1(-765f), vec3<bool>(false, false, false)), Struct_3(Struct_1(403f), vec3<bool>(true, true, false)), Struct_3(Struct_1(-535f), vec3<bool>(false, true, false)), Struct_3(Struct_1(-256f), vec3<bool>(true, false, true)), Struct_3(Struct_1(780f), vec3<bool>(true, true, true)), Struct_3(Struct_1(1027f), vec3<bool>(true, false, false)), Struct_3(Struct_1(1410f), vec3<bool>(false, false, true)), Struct_3(Struct_1(-1683f), vec3<bool>(false, false, true)), Struct_3(Struct_1(-1271f), vec3<bool>(false, true, false)), Struct_3(Struct_1(-436f), vec3<bool>(true, true, true)), Struct_3(Struct_1(-325f), vec3<bool>(false, false, false)), Struct_3(Struct_1(401f), vec3<bool>(false, false, false)), Struct_3(Struct_1(-892f), vec3<bool>(true, true, true)), Struct_3(Struct_1(-411f), vec3<bool>(false, false, true)), Struct_3(Struct_1(220f), vec3<bool>(true, true, true)), Struct_3(Struct_1(-400f), vec3<bool>(false, false, true)), Struct_3(Struct_1(1000f), vec3<bool>(true, false, true)), Struct_3(Struct_1(254f), vec3<bool>(true, false, false)));

var<private> global1: array<Struct_5, 15>;

var<private> global2: array<vec2<f32>, 17>;

var<private> global3: Struct_4 = Struct_4(Struct_2(vec3<bool>(false, false, true), 1683f, Struct_1(-934f), vec3<bool>(false, true, true)), false, 45952u, vec4<i32>(7369i, 2147483647i, 0i, -25352i));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3() -> vec3<bool> {
    var var_0 = vec2<f32>(global3.a.b, 1050f);
    let var_1 = global3.a;
    global1 = array<Struct_5, 15>();
    let var_2 = Struct_2(!(!vec3<bool>(global3.a.d.x, var_1.a.x, var_1.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1921f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_div_f32(104f, global3.a.c.a))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.a.b - -538f) + var_1.c.a), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1157f + var_0.x))))), Struct_1(_wgslsmith_f_op_f32(-global3.a.c.a)), global3.a.a);
    global1 = array<Struct_5, 15>();
    return !global3.a.a;
}

fn func_2() -> Struct_5 {
    global1 = array<Struct_5, 15>();
    global2 = array<vec2<f32>, 17>();
    global1 = array<Struct_5, 15>();
    global3 = Struct_4(Struct_2(!select(func_3(), global3.a.a, select(vec3<bool>(false, false, true), vec3<bool>(global3.a.a.x, true, false), global3.a.d)), _wgslsmith_f_op_f32(-global3.a.b), global3.a.c, select(vec3<bool>(any(global3.a.d), global3.a.a.x, global3.a.c.a <= global3.a.c.a), !vec3<bool>(false, global3.b, global3.a.d.x), global3.a.d)), global3.a.a.x, min(43445u, 112069u), global3.d);
    var var_0 = Struct_2(global3.a.d, _wgslsmith_div_f32(global3.a.b, _wgslsmith_f_op_f32(sign(-1907f))), global3.a.c, func_3());
    return Struct_5(global3.a.c, firstTrailingBit(max(~vec3<u32>(116485u, 1u, u_input.a.x), firstTrailingBit(vec3<u32>(u_input.a.x, 26125u, 4294967295u)))) & ~select(vec3<u32>(29286u, global3.c, u_input.a.x), ~vec3<u32>(u_input.a.x, u_input.a.x, 1u), select(vec3<bool>(false, false, var_0.d.x), var_0.a, vec3<bool>(false, var_0.d.x, true))), Struct_4(Struct_2(select(global3.a.d, global3.a.a, func_3()), _wgslsmith_div_f32(global3.a.c.a, global3.a.c.a), Struct_1(_wgslsmith_f_op_f32(select(var_0.c.a, global3.a.c.a, true))), select(var_0.d, !var_0.a, true)), global3.a.d.x, countOneBits(66622u), vec4<i32>(-1i, 2147483647i, u_input.b.x, 0i >> (1u % 32u))));
}

fn func_4(arg_0: Struct_5) -> Struct_4 {
    global1 = array<Struct_5, 15>();
    var var_0 = func_2().c.a;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.c.a.b))));
    let var_2 = _wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(global3.c << (u_input.a.x % 32u), ~(~arg_0.b.x)), abs(_wgslsmith_div_u32(u_input.a.x, _wgslsmith_dot_vec3_u32(arg_0.b, vec3<u32>(4294967295u, global3.c, 1u))))), abs(_wgslsmith_add_vec2_u32(arg_0.b.yx, ~vec2<u32>(global3.c, 0u))));
    let var_3 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(min(~firstTrailingBit(~arg_0.b), ~min(_wgslsmith_clamp_vec3_u32(arg_0.b, arg_0.b, arg_0.b), _wgslsmith_div_vec3_u32(arg_0.b, arg_0.b))), vec3<u32>(arg_0.b.x, ~_wgslsmith_clamp_u32(_wgslsmith_mult_u32(arg_0.b.x, arg_0.c.c), global3.c | 1u, ~10436u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(32478u, arg_0.c.c, 27078u), vec3<u32>(4294967295u, 4294967295u, var_2.x)))), 25u)];
    return func_2().c;
}

fn func_1() -> Struct_5 {
    let var_0 = Struct_4(Struct_2(global3.a.d, global3.a.b, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -408f))), !(!select(global3.a.a, global3.a.d, false))), true, 151508u, -min(firstTrailingBit(vec4<i32>(2147483647i, 1i, global3.d.x, global3.d.x)), select(vec4<i32>(u_input.b.x, global3.d.x, 1i, global3.d.x), -u_input.b, select(vec4<bool>(false, false, global3.b, false), vec4<bool>(global3.a.a.x, true, false, global3.b), true))));
    let var_1 = 24351i;
    global3 = Struct_4(global3.a, any(global3.a.d), 0u, _wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_mod_i32(-22181i, var_1), 0i), -1i, _wgslsmith_div_i32(abs(var_0.d.x), -global3.d.x), _wgslsmith_mod_i32(-3119i, abs(u_input.b.x))), vec4<i32>(-2147483647i, -(u_input.b.x << (var_0.c % 32u)), max(0i, reverseBits(u_input.b.x)), firstLeadingBit(global3.d.x))));
    let var_2 = vec2<i32>(-var_0.d.x, -(~(-1i)));
    var var_3 = global3.b;
    return Struct_5(Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.a.c.a * 405f) + _wgslsmith_div_f32(1000f, 1000f))))), abs(vec3<u32>(_wgslsmith_div_u32(firstLeadingBit(global3.c), global3.c), 36129u, _wgslsmith_dot_vec2_u32(u_input.a, max(vec2<u32>(4294967295u, 13327u), vec2<u32>(u_input.a.x, 4294967295u))))), func_4(func_2()));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 471f;
    var var_1 = global3.d.x;
    global1 = array<Struct_5, 15>();
    var var_2 = global3.a.d.zx;
    var var_3 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(global3.d.ywz, u_input.b.zzx), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.a.c.a, var_3.a.a, var_3.a.a) * vec3<f32>(378f, global3.a.c.a, -1000f)) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(155f, -1000f, global3.a.c.a), vec3<f32>(340f, global3.a.c.a, -1379f), false)))))), vec2<f32>(var_3.c.a.c.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a.b)), 355f))));
}

