struct Struct_1 {
    a: u32,
    b: f32,
    c: f32,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec2<f32>,
    b: u32,
    c: i32,
    d: f32,
}

struct Struct_4 {
    a: f32,
    b: i32,
}

struct Struct_5 {
    a: Struct_3,
    b: vec4<u32>,
    c: Struct_3,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 7>;

var<private> global1: Struct_4 = Struct_4(-245f, i32(-2147483648));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: i32, arg_1: vec4<f32>, arg_2: f32, arg_3: f32) -> bool {
    let var_0 = Struct_2(any(vec2<bool>(true, false)));
    var var_1 = vec4<bool>(true, any(!(!select(vec4<bool>(var_0.a, true, false, true), vec4<bool>(var_0.a, true, var_0.a, false), false))), select(true, true, ~select(26473u, 0u, var_0.a) < 38621u), var_0.a);
    let var_2 = -1304f;
    var var_3 = true;
    var var_4 = ~firstLeadingBit(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(1u, 50477u)), ~vec2<u32>(1u, 1u)));
    return var_0.a | true;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(~0u, -677f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.a), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2303f, _wgslsmith_f_op_f32(trunc(-202f))))), u_input.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1321f, 2173f)) - _wgslsmith_f_op_f32(-global1.a))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a))));
    let var_1 = Struct_2(all(vec3<bool>(true, true, true)));
    var var_2 = ~var_0.a;
    let var_3 = !select(!vec3<bool>(func_3(-1i, vec4<f32>(var_0.e, var_0.c, -415f, -1318f), 774f, var_0.c), var_1.a, all(vec3<bool>(var_1.a, var_1.a, true))), vec3<bool>(!any(vec2<bool>(false, false)), !var_1.a, !(!var_1.a)), var_1.a);
    var var_4 = !var_1.a;
    return var_0;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0.c, arg_1.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(3013f))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-2620f + -375f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -930f) - 532f)));
    global0 = array<Struct_4, 7>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-2122f)) * _wgslsmith_f_op_f32(225f * _wgslsmith_f_op_f32(round(arg_0.b))));
    global0 = array<Struct_4, 7>();
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(627f, var_0, var_0, arg_1.x))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-256f, arg_0.b, -1328f, arg_0.e) + vec4<f32>(431f, arg_1.x, var_0, 782f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1311f, var_0, -337f, -733f) - vec4<f32>(arg_1.x, 747f, arg_1.x, -1213f)))))));
    return var_2.x;
}

fn func_1() -> vec2<f32> {
    global0 = array<Struct_4, 7>();
    var var_0 = 4294967295u >> (_wgslsmith_mod_u32(1u, ~_wgslsmith_add_u32(1u, 47779u)) % 32u);
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_4(func_2(), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-367f, global1.a, 971f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(621f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(Struct_1(74113u, global1.a, global1.a, u_input.d.x, global1.a), vec3<f32>(-1840f, global1.a, global1.a))), _wgslsmith_f_op_f32(sign(-738f))))));
    let var_2 = var_1;
    var_0 = max(6020u, ~(~1u));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = global0[_wgslsmith_index_u32(~4294967295u, 7u)];
    let var_0 = Struct_5(Struct_3(_wgslsmith_f_op_vec2_f32(func_1()), 0u, 1i, 545f), select(_wgslsmith_mult_vec4_u32(select(~vec4<u32>(1u, 2999u, 4294967295u, 1u), ~vec4<u32>(0u, 33864u, 1u, 4294967295u), true), ~vec4<u32>(5755u, 4294967295u, 4294967295u, 8680u)), vec4<u32>(_wgslsmith_div_u32(~4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 33889u), vec2<u32>(1194u, 0u))), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(20909u, 53409u)), _wgslsmith_clamp_u32(1u, 22403u, 3487u) ^ 1u, ~11357u), !vec4<bool>(any(vec4<bool>(false, false, true, false)), func_3(-25298i, vec4<f32>(401f, 771f, -1298f, global1.a), global1.a, global1.a), all(vec2<bool>(false, false)), true)), Struct_3(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a, global1.a)))), vec2<f32>(_wgslsmith_f_op_f32(max(-2230f, global1.a)), global1.a)), _wgslsmith_sub_u32(~35968u, 0u), firstLeadingBit(-1i), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(1626f))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(558f, -354f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1782f))) * _wgslsmith_f_op_f32(min(global1.a, -380f))))));
    global0 = array<Struct_4, 7>();
    var var_1 = Struct_2(true);
    let var_2 = u_input.d.yx | abs(u_input.b.xy ^ -vec2<i32>(u_input.c, 2147483647i));
    global1 = Struct_4(var_0.d, ~u_input.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(abs(_wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(-12305i, var_2.x)), vec2<i32>(var_2.x, -1i))), 0i, 58427i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(218f)))))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-788f, _wgslsmith_f_op_f32(123f + global1.a))), _wgslsmith_f_op_vec2_f32(func_1()).x))));
}

