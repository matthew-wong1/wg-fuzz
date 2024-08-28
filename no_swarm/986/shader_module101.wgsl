struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: vec2<u32>,
    d: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(0i, -40914i, -55125i);

var<private> global1: vec4<bool> = vec4<bool>(false, true, false, false);

var<private> global2: array<f32, 21>;

var<private> global3: array<vec4<bool>, 22>;

var<private> global4: array<vec4<bool>, 28>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: vec4<i32>, arg_1: bool) -> f32 {
    var var_0 = Struct_1(vec4<bool>(true || arg_1, false, !(any(global1.yw) & !arg_1), any(global1.zz)), !all(vec4<bool>(true, false, global1.x, global1.x)) && true, vec2<u32>(1u, u_input.c), u_input.c);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-537f))), global2[_wgslsmith_index_u32(~(u_input.c << (0u % 32u)), 21u)], global1.x))));
}

fn func_1(arg_0: vec4<u32>, arg_1: f32, arg_2: bool) -> f32 {
    global2 = array<f32, 21>();
    var var_0 = any(global1.xx) & (_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(arg_0.x, 21u)]) == _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_2(_wgslsmith_mod_vec4_i32(vec4<i32>(global0.x, -63844i, u_input.d, global0.x), vec4<i32>(-1i, u_input.b.x, global0.x, 1i)), global1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1))))));
    var var_1 = all(vec2<bool>(select(true, false, !all(vec4<bool>(global1.x, arg_2, arg_2, false))), ~arg_0.x <= (~u_input.c ^ arg_0.x)));
    global0 = u_input.a.yyw;
    var var_2 = arg_2;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.c, arg_0.x, u_input.c), vec3<u32>(arg_0.x, u_input.c, arg_0.x) >> (vec3<u32>(u_input.c, u_input.c, arg_0.x) % vec3<u32>(32u))), 21u)], -734f))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 21u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)))));
}

fn func_3() -> vec3<i32> {
    var var_0 = Struct_1(select(!(!global3[_wgslsmith_index_u32(39202u, 22u)]), vec4<bool>(global1.x, global1.x, any(!global1.xxx), global1.x), !vec4<bool>(all(global4[_wgslsmith_index_u32(u_input.c, 28u)]), false, global1.x, false)), any(global1.xyx), ~vec2<u32>(~89255u, firstTrailingBit(0u)), _wgslsmith_mod_u32(_wgslsmith_sub_u32(abs(~u_input.c), 4294967295u), _wgslsmith_clamp_u32(_wgslsmith_add_u32(~93268u, _wgslsmith_clamp_u32(0u, u_input.c, u_input.c)), u_input.c, u_input.c)));
    var var_1 = Struct_1(select(var_0.a, global4[_wgslsmith_index_u32(_wgslsmith_add_u32(firstTrailingBit(var_0.d), var_0.c.x) >> (0u % 32u), 28u)], global1.x), !any(!vec3<bool>(global1.x, global1.x, global1.x)), max(firstLeadingBit(var_0.c), min(var_0.c, var_0.c) & firstTrailingBit(vec2<u32>(1u, var_0.c.x))), ~abs(4294967295u >> (1u % 32u)));
    let var_2 = _wgslsmith_sub_vec2_u32(~(_wgslsmith_div_vec2_u32(var_1.c, var_0.c) | ~firstTrailingBit(var_1.c)), select(~vec2<u32>(~var_0.d, reverseBits(var_0.d)), _wgslsmith_mult_vec2_u32(~var_1.c, ~var_1.c) & vec2<u32>(_wgslsmith_div_u32(61006u, u_input.c), _wgslsmith_dot_vec2_u32(vec2<u32>(30316u, 12031u), vec2<u32>(4294967295u, 1u))), var_0.a.xw));
    return ~(~reverseBits(vec3<i32>(u_input.d, u_input.a.x >> (23117u % 32u), global0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec4<bool>, 22>();
    let var_0 = true;
    var var_1 = _wgslsmith_div_i32(-2147483647i, firstTrailingBit(51102i & u_input.a.x));
    let var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1146f * _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(vec4<u32>(u_input.c, u_input.c, u_input.c, 38881u), 2555f, global1.x)), _wgslsmith_f_op_f32(-419f + global2[_wgslsmith_index_u32(u_input.c, 21u)])), 423f)))));
    global1 = select(global4[_wgslsmith_index_u32(u_input.c, 28u)], global3[_wgslsmith_index_u32(~u_input.c, 22u)], -186f == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(0u, 21u)])))));
    global1 = !(!(!(!(!global4[_wgslsmith_index_u32(0u, 28u)]))));
    global0 = _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, u_input.a.x, u_input.b.x), u_input.a.yzz), _wgslsmith_sub_vec3_i32(abs(vec3<i32>(u_input.d, u_input.b.x, -2147483647i)), ~vec3<i32>(42040i, u_input.a.x, 27124i))), u_input.a.xyz) ^ ~func_3();
    let x = u_input.a;
    s_output = StorageBuffer(~7678i, vec3<i32>(_wgslsmith_add_i32(-34715i, _wgslsmith_div_i32(u_input.d, 14823i)) ^ min(firstLeadingBit(26123i), ~u_input.d), i32(-1i) * -1i, _wgslsmith_add_i32(_wgslsmith_add_i32(57062i, 71623i), min(2496i, u_input.d)) | -select(global0.x, global0.x, var_0)));
}

