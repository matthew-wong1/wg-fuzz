struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec4<u32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: Struct_2;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: vec4<f32>, arg_1: u32) -> i32 {
    var var_0 = Struct_1(51656u, _wgslsmith_f_op_f32(f32(-1f) * -915f));
    let var_1 = _wgslsmith_f_op_f32(abs(arg_0.x));
    var var_2 = global1.b;
    let var_3 = global1.b;
    return u_input.b;
}

fn func_3() -> u32 {
    global1 = Struct_2(global1.b, global1.a, vec4<u32>(global1.c.x, ~_wgslsmith_add_u32(global1.c.x, _wgslsmith_sub_u32(global1.c.x, global1.a.a)), ~global1.a.a, ~4294967295u));
    var var_0 = global1.c.yzy;
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -445f), global0.x) - 470f), global1.b.b));
    var var_2 = Struct_2(Struct_1(0u, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -158f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.x)))))), global1.a, vec4<u32>(1u, 63658u, _wgslsmith_mod_u32(reverseBits(1u), _wgslsmith_add_u32(27937u, abs(global1.b.a))), ~0u));
    var var_3 = Struct_2(var_2.a, global1.a, select(firstTrailingBit(~(~vec4<u32>(var_0.x, 1u, global1.a.a, 1u))), _wgslsmith_add_vec4_u32(vec4<u32>(~4294967295u, ~31077u, var_0.x, global1.a.a), select(vec4<u32>(var_2.a.a, 23467u, 0u, var_0.x), vec4<u32>(var_0.x, var_2.a.a, 57375u, var_0.x), all(vec4<bool>(true, false, true, false)))), select(vec4<bool>(true, select(false, true, false), true, any(vec2<bool>(true, false))), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), true)), true)));
    return ~1u;
}

fn func_1(arg_0: vec4<f32>) -> Struct_2 {
    let var_0 = 5789i;
    var var_1 = var_0;
    var_1 = min(var_0 ^ -52506i, func_2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - _wgslsmith_f_op_f32(-arg_0.x)), arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -370f)), _wgslsmith_div_f32(global0.x, -579f)), ~4294967295u));
    var var_2 = Struct_2(global1.a, global1.a, global1.c | abs(vec4<u32>(~1727u, global1.a.a, _wgslsmith_mult_u32(global1.a.a, global1.a.a), func_3())));
    global1 = Struct_2(var_2.b, var_2.b, global1.c);
    return Struct_2(Struct_1(global1.b.a, -362f), global1.b, var_2.c);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, 1532f, global1.b.b, 2392f) + vec4<f32>(global0.x, 1207f, 724f, -1338f)))))));
    let var_0 = func_1(vec4<f32>(211f, -1277f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(step(-255f, global1.a.b)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1275f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1203f, -247f, false)) * -1330f)))).b;
    let var_1 = func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.b, var_0.b, global0.x, global0.x))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(424f, -1468f, global1.a.b, 539f), vec4<f32>(379f, -1000f, var_0.b, 209f)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1029f, global0.x, -935f, -750f)))));
    global1 = var_1;
    var var_2 = false;
    let x = u_input.a;
    s_output = StorageBuffer(~var_1.b.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_1.a.b), 1f, _wgslsmith_f_op_f32(trunc(-951f))) + vec3<f32>(-272f, _wgslsmith_f_op_f32(-var_0.b), global0.x))), var_1.c, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-503f, _wgslsmith_f_op_f32(step(func_1(vec4<f32>(var_0.b, 1033f, 792f, var_0.b)).b.b, _wgslsmith_f_op_f32(var_0.b * global1.a.b)))))), _wgslsmith_div_i32(~(~50848i), u_input.c));
}

