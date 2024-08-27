struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: bool,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: i32,
    c: vec4<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 20> = array<vec2<u32>, 20>(vec2<u32>(0u, 4294967295u), vec2<u32>(1u, 4294967295u), vec2<u32>(0u, 10361u), vec2<u32>(0u, 33564u), vec2<u32>(39387u, 28885u), vec2<u32>(55212u, 99967u), vec2<u32>(0u, 4294967295u), vec2<u32>(44955u, 1u), vec2<u32>(105244u, 11994u), vec2<u32>(0u, 23153u), vec2<u32>(105375u, 1u), vec2<u32>(0u, 37750u), vec2<u32>(4294967295u, 35370u), vec2<u32>(69998u, 1u), vec2<u32>(4294967295u, 29317u), vec2<u32>(0u, 63721u), vec2<u32>(50563u, 109555u), vec2<u32>(32955u, 0u), vec2<u32>(1u, 1u), vec2<u32>(14895u, 57130u));

var<private> global1: array<Struct_2, 4>;

var<private> global2: Struct_1 = Struct_1(-1135f, vec2<u32>(1u, 4294967295u), vec3<i32>(1i, 1i, 7567i), false, vec2<i32>(1i, 2061i));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: Struct_2) -> vec4<u32> {
    global1 = array<Struct_2, 4>();
    global1 = array<Struct_2, 4>();
    var var_0 = vec3<i32>(u_input.d.x, _wgslsmith_mult_i32(-1i, _wgslsmith_sub_i32(_wgslsmith_add_i32(~u_input.d.x, ~u_input.b.x), arg_1.c.x)), -23285i);
    global0 = array<vec2<u32>, 20>();
    return arg_2.a >> ((arg_2.a & vec4<u32>(~26222u | _wgslsmith_mult_u32(arg_0.x, u_input.c), abs(_wgslsmith_dot_vec3_u32(arg_0.zzz, vec3<u32>(1u, global2.b.x, 165359u))), firstLeadingBit(countOneBits(19871u)), 34994u)) % vec4<u32>(32u));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1) -> Struct_2 {
    var var_0 = ~vec3<i32>(arg_1.c.x, abs(_wgslsmith_mod_i32(u_input.e, u_input.b.x)), _wgslsmith_dot_vec4_i32(select(vec4<i32>(global2.e.x, arg_1.e.x, arg_1.c.x, u_input.d.x), vec4<i32>(global2.e.x, u_input.a, global2.c.x, 2147483647i), global2.d), firstLeadingBit(vec4<i32>(global2.c.x, global2.c.x, 27585i, -1i))) & -u_input.d.x);
    var var_1 = any(!select(vec4<bool>(false && arg_1.d, true, !arg_1.d, true), vec4<bool>(arg_1.d, true, arg_1.d & true, arg_1.d & true), vec4<bool>(global2.d, false & arg_1.d, arg_1.d | true, false)));
    let var_2 = _wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(arg_1.c.yx, _wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(6317i, global2.e.x), vec2<i32>(-64313i, arg_1.c.x)), var_0.zx), -(vec2<i32>(-32783i, -469i) | arg_1.e))), u_input.d);
    global2 = Struct_1(_wgslsmith_f_op_f32(arg_1.a - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_1.a - 1535f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global2.a, 584f)))))), global2.b, vec3<i32>(-55491i, ~arg_1.e.x, -50159i), true, _wgslsmith_add_vec2_i32(~vec2<i32>(-u_input.a, min(u_input.e, -2147483647i)), firstLeadingBit(~vec2<i32>(2147483647i, -10821i))));
    global1 = array<Struct_2, 4>();
    return global1[_wgslsmith_index_u32(19690u | _wgslsmith_mod_u32(0u, _wgslsmith_dot_vec3_u32(arg_0.ywx, arg_0.wwx)), 4u)];
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_2) -> vec2<bool> {
    var var_0 = arg_0;
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_2.d.a, var_0.a, arg_0.a, global2.a)))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-720f, 875f, var_0.a, arg_0.a))), vec4<f32>(_wgslsmith_f_op_f32(-global2.a), _wgslsmith_f_op_f32(-global2.a), _wgslsmith_f_op_f32(ceil(388f)), _wgslsmith_f_op_f32(arg_2.d.a * var_0.a)), select(!var_0.d, arg_0.d || true, arg_0.d))), arg_2.c)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)), -322f, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-605f, -569f)))))));
    let var_2 = vec4<i32>(reverseBits(-var_0.c.x) | -firstLeadingBit(26976i), arg_0.c.x, 0i, u_input.e >> (~0u % 32u));
    var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0.a, global2.a, var_1.x, -1414f)))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_2.d.a, arg_0.a, 599f, arg_0.a))))))));
    var var_3 = arg_0;
    return !func_3(~arg_2.a, arg_2.d).c.yz;
}

