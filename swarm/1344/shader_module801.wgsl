struct Struct_1 {
    a: vec3<bool>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: i32,
    b: bool,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: bool,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(i32(-2147483648), false);

var<private> global1: array<vec3<bool>, 1> = array<vec3<bool>, 1>(vec3<bool>(true, false, true));

var<private> global2: array<Struct_2, 13> = array<Struct_2, 13>(Struct_2(-6788i, true), Struct_2(i32(-2147483648), true), Struct_2(-1886i, true), Struct_2(2147483647i, true), Struct_2(i32(-2147483648), false), Struct_2(2147483647i, false), Struct_2(13303i, true), Struct_2(2147483647i, true), Struct_2(-870i, false), Struct_2(2147483647i, false), Struct_2(-33331i, false), Struct_2(2147483647i, false), Struct_2(0i, true));

var<private> global3: f32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_2(arg_0: u32, arg_1: vec2<f32>, arg_2: Struct_1) -> i32 {
    var var_0 = ~vec3<u32>(~1u, u_input.b.x, _wgslsmith_sub_u32(u_input.d, arg_0));
    var var_1 = false;
    let var_2 = vec2<f32>(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(597f - 1320f), _wgslsmith_f_op_f32(exp2(arg_1.x)))))));
    let var_3 = arg_2;
    global0 = global2[_wgslsmith_index_u32(~u_input.a, 13u)];
    return u_input.c;
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_4) -> i32 {
    global3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.x))))) + arg_0.x);
    global1 = array<vec3<bool>, 1>();
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(1690f)))));
    let var_0 = Struct_3(vec4<i32>(_wgslsmith_div_i32(-22944i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.a.x, -2147483647i, -69741i, 32559i) << (vec4<u32>(u_input.a, u_input.b.x, u_input.b.x, 0u) % vec4<u32>(32u)), -vec4<i32>(-2147483647i, -13166i, global0.a, arg_1.a.x))), 0i << (~_wgslsmith_add_u32(u_input.d, u_input.a) % 32u), ~(-_wgslsmith_sub_i32(arg_1.a.x, arg_1.a.x)), 1i), global1[_wgslsmith_index_u32(u_input.a, 1u)], all(select(!vec4<bool>(false, false, false, global0.b), select(select(vec4<bool>(global0.b, global0.b, global0.b, true), vec4<bool>(global0.b, global0.b, global0.b, true), global0.b), vec4<bool>(true, global0.b, global0.b, global0.b), true), vec4<bool>(true, true, arg_1.b.x == -1443f, select(true, global0.b, false)))));
    var var_1 = true;
    return global0.a;
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_2) -> f32 {
    var var_0 = _wgslsmith_add_u32(61116u, u_input.a) ^ _wgslsmith_add_u32(65453u, u_input.d);
    let var_1 = Struct_3(min(vec4<i32>(_wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(global0.a, u_input.c, -2147483647i)), vec3<i32>(0i, -5875i, u_input.c)), (arg_1.a & u_input.c) | abs(arg_1.a), func_2(u_input.a, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_0.x, -1000f))), Struct_1(global1[_wgslsmith_index_u32(u_input.d, 1u)], vec3<f32>(1585f, -102f, arg_0.x))), abs(u_input.c) << (_wgslsmith_mult_u32(u_input.a, 1u) % 32u)), vec4<i32>(_wgslsmith_clamp_i32(~arg_1.a, u_input.c, func_3(arg_0, Struct_4(vec2<i32>(global0.a, -1857i), vec4<f32>(908f, arg_0.x, arg_0.x, arg_0.x)))), func_3(vec2<f32>(arg_0.x, arg_0.x), Struct_4(vec2<i32>(-49193i, arg_1.a), vec4<f32>(arg_0.x, -987f, -273f, arg_0.x))), ~(-u_input.c), u_input.c)), select(!(!(!global1[_wgslsmith_index_u32(4294967295u, 1u)])), global1[_wgslsmith_index_u32(u_input.d, 1u)], true), true);
    var var_2 = Struct_4(vec2<i32>(-(-2147483647i >> (u_input.b.x % 32u)) << (~(~u_input.a) % 32u), 2832i), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(488f, -651f, -1000f, -1598f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-387f, arg_0.x, arg_0.x, arg_0.x)), any(var_1.b))))))));
    var var_3 = ~4294967295u;
    global2 = array<Struct_2, 13>();
    return arg_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec4<u32>(~u_input.d, ~_wgslsmith_dot_vec3_u32(u_input.b.zzx, _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b.x, u_input.a, 40552u), u_input.b.yyy)), ~0u, min(~68375u, 1u));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1743f)) * _wgslsmith_div_f32(228f, _wgslsmith_f_op_f32(func_1(vec2<f32>(2286f, -610f), Struct_2(2147483647i, true))))), _wgslsmith_f_op_f32(f32(-1f) * -1255f), global0.b)));
    let var_2 = vec2<i32>(_wgslsmith_sub_i32(-1i, 2147483647i), -_wgslsmith_div_i32(-1i, 1i)) & _wgslsmith_mod_vec2_i32(vec2<i32>(0i, u_input.c), abs(-vec2<i32>(2147483647i, -45153i)) | _wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, u_input.c) << (vec2<u32>(9303u, 33578u) % vec2<u32>(32u)), vec2<i32>(global0.a, global0.a)));
    var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-609f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1112f - 843f))))))));
    let var_3 = 16648u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-486f + -496f), _wgslsmith_f_op_f32(step(560f, 1116f))))));
}

