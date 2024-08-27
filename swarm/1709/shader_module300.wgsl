struct Struct_1 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: vec4<i32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
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

var<private> global0: f32 = -1000f;

var<private> global1: array<Struct_1, 14>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3() -> vec4<u32> {
    global1 = array<Struct_1, 14>();
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1000f * -107f), _wgslsmith_f_op_f32(min(425f, -1000f)))), 1194f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-721f, _wgslsmith_f_op_f32(max(-751f, 974f))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -477f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(910f, -1000f, -584f, -1064f))) - vec4<f32>(235f, -726f, 486f, 1970f)) - vec4<f32>(_wgslsmith_f_op_f32(-2483f * 802f), 1f, 148f, _wgslsmith_f_op_f32(-2124f + 545f)))));
    global1 = array<Struct_1, 14>();
    var var_1 = true;
    let var_2 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-454f, 393f, var_0.x), _wgslsmith_f_op_vec3_f32(-var_0.xzx))) + vec3<f32>(_wgslsmith_f_op_f32(var_0.x + 1551f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(var_0.x, var_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, -1221f)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.x))) - var_0.x), -1953f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + var_0.x) + _wgslsmith_f_op_f32(var_0.x - var_0.x)))))));
    return u_input.a;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_2(global1[_wgslsmith_index_u32(u_input.a.x, 14u)]);
    var var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-272f - 698f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-503f - _wgslsmith_f_op_f32(670f - 1051f))))));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-546f * _wgslsmith_f_op_f32(420f - 1819f)) - 512f)));
    let var_2 = func_3();
    let var_3 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a.x, ~(~4294967295u & ~(25763u | var_2.x))), 14u)];
    return Struct_1(abs(min(select(var_3.a >> (var_2 % vec4<u32>(32u)), max(var_0.a.a, vec4<i32>(var_3.a.x, var_0.a.a.x, 1i, -1096i)), all(var_0.a.b.ywx)), -max(vec4<i32>(-2147483647i, 0i, -2147483647i, var_3.a.x), vec4<i32>(2147483647i, var_0.a.c.x, 30618i, 1i)))), vec4<bool>(var_0.a.b.x, true, true, false & (1i != _wgslsmith_clamp_i32(var_0.a.c.x, 54934i, 28345i))), abs(~vec4<i32>(var_3.a.x, var_3.a.x, var_3.a.x, firstLeadingBit(var_0.a.c.x))), var_3.d);
}

fn func_1() -> vec3<i32> {
    global1 = array<Struct_1, 14>();
    var var_0 = Struct_2(func_2());
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1427f * -631f)))), -1354f);
    var var_2 = var_0.a.d;
    var_0 = Struct_2(var_0.a);
    return var_0.a.c.yyw | func_2().a.yzw;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = countOneBits(~vec3<i32>(1i, 1i, 1i) & _wgslsmith_clamp_vec3_i32(vec3<i32>(-17456i, 1i, -1i) >> (~vec3<u32>(u_input.a.x, 27339u, u_input.a.x) % vec3<u32>(32u)), min(~vec3<i32>(1i, -2147483647i, 17531i), ~vec3<i32>(60775i, -2147483647i, 32485i)), min(vec3<i32>(0i, -1i, 1i) >> (u_input.a.ywy % vec3<u32>(32u)), func_1())));
    var var_1 = _wgslsmith_clamp_vec3_i32((vec3<i32>(-var_0.x, func_1().x, var_0.x) >> (u_input.a.zyw % vec3<u32>(32u))) & _wgslsmith_mult_vec3_i32(vec3<i32>(var_0.x >> (u_input.a.x % 32u), 1i, 1i), ~(vec3<i32>(25266i, -2147483647i, var_0.x) << (u_input.a.wzw % vec3<u32>(32u)))), min(-vec3<i32>(var_0.x, -1i, 2178i) << (u_input.a.yyz % vec3<u32>(32u)), vec3<i32>(2147483647i >> (_wgslsmith_sub_u32(u_input.a.x, u_input.a.x) % 32u), var_0.x, func_2().a.x)), ~select(vec3<i32>(abs(-18545i), -2147483647i, ~31898i), ~(vec3<i32>(var_0.x, -2147483647i, var_0.x) & vec3<i32>(var_0.x, 14291i, -24615i)), select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
    let var_2 = any(vec3<bool>(all(vec2<bool>(false, false)) & true, true, false)) & any(vec3<bool>(true, true, true));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(175f, 405f, 596f, 446f)))))));
    var var_4 = func_2();
    let var_5 = ~80791u;
    var_3 = vec4<f32>(656f, var_3.x, var_3.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(833f, var_3.x)), -266f));
    let var_6 = Struct_2(func_2());
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x);
}

