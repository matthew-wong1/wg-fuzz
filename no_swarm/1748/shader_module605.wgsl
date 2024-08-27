struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: f32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 25>;

var<private> global1: array<vec3<bool>, 23> = array<vec3<bool>, 23>(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: Struct_2) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))))) - -115f);
    var var_1 = Struct_2(Struct_1(arg_1.c.a, select(vec4<bool>(arg_1.a.b.x || true, u_input.b > u_input.b, !arg_1.a.b.x, true), select(vec4<bool>(true, arg_1.a.b.x, true, false), arg_1.c.b, arg_1.c.b.x), arg_1.c.b), _wgslsmith_f_op_f32(arg_1.a.c - -1850f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-437f, -490f, arg_1.c.d.x, arg_0) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-416f, -1094f, -933f, arg_0))))), 1i, arg_1.c);
    var var_2 = vec4<u32>(abs(18060u), 48952u, _wgslsmith_add_u32(abs(~(u_input.b & u_input.b)), 20003u), min(~u_input.b, ~u_input.b));
    let var_3 = Struct_1(-u_input.a.x, vec4<bool>(-(~arg_1.c.a) > (var_1.b >> (1u % 32u)), all(var_1.a.b.wxx), !(!var_1.c.b.x), !any(select(vec4<bool>(false, arg_1.c.b.x, var_1.a.b.x, var_1.a.b.x), vec4<bool>(false, var_1.c.b.x, true, true), true))), _wgslsmith_f_op_f32(ceil(var_1.c.c)), var_1.a.d);
    return 81886u << (var_2.x % 32u);
}

fn func_2(arg_0: f32) -> vec3<u32> {
    var var_0 = ~(vec3<u32>(u_input.b, ~29953u, func_3(1068f, Struct_2(Struct_1(-1233i, vec4<bool>(true, true, true, true), 621f, vec4<f32>(-556f, arg_0, 1676f, arg_0)), u_input.a.x, Struct_1(u_input.a.x, vec4<bool>(false, true, false, false), 722f, vec4<f32>(arg_0, arg_0, arg_0, arg_0))))) >> (vec3<u32>(_wgslsmith_mult_u32(u_input.b, ~14593u), max(u_input.b << (u_input.b % 32u), max(u_input.b, 18291u)), u_input.b) % vec3<u32>(32u)));
    global1 = array<vec3<bool>, 23>();
    var var_1 = -u_input.a.x << ((min(var_0.x, 43164u) & 2954u) % 32u);
    global0 = array<vec3<u32>, 25>();
    var var_2 = _wgslsmith_f_op_f32(sign(-661f));
    return vec3<u32>(20058u, _wgslsmith_mod_u32(u_input.b, var_0.x), u_input.b);
}

