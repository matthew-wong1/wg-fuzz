struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<u32>(1241u, 148029u, 4294967295u), vec4<u32>(78956u, 22799u, 0u, 1u));

var<private> global1: array<bool, 1> = array<bool, 1>(true);

var<private> global2: array<vec2<bool>, 27> = array<vec2<bool>, 27>(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true));

var<private> global3: vec4<bool> = vec4<bool>(false, false, true, true);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_2(arg_0: i32, arg_1: bool) -> vec4<u32> {
    global2 = array<vec2<bool>, 27>();
    var var_0 = Struct_2(vec3<u32>(global0.a.x, _wgslsmith_mult_u32(min(select(global0.a.x, global0.b.x, global1[_wgslsmith_index_u32(global0.b.x, 1u)]), ~global0.b.x), ~firstTrailingBit(global0.a.x)), 4294967295u), global0.b);
    return _wgslsmith_sub_vec4_u32(~var_0.b & global0.b, vec4<u32>(var_0.b.x, 10091u, ~_wgslsmith_div_u32(var_0.b.x, _wgslsmith_dot_vec2_u32(global0.a.yz, vec2<u32>(87301u, 101577u))), 1u ^ ~_wgslsmith_dot_vec3_u32(global0.a, vec3<u32>(0u, 0u, 14643u))));
}

fn func_1(arg_0: u32, arg_1: Struct_3, arg_2: vec4<u32>) -> Struct_3 {
    let var_0 = Struct_2(~_wgslsmith_mult_vec3_u32(vec3<u32>(arg_0, 20969u, 48842u), vec3<u32>(1u, 1u, global0.b.x)) >> (vec3<u32>(58940u, ~(~arg_2.x), arg_1.a.x) % vec3<u32>(32u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(628u, 112999u, 46923u, abs(1u & global0.a.x)), abs(vec4<u32>(4294967295u, _wgslsmith_sub_u32(arg_0, 0u), countOneBits(arg_0), arg_2.x)), ~func_2(u_input.b.x, false)));
    let var_1 = Struct_1(88812u);
    global0 = var_0;
    var var_2 = global3.yz;
    var var_3 = var_1;
    return arg_1;
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<f32>) -> Struct_1 {
    var var_0 = arg_0.a | vec4<u32>(_wgslsmith_dot_vec3_u32(countOneBits(_wgslsmith_add_vec3_u32(vec3<u32>(global0.a.x, arg_2.a, 4294967295u), global0.a)), ~abs(vec3<u32>(0u, arg_1.a, arg_0.a.x))), arg_2.a, func_2(u_input.a.x, all(vec2<bool>(true, true))).x, 1u);
    global2 = array<vec2<bool>, 27>();
    var_0 = vec4<u32>(_wgslsmith_sub_u32(global0.a.x, _wgslsmith_mult_u32(_wgslsmith_div_u32(arg_0.a.x, 4294967295u), ~arg_2.a) ^ ~arg_2.a), 4294967295u, 0u, arg_0.a.x);
    var var_1 = Struct_1(~(~27174u));
    global3 = !select(select(vec4<bool>(true, arg_0.a.x != 1u, false, false), vec4<bool>(all(vec4<bool>(global1[_wgslsmith_index_u32(1u, 1u)], global1[_wgslsmith_index_u32(var_1.a, 1u)], true, global1[_wgslsmith_index_u32(arg_1.a, 1u)])), global3.x && global1[_wgslsmith_index_u32(13212u, 1u)], true, all(vec4<bool>(global1[_wgslsmith_index_u32(var_1.a, 1u)], global1[_wgslsmith_index_u32(arg_2.a, 1u)], true, true))), (0u == global0.b.x) & true), vec4<bool>(global3.x, all(!vec2<bool>(global3.x, false)), ~1u < min(arg_0.a.x, arg_0.a.x), true), !(!vec4<bool>(true, global1[_wgslsmith_index_u32(arg_2.a, 1u)], global3.x, global3.x)));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_3(func_1(global0.a.x, Struct_3(min(vec4<u32>(global0.a.x, 1034u, 4294967295u, global0.a.x), vec4<u32>(global0.a.x, global0.b.x, global0.a.x, 1u)) & global0.b), vec4<u32>(_wgslsmith_clamp_u32(global0.a.x << (0u % 32u), _wgslsmith_clamp_u32(global0.b.x, global0.b.x, global0.b.x), 0u), global0.b.x, _wgslsmith_add_u32(1u, global0.a.x), global0.b.x)), Struct_1(global0.b.x), Struct_1(global0.a.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-564f, -478f) * vec2<f32>(644f, -190f)))) + vec2<f32>(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(trunc(-2108f))), -995f)));
    global0 = Struct_2(vec3<u32>(min(0u, _wgslsmith_dot_vec2_u32(global0.b.wy, firstLeadingBit(global0.a.xx))), abs(_wgslsmith_clamp_u32(abs(59356u), 4294967295u, 1u)), 0u << (func_2(abs(-1i), true).x % 32u)), ~vec4<u32>(0u, 0u | _wgslsmith_clamp_u32(var_0.a, 18993u, var_0.a), reverseBits(~0u), ~var_0.a));
    global0 = Struct_2(global0.b.zyy, func_1(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, global0.b.x, 4294967295u, 1u), global0.b) | 98943u, func_1(32014u, func_1(23737u, Struct_3(vec4<u32>(4294967295u, 0u, global0.b.x, global0.b.x)), abs(global0.b)), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 1u, var_0.a, 11950u), firstTrailingBit(global0.b))), func_1(var_0.a, func_1(13901u, Struct_3(vec4<u32>(0u, 9245u, var_0.a, var_0.a)), vec4<u32>(0u, var_0.a, 111220u, global0.a.x) << (global0.b % vec4<u32>(32u))), _wgslsmith_mod_vec4_u32(global0.b, vec4<u32>(var_0.a, 1u, 1u, 0u)) << (vec4<u32>(global0.a.x, 0u, var_0.a, var_0.a) % vec4<u32>(32u))).a).a);
    var var_1 = u_input.a.zy << (firstTrailingBit(max(global0.b.zz | vec2<u32>(1u, var_0.a), _wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(global0.b.wz, global0.a.xz), select(global0.a.yz, vec2<u32>(0u, var_0.a), true)))) % vec2<u32>(32u));
    var_1 = _wgslsmith_clamp_vec2_i32(vec2<i32>(firstTrailingBit(-3306i), ~1i ^ (14423i >> ((global0.b.x & 19910u) % 32u))), u_input.b, countOneBits(vec2<i32>(var_1.x, 0i)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b);
}

