struct Struct_1 {
    a: vec4<bool>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
    c: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1661f;

var<private> global1: array<vec3<bool>, 28>;

var<private> global2: array<f32, 8>;

var<private> global3: u32 = 75993u;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<f32>, arg_1: vec4<i32>, arg_2: Struct_2) -> u32 {
    global0 = _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1047f)) - arg_2.b)));
    let var_0 = !vec4<bool>(true, true, any(arg_2.a.a), all(arg_2.a.a.ww));
    var var_1 = vec2<bool>(true & !(any(vec4<bool>(var_0.x, false, false, var_0.x)) || true), arg_2.a.a.x);
    let var_2 = vec3<bool>(select(1i, reverseBits(_wgslsmith_dot_vec2_i32(arg_1.xz, arg_1.yy)), var_0.x) != 1i, var_1.x, false);
    var var_3 = 95769u;
    return arg_2.c;
}

fn func_4(arg_0: vec3<u32>) -> vec4<bool> {
    global1 = array<vec3<bool>, 28>();
    global1 = array<vec3<bool>, 28>();
    let var_0 = !(false != all(!(!global1[_wgslsmith_index_u32(arg_0.x, 28u)])));
    var var_1 = Struct_1(vec4<bool>(var_0, false, any(select(select(global1[_wgslsmith_index_u32(4294967295u, 28u)], vec3<bool>(false, false, var_0), vec3<bool>(var_0, var_0, false)), vec3<bool>(var_0, var_0, true), var_0)), false), u_input.b);
    var var_2 = !(!select(var_1.a.wy, !select(vec2<bool>(var_0, false), vec2<bool>(false, var_1.a.x), vec2<bool>(var_1.a.x, true)), select(var_1.a.wy, var_1.a.zx, 1i == u_input.b)));
    return !vec4<bool>(var_0, !(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(0u, 8u)] - global2[_wgslsmith_index_u32(u_input.a.x, 8u)]) != _wgslsmith_f_op_f32(step(-1034f, 156f))), false, true);
}

fn func_2(arg_0: f32) -> Struct_1 {
    let var_0 = Struct_3(Struct_1(vec4<bool>(true, all(vec4<bool>(false, false, false, false)), false, false), 8986i), !(!global1[_wgslsmith_index_u32(u_input.a.x, 28u)]), true);
    global0 = -1380f;
    let var_1 = var_0.a;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1464f + _wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(4294967295u, 8u)])))))));
    let var_2 = true;
    return Struct_1(func_4(vec3<u32>(func_3(vec2<f32>(760f, global2[_wgslsmith_index_u32(4294967295u, 8u)]), _wgslsmith_add_vec4_i32(vec4<i32>(-1i, -59762i, 31263i, u_input.b), vec4<i32>(3164i, u_input.b, -24070i, -90671i)), Struct_2(var_1, arg_0, 4294967295u)), u_input.a.x, ~u_input.a.x)), -4778i);
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -1000f, global2[_wgslsmith_index_u32(0u, 8u)]))))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(arg_0 - global2[_wgslsmith_index_u32(0u, 8u)]), -1549f, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(23374u, 8u)]))))));
    global3 = _wgslsmith_div_u32(_wgslsmith_sub_u32(_wgslsmith_div_u32(0u, _wgslsmith_mod_u32(u_input.a.x, u_input.a.x)) ^ min(u_input.a.x, 8501u), u_input.a.x), 4294967295u);
    return Struct_2(func_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1439f + 489f) - var_0.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-662f + global2[_wgslsmith_index_u32(83128u, 8u)])))))), 1431f, _wgslsmith_dot_vec2_u32(u_input.a.yz | u_input.a.yz, ~vec2<u32>(_wgslsmith_add_u32(5211u, 41172u), _wgslsmith_mult_u32(u_input.a.x, 30932u))));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec2<i32>, arg_2: bool) -> vec2<f32> {
    var var_0 = func_5(1315f, func_2(_wgslsmith_f_op_f32(-724f * global2[_wgslsmith_index_u32(select(_wgslsmith_mult_u32(arg_0.x, u_input.a.x), u_input.a.x ^ arg_0.x, true), 8u)])), func_2(-1604f), ~(-u_input.b));
    global3 = 31436u;
    let var_1 = reverseBits(4294967295u) & ~(~_wgslsmith_mult_u32(~u_input.a.x, 8603u));
    global3 = 46184u;
    var var_2 = Struct_3(var_0.a, var_0.a.a.wzy, -660f < _wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(1u, 8u)])));
    return vec2<f32>(-625f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b - var_0.b)));
}

