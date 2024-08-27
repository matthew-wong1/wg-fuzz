struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: vec4<u32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
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

var<private> global0: array<f32, 18> = array<f32, 18>(-1000f, -785f, -480f, -912f, -2396f, -408f, -779f, -180f, 118f, 237f, -654f, -1000f, 1448f, -601f, -997f, -2143f, 1023f, 1216f);

var<private> global1: i32 = 1i;

var<private> global2: array<Struct_4, 2>;

var<private> global3: vec2<u32>;

var<private> global4: array<vec3<bool>, 17> = array<vec3<bool>, 17>(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> u32 {
    global0 = array<f32, 18>();
    global1 = _wgslsmith_clamp_i32(i32(-1i) * -(u_input.a.x << (global3.x % 32u)), 1i, 1i);
    global0 = array<f32, 18>();
    var var_0 = global2[_wgslsmith_index_u32(reverseBits(global3.x), 2u)];
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(var_0.c.x, 18u)], 1773f, false)) + _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_0.c.x, 18u)] - var_0.d.a.x))))));
    return ~(_wgslsmith_add_u32(var_0.c.x, ~firstLeadingBit(var_0.c.x)) | 21683u);
}

fn func_2(arg_0: f32) -> u32 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1218f, arg_0) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_0, arg_0)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0[_wgslsmith_index_u32(global3.x, 18u)], 587f, global0[_wgslsmith_index_u32(4294967295u, 18u)]), vec3<f32>(global0[_wgslsmith_index_u32(21426u, 18u)], arg_0, arg_0), global4[_wgslsmith_index_u32(41899u, 17u)]))))));
    let var_1 = global2[_wgslsmith_index_u32(select(abs(40263u), 1u, true) & _wgslsmith_mult_u32(4294967295u, global3.x), 2u)];
    global0 = array<f32, 18>();
    var var_2 = _wgslsmith_f_op_f32(997f * -1315f);
    var var_3 = func_3();
    return 4294967295u;
}

fn func_1(arg_0: bool) -> Struct_2 {
    let var_0 = ((u_input.a.x >> ((func_2(global0[_wgslsmith_index_u32(7708u, 18u)]) << (global3.x % 32u)) % 32u)) >> (firstLeadingBit(_wgslsmith_mult_u32(38916u, global3.x)) % 32u)) >> (~max(global3.x, global3.x) % 32u);
    global4 = array<vec3<bool>, 17>();
    var var_1 = arg_0;
    var_1 = all(select(vec3<bool>(!all(vec2<bool>(true, false)), arg_0, any(vec4<bool>(false, arg_0, false, true))), select(select(!global4[_wgslsmith_index_u32(0u, 17u)], vec3<bool>(true, true, true), false), select(!global4[_wgslsmith_index_u32(global3.x, 17u)], select(global4[_wgslsmith_index_u32(11988u, 17u)], vec3<bool>(arg_0, true, true), arg_0), arg_0), global4[_wgslsmith_index_u32(global3.x ^ global3.x, 17u)]), false));
    var var_2 = countOneBits(select(~abs(~vec3<i32>(u_input.b, 32975i, var_0)), ~((vec3<i32>(61711i, 50946i, 1i) >> (vec3<u32>(global3.x, global3.x, global3.x) % vec3<u32>(32u))) << (_wgslsmith_mod_vec3_u32(vec3<u32>(0u, global3.x, 0u), vec3<u32>(22517u, 0u, 2036u)) % vec3<u32>(32u))), arg_0));
    return Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(global3.x, 18u)], 976f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(23872u, 18u)], -634f) + vec2<f32>(1000f, -1000f))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1144f, global0[_wgslsmith_index_u32(7636u, 18u)]))))))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(653f, global0[_wgslsmith_index_u32(global3.x, 18u)], -345f), vec3<f32>(535f, global0[_wgslsmith_index_u32(1u, 18u)], global0[_wgslsmith_index_u32(4294967295u, 18u)]), vec3<bool>(false, false, arg_0))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(global3.x, 18u)], 213f, -506f)), true))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = u_input.b;
    var var_0 = func_1(false);
    global4 = array<vec3<bool>, 17>();
    global4 = array<vec3<bool>, 17>();
    var var_1 = vec4<u32>(func_3() & _wgslsmith_mult_u32(4294967295u, max(31183u, 2239u >> (global3.x % 32u))), global3.x, _wgslsmith_mod_u32(select(abs(global3.x), _wgslsmith_div_u32(reverseBits(1u), 1u), true), 4205u), _wgslsmith_add_u32(~_wgslsmith_mod_u32(global3.x, global3.x | global3.x), global3.x));
    var var_2 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(var_1.x, 18u)], var_0.a.a.x, -326f, global0[_wgslsmith_index_u32(global3.x, 18u)])))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0[_wgslsmith_index_u32(var_1.x, 18u)], 628f, 2033f, global0[_wgslsmith_index_u32(36622u, 18u)]), vec4<f32>(1459f, -1337f, var_0.b.x, -177f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(51476u, 18u)], 1434f, global0[_wgslsmith_index_u32(var_1.x, 18u)], global0[_wgslsmith_index_u32(global3.x, 18u)]) * vec4<f32>(var_0.a.a.x, -1000f, var_0.a.a.x, var_0.b.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(286f, var_0.b.x, global0[_wgslsmith_index_u32(4294967295u, 18u)], 492f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.x, var_0.a.a.x, global0[_wgslsmith_index_u32(var_1.x, 18u)], -1511f) - vec4<f32>(global0[_wgslsmith_index_u32(1u, 18u)], var_0.b.x, 376f, global0[_wgslsmith_index_u32(var_1.x, 18u)]))), select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), false), vec4<bool>(false, true, true, true), select(false, false, false)))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(var_1.x, 18u)], var_0.b.x, var_0.b.x, 1000f) - vec4<f32>(global0[_wgslsmith_index_u32(global3.x, 18u)], global0[_wgslsmith_index_u32(var_1.x, 18u)], var_0.b.x, -1289f))))))));
    global4 = array<vec3<bool>, 17>();
    var var_3 = func_1((all(select(global4[_wgslsmith_index_u32(var_1.x, 17u)], vec3<bool>(true, false, false), vec3<bool>(false, false, true))) || any(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false)))) | true).a;
    let var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) * _wgslsmith_f_op_f32(-var_0.b.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-533f)) + _wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(global3.x, 18u)], var_3.a.x, var_4)))))));
}

