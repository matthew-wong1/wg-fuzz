struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec3<f32>,
    c: u32,
    d: i32,
}

struct Struct_4 {
    a: i32,
    b: bool,
    c: Struct_2,
    d: vec4<u32>,
}

struct Struct_5 {
    a: u32,
    b: bool,
    c: f32,
    d: Struct_4,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 30> = array<i32, 30>(11462i, 1i, 14089i, -22609i, 0i, -1i, 0i, -6701i, 3683i, 69153i, 0i, 12755i, i32(-2147483648), 2147483647i, i32(-2147483648), 2147483647i, i32(-2147483648), -7440i, -1i, -1834i, -9678i, 21706i, 15219i, 1i, -1i, i32(-2147483648), 2744i, 2147483647i, i32(-2147483648), 13040i);

var<private> global1: array<vec4<i32>, 5> = array<vec4<i32>, 5>(vec4<i32>(-8960i, 2147483647i, 1i, i32(-2147483648)), vec4<i32>(i32(-2147483648), 2147483647i, 2147483647i, -40955i), vec4<i32>(1i, 0i, i32(-2147483648), i32(-2147483648)), vec4<i32>(0i, 1i, i32(-2147483648), i32(-2147483648)), vec4<i32>(12874i, -11392i, 5315i, 1i));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_2) -> Struct_4 {
    return Struct_4(u_input.b.x, (arg_0.a | false) && arg_2.a.a, Struct_2(arg_0), vec4<u32>(0u, arg_1.x, firstTrailingBit(arg_1.x), (21442u << (u_input.a % 32u)) >> (_wgslsmith_div_u32(arg_1.x, arg_1.x) % 32u)) >> (~vec4<u32>(u_input.a, ~20845u, _wgslsmith_mult_u32(arg_1.x, 0u), ~9846u) % vec4<u32>(32u)));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_4, arg_2: Struct_3, arg_3: vec3<u32>) -> u32 {
    let var_0 = vec2<bool>(false, !any(vec2<bool>(false, true)));
    let var_1 = arg_2;
    var var_2 = vec3<i32>(arg_0.c.a.b.x, arg_1.a, _wgslsmith_dot_vec2_i32(firstLeadingBit(arg_1.c.a.b.zw) & u_input.b.zy, vec2<i32>(-39276i, global0[_wgslsmith_index_u32(max(101491u, 8217u), 30u)]))) >> (select(arg_0.d.xwz, select(~vec3<u32>(4294967295u, 22888u, arg_1.d.x), vec3<u32>(u_input.c.x, ~1u, 21528u), all(!vec4<bool>(true, arg_2.a.x, true, false))), !select(!vec3<bool>(var_0.x, false, true), !vec3<bool>(false, arg_2.a.x, var_1.a.x), true)) % vec3<u32>(32u));
    var_2 = arg_1.c.a.b.wzw;
    global0 = array<i32, 30>();
    return _wgslsmith_mod_u32(arg_0.d.x, 8643u);
}

