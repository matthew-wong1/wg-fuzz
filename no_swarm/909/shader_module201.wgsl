struct Struct_1 {
    a: i32,
    b: f32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: vec3<bool>,
    d: Struct_2,
    e: f32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_3,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: f32) -> i32 {
    let var_0 = u_input.a & (~(~1u) | abs(u_input.a));
    var var_1 = !((true | all(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false)))) && (_wgslsmith_sub_i32(u_input.b, countOneBits(24899i)) >= -(u_input.b | -2147483647i)));
    let var_2 = Struct_1(~23973i, arg_0, vec2<bool>(true, true));
    var var_3 = 0u;
    let var_4 = var_2;
    return _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(var_2.a, -2147483647i), vec2<i32>(u_input.b, u_input.b) >> (vec2<u32>(u_input.a, var_0) % vec2<u32>(32u))), select(vec2<i32>(var_4.a, var_4.a), ~vec2<i32>(2147483647i, var_2.a), !var_4.c)), select(abs(~vec2<i32>(var_4.a, u_input.b)), -vec2<i32>(-10969i, 0i), !(!var_4.c))), ~(~_wgslsmith_clamp_i32(~var_2.a, var_2.a, var_4.a << (var_0 % 32u))));
}

fn func_2() -> Struct_2 {
    let var_0 = ~_wgslsmith_div_vec3_u32(vec3<u32>(13367u, firstTrailingBit(u_input.a), (u_input.a << (u_input.a % 32u)) ^ u_input.a), firstLeadingBit(vec3<u32>(~56102u, 0u, u_input.a)));
    global0 = -558f;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1266f)) + _wgslsmith_div_f32(-1000f, 1089f))), 1186f) * _wgslsmith_f_op_f32(f32(-1f) * -1184f));
    var var_1 = _wgslsmith_mod_vec2_i32(vec2<i32>(func_3(464f), 1i), ~_wgslsmith_mod_vec2_i32(abs(vec2<i32>(-25645i, u_input.b)), vec2<i32>(36751i, u_input.b)) | select(abs(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(-12423i, 2147483647i))), ~firstTrailingBit(vec2<i32>(72131i, u_input.b)), vec2<bool>(true, true)));
    var var_2 = Struct_1(-(~var_1.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-244f * -319f))))), !select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, true), vec2<bool>(true, true)));
    return Struct_2(Struct_1(firstTrailingBit(u_input.b), _wgslsmith_f_op_f32(-1909f + var_2.b), select(var_2.c, vec2<bool>(51237u >= u_input.a, var_2.c.x | false), any(vec3<bool>(true, false, var_2.c.x)))), !(!select(select(var_2.c, vec2<bool>(var_2.c.x, true), false), !var_2.c, false)));
}

fn func_1(arg_0: f32, arg_1: Struct_4) -> Struct_1 {
    let var_0 = func_2();
    global0 = var_0.a.b;
    let var_1 = 50496u;
    let var_2 = firstLeadingBit((vec4<i32>(0i, countOneBits(u_input.b), 2147483647i, -var_0.a.a) >> (max(vec4<u32>(1u, var_1, 21665u, var_1), vec4<u32>(var_1, 86780u, var_1, 29467u) << (vec4<u32>(u_input.a, var_1, var_1, var_1) % vec4<u32>(32u))) % vec4<u32>(32u))) & -vec4<i32>(1i, ~0i, -arg_1.b.d.a.a, arg_1.b.b.a));
    var var_3 = firstLeadingBit(abs(var_2));
    return arg_1.b.d.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_vec3_i32(firstLeadingBit(countOneBits(vec3<i32>(-2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 1i), vec2<i32>(0i, 0i)), 9304i))), min(vec3<i32>(-1i) * -reverseBits(vec3<i32>(-45896i, u_input.b, u_input.b)), vec3<i32>(u_input.b, -43235i, -u_input.b ^ -2147483647i)));
    var var_1 = 1i;
    let var_2 = Struct_2(Struct_1(var_0.x, _wgslsmith_div_f32(-1133f, _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -998f))), select(vec2<bool>(true, true), vec2<bool>(select(true, true, false), all(vec2<bool>(false, true))), vec2<bool>(true, u_input.a == u_input.a))), vec2<bool>(any(vec2<bool>(true, all(vec2<bool>(false, false)))), any(vec2<bool>(true, select(true, false, false)))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a.b + -371f) * _wgslsmith_f_op_f32(round(var_2.a.b)))) + _wgslsmith_f_op_f32(step(835f, _wgslsmith_f_op_f32(-1f)))));
    var var_3 = Struct_4(!vec2<bool>(var_2.a.c.x, var_2.b.x), Struct_3(var_2.a.b, Struct_1(u_input.b, _wgslsmith_f_op_f32(round(-873f)), var_2.a.c), vec3<bool>(false, var_2.b.x, var_2.a.c.x), Struct_2(func_1(889f, Struct_4(vec2<bool>(false, var_2.b.x), Struct_3(-1052f, var_2.a, vec3<bool>(false, var_2.b.x, var_2.a.c.x), var_2, var_2.a.b), var_2.a.b)), !var_2.a.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(767f)), _wgslsmith_f_op_f32(f32(-1f) * -674f))) + -647f)), var_2.a.b);
    var_1 = var_3.b.b.a;
    var var_4 = _wgslsmith_f_op_f32(max(var_3.c, _wgslsmith_f_op_f32(f32(-1f) * -247f)));
    let var_5 = var_0.xx;
    global0 = -2263f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.c, var_3.b.b.b, var_2.a.b, var_3.b.a) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a.b, var_2.a.b, -297f, var_2.a.b))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.c, var_2.a.b, 2764f, 126f)))))));
}

