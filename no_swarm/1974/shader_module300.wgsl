struct Struct_1 {
    a: i32,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(-30854i, vec2<bool>(false, false)), Struct_1(2147483647i, vec2<bool>(false, true)), Struct_1(i32(-2147483648), vec2<bool>(true, true)), Struct_1(i32(-2147483648), vec2<bool>(true, false)), Struct_1(1i, vec2<bool>(true, true)), Struct_1(-51028i, vec2<bool>(true, false)));

var<private> global1: f32;

var<private> global2: f32 = -412f;

var<private> global3: u32 = 1u;

var<private> global4: u32;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
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

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> bool {
    let var_0 = Struct_1(0i, !select(select(vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(false, false), false), false), vec2<bool>(true, true), vec2<bool>(true, true)));
    global0 = array<Struct_1, 6>();
    global0 = array<Struct_1, 6>();
    var var_1 = vec2<i32>(-2147483647i, abs(1i));
    global1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-496f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(547f))))), _wgslsmith_f_op_f32(min(985f, -295f))));
    return any(!(!select(select(vec4<bool>(false, var_0.b.x, true, var_0.b.x), vec4<bool>(var_0.b.x, false, true, var_0.b.x), vec4<bool>(var_0.b.x, var_0.b.x, false, false)), select(vec4<bool>(var_0.b.x, true, true, true), vec4<bool>(var_0.b.x, false, var_0.b.x, var_0.b.x), vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, var_0.b.x)), any(vec2<bool>(var_0.b.x, false)))));
}

fn func_2() -> i32 {
    let var_0 = _wgslsmith_f_op_f32(1181f * 1258f);
    global2 = _wgslsmith_f_op_f32(-var_0);
    var var_1 = (_wgslsmith_clamp_u32(u_input.a.x, ~u_input.a.x & ~u_input.a.x, u_input.a.x) != min(u_input.a.x, ~u_input.a.x)) & all(select(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), false), any(vec3<bool>(false, true, true))), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), true), true), (var_0 >= var_0) && (699f > var_0)));
    var var_2 = select(vec2<bool>(select(true, select(false, false, false), true) | (_wgslsmith_div_u32(u_input.a.x, 0u) >= 1u), true && func_3()), vec2<bool>(func_3(), any(vec2<bool>(any(vec2<bool>(false, true)), true))), select(select(vec2<bool>(all(vec3<bool>(false, true, true)), true), vec2<bool>(true, true), any(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true)))), select(vec2<bool>(true, any(vec4<bool>(false, true, false, true))), select(vec2<bool>(true, true), vec2<bool>(true, true), u_input.a.x == 0u), true), select(!select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), any(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true))))));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(590f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(508f, -352f)))) * var_0);
    return i32(-1i) * -4336i;
}

fn func_4(arg_0: Struct_1, arg_1: i32) -> Struct_1 {
    global4 = reverseBits(~firstTrailingBit(1u));
    let var_0 = Struct_1(_wgslsmith_add_i32(arg_1, func_2()), select(arg_0.b, vec2<bool>(select(!arg_0.b.x, arg_0.b.x, false), all(vec3<bool>(false, arg_0.b.x, arg_0.b.x))), all(select(vec3<bool>(false, arg_0.b.x, arg_0.b.x), select(vec3<bool>(arg_0.b.x, false, false), vec3<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x), vec3<bool>(false, false, arg_0.b.x)), !arg_0.b.x))));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -925f);
    let var_2 = !(!arg_0.b.x) != !(!(!arg_0.b.x));
    global1 = -1027f;
    return Struct_1(abs(arg_0.a << (u_input.a.x % 32u)), var_0.b);
}

fn func_1(arg_0: vec4<f32>) -> Struct_1 {
    let var_0 = func_4(Struct_1(0i, !vec2<bool>(all(vec3<bool>(false, false, false)), false)), func_2());
    let var_1 = !func_4(var_0, _wgslsmith_mod_i32(_wgslsmith_div_i32(var_0.a, 36845i), var_0.a) ^ (i32(-1i) * -23718i)).b.x;
    global3 = u_input.a.x;
    let var_2 = Struct_1(-11620i, var_0.b);
    global2 = 1034f;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = select(min(0u, 31545u), ~0u, -435f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1540f)))));
    let var_0 = func_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-696f, 550f, -1559f, -484f) - vec4<f32>(-347f, -229f, 1000f, -1000f)), vec4<f32>(-1972f, -378f, -848f, -1268f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(875f, 732f, -936f, 942f), vec4<f32>(-1577f, -154f, 610f, -103f)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-630f, -208f, -375f, -1000f), vec4<f32>(-103f, 433f, -1100f, 2173f), vec4<bool>(true, true, true, true)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1133f, 554f, 1505f, 2071f) - vec4<f32>(-1259f, 276f, -1750f, -1000f))))));
    var var_1 = _wgslsmith_f_op_f32(1766f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-2929f)))) * 1000f));
    let var_2 = Struct_1(var_0.a, var_0.b);
    var var_3 = Struct_1(var_2.a, select(var_2.b, !func_4(Struct_1(2147483647i, var_2.b), func_4(Struct_1(var_0.a, var_2.b), 10361i).a).b, select(!vec2<bool>(var_0.b.x, false), var_2.b, func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(560f, 435f, 1367f, 359f))).b)));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(328f, _wgslsmith_f_op_f32(ceil(528f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-748f, -350f, false)) * _wgslsmith_f_op_f32(-1334f * 933f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(702f - -424f), _wgslsmith_f_op_f32(f32(-1f) * -1986f)))) * _wgslsmith_f_op_f32(f32(-1f) * -1197f));
    let var_4 = func_4(func_4(func_1(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1283f, -1277f, 1060f, -108f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1388f, -731f, 111f, 1581f), vec4<f32>(-650f, -1120f, -925f, -408f), var_2.b.x))))), 23546i), _wgslsmith_sub_i32(-var_0.a, max(abs(_wgslsmith_div_i32(var_0.a, var_0.a)), -5203i >> (u_input.a.x % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(max(func_2(), firstLeadingBit(var_2.a ^ ~79733i)));
}