fn func_1(arg_0: vec4<u32>, arg_1: i32) -> Struct_2 {
    global1 = array<vec3<bool>, 23>();
    let var_0 = global0[_wgslsmith_index_u32(u_input.b, 25u)] | func_2(_wgslsmith_f_op_f32(trunc(1117f)));
    var var_1 = all(select(select(vec4<bool>(any(vec2<bool>(true, true)), true, false, true), vec4<bool>(true, true, true, true), all(!global1[_wgslsmith_index_u32(var_0.x, 23u)])), !vec4<bool>(false, true, select(true, false, true), any(vec4<bool>(true, true, true, false))), vec4<bool>(any(vec2<bool>(true, true)), all(vec2<bool>(false, false)), false, true)));
    let var_2 = Struct_2(Struct_1(~firstTrailingBit(min(-1i, -16573i)), vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -250f)), _wgslsmith_div_vec4_f32(vec4<f32>(1305f, _wgslsmith_f_op_f32(f32(-1f) * -569f), 635f, _wgslsmith_f_op_f32(round(-471f))), vec4<f32>(_wgslsmith_f_op_f32(sign(288f)), 783f, 209f, 1000f))), i32(-1i) * -(arg_1 & -2147483647i), Struct_1(u_input.a.x, vec4<bool>(true, all(vec2<bool>(true, true)), 4294967295u < ~arg_0.x, -6613i >= (arg_1 >> (var_0.x % 32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -132f))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1275f, -1000f, 1342f, -698f) * vec4<f32>(-338f, 104f, -1241f, -277f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1360f, 517f, -407f, 668f)))))));
    let var_3 = Struct_1(u_input.a.x, select(select(select(select(var_2.c.b, var_2.a.b, vec4<bool>(false, false, var_2.a.b.x, true)), !vec4<bool>(var_2.c.b.x, var_2.a.b.x, true, true), true), !(!var_2.c.b), var_2.c.b.x == true), vec4<bool>(var_2.a.b.x, any(!vec3<bool>(false, var_2.a.b.x, true)), any(var_2.c.b.zy), !(var_2.c.c >= -411f)), vec4<bool>(true, any(var_2.c.b), all(vec4<bool>(var_2.a.b.x, var_2.a.b.x, true, var_2.c.b.x)) && all(vec3<bool>(false, true, var_2.a.b.x)), false)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-1133f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(var_2.a.d.x)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.c.c) + -225f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a.c, _wgslsmith_f_op_f32(select(1088f, _wgslsmith_f_op_f32(sign(var_2.c.d.x)), true)), -410f, var_2.a.d.x) + var_2.a.d));
    return Struct_2(var_3, 1i, var_3);
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: u32) -> i32 {
    return firstLeadingBit(~(-1i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -u_input.a.x;
    let var_1 = Struct_1(firstLeadingBit(_wgslsmith_mult_i32(func_4(1u, func_1(vec4<u32>(0u, u_input.b, 32360u, u_input.b), -2147483647i), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-266f, 1122f, 175f))), ~0u), u_input.a.x)), select(vec4<bool>((u_input.a.x >> (4294967295u % 32u)) > reverseBits(u_input.a.x), all(vec3<bool>(true, true, true)), false & any(vec2<bool>(true, true)), !all(vec4<bool>(false, false, false, false))), !vec4<bool>(true, true, any(vec4<bool>(true, true, true, false)), true), true), func_1(vec4<u32>(u_input.b << (~57259u % 32u), 1643u & ~u_input.b, _wgslsmith_sub_u32(~u_input.b, u_input.b), _wgslsmith_dot_vec2_u32(select(vec2<u32>(2598u, 0u), vec2<u32>(u_input.b, 4294967295u), false), vec2<u32>(u_input.b, 40314u))), 0i).a.d.x, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-462f, 357f, -1612f, -755f)))))))));
    let var_2 = abs(_wgslsmith_mod_i32(~u_input.a.x, _wgslsmith_mult_i32(max(-13188i, ~1i), ~_wgslsmith_div_i32(-18226i, u_input.a.x))));
    let var_3 = func_1(~firstLeadingBit(~(vec4<u32>(54990u, u_input.b, 4294967295u, u_input.b) ^ vec4<u32>(0u, u_input.b, 0u, 0u))), -56426i);
    let var_4 = max(_wgslsmith_clamp_i32(~(-2147483647i) >> (func_2(var_1.c).x % 32u), abs(1i), -(-14665i >> (u_input.b % 32u))), var_2) << (u_input.b % 32u);
    global0 = array<vec3<u32>, 25>();
    global0 = array<vec3<u32>, 25>();
    let var_5 = 614f;
    var_0 = ~_wgslsmith_dot_vec4_i32(select(abs(select(vec4<i32>(11486i, var_3.c.a, 13336i, var_3.b), vec4<i32>(-34300i, -1i, 1i, -1i), true)), ~vec4<i32>(var_3.c.a, 12829i, -2147483647i, var_2), 0u == u_input.b), -(abs(vec4<i32>(7432i, var_1.a, -2147483647i, var_4)) & ~vec4<i32>(var_3.c.a, var_1.a, -12781i, var_4)));
    let x = u_input.a;
    s_output = StorageBuffer(74675i, 26843i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(vec4<u32>(1u, 28531u, u_input.b, 40872u), 34391i).c.d.zw * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c, -894f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(func_1(vec4<u32>(84681u, u_input.b, 94552u, 24087u), 36910i).c.d.zz)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.c, -116f) - vec2<f32>(-1297f, var_3.c.d.x)) - vec2<f32>(934f, -1168f)))), -1i);
}

