struct Struct_1 {
    a: vec3<bool>,
    b: vec3<f32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: vec2<bool>,
    d: u32,
    e: vec4<f32>,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_4, arg_1: u32, arg_2: bool) -> vec3<f32> {
    var var_0 = select(!(!select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, arg_2), vec3<bool>(false, arg_2, arg_2)), vec3<bool>(arg_2, false, true), vec3<bool>(true, false, arg_2))), select(!(!select(vec3<bool>(arg_2, arg_2, false), vec3<bool>(arg_2, arg_2, arg_2), vec3<bool>(arg_2, arg_2, true))), !select(select(vec3<bool>(true, true, false), vec3<bool>(arg_2, true, arg_2), vec3<bool>(false, true, true)), select(vec3<bool>(arg_2, false, arg_2), vec3<bool>(false, false, arg_2), vec3<bool>(arg_2, arg_2, false)), !vec3<bool>(false, true, arg_2)), true), !(!(!vec3<bool>(arg_2, false, false))));
    let var_1 = Struct_2(Struct_1(select(select(select(vec3<bool>(true, true, var_0.x), vec3<bool>(arg_2, false, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x)), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), var_0.x), arg_1 <= 3193u), !select(vec3<bool>(false, true, var_0.x), vec3<bool>(var_0.x, var_0.x, true), true), !(!vec3<bool>(false, arg_2, false))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(528f * -893f), _wgslsmith_f_op_f32(min(-422f, -1000f)), _wgslsmith_f_op_f32(round(-1000f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(532f, 365f, 215f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-708f, 1234f, 1382f) + vec3<f32>(123f, 1778f, -617f)))), -342f), Struct_1(vec3<bool>((39884u << (0u % 32u)) >= arg_1, all(select(var_0.yx, vec2<bool>(var_0.x, true), false)), true), vec3<f32>(-1004f, -619f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -145f) - -1427f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))));
    let var_2 = ~arg_1;
    var_0 = var_1.a.a;
    var_0 = select(var_1.a.a, !vec3<bool>(true, var_1.a.a.x, !var_1.b.a.x & var_1.a.a.x), false);
    return _wgslsmith_f_op_vec3_f32(-var_1.b.b);
}

fn func_2(arg_0: f32, arg_1: f32) -> bool {
    var var_0 = 4294967295u;
    var var_1 = Struct_4(reverseBits(_wgslsmith_mod_i32(_wgslsmith_mult_i32(u_input.a, u_input.a) & _wgslsmith_sub_i32(u_input.a, u_input.a), ~(-59072i))));
    let var_2 = !(!(!((arg_0 <= arg_0) && all(vec3<bool>(false, true, false)))));
    var var_3 = Struct_2(Struct_1(select(!(!vec3<bool>(true, false, var_2)), vec3<bool>(var_2, false, false), _wgslsmith_f_op_f32(min(arg_0, 1213f)) <= _wgslsmith_f_op_f32(f32(-1f) * -205f)), _wgslsmith_f_op_vec3_f32(func_3(Struct_4(~var_1.a), ~1u, true)), _wgslsmith_f_op_f32(arg_0 - arg_1)), Struct_1(vec3<bool>(false, any(vec2<bool>(true, false)), true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, arg_0) + vec3<f32>(1076f, arg_0, arg_0))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, arg_0, arg_1) + vec3<f32>(2375f, arg_0, arg_1)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(379f, -492f, 184f), vec3<f32>(arg_1, arg_0, arg_0))))), _wgslsmith_div_f32(555f, _wgslsmith_f_op_f32(max(arg_0, -288f)))));
    var_1 = Struct_4(_wgslsmith_clamp_i32(-u_input.a, -1i << (_wgslsmith_dot_vec4_u32(vec4<u32>(34971u, 29978u, 31819u, 68129u), ~vec4<u32>(4294967295u, 38562u, 1u, 59929u)) % 32u), 1i));
    return true;
}

