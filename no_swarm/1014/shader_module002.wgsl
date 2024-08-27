struct Struct_1 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec2<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 19> = array<vec2<bool>, 19>(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true));

var<private> global1: array<i32, 27>;

var<private> global2: i32;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> i32 {
    global1 = array<i32, 27>();
    global0 = array<vec2<bool>, 19>();
    let var_0 = countOneBits(abs(~(~_wgslsmith_add_vec3_u32(vec3<u32>(1u, u_input.b.x, u_input.b.x), vec3<u32>(u_input.b.x, 1u, 43248u)))));
    let var_1 = abs(~u_input.c.x);
    var var_2 = Struct_1(u_input.c.zx >> (~(~u_input.b) % vec2<u32>(32u)));
    return ~firstTrailingBit(reverseBits(countOneBits(-var_2.a.x)));
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    let var_0 = firstTrailingBit(vec2<i32>(func_3(), _wgslsmith_dot_vec4_i32(min(vec4<i32>(arg_2, 0i, global1[_wgslsmith_index_u32(1u, 27u)], 2147483647i), vec4<i32>(arg_1.a.x, global1[_wgslsmith_index_u32(u_input.b.x, 27u)], global1[_wgslsmith_index_u32(u_input.b.x, 27u)], arg_1.a.x)), _wgslsmith_div_vec4_i32(vec4<i32>(-1i, arg_1.a.x, -2147483647i, 30191i), vec4<i32>(2147483647i, arg_2, arg_1.a.x, arg_1.a.x)))) ^ -vec2<i32>(-2147483647i, _wgslsmith_mult_i32(global1[_wgslsmith_index_u32(0u, 27u)], 13363i)));
    global2 = 1i;
    var var_1 = arg_1;
    var var_2 = arg_1;
    let var_3 = arg_1;
    return Struct_1(-var_0 >> ((~max(u_input.b, vec2<u32>(u_input.b.x, u_input.b.x)) >> (u_input.b % vec2<u32>(32u))) % vec2<u32>(32u)));
}

fn func_1(arg_0: vec2<bool>) -> Struct_1 {
    let var_0 = func_2(!any(!select(arg_0, arg_0, arg_0.x)), Struct_1(-vec2<i32>(-44397i, global1[_wgslsmith_index_u32(1u, 27u)]) << (~countOneBits(u_input.b) % vec2<u32>(32u))), _wgslsmith_mod_i32(-25595i, u_input.c.x));
    global1 = array<i32, 27>();
    let var_1 = vec3<u32>(u_input.b.x ^ reverseBits(~(~u_input.b.x)), ~u_input.b.x, max((u_input.b.x ^ 1u) ^ firstLeadingBit(reverseBits(77490u)), u_input.b.x));
    global1 = array<i32, 27>();
    var var_2 = func_2(true, Struct_1(u_input.a.yz), -9675i);
    return func_2(!((arg_0.x && true) & true), var_0, i32(-1i) * -global1[_wgslsmith_index_u32(~(~var_1.x), 27u)]);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>) -> u32 {
    let var_0 = !(!select(vec3<bool>(true, false, all(global0[_wgslsmith_index_u32(6827u, 19u)])), !select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false)), all(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), true))));
    let var_1 = arg_0;
    global1 = array<i32, 27>();
    global2 = reverseBits(28876i);
    global0 = array<vec2<bool>, 19>();
    return ~1409u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec2<i32>(global1[_wgslsmith_index_u32(0u, 27u)], (-40241i << (u_input.b.x % 32u)) ^ 1i) >> (vec2<u32>(1u, func_4(func_1(global0[_wgslsmith_index_u32(u_input.b.x, 19u)]), ~vec4<u32>(35150u, 71227u, u_input.b.x, u_input.b.x))) % vec2<u32>(32u)));
    global2 = ~max(reverseBits(u_input.a.x), (global1[_wgslsmith_index_u32(firstLeadingBit(u_input.b.x), 27u)] << (_wgslsmith_div_u32(18901u, 17688u) % 32u)) | _wgslsmith_div_i32(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(49244u, 27u)], 2147483647i, global1[_wgslsmith_index_u32(0u, 27u)], u_input.e), vec4<i32>(global1[_wgslsmith_index_u32(48942u, 27u)], 11894i, global1[_wgslsmith_index_u32(4294967295u, 27u)], var_0.a.x))));
    let var_1 = firstTrailingBit(~abs(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 0u), select(u_input.b, u_input.b, true))));
    global1 = array<i32, 27>();
    var var_2 = func_2(any(select(vec2<bool>(true, select(true, false, false)), vec2<bool>(all(vec3<bool>(false, true, false)), true), any(vec4<bool>(true, true, true, true)))), func_1(select(global0[_wgslsmith_index_u32(var_1.x, 19u)], !global0[_wgslsmith_index_u32(1u, 19u)], true)), u_input.a.x);
    global0 = array<vec2<bool>, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(432f, -1642f, -2176f), vec3<f32>(2277f, 1000f, -1163f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1000f, -281f, -937f), vec3<f32>(721f, -583f, -2830f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1852f + _wgslsmith_f_op_f32(floor(1499f)))))), vec2<u32>(var_1.x, var_1.x), 313f);
}

