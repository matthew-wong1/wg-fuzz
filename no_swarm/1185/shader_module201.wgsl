struct Struct_1 {
    a: bool,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec3<i32>,
    d: vec2<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 32> = array<bool, 32>(true, false, false, true, true, false, false, false, false, true, false, false, true, false, true, true, true, true, true, true, true, false, false, true, false, true, false, false, true, false, false, true);

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: f32, arg_2: f32) -> u32 {
    global0 = array<bool, 32>();
    let var_0 = arg_0.a;
    var var_1 = arg_1;
    let var_2 = ~u_input.a;
    global0 = array<bool, 32>();
    return ~(~(~(~(~22312u))));
}

fn func_2(arg_0: vec4<u32>) -> Struct_2 {
    global0 = array<bool, 32>();
    var var_0 = 1000f;
    global0 = array<bool, 32>();
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1f, 1f))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1000f, 329f)))) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(917f, 1710f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(487f, -561f)))), vec2<f32>(_wgslsmith_f_op_f32(max(-208f, _wgslsmith_f_op_f32(1343f - -863f))), _wgslsmith_f_op_f32(abs(-1735f))))));
    global0 = array<bool, 32>();
    return Struct_2(Struct_1(true, abs(84252i), ~func_3(Struct_3(Struct_1(false, 28121i, 4294967295u), arg_0.x, vec4<bool>(global0[_wgslsmith_index_u32(32411u, 32u)], true, false, false)), _wgslsmith_f_op_f32(756f * var_1.x), _wgslsmith_f_op_f32(f32(-1f) * -1157f))));
}

fn func_1() -> Struct_2 {
    global0 = array<bool, 32>();
    var var_0 = u_input.e.xzy;
    global0 = array<bool, 32>();
    var_0 = abs(vec3<i32>(select(u_input.a & 4873i, 1i, false) << (0u % 32u), _wgslsmith_mult_i32(firstLeadingBit(-u_input.d), var_0.x & _wgslsmith_div_i32(-2147483647i, -1i)), var_0.x >> (u_input.c.x % 32u)));
    return func_2(u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global0 = array<bool, 32>();
    var var_1 = _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_div_i32(select(firstLeadingBit(u_input.d), min(var_0.a.b, var_0.a.b), func_2(vec4<u32>(0u, 42098u, u_input.b.x, u_input.c.x)).a.a), reverseBits(var_0.a.b)), 1267i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e.x, -2147483647i, _wgslsmith_sub_i32(-35251i, 8509i), i32(-1i) * -35127i), vec4<i32>(var_0.a.b << (32152u % 32u), i32(-1i) * -2938i, ~11400i, max(0i, -24818i))), 19724i), u_input.e);
    var var_2 = 1110f;
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))));
    var var_4 = func_1().a;
    let var_5 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.x, -1034f))), vec2<f32>(_wgslsmith_f_op_f32(-var_3.x), var_3.x))));
    let var_6 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_5.x, var_5.x, 558f, -611f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_3.x, -143f, -965f, -618f), vec4<f32>(var_5.x, 1257f, var_5.x, var_3.x), var_6)), select(vec4<bool>(false, false, var_0.a.a, var_0.a.a), vec4<bool>(false, false, true, false), false))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_5.x, -1038f, -862f, 326f), vec4<f32>(var_5.x, var_3.x, -292f, 586f), false))), vec4<bool>(all(vec2<bool>(false, var_0.a.a)), false, var_6 & var_0.a.a, var_6))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, var_5.x, 841f, 269f)) - vec4<f32>(var_3.x, var_5.x, -815f, var_5.x)) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_5.x, 1223f, var_3.x, 2847f)))))), abs(4294967295u), countOneBits(u_input.e.xwz) >> (vec3<u32>(var_0.a.c, _wgslsmith_dot_vec4_u32(vec4<u32>(20113u, 11588u, 33578u, 30919u), u_input.b), min(~var_4.c, ~4294967295u)) % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(739f, _wgslsmith_f_op_f32(-1944f * var_3.x)) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_5.x, -150f), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(660f, var_3.x))), true)))), abs(_wgslsmith_mod_u32(var_0.a.c, reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(33005u, var_4.c), u_input.c)))));
}

