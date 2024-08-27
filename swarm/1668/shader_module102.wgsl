struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 7> = array<vec4<bool>, 7>(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false));

var<private> global1: array<u32, 1>;

var<private> global2: array<vec2<u32>, 5>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: i32, arg_3: Struct_1) -> i32 {
    global2 = array<vec2<u32>, 5>();
    global2 = array<vec2<u32>, 5>();
    let var_0 = arg_0;
    let var_1 = ~u_input.c;
    var var_2 = Struct_1(-firstTrailingBit(53274i));
    return -var_2.a;
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: bool, arg_3: Struct_1) -> i32 {
    var var_0 = Struct_1(-1i);
    let var_1 = _wgslsmith_add_u32(0u, ~((firstLeadingBit(136195u) << (global1[_wgslsmith_index_u32(u_input.c.x, 1u)] % 32u)) | ~min(0u, u_input.c.x)));
    var var_2 = 11437u;
    var var_3 = ~max(1u, ~(~var_1)) != global1[_wgslsmith_index_u32(26910u, 1u)];
    let var_4 = _wgslsmith_dot_vec3_u32(countOneBits(~(~vec3<u32>(var_1, 4294967295u, var_1))), vec3<u32>(u_input.c.x, ~_wgslsmith_dot_vec3_u32(vec3<u32>(952u, 2829u, u_input.c.x), vec3<u32>(var_1, var_1, 4294967295u)), 8134u)) << (abs(~(~var_1)) % 32u);
    return -func_2(Struct_1(_wgslsmith_mult_i32(_wgslsmith_div_i32(-52595i, 52254i), -7212i)), !(!(!vec3<bool>(false, arg_2, false))), ~u_input.a, Struct_1(firstTrailingBit(2147483647i) << (~var_1 % 32u)));
}

fn func_1(arg_0: i32) -> vec3<bool> {
    var var_0 = ~max(-(abs(vec2<i32>(u_input.b, 40074i)) | (vec2<i32>(u_input.a, 1i) >> (vec2<u32>(global1[_wgslsmith_index_u32(u_input.c.x, 1u)], 1u) % vec2<u32>(32u)))), vec2<i32>(func_2(Struct_1(-1i), vec3<bool>(false, true, false), u_input.a, Struct_1(arg_0)), -func_3(Struct_1(-2147483647i), vec4<i32>(arg_0, 2274i, u_input.b, 52272i), false, Struct_1(arg_0))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(802f * -589f)))));
    global0 = array<vec4<bool>, 7>();
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-958f, -1382f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, 130f)))) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, -1187f) - vec2<f32>(var_1, -1077f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, var_1) + vec2<f32>(var_1, var_1)))))) - vec2<f32>(_wgslsmith_f_op_f32(-var_1), -694f));
    var var_3 = vec3<i32>(arg_0, min(func_3(Struct_1(var_0.x), _wgslsmith_mod_vec4_i32(reverseBits(vec4<i32>(arg_0, 29250i, u_input.a, -1i)), ~vec4<i32>(arg_0, var_0.x, var_0.x, u_input.a)), true, Struct_1(var_0.x)), 2147483647i), abs(1i | var_0.x) | firstTrailingBit(reverseBits(1i)));
    return !vec3<bool>(true, true, true & all(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-333f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(278f))), 214f));
    var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1292f, 1554f, 239f)))))), vec3<f32>(-444f, -930f, _wgslsmith_f_op_f32(-var_0.x)), func_1(_wgslsmith_mult_i32(select(u_input.a & -956i, u_input.a | u_input.b, true), 1i))));
    global2 = array<vec2<u32>, 5>();
    var var_1 = -223f;
    let var_2 = reverseBits(~1u);
    var var_3 = Struct_1(~(_wgslsmith_dot_vec4_i32(select(vec4<i32>(u_input.a, u_input.a, 48280i, u_input.b), vec4<i32>(-2147483647i, u_input.b, 0i, u_input.a), false), _wgslsmith_add_vec4_i32(vec4<i32>(-28467i, -25395i, u_input.b, u_input.a), vec4<i32>(-26220i, u_input.b, u_input.b, u_input.b))) >> (74067u % 32u)));
    var_3 = Struct_1(2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(~min(_wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 1u)], var_2, 1u), u_input.c.zzw), ~vec3<u32>(u_input.c.x, 5439u, 47477u)), ~vec3<u32>(var_2, 21952u, 25302u)));
}