fn func_1(arg_0: vec3<f32>, arg_1: i32, arg_2: i32, arg_3: vec2<i32>) -> vec4<u32> {
    let var_0 = u_input.a;
    let var_1 = vec3<u32>(~u_input.a, u_input.c.x, 4294967295u);
    let var_2 = -(2147483647i << ((min(u_input.a, abs(u_input.c.x)) & func_3(func_2(Struct_1(true, global1[_wgslsmith_index_u32(var_1.x, 5u)], arg_0.x), var_1.yx, Struct_2(Struct_1(false, vec4<i32>(arg_3.x, global0[_wgslsmith_index_u32(33758u, 30u)], 2147483647i, 39668i), arg_0.x))), func_2(Struct_1(true, global1[_wgslsmith_index_u32(var_1.x, 5u)], 1144f), vec2<u32>(u_input.c.x, 1u), Struct_2(Struct_1(true, vec4<i32>(u_input.b.x, arg_3.x, arg_1, -1i), arg_0.x))), Struct_3(vec2<bool>(true, true), vec3<f32>(2957f, arg_0.x, 1134f), 1u, 16374i), var_1)) % 32u));
    var var_3 = arg_3.x;
    var var_4 = Struct_5(~(~(~(~var_0))), all(vec4<bool>(true, any(vec3<bool>(true, true, true)), false, any(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false))))), -190f, Struct_4(firstTrailingBit(var_2), true, func_2(Struct_1(true, select(global1[_wgslsmith_index_u32(u_input.a, 5u)], vec4<i32>(arg_1, 0i, 0i, 45890i), vec4<bool>(true, false, false, true)), _wgslsmith_f_op_f32(-1343f + arg_0.x)), _wgslsmith_mod_vec2_u32(vec2<u32>(0u, var_0), u_input.c) << (u_input.c % vec2<u32>(32u)), Struct_2(Struct_1(true, global1[_wgslsmith_index_u32(1u, 5u)], 594f))).c, vec4<u32>(var_1.x, _wgslsmith_add_u32(firstLeadingBit(1u), var_1.x & 40613u), firstTrailingBit(0u), var_1.x)), _wgslsmith_sub_u32(firstTrailingBit(~var_0), ~62434u));
    return select(vec4<u32>(func_2(Struct_1(var_4.d.b || var_4.b, ~vec4<i32>(209i, var_2, arg_2, arg_2), _wgslsmith_f_op_f32(-var_4.c)), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.c.x, var_0), vec2<u32>(76458u, 54917u)) & select(vec2<u32>(var_4.a, u_input.c.x), u_input.c, vec2<bool>(var_4.d.b, var_4.d.b)), var_4.d.c).d.x, 5586u, _wgslsmith_clamp_u32(var_0, 1u, ~u_input.a), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, var_1.x, _wgslsmith_div_u32(var_1.x, 4294967295u)), firstTrailingBit(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 4452u, var_0), vec3<u32>(1558u, 1u, 88851u))))), ~_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 1u, var_4.a, _wgslsmith_add_u32(var_1.x, 4294967295u)), vec4<u32>(~8221u, select(u_input.a, 1u, false), 1u, 23060u)), select(!select(!vec4<bool>(var_4.b, false, var_4.b, var_4.b), select(vec4<bool>(true, var_4.b, var_4.d.b, var_4.b), vec4<bool>(var_4.d.c.a.a, var_4.b, true, true), vec4<bool>(var_4.d.c.a.a, var_4.d.c.a.a, true, var_4.d.b)), !vec4<bool>(var_4.b, false, var_4.d.b, true)), vec4<bool>(arg_0.x == _wgslsmith_f_op_f32(-906f * var_4.c), !any(vec2<bool>(false, var_4.d.c.a.a)), all(!vec4<bool>(true, var_4.b, var_4.d.c.a.a, var_4.d.c.a.a)), (var_4.d.c.a.b.x ^ 2147483647i) == _wgslsmith_sub_i32(global0[_wgslsmith_index_u32(23097u, 30u)], global0[_wgslsmith_index_u32(1u, 30u)])), !(!(!vec4<bool>(false, false, true, var_4.d.b)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 30>();
    global0 = array<i32, 30>();
    var var_0 = vec2<i32>(u_input.b.x >> (1u % 32u), 1i);
    var_0 = -vec2<i32>(i32(-1i) * -9403i, _wgslsmith_add_i32(~(-2147483647i) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.b.x, global0[_wgslsmith_index_u32(1u, 30u)], 14708i), vec4<i32>(3981i, global0[_wgslsmith_index_u32(4265u, 30u)], u_input.b.x, 1i)), 53583i));
    var_0 = reverseBits(countOneBits(~vec2<i32>(u_input.b.x, 13539i)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(global1[_wgslsmith_index_u32(u_input.c.x, 5u)]), func_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(883f, -117f, -993f), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(935f, -102f, 1422f))))))), var_0.x, 3129i, u_input.b.yz), ~(~(~vec3<u32>(u_input.a, 19456u, u_input.c.x))) << (vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.c.x, u_input.a, u_input.a), vec4<u32>(u_input.c.x, 4294967295u, u_input.c.x, u_input.a)) ^ 0u, u_input.a, 0u) % vec3<u32>(32u)), var_0.x);
}