fn func_6(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: Struct_1) -> Struct_1 {
    let var_0 = Struct_2(arg_1.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(478f, _wgslsmith_f_op_f32(arg_0.x * arg_1.b))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.b, arg_0.x) + 1166f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.b))) + -949f)), 0u);
    let var_1 = Struct_3(arg_1.a, !select(var_0.a.a.yzx, vec3<bool>(all(arg_1.a.a.zyw), var_0.a.a.x, arg_2.a.x), vec3<bool>(true, true, true)), !(!arg_1.a.a.x));
    global1 = array<vec3<bool>, 28>();
    return arg_2;
}

fn func_7(arg_0: i32, arg_1: vec2<bool>, arg_2: f32, arg_3: Struct_2) -> Struct_2 {
    let var_0 = vec4<i32>(arg_0, -1i, 1i, -13191i);
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_3.b), _wgslsmith_f_op_f32(floor(1143f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1690f)))) + -267f), arg_3.b);
    global1 = array<vec3<bool>, 28>();
    let var_2 = global1[_wgslsmith_index_u32(min(firstTrailingBit(1u), 3379u), 28u)];
    return func_5(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(481f)))))), arg_3.a, func_6(var_1, Struct_2(Struct_1(!arg_3.a.a, ~1i), 936f, 4294967295u), func_6(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1104f, -1000f))), var_1), arg_3, func_2(-487f))), 31366i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(~(~abs(u_input.a.x)), 8u)], _wgslsmith_f_op_f32(f32(-1f) * -1454f)) - _wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(~u_input.a.x, 8u)])));
    let var_0 = func_7((~(-u_input.b) >> (0u % 32u)) << (~u_input.a.x % 32u), !select(vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(true, true), true), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2[_wgslsmith_index_u32(28443u, 8u)], -1622f))) * 481f), Struct_2(func_6(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(u_input.a.xy, vec2<i32>(-1i, 1i), true)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1525f, global2[_wgslsmith_index_u32(34292u, 8u)]))), Struct_2(Struct_1(vec4<bool>(false, true, true, false), 1i), -1000f, ~55109u), func_2(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.a.x, 8u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.a.x, 8u)]))), ~_wgslsmith_mod_u32(u_input.a.x, u_input.a.x) & ~u_input.a.x));
    let var_1 = vec2<bool>(false, true);
    let var_2 = min(u_input.a.x, u_input.a.x);
    var var_3 = Struct_3(Struct_1(!var_0.a.a, _wgslsmith_dot_vec4_i32(vec4<i32>(16415i, ~(-48792i), -7636i, reverseBits(-2147483647i)), vec4<i32>(1i, 47916i, abs(u_input.b), _wgslsmith_div_i32(-2147483647i, u_input.b)))), global1[_wgslsmith_index_u32(~var_0.c, 28u)], !func_7(u_input.b, !var_0.a.a.zz, -152f, Struct_2(Struct_1(vec4<bool>(true, var_1.x, var_0.a.a.x, true), u_input.b), var_0.b, var_2)).a.a.x || var_0.a.a.x);
    let var_4 = true;
    global2 = array<f32, 8>();
    var var_5 = var_0.b;
    let var_6 = Struct_2(func_5(global2[_wgslsmith_index_u32(var_2, 8u)], func_7(-2147483647i, var_1, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1203f + var_0.b), 1f)), func_5(var_0.b, var_3.a, Struct_1(vec4<bool>(false, var_4, true, false), var_0.a.b), ~var_0.a.b)).a, var_0.a, _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(var_3.a.b, u_input.b), var_0.a.b), vec2<i32>(func_5(var_0.b, Struct_1(var_3.a.a, 62491i), var_3.a, u_input.b).a.b, 11926i))).a, func_5(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.a.x, 8u)]), var_0.b)), Struct_1(func_4(~u_input.a), u_input.b), Struct_1(var_0.a.a, ~var_3.a.b), 1i).b, ~(~_wgslsmith_sub_u32(var_2, var_2)));
    let x = u_input.a;
    s_output = StorageBuffer(-15020i, vec3<u32>(firstTrailingBit(13487u), _wgslsmith_mod_u32(var_2, abs(0u)) >> (var_6.c % 32u), func_3(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-831f, 366f), vec2<f32>(-938f, -101f), var_3.c != var_3.b.x)), vec4<i32>(_wgslsmith_div_i32(0i, var_6.a.b), var_3.a.b & var_0.a.b, var_3.a.b, 1i), Struct_2(var_3.a, _wgslsmith_f_op_f32(var_6.b * -674f), var_6.c))), countOneBits(~_wgslsmith_mult_u32(~u_input.a.x, func_3(vec2<f32>(1708f, var_6.b), vec4<i32>(-31250i, 0i, var_0.a.b, 22221i), Struct_2(Struct_1(var_6.a.a, u_input.b), var_0.b, 4294967295u)))));
}

