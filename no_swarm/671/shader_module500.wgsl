struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: i32,
    c: Struct_1,
}

struct Struct_4 {
    a: vec2<i32>,
    b: bool,
    c: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<i32>,
    d: vec4<i32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 7>;

var<private> global1: bool = false;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: bool) -> vec4<u32> {
    global0 = array<vec2<f32>, 7>();
    return ~(~select(~firstLeadingBit(vec4<u32>(4294967295u, 79741u, 0u, 1u)), select(firstTrailingBit(vec4<u32>(4294967295u, 27036u, 18492u, 80250u)), vec4<u32>(1u, 1u, 1u, 1u), !vec4<bool>(true, true, false, arg_0)), vec4<bool>(arg_0, arg_0, true, true)));
}

fn func_2() -> Struct_4 {
    let var_0 = all(vec3<bool>(true, true, true)) | true;
    global0 = array<vec2<f32>, 7>();
    let var_1 = Struct_1(countOneBits(u_input.b.zww), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(534f)) - _wgslsmith_f_op_f32(-1509f + -1000f)), -214f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -478f) - 754f))), min(vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_mod_vec4_u32(~vec4<u32>(16303u, 1u, 0u, 49303u), _wgslsmith_mult_vec4_u32(func_3(var_0), vec4<u32>(4294967295u, 33901u, 4294967295u, 4294967295u)))), reverseBits(abs(u_input.a)));
    global0 = array<vec2<f32>, 7>();
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1502f, _wgslsmith_f_op_f32(-var_1.b)))), _wgslsmith_f_op_f32(step(var_1.b, var_1.b)))));
    return Struct_4(~(~(var_1.a.yz >> (_wgslsmith_div_vec2_u32(vec2<u32>(var_1.c.x, var_1.c.x), var_1.c.xx) % vec2<u32>(32u)))), var_0, abs(u_input.a.x));
}

fn func_1(arg_0: f32, arg_1: Struct_3, arg_2: Struct_4) -> i32 {
    global1 = any(!(!vec4<bool>(true, all(vec2<bool>(arg_2.b, arg_2.b)), !arg_2.b, true && arg_2.b)));
    var var_0 = func_2();
    global0 = array<vec2<f32>, 7>();
    var var_1 = u_input.b.wwz;
    var var_2 = arg_1.c;
    return ~_wgslsmith_add_i32(abs(min(arg_1.c.a.x, var_1.x)), 0i) << ((arg_1.c.c.x << (~(~var_2.c.x) % 32u)) % 32u);
}

fn func_4(arg_0: Struct_4, arg_1: vec4<f32>, arg_2: Struct_3) -> Struct_1 {
    let var_0 = arg_0.b;
    var var_1 = arg_2.c;
    var var_2 = ~1u;
    var var_3 = ~arg_2.c.c;
    global0 = array<vec2<f32>, 7>();
    return arg_2.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_4(~(-u_input.a), true, ~firstTrailingBit(1i)), vec4<f32>(_wgslsmith_f_op_f32(809f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(708f * 694f), _wgslsmith_f_op_f32(-440f * -152f)))), _wgslsmith_f_op_f32(-721f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1615f, -2174f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1000f * 847f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-517f))))), Struct_3(vec3<f32>(1f, _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(f32(-1f) * -1109f)), -_wgslsmith_add_i32(_wgslsmith_clamp_i32(-48662i, -37545i, u_input.c), func_1(-427f, Struct_3(vec3<f32>(-525f, 1392f, -360f), 0i, Struct_1(u_input.b.yyz, -256f, vec4<u32>(0u, 1u, 1825u, 4294967295u), vec2<i32>(65543i, 1i))), Struct_4(vec2<i32>(u_input.a.x, -41139i), true, -7607i))), Struct_1(-(u_input.b.wwy & u_input.b.xzy), -1081f, vec4<u32>(~40943u, 4294967295u, abs(91787u), countOneBits(1877u)), u_input.a)));
    global1 = false;
    global1 = true;
    global0 = array<vec2<f32>, 7>();
    var var_1 = _wgslsmith_clamp_u32(4294967295u, _wgslsmith_dot_vec2_u32(var_0.c.zy, ~vec2<u32>(var_0.c.x, 1u)) | _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, var_0.c.x), _wgslsmith_div_vec2_u32(vec2<u32>(var_0.c.x, var_0.c.x), var_0.c.ww)), abs(max(~1u, min(var_0.c.x, 0u)))) < ~var_0.c.x;
    let var_2 = 1u;
    let var_3 = true;
    var var_4 = vec3<bool>(any(vec2<bool>(any(vec4<bool>(false, false, false, false)) && var_3, all(select(vec4<bool>(var_3, true, var_3, true), vec4<bool>(true, var_3, false, var_3), true)))), false, var_3);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.wyx, u_input.a.x, var_0.a >> (firstTrailingBit(~_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(var_2, var_0.c.x, 1u))) % vec3<u32>(32u)), min(~(countOneBits(u_input.b) << (_wgslsmith_div_vec4_u32(var_0.c, var_0.c) % vec4<u32>(32u))), vec4<i32>(-30666i, _wgslsmith_clamp_i32(-u_input.c, 0i, ~(-1i)), ~var_0.a.x, u_input.b.x | ~u_input.a.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(624f, -798f)), var_0.b, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(var_0.b * 578f)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(298f, 1633f, 2430f, 1299f))))))));
}

