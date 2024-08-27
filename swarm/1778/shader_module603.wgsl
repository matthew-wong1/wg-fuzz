struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<i32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true));

var<private> global1: vec4<bool>;

var<private> global2: array<vec3<i32>, 3>;

var<private> global3: vec2<f32>;

var<private> global4: array<f32, 4> = array<f32, 4>(714f, 2000f, 1847f, -1145f);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> i32 {
    var var_0 = Struct_1(!global1.x);
    global3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(min(-996f, -913f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(u_input.a.x, 4u)])))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-727f, -342f), vec2<f32>(-1000f, -799f)))))), select(global1.wy, select(!global1.zy, global1.yz, all(vec2<bool>(var_0.a, var_0.a))), true))));
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(u_input.d, vec3<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(17595u, u_input.d.x, u_input.b, 65811u), select(vec4<u32>(25473u, 1u, 59223u, u_input.d.x), vec4<u32>(u_input.b, 1u, u_input.d.x, u_input.d.x), global1.x)), countOneBits(0u))), 0u), 26u)];
    global2 = array<vec3<i32>, 3>();
    global2 = array<vec3<i32>, 3>();
    return ~u_input.e;
}

fn func_2(arg_0: i32) -> f32 {
    var var_0 = select(_wgslsmith_clamp_i32(~(-arg_0), u_input.c.x, firstTrailingBit(u_input.c.x)), func_3(), false) << (firstLeadingBit(firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(45112u, 42492u, u_input.b, 1u), vec4<u32>(u_input.d.x, 115568u, u_input.b, 1u))) & 32391u) % 32u);
    var var_1 = ~vec4<i32>(-min(u_input.e, arg_0 >> (43589u % 32u)), abs(0i), 1i, u_input.e);
    let var_2 = 0i;
    let var_3 = Struct_1(1u == ~u_input.a.x);
    let var_4 = u_input.c.wyz;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(u_input.d.x, 4u)] * global3.x) - global3.x) * _wgslsmith_f_op_f32(round(global3.x))))));
}

fn func_4(arg_0: vec4<f32>) -> vec3<bool> {
    return !select(global1.xww, select(vec3<bool>(true, !global1.x, global1.x), !global1.wyz, vec3<bool>(global1.x, true, !global1.x)), false);
}

fn func_1() -> vec2<f32> {
    var var_0 = func_4(vec4<f32>(_wgslsmith_div_f32(global4[_wgslsmith_index_u32(u_input.a.x, 4u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global3.x, global4[_wgslsmith_index_u32(1u, 4u)], global1.x)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(1u, 4u)]), _wgslsmith_f_op_f32(global3.x + global3.x)) - -673f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global3.x - -1043f), global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 95853u, 3133u, u_input.b), vec4<u32>(u_input.b, 57061u, u_input.d.x, 4294967295u)), 4u)])) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(37283i)))), global4[_wgslsmith_index_u32(u_input.b, 4u)]));
    var_0 = vec3<bool>(!((~u_input.e & 4781i) == max(~(-44432i), 2147483647i)), false, !(((u_input.e << (u_input.d.x % 32u)) != _wgslsmith_div_i32(u_input.e, u_input.e)) && false));
    var var_1 = vec2<f32>(1307f, 291f);
    var var_2 = Struct_1((_wgslsmith_mod_i32(-15289i, ~u_input.e) << (~(~57901u) % 32u)) < -1i);
    let var_3 = _wgslsmith_mod_i32(50384i, -2147483647i);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global3.x, global4[_wgslsmith_index_u32(28635u, 4u)]), vec2<f32>(334f, global4[_wgslsmith_index_u32(58933u, 4u)])))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(func_1());
    var var_1 = global4[_wgslsmith_index_u32(76948u, 4u)];
    let var_2 = _wgslsmith_mult_i32(countOneBits(-3445i), u_input.c.x);
    var var_3 = Struct_1(select(!(true || global1.x), global1.x, true));
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global3.x - -265f), _wgslsmith_f_op_f32(global3.x - var_0.x), !global1.x))) + 706f) * 250f);
    let var_5 = _wgslsmith_clamp_u32(4294967295u << (u_input.d.x % 32u), 75652u, ~(~abs(~1u)));
    var var_6 = 768f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_u32(~vec4<u32>(~u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, 36710u), vec3<u32>(37269u, var_5, 1u)), u_input.a.x, firstTrailingBit(93179u)), vec4<u32>(~(~var_5), 27119u, countOneBits(1u), u_input.a.x)), global3.x);
}

