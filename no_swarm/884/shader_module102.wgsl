struct Struct_1 {
    a: bool,
    b: f32,
    c: u32,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<i32>,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<i32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(true, -749f, 1u, -27070i, 0i), Struct_1(false, -1116f, 0u, -1i, 0i), Struct_1(false, 238f, 95685u, -13228i, 2147483647i), Struct_1(true, 849f, 0u, -1i, 0i), Struct_1(false, -217f, 4294967295u, -57094i, -38563i));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec4<f32> {
    global0 = array<Struct_1, 5>();
    global0 = array<Struct_1, 5>();
    var var_0 = Struct_1(all(vec2<bool>(true, true)), 1225f, 4170u, _wgslsmith_sub_i32(max(max(_wgslsmith_mult_i32(-2650i, u_input.e), abs(u_input.e)), -1i), -49147i), u_input.c.x);
    let var_1 = Struct_2(~abs(_wgslsmith_mult_vec3_u32(~vec3<u32>(var_0.c, var_0.c, 1u), _wgslsmith_div_vec3_u32(vec3<u32>(var_0.c, 4303u, 45328u), vec3<u32>(20721u, var_0.c, 1445u)))), 103858u, global0[_wgslsmith_index_u32(~var_0.c, 5u)]);
    let var_2 = select(vec4<bool>(true || var_1.c.a, select(!var_1.c.a & true, var_0.a, var_1.c.a), true, all(vec3<bool>(false, any(vec2<bool>(true, true)), true && var_0.a))), !vec4<bool>(~0i >= var_1.c.d, !(!var_1.c.a), true, false), !vec4<bool>(select(true, true, var_1.b <= 79890u), var_1.c.b < var_0.b, (true | var_0.a) || all(vec2<bool>(true, var_0.a)), true));
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(1588f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.c.b, 874f) + 1541f) - _wgslsmith_f_op_f32(-var_1.c.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.c.b, _wgslsmith_f_op_f32(var_1.c.b + var_1.c.b), true)) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.b - var_0.b), _wgslsmith_f_op_f32(-var_0.b)))), var_0.b));
}

fn func_2(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: vec2<f32>, arg_3: bool) -> bool {
    let var_0 = arg_0.c;
    let var_1 = _wgslsmith_f_op_vec3_f32(arg_1 - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0.c.b * 401f))), arg_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b - var_0.b) + _wgslsmith_f_op_f32(var_0.b + var_0.b))) - _wgslsmith_f_op_vec3_f32(max(arg_1, _wgslsmith_f_op_vec3_f32(max(arg_1, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1.x, arg_2.x, var_0.b), arg_1, vec3<bool>(arg_0.c.a, arg_3, var_0.a)))))))));
    var var_2 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -2361f, arg_1.x, arg_1.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3())), any(vec3<bool>(true, var_0.a, arg_0.c.a)) | var_0.a)))));
    let var_3 = u_input.c;
    var var_4 = arg_0;
    return true;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: f32, arg_3: Struct_2) -> vec3<u32> {
    let var_0 = firstLeadingBit(u_input.c);
    var var_1 = arg_0;
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_1.b, 151f))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1214f)), 2792f);
    var_2 = vec3<f32>(219f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -588f))), arg_2);
    var_1 = arg_0;
    return vec3<u32>(var_1.c, firstTrailingBit(~arg_3.a.x), countOneBits(~_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(26941u, u_input.b, 1u, 1u), vec4<u32>(var_1.c, u_input.d.x, 4294967295u, 0u)), arg_3.b)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: i32, arg_3: Struct_2) -> bool {
    let var_0 = Struct_2(func_4(Struct_1(func_2(arg_3, _wgslsmith_f_op_vec3_f32(vec3<f32>(-543f, -1104f, 1205f) * vec3<f32>(-134f, -1419f, arg_3.c.b)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b, 495f)), !arg_1.c.a), 383f, arg_3.c.c, arg_2, arg_0.e), vec2<i32>(-_wgslsmith_sub_i32(arg_0.e, arg_1.c.e), arg_3.c.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(655f, _wgslsmith_f_op_f32(-516f + 1254f)))), arg_1), firstTrailingBit(countOneBits(_wgslsmith_div_u32(_wgslsmith_mult_u32(377u, 0u), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, arg_1.a.x, arg_3.c.c, 23410u), vec4<u32>(0u, 0u, u_input.d.x, u_input.d.x))))), arg_0);
    var var_1 = true;
    let var_2 = !var_0.c.a;
    var var_3 = var_0.c;
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-430f - arg_3.c.b), _wgslsmith_div_f32(1060f, -401f)))))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1.c.b))), _wgslsmith_f_op_f32(ceil(-1599f))));
    return arg_1.c.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 5>();
    let var_0 = true;
    global0 = array<Struct_1, 5>();
    global0 = array<Struct_1, 5>();
    let var_1 = u_input.d.x | (select(u_input.d.x, ~(u_input.b << (u_input.b % 32u)), func_1(global0[_wgslsmith_index_u32(u_input.d.x, 5u)], Struct_2(vec3<u32>(u_input.d.x, u_input.d.x, 4294967295u), u_input.b, global0[_wgslsmith_index_u32(u_input.b, 5u)]), u_input.a.x, Struct_2(vec3<u32>(u_input.d.x, 0u, 0u), u_input.d.x, global0[_wgslsmith_index_u32(4294967295u, 5u)])) || select(var_0, false, var_0)) << (1u % 32u));
    let var_2 = ~(~firstTrailingBit(_wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.b, 40506u), 68379u)));
    global0 = array<Struct_1, 5>();
    global0 = array<Struct_1, 5>();
    let var_3 = Struct_1(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2243f)), max(u_input.d.x, ~_wgslsmith_clamp_u32(~62852u, abs(0u), ~var_1)), 1i, select(u_input.e, u_input.a.x, !(!var_0)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_3.b + -1697f))), _wgslsmith_f_op_f32(var_3.b + _wgslsmith_f_op_f32(-1039f * -384f)))), _wgslsmith_f_op_f32(-var_3.b))), var_3.b, vec2<i32>(1i, -var_3.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_3.b, 1092f)) + _wgslsmith_f_op_f32(ceil(var_3.b))), -1543f, !var_0))), var_3.e);
}

