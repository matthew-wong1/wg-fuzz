struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: bool,
    c: Struct_2,
    d: bool,
}

struct Struct_4 {
    a: vec2<u32>,
    b: i32,
    c: Struct_1,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<bool>(false, false, false));

var<private> global1: array<Struct_1, 18>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_4) -> u32 {
    var var_0 = arg_1.d.c.b;
    var var_1 = arg_1.d;
    var_1 = arg_1.d;
    var var_2 = true;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.c.d, var_0.x));
    return arg_1.a.x;
}

fn func_2() -> f32 {
    global0 = global1[_wgslsmith_index_u32((94458u >> (func_3(u_input.a.yyw, Struct_4(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 111320u), vec2<u32>(47901u, 37466u)), -2147483647i, Struct_1(vec3<bool>(global0.a.x, false, true)), Struct_3(u_input.a.yxw, false, Struct_2(Struct_1(vec3<bool>(false, true, false)), vec3<f32>(1354f, 1085f, -562f), global1[_wgslsmith_index_u32(4294967295u, 18u)], -701f), global0.a.x))) % 32u)) & ~(~(~16515u)), 18u)];
    global1 = array<Struct_1, 18>();
    let var_0 = Struct_4(vec2<u32>(select(~13779u, ~738u, global0.a.x) ^ reverseBits(1u), 0u), 1i, global1[_wgslsmith_index_u32(~(~1u), 18u)], Struct_3(firstTrailingBit(vec3<i32>(u_input.a.x, firstTrailingBit(u_input.a.x), u_input.a.x ^ u_input.a.x)), all(global0.a.xx), Struct_2(Struct_1(global0.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1000f, -2856f, -584f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(2389f, 289f, -1172f) + vec3<f32>(116f, -2197f, 1283f))), Struct_1(vec3<bool>(true, false, global0.a.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(793f)), _wgslsmith_f_op_f32(f32(-1f) * -777f)))), false));
    global1 = array<Struct_1, 18>();
    global0 = Struct_1(vec3<bool>(!(~58090u <= firstTrailingBit(var_0.a.x)), abs(28850i << (var_0.a.x % 32u)) > min(select(42461i, 0i, var_0.c.a.x), _wgslsmith_mult_i32(-3173i, u_input.a.x)), global0.a.x & !var_0.d.d));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1492f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.c.b.x))) - var_0.d.c.b.x);
}

fn func_1(arg_0: bool, arg_1: vec2<u32>, arg_2: vec4<i32>, arg_3: bool) -> Struct_1 {
    global0 = Struct_1(select(!vec3<bool>(true, arg_3 | false, true), global0.a, select(!(!vec3<bool>(false, arg_3, false)), select(!vec3<bool>(true, true, arg_0), !global0.a, vec3<bool>(arg_0, global0.a.x, false)), true)));
    global1 = array<Struct_1, 18>();
    let var_0 = ~u_input.a.x;
    global0 = global1[_wgslsmith_index_u32(arg_1.x, 18u)];
    let var_1 = vec4<bool>(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(403f)), _wgslsmith_f_op_f32(step(1000f, -308f))) != _wgslsmith_div_f32(-328f, _wgslsmith_f_op_f32(func_2())), true, global0.a.x), any(vec4<bool>(all(vec3<bool>(false, false, false)), _wgslsmith_clamp_i32(var_0, 1i, arg_2.x) <= abs(-14982i), true, any(select(vec2<bool>(false, true), vec2<bool>(false, global0.a.x), global0.a.yx)))), !global0.a.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1007f) - 1000f), arg_0)) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(225f * -265f) - _wgslsmith_f_op_f32(-925f + -147f)) + -928f));
    return global1[_wgslsmith_index_u32(arg_1.x, 18u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !global0.a.x;
    let var_1 = 2147483647i;
    global0 = func_1(any(vec4<bool>(true, !(u_input.a.x <= 0i), true, true)), vec2<u32>(50044u, firstLeadingBit(1u) << (~4294967295u % 32u)), u_input.a, true);
    global1 = array<Struct_1, 18>();
    var var_2 = global1[_wgslsmith_index_u32(1u, 18u)];
    let var_3 = _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(76272u, 0u), min(0u, 1u)), ~(~vec2<u32>(6648u, 4294967295u))), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(66662u, 28349u, 0u), vec3<u32>(1u, 48008u, 0u)), 63744u) >> (32952u % 32u), countOneBits(1u)), ~firstTrailingBit(vec3<u32>(1u, 1u, 1u)));
    var var_4 = vec4<bool>(all(!vec2<bool>(any(vec4<bool>(var_0, false, var_2.a.x, true)), var_2.a.x | var_0)), global0.a.x, global0.a.x, any(vec4<bool>(select(var_2.a.x, var_2.a.x, var_0), var_2.a.x || all(vec4<bool>(var_0, var_0, global0.a.x, var_0)), true, var_0)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(31106u, var_3.x), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(690f, -619f, 1000f) - vec3<f32>(-1027f, 577f, 387f))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1290f, -1109f, -478f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-493f, -1059f, -520f), vec3<f32>(1348f, -546f, 2473f))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(261f, -199f, 742f) + vec3<f32>(712f, -378f, -2345f))))));
}

