struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: bool,
    d: vec2<bool>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec2<f32>,
    c: u32,
    d: vec4<bool>,
    e: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 12>;

var<private> global1: vec4<f32> = vec4<f32>(704f, -1886f, -902f, -2037f);

var<private> global2: vec2<f32>;

var<private> global3: vec3<u32>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec2<u32>) -> bool {
    let var_0 = Struct_3(Struct_1(_wgslsmith_div_f32(1281f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1.x)))), -_wgslsmith_clamp_vec4_i32(-vec4<i32>(2147483647i, u_input.d.x, u_input.d.x, 19320i), vec4<i32>(-8495i, u_input.d.x, u_input.d.x, u_input.d.x), max(vec4<i32>(u_input.d.x, -1i, u_input.d.x, -1267i), vec4<i32>(2147483647i, 39223i, 33819i, u_input.d.x))), -u_input.d.x > ~(~u_input.d.x), !select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false))), vec3<bool>(true, !(-1029f == global2.x), true)), Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(792f, global2.x), _wgslsmith_f_op_f32(-global1.x))))), countOneBits(~vec4<i32>(-1i, u_input.d.x, u_input.d.x, u_input.d.x)), true, select(vec2<bool>(true, true), vec2<bool>(any(vec2<bool>(true, true)), any(vec3<bool>(true, true, true))), true), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec2<bool>(true, false))), !select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false)), vec3<bool>(any(vec3<bool>(false, true, true)), true, false))), ~(~(~abs(global3.x))));
    var var_1 = ~69826u;
    var var_2 = u_input.a;
    global2 = vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.a.a))), -658f);
    global2 = global1.ww;
    return var_0.b.e.x;
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.x, 139f) - _wgslsmith_f_op_f32(ceil(global1.x))))), -129f);
    global1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, var_0, -287f, 313f));
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1.zy + global1.yz)), _wgslsmith_f_op_vec2_f32(round(global1.yx)));
    global1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-664f, 1000f, _wgslsmith_f_op_f32(364f * -763f), global2.x))))));
    let var_2 = -select(~(~vec4<i32>(-15786i, -2147483647i, 2147483647i, 0i)), -select(vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, 63496i), -vec4<i32>(-2147483647i, u_input.d.x, u_input.d.x, 1950i), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, true, select(any(vec3<bool>(false, true, false)), true, false)));
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0))), select(-min(var_2, vec4<i32>(var_2.x, u_input.d.x, 2147483647i, -2147483647i)), abs(vec4<i32>(-4282i, u_input.d.x, 2147483647i, 31772i)), true), !func_3(global3.zy), vec2<bool>(true, true), select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false)), vec3<bool>(true, true, true)), !select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true)), select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), true), vec3<bool>(false, false, true), true))));
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: vec4<bool>, arg_3: u32) -> f32 {
    global1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(239f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_1.a.a)), _wgslsmith_f_op_f32(413f + 349f)) * _wgslsmith_f_op_f32(ceil(global1.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1116f)), arg_1.a.a), arg_1.a.a));
    return _wgslsmith_f_op_f32(global1.x - -2219f);
}