fn func_1(arg_0: vec3<f32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(arg_0.x - -624f), 129f, _wgslsmith_f_op_f32(select(arg_0.x, 1979f, true))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, arg_0.x, -638f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, -1586f, arg_0.x, arg_0.x) + vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)))) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, 926f, arg_0.x)))))));
    let var_1 = func_2(var_0.x, arg_0.x) && (select(true, func_2(_wgslsmith_f_op_f32(f32(-1f) * -1991f), 959f), true) == true);
    let var_2 = _wgslsmith_f_op_f32(sign(364f));
    return Struct_2(Struct_1(!select(vec3<bool>(false, true, true), !vec3<bool>(true, var_1, false), true), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(arg_0, _wgslsmith_f_op_vec3_f32(vec3<f32>(-404f, var_0.x, -887f) * var_0.wyw), true)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1445f, -363f, arg_0.x)), _wgslsmith_div_vec3_f32(vec3<f32>(var_2, var_2, var_2), vec3<f32>(-1049f, var_0.x, arg_0.x)))))), -484f), Struct_1(select(select(!vec3<bool>(true, var_1, false), !vec3<bool>(true, var_1, var_1), select(vec3<bool>(true, var_1, false), vec3<bool>(var_1, var_1, var_1), var_1)), select(select(vec3<bool>(false, var_1, var_1), vec3<bool>(var_1, false, var_1), var_1), vec3<bool>(false, var_1, var_1), select(vec3<bool>(var_1, var_1, var_1), vec3<bool>(true, var_1, var_1), vec3<bool>(false, false, var_1))), vec3<bool>(any(vec2<bool>(true, var_1)), var_1, true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(658f, -1515f, 1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - arg_0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -928f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -763f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1180f) * _wgslsmith_f_op_f32(select(142f, -397f, false)))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -127f), 1f, 1365f))));
    var var_1 = Struct_3(Struct_2(var_0.b, func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.b.x, var_0.b.c, 1455f)) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1066f, 207f, var_0.b.c))))).a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.c))), var_0.b.a.xx, ~min(_wgslsmith_add_u32(0u, 0u), 0u << (0u % 32u)) | _wgslsmith_dot_vec2_u32(abs(vec2<u32>(41921u, 4294967295u)), vec2<u32>(~0u, ~0u)), vec4<f32>(var_0.b.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1189f)), var_0.b.b.x, var_0.a.b.x));
    var var_2 = Struct_1(select(var_0.a.a, !select(vec3<bool>(var_1.a.b.a.x, var_1.a.a.a.x, true), var_0.b.a, select(true, true, true)), _wgslsmith_f_op_f32(1092f * _wgslsmith_f_op_f32(-var_1.e.x)) != 579f), _wgslsmith_f_op_vec3_f32(select(var_1.a.a.b, vec3<f32>(_wgslsmith_f_op_f32(-var_1.b), _wgslsmith_f_op_f32(abs(var_0.a.b.x)), _wgslsmith_f_op_f32(select(var_1.e.x, _wgslsmith_f_op_f32(round(1328f)), false))), vec3<bool>(!var_0.a.a.x == var_0.b.a.x, all(!var_0.b.a), !(true & var_1.a.a.a.x)))), _wgslsmith_f_op_f32(-var_1.a.b.c));
    let var_3 = var_2.b.x;
    var var_4 = var_1.d;
    let x = u_input.a;
    s_output = StorageBuffer(select(~max(vec2<u32>(4294967295u, 38343u), ~vec2<u32>(4294967295u, var_1.d)), ~(~vec2<u32>(1u, var_1.d)) >> (vec2<u32>(_wgslsmith_clamp_u32(30371u, var_1.d, 4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.d, var_1.d), vec2<u32>(30967u, var_1.d))) % vec2<u32>(32u)), var_1.c.x), _wgslsmith_sub_u32(var_1.d, ~(~33549u)));
}

