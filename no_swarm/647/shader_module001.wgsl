struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec4<bool>,
    d: f32,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 8>;

var<private> global1: vec3<bool>;

var<private> global2: bool;

var<private> global3: vec2<f32> = vec2<f32>(-564f, 874f);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> u32 {
    var var_0 = !vec3<bool>(!global1.x, true, any(vec2<bool>(global1.x, false)) || global1.x);
    global1 = vec3<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(106f * 1407f), _wgslsmith_f_op_f32(ceil(-135f))) >= _wgslsmith_f_op_f32(sign(2181f)), true, true);
    global0 = array<Struct_2, 8>();
    return 61164u;
}

fn func_2(arg_0: i32) -> Struct_1 {
    let var_0 = func_3();
    let var_1 = _wgslsmith_f_op_f32(abs(982f)) < global3.x;
    global0 = array<Struct_2, 8>();
    global0 = array<Struct_2, 8>();
    let var_2 = Struct_1(!(u_input.b.x >= 1i) && true, -reverseBits(countOneBits(vec3<i32>(-2147483647i, u_input.b.x, -73142i))), true);
    return var_2;
}

fn func_1(arg_0: f32, arg_1: i32) -> bool {
    let var_0 = true;
    let var_1 = abs(u_input.a);
    var var_2 = func_2(-(~(-u_input.b.x)));
    var var_3 = func_2(countOneBits(var_2.b.x));
    global2 = var_3.c;
    return var_1.x == firstTrailingBit(u_input.a.x >> (~countOneBits(37188u) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!(!(!select(vec4<bool>(false, false, false, false), vec4<bool>(true, global1.x, global1.x, global1.x), vec4<bool>(true, global1.x, global1.x, false)))));
    var_0 = vec4<bool>(global1.x, true, var_0.x, func_1(_wgslsmith_f_op_f32(global3.x - global3.x), firstLeadingBit(u_input.b.x)));
    let var_1 = Struct_3(func_2(min(func_2(_wgslsmith_mod_i32(u_input.b.x, -2147483647i)).b.x, -4008i)));
    var var_2 = func_2(max(u_input.b.x, 40907i));
    global3 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global3.x, global3.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(985f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -235f), _wgslsmith_f_op_f32(1797f - 1202f)))), var_0.zy));
    global0 = array<Struct_2, 8>();
    global1 = vec3<bool>(false, var_1.a.c, min(_wgslsmith_mult_u32(func_3(), u_input.a.x), max(4294967295u, u_input.a.x)) != ~0u);
    var_2 = func_2(var_1.a.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(exp2(global3.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1218f + global3.x) - _wgslsmith_f_op_f32(sign(global3.x)))) + vec3<f32>(-812f, 1000f, 1000f)));
}

