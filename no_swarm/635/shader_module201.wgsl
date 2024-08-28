struct Struct_1 {
    a: vec4<u32>,
    b: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: i32,
    e: i32,
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

var<private> global0: vec3<u32>;

var<private> global1: array<f32, 22> = array<f32, 22>(1066f, 490f, 354f, -1194f, -1000f, -2169f, -1064f, -411f, 2628f, -191f, 458f, 1069f, -2483f, -1946f, -2247f, -724f, -1000f, -346f, 1494f, -1271f, 157f, -1252f);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: i32, arg_3: f32) -> u32 {
    global1 = array<f32, 22>();
    let var_0 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_1.b, _wgslsmith_f_op_f32(f32(-1f) * -212f))));
    global1 = array<f32, 22>();
    return 41575u;
}

fn func_3(arg_0: f32) -> Struct_1 {
    var var_0 = Struct_1(~(~(~vec4<u32>(global0.x, 6590u, 1u, 107703u))) & _wgslsmith_mult_vec4_u32(vec4<u32>(~global0.x, ~2799u, 4294967295u ^ u_input.c.x, 34620u), ~(~vec4<u32>(4294967295u, 65854u, 0u, 0u))), _wgslsmith_f_op_f32(-1109f + -300f));
    global0 = _wgslsmith_add_vec3_u32(~(~vec3<u32>(17389u, firstLeadingBit(global0.x), ~1u)), select(var_0.a.xxz, firstLeadingBit(u_input.c ^ var_0.a.zxy) >> (_wgslsmith_div_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(global0.x, u_input.c.x, 34710u)) % vec3<u32>(32u)), any(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), false))));
    var var_1 = Struct_1(_wgslsmith_add_vec4_u32(var_0.a, ~var_0.a), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(331f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(529f, arg_0))))));
    var_1 = Struct_1(var_0.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(~(~29009u), 22u)])), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(var_1.b, global1[_wgslsmith_index_u32(firstTrailingBit(global0.x), 22u)])))))));
    var var_2 = 41871u;
    return Struct_1(vec4<u32>(global0.x | var_0.a.x, 1u, ~_wgslsmith_sub_u32(~1u, ~var_1.a.x), var_0.a.x), arg_0);
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: vec4<f32>) -> u32 {
    let var_0 = func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, global1[_wgslsmith_index_u32(func_2(arg_1, arg_0, 2147483647i, -737f), 22u)], arg_1))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b))));
    var var_1 = global0.x;
    var var_2 = global0.x;
    let var_3 = ~(-2147483647i);
    var var_4 = 595u;
    return ~(~arg_0.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.xy;
    let var_1 = _wgslsmith_div_i32(u_input.d, u_input.d);
    var var_2 = Struct_1(abs(vec4<u32>((u_input.c.x & 30924u) & func_1(Struct_1(vec4<u32>(var_0.x, 0u, u_input.c.x, var_0.x), global1[_wgslsmith_index_u32(4294967295u, 22u)]), true, vec4<f32>(1023f, global1[_wgslsmith_index_u32(32752u, 22u)], global1[_wgslsmith_index_u32(1u, 22u)], -267f)), _wgslsmith_sub_u32(global0.x, ~0u), 4294967295u, 1u)), _wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(global0.x, 22u)], 1588f)));
    var_2 = Struct_1(~(~(var_2.a << (vec4<u32>(23903u, 21918u, 40737u, 4294967295u) % vec4<u32>(32u)))), -234f);
    var var_3 = Struct_1(vec4<u32>(~func_1(Struct_1(vec4<u32>(1u, u_input.c.x, var_0.x, global0.x), var_2.b), global1[_wgslsmith_index_u32(0u, 22u)] < 771f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(5322u, 22u)], var_2.b, 1707f, global1[_wgslsmith_index_u32(41906u, 22u)]))), 1u, 1u, ~35709u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(var_2.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1877f)))) + var_2.b));
    global0 = _wgslsmith_mod_vec3_u32(firstTrailingBit(vec3<u32>(1u, ~var_2.a.x, ~(~1u))), firstTrailingBit(vec3<u32>(var_2.a.x, 0u, 1u)));
    let var_4 = abs(var_3.a.x | reverseBits(var_0.x ^ _wgslsmith_clamp_u32(0u, 0u, global0.x)));
    global0 = u_input.c;
    var_0 = vec2<u32>(reverseBits(~func_2(true, Struct_1(var_2.a, var_2.b), -1i, -166f) >> (18897u % 32u)), 22589u);
    let x = u_input.a;
    s_output = StorageBuffer(2362f);
}

