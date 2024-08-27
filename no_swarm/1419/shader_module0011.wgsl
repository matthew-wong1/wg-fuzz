struct Struct_1 {
    a: u32,
    b: bool,
    c: vec4<u32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(575f, 409f, 522f);

var<private> global1: f32 = -2168f;

var<private> global2: Struct_2 = Struct_2(vec4<bool>(true, false, true, false), Struct_1(56219u, true, vec4<u32>(24794u, 32352u, 36528u, 1u), vec4<i32>(2147483647i, 1i, 10193i, i32(-2147483648))));

var<private> global3: i32;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_2(arg_0: vec4<f32>, arg_1: u32, arg_2: f32) -> Struct_2 {
    var var_0 = true;
    let var_1 = u_input.a.x;
    let var_2 = Struct_2(!select(vec4<bool>(all(global2.a.wz), true, global2.a.x & global2.b.b, true), vec4<bool>(!global2.a.x, any(vec3<bool>(global2.a.x, global2.a.x, false)), global2.b.b & true, global2.a.x), !vec4<bool>(false, global2.a.x, global2.a.x, global2.b.b)), Struct_1(global2.b.c.x, all(!select(global2.a, global2.a, global2.b.b)), min(global2.b.c, global2.b.c), countOneBits(global2.b.d)));
    global1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-500f - arg_0.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f), arg_2 != arg_2)), _wgslsmith_f_op_f32(-arg_0.x))), 181f))));
    var_0 = false;
    return var_2;
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<f32>) -> Struct_2 {
    return func_2(vec4<f32>(arg_1.x, -2133f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1.x))), 183f), max((global2.b.c.x >> (~5695u % 32u)) << (~_wgslsmith_add_u32(40514u, global2.b.c.x) % 32u), 1u), _wgslsmith_div_f32(global0.x, -449f));
}

fn func_3(arg_0: Struct_2) -> vec4<f32> {
    var var_0 = 23655u;
    global2 = Struct_2(select(!(!(!vec4<bool>(true, false, global2.b.b, global2.a.x))), select(vec4<bool>(global2.b.b, false, -34587i >= u_input.a.x, true), select(vec4<bool>(false, true, arg_0.a.x, false), vec4<bool>(false, global2.b.b, global2.a.x, global2.b.b), any(vec2<bool>(arg_0.a.x, false))), select(vec4<bool>(arg_0.a.x, false, true, true), vec4<bool>(true, global2.b.b, global2.a.x, arg_0.b.b), 2147483647i < arg_0.b.d.x)), arg_0.a), arg_0.b);
    var var_1 = Struct_1(~(~_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, global2.b.c.x, 1117u, 21424u), vec4<u32>(arg_0.b.c.x, 67610u, 66490u, arg_0.b.a))), false, _wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(arg_0.b.c, vec4<u32>(arg_0.b.a, arg_0.b.c.x, 7125u, arg_0.b.a)), abs(arg_0.b.c)) ^ select(~arg_0.b.c, vec4<u32>(24995u, 42632u, global2.b.c.x, 99840u), !arg_0.b.b), arg_0.b.c, ~(firstTrailingBit(global2.b.c) | ~vec4<u32>(4294967295u, 0u, 1u, global2.b.c.x))), -(min(vec4<i32>(2147483647i, 1i, global2.b.d.x, -5111i), vec4<i32>(arg_0.b.d.x, 23285i, 0i, global2.b.d.x)) & vec4<i32>(arg_0.b.d.x, ~2147483647i, func_1(vec3<i32>(-2147483647i, -25674i, u_input.a.x), vec2<f32>(global0.x, global0.x)).b.d.x, -96418i)));
    var var_2 = _wgslsmith_f_op_f32(max(114f, _wgslsmith_f_op_f32(-global0.x)));
    var_1 = Struct_1(reverseBits(0u), false, _wgslsmith_mod_vec4_u32(global2.b.c, _wgslsmith_mult_vec4_u32(global2.b.c, max(global2.b.c, vec4<u32>(arg_0.b.a, 0u, arg_0.b.a, 18941u)))) ^ (vec4<u32>(4294967295u, select(var_1.c.x, global2.b.c.x, true), countOneBits(4294967295u), 20715u) & (var_1.c ^ min(var_1.c, arg_0.b.c))), countOneBits(_wgslsmith_mult_vec4_i32(abs(arg_0.b.d), vec4<i32>(var_1.d.x, arg_0.b.d.x, select(-1i, arg_0.b.d.x, true), 1i))));
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-587f + global0.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-global0.x))))), _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(global0.x, global0.x))))), _wgslsmith_f_op_f32(global0.x * -2213f)) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(exp2(global0.x)), 1f, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-global0.x)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-240f, -1303f, global0.x, global0.x) * vec4<f32>(490f, 403f, 378f, 511f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, 1947f, global0.x) * vec4<f32>(287f, 1000f, global0.x, global0.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(-541f)), global0.x, _wgslsmith_f_op_f32(-global0.x), global0.x)), arg_0.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(-global2.b.d.yzw | firstLeadingBit(global2.b.d.zyz), vec2<f32>(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)) + -815f)));
    global2 = Struct_2(func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.x, 185f, -219f, -2282f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, global0.x, global0.x))) * _wgslsmith_f_op_vec4_f32(func_3(Struct_2(vec4<bool>(global2.b.b, false, false, var_0.b.b), global2.b)))), 78023u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.x))))).a, func_1(~(-global2.b.d.yzz) & vec3<i32>(_wgslsmith_sub_i32(global2.b.d.x, -19284i), 2147483647i, 0i & u_input.a.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.x, -1627f), _wgslsmith_f_op_vec2_f32(select(global0.xx, vec2<f32>(-890f, 1379f), vec2<bool>(true, true))), global2.a.yz)))).b);
    let var_1 = 5233i;
    let x = u_input.a;
    s_output = StorageBuffer(global0.x, ~select(4294967295u, 1u, true), firstLeadingBit(0u), firstTrailingBit(vec3<u32>(0u, _wgslsmith_clamp_u32(1u, global2.b.a, var_0.b.c.x), 41877u)));
}

