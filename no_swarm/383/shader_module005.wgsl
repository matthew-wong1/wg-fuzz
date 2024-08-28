struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: vec2<u32>,
    d: vec4<bool>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: i32,
    d: vec2<i32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 32>;

var<private> global1: f32 = -1173f;

var<private> global2: Struct_1 = Struct_1(true, vec2<bool>(false, false), vec2<u32>(51424u, 0u), vec4<bool>(false, true, true, false), vec3<bool>(true, false, false));

var<private> global3: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(true, vec2<bool>(false, true), vec2<u32>(50662u, 4294967295u), vec4<bool>(true, true, false, true), vec3<bool>(false, false, false)), Struct_1(true, vec2<bool>(false, true), vec2<u32>(78563u, 40239u), vec4<bool>(true, true, false, true), vec3<bool>(false, true, true)), Struct_1(true, vec2<bool>(false, true), vec2<u32>(28475u, 89604u), vec4<bool>(true, true, true, true), vec3<bool>(true, true, false)), Struct_1(true, vec2<bool>(true, true), vec2<u32>(0u, 1u), vec4<bool>(false, true, false, true), vec3<bool>(false, false, false)), Struct_1(false, vec2<bool>(true, true), vec2<u32>(0u, 4294967295u), vec4<bool>(true, true, false, true), vec3<bool>(false, false, true)), Struct_1(true, vec2<bool>(true, false), vec2<u32>(17321u, 51026u), vec4<bool>(true, true, false, false), vec3<bool>(false, false, true)), Struct_1(false, vec2<bool>(true, true), vec2<u32>(1u, 0u), vec4<bool>(false, true, false, true), vec3<bool>(false, true, false)), Struct_1(false, vec2<bool>(false, false), vec2<u32>(1u, 50187u), vec4<bool>(true, false, false, false), vec3<bool>(false, false, true)), Struct_1(false, vec2<bool>(true, false), vec2<u32>(31317u, 53543u), vec4<bool>(false, true, true, false), vec3<bool>(true, false, true)), Struct_1(true, vec2<bool>(false, true), vec2<u32>(4294967295u, 0u), vec4<bool>(false, true, true, true), vec3<bool>(false, true, false)), Struct_1(false, vec2<bool>(true, false), vec2<u32>(1u, 4294967295u), vec4<bool>(false, true, false, true), vec3<bool>(false, true, true)), Struct_1(true, vec2<bool>(false, false), vec2<u32>(4294967295u, 115420u), vec4<bool>(true, true, true, false), vec3<bool>(false, false, true)), Struct_1(false, vec2<bool>(true, true), vec2<u32>(0u, 60709u), vec4<bool>(true, false, true, false), vec3<bool>(true, true, false)), Struct_1(false, vec2<bool>(false, true), vec2<u32>(87325u, 18994u), vec4<bool>(true, false, true, false), vec3<bool>(true, false, true)), Struct_1(false, vec2<bool>(true, false), vec2<u32>(0u, 4294967295u), vec4<bool>(true, true, false, false), vec3<bool>(true, false, false)), Struct_1(false, vec2<bool>(true, false), vec2<u32>(13034u, 43950u), vec4<bool>(true, true, true, false), vec3<bool>(true, false, false)), Struct_1(true, vec2<bool>(false, false), vec2<u32>(87015u, 4294967295u), vec4<bool>(false, false, true, false), vec3<bool>(false, false, false)));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<i32>, arg_2: Struct_2) -> u32 {
    var var_0 = _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(firstLeadingBit(vec3<u32>(4294967295u, 44808u, arg_2.b.c.x)), ~vec3<u32>(1u, global2.c.x, 14697u)), vec3<u32>(~arg_2.b.c.x, ~global2.c.x, arg_2.b.c.x)) << (~72491u % 32u), _wgslsmith_dot_vec4_u32(firstTrailingBit(max(vec4<u32>(0u, 26832u, global2.c.x, arg_2.b.c.x) ^ vec4<u32>(16277u, global2.c.x, global2.c.x, arg_2.b.c.x), firstTrailingBit(vec4<u32>(global2.c.x, 86385u, global2.c.x, 89663u)))), firstTrailingBit(~_wgslsmith_sub_vec4_u32(vec4<u32>(34255u, 77663u, 6088u, arg_2.b.c.x), vec4<u32>(arg_2.b.c.x, 43471u, arg_2.b.c.x, 1u)))));
    var var_1 = -(~reverseBits(vec4<i32>(_wgslsmith_mod_i32(-2147483647i, u_input.b), arg_0.x, arg_1.x, arg_2.c)));
    let var_2 = reverseBits(~vec4<u32>(~global2.c.x >> (reverseBits(global2.c.x) % 32u), ~(1u & global2.c.x), select(1u, ~global2.c.x, global2.d.x), ~_wgslsmith_dot_vec4_u32(vec4<u32>(global2.c.x, 4294967295u, 0u, arg_2.b.c.x), vec4<u32>(arg_2.b.c.x, 0u, arg_2.b.c.x, global2.c.x))));
    var var_3 = _wgslsmith_add_u32(1u, 83810u);
    var_1 = vec4<i32>(-1i, 1i, abs(arg_2.c | _wgslsmith_mod_i32(-2147483647i, _wgslsmith_mult_i32(arg_2.a.x, arg_0.x))), _wgslsmith_div_i32(countOneBits(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(arg_1, arg_0), var_1.x ^ -80304i)), _wgslsmith_mod_i32(1i >> (abs(1u) % 32u), -1i)));
    return abs(12607u);
}

