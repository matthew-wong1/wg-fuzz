struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: vec4<u32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: bool,
    b: vec2<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: u32;

var<private> global2: array<vec3<i32>, 13>;

var<private> global3: array<Struct_3, 17>;

var<private> global4: bool = false;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_1) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1055f, arg_0.d.x, -1275f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(125f, 1225f, arg_0.d.x) - _wgslsmith_div_vec3_f32(vec3<f32>(-2750f, 154f, arg_0.d.x), arg_0.d)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.d.x, -111f, arg_0.d.x)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.d.x, 380f, arg_0.d.x) - arg_0.d))))));
    let var_1 = select(vec2<u32>(4294967295u ^ arg_0.b, _wgslsmith_clamp_u32(u_input.b.x, ~firstTrailingBit(u_input.b.x), max(~u_input.b.x, ~0u))), ~vec2<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, arg_0.a.x, 60830u, arg_0.b), vec4<u32>(u_input.b.x, 4294967295u, 1u, arg_0.b)), vec4<u32>(1964u, 42764u, u_input.b.x, u_input.b.x) ^ vec4<u32>(arg_0.b, arg_0.c.x, arg_0.b, arg_0.a.x)), ~u_input.b.x), !vec2<bool>(u_input.b.x <= arg_0.b, true));
    var var_2 = u_input.a.yx;
    let var_3 = global3[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(~u_input.b.x, arg_0.a.x, abs(max(1u, var_1.x)), ~_wgslsmith_div_u32(26854u, var_1.x)), vec4<u32>(4294967295u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, u_input.b.x, u_input.b.x), vec3<u32>(arg_0.b, 69454u, arg_0.b)), select(_wgslsmith_clamp_u32(u_input.b.x, var_1.x, 32536u), var_1.x, any(vec3<bool>(true, false, true))), ~(~u_input.b.x)))), 17u)];
    let var_4 = Struct_3(select(var_3.c.c.x >= 4294967295u, !any(!vec2<bool>(true, var_3.a)), (firstLeadingBit(u_input.a.x) << (var_3.c.b % 32u)) == _wgslsmith_clamp_i32(~var_2.x, var_2.x, _wgslsmith_mod_i32(var_2.x, u_input.c.x))), var_1, var_3.c);
    return true & !any(vec3<bool>(!var_4.a, false, var_4.a));
}

fn func_2(arg_0: Struct_2, arg_1: bool, arg_2: f32, arg_3: vec3<i32>) -> f32 {
    var var_0 = arg_0;
    global2 = array<vec3<i32>, 13>();
    global1 = select(54286u, _wgslsmith_div_u32(u_input.b.x, 4294967295u), func_3(Struct_1(select(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b.x, 4294967295u), arg_0.a.a), arg_0.a.c.yy, vec2<bool>(arg_1, true)), ~var_0.b, firstTrailingBit(abs(arg_0.a.c)), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(var_0.a.d, var_0.a.d), var_0.a.d))));
    var var_1 = _wgslsmith_add_i32(abs(-2147483647i | firstLeadingBit(u_input.a.x)), abs(_wgslsmith_add_i32(firstLeadingBit(arg_3.x), 40602i))) <= arg_3.x;
    let var_2 = arg_0;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1036f))) + _wgslsmith_f_op_f32(-var_2.a.d.x));
}

fn func_1() -> u32 {
    global0 = ~firstTrailingBit(u_input.b.x);
    var var_0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_2(Struct_2(Struct_1(vec2<u32>(5649u, u_input.b.x), 1u, vec4<u32>(17223u, 10542u, u_input.b.x, 29633u), vec3<f32>(608f, 600f, -775f)), u_input.b.x), true, -2950f, u_input.a)), _wgslsmith_f_op_f32(select(567f, 492f, true)), _wgslsmith_f_op_f32(f32(-1f) * -623f), -651f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1409f, 1000f, -202f, -1482f))))));
    global0 = reverseBits(114942u) ^ _wgslsmith_add_u32(~u_input.b.x, 13564u);
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 6607u, 45462u >> (0u % 32u), _wgslsmith_sub_u32(u_input.b.x, u_input.b.x)) & _wgslsmith_sub_vec4_u32(~vec4<u32>(0u, u_input.b.x, u_input.b.x, 7550u), ~vec4<u32>(4294967295u, u_input.b.x, 1u, 36547u)), ~(~vec4<u32>(u_input.b.x, 38060u, 1u, u_input.b.x) << (~vec4<u32>(22566u, 31265u, 0u, 9866u) % vec4<u32>(32u)))), 17u)];
    var var_1 = 1i;
    let var_2 = var_0.c.d.x;
    global3 = array<Struct_3, 17>();
    let var_3 = Struct_1(_wgslsmith_sub_vec2_u32(~(~firstLeadingBit(var_0.b)), ~_wgslsmith_mod_vec2_u32(vec2<u32>(var_0.b.x, 25942u), u_input.b.yx)), ~1u, vec4<u32>(~var_0.c.a.x, 1u, var_0.b.x, func_1()) >> (var_0.c.c % vec4<u32>(32u)), vec3<f32>(-310f, -531f, _wgslsmith_f_op_f32(f32(-1f) * -541f)));
    let var_4 = ~_wgslsmith_mult_u32(_wgslsmith_sub_u32(~_wgslsmith_sub_u32(var_0.b.x, var_0.c.a.x), countOneBits(var_3.a.x) << (1u % 32u)), 0u);
    var var_5 = Struct_1(_wgslsmith_mult_vec2_u32(u_input.b.yz, var_0.c.c.wz), firstTrailingBit(firstLeadingBit(_wgslsmith_div_u32(4294967295u, u_input.b.x))), ~var_0.c.c, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_3.d.x, var_3.d.x, 389f))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.d.x, 1000f, 687f) + var_0.c.d), _wgslsmith_f_op_vec3_f32(var_0.c.d - vec3<f32>(var_0.c.d.x, var_0.c.d.x, 192f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1428f, 529f))), _wgslsmith_f_op_f32(-323f + var_0.c.d.x), var_0.c.d.x), vec2<i32>(2147483647i, firstTrailingBit(-2147483647i)), max(1i, -48882i));
}

