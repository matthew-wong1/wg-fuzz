struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: f32,
    d: i32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
    c: u32,
    d: vec3<bool>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_2,
}

struct Struct_5 {
    a: vec3<f32>,
    b: vec3<f32>,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 3>;

var<private> global1: vec4<i32> = vec4<i32>(2147483647i, 62994i, -17475i, 19738i);

var<private> global2: array<vec2<bool>, 13> = array<vec2<bool>, 13>(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false));

var<private> global3: vec3<i32>;

var<private> global4: vec4<bool>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: Struct_2, arg_3: Struct_3) -> f32 {
    var var_0 = 4294967295u;
    var var_1 = Struct_4(reverseBits(vec4<u32>(arg_2.a.c, 1u, 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 0u, 0u), vec3<u32>(1u, arg_2.a.c, arg_3.b.c)))) >> (_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(select(vec4<u32>(arg_3.c, arg_2.a.c, 5114u, 16103u), vec4<u32>(4294967295u, arg_3.b.c, u_input.e, 2397u), vec4<bool>(arg_3.b.b.x, arg_2.a.b.x, arg_3.a.x, false)), select(vec4<u32>(51745u, u_input.e, arg_3.b.c, u_input.c), vec4<u32>(20316u, 1u, 4294967295u, u_input.e), vec4<bool>(arg_3.d.x, global4.x, true, arg_3.d.x))), ~vec4<u32>(8992u, 35960u, arg_2.a.c, 54917u)) % vec4<u32>(32u)), Struct_2(Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(arg_0)), _wgslsmith_f_op_f32(arg_2.c - arg_2.a.a))), vec3<bool>(false, global4.x, arg_3.a.x), arg_3.c, -1126f), global1.x, arg_2.c, global1.x));
    global4 = vec4<bool>(all(select(var_1.b.a.b.yz, !select(var_1.b.a.b.yy, vec2<bool>(arg_2.a.b.x, true), var_1.b.a.b.zz), select(select(vec2<bool>(false, arg_3.a.x), vec2<bool>(global4.x, var_1.b.a.b.x), arg_3.b.b.x), global2[_wgslsmith_index_u32(u_input.e, 13u)], true))), !all(var_1.b.a.b.yx), (_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_3.b.d))) == arg_2.c) | !(true || all(vec2<bool>(true, false))), arg_3.a.x);
    let var_2 = !(!global4.zyx);
    global2 = array<vec2<bool>, 13>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + 1f);
}