fn func_2() -> Struct_1 {
    global3 = array<Struct_1, 17>();
    let var_0 = -2147483647i;
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-910f, 482f) * _wgslsmith_div_f32(-524f, 1570f)))) + 206f);
    return global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(global2.c.x, _wgslsmith_mult_u32(66976u, abs(func_3(vec3<i32>(5800i, var_0, u_input.b) >> (vec3<u32>(52165u, 0u, global2.c.x) % vec3<u32>(32u)), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, -2147483647i, 46202i), vec3<i32>(var_0, var_0, -1i)), Struct_2(vec4<i32>(var_0, u_input.b, 1i, 19226i), global3[_wgslsmith_index_u32(global2.c.x, 17u)], u_input.a.x, u_input.a, vec3<f32>(-563f, 1000f, -843f)))))), 17u)];
}

fn func_1(arg_0: f32, arg_1: f32) -> f32 {
    let var_0 = ~global2.c.x;
    global2 = func_2();
    global3 = array<Struct_1, 17>();
    let var_1 = vec4<f32>(887f, _wgslsmith_f_op_f32(109f + _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(trunc(arg_1)))))), 163f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1))));
    var var_2 = reverseBits(u_input.a.x);
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(259f - -590f) - -274f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(543f, -403f)))))), _wgslsmith_f_op_f32(f32(-1f) * -203f));
    global1 = var_0.x;
    global3 = array<Struct_1, 17>();
    global1 = var_0.x;
    var var_1 = Struct_2(vec4<i32>(_wgslsmith_add_i32(u_input.b, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.a.x, -1i, 0i), vec4<i32>(-2147483647i, u_input.b, u_input.b, u_input.a.x))) | ~(-u_input.b), ~(~48797i >> (reverseBits(global2.c.x) % 32u)), -2441i, 22010i), func_2(), ~(-2147483647i), vec2<i32>(((u_input.a.x | u_input.b) << (_wgslsmith_dot_vec3_u32(vec3<u32>(global2.c.x, global2.c.x, global2.c.x), vec3<u32>(1u, 34149u, 10915u)) % 32u)) << (min(global2.c.x, reverseBits(1u)) % 32u), _wgslsmith_mult_i32(~(~1i), -u_input.b)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(var_0.x + -147f), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, var_0.x) * vec3<f32>(var_0.x, 673f, -442f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, var_0.x) + vec3<f32>(var_0.x, var_0.x, var_0.x)))), global2.e)), !global2.d.xyx)));
    let var_2 = Struct_1(true, !global2.b, ~abs(_wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(117037u, 17164u), vec2<u32>(21963u, var_1.b.c.x)), _wgslsmith_mod_vec2_u32(global2.c, vec2<u32>(var_1.b.c.x, 35339u)))), select(!vec4<bool>(false, global0[_wgslsmith_index_u32(~var_1.b.c.x, 32u)], true, var_1.b.d.x), vec4<bool>(global2.d.x, true, any(var_1.b.d), false), select(vec4<bool>(1144f > var_1.e.x, var_1.b.b.x, global2.d.x, false), !vec4<bool>(true, global0[_wgslsmith_index_u32(0u, 32u)], global0[_wgslsmith_index_u32(0u, 32u)], true), !global0[_wgslsmith_index_u32(0u, 32u)] | true)), !(!vec3<bool>(global0[_wgslsmith_index_u32(~var_1.b.c.x, 32u)], global0[_wgslsmith_index_u32(var_1.b.c.x, 32u)] & global2.d.x, global0[_wgslsmith_index_u32(var_1.b.c.x, 32u)])));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.e)), _wgslsmith_mod_i32(_wgslsmith_clamp_i32(u_input.b & u_input.b, var_1.a.x, 1i), -1i) ^ -28709i, ~vec4<u32>(_wgslsmith_dot_vec2_u32(~global2.c, vec2<u32>(global2.c.x, 4294967295u)), ~global2.c.x | global2.c.x, var_1.b.c.x, func_3(var_1.a.yzx & vec3<i32>(u_input.b, 0i, 11673i), vec3<i32>(19547i, -33037i, var_1.a.x), Struct_2(var_1.a, global3[_wgslsmith_index_u32(64632u, 17u)], u_input.a.x, vec2<i32>(30991i, 1i), var_1.e))));
}

