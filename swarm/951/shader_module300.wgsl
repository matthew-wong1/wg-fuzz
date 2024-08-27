struct Struct_1 {
    a: vec4<i32>,
    b: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<bool>,
    c: Struct_1,
    d: u32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 21>;

var<private> global1: array<vec4<u32>, 30>;

var<private> global2: array<vec3<f32>, 30>;

var<private> global3: array<Struct_1, 25>;

var<private> global4: array<vec3<f32>, 13>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1() -> vec4<u32> {
    return u_input.a;
}

fn func_2(arg_0: i32) -> u32 {
    var var_0 = vec3<bool>(true, true, true);
    global0 = array<i32, 21>();
    let var_1 = u_input.a;
    let var_2 = global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(14029u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_1.x, _wgslsmith_mod_u32(45987u, _wgslsmith_dot_vec3_u32(u_input.a.wwy, u_input.a.xww))), ~u_input.a.zwx), u_input.a.x), 25u)];
    global2 = array<vec3<f32>, 30>();
    return 4294967295u;
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: f32) -> bool {
    global2 = array<vec3<f32>, 30>();
    let var_0 = ~(vec4<i32>(-1i) * -arg_1.c.a);
    var var_1 = select(vec2<u32>(~982u, _wgslsmith_dot_vec4_u32(firstLeadingBit(~vec4<u32>(u_input.a.x, 4294967295u, 11541u, 0u)), select(min(u_input.a, vec4<u32>(75424u, arg_1.d, arg_1.d, 0u)), ~global1[_wgslsmith_index_u32(21257u, 30u)], arg_1.b.x))), (firstTrailingBit(max(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(4294967295u, 5527u))) | (u_input.a.yz & ~u_input.a.xy)) >> (~(~_wgslsmith_sub_vec2_u32(vec2<u32>(arg_1.d, u_input.a.x), u_input.a.yx)) % vec2<u32>(32u)), arg_1.b.xy);
    var var_2 = u_input.a.zx;
    let var_3 = vec4<i32>(select(-(~var_0.x), arg_1.a.x, any(!arg_1.e)), arg_1.c.a.x, arg_1.a.x, var_0.x) & vec4<i32>(firstTrailingBit(34669i), _wgslsmith_div_i32(-1i, arg_1.c.a.x), firstTrailingBit(arg_1.a.x) ^ firstLeadingBit(arg_1.c.a.x), arg_1.a.x);
    return arg_1.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(~_wgslsmith_mod_vec2_i32(-vec2<i32>(-43189i, -7827i), -vec2<i32>(2147483647i, global0[_wgslsmith_index_u32(1u, 21u)])), _wgslsmith_sub_vec2_i32((vec2<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 21u)], -7234i) & vec2<i32>(2147483647i, global0[_wgslsmith_index_u32(4604u, 21u)])) << (u_input.a.zw % vec2<u32>(32u)), ~_wgslsmith_add_vec2_i32(vec2<i32>(-1i, -2770i), vec2<i32>(-24644i, -2808i)))), -(max(_wgslsmith_div_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 21u)], global0[_wgslsmith_index_u32(0u, 21u)]), vec2<i32>(-1i, global0[_wgslsmith_index_u32(39880u, 21u)])), _wgslsmith_div_vec2_i32(vec2<i32>(24388i, global0[_wgslsmith_index_u32(u_input.a.x, 21u)]), vec2<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 21u)], global0[_wgslsmith_index_u32(50584u, 21u)]))) & vec2<i32>(0i, 1i)));
    global4 = array<vec3<f32>, 13>();
    var_0 = -vec2<i32>(firstTrailingBit(-2147483647i), firstLeadingBit(~var_0.x | min(23412i, global0[_wgslsmith_index_u32(1u, 21u)])));
    let var_1 = vec4<u32>(u_input.a.x, 58866u, _wgslsmith_dot_vec4_u32(func_1() | (abs(global1[_wgslsmith_index_u32(17592u, 30u)]) << (u_input.a % vec4<u32>(32u))), u_input.a), func_2(global0[_wgslsmith_index_u32(1u, 21u)]));
    var var_2 = Struct_2(~(-(~(~vec2<i32>(var_0.x, 3405i)))), !(!vec4<bool>(true, true, all(vec4<bool>(true, false, true, false)), true)), Struct_1(-(-vec4<i32>(-1i, -7271i, var_0.x, global0[_wgslsmith_index_u32(var_1.x, 21u)]) & (vec4<i32>(global0[_wgslsmith_index_u32(var_1.x, 21u)], global0[_wgslsmith_index_u32(0u, 21u)], 1i, global0[_wgslsmith_index_u32(var_1.x, 21u)]) | vec4<i32>(-1865i, var_0.x, var_0.x, -2147483647i))), u_input.a.x), u_input.a.x, select(!vec4<bool>(true, 18747u > u_input.a.x, true, true), vec4<bool>(func_3(-199f, Struct_2(vec2<i32>(var_0.x, -30786i), vec4<bool>(false, true, false, false), global3[_wgslsmith_index_u32(var_1.x, 25u)], 38933u, vec4<bool>(true, false, true, true)), vec2<f32>(1482f, -1101f), _wgslsmith_f_op_f32(sign(1059f))), true, all(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), false)), true), !vec4<bool>(any(vec3<bool>(true, true, false)), false, true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(1f, 1629f, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(264f - -389f), _wgslsmith_div_f32(-363f, -445f))))));
}