fn func_2(arg_0: vec2<u32>) -> Struct_4 {
    let var_0 = Struct_5(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(160f * 288f), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(min(-1086f, 576f)), global3.x, Struct_2(Struct_1(-1774f, global4.xxz, arg_0.x, 241f), -7847i, 812f, 2147483647i), Struct_3(global4.zx, Struct_1(423f, vec3<bool>(true, false, true), 37051u, 763f), u_input.e, vec3<bool>(global4.x, false, false)))), -1555f) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(199f, 674f, 128f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-212f, -994f, -410f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-105f, 979f, -1053f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(151f, -1453f, 314f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(683f, 310f, 887f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-712f, 1000f, 735f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1041f * _wgslsmith_f_op_f32(-3730f - 115f))));
    var var_1 = Struct_4(vec4<u32>(~u_input.e, 59237u, arg_0.x, 35352u), Struct_2(Struct_1(_wgslsmith_div_f32(271f, _wgslsmith_f_op_f32(round(var_0.c))), global4.zwx, min(firstLeadingBit(u_input.c), max(arg_0.x, arg_0.x)), var_0.a.x), global1.x, _wgslsmith_f_op_f32(trunc(1373f)), _wgslsmith_mult_i32(-25250i, 1i)));
    let var_2 = Struct_3(select(vec2<bool>(var_1.b.a.b.x, select(global3.x < 61179i, global4.x, false)), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(max(~vec2<u32>(arg_0.x, arg_0.x), _wgslsmith_clamp_vec2_u32(vec2<u32>(var_1.a.x, 38789u), global0[_wgslsmith_index_u32(u_input.c, 3u)], vec2<u32>(arg_0.x, 18292u))), (arg_0 & arg_0) >> (vec2<u32>(arg_0.x, var_1.a.x) % vec2<u32>(32u))), 13u)], vec2<bool>(var_1.b.a.b.x, var_1.b.a.b.x)), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(925f - 1740f) * 230f), var_1.b.c), !var_1.b.a.b, 28300u, var_1.b.c), ~arg_0.x, vec3<bool>(376f == var_0.b.x, (any(vec4<bool>(var_1.b.a.b.x, global4.x, global4.x, false)) & !var_1.b.a.b.x) | any(vec2<bool>(var_1.b.a.b.x, true)), !global4.x));
    var var_3 = Struct_4(reverseBits(var_1.a), Struct_2(Struct_1(var_2.b.d, vec3<bool>(all(vec3<bool>(true, false, true)), true, global4.x), countOneBits(~19691u), 1160f), abs(8211i | (var_1.b.b << (172799u % 32u))), -313f, _wgslsmith_mult_i32(global3.x >> (4294967295u % 32u), i32(-1i) * -1i) & u_input.a));
    global2 = array<vec2<bool>, 13>();
    return Struct_4(countOneBits(var_3.a), Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_3.b.c)) + var_3.b.c), select(vec3<bool>(true, var_3.b.a.b.x, false), vec3<bool>(true, var_3.b.a.b.x, var_3.b.a.b.x), true), 0u, var_2.b.a), ~u_input.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_2.b.d, -225f))), ~(~(i32(-1i) * -2147483647i))));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_4, arg_2: vec2<i32>, arg_3: vec2<u32>) -> vec3<u32> {
    var var_0 = func_2(vec2<u32>(~arg_1.b.a.c, (max(arg_0.x, 20279u) | _wgslsmith_mult_u32(arg_3.x, 4294967295u)) & ~_wgslsmith_div_u32(112791u, u_input.e)));
    let var_1 = -906f;
    global1 = countOneBits(reverseBits(~(-vec4<i32>(-1i, 6396i, 6291i, var_0.b.b)))) | -abs(vec4<i32>(global3.x | -2147483647i, -var_0.b.d, ~23617i, ~var_0.b.d));
    global0 = array<vec2<u32>, 3>();
    var_0 = arg_1;
    return vec3<u32>(arg_3.x, ~arg_1.a.x, 1u) & vec3<u32>(~(~(~u_input.c)), 48448u, ~(~var_0.b.a.c | _wgslsmith_mult_u32(0u, 80056u)));
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: vec2<u32>, arg_3: vec3<i32>) -> bool {
    let var_0 = ~(~func_4(_wgslsmith_mult_vec3_u32(vec3<u32>(43461u, arg_2.x, 0u), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.e, 4294967295u, u_input.e), vec3<u32>(1u, 0u, arg_2.x))), func_2(global0[_wgslsmith_index_u32(u_input.c, 3u)]), select(min(vec2<i32>(global3.x, -63253i), vec2<i32>(u_input.d.x, global1.x)), vec2<i32>(u_input.b.x, arg_1.d), arg_0.zz), vec2<u32>(_wgslsmith_mult_u32(arg_2.x, 0u), u_input.c)));
    var var_1 = Struct_1(arg_1.a.a, select(!(!func_2(var_0.zx).b.a.b), !(!(!arg_0)), arg_0.x), ~(~_wgslsmith_mod_u32(0u, firstLeadingBit(u_input.e))), 388f);
    let var_2 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(125f, var_1.a))))) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_1.a, 700f), vec2<f32>(-358f, 1232f)))))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f))), _wgslsmith_f_op_f32(var_1.d - var_1.a)))));
    global4 = !select(vec4<bool>(true, true, func_2(~var_0.yx).b.a.b.x, -66034i == min(-1i, arg_3.x)), !select(select(vec4<bool>(true, true, false, var_1.b.x), vec4<bool>(true, false, var_1.b.x, arg_1.a.b.x), arg_1.a.b.x), select(vec4<bool>(false, global4.x, global4.x, arg_0.x), vec4<bool>(var_1.b.x, true, arg_0.x, false), vec4<bool>(true, false, arg_0.x, true)), vec4<bool>(arg_0.x, false, true, true)), vec4<bool>(all(!vec3<bool>(false, global4.x, arg_0.x)), all(arg_0), all(vec4<bool>(true, var_1.b.x, arg_1.a.b.x, var_1.b.x)), all(!vec3<bool>(global4.x, true, global4.x))));
    var var_3 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.a, _wgslsmith_f_op_f32(step(var_2.x, -417f)), _wgslsmith_f_op_f32(step(-1794f, var_1.d)), _wgslsmith_f_op_f32(-arg_1.a.d)))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(690f, var_2.x, var_2.x, var_2.x)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.a.a, -1547f, arg_1.a.d, 474f), vec4<f32>(var_1.d, var_2.x, 813f, 2077f), vec4<bool>(true, global4.x, arg_0.x, true)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-125f, var_2.x, arg_1.c, -1000f), vec4<f32>(arg_1.a.d, var_1.d, var_2.x, 1000f))))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1543f, arg_1.c, var_2.x, 1007f))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_u32(_wgslsmith_sub_u32(abs(_wgslsmith_clamp_u32(u_input.e, 1u, ~u_input.c)), u_input.c), u_input.c);
    var var_1 = select(global4.x, any(vec3<bool>(!global4.x | func_1(global4.xxw, Struct_2(Struct_1(1000f, vec3<bool>(true, true, global4.x), u_input.e, -243f), -46798i, 1666f, -2147483647i), global0[_wgslsmith_index_u32(u_input.e, 3u)], vec3<i32>(32183i, global1.x, global1.x)), true && global4.x, select(u_input.e > 4294967295u, u_input.e < 44518u, u_input.c > u_input.c))), global4.x);
    var var_2 = select(~_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_add_u32(u_input.e, u_input.c), u_input.e, 102271u), ~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.e, u_input.c, 0u), vec3<u32>(u_input.e, u_input.e, 4294967295u))), u_input.c, false);
    let var_3 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -231f), global4.wxx, u_input.c, 459f);
    var var_4 = global0[_wgslsmith_index_u32(u_input.e, 3u)];
    let x = u_input.a;
    s_output = StorageBuffer(~var_3.c);
}

