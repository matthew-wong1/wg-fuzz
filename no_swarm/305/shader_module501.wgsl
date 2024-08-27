struct Struct_1 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(i32(-2147483648), 2147483647i, 16585i);

var<private> global1: f32;

var<private> global2: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(vec2<u32>(14033u, 4294967295u), vec3<f32>(-1000f, 180f, 811f), vec4<bool>(false, false, true, true)), Struct_1(vec2<u32>(0u, 4294967295u), vec3<f32>(-1000f, -306f, -1000f), vec4<bool>(false, true, true, false)), Struct_1(vec2<u32>(4294967295u, 55636u), vec3<f32>(627f, -1265f, 1331f), vec4<bool>(false, false, true, false)), Struct_1(vec2<u32>(7457u, 87907u), vec3<f32>(-912f, -790f, -240f), vec4<bool>(false, false, false, false)));

var<private> global3: array<Struct_2, 17>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(arg_0.b, _wgslsmith_f_op_vec3_f32(-arg_0.b))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(arg_0.b)) * _wgslsmith_f_op_vec3_f32(-arg_0.b))))));
    global1 = _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-952f, -692f)));
    global1 = var_0.x;
    var var_1 = var_0.zx;
    var_1 = _wgslsmith_f_op_vec2_f32(-var_0.zy);
    return 4294967295u;
}

fn func_2() -> Struct_1 {
    global3 = array<Struct_2, 17>();
    let var_0 = Struct_1(vec2<u32>(_wgslsmith_mod_u32(28250u, min(~33729u, _wgslsmith_add_u32(0u, 29699u))), ~(max(0u, 4294967295u) ^ func_3(Struct_1(vec2<u32>(1243u, 4294967295u), vec3<f32>(567f, -423f, -908f), vec4<bool>(true, true, false, true))))), vec3<f32>(-224f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1238f + -2115f))))), 2423f), !(!select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))));
    global2 = array<Struct_1, 4>();
    global0 = u_input.a.wyx;
    let var_1 = ~19742u;
    return Struct_1(_wgslsmith_div_vec2_u32(~(~firstTrailingBit(var_0.a)), select(vec2<u32>(var_0.a.x, var_0.a.x) | var_0.a, var_0.a & vec2<u32>(66559u, var_1), any(!var_0.c))), var_0.b, var_0.c);
}

fn func_1() -> i32 {
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-949f - -641f)) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-346f))), -970f))), 748f));
    let var_1 = func_2();
    let var_2 = !(!vec3<bool>(true, true, all(vec4<bool>(true, var_1.c.x, var_1.c.x, var_1.c.x))));
    global0 = max(abs(_wgslsmith_div_vec3_i32(firstLeadingBit(vec3<i32>(global0.x, -2147483647i, -1i)), vec3<i32>(15534i, -19535i, 2147483647i))) & u_input.a.yzz, u_input.a.xww);
    return _wgslsmith_add_i32(1i, 6954i);
}

fn func_4(arg_0: i32, arg_1: vec4<bool>) -> Struct_1 {
    var var_0 = all(vec4<bool>(true, all(arg_1.zyz), func_2().b.x <= _wgslsmith_f_op_f32(116f * 939f), any(select(vec2<bool>(false, arg_1.x), vec2<bool>(arg_1.x, arg_1.x), false)))) | arg_1.x;
    var var_1 = func_2();
    var var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_1.b.x, 1000f), var_1.b.x, all(var_1.c.zwz)));
    global1 = -1000f;
    global1 = _wgslsmith_f_op_f32(553f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(330f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-367f)))), func_2().b.x));
    return Struct_1(vec2<u32>(_wgslsmith_add_u32(1738u, 16181u), 4294967295u), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.x, -826f, -483f))), _wgslsmith_f_op_vec3_f32(var_1.b + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(var_1.b, vec3<f32>(var_1.b.x, var_1.b.x, 433f), var_1.c.wxz)), _wgslsmith_f_op_vec3_f32(min(var_1.b, var_1.b)))))), vec4<bool>(true, true, arg_1.x, arg_1.x & (true && arg_1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~vec3<u32>(32765u, 24255u, ~1u));
    let var_1 = func_4(func_1(), vec4<bool>(true, true, true, true));
    global0 = u_input.a.yxz;
    global0 = -(u_input.a.wwx << (var_0 % vec3<u32>(32u)));
    var var_2 = all(func_4(-38370i, func_4(-8355i, !func_4(u_input.a.x, vec4<bool>(var_1.c.x, var_1.c.x, true, true)).c).c).c);
    global1 = 1f;
    let var_3 = var_0;
    let var_4 = Struct_1(~var_0.xx, var_1.b, vec4<bool>(_wgslsmith_f_op_f32(-1797f + -253f) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(153f))), !(_wgslsmith_add_i32(u_input.b, global0.x) > 1770i), true, var_1.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -907f) + var_4.b.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-757f + -1266f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.b.x))), _wgslsmith_f_op_f32(f32(-1f) * -197f), var_4.b.x)));
}

