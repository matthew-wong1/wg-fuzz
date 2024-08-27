struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: bool,
    b: vec3<bool>,
    c: Struct_1,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec3<i32>,
    e: vec3<u32>,
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

var<private> global1: array<u32, 21> = array<u32, 21>(0u, 4294967295u, 50168u, 7761u, 1u, 0u, 0u, 44200u, 1u, 114885u, 17805u, 74237u, 89758u, 83731u, 80225u, 1u, 4633u, 4294967295u, 4294967295u, 4294967295u, 13489u);

var<private> global2: Struct_1 = Struct_1(vec4<u32>(25218u, 4294967295u, 119712u, 1u), 4294967295u, 1i);

var<private> global3: array<Struct_2, 27>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec2<u32>, arg_1: f32, arg_2: bool, arg_3: i32) -> bool {
    global3 = array<Struct_2, 27>();
    global2 = global0.c;
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(722f, _wgslsmith_f_op_f32(select(arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1328f, -627f)) * _wgslsmith_f_op_f32(round(1328f))), -1i == (-1i << (u_input.a % 32u)))))) - _wgslsmith_f_op_f32(f32(-1f) * -1950f));
    global1 = array<u32, 21>();
    let var_1 = ~9276u;
    return firstTrailingBit(-6462i) <= (-1i ^ u_input.d.x);
}

fn func_2(arg_0: bool) -> f32 {
    global1 = array<u32, 21>();
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1411f);
    global0 = Struct_2(global2.a.x > 4294967295u, !(!global0.d.xyy), Struct_1(vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(global0.c.a.zww, u_input.e), _wgslsmith_mod_vec3_u32(global0.c.a.xxx, u_input.e)), global0.c.b, global2.a.x, ~_wgslsmith_sub_u32(14107u, global1[_wgslsmith_index_u32(global0.c.b, 21u)])), reverseBits(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.e.x, global0.c.a.x, u_input.c), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.e.x, 1u, u_input.e.x), u_input.e)), 21u)], 21u)], 21u)]), abs(0i)), !select(vec4<bool>(579u < global1[_wgslsmith_index_u32(global0.c.b, 21u)], global2.b < global0.c.a.x, any(global0.d.zxw), arg_0), vec4<bool>(true, true, true, true), func_3(reverseBits(vec2<u32>(u_input.a, u_input.a)), _wgslsmith_f_op_f32(step(-1000f, -122f)), true, _wgslsmith_div_i32(10887i, u_input.d.x))));
    return _wgslsmith_f_op_f32(f32(-1f) * -1177f);
}

fn func_1(arg_0: vec2<bool>, arg_1: bool, arg_2: vec4<u32>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1000f * -980f), 1124f, _wgslsmith_f_op_f32(func_2(arg_1)), -1602f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(875f, 2170f, 536f, 229f))))))));
    global2 = global0.c;
    let var_1 = ~global0.c.b;
    global2 = Struct_1(countOneBits(global2.a), 0u, _wgslsmith_mult_i32(32810i, global2.c));
    global1 = array<u32, 21>();
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global3[_wgslsmith_index_u32(firstLeadingBit(~func_1(select(vec2<bool>(global0.a, global0.a), vec2<bool>(false, global0.a), vec2<bool>(global0.b.x, true)), true, global0.c.a ^ vec4<u32>(global2.b, global0.c.b, u_input.a, 18555u)) & countOneBits(global0.c.b)), 27u)];
    global2 = Struct_1(vec4<u32>(firstLeadingBit(abs(_wgslsmith_clamp_u32(global2.b, 4294967295u, u_input.e.x))), global0.c.b, _wgslsmith_div_u32(4294967295u, _wgslsmith_dot_vec4_u32(~global0.c.a, min(vec4<u32>(u_input.e.x, global2.a.x, u_input.e.x, global0.c.a.x), global2.a))), global0.c.b), 1u, (_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d.x, 13441i), firstLeadingBit(u_input.d.zx)) | (u_input.b.x ^ -714i)) << (1u % 32u));
    global2 = global0.c;
    let var_0 = global3[_wgslsmith_index_u32(~(~15084u << (global0.c.a.x % 32u)), 27u)];
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-596f + _wgslsmith_f_op_f32(min(-462f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(354f * 1000f))))));
    global1 = array<u32, 21>();
    global0 = global3[_wgslsmith_index_u32(abs(43526u), 27u)];
    let var_2 = global0.c;
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_1, var_1))))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1420f, var_1))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(0i, global0.c.c) << (0u % 32u));
}

