struct Struct_1 {
    a: vec2<bool>,
    b: vec2<bool>,
    c: vec4<u32>,
    d: f32,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec2<i32>, 18>;

var<private> global2: array<i32, 32> = array<i32, 32>(0i, 43212i, -65815i, -1i, 5554i, -1i, 5545i, 9597i, 2147483647i, 27240i, -22206i, 4980i, 19276i, 0i, -1i, 1188i, 0i, -4550i, -39740i, -1i, 36811i, -4045i, 3003i, 28740i, 0i, 37642i, 21996i, i32(-2147483648), 8327i, 2147483647i, 2147483647i, 55812i);

var<private> global3: i32 = 2147483647i;

var<private> global4: i32 = -1i;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: i32, arg_2: u32, arg_3: Struct_2) -> bool {
    var var_0 = Struct_1(select(global0.b, !(!vec2<bool>(global0.b.x, global0.b.x)), !(~u_input.b < 34325i)), vec2<bool>(!global0.b.x, global0.b.x), global0.c, _wgslsmith_f_op_f32(-969f + -1000f));
    var var_1 = true;
    let var_2 = Struct_1(!vec2<bool>(!(global0.b.x || global0.b.x), !(!var_0.a.x)), global0.b, vec4<u32>(1u, _wgslsmith_mod_u32(16830u, ~0u), ~_wgslsmith_div_u32(~4294967295u, arg_2), ~_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(var_0.c.x, 1u, var_0.c.x)), global0.c.yzy)), -921f);
    global4 = -28473i;
    var var_3 = ~var_0.c.x;
    return all(select(select(vec4<bool>(true, u_input.c.x > 1u, select(true, global0.b.x, var_0.b.x), var_0.b.x), vec4<bool>(true, true, select(var_2.b.x, var_2.b.x, true), false), var_2.a.x), select(vec4<bool>(true, true, var_0.a.x, !var_0.a.x), !select(vec4<bool>(var_0.a.x, false, true, var_0.b.x), vec4<bool>(global0.a.x, global0.a.x, global0.a.x, true), true), vec4<bool>(true, any(vec3<bool>(var_0.a.x, var_2.a.x, true)), false, global0.a.x)), vec4<bool>(!(global0.a.x || false), global0.a.x, !global0.b.x, var_0.c.x >= ~var_0.c.x)));
}

fn func_2(arg_0: Struct_2) -> vec4<bool> {
    global3 = _wgslsmith_add_i32(u_input.b ^ 1i, global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a.x | global0.c.x, u_input.d), 32u)]);
    let var_0 = ~firstLeadingBit(~(-(~global2[_wgslsmith_index_u32(global0.c.x, 32u)])));
    return !vec4<bool>(any(!(!vec3<bool>(true, global0.a.x, false))), func_3(vec3<u32>(~19000u, global0.c.x, global0.c.x), var_0, _wgslsmith_clamp_u32(~95u, ~u_input.c.x, u_input.c.x), Struct_2(_wgslsmith_f_op_vec2_f32(arg_0.a + arg_0.a))), any(global0.b) | global0.a.x, global0.a.x);
}

fn func_1(arg_0: Struct_2, arg_1: u32, arg_2: vec2<u32>, arg_3: vec4<bool>) -> f32 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-430f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1497f, 663f)) - arg_0.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(1441f, global0.d, global0.b.x)))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -497f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.d, -790f) * _wgslsmith_f_op_f32(global0.d * arg_0.a.x)))))), _wgslsmith_f_op_f32(ceil(arg_0.a.x)));
    var var_1 = _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, firstTrailingBit(global0.c.x), _wgslsmith_mult_u32(33159u >> (arg_2.x % 32u), max(arg_2.x, global0.c.x)), 62509u), min(global0.c, global0.c)) | global0.c;
    let var_2 = !(!func_2(arg_0));
    global3 = global2[_wgslsmith_index_u32(4294967295u, 32u)];
    let var_3 = arg_3.yzy;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-491f * -1949f)) + 2422f));
}

fn func_4(arg_0: f32, arg_1: bool) -> Struct_1 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(197f)) * 205f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.d), -1604f)))));
    let var_1 = vec3<f32>(1678f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1000f, -1197f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-165f, 138f, arg_1))))), _wgslsmith_f_op_f32(f32(-1f) * -443f));
    let var_2 = ~vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_mod_u32(~4294967295u, abs(global0.c.x)), _wgslsmith_dot_vec4_u32(~global0.c, ~global0.c)), global0.c.x, reverseBits(firstTrailingBit(30101u)) | u_input.a.x);
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), arg_0);
    global0 = Struct_1(!vec2<bool>(true, global0.a.x), select(select(select(!global0.a, global0.b, arg_1), !(!global0.a), global0.b), global0.b, !arg_1), firstTrailingBit(global0.c) & (~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, 1802u, 4294967295u, global0.c.x), vec4<u32>(1u, 19732u, 0u, global0.c.x)) >> (firstLeadingBit(abs(vec4<u32>(u_input.c.x, 0u, u_input.c.x, 39360u))) % vec4<u32>(32u))), 1000f);
    return Struct_1(global0.a, global0.a, vec4<u32>(_wgslsmith_dot_vec3_u32(~select(vec3<u32>(41240u, 29774u, 6580u), global0.c.ywz, arg_1), abs(~vec3<u32>(global0.c.x, 791u, 4294967295u))), 4294967295u, u_input.c.x, _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(global0.c.zz, global0.c.xw) >> (42568u % 32u), 121577u, _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(global0.c.x, global0.c.x, var_2.x)) << (global0.c.x % 32u))), -857f);
}

fn func_5(arg_0: Struct_1, arg_1: i32) -> vec4<f32> {
    var var_0 = arg_0;
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d) + var_0.d), 1186f)), var_0.d, -462f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.d))), 620f)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = 0i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(global0.d)), _wgslsmith_f_op_f32(global0.d - global0.d), 680f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(861f + 343f), _wgslsmith_f_op_f32(-global0.d), _wgslsmith_f_op_f32(global0.d + global0.d)))), _wgslsmith_f_op_vec4_f32(func_5(func_4(_wgslsmith_f_op_f32(func_1(Struct_2(vec2<f32>(global0.d, global0.d)), firstLeadingBit(16434u), u_input.c, !vec4<bool>(true, global0.b.x, global0.b.x, false))), func_3(vec3<u32>(60408u, u_input.c.x, global0.c.x), 18782i, _wgslsmith_mult_u32(global0.c.x, u_input.d), Struct_2(vec2<f32>(-1224f, 882f)))), 1i)), _wgslsmith_f_op_vec3_f32(vec3<f32>(413f, global0.d, global0.d) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.d, 1000f, -2005f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.d, global0.d, -2392f))) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(700f, 1192f, -1263f))))));
}

