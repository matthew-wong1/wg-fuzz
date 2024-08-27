struct Struct_1 {
    a: f32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec2<i32>,
    d: vec4<u32>,
    e: vec4<u32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 1>;

var<private> global1: vec4<bool>;

var<private> global2: array<vec3<bool>, 18> = array<vec3<bool>, 18>(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: vec2<f32>) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0.x)) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.x - 376f))));
    let var_1 = firstTrailingBit(14767u);
    global1 = select(vec4<bool>(all(vec4<bool>(global1.x, true, global1.x, all(vec3<bool>(global1.x, global1.x, global1.x)))), 0u == var_1, any(vec2<bool>(true, true)), !(!select(false, global1.x, global1.x))), !select(select(vec4<bool>(true, false, global1.x, false), vec4<bool>(true, true, true, true), !vec4<bool>(global1.x, global1.x, true, false)), !vec4<bool>(true, false, true, global1.x), global1.x), !vec4<bool>(global1.x, all(vec2<bool>(true, true)), !(var_1 > 52735u), all(vec4<bool>(true, true, true, true))));
    global2 = array<vec3<bool>, 18>();
    let var_2 = vec3<bool>(_wgslsmith_mod_i32(min(~u_input.a.x, u_input.a.x), _wgslsmith_add_i32(u_input.a.x, i32(-1i) * -77045i)) > 1i, !(!(global1.x | true)), !any(global1.yy));
    return !vec3<bool>(all(select(vec4<bool>(var_2.x, global1.x, false, false), vec4<bool>(true, var_2.x, var_2.x, global1.x), false)) || ((17018u << (1u % 32u)) < var_1), false, false);
}

fn func_2() -> Struct_1 {
    global1 = select(vec4<bool>(all(vec2<bool>(global1.x & global1.x, true)), !(!any(vec3<bool>(global1.x, global1.x, global1.x))), 1i < max(_wgslsmith_mult_i32(0i, u_input.a.x), select(u_input.a.x, 0i, true)), all(!select(vec4<bool>(global1.x, global1.x, global1.x, true), vec4<bool>(global1.x, true, false, global1.x), false))), vec4<bool>(global1.x || (true || (u_input.a.x >= u_input.a.x)), any(func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-129f, -805f)))), false, 1557f <= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-191f))))), !global1.x);
    let var_0 = _wgslsmith_mod_u32(_wgslsmith_mod_u32(~(~39672u), 27909u), select(12500u, min(~0u >> (_wgslsmith_clamp_u32(64482u, 0u, 4294967295u) % 32u), _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(7382u, 0u, 16817u)), reverseBits(vec3<u32>(73032u, 0u, 4294967295u)))), true));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-815f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-1177f, -663f))))))), -1012f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), 1000f)));
    var_1 = vec3<f32>(-144f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(665f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.x, var_1.x)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.x))) + -1447f));
    let var_2 = 73265u;
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(exp2(var_1.x))) - -884f), vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, -399f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + var_1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.x))) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.x - var_1.x))))));
}

fn func_1(arg_0: u32, arg_1: vec2<u32>) -> f32 {
    var var_0 = Struct_2(_wgslsmith_mod_u32(~4294967295u, reverseBits(arg_0)), func_2(), global0[_wgslsmith_index_u32(arg_0, 1u)], ~select(~(~vec4<u32>(1u, 0u, arg_1.x, arg_1.x)), select(vec4<u32>(28652u, 0u, 4294967295u, 0u), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1.x, arg_1.x, arg_1.x, arg_0), vec4<u32>(arg_0, arg_1.x, arg_0, arg_1.x), vec4<u32>(17328u, 7081u, 0u, 4294967295u)), !vec4<bool>(global1.x, true, global1.x, global1.x)), !vec4<bool>(global1.x, true, global1.x, global1.x)), _wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(~(~vec4<u32>(arg_0, 40087u, 53346u, arg_1.x)), ~abs(vec4<u32>(arg_0, 1u, 7102u, 4294967295u))), firstTrailingBit(vec4<u32>(arg_1.x, arg_0, select(1u, 18251u, true), _wgslsmith_div_u32(arg_0, arg_1.x))), vec4<u32>(~arg_1.x, 11524u, 0u, arg_0)));
    let var_1 = ~u_input.a.xyy;
    let var_2 = Struct_4(func_2(), vec4<bool>(global1.x, global1.x, false, all(!select(vec4<bool>(false, global1.x, global1.x, global1.x), vec4<bool>(true, global1.x, global1.x, global1.x), global1.x))));
    var var_3 = Struct_2(4294967295u, var_2.a, firstLeadingBit(min(~vec2<i32>(20069i, -9475i) ^ u_input.a.zw, u_input.a.xw)), reverseBits(~var_0.e & firstLeadingBit(var_0.d)), abs(vec4<u32>(24425u, arg_0, ~arg_1.x, 6893u)));
    let var_4 = func_2();
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_0.b.b.x)), _wgslsmith_f_op_f32(exp2(var_4.a)));
}

fn func_4(arg_0: f32, arg_1: vec3<bool>) -> Struct_2 {
    global1 = !(!select(select(!vec4<bool>(true, true, global1.x, false), select(vec4<bool>(arg_1.x, false, global1.x, arg_1.x), vec4<bool>(global1.x, true, true, arg_1.x), global1.x), true), !vec4<bool>(arg_1.x, true, arg_1.x, arg_1.x), !(!global1.x)));
    global2 = array<vec3<bool>, 18>();
    global2 = array<vec3<bool>, 18>();
    global2 = array<vec3<bool>, 18>();
    let var_0 = !global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_add_u32(~1u, _wgslsmith_dot_vec2_u32(vec2<u32>(22504u, 64826u), vec2<u32>(87870u, 16974u)) & ~1u), abs(8733u)), 18u)];
    return Struct_2(1u, func_2(), min(u_input.a.yx, -select(u_input.a.ww, _wgslsmith_mult_vec2_i32(global0[_wgslsmith_index_u32(33438u, 1u)], u_input.a.zz), !global1.x)), ~select(firstTrailingBit(firstTrailingBit(vec4<u32>(63452u, 0u, 1u, 22605u))), select(firstLeadingBit(vec4<u32>(4294967295u, 65642u, 4294967295u, 83055u)), firstLeadingBit(vec4<u32>(4294967295u, 0u, 1u, 1u)), vec4<bool>(true, false, true, global1.x)), _wgslsmith_f_op_f32(arg_0 + -743f) == _wgslsmith_f_op_f32(floor(-1230f))), vec4<u32>(1u, _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 1u), vec2<u32>(~533u, _wgslsmith_div_u32(8865u, 1412u))), ~(~1u), 4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<bool>, 18>();
    var var_0 = false;
    var var_1 = global1.x;
    var var_2 = func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-476f, -287f, global1.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-194f, 400f)), _wgslsmith_f_op_f32(func_1(21617u, vec2<u32>(4294967295u, 1u)))))))), vec3<bool>(false, true, !global1.x));
    var_1 = true;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b.b.x, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(181f, _wgslsmith_f_op_f32(-var_2.b.a), var_2.b.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -2201f))))));
}

