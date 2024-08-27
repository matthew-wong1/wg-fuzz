struct Struct_1 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec2<i32>,
    d: vec3<bool>,
    e: f32,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_2, 31> = array<Struct_2, 31>(Struct_2(true), Struct_2(true), Struct_2(true), Struct_2(true), Struct_2(false), Struct_2(true), Struct_2(false), Struct_2(false), Struct_2(true), Struct_2(true), Struct_2(true), Struct_2(true), Struct_2(true), Struct_2(true), Struct_2(true), Struct_2(false), Struct_2(false), Struct_2(false), Struct_2(true), Struct_2(true), Struct_2(true), Struct_2(false), Struct_2(false), Struct_2(false), Struct_2(true), Struct_2(false), Struct_2(false), Struct_2(false), Struct_2(false), Struct_2(true), Struct_2(true));

var<private> global2: array<Struct_2, 20>;

var<private> global3: array<Struct_2, 28>;

var<private> global4: array<vec3<i32>, 5> = array<vec3<i32>, 5>(vec3<i32>(9398i, -1i, -1689i), vec3<i32>(1i, 34260i, 2147483647i), vec3<i32>(0i, -2458i, -27546i), vec3<i32>(i32(-2147483648), 1i, -1363i), vec3<i32>(7435i, 1i, 1i));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: Struct_2, arg_1: f32) -> vec4<i32> {
    return vec4<i32>(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(u_input.c.x, global0.c.x, 1i, 67300i) >> (u_input.b % vec4<u32>(32u))), select(-vec4<i32>(-1i, -7503i, -2147483647i, global0.c.x), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.c.x, global0.c.x, global0.c.x, 1i), vec4<i32>(u_input.c.x, global0.c.x, -2147483647i, u_input.c.x)), !vec4<bool>(global0.d.x, false, false, arg_0.a))) | 22389i, -28439i, firstLeadingBit(countOneBits(0i)), -u_input.c.x);
}

fn func_3(arg_0: Struct_1) -> vec4<bool> {
    let var_0 = _wgslsmith_add_vec2_i32(arg_0.c, global0.c ^ vec2<i32>(2147483647i, 6708i));
    var var_1 = arg_0;
    var var_2 = u_input.c.x;
    let var_3 = ~_wgslsmith_add_vec4_i32(vec4<i32>(var_0.x, var_1.c.x, global0.c.x, ~(-u_input.c.x)), firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, 26737i, 0i), max(vec4<i32>(arg_0.c.x, u_input.c.x, arg_0.c.x, global0.c.x), vec4<i32>(arg_0.c.x, arg_0.c.x, 31714i, -16820i)))));
    return select(!vec4<bool>(!all(vec4<bool>(global0.d.x, var_1.d.x, arg_0.d.x, var_1.d.x)), false, arg_0.d.x, !all(vec2<bool>(true, true))), select(select(select(vec4<bool>(true, var_1.d.x, arg_0.d.x, arg_0.d.x), vec4<bool>(var_1.d.x, var_1.d.x, var_1.d.x, arg_0.d.x), var_1.d.x), select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, var_1.d.x, false, false), vec4<bool>(var_1.d.x, arg_0.d.x, false, true)), select(vec4<bool>(false, global0.d.x, global0.d.x, var_1.d.x), vec4<bool>(true, arg_0.d.x, arg_0.d.x, global0.d.x), vec4<bool>(arg_0.d.x, global0.d.x, arg_0.d.x, true)), false), select(vec4<bool>(global0.d.x, arg_0.d.x, var_1.d.x, arg_0.d.x), vec4<bool>(var_1.d.x, false, global0.d.x, true), var_1.d.x)), vec4<bool>(!var_1.d.x, firstTrailingBit(var_3.x) != 1i, any(select(vec3<bool>(true, false, true), arg_0.d, var_1.d.x)), true), (~var_1.a.x | arg_0.a.x) <= max(4294967295u, firstLeadingBit(0u))), !arg_0.d.x);
}

fn func_4(arg_0: vec4<i32>, arg_1: vec3<u32>, arg_2: vec4<bool>) -> vec2<i32> {
    var var_0 = vec4<f32>(global0.b.x, 140f, global0.e, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global0.b.x, global0.e))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(var_0.x, global0.e))))) + -1818f);
    global2 = array<Struct_2, 20>();
    global4 = array<vec3<i32>, 5>();
    let var_2 = -1i;
    return arg_0.xx & vec2<i32>(abs(arg_0.x), var_2);
}

fn func_2(arg_0: vec4<i32>, arg_1: vec3<i32>, arg_2: i32) -> StorageBuffer {
    global2 = array<Struct_2, 20>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0.b.x, global0.e)) * -1281f);
    var var_1 = Struct_1(min(reverseBits(~vec2<u32>(0u, global0.a.x)) << (~global0.a % vec2<u32>(32u)), global0.a), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.x, global0.b.x, global0.e)), _wgslsmith_f_op_vec3_f32(-global0.b))), ~func_4(~(-vec4<i32>(arg_0.x, u_input.c.x, -66162i, 13969i)), vec3<u32>(u_input.b.x, 155340u, ~u_input.a), func_3(Struct_1(global0.a, global0.b, vec2<i32>(-57836i, 21327i), vec3<bool>(false, false, global0.d.x), global0.e))), global0.d, global0.e);
    let var_2 = Struct_2(false);
    global3 = array<Struct_2, 28>();
    return StorageBuffer(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.b.xy - vec2<f32>(-407f, -718f)), var_1.b.xy), arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 20>();
    var var_0 = _wgslsmith_add_u32(u_input.a, u_input.a);
    global3 = array<Struct_2, 28>();
    global3 = array<Struct_2, 28>();
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -398f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2803f, _wgslsmith_f_op_f32(floor(global0.e)))), -1017f, global0.b.x));
    var_1 = vec4<f32>(-1224f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -903f) * _wgslsmith_f_op_f32(687f - global0.b.x)) * global0.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b.x - -688f) * 784f) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1870f * var_1.x), -2769f)))), -1000f);
    global2 = array<Struct_2, 20>();
    let x = u_input.a;
    s_output = func_2(~max(-(vec4<i32>(global0.c.x, 15543i, u_input.c.x, global0.c.x) << (u_input.b % vec4<u32>(32u))), func_1(Struct_2(global0.d.x), -1673f) | _wgslsmith_sub_vec4_i32(vec4<i32>(44690i, -10344i, 14225i, -2147483647i), vec4<i32>(-1i, 1i, global0.c.x, 2147483647i))), -vec3<i32>(-1i, (u_input.c.x >> (15515u % 32u)) << (~4294967295u % 32u), (i32(-1i) * -1071i) >> (firstTrailingBit(4294967295u) % 32u)), _wgslsmith_dot_vec4_i32(firstTrailingBit(countOneBits(-vec4<i32>(-49083i, 1i, -13665i, u_input.c.x))), ~_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, 1229i, u_input.c.x, 2147483647i), vec4<i32>(u_input.c.x, u_input.c.x, 37673i, 0i)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.c.x, 9770i, global0.c.x, global0.c.x), vec4<i32>(u_input.c.x, -14785i, 0i, -36436i)))));
}

