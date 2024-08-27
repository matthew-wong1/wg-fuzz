struct Struct_1 {
    a: vec3<i32>,
    b: f32,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 1>;

var<private> global1: array<Struct_2, 32> = array<Struct_2, 32>(Struct_2(vec2<i32>(1i, i32(-2147483648))), Struct_2(vec2<i32>(i32(-2147483648), 1i)), Struct_2(vec2<i32>(-1i, 18470i)), Struct_2(vec2<i32>(2147483647i, -19552i)), Struct_2(vec2<i32>(2147483647i, 31707i)), Struct_2(vec2<i32>(-65904i, 40579i)), Struct_2(vec2<i32>(49729i, -1i)), Struct_2(vec2<i32>(0i, 0i)), Struct_2(vec2<i32>(-17217i, 48108i)), Struct_2(vec2<i32>(-718i, -30196i)), Struct_2(vec2<i32>(-1i, 16232i)), Struct_2(vec2<i32>(-28255i, 2147483647i)), Struct_2(vec2<i32>(-2512i, 27602i)), Struct_2(vec2<i32>(1i, 1i)), Struct_2(vec2<i32>(12876i, 39587i)), Struct_2(vec2<i32>(0i, 8547i)), Struct_2(vec2<i32>(-23499i, 0i)), Struct_2(vec2<i32>(1i, -49882i)), Struct_2(vec2<i32>(-1i, -10986i)), Struct_2(vec2<i32>(4816i, 2147483647i)), Struct_2(vec2<i32>(0i, 51901i)), Struct_2(vec2<i32>(-12498i, -72775i)), Struct_2(vec2<i32>(-2650i, i32(-2147483648))), Struct_2(vec2<i32>(-1i, 1i)), Struct_2(vec2<i32>(-1i, 2147483647i)), Struct_2(vec2<i32>(6502i, 40906i)), Struct_2(vec2<i32>(-24474i, 0i)), Struct_2(vec2<i32>(2147483647i, 0i)), Struct_2(vec2<i32>(i32(-2147483648), 1i)), Struct_2(vec2<i32>(-21214i, 71606i)), Struct_2(vec2<i32>(1i, 0i)), Struct_2(vec2<i32>(-13305i, 0i)));

var<private> global2: array<vec2<u32>, 28>;

var<private> global3: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(vec3<i32>(-1i, 711i, -53875i), 1005f), Struct_1(vec3<i32>(i32(-2147483648), 11855i, 0i), -360f), Struct_1(vec3<i32>(76516i, -7521i, 2147483647i), 203f), Struct_1(vec3<i32>(0i, i32(-2147483648), -47021i), 755f));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: bool) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(967f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(691f))))))) - -312f);
    global2 = array<vec2<u32>, 28>();
    var var_1 = _wgslsmith_mod_u32(countOneBits(4294967295u), ~abs(~1u));
    global3 = array<Struct_1, 4>();
    var var_2 = global3[_wgslsmith_index_u32(18415u, 4u)];
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_2.b * 394f))), _wgslsmith_f_op_f32(ceil(var_2.b)))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_2.b, var_2.b))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_2.b, var_2.b), vec2<f32>(var_2.b, var_2.b), vec2<bool>(arg_0, arg_0)))))))));
}

fn func_2() -> vec4<u32> {
    global2 = array<vec2<u32>, 28>();
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1000f, -272f)))))) + _wgslsmith_f_op_vec2_f32(func_3(true))));
    global1 = array<Struct_2, 32>();
    var var_1 = global1[_wgslsmith_index_u32(~(reverseBits(~(~4294967295u)) ^ u_input.a), 32u)];
    let var_2 = false;
    return ~_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(1u, u_input.a, u_input.a, u_input.a) ^ vec4<u32>(u_input.a, 36732u, u_input.a, 0u), vec4<u32>(4294967295u, 1u, 38321u, u_input.a) << (vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) % vec4<u32>(32u))), min(~vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a), ~vec4<u32>(u_input.a, u_input.a, 81636u, u_input.a))), max(vec4<u32>(_wgslsmith_clamp_u32(u_input.a, 1u, u_input.a), u_input.a | u_input.a, _wgslsmith_div_u32(u_input.a, u_input.a), u_input.a), ~(~vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a))));
}

fn func_1() -> Struct_2 {
    global3 = array<Struct_1, 4>();
    global2 = array<vec2<u32>, 28>();
    let var_0 = vec3<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_add_u32(39916u, 26889u), 12650u, ~u_input.a, u_input.a), func_2()), u_input.a), (82229u | ~(~u_input.a)) | abs(15761u), ~abs(u_input.a));
    global0 = array<i32, 1>();
    global2 = array<vec2<u32>, 28>();
    return global1[_wgslsmith_index_u32(1u & u_input.a, 32u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~max(~(~(vec4<i32>(global0[_wgslsmith_index_u32(18554u, 1u)], 2147483647i, 1090i, -2147483647i) | vec4<i32>(global0[_wgslsmith_index_u32(1u, 1u)], global0[_wgslsmith_index_u32(4294967295u, 1u)], -1i, 1511i))), -min(vec4<i32>(-1i, -2147483647i, -70991i, global0[_wgslsmith_index_u32(1u, 1u)]) << (vec4<u32>(5567u, u_input.a, 0u, 26170u) % vec4<u32>(32u)), ~vec4<i32>(global0[_wgslsmith_index_u32(u_input.a, 1u)], global0[_wgslsmith_index_u32(u_input.a, 1u)], -53398i, global0[_wgslsmith_index_u32(u_input.a, 1u)])));
    global0 = array<i32, 1>();
    global0 = array<i32, 1>();
    global2 = array<vec2<u32>, 28>();
    var var_1 = func_1();
    var var_2 = ~(~vec4<u32>(29286u >> (u_input.a % 32u), u_input.a, _wgslsmith_add_u32(_wgslsmith_clamp_u32(4294967295u, u_input.a, u_input.a), _wgslsmith_sub_u32(u_input.a, u_input.a)), ~u_input.a));
    global3 = array<Struct_1, 4>();
    var var_3 = abs(firstTrailingBit(global0[_wgslsmith_index_u32(u_input.a, 1u)]));
    let var_4 = global1[_wgslsmith_index_u32(u_input.a, 32u)];
    let x = u_input.a;
    s_output = StorageBuffer(min(~(~_wgslsmith_add_vec4_u32(vec4<u32>(36090u, 1u, var_2.x, u_input.a), vec4<u32>(var_2.x, u_input.a, u_input.a, 0u))), ~max(vec4<u32>(58186u, u_input.a, 1u, u_input.a), abs(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)))));
}

