struct Struct_1 {
    a: u32,
    b: u32,
    c: f32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: bool,
    d: vec2<u32>,
    e: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
}

struct Struct_4 {
    a: vec3<f32>,
    b: i32,
    c: Struct_3,
}

struct Struct_5 {
    a: Struct_4,
    b: bool,
    c: vec3<f32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: i32,
    d: vec3<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<bool>, arg_1: vec3<f32>) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1338f));
    var var_1 = Struct_5(Struct_4(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(727f, arg_1.x, -352f) - vec3<f32>(arg_1.x, var_0, -522f)), _wgslsmith_f_op_vec3_f32(exp2(arg_1)))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0, 502f, -167f))), arg_0)), -8819i ^ u_input.b.x, Struct_3(Struct_1(4294967295u, 41858u, -494f, _wgslsmith_f_op_vec2_f32(vec2<f32>(-1468f, 1100f) + vec2<f32>(arg_1.x, 1000f))), ~(u_input.a | 14065u))), arg_0.x, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(arg_1 + arg_1)))))), ~(~(~firstLeadingBit(vec3<u32>(u_input.a, u_input.a, u_input.a)))));
    let var_2 = i32(-1i) * -(i32(-1i) * -abs(-2147483647i));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-698f)) + _wgslsmith_f_op_f32(exp2(var_0))))))), -829f, 1398f, arg_1.x);
    var var_4 = vec2<bool>(false, -14655i < var_1.a.b);
    return 0i;
}

fn func_2(arg_0: bool) -> Struct_5 {
    var var_0 = select(!vec3<bool>(true, arg_0, arg_0), vec3<bool>(select(!arg_0, u_input.c.x > 0i, true) == arg_0, -_wgslsmith_add_i32(u_input.b.x, -8425i) < -1i, true), false);
    var_0 = vec3<bool>(func_3(select(!vec3<bool>(var_0.x, true, false), !vec3<bool>(true, true, var_0.x), !vec3<bool>(arg_0, arg_0, arg_0)), vec3<f32>(1f, 1f, 1f)) < 75634i, true, arg_0);
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-454f - -751f) - -1832f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -440f), _wgslsmith_f_op_f32(floor(406f)))))));
    var var_2 = firstTrailingBit(_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(103222u, 1u, u_input.a, u_input.a), ~(vec4<u32>(u_input.a, u_input.a, 26498u, 4294967295u) >> (vec4<u32>(u_input.a, 4294967295u, 15930u, u_input.a) % vec4<u32>(32u)))), (max(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(0u, u_input.a, 4294967295u, 18972u)) ^ select(vec4<u32>(u_input.a, u_input.a, 32087u, u_input.a), vec4<u32>(u_input.a, 4294967295u, 16387u, 3502u), arg_0)) >> ((vec4<u32>(29640u, u_input.a, 8002u, u_input.a) << ((vec4<u32>(31083u, u_input.a, u_input.a, u_input.a) >> (vec4<u32>(0u, u_input.a, u_input.a, u_input.a) % vec4<u32>(32u))) % vec4<u32>(32u))) % vec4<u32>(32u))));
    var_0 = vec3<bool>(!all(vec3<bool>(true, true, true)), select(arg_0, var_0.x, true), !any(!vec4<bool>(var_0.x, arg_0, true, arg_0)));
    return Struct_5(Struct_4(vec3<f32>(641f, _wgslsmith_div_f32(610f, _wgslsmith_f_op_f32(var_1.x - var_1.x)), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(var_1.x * var_1.x))), i32(-1i) * -48966i, Struct_3(Struct_1(abs(u_input.a), 58178u << (u_input.a % 32u), -1000f, _wgslsmith_f_op_vec2_f32(select(var_1, var_1, true))), 10509u)), var_0.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(843f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(var_1.x)))))), _wgslsmith_mult_vec3_u32(vec3<u32>(14878u, u_input.a, var_2.x), firstLeadingBit(reverseBits(~vec3<u32>(u_input.a, 1u, var_2.x)))));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<f32>) -> Struct_5 {
    var var_0 = arg_1.x;
    let var_1 = func_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c * -2660f)))) > arg_0.c);
    let var_2 = func_2(true).a.c.a;
    var var_3 = u_input.a;
    let var_4 = func_2((true || var_1.b) != all(select(vec2<bool>(false, true), !vec2<bool>(var_1.b, var_1.b), !vec2<bool>(true, var_1.b)))).a.c;
    return Struct_5(var_1.a, func_2(!var_1.b).b, vec3<f32>(_wgslsmith_f_op_f32(round(var_4.a.d.x)), 537f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d.x)))), vec3<u32>(83126u, arg_0.a, abs(1u)));
}

