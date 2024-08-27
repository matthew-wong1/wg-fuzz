struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: f32,
    b: vec2<u32>,
    c: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: i32;

var<private> global2: Struct_1 = Struct_1(27015u);

var<private> global3: array<f32, 23>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec4<u32>, arg_1: i32, arg_2: bool) -> bool {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(firstLeadingBit(22668u >> (0u % 32u)), 23u)] * -557f) - _wgslsmith_f_op_f32(step(-203f, _wgslsmith_f_op_f32(abs(global3[_wgslsmith_index_u32(countOneBits(u_input.b), 23u)]))))), ~(vec2<u32>(~u_input.b, firstLeadingBit(arg_0.x)) & firstLeadingBit(u_input.a.yy)), true);
    global2 = Struct_1(var_0.b.x);
    var_0 = Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-444f)) + -1260f))), arg_0.wy, var_0.a > _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global3[_wgslsmith_index_u32(1u, 23u)], global3[_wgslsmith_index_u32(28156u, 23u)]))))));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -930f);
    return arg_2;
}

fn func_2(arg_0: vec2<u32>, arg_1: u32) -> bool {
    global3 = array<f32, 23>();
    return any(vec2<bool>(!func_3(vec4<u32>(global2.a, 13947u, arg_0.x, 1u), 11692i, true), all(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true))));
}

fn func_1(arg_0: Struct_1) -> Struct_2 {
    let var_0 = abs(_wgslsmith_div_i32(_wgslsmith_sub_i32(select(1i, ~(-47958i), any(vec3<bool>(true, false, false))), _wgslsmith_add_i32(i32(-1i) * -18291i, ~(-45784i))), _wgslsmith_div_i32(_wgslsmith_clamp_i32(1i, abs(1i), -1i), select(_wgslsmith_clamp_i32(-2147483647i, -6828i, 0i), 1i, true))));
    global1 = 32932i;
    global3 = array<f32, 23>();
    var var_1 = select(!vec4<bool>(true, func_2(vec2<u32>(global2.a, 42960u), global2.a) | true, all(vec2<bool>(true, true)), !select(false, true, false)), !select(select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), true), true), vec4<bool>(true, true, true, func_2(vec2<u32>(777u, arg_0.a), arg_0.a)), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false))), true);
    var var_2 = abs(-_wgslsmith_add_i32(-13022i, reverseBits(-1i))) | var_0;
    return Struct_2(-613f, ~(~firstTrailingBit(vec2<u32>(1u, arg_0.a))), var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_1(u_input.a.x));
    let var_1 = select(~(~(select(4294967295u, 0u, var_0.c) << (~global2.a % 32u))), _wgslsmith_mult_u32(~(~var_0.b.x), _wgslsmith_clamp_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b.x, global2.a, var_0.b.x, var_0.b.x), vec4<u32>(4294967295u, 0u, 0u, 4294967295u)), 0u, var_0.b.x)), var_0.c);
    var var_2 = abs(vec4<i32>(30179i, 2147483647i, _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, -1i), vec2<i32>(-6850i, -23572i)), vec2<i32>(-45489i, 1i)), -_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 1i, 7798i, -2147483647i), vec4<i32>(-21418i, -27173i, 3711i, 16073i)))) << (vec4<u32>(1u, 1u, _wgslsmith_sub_u32(countOneBits(u_input.a.x), u_input.b), (global2.a >> (47785u % 32u)) >> (~u_input.a.x % 32u)) % vec4<u32>(32u));
    var_2 = countOneBits(~(abs(vec4<i32>(var_2.x, -5029i, 8348i, var_2.x)) | max(min(vec4<i32>(var_2.x, -19555i, -2147483647i, var_2.x), vec4<i32>(44433i, 47731i, var_2.x, -2147483647i)), vec4<i32>(-1i, 14864i, 2147483647i, 1i))));
    global2 = Struct_1(var_0.b.x);
    global2 = Struct_1(abs(~reverseBits(1u | u_input.b)));
    global2 = Struct_1(var_0.b.x);
    var_2 = _wgslsmith_div_vec4_i32(select(~vec4<i32>(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(15064i, -8717i, -1i, var_2.x), vec4<i32>(1i, var_2.x, var_2.x, 27990i)), var_2.x, var_2.x), -(firstTrailingBit(vec4<i32>(var_2.x, 0i, 0i, -2147483647i)) >> (vec4<u32>(u_input.a.x, 14371u, 1u, var_1) % vec4<u32>(32u))), vec4<bool>(true, !var_0.c, true, _wgslsmith_f_op_f32(f32(-1f) * -407f) >= var_0.a)), select(vec4<i32>(-firstTrailingBit(-2147483647i), _wgslsmith_add_i32(var_2.x | var_2.x, var_2.x), 0i, ~firstLeadingBit(var_2.x)), -abs(select(vec4<i32>(var_2.x, -1i, var_2.x, -37770i), vec4<i32>(var_2.x, var_2.x, var_2.x, -2147483647i), false)), true));
    let var_3 = reverseBits(var_0.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(-var_0.a), global3[_wgslsmith_index_u32(_wgslsmith_div_u32(var_1, 4294967295u) >> (_wgslsmith_add_u32(u_input.a.x, 1u) % 32u), 23u)]))));
}

