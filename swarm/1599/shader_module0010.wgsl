struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: u32,
    d: Struct_1,
    e: vec4<f32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: f32,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: f32;

var<private> global2: array<vec3<bool>, 22>;

var<private> global3: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(vec4<i32>(46435i, -1i, i32(-2147483648), -22228i)), Struct_1(vec4<i32>(2147483647i, 2147483647i, -7417i, 37083i)), Struct_1(vec4<i32>(-1i, i32(-2147483648), 19240i, 2147483647i)), Struct_1(vec4<i32>(20080i, -19494i, -18004i, 1i)), Struct_1(vec4<i32>(3039i, 28099i, -14374i, 0i)), Struct_1(vec4<i32>(i32(-2147483648), -3961i, -46708i, 8228i)));

var<private> global4: array<vec3<u32>, 10>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: bool) -> vec4<f32> {
    let var_0 = select(!(!global2[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, ~u_input.c), 22u)]), vec3<bool>(true, false, all(select(!global2[_wgslsmith_index_u32(u_input.c, 22u)], vec3<bool>(true, arg_0, false), !arg_0))), !select(!select(global2[_wgslsmith_index_u32(u_input.a.x, 22u)], global2[_wgslsmith_index_u32(13622u, 22u)], arg_0), global2[_wgslsmith_index_u32(firstTrailingBit(~u_input.a.x), 22u)], vec3<bool>(true, arg_0, !arg_0)));
    let var_1 = Struct_3(select(select(var_0, !(!global2[_wgslsmith_index_u32(1005u, 22u)]), vec3<bool>(!arg_0, true, all(global2[_wgslsmith_index_u32(0u, 22u)]))), global2[_wgslsmith_index_u32(7373u, 22u)], !var_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -148f)))), vec2<bool>(true, !any(select(var_0, var_0, vec3<bool>(arg_0, false, false)))));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1707f + var_1.b));
    var var_2 = -2028f;
    let var_3 = true;
    return _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(232f, var_1.b, -176f, var_1.b))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b, var_1.b, -1374f, var_1.b) - vec4<f32>(var_1.b, -449f, -192f, var_1.b)))))))));
}

fn func_2() -> vec2<bool> {
    var var_0 = ~(~vec3<u32>(~18025u, u_input.c, 28576u));
    var var_1 = vec4<f32>(-213f, 738f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, 1f))), _wgslsmith_f_op_f32(593f + -521f));
    var var_2 = 0u;
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(any(vec4<bool>(true, true, false, true)))))) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_3(true)).x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-186f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1.x * -1275f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -572f), _wgslsmith_f_op_f32(min(var_1.x, var_1.x)))))));
    let var_3 = ~global4[_wgslsmith_index_u32(u_input.d, 10u)];
    return vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)) <= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(445f, var_1.x), _wgslsmith_div_f32(var_1.x, -371f))), select(any(vec4<bool>(all(vec4<bool>(true, false, true, false)), true, true, false)), false, false));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec4<bool>, arg_2: u32) -> vec4<i32> {
    global2 = array<vec3<bool>, 22>();
    let var_0 = u_input.a.zy;
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -540f);
    let var_2 = Struct_3(arg_1.xyx, _wgslsmith_f_op_f32(1076f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) - var_1) + _wgslsmith_f_op_f32(round(1151f)))), func_2());
    var var_3 = Struct_2(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(global4[_wgslsmith_index_u32(firstTrailingBit(~14973u), 10u)], reverseBits(min(u_input.a, ~u_input.a))), 6u)], vec3<bool>(true, false, false), _wgslsmith_dot_vec3_u32(vec3<u32>(min(arg_2, ~26354u), _wgslsmith_add_u32(_wgslsmith_div_u32(var_0.x, u_input.c), var_0.x), _wgslsmith_mult_u32(arg_2, 0u)), vec3<u32>(var_0.x | arg_2, 0u, ~64727u | ~u_input.d)), Struct_1(vec4<i32>(max(23195i, 2147483647i >> (arg_2 % 32u)), countOneBits(u_input.b), u_input.b, u_input.b)), vec4<f32>(-2557f, var_2.b, var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -263f))))));
    return vec4<i32>(-(reverseBits(-29747i) & -(~u_input.b)), -_wgslsmith_dot_vec3_i32(~(var_3.a.a.wxz << (global4[_wgslsmith_index_u32(var_3.c, 10u)] % vec3<u32>(32u))), var_3.a.a.yxz ^ ~vec3<i32>(0i, -504i, 1i)), -1i, ~countOneBits(2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<bool>, 22>();
    let var_0 = min(~u_input.d, select(~(4294967295u >> (_wgslsmith_mod_u32(u_input.a.x, u_input.d) % 32u)), _wgslsmith_add_u32(1820u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.c, 47132u, 4294967295u), ~vec4<u32>(u_input.d, u_input.d, u_input.c, 2410u))), true && select(true, false, any(vec3<bool>(false, true, true)))));
    var var_1 = Struct_1(func_1(!vec4<bool>(any(vec2<bool>(false, false)), true, any(vec2<bool>(false, true)), any(vec4<bool>(true, true, false, true))), select(vec4<bool>(true, true, true, any(vec3<bool>(true, false, false))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false)), true), !select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), true)), var_0));
    let var_2 = 24314u;
    global2 = array<vec3<bool>, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_i32(vec3<i32>(-1i) * -var_1.a.zyx, firstLeadingBit(vec3<i32>(-2147483647i, var_1.a.x, u_input.b))) | firstLeadingBit(-var_1.a.yyy | select(vec3<i32>(-2147483647i, -37323i, var_1.a.x), var_1.a.xxz, vec3<bool>(false, true, false))), u_input.b, _wgslsmith_f_op_f32(f32(-1f) * -1443f));
}

