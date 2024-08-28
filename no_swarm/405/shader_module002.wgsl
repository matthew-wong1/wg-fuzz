struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: bool,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec4<u32>, 15>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_1() -> Struct_1 {
    let var_0 = !(!(!global0.d.ww));
    return Struct_1(0u, _wgslsmith_f_op_vec2_f32(global0.b * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.b * vec2<f32>(-772f, global0.b.x))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.b.x, global0.b.x) + global0.b)))), true, global0.d);
}

fn func_3() -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b.x, global0.b.x)));
    global1 = array<vec4<u32>, 15>();
    let var_1 = Struct_1(~_wgslsmith_div_u32(~max(4294967295u, 4294967295u), abs(_wgslsmith_mod_u32(u_input.a.x, 14137u))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -241f))), global0.b.x), true, !global0.d);
    let var_2 = func_1();
    var var_3 = Struct_1(global0.a, _wgslsmith_f_op_vec2_f32(var_1.b + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(261f, -306f) - vec2<f32>(var_0.x, 1000f))))), var_2.d.x, global0.d);
    return !var_3.c;
}

fn func_2() -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b.x, global0.b.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(global0.b.x)), _wgslsmith_f_op_f32(-global0.b.x)))) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-745f, global0.b.x, global0.b.x)))))));
    var var_1 = Struct_1(global0.a ^ (~0u & ((34150u & u_input.a.x) >> (~54874u % 32u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b.x, var_0.x))), func_3(), global0.d);
    var_1 = func_1();
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(973f, _wgslsmith_f_op_f32(-func_1().b.x), func_1().b.x)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(154f * -816f), _wgslsmith_f_op_f32(trunc(-1450f)), _wgslsmith_f_op_f32(trunc(-984f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1731f, var_0.x, global0.b.x))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1131f, -127f, -108f) + vec3<f32>(1138f, var_0.x, var_0.x)), vec3<f32>(165f, global0.b.x, var_1.b.x))) * vec3<f32>(1927f, _wgslsmith_f_op_f32(global0.b.x - -1000f), var_1.b.x))));
    var var_2 = Struct_1(~global0.a, var_1.b, !(false && !(!var_1.c)), var_1.d);
    return StorageBuffer(u_input.d, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(545f, -653f, var_1.b.x, global0.b.x), _wgslsmith_div_vec4_f32(vec4<f32>(global0.b.x, 197f, var_0.x, -1041f), vec4<f32>(global0.b.x, var_0.x, -1309f, -370f)), true))), vec4<f32>(var_0.x, 745f, global0.b.x, var_0.x), true)), _wgslsmith_add_vec3_i32(vec3<i32>(2147483647i & u_input.e, 0i, ~u_input.d.x), u_input.d.yzw) >> ((~(~vec3<u32>(36092u, var_2.a, u_input.c.x)) & _wgslsmith_mult_vec3_u32(~vec3<u32>(var_1.a, 13418u, var_2.a), ~u_input.a)) % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    var var_0 = vec2<bool>(any(vec2<bool>(global0.c, true)), !global0.d.x);
    var var_1 = _wgslsmith_div_u32(~8518u & firstTrailingBit(~_wgslsmith_mult_u32(68948u, 27614u)), 4294967295u);
    let var_2 = -1616f;
    var var_3 = func_1();
    let var_4 = u_input.a;
    let x = u_input.a;
    s_output = func_2();
}

