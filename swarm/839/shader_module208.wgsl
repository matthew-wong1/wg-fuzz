struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: bool,
    c: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
    c: u32,
    d: vec3<u32>,
    e: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: u32,
    c: f32,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<vec3<f32>, 11> = array<vec3<f32>, 11>(vec3<f32>(1151f, -875f, 788f), vec3<f32>(-991f, 1000f, -1332f), vec3<f32>(818f, -603f, 2270f), vec3<f32>(-148f, 1000f, 284f), vec3<f32>(175f, -791f, 610f), vec3<f32>(-500f, -1000f, 233f), vec3<f32>(1000f, -144f, -660f), vec3<f32>(-1000f, 1867f, -1903f), vec3<f32>(-224f, 764f, 932f), vec3<f32>(-863f, -1000f, -1438f), vec3<f32>(-148f, -1411f, -290f));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_2(arg_0: vec2<u32>) -> vec2<bool> {
    let var_0 = Struct_4(true && (global0.x != ~(global0.x ^ global0.x)), 24629u, -445f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -434f)));
    global0 = vec2<u32>(global0.x, ~36412u);
    let var_1 = Struct_1(vec4<i32>(-1i) * -(~vec4<i32>(u_input.e, 16657i, u_input.e, u_input.a) & vec4<i32>(0i, 2147483647i, u_input.e, u_input.a)));
    global1 = array<vec3<f32>, 11>();
    global1 = array<vec3<f32>, 11>();
    return select(!(!select(vec2<bool>(true, true), vec2<bool>(var_0.a, false), false)), vec2<bool>(all(vec2<bool>(var_0.a, 20780u < global0.x)), !(!var_0.a)), (true && !(!var_0.a)) | all(!vec4<bool>(true, true, var_0.a, true)));
}

fn func_3(arg_0: Struct_4) -> vec2<bool> {
    let var_0 = arg_0.a;
    var var_1 = Struct_3(Struct_2(reverseBits(vec3<i32>(-2147483647i, ~(-14554i), -47642i)), var_0, select(select(select(vec4<bool>(true, true, true, arg_0.a), vec4<bool>(var_0, arg_0.a, false, true), vec4<bool>(false, var_0, arg_0.a, arg_0.a)), select(vec4<bool>(arg_0.a, arg_0.a, true, true), vec4<bool>(true, var_0, arg_0.a, var_0), var_0), all(vec2<bool>(true, false))), vec4<bool>(select(var_0, false, arg_0.a), select(var_0, arg_0.a, var_0), any(vec3<bool>(false, false, true)), any(vec4<bool>(arg_0.a, arg_0.a, arg_0.a, var_0))), arg_0.a && arg_0.a)), _wgslsmith_mult_vec3_i32(vec3<i32>(-25751i, u_input.e, u_input.e), ~countOneBits(~vec3<i32>(-1i, u_input.a, -20306i))), 1u, abs(abs(u_input.d.wwx)), Struct_2(_wgslsmith_sub_vec3_i32(vec3<i32>(~u_input.a, u_input.a, ~(-45257i)), _wgslsmith_sub_vec3_i32(vec3<i32>(23045i, u_input.e, 0i), vec3<i32>(u_input.a, 2147483647i, 0i))), arg_0.a, !select(select(vec4<bool>(var_0, arg_0.a, true, true), vec4<bool>(arg_0.a, var_0, false, true), false), vec4<bool>(false, arg_0.a, var_0, var_0), select(vec4<bool>(var_0, false, var_0, arg_0.a), vec4<bool>(false, true, true, var_0), arg_0.a))));
    let var_2 = ~vec2<i32>(var_1.b.x, 1i);
    let var_3 = abs(abs(~(-vec3<i32>(2147483647i, 2147483647i, -14605i)))) ^ firstTrailingBit(vec3<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(-13303i, -44682i, var_1.a.a.x), _wgslsmith_mod_vec3_i32(var_1.b, var_1.b)), u_input.a | abs(-12551i), var_2.x));
    global0 = max(~min(_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(arg_0.b, 19587u)), var_1.d.yz) | max(vec2<u32>(min(var_1.d.x, 55641u), _wgslsmith_sub_u32(var_1.d.x, 4294967295u)), _wgslsmith_mult_vec2_u32(u_input.c & u_input.d.yy, _wgslsmith_div_vec2_u32(vec2<u32>(arg_0.b, var_1.c), vec2<u32>(arg_0.b, 1u)))), ~(var_1.d.xy | ~u_input.c));
    return select(vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.c, arg_0.c) - _wgslsmith_f_op_f32(-212f * arg_0.d)) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.d)) * _wgslsmith_f_op_f32(1329f * arg_0.c)), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, global0.x, global0.x), var_1.d) < _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(28782u, 42385u, 89841u, global0.x), vec4<u32>(16141u, global0.x, global0.x, arg_0.b)), ~global0.x)), var_1.e.c.zz, false);
}

fn func_1() -> Struct_1 {
    var var_0 = select(func_2(abs(_wgslsmith_add_vec2_u32(u_input.c, vec2<u32>(u_input.b, u_input.b))) << ((u_input.d.wz | _wgslsmith_add_vec2_u32(vec2<u32>(31650u, u_input.b), vec2<u32>(u_input.d.x, 0u))) % vec2<u32>(32u))), select(!(!func_3(Struct_4(true, 0u, -236f, -454f))), func_3(Struct_4(false, 4294967295u, -1127f, _wgslsmith_f_op_f32(-736f - 207f))), true), !select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(false, true, true)), vec2<bool>(true, true), vec2<bool>(true, true)));
    var_0 = !(!func_3(Struct_4(u_input.e != u_input.a, u_input.c.x, _wgslsmith_f_op_f32(-742f - 2404f), _wgslsmith_f_op_f32(219f - -264f))));
    let var_1 = vec4<i32>(2147483647i, u_input.e, u_input.a | _wgslsmith_dot_vec3_i32(min(~vec3<i32>(u_input.a, 32123i, 0i), vec3<i32>(-1i, -1i, 20743i) >> (u_input.d.xyw % vec3<u32>(32u))), ~_wgslsmith_div_vec3_i32(vec3<i32>(-31832i, u_input.a, u_input.e), vec3<i32>(2014i, u_input.e, 1i))), u_input.e);
    let var_2 = Struct_4(all(!vec3<bool>(true | var_0.x, var_0.x, var_0.x)), firstLeadingBit(1u), 1070f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(851f * 1226f))))))));
    global0 = u_input.c;
    return Struct_1(firstTrailingBit(var_1));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global0 = ~vec2<u32>(_wgslsmith_dot_vec4_u32(u_input.d, u_input.d), global0.x);
    global0 = _wgslsmith_div_vec2_u32(vec2<u32>(global0.x, global0.x), vec2<u32>(reverseBits(20811u) << (max(~global0.x, ~global0.x) % 32u), global0.x));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a, var_0.a.x & _wgslsmith_dot_vec2_i32(-abs(var_0.a.yx), var_0.a.xx));
}