fn func_4(arg_0: Struct_5) -> u32 {
    var var_0 = arg_0.a.c.a;
    var_0 = Struct_1(_wgslsmith_dot_vec3_u32(arg_0.d, func_2(all(select(vec3<bool>(true, arg_0.b, arg_0.b), vec3<bool>(arg_0.b, arg_0.b, false), true))).d), arg_0.a.c.a.b ^ (select(u_input.a, 0u, true) ^ _wgslsmith_mod_u32(~0u, firstLeadingBit(107728u))), var_0.d.x, vec2<f32>(-1002f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-457f * var_0.d.x))), 1413f)));
    let var_1 = _wgslsmith_mult_vec3_i32(u_input.c.yyy, u_input.c.zyy);
    var var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0.a.c.a.c - var_0.c)));
    let var_3 = Struct_1(~72305u, max(arg_0.a.c.b, ~80675u), -627f, vec2<f32>(arg_0.a.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.a.x)) * _wgslsmith_div_f32(arg_0.c.x, 1000f))));
    return _wgslsmith_div_u32(u_input.a, var_3.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.x;
    var var_1 = 1i > ~min(~var_0, var_0);
    let var_2 = (u_input.a >= func_4(func_1(Struct_1(4294967295u, 32977u, 2492f, vec2<f32>(1758f, -1988f)), vec3<f32>(-1623f, -1271f, -879f)))) & any(vec2<bool>(true, true));
    let var_3 = ~select(vec4<u32>(u_input.a, 1u, u_input.a, _wgslsmith_sub_u32(u_input.a, 2746u)) | (max(vec4<u32>(u_input.a, 38708u, u_input.a, u_input.a), vec4<u32>(u_input.a, 37133u, 4294967295u, 0u)) << (abs(vec4<u32>(1u, 7030u, u_input.a, 4294967295u)) % vec4<u32>(32u))), ~vec4<u32>(0u, 10952u, u_input.a, ~u_input.a), vec4<bool>(true, any(!vec4<bool>(false, false, true, var_2)), func_2(var_2).b, true));
    var var_4 = func_1(func_1(Struct_1(_wgslsmith_add_u32(u_input.a | var_3.x, ~u_input.a), var_3.x >> (abs(56918u) % 32u), -1048f, _wgslsmith_f_op_vec2_f32(vec2<f32>(134f, 1000f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-745f, -736f)))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(func_1(Struct_1(var_3.x, 0u, -169f, vec2<f32>(-198f, -651f)), vec3<f32>(-679f, -436f, -426f)).c.x, 179f, _wgslsmith_f_op_f32(trunc(1573f)))))).a.c.a, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(844f, _wgslsmith_div_f32(-1380f, 338f), _wgslsmith_f_op_f32(ceil(749f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(821f, 378f, 2150f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1924f, -292f, _wgslsmith_f_op_f32(select(1000f, -1165f, var_2)))))).a.c;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~(~(~vec4<u32>(25715u, var_4.a.b, 1u, u_input.a)))), vec4<u32>(35164u, min(1u, select(~11035u, var_3.x, all(vec2<bool>(false, false)))), var_4.a.a, abs(var_3.x)), var_0, ~(~reverseBits(_wgslsmith_mod_vec3_u32(var_3.wwy, var_3.wzw))), var_4.a.c);
}

