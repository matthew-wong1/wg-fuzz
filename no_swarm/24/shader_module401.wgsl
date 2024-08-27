struct Struct_1 {
    a: f32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec2<f32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, true);

var<private> global1: array<vec2<u32>, 31> = array<vec2<u32>, 31>(vec2<u32>(0u, 4294967295u), vec2<u32>(4294967295u, 0u), vec2<u32>(0u, 40310u), vec2<u32>(28415u, 49558u), vec2<u32>(1u, 37937u), vec2<u32>(0u, 4294967295u), vec2<u32>(98666u, 0u), vec2<u32>(42776u, 1u), vec2<u32>(62679u, 0u), vec2<u32>(22605u, 11733u), vec2<u32>(4294967295u, 40372u), vec2<u32>(4294967295u, 25296u), vec2<u32>(37364u, 1u), vec2<u32>(4294967295u, 5967u), vec2<u32>(17494u, 26890u), vec2<u32>(31301u, 4294967295u), vec2<u32>(0u, 4294967295u), vec2<u32>(1u, 0u), vec2<u32>(1u, 0u), vec2<u32>(42731u, 4294967295u), vec2<u32>(4294967295u, 64030u), vec2<u32>(65286u, 1u), vec2<u32>(1u, 44976u), vec2<u32>(4294967295u, 0u), vec2<u32>(30723u, 4294967295u), vec2<u32>(1u, 2305u), vec2<u32>(0u, 6007u), vec2<u32>(4294967295u, 21530u), vec2<u32>(1u, 52610u), vec2<u32>(1540u, 52668u), vec2<u32>(0u, 4294967295u));

var<private> global2: vec3<f32> = vec3<f32>(-869f, 644f, -222f);

var<private> global3: vec4<f32> = vec4<f32>(1020f, 471f, 2083f, -201f);

var<private> global4: Struct_2;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: Struct_3) -> vec2<bool> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(min(global2.x, global2.x)), _wgslsmith_f_op_vec3_f32(select(global4.a.b, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(global3.zyw + global4.b.b), vec3<f32>(136f, global3.x, -1035f)))), any(vec3<bool>(arg_2.a, true, any(vec2<bool>(true, false)))))));
    var var_1 = Struct_1(155f, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global3.wxx)), global3.xzz, select(select(vec3<bool>(true, global0.x, true), vec3<bool>(global0.x, arg_2.a, true), arg_2.a), vec3<bool>(true, true, true), all(vec2<bool>(false, global0.x))))))));
    global0 = !(!vec2<bool>(true, any(vec2<bool>(arg_2.a, true))));
    global4 = Struct_2(global4.b, global4.b, global4.a);
    var var_2 = Struct_2(global4.b, global4.a, global4.c);
    return vec2<bool>(any(!vec2<bool>(select(false, false, false), arg_2.a)), global0.x);
}

fn func_2() -> Struct_2 {
    global0 = select(func_3(u_input.a.x, u_input.b, Struct_3(global0.x)), vec2<bool>(select(!any(vec2<bool>(global0.x, global0.x)), select(any(vec2<bool>(global0.x, global0.x)), false, all(vec2<bool>(global0.x, global0.x))), (30801u & u_input.b) > (74059u << (u_input.b % 32u))), !select(global0.x, global0.x, all(vec2<bool>(false, global0.x)))), vec2<bool>(false, true));
    global1 = array<vec2<u32>, 31>();
    let var_0 = Struct_1(_wgslsmith_div_f32(-1098f, -1486f), _wgslsmith_f_op_vec3_f32(vec3<f32>(1485f, -1000f, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(global2.x, global3.x)))) + global4.c.b));
    let var_1 = Struct_3(false);
    let var_2 = 4294967295u;
    return Struct_2(Struct_1(global3.x, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.x, global3.x, -608f))))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-874f * global4.b.a), _wgslsmith_f_op_f32(global2.x + global2.x))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(764f, _wgslsmith_f_op_f32(1000f * -657f), global4.c.b.x)))), Struct_1(global3.x, _wgslsmith_f_op_vec3_f32(-global4.c.b)));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec3<bool>, arg_2: Struct_1) -> vec3<f32> {
    global0 = arg_1.zy;
    var var_0 = false;
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global4.a.b.x))) * _wgslsmith_f_op_f32(sign(arg_2.b.x))), _wgslsmith_f_op_f32(-470f * -496f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global3.x))), -559f)) * global3.x));
    var var_2 = func_2();
    let var_3 = firstLeadingBit(u_input.b);
    return _wgslsmith_f_op_vec3_f32(var_2.c.b + var_1);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(global3.yxx + _wgslsmith_f_op_vec3_f32(-global4.b.b)), _wgslsmith_f_op_vec3_f32(func_1(vec2<i32>(~(-21525i), 1i), vec3<bool>(global0.x, global0.x && global0.x, global0.x), Struct_1(-361f, _wgslsmith_f_op_vec3_f32(exp2(global4.b.b))))), !select(select(vec3<bool>(global0.x, true, true), vec3<bool>(false, global0.x, false), global0.x), select(vec3<bool>(false, global0.x, true), vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(global0.x, false, global0.x)), global2.x > global4.c.a))));
    let var_0 = u_input.a.x;
    var var_1 = global0.x;
    let var_2 = 14691i;
    let var_3 = _wgslsmith_sub_u32(~u_input.b, ~min(_wgslsmith_mult_u32(1u, _wgslsmith_add_u32(u_input.b, 57162u)), _wgslsmith_mod_u32(min(38352u, 13643u), 1u)));
    var var_4 = Struct_2(func_2().b, global4.c, Struct_1(_wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, global4.a.a, 1291f)))) * vec3<f32>(832f, _wgslsmith_f_op_f32(trunc(-534f)), -991f))));
    var var_5 = select(_wgslsmith_add_i32(-max(reverseBits(42576i), min(var_0, var_2)), var_0), _wgslsmith_clamp_i32(-1i, -2147483647i, _wgslsmith_mod_i32(var_2, _wgslsmith_add_i32(~u_input.c, 9574i))), !select(!(!global0.x), true, !global0.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(global2.x, 1493f)))) * global3.x) * _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1218f, -243f), 1149f))), -u_input.a, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(global2.yz, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(ceil(global3.xz)), vec2<f32>(-1349f, 619f))), !select(vec2<bool>(global0.x, true), vec2<bool>(global0.x, global0.x), false))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(492f, -1456f)), vec2<f32>(global2.x, 1447f))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-714f + global3.x)), 836f, _wgslsmith_f_op_f32(min(1227f, -1003f))) * _wgslsmith_div_vec3_f32(global4.c.b, func_2().c.b)));
}

