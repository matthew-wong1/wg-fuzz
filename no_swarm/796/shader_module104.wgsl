struct Struct_1 {
    a: vec4<bool>,
    b: vec4<u32>,
    c: bool,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 22> = array<vec3<i32>, 22>(vec3<i32>(1i, i32(-2147483648), 14230i), vec3<i32>(-1i, -1i, 800i), vec3<i32>(-7025i, 2147483647i, 6685i), vec3<i32>(1i, 6132i, -34294i), vec3<i32>(-4728i, -17302i, -1i), vec3<i32>(-1i, 52106i, 1i), vec3<i32>(2147483647i, 1i, -15415i), vec3<i32>(1i, 0i, 46566i), vec3<i32>(58031i, 17968i, 1i), vec3<i32>(0i, -10634i, -1i), vec3<i32>(2147483647i, i32(-2147483648), 24012i), vec3<i32>(-1i, -35395i, 2147483647i), vec3<i32>(1i, 1i, 0i), vec3<i32>(i32(-2147483648), -2419i, -26749i), vec3<i32>(-5879i, i32(-2147483648), 7178i), vec3<i32>(-1i, 33446i, 35208i), vec3<i32>(-18068i, 0i, 0i), vec3<i32>(2147483647i, 2147483647i, 0i), vec3<i32>(-94395i, -30783i, 40774i), vec3<i32>(-7641i, 0i, 2147483647i), vec3<i32>(1i, -44137i, i32(-2147483648)), vec3<i32>(2147483647i, 29002i, 0i));

var<private> global1: vec3<i32> = vec3<i32>(-21278i, -1i, 0i);

var<private> global2: Struct_2;

var<private> global3: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(vec4<bool>(true, false, false, true), vec4<u32>(4294967295u, 33369u, 4294967295u, 16101u), true), Struct_1(vec4<bool>(true, false, false, false), vec4<u32>(0u, 1u, 4294967295u, 2105u), false), Struct_1(vec4<bool>(true, true, true, true), vec4<u32>(0u, 4294967295u, 9289u, 0u), true), Struct_1(vec4<bool>(false, false, true, true), vec4<u32>(4294967295u, 84504u, 0u, 1u), true), Struct_1(vec4<bool>(false, true, false, false), vec4<u32>(10573u, 4294967295u, 5988u, 4294967295u), true), Struct_1(vec4<bool>(false, true, false, true), vec4<u32>(4966u, 4294967295u, 35650u, 4294967295u), true), Struct_1(vec4<bool>(false, true, false, false), vec4<u32>(10587u, 4294967295u, 1u, 65896u), true), Struct_1(vec4<bool>(true, false, true, true), vec4<u32>(45867u, 4294967295u, 1u, 4294967295u), false), Struct_1(vec4<bool>(false, false, true, false), vec4<u32>(2440u, 12398u, 4294967295u, 0u), false));

var<private> global4: vec3<bool> = vec3<bool>(true, true, true);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: f32) -> f32 {
    var var_0 = -27288i;
    var var_1 = 21548i;
    var_1 = _wgslsmith_add_i32(_wgslsmith_mod_i32(global1.x, firstTrailingBit(~(-2147483647i))), 31950i >> (global2.b % 32u));
    let var_2 = Struct_1(!select(vec4<bool>(false | arg_1.d.a.x, any(vec2<bool>(arg_0.c, false)), true, arg_1.c >= 471f), arg_0.a, !select(vec4<bool>(false, global4.x, arg_1.d.a.x, global4.x), vec4<bool>(arg_0.c, true, true, global4.x), vec4<bool>(global4.x, false, global2.d.a.x, arg_0.a.x))), arg_1.d.b, all(arg_1.d.a));
    var var_3 = ~vec3<u32>(u_input.a.x, 37127u, 0u);
    return _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global2.c, 2197f), global2.c));
}

