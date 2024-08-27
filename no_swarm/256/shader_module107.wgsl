struct Struct_1 {
    a: vec3<i32>,
    b: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 2>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: i32) -> u32 {
    let var_0 = max(firstLeadingBit(_wgslsmith_mod_vec3_u32(~select(vec3<u32>(0u, 1u, 8533u), vec3<u32>(23168u, 65136u, 8494u), false), firstLeadingBit(vec3<u32>(910u, 4294967295u, 0u)))), _wgslsmith_mod_vec3_u32(~(vec3<u32>(arg_1, 1u, 1u) << ((vec3<u32>(4294967295u, arg_0.b, 0u) >> (vec3<u32>(4294967295u, arg_1, 1u) % vec3<u32>(32u))) % vec3<u32>(32u))), _wgslsmith_sub_vec3_u32(reverseBits(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.b, arg_1, 45680u), vec3<u32>(arg_0.b, 43425u, arg_1))), ~max(vec3<u32>(8289u, arg_1, arg_0.b), vec3<u32>(arg_1, 4294967295u, arg_1)))));
    var var_1 = firstTrailingBit(var_0.x);
    var var_2 = arg_0;
    return var_0.x;
}

fn func_2(arg_0: bool, arg_1: bool) -> vec3<bool> {
    global0 = array<i32, 2>();
    var var_0 = firstTrailingBit(~func_3(Struct_1(vec3<i32>(u_input.a.x, global0[_wgslsmith_index_u32(1u, 2u)], 540i), 4294967295u), ~0u, u_input.a.x)) ^ 37958u;
    let var_1 = Struct_1(abs(u_input.a.wwx), 1u);
    let var_2 = _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~(~vec4<u32>(var_1.b, 19062u, 25805u, var_1.b)), _wgslsmith_mult_vec4_u32(abs(vec4<u32>(var_1.b, 49475u, var_1.b, var_1.b)), _wgslsmith_mult_vec4_u32(vec4<u32>(22381u, 1u, 0u, var_1.b), vec4<u32>(var_1.b, 52301u, 1u, var_1.b)))), _wgslsmith_add_vec4_u32(~vec4<u32>(var_1.b, var_1.b, var_1.b, 0u), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, var_1.b, var_1.b, 44706u), vec4<u32>(var_1.b, 12652u, var_1.b, 1u), vec4<u32>(4294967295u, 91055u, var_1.b, 4294967295u)))) > (_wgslsmith_sub_u32(var_1.b, 0u) << (~63772u % 32u));
    var_0 = func_3(Struct_1(firstTrailingBit(select(u_input.a.wzx, var_1.a << (vec3<u32>(36643u, 0u, 4294967295u) % vec3<u32>(32u)), vec3<bool>(true, true, true))), ~_wgslsmith_sub_u32(countOneBits(var_1.b), max(var_1.b, var_1.b))), 0u, _wgslsmith_add_i32(-(0i & _wgslsmith_dot_vec4_i32(vec4<i32>(-4525i, 0i, var_1.a.x, 2147483647i), u_input.a)), 0i));
    return !(!select(select(select(vec3<bool>(true, true, arg_1), vec3<bool>(false, arg_1, true), arg_0), !vec3<bool>(arg_0, true, arg_0), !vec3<bool>(false, arg_1, arg_0)), vec3<bool>(all(vec2<bool>(false, var_2)), true, true), select(vec3<bool>(var_2, arg_1, true), !vec3<bool>(true, arg_0, true), arg_1 && arg_1)));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: u32, arg_3: u32) -> StorageBuffer {
    var var_0 = !(any(select(func_2(true, false), vec3<bool>(true, true, true), func_2(true, true))) && all(select(vec3<bool>(true, true, true), func_2(false, true), vec3<bool>(true, true, true))));
    var var_1 = Struct_1(-vec3<i32>(~global0[_wgslsmith_index_u32(1u, 2u)], arg_0.a.x & 1i, 1790i), arg_3);
    global0 = array<i32, 2>();
    let var_2 = Struct_1(min(_wgslsmith_mod_vec3_i32(firstTrailingBit(vec3<i32>(27646i, -15267i, arg_1.x) << (vec3<u32>(0u, 1u, arg_3) % vec3<u32>(32u))), vec3<i32>(_wgslsmith_div_i32(global0[_wgslsmith_index_u32(arg_0.b, 2u)], var_1.a.x), abs(2147483647i), -7884i)), vec3<i32>(1i, 1i, 1i) | (_wgslsmith_mod_vec3_i32(arg_0.a, vec3<i32>(22711i, arg_1.x, u_input.a.x)) | _wgslsmith_clamp_vec3_i32(arg_0.a, vec3<i32>(arg_1.x, -26987i, global0[_wgslsmith_index_u32(1576u, 2u)]), vec3<i32>(u_input.b, 0i, -15639i)))), 9849u | arg_3);
    global0 = array<i32, 2>();
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1465f, -1000f, -734f)))))), countOneBits(firstLeadingBit(arg_1.x)), ~countOneBits(u_input.b) << (var_2.b % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 2>();
    let x = u_input.a;
    s_output = func_1(Struct_1(_wgslsmith_mod_vec3_i32(firstLeadingBit(u_input.a.xww), firstTrailingBit(u_input.a.xyy)), reverseBits(1u)), firstLeadingBit(select(_wgslsmith_add_vec4_i32(u_input.a >> (vec4<u32>(4294967295u, 1u, 84416u, 0u) % vec4<u32>(32u)), select(vec4<i32>(u_input.b, u_input.a.x, 1i, u_input.b), u_input.a, vec4<bool>(true, false, false, false))), vec4<i32>(global0[_wgslsmith_index_u32(25143u, 2u)], 0i, 0i, -2761i) << (_wgslsmith_add_vec4_u32(vec4<u32>(1u, 52385u, 1u, 3743u), vec4<u32>(10981u, 1u, 1u, 0u)) % vec4<u32>(32u)), vec4<bool>(true, true, select(false, false, true), false))), _wgslsmith_mod_u32(1u, 26839u), _wgslsmith_clamp_u32(~(~0u), abs(59715u), 1u) >> (46691u % 32u));
}

