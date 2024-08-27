struct Struct_1 {
    a: f32,
    b: f32,
    c: vec4<bool>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: vec4<f32>,
    d: Struct_2,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: i32,
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

var<private> global0: f32 = 249f;

var<private> global1: array<vec2<f32>, 21>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> i32 {
    let var_0 = true;
    return ~2147483647i;
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u >> (_wgslsmith_mult_u32(u_input.b.x, 4294967295u) % 32u), ~(~u_input.b.x)), 21u)], _wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(reverseBits(1u), 21u)]))));
    global0 = -2520f;
    let var_1 = !(!(!any(vec3<bool>(true, true, true))));
    var var_2 = Struct_4(_wgslsmith_sub_i32(min(7550i, countOneBits(reverseBits(30890i))), 7734i));
    let var_3 = vec4<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(abs(u_input.d), func_3(Struct_1(var_0.x, 446f, vec4<bool>(var_1, false, true, false), var_1)), var_2.a), abs(vec3<i32>(var_2.a, var_2.a, 1i)) >> (_wgslsmith_div_vec3_u32(u_input.b, vec3<u32>(u_input.b.x, u_input.b.x, 28615u)) % vec3<u32>(32u))), -2316i, var_2.a, 27900i);
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(948f * _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(step(-1313f, var_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), !select(select(vec4<bool>(var_1, var_1, var_1, true), vec4<bool>(var_1, var_1, var_1, true), false), vec4<bool>(var_1, true, var_1, var_1), select(vec4<bool>(false, true, false, false), vec4<bool>(false, var_1, true, false), true)), !var_1), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -664f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * var_0.x))), vec4<bool>(true, true, !(!var_1), true), false | !all(vec4<bool>(true, true, false, true))));
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: vec3<bool>) -> vec3<f32> {
    let var_0 = func_2();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1235f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.b.a))));
    global0 = var_0.a.a;
    var_1 = _wgslsmith_f_op_f32(-1449f - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.b.a + 1403f))));
    var var_2 = countOneBits(u_input.b.x);
    return vec3<f32>(var_0.b.a, 833f, _wgslsmith_f_op_f32(min(2249f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.b)), -1333f))));
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: vec3<f32>) -> Struct_4 {
    var var_0 = ~1i;
    var_0 = u_input.d;
    let var_1 = ~abs(~(~vec2<u32>(26462u, 0u)) & _wgslsmith_mult_vec2_u32(~vec2<u32>(26699u, 1u), _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, u_input.b.x), u_input.b.zx, vec2<u32>(u_input.b.x, arg_0))));
    global1 = array<vec2<f32>, 21>();
    var var_2 = Struct_1(_wgslsmith_f_op_f32(arg_2.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1170f, -171f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(exp2(func_2().a.a))))), !select(vec4<bool>(true, false && arg_1, false, false), vec4<bool>(true, true, true, arg_1 && true), !(!vec4<bool>(false, false, arg_1, arg_1))), arg_1);
    return Struct_4(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32((u_input.a.yx >> (u_input.b.xx % vec2<u32>(32u))) >> (firstTrailingBit(var_1) % vec2<u32>(32u)), _wgslsmith_add_vec2_i32(~u_input.c.yy, vec2<i32>(u_input.a.x, 0i) >> (vec2<u32>(5882u, var_1.x) % vec2<u32>(32u)))), vec2<i32>(-74861i, abs(-1i))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<f32>, 21>();
    let var_0 = -u_input.a.x;
    var var_1 = func_4(_wgslsmith_div_u32(~4294967295u, ~u_input.b.x), all(select(!select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true)), select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false)), vec3<bool>(false, false, false), false), true)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(true, true | (6589u >= u_input.b.x), vec3<bool>(false, select(false, false, false), all(vec4<bool>(true, false, true, false))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-809f, -331f, 765f) + vec3<f32>(941f, 759f, 953f))) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(914f, 1000f, 734f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1240f, -761f, -1068f)))))));
    var var_2 = Struct_2(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(636f - 129f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-419f + 200f), 698f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(253f * _wgslsmith_f_op_f32(step(-806f, 417f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, 240f)))), select(!select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), false), vec4<bool>(true, true, true, true), vec4<bool>(select(false, true, false), true, func_2().a.c.x, true)), all(vec4<bool>(true, true, true, true))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-531f)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -373f), -1086f))), 1572f, vec4<bool>(true, false, ~u_input.b.x >= ~30146u, any(func_2().b.c.yxx)), true));
    global1 = array<vec2<f32>, 21>();
    let var_3 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -677f), func_2().a, vec4<f32>(_wgslsmith_f_op_f32(-371f + var_2.b.a), _wgslsmith_f_op_f32(-var_2.a.b), _wgslsmith_f_op_f32(-191f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_2.b.a)) - _wgslsmith_div_f32(-644f, var_2.a.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.b))), func_2());
    var_2 = Struct_2(var_2.b, func_2().a);
    var var_4 = !(!(!(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -1i, 0i, -6530i), vec4<i32>(var_1.a, u_input.a.x, -29987i, var_0)) < ~1i)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, -837f);
}

