struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: vec3<i32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: f32,
}

struct Struct_4 {
    a: u32,
    b: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_2, 4> = array<Struct_2, 4>(Struct_2(vec4<u32>(30717u, 11644u, 0u, 0u), Struct_1(vec2<bool>(false, false), -12138i, vec3<i32>(1i, -7228i, i32(-2147483648)), vec4<bool>(true, true, true, false))), Struct_2(vec4<u32>(98109u, 55311u, 59660u, 83309u), Struct_1(vec2<bool>(true, false), 1i, vec3<i32>(0i, 4109i, -49282i), vec4<bool>(true, false, true, true))), Struct_2(vec4<u32>(0u, 4294967295u, 40588u, 0u), Struct_1(vec2<bool>(false, false), -46001i, vec3<i32>(0i, -1i, -29987i), vec4<bool>(true, true, true, false))), Struct_2(vec4<u32>(4294967295u, 63504u, 1u, 4294967295u), Struct_1(vec2<bool>(false, false), 1i, vec3<i32>(2147483647i, 83767i, 0i), vec4<bool>(false, true, true, false))));

var<private> global2: Struct_2 = Struct_2(vec4<u32>(91251u, 15506u, 1u, 1u), Struct_1(vec2<bool>(true, false), 1i, vec3<i32>(-1i, 4001i, -23702i), vec4<bool>(true, false, false, false)));

var<private> global3: i32 = 1i;

var<private> global4: u32 = 4294967295u;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2() -> Struct_2 {
    global0 = Struct_2(_wgslsmith_add_vec4_u32(global2.a, global2.a), global0.b);
    var var_0 = -1i;
    global0 = Struct_2(~u_input.b, global2.b);
    var var_1 = 1u;
    let var_2 = Struct_3(global0.b.d.yww, vec3<u32>(~(global0.a.x & global0.a.x), abs(31381u), global0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1439f * _wgslsmith_f_op_f32(ceil(-117f)))));
    return global1[_wgslsmith_index_u32(abs(global0.a.x), 4u)];
}

fn func_3(arg_0: Struct_2) -> Struct_1 {
    var var_0 = all(vec4<bool>(global0.b.d.x, true, true, arg_0.b.d.x));
    var var_1 = vec2<i32>(~u_input.d, _wgslsmith_mod_i32(countOneBits(-_wgslsmith_add_i32(1i, -1i)), -22196i));
    var var_2 = Struct_4(~_wgslsmith_div_u32(countOneBits(83705u), ~92205u), false);
    var var_3 = Struct_4(0u, select(var_2.b || false, !(!var_2.b), true) || true);
    var var_4 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(-386f, _wgslsmith_f_op_f32(select(516f, -955f, global2.b.d.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(2102f, -1353f)))))))));
    return global0.b;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> Struct_3 {
    var var_0 = func_3(func_2());
    let var_1 = func_3(Struct_2(select(select(vec4<u32>(4294967295u, u_input.c, 4294967295u, 0u) | vec4<u32>(4294967295u, 1u, 45752u, 8501u), ~vec4<u32>(1u, 0u, 123580u, u_input.c), vec4<bool>(true, true, false, global0.b.a.x)), ~(~vec4<u32>(120192u, 1u, u_input.b.x, global2.a.x)), arg_0.d), arg_0)).d.yz;
    global1 = array<Struct_2, 4>();
    var var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -491f)));
    global0 = func_2();
    return Struct_3(vec3<bool>(arg_1.a.x, global2.a.x >= ~4294967295u, true != !any(vec4<bool>(true, true, global0.b.a.x, arg_0.a.x))), global0.a.yww ^ global2.a.zyx, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-369f)), 1294f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -135f))))));
}

fn func_4(arg_0: Struct_4, arg_1: i32, arg_2: Struct_3) -> u32 {
    let var_0 = ~arg_1;
    var var_1 = func_2();
    global2 = Struct_2(~(~select(max(vec4<u32>(var_1.a.x, 25511u, var_1.a.x, 0u), global2.a), global2.a, var_1.b.d)), Struct_1(func_3(Struct_2(abs(global2.a), Struct_1(vec2<bool>(true, false), -17109i, vec3<i32>(u_input.a.x, var_1.b.b, -64400i), global0.b.d))).d.xy, i32(-1i) * -_wgslsmith_div_i32(-51593i, -2147483647i), _wgslsmith_div_vec3_i32(vec3<i32>(-var_0, -8395i, -1i), select(vec3<i32>(var_0, var_0, u_input.d), -vec3<i32>(-2147483647i, 66807i, -46706i), false)), !func_2().b.d));
    global2 = func_2();
    var var_2 = vec4<bool>(global0.b.a.x, false, var_1.b.a.x, global2.b.d.x);
    return _wgslsmith_div_u32(func_1(Struct_1(vec2<bool>(all(var_1.b.d), false), 1i, ~_wgslsmith_sub_vec3_i32(vec3<i32>(17988i, 0i, u_input.d), global2.b.c), !global2.b.d), func_3(global1[_wgslsmith_index_u32(~(~56126u), 4u)])).b.x, 34686u >> (1u % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = global0.a.x;
    global1 = array<Struct_2, 4>();
    let var_0 = _wgslsmith_add_vec3_u32(vec3<u32>(func_4(Struct_4(15936u, !global0.b.d.x), reverseBits(-2147483647i), func_1(Struct_1(vec2<bool>(global0.b.d.x, global2.b.a.x), 46322i, vec3<i32>(global2.b.b, -1i, global0.b.b), global2.b.d), global0.b)), _wgslsmith_div_u32(global0.a.x, ~23492u) ^ _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.b.xxz, vec3<u32>(20649u, global0.a.x, global2.a.x)), vec3<u32>(59075u, global0.a.x, 16871u)), ~18847u << (func_4(Struct_4(83527u, true), ~u_input.d, Struct_3(global0.b.d.zzy, global0.a.zxz, 284f)) % 32u)), ~(~abs(vec3<u32>(global2.a.x, u_input.b.x, u_input.b.x))));
    global0 = Struct_2(_wgslsmith_div_vec4_u32(u_input.b & vec4<u32>(u_input.b.x >> (80953u % 32u), func_2().a.x, _wgslsmith_sub_u32(var_0.x, 68814u), u_input.b.x >> (39658u % 32u)), _wgslsmith_add_vec4_u32(abs(vec4<u32>(global0.a.x, global2.a.x, 0u, u_input.b.x)), ~(~global0.a))), func_3(Struct_2(firstLeadingBit(select(vec4<u32>(4294967295u, 55748u, var_0.x, 10770u), global0.a, global0.b.d)), Struct_1(!global2.b.a, global2.b.b, vec3<i32>(26054i, global0.b.c.x, 2147483647i), func_2().b.d))));
    var var_1 = Struct_3(!(!global2.b.d.zzy), _wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(global2.a.wyy, vec3<u32>(1u, global2.a.x, global0.a.x)), select(vec3<u32>(11703u, 24283u, var_0.x), vec3<u32>(5045u, 4294967295u, 18577u), vec3<bool>(global2.b.d.x, global2.b.d.x, true))), ~vec3<u32>(1u, 3558u, 43002u) | global0.a.xzz), vec3<u32>(select(firstTrailingBit(1u), global0.a.x | var_0.x, global0.b.d.x), 45736u, _wgslsmith_mod_u32(~var_0.x, 50457u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1000f + 794f), _wgslsmith_f_op_f32(880f * -744f))))) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -2529f)))))));
    global4 = _wgslsmith_div_u32(global0.a.x, _wgslsmith_add_u32(~global0.a.x, global2.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i);
}

