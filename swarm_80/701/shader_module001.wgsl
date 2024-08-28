struct Struct_1 {
    a: vec2<i32>,
    b: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec3<bool>,
    d: i32,
    e: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
    c: vec3<f32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec2<bool>,
    d: vec4<bool>,
    e: bool,
}

struct Struct_5 {
    a: bool,
    b: u32,
    c: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 6>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec3<bool>, arg_1: u32, arg_2: i32, arg_3: vec3<bool>) -> f32 {
    let var_0 = Struct_2(vec4<i32>(1i, -22369i, -1i, firstLeadingBit(_wgslsmith_clamp_i32(~arg_2, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_2, 670i, -14175i, u_input.d.x), vec4<i32>(1i, -1i, 1396i, arg_2)), -44990i))), Struct_1(vec2<i32>(-1i, 0i), arg_2), select(vec3<bool>(any(select(vec4<bool>(true, true, arg_3.x, arg_3.x), vec4<bool>(true, arg_0.x, arg_3.x, arg_0.x), false)), _wgslsmith_f_op_f32(round(684f)) == 199f, select(true, true, true)), arg_3, arg_3.x), 1i, select(arg_3, select(arg_3, vec3<bool>(true, false, !arg_0.x), true), arg_3.x));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-748f, 1000f, var_0.c.x)), -193f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-891f + 1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1219f + _wgslsmith_f_op_f32(f32(-1f) * -1339f))))) + _wgslsmith_f_op_f32(abs(-1434f)));
}

fn func_2(arg_0: f32) -> i32 {
    global0 = array<Struct_5, 6>();
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-500f, arg_0, 1435f)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_0, arg_0, 562f)))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-732f, -1000f, arg_0) - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, -623f, 206f) + vec3<f32>(-229f, arg_0, arg_0)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, -552f)) - vec3<f32>(arg_0, _wgslsmith_f_op_f32(exp2(arg_0)), 117f)))) * vec3<f32>(_wgslsmith_f_op_f32(round(arg_0)), _wgslsmith_f_op_f32(func_3(vec3<bool>(false, true, false), ~_wgslsmith_clamp_u32(4294967295u, 32674u, 0u), _wgslsmith_mult_i32(1i, ~1i), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), true), true))), -1260f));
    let var_1 = u_input.d;
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(max(var_0.x, 1762f)), arg_0)))) - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(520f)))) + 1f), _wgslsmith_div_f32(var_0.x, -673f), arg_0));
    global0 = array<Struct_5, 6>();
    return _wgslsmith_clamp_i32(0i, ~(~0i), -1i);
}

fn func_1(arg_0: u32) -> Struct_1 {
    var var_0 = func_2(-776f);
    let var_1 = Struct_1(u_input.d.wy, ~(~u_input.e));
    return Struct_1(vec2<i32>(-min(64683i, -26895i), -var_1.a.x) & _wgslsmith_sub_vec2_i32(vec2<i32>(-var_1.b, var_1.a.x), min(-var_1.a, -vec2<i32>(u_input.b, var_1.b))), 25635i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.d.x;
    global0 = array<Struct_5, 6>();
    global0 = array<Struct_5, 6>();
    global0 = array<Struct_5, 6>();
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -258f), _wgslsmith_div_f32(-386f, 369f), -410f, -988f), vec4<f32>(_wgslsmith_f_op_f32(select(345f, 886f, false)), -719f, _wgslsmith_f_op_f32(f32(-1f) * -642f), 425f), vec4<bool>(true, true, all(vec4<bool>(false, false, true, true)), true))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1000f, 1676f, 918f, 721f), vec4<f32>(-809f, -717f, -2305f, 106f))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1528f, -1927f, -620f, -954f), vec4<f32>(1000f, -600f, 1916f, -1029f), true))) * vec4<f32>(-1653f, -424f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(floor(302f)))))));
    let var_2 = Struct_2(vec4<i32>(_wgslsmith_div_i32(-2616i, _wgslsmith_add_i32(2147483647i, 0i)), -35308i, -1i, _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(~u_input.d.zz, abs(vec2<i32>(-2147483647i, var_0))), vec2<i32>(_wgslsmith_mult_i32(-1i, -2147483647i), var_0 | u_input.d.x))), func_1(u_input.a.x), vec3<bool>(_wgslsmith_f_op_f32(abs(-878f)) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - _wgslsmith_f_op_f32(min(var_1.x, var_1.x))), true, all(vec3<bool>(true, any(vec3<bool>(true, true, true)), true))), ~var_0, vec3<bool>(false, any(vec3<bool>(true, true, true)), !all(vec3<bool>(false, true, false)) & ((43642u & u_input.a.x) > u_input.a.x)));
    let var_3 = vec3<u32>(u_input.a.x, u_input.a.x ^ firstTrailingBit(_wgslsmith_sub_u32(u_input.a.x << (u_input.a.x % 32u), 1u)), _wgslsmith_mult_u32(1223u, u_input.a.x & ~15127u));
    let var_4 = vec4<i32>(_wgslsmith_div_i32(_wgslsmith_mult_i32(2147483647i, var_2.b.a.x), u_input.b), u_input.d.x, -5894i, -1i);
    let var_5 = Struct_3(Struct_2(vec4<i32>(var_2.b.b ^ var_2.d, -var_4.x, u_input.d.x, ~var_4.x), func_1(var_3.x), var_2.c, abs(var_2.b.a.x), !select(!vec3<bool>(true, var_2.e.x, true), !vec3<bool>(var_2.c.x, false, true), select(vec3<bool>(true, true, var_2.e.x), vec3<bool>(var_2.e.x, var_2.e.x, var_2.c.x), var_2.e))), select(select(!vec3<bool>(var_2.e.x, var_2.c.x, var_2.e.x), var_2.c, var_2.c), vec3<bool>(var_2.e.x, true, var_2.c.x), var_2.e), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(-1321f, 2024f)), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(f32(-1f) * -381f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1798f, var_1.x, 478f), vec3<f32>(var_1.x, var_1.x, 1478f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(112f, 249f, -1263f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.wyz))));
    let x = u_input.a;
    s_output = StorageBuffer(0i, _wgslsmith_add_vec4_i32(var_4, ~(~vec4<i32>(var_2.a.x, var_4.x, -28936i, 2147483647i))), _wgslsmith_dot_vec2_u32(u_input.a.zz, _wgslsmith_mult_vec2_u32(abs(u_input.a.xx), vec2<u32>(57209u, 4294967295u) | vec2<u32>(var_3.x, 4294967295u)) >> (select(vec2<u32>(u_input.a.x, 8366u) ^ u_input.a.xz, vec2<u32>(0u, 1u) << (vec2<u32>(23348u, var_3.x) % vec2<u32>(32u)), select(var_2.c.zz, vec2<bool>(true, false), var_2.c.x)) % vec2<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_5.c.x, var_5.c.x))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_5.c.x))))));
}