fn func_1(arg_0: vec2<f32>, arg_1: f32) -> vec2<bool> {
    global1 = vec4<f32>(global1.x, global2.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(func_4(-5341i, func_2(), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false)), global3.x & global3.x))) + _wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_f32(trunc(global1.x)));
    let var_0 = func_2();
    var var_1 = _wgslsmith_f_op_f32(-arg_1);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1398f * -288f))), _wgslsmith_f_op_f32(f32(-1f) * -536f)))), _wgslsmith_add_vec4_i32(~var_0.a.b, vec4<i32>(6661i, 1i, u_input.d.x & u_input.d.x, 5373i) ^ ~(vec4<i32>(u_input.d.x, 2147483647i, var_0.a.b.x, u_input.d.x) ^ var_0.a.b)), true, vec2<bool>(var_0.a.d.x && all(vec4<bool>(var_0.a.d.x, true, var_0.a.e.x, var_0.a.c)), all(select(!vec2<bool>(true, var_0.a.e.x), var_0.a.e.yy, vec2<bool>(true, true)))), vec3<bool>(~(0u & global3.x) <= _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(1u, 56063u)), _wgslsmith_div_vec2_u32(u_input.a.xz, vec2<u32>(global3.x, global3.x))), var_0.a.e.x, false));
    global3 = u_input.a << (_wgslsmith_clamp_vec3_u32(vec3<u32>(abs(global3.x), u_input.a.x, abs(u_input.c ^ u_input.b)), vec3<u32>(0u, ~(~u_input.b), u_input.a.x >> (_wgslsmith_mod_u32(61824u, 1u) % 32u)), _wgslsmith_div_vec3_u32(~vec3<u32>(42177u, global3.x, global3.x) & _wgslsmith_mult_vec3_u32(u_input.a, vec3<u32>(global3.x, global3.x, global3.x)), u_input.a)) % vec3<u32>(32u));
    return select(vec2<bool>(!(!(var_0.a.d.x || true)), func_3(select(vec2<u32>(28050u, 4294967295u), vec2<u32>(0u, u_input.c), any(vec2<bool>(var_2.d.x, var_0.a.c))))), !var_2.e.zx, true);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_vec2_f32(-global1.zy);
    global0 = array<Struct_1, 12>();
    let var_0 = select(select(!select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false)), func_1(vec2<f32>(global1.x, -443f), global1.x), false), select(vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(false, true), true), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false)), false)), !(_wgslsmith_div_i32(1i, u_input.d.x) <= (i32(-1i) * -57749i))), !select(!select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, true), vec2<bool>(true, true)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -147f))) <= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(840f - -887f) * -238f))));
    let var_1 = Struct_3(Struct_1(_wgslsmith_f_op_f32(step(111f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.x), -102f, var_0.x)))), select(-(~vec4<i32>(u_input.d.x, 1i, u_input.d.x, 0i)), vec4<i32>(-28050i, -u_input.d.x, -1i, ~35152i), var_0.x), true, !(!var_0), select(select(!vec3<bool>(true, var_0.x, true), select(vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(false, var_0.x, var_0.x)), var_0.x), !select(vec3<bool>(true, var_0.x, false), vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(var_0.x, var_0.x, true)), all(vec3<bool>(false, true, var_0.x)))), global0[_wgslsmith_index_u32(~(~abs(firstLeadingBit(1u))), 12u)], firstLeadingBit(~min(_wgslsmith_clamp_u32(u_input.c, 0u, global3.x), _wgslsmith_div_u32(u_input.b, global3.x))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(-528f, -732f)), _wgslsmith_f_op_f32(step(global1.x, global1.x)), global1.x, -939f)) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -260f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1161f))), var_1.b.a, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1.a.a * global2.x))))));
    global0 = array<Struct_1, 12>();
    var var_3 = _wgslsmith_f_op_vec2_f32(max(var_2.zx, vec2<f32>(var_2.x, 848f)));
    var var_4 = Struct_3(Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global2.x * global2.x))), var_1.a.a)), max(var_1.a.b, var_1.a.b), func_3(~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a.x, global3.x), u_input.a.zz)), var_1.b.d, !var_1.b.e), Struct_1(-1101f, -vec4<i32>(-1i, var_1.a.b.x, u_input.d.x, -1i) >> (vec4<u32>(u_input.b, 4294967295u, global3.x & u_input.c, _wgslsmith_sub_u32(10680u, global3.x)) % vec4<u32>(32u)), all(select(!vec4<bool>(var_1.a.c, false, false, var_1.b.c), vec4<bool>(true, var_1.b.e.x, false, var_1.a.e.x), false)), func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, 1756f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-741f, -895f))), _wgslsmith_div_f32(1077f, -2191f)), select(!var_1.a.e, func_2().a.e, !func_1(global1.zw, var_2.x).x)), abs(u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1929f, -569f, 363f, -223f) - vec4<f32>(var_3.x, global2.x, var_2.x, var_2.x)) * _wgslsmith_div_vec4_f32(vec4<f32>(318f, 423f, var_3.x, 1511f), vec4<f32>(-478f, var_2.x, var_4.a.a, 277f))) + vec4<f32>(_wgslsmith_f_op_f32(global1.x - 468f), 247f, -557f, -977f)))));
}

