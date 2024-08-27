struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: vec4<f32>,
    d: vec4<f32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 25>;

var<private> global1: vec4<bool>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: u32, arg_1: vec3<bool>, arg_2: Struct_2) -> u32 {
    let var_0 = arg_0;
    var var_1 = arg_2;
    var var_2 = u_input.a;
    let var_3 = -1127f;
    var var_4 = ~(~(~(~arg_0))) & ~firstTrailingBit(0u);
    return ~abs(~(~(var_0 >> (55589u % 32u))));
}

fn func_2(arg_0: u32) -> f32 {
    global1 = select(vec4<bool>(false, ~(u_input.d >> (4294967295u % 32u)) >= ~reverseBits(38278u), true, select(all(!vec2<bool>(global1.x, global0[_wgslsmith_index_u32(u_input.e.x, 25u)])), false, true)), vec4<bool>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~abs(u_input.e), firstLeadingBit(~vec2<u32>(u_input.e.x, u_input.e.x))), 25u)], global1.x, true, global1.x), !vec4<bool>(false, global1.x, true, false));
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1794f)) + _wgslsmith_f_op_f32(sign(-276f))))), ~select(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d, 4294967295u, 11164u, 4294967295u), vec4<u32>(u_input.e.x, arg_0, arg_0, u_input.d)), vec4<u32>(0u, u_input.d, arg_0, 0u) & vec4<u32>(u_input.e.x, arg_0, 51587u, u_input.d), select(vec4<bool>(true, global1.x, true, global0[_wgslsmith_index_u32(u_input.d, 25u)]), vec4<bool>(global1.x, global1.x, global0[_wgslsmith_index_u32(arg_0, 25u)], global0[_wgslsmith_index_u32(6331u, 25u)]), global1.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(501f, 1307f, _wgslsmith_div_f32(-725f, -2423f), -1271f)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(1485f, -929f, -1617f, -893f) + vec4<f32>(1000f, -348f, -617f, -1164f)))))), false));
    var var_1 = select(select(vec2<bool>(all(select(vec4<bool>(global1.x, false, true, true), vec4<bool>(global1.x, global0[_wgslsmith_index_u32(var_0.a.b.x, 25u)], true, true), true)), false), select(select(global1.yy, vec2<bool>(global0[_wgslsmith_index_u32(12893u, 25u)], false), select(global1.yw, global1.xw, global1.wx)), global1.xw, select(global1.x, true, true)), vec2<bool>(!select(false, true, global0[_wgslsmith_index_u32(4294967295u, 25u)]), !select(var_0.a.e, var_0.a.e, global0[_wgslsmith_index_u32(31964u, 25u)]))), vec2<bool>(var_0.a.e && true, !global1.x), select(select(global1.ww, !global1.xx, !select(vec2<bool>(global0[_wgslsmith_index_u32(18187u, 25u)], false), vec2<bool>(true, true), true)), vec2<bool>(true, var_0.a.e), global0[_wgslsmith_index_u32(~func_3(u_input.d, global1.wzx, var_0), 25u)]));
    var var_2 = Struct_2(Struct_1(var_0.a.c.x, ~var_0.a.b, _wgslsmith_f_op_vec4_f32(-var_0.a.d), _wgslsmith_f_op_vec4_f32(-var_0.a.d), u_input.e.x <= ~_wgslsmith_div_u32(arg_0, arg_0)));
    var var_3 = u_input.e.x;
    return -298f;
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(func_2(~6803u));
    global1 = !vec4<bool>(!((var_0 != 910f) | select(false, false, true)), true, any(vec3<bool>(global0[_wgslsmith_index_u32(~17661u, 25u)], true, select(false, true, global0[_wgslsmith_index_u32(u_input.e.x, 25u)]))), 1462f < var_0);
    let var_1 = ~(~_wgslsmith_div_i32(firstTrailingBit(u_input.c), min(u_input.a, u_input.c)));
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)) * var_0), vec4<u32>(u_input.e.x, 10389u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, 63142u), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.d, u_input.d), u_input.e)), 28864u), vec4<f32>(var_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(586f)), var_0), _wgslsmith_f_op_f32(step(-630f, var_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(381f, var_0)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -962f), var_0, -1052f, _wgslsmith_f_op_f32(-var_0))), true));
    var var_3 = vec4<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(~u_input.b.wz, -vec2<i32>(u_input.c, 86762i), u_input.b.wx) << (select(u_input.e | u_input.e, select(vec2<u32>(17045u, u_input.d), var_2.a.b.yw, vec2<bool>(true, var_2.a.e)), true) % vec2<u32>(32u)), _wgslsmith_mult_vec2_i32(vec2<i32>(38841i, -15105i), vec2<i32>(abs(-9889i), ~var_1))), u_input.a, ~(~(var_1 >> (_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.a.b.x, u_input.d, var_2.a.b.x), vec3<u32>(u_input.e.x, var_2.a.b.x, 0u)) % 32u))), 2147483647i);
    return Struct_1(_wgslsmith_f_op_f32(-673f - _wgslsmith_f_op_f32(-var_0)), vec4<u32>(countOneBits(_wgslsmith_div_u32(~8446u, ~var_2.a.b.x)), ~4294967295u, 82067u, ~1u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_2.a.c + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, var_2.a.c.x, -1126f, var_0), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-116f, var_2.a.c.x, 483f, var_0))), all(global1.xx))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_0 + var_0), -147f, _wgslsmith_f_op_f32(var_0 + -235f), -335f)) + var_2.a.d), true | any(vec4<bool>(global1.x, true, true, true)));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_1) -> u32 {
    global1 = !vec4<bool>(true, any(!(!vec2<bool>(true, arg_0.x))), true, true);
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(114f)), _wgslsmith_f_op_f32(sign(arg_3.c.x)))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -631f), 495f))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-func_1().c.xx));
    let var_2 = countOneBits(-u_input.b.x << (1u % 32u));
    let var_3 = 1356f;
    return abs(u_input.e.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(56089u, 25u)];
    var var_1 = !global1.ww;
    var var_2 = func_4(global1.wyx, func_1(), Struct_2(Struct_1(1f, ~(vec4<u32>(1u, 54266u, 1u, 0u) << (vec4<u32>(u_input.e.x, 0u, 0u, 4294967295u) % vec4<u32>(32u))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-110f, -478f, -1000f, 837f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2396f, -738f, 1389f, 1448f)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-485f, 2307f, -1875f, 208f) - vec4<f32>(-2088f, 1488f, 2068f, 740f)))), true)), Struct_1(1110f, ~vec4<u32>(u_input.e.x, ~4294967295u, _wgslsmith_mult_u32(51144u, u_input.d), max(0u, 0u)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(326f, 915f, 506f, -1000f) * vec4<f32>(-320f, -218f, -1127f, 849f)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(105f, -549f, 885f, 1074f))), vec4<f32>(1000f, 543f, -1481f, 1074f), select(vec4<bool>(false, true, global0[_wgslsmith_index_u32(0u, 25u)], true), vec4<bool>(false, false, true, false), true)))), vec4<f32>(-366f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1341f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1410f) * -1050f), -949f), !global0[_wgslsmith_index_u32(~36718u, 25u)]));
    var var_3 = reverseBits(~u_input.a);
    var_1 = global1.ww;
    let var_4 = Struct_2(func_1());
    let var_5 = !(!(!global1.x));
    let var_6 = var_4.a;
    var var_7 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_4.a.d.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-218f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_4.a.d.x, _wgslsmith_f_op_f32(-var_4.a.a)))), _wgslsmith_add_vec4_u32(abs(~var_6.b) >> (abs(var_7.a.b) % vec4<u32>(32u)), select(vec4<u32>(~var_6.b.x, 1u, 1u, 0u), var_4.a.b, all(select(vec2<bool>(true, true), global1.xw, global1.zx)))));
}

