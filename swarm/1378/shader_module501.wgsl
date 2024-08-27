struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<vec3<f32>, 3> = array<vec3<f32>, 3>(vec3<f32>(1522f, -994f, 1442f), vec3<f32>(-108f, 397f, 1196f), vec3<f32>(565f, 1000f, 428f));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_2() -> bool {
    var var_0 = _wgslsmith_add_i32(u_input.a, u_input.b.x);
    let var_1 = Struct_1(_wgslsmith_div_i32(u_input.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(~u_input.b.x, u_input.b.x), _wgslsmith_div_vec2_i32(u_input.b.zz, -u_input.b.xz))), -2815i);
    global1 = array<vec3<f32>, 3>();
    global1 = array<vec3<f32>, 3>();
    let var_2 = true;
    return !((false & select(var_2, var_2, var_2)) | false);
}

fn func_3(arg_0: bool, arg_1: Struct_3) -> Struct_3 {
    global0 = arg_1;
    var var_0 = abs(vec2<u32>(~arg_1.b, u_input.c.x));
    let var_1 = vec2<bool>(true, true);
    global1 = array<vec3<f32>, 3>();
    var var_2 = Struct_1(u_input.b.x >> ((abs(~global0.b) << (_wgslsmith_mult_u32(reverseBits(var_0.x), arg_1.b) % 32u)) % 32u), abs(u_input.b.x));
    return Struct_3(~((global0.a << (global0.a % vec3<u32>(32u))) >> (vec3<u32>(~var_0.x, 1u, 8755u) % vec3<u32>(32u))), ~_wgslsmith_mult_u32(~reverseBits(var_0.x), ~arg_1.b));
}

fn func_1(arg_0: vec3<u32>, arg_1: u32, arg_2: vec3<bool>, arg_3: u32) -> u32 {
    let var_0 = !vec4<bool>(arg_2.x, true, !arg_2.x, any(vec2<bool>(arg_2.x, !arg_2.x)));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(global1[_wgslsmith_index_u32(arg_0.x, 3u)], vec3<f32>(1000f, -1547f, -538f), arg_2)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))))));
    let var_2 = u_input.c.zy;
    var var_3 = Struct_3(arg_0, countOneBits(arg_1));
    global0 = func_3(all(select(select(!vec4<bool>(false, true, arg_2.x, true), var_0, !vec4<bool>(true, arg_2.x, var_0.x, false)), vec4<bool>(var_0.x, var_0.x, func_2(), select(true, var_0.x, true)), !vec4<bool>(false, true, var_0.x, var_0.x))), Struct_3(vec3<u32>(~26619u, _wgslsmith_mod_u32(u_input.c.x, 56240u), global0.b) >> (firstTrailingBit(vec3<u32>(4294967295u, 4294967295u, arg_1)) % vec3<u32>(32u)), ~(~4294967295u) | ~_wgslsmith_dot_vec3_u32(var_3.a, global0.a)));
    return _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(countOneBits(select(~vec4<u32>(var_3.a.x, 4294967295u, var_2.x, 0u), firstLeadingBit(vec4<u32>(var_2.x, global0.b, arg_0.x, arg_0.x)), true)), vec4<u32>(42993u, reverseBits(arg_1) >> (_wgslsmith_dot_vec3_u32(u_input.c, u_input.c) % 32u), var_3.a.x, ~min(64369u, global0.b))), ~var_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<f32>, 3>();
    var var_0 = ~_wgslsmith_sub_vec2_i32(u_input.b.yy, select(u_input.b.yz, _wgslsmith_sub_vec2_i32(u_input.b.xy, u_input.b.yy), all(vec2<bool>(false, true)) || true));
    let var_1 = 795f;
    var var_2 = ~max(~(~(~vec3<u32>(u_input.c.x, 74200u, 697u))), _wgslsmith_mult_vec3_u32(vec3<u32>(~u_input.c.x, ~4294967295u, min(4294967295u, u_input.c.x)), vec3<u32>(1u, _wgslsmith_add_u32(global0.a.x, 57625u), 101209u)));
    var var_3 = min(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(~u_input.b, -vec3<i32>(u_input.a, var_0.x, u_input.b.x)), u_input.b), reverseBits(var_0.x)), u_input.b.x);
    var_0 = vec2<i32>((_wgslsmith_mod_i32(-var_0.x, 30763i) >> ((var_2.x >> (func_1(vec3<u32>(global0.b, var_2.x, global0.a.x), 104749u, vec3<bool>(false, false, false), 144440u) % 32u)) % 32u)) << (~1u % 32u), ~countOneBits(u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(14834u, abs(min(vec4<u32>(1u, var_2.x, 4294967295u, 4294967295u), max(~vec4<u32>(37316u, u_input.c.x, 8306u, var_2.x), vec4<u32>(var_2.x, 3322u, global0.b, 4294967295u) & vec4<u32>(78644u, 1u, 83683u, 4294967295u)))), u_input.c.xy);
}

