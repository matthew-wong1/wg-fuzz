struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: u32,
    d: vec3<f32>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: vec2<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_1 = Struct_1(798f);

var<private> global2: vec4<i32>;

var<private> global3: array<Struct_2, 4>;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1() -> f32 {
    var var_0 = global1.a;
    var var_1 = Struct_1(-161f);
    let var_2 = Struct_1(var_1.a);
    var var_3 = ~vec4<u32>(_wgslsmith_add_u32(_wgslsmith_sub_u32(1u >> (1u % 32u), ~4294967295u), abs(abs(0u))), 88568u, ~(~1u), firstLeadingBit(1u));
    let var_4 = Struct_1(1333f);
    return var_2.a;
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> u32 {
    var var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(-global1.a)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a, global1.a) + vec2<f32>(var_0.a, 430f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a, global1.a)))))));
    let var_2 = vec4<bool>(arg_0, firstLeadingBit(u_input.a.x) <= _wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(-2147483647i, u_input.a.x)), vec2<i32>(global2.x ^ 2147483647i, global2.x >> (4294967295u % 32u))), !arg_0, false);
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, global1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.a, 1197f)) - -501f), _wgslsmith_f_op_f32(global1.a + _wgslsmith_f_op_f32(func_1()))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-651f, -640f)), _wgslsmith_f_op_f32(max(arg_1.a, -191f)), 670f, var_1.x)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-102f, -897f, -1000f, var_1.x)) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(294f, 660f, var_1.x, -1361f))))))));
    let var_4 = ~countOneBits(~1u);
    return 82080u;
}

fn func_4(arg_0: vec2<f32>, arg_1: u32, arg_2: Struct_2, arg_3: vec4<f32>) -> f32 {
    var var_0 = global3[_wgslsmith_index_u32(27858u, 4u)];
    let var_1 = ~(2147483647i ^ -firstLeadingBit(global2.x));
    var var_2 = _wgslsmith_mult_vec2_i32(global2.yx | select(-select(global2.zz, vec2<i32>(var_1, global2.x), false), vec2<i32>(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 1i, 2147483647i, 1i), vec4<i32>(var_1, -24686i, 2147483647i, -1i))), select(vec2<bool>(false, true), vec2<bool>(true, true), true)), vec2<i32>(-26343i, 12808i));
    global3 = array<Struct_2, 4>();
    var var_3 = 4294967295u;
    return _wgslsmith_f_op_f32(max(-273f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(arg_3.x))))), -1016f)));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec4<bool>) -> Struct_1 {
    var var_0 = arg_0;
    var var_1 = select(arg_1.x, 125f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec2_f32(min(var_0.yw, vec2<f32>(global1.a, var_0.x))), _wgslsmith_dot_vec2_u32(vec2<u32>(146545u, 29897u), vec2<u32>(16685u, 1u)), global3[_wgslsmith_index_u32(func_3(arg_1.x, Struct_1(global1.a)), 4u)], arg_0))), any(!arg_1.xy));
    var var_2 = Struct_1(var_0.x);
    var var_3 = select(select(!vec4<bool>(var_0.x == 1385f, !arg_1.x, any(vec2<bool>(arg_1.x, arg_1.x)), arg_1.x), select(vec4<bool>(true, arg_1.x, true, arg_1.x), vec4<bool>(false, true, all(arg_1.wzx), any(vec2<bool>(false, arg_1.x))), !(var_2.a < 570f)), vec4<bool>(arg_1.x, any(arg_1.yy), arg_1.x, true)), arg_1, true);
    global3 = array<Struct_2, 4>();
    return Struct_1(-1262f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-435f, _wgslsmith_f_op_f32(global1.a * -143f))), _wgslsmith_f_op_f32(min(global1.a, _wgslsmith_f_op_f32(func_1()))))), _wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_1()), -792f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a) - _wgslsmith_f_op_f32(global1.a - 174f))))), _wgslsmith_f_op_f32(-1599f - global1.a));
    let var_1 = false;
    var var_2 = func_2(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -1857f, _wgslsmith_f_op_f32(-global1.a), var_0.x) * _wgslsmith_f_op_vec4_f32(-var_0)))), !(!(!(!vec4<bool>(var_1, var_1, false, var_1)))));
    let var_3 = ~1u & firstTrailingBit(func_3(!any(vec3<bool>(false, var_1, false)), Struct_1(-1000f)));
    var var_4 = ~vec2<i32>(u_input.a.x, firstLeadingBit(13594i));
    var var_5 = max(global2.wx & _wgslsmith_mod_vec2_i32(abs(vec2<i32>(-26058i, -13562i)), -u_input.a), (global2.yy ^ vec2<i32>(u_input.a.x, var_4.x)) ^ max(vec2<i32>(1i, global2.x), _wgslsmith_mod_vec2_i32(u_input.a, vec2<i32>(var_4.x, -18243i)))) << ((vec2<u32>(1u, reverseBits(~var_3)) << (_wgslsmith_clamp_vec2_u32(~vec2<u32>(var_3, 0u) ^ abs(vec2<u32>(var_3, 0u)), vec2<u32>(var_3, ~var_3), countOneBits(~vec2<u32>(var_3, var_3))) % vec2<u32>(32u))) % vec2<u32>(32u));
    global2 = vec4<i32>(_wgslsmith_add_i32(u_input.a.x, 1i) >> (~select(_wgslsmith_mod_u32(var_3, var_3), 114674u, any(vec3<bool>(false, true, var_1))) % 32u), _wgslsmith_div_i32(14881i, max(~u_input.a.x, var_5.x)) ^ _wgslsmith_dot_vec2_i32(-global2.zw, ~(-u_input.a)), _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(select(vec2<i32>(-2147483647i, u_input.a.x), u_input.a, select(vec2<bool>(var_1, var_1), vec2<bool>(false, true), true)), -vec2<i32>(-1i, var_4.x), vec2<i32>(u_input.a.x, -2147483647i)), global2.zz), 1i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -654f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec4<f32>(615f, var_0.x, 1382f, -340f), vec4<bool>(false, var_1, true, true)).a - _wgslsmith_f_op_f32(func_1())))), 41892u ^ var_3, (24751u << (_wgslsmith_dot_vec3_u32(vec3<u32>(var_3, var_3, var_3) & vec3<u32>(1u, var_3, var_3), ~vec3<u32>(1u, 2087u, 1u)) % 32u)) & var_3, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(abs(var_0.x)))), 1415f), _wgslsmith_div_u32(4294967295u, _wgslsmith_mod_u32(_wgslsmith_mod_u32(_wgslsmith_div_u32(var_3, 4294967295u), 4294967295u), ~func_3(true, Struct_1(var_2.a)))));
}