fn func_1(arg_0: Struct_2) -> vec2<f32> {
    var var_0 = select(func_4(arg_0.d, ~(~(-vec4<i32>(arg_0.d.c.x, 11528i, u_input.e, u_input.a))), func_3(func_2(arg_0.a, Struct_1(global2.a, global2.b, vec3<i32>(32136i, u_input.d.x, u_input.b.x), arg_0.d.d, arg_0.d.c.yx), arg_0), arg_0.d)), vec2<bool>(true, !all(vec4<bool>(false, true, arg_0.c.x, global2.d))), select(!func_4(Struct_1(1217f, global2.b, vec3<i32>(-2147483647i, global2.c.x, 1i), false, u_input.b.xx), ~vec4<i32>(13090i, -1i, -7918i, u_input.e), func_3(vec4<u32>(44979u, arg_0.a.x, global2.b.x, 0u), arg_0.d)), arg_0.c.wx, arg_0.c.xy));
    let var_1 = func_3(vec4<u32>(firstTrailingBit(_wgslsmith_clamp_u32(21549u, 1u, u_input.c)), _wgslsmith_dot_vec4_u32(arg_0.a >> (vec4<u32>(0u, global2.b.x, 0u, 38544u) % vec4<u32>(32u)), firstTrailingBit(arg_0.a)), ~(arg_0.a.x ^ global2.b.x), _wgslsmith_clamp_u32(func_2(arg_0.a, arg_0.d, Struct_2(vec4<u32>(u_input.c, 91617u, arg_0.d.b.x, arg_0.a.x), 16483i, arg_0.c, Struct_1(arg_0.d.a, global2.b, vec3<i32>(arg_0.d.e.x, 2147483647i, 0i), var_0.x, global2.e))).x, _wgslsmith_div_u32(30593u, 1u), global2.b.x)) >> ((~vec4<u32>(38305u, 0u, global2.b.x, 4294967295u) >> (vec4<u32>(arg_0.a.x, _wgslsmith_dot_vec4_u32(arg_0.a, vec4<u32>(1u, 89381u, u_input.c, 42388u)), 22741u, 26906u) % vec4<u32>(32u))) % vec4<u32>(32u)), arg_0.d);
    var var_2 = -(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, global2.c.x), arg_0.d.e) & ~u_input.b.x, _wgslsmith_div_i32(abs(2147483647i), _wgslsmith_div_i32(u_input.a, arg_0.b))) >> ((vec2<u32>(25085u, ~74866u) ^ _wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(var_1.a.zz, vec2<u32>(4294967295u, 12431u)), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, global2.b.x), 20u)])) % vec2<u32>(32u)));
    global2 = Struct_1(-503f, global2.b, global2.c, !(arg_0.c.x & (var_2.x <= -45134i)), vec2<i32>(arg_0.b, func_3(var_1.a, var_1.d).b));
    var var_3 = func_3(_wgslsmith_div_vec4_u32(vec4<u32>(~1u, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(arg_0.a, var_1.a), vec4<u32>(arg_0.d.b.x, 4481u, var_1.a.x, u_input.c)), _wgslsmith_mult_u32(func_2(vec4<u32>(u_input.c, 1u, 86924u, var_1.a.x), var_1.d, Struct_2(vec4<u32>(0u, global2.b.x, 20289u, global2.b.x), arg_0.d.e.x, vec4<bool>(var_0.x, true, arg_0.c.x, var_1.c.x), Struct_1(global2.a, vec2<u32>(4294967295u, var_1.a.x), global2.c, global2.d, vec2<i32>(var_2.x, global2.e.x)))).x, global2.b.x | 49549u), global2.b.x), ~max(~arg_0.a, ~var_1.a)), Struct_1(_wgslsmith_f_op_f32(1170f + _wgslsmith_f_op_f32(global2.a - _wgslsmith_f_op_f32(-var_1.d.a))), func_3(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, var_1.a.x, u_input.c, 4294967295u), vec4<u32>(arg_0.d.b.x, u_input.c, u_input.c, 4294967295u)), func_3(abs(vec4<u32>(0u, global2.b.x, 20456u, 4294967295u)), var_1.d).d).a.wz, _wgslsmith_add_vec3_i32(global2.c, ~vec3<i32>(u_input.a, u_input.e, -15955i)), !(!any(arg_0.c.ww)), vec2<i32>(global2.e.x, 0i))).d;
    return _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-475f, var_3.a)) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(127f, 360f)))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.d.a, 1687f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-683f, global2.a)))) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-235f, 1000f), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(471f, 1000f), vec2<f32>(1228f, global2.a), global2.d)), _wgslsmith_f_op_vec2_f32(func_1(global1[_wgslsmith_index_u32(global2.b.x, 4u)])), global2.d != global2.d))))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-915f, global2.a), _wgslsmith_div_f32(global2.a, -958f))), -400f) - vec2<f32>(-1768f, _wgslsmith_f_op_f32(370f + global2.a))));
    let x = u_input.a;
    s_output = StorageBuffer(-max(_wgslsmith_sub_i32(~u_input.e, global2.c.x), func_3(~vec4<u32>(global2.b.x, global2.b.x, 20993u, 10438u), func_3(vec4<u32>(u_input.c, global2.b.x, 4294967295u, 17853u), Struct_1(var_0.x, global2.b, global2.c, false, u_input.d)).d).b), global2.a, global2.b.x ^ (u_input.c & countOneBits(~86792u)), global2.a);
}

