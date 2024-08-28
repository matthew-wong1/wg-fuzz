struct Struct_1 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(vec4<u32>(0u, 1u, 71978u, 4294967295u), vec3<f32>(-779f, 173f, 204f), 0u), Struct_1(vec4<u32>(1u, 531u, 4294967295u, 75686u), vec3<f32>(1656f, 1482f, -511f), 26921u), Struct_1(vec4<u32>(0u, 22696u, 1u, 4294967295u), vec3<f32>(403f, 1087f, 380f), 20820u), Struct_1(vec4<u32>(4294967295u, 47379u, 4294967295u, 64857u), vec3<f32>(360f, 562f, -471f), 2783u), Struct_1(vec4<u32>(1u, 4294967295u, 0u, 1u), vec3<f32>(-532f, -1004f, -1000f), 0u), Struct_1(vec4<u32>(32428u, 4558u, 97275u, 0u), vec3<f32>(-364f, 1179f, -1138f), 0u), Struct_1(vec4<u32>(81216u, 18579u, 4294967295u, 0u), vec3<f32>(-769f, -887f, -1347f), 1u), Struct_1(vec4<u32>(4831u, 39068u, 4294967295u, 30229u), vec3<f32>(-1752f, 391f, -1464f), 1u), Struct_1(vec4<u32>(1u, 0u, 1u, 1u), vec3<f32>(727f, 298f, -681f), 0u), Struct_1(vec4<u32>(6199u, 4294967295u, 4294967295u, 1u), vec3<f32>(-1152f, -1617f, 268f), 1u), Struct_1(vec4<u32>(0u, 59757u, 13202u, 4294967295u), vec3<f32>(1245f, -235f, -641f), 4294967295u), Struct_1(vec4<u32>(0u, 53320u, 4294967295u, 18403u), vec3<f32>(449f, -922f, -154f), 1u), Struct_1(vec4<u32>(15841u, 46083u, 20133u, 31595u), vec3<f32>(-109f, -288f, 749f), 34965u), Struct_1(vec4<u32>(4294967295u, 1u, 69406u, 4294967295u), vec3<f32>(936f, 710f, -1793f), 12338u), Struct_1(vec4<u32>(4294967295u, 64907u, 68744u, 11923u), vec3<f32>(584f, -1000f, 926f), 4294967295u), Struct_1(vec4<u32>(43510u, 1u, 1u, 42175u), vec3<f32>(252f, 260f, -444f), 1u), Struct_1(vec4<u32>(4294967295u, 69591u, 1u, 0u), vec3<f32>(-731f, 1933f, -831f), 4294967295u), Struct_1(vec4<u32>(13909u, 1u, 95571u, 28717u), vec3<f32>(-421f, -342f, -1078f), 18704u), Struct_1(vec4<u32>(25918u, 34770u, 2842u, 28949u), vec3<f32>(-1232f, -1006f, -215f), 0u), Struct_1(vec4<u32>(7476u, 48651u, 4294967295u, 53810u), vec3<f32>(1000f, -345f, 1988f), 35576u));

var<private> global1: Struct_1;

var<private> global2: bool;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32, arg_1: vec2<f32>) -> f32 {
    global2 = false;
    global2 = any(vec4<bool>(all(vec4<bool>(true, true, true, true)), arg_1.x == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1.b.x, global1.b.x))), true, 1u != ~global1.c));
    global2 = true;
    global2 = any(select(vec3<bool>(true, true, all(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)))), select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true), vec3<bool>(true, any(vec4<bool>(false, true, true, false)), 1u >= global1.a.x), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), 45956i == u_input.a.x)), true));
    var var_0 = Struct_1(global1.a, vec3<f32>(arg_1.x, _wgslsmith_f_op_f32(step(arg_1.x, _wgslsmith_f_op_f32(-1238f - 927f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1.b.x)))))), _wgslsmith_div_u32(9821u | _wgslsmith_dot_vec2_u32(~vec2<u32>(arg_0, 28847u), vec2<u32>(21923u, 0u) ^ vec2<u32>(u_input.c.x, global1.a.x)), arg_0 & global1.a.x));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x))) * _wgslsmith_f_op_f32(1000f + arg_1.x));
}

fn func_2(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = firstLeadingBit(u_input.a.x);
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_3(arg_0, arg_1.b.yx)), 1000f, _wgslsmith_f_op_f32(f32(-1f) * -405f), 978f))) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b.x, arg_1.b.x, arg_1.b.x, global1.b.x)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-2619f, arg_1.b.x, -1058f, -2350f), vec4<f32>(global1.b.x, -802f, arg_1.b.x, -415f))))))));
    global2 = true;
    let var_2 = arg_1.a.x;
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(global1.b.yy + vec2<f32>(_wgslsmith_f_op_f32(select(-1299f, -841f, true)), -658f)))));
    return global0[_wgslsmith_index_u32(50538u, 20u)];
}

fn func_1(arg_0: vec3<u32>) -> vec4<u32> {
    global1 = Struct_1(~vec4<u32>(u_input.d, 1u, _wgslsmith_div_u32(43946u, global1.c), ~42356u), _wgslsmith_f_op_vec3_f32(-global1.b), 4294967295u);
    global2 = false;
    global1 = func_2(reverseBits(arg_0.x), global0[_wgslsmith_index_u32(~abs(u_input.d), 20u)]);
    var var_0 = all(vec2<bool>(true, true));
    var var_1 = global0[_wgslsmith_index_u32(~arg_0.x | _wgslsmith_mod_u32(17624u, 1u), 20u)];
    return global1.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1u;
    var var_1 = _wgslsmith_clamp_vec4_u32(global1.a | (~countOneBits(vec4<u32>(81954u, 57947u, global1.c, 0u)) | vec4<u32>(u_input.c.x, 9199u, u_input.c.x | 50919u, ~1u)), func_1(global1.a.wwx), func_2(u_input.d, Struct_1(~vec4<u32>(global1.a.x, 0u, 47008u, u_input.c.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global1.b.x, global1.b.x, global1.b.x)))), firstLeadingBit(~global1.c))).a);
    let var_2 = u_input.a;
    var_0 = 61537u;
    var_0 = ~var_1.x;
    global0 = array<Struct_1, 20>();
    var var_3 = global0[_wgslsmith_index_u32(42457u, 20u)];
    global0 = array<Struct_1, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(select(global1.b.x, _wgslsmith_f_op_f32(-1595f - _wgslsmith_div_f32(-107f, var_3.b.x)), _wgslsmith_div_u32(0u, var_3.a.x) < reverseBits(1u))), -640f, 103f, -905f), _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(u_input.a.www, _wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, u_input.b.x, -1i), vec3<i32>(-12117i, -10414i, 2147483647i))) & reverseBits(var_2.x), firstTrailingBit(~u_input.b.x)), vec4<f32>(-1433f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - 717f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_3.b.x)) - 1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global1.b.x - -1000f))) * var_3.b.x)));
}