fn func_2(arg_0: vec3<f32>) -> vec3<bool> {
    global3 = array<Struct_1, 9>();
    let var_0 = global3[_wgslsmith_index_u32(142342u, 9u)];
    let var_1 = global1.x;
    var var_2 = Struct_2(1u, 1u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1381f)), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(func_3(Struct_1(vec4<bool>(global4.x, true, true, var_0.a.x), global2.d.b, global4.x), Struct_2(var_0.b.x, global2.b, -317f, Struct_1(global2.d.a, vec4<u32>(u_input.b.x, u_input.c, global2.b, u_input.b.x), true)), arg_0.x)))), global3[_wgslsmith_index_u32(~min(16823u, abs(global2.b >> (u_input.b.x % 32u))), 9u)]);
    let var_3 = Struct_1(select(select(var_2.d.a, !var_0.a, !any(global2.d.a)), select(!select(vec4<bool>(true, false, var_0.a.x, false), var_2.d.a, var_2.d.c), !vec4<bool>(true, global4.x, var_0.a.x, false), vec4<bool>(!var_0.a.x, !global2.d.a.x, var_2.c >= var_2.c, false)), select(select(select(global2.d.a, vec4<bool>(true, var_0.c, false, false), var_2.d.a), select(vec4<bool>(true, var_0.c, false, true), vec4<bool>(true, global4.x, false, global2.d.a.x), global4.x), var_0.a), select(select(var_0.a, var_2.d.a, vec4<bool>(true, global2.d.a.x, global2.d.a.x, var_2.d.a.x)), vec4<bool>(var_0.a.x, false, var_0.c, false), vec4<bool>(false, var_2.d.c, global2.d.a.x, var_2.d.a.x)), var_2.d.a)), ~(~vec4<u32>(u_input.a.x, select(20785u, 1u, var_2.d.c), reverseBits(u_input.b.x), _wgslsmith_dot_vec3_u32(var_2.d.b.wwx, vec3<u32>(59570u, 6385u, 37833u)))), select(var_2.d.a.x, global4.x, var_0.c));
    return vec3<bool>(true, var_2.d.c, true);
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<f32>) -> f32 {
    global4 = func_2(vec3<f32>(_wgslsmith_f_op_f32(-arg_2.x), 1034f, arg_0.c));
    var var_0 = arg_0;
    global1 = global0[_wgslsmith_index_u32(arg_1.b.x, 22u)];
    global1 = firstTrailingBit(global0[_wgslsmith_index_u32(arg_0.a >> (var_0.a % 32u), 22u)]) ^ (reverseBits(vec3<i32>(-global1.x, global1.x, global1.x | 0i)) >> (~(~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.c, u_input.c, var_0.a), global2.d.b.xzz)) % vec3<u32>(32u)));
    global3 = array<Struct_1, 9>();
    return 2517f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec3<i32>(1i | (19204i | -global1.x), ~(-36943i), global1.x | _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, global1.x, -29900i), _wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, 1i, -2147483647i, global1.x), vec4<i32>(-1i, -1i, 1i, global1.x))));
    var var_1 = global4.x;
    var_0 = vec3<i32>(global1.x, abs(1i), global1.x);
    global3 = array<Struct_1, 9>();
    let var_2 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global2.c, _wgslsmith_f_op_f32(-global2.c)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(592f, global2.c) - vec2<f32>(354f, -655f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.c, 370f))))) + vec2<f32>(_wgslsmith_f_op_f32(func_1(Struct_2(u_input.a.x, u_input.b.x, -284f, Struct_1(global2.d.a, global2.d.b, global2.d.c)), Struct_1(vec4<bool>(global4.x, false, global2.d.c, global2.d.a.x), vec4<u32>(33959u, 4294967295u, global2.b, global2.b), global2.d.a.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2681f, global2.c)))), _wgslsmith_f_op_f32(max(-630f, _wgslsmith_f_op_f32(f32(-1f) * -180f)))))));
    global3 = array<Struct_1, 9>();
    let var_3 = global2.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(57816u, _wgslsmith_dot_vec3_u32(vec3<u32>(12408u, _wgslsmith_mod_u32(48543u, u_input.c), 0u), select(firstLeadingBit(vec3<u32>(var_3.b.x, 29218u, var_3.b.x)), var_3.b.wxx << (vec3<u32>(u_input.c, 12676u, 0u) % vec3<u32>(32u)), global4.x)), countOneBits(0u)), vec3<i32>(-(1i & (14550i >> (var_3.b.x % 32u))), firstTrailingBit(global1.x) | 1i, ~global1.x), firstLeadingBit(vec4<i32>(min(1002i, 1i) << (_wgslsmith_sub_u32(global2.a, 4294967295u) % 32u), _wgslsmith_div_i32(firstTrailingBit(var_0.x), 0i), var_0.x, 1i)));
}

