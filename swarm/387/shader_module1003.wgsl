struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: u32,
    b: vec2<f32>,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: Struct_1,
    d: vec4<bool>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: i32,
    c: Struct_2,
}

struct Struct_5 {
    a: vec4<i32>,
    b: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<i32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 28>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec2<u32>, arg_2: bool, arg_3: f32) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_3 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(401f - arg_3))))));
    return 11053i;
}

fn func_2() -> bool {
    global0 = array<vec4<u32>, 28>();
    var var_0 = Struct_5(vec4<i32>(-1i & u_input.a.x, ~firstTrailingBit(~u_input.b), 32432i | (~(-1954i) >> (u_input.c.x % 32u)), func_3(vec3<u32>(u_input.c.x, ~u_input.c.x, _wgslsmith_div_u32(22821u, u_input.c.x)), ~u_input.c | abs(u_input.c), !(4294967295u != u_input.c.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-275f - 742f))))), ~1u);
    let var_1 = Struct_1(-1310f, select(_wgslsmith_add_i32(func_3(max(vec3<u32>(var_0.b, var_0.b, var_0.b), vec3<u32>(0u, var_0.b, var_0.b)), ~vec2<u32>(1u, 65071u), select(true, false, false), 1f), 2147483647i), _wgslsmith_mult_i32(_wgslsmith_add_i32(max(u_input.b, 0i), -43201i), countOneBits(firstTrailingBit(1i))), true));
    let var_2 = vec3<f32>(-1610f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-822f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-1147f, 1047f)), _wgslsmith_f_op_f32(f32(-1f) * -1932f))))), _wgslsmith_f_op_f32(select(212f, var_1.a, all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false)), select(true, false, true))))));
    var var_3 = !((true & (var_2.x < _wgslsmith_f_op_f32(var_2.x - var_1.a))) || !all(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false))));
    return !(any(select(select(vec2<bool>(false, true), vec2<bool>(false, false), true), vec2<bool>(true, true), true)) && (true & (var_2.x == _wgslsmith_f_op_f32(-var_1.a))));
}

fn func_1(arg_0: u32) -> Struct_4 {
    var var_0 = ~2147483647i;
    var var_1 = global0[_wgslsmith_index_u32(abs(1834u << ((_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, u_input.c.x, u_input.c.x), abs(vec3<u32>(4294967295u, 0u, u_input.c.x))) >> (4294967295u % 32u)) % 32u)), 28u)];
    let var_2 = vec3<bool>(true, true, true);
    var_0 = u_input.a.x;
    var var_3 = vec2<bool>(func_2(), !all(select(vec3<bool>(var_2.x, true, true), select(vec3<bool>(false, var_2.x, var_2.x), vec3<bool>(var_2.x, false, true), var_2), true)));
    return Struct_4(select(vec3<bool>(true, func_2(), !var_3.x), vec3<bool>(!select(var_2.x, false, var_2.x), true, true), true), u_input.a.x, Struct_2(~11514u, _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(-1147f, 1000f)), 786f), vec2<f32>(_wgslsmith_f_op_f32(step(-493f, -1117f)), _wgslsmith_f_op_f32(max(-379f, -2133f))))));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_5) -> i32 {
    let var_0 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1812f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(632f - 1000f), _wgslsmith_f_op_f32(f32(-1f) * -184f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.c.b.x * 124f), _wgslsmith_div_f32(arg_0.c.b.x, -171f))) + func_1(1u).c.b.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(686f, arg_0.c.b.x) * _wgslsmith_f_op_f32(abs(-722f))), _wgslsmith_f_op_f32(-arg_0.c.b.x))));
    let var_1 = all(vec2<bool>(select(arg_0.c.b.x > _wgslsmith_f_op_f32(abs(var_0.x)), !arg_0.a.x, arg_0.a.x), -337f <= _wgslsmith_f_op_f32(-arg_0.c.b.x)));
    var var_2 = 0i;
    let var_3 = _wgslsmith_mod_i32(arg_1.a.x, 1i | _wgslsmith_div_i32(-1i, arg_1.a.x));
    var_2 = ~(~max(var_3, ~arg_1.a.x) | -2147483647i);
    return ~(-42589i);
}

fn func_5(arg_0: f32, arg_1: vec3<i32>, arg_2: vec2<i32>, arg_3: vec3<bool>) -> Struct_3 {
    return Struct_3(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0))))) <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))), _wgslsmith_dot_vec2_u32(select(vec2<u32>(1u, 1u) >> (u_input.c % vec2<u32>(32u)), vec2<u32>(u_input.c.x, 0u) >> (u_input.c % vec2<u32>(32u)), any(vec4<bool>(true, arg_3.x, true, false))), abs(vec2<u32>(u_input.c.x, 0u))) < u_input.c.x, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(arg_0, -114f))) * _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_dot_vec3_i32(vec3<i32>(998i, 1i << (u_input.c.x % 32u), func_1(100099u).b), ~vec3<i32>(arg_1.x, 0i, -21883i))), !select(!select(vec4<bool>(true, arg_3.x, false, false), vec4<bool>(false, true, arg_3.x, arg_3.x), false), !(!vec4<bool>(arg_3.x, arg_3.x, true, false)), func_1(~u_input.c.x).a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(select(false, (u_input.c.x != 0u) | (1i == (1i & u_input.a.x)), !all(vec3<bool>(true, false, false))), !select(!all(vec4<bool>(true, false, false, true)), all(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true))), true), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(140f + -307f))), -2399i), !vec4<bool>(select(false, true, false) && true, true, true, true));
    global0 = array<vec4<u32>, 28>();
    global0 = array<vec4<u32>, 28>();
    global0 = array<vec4<u32>, 28>();
    let var_1 = func_5(-628f, vec3<i32>(_wgslsmith_dot_vec3_i32(u_input.a ^ firstLeadingBit(vec3<i32>(u_input.a.x, u_input.a.x, var_0.c.b)), -vec3<i32>(u_input.a.x, u_input.b, 72240i)), _wgslsmith_add_i32(-(~var_0.c.b), func_4(func_1(0u), Struct_5(vec4<i32>(var_0.c.b, u_input.a.x, u_input.b, -1i), 1u))), _wgslsmith_sub_i32(~1i, ~12181i)), u_input.a.xx, !vec3<bool>(var_0.b, var_0.d.x, var_0.b));
    global0 = array<vec4<u32>, 28>();
    global0 = array<vec4<u32>, 28>();
    global0 = array<vec4<u32>, 28>();
    global0 = array<vec4<u32>, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.a)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-216f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(var_1.c.a)), _wgslsmith_div_f32(-1218f, -571f)))), vec2<i32>(-_wgslsmith_div_i32(_wgslsmith_div_i32(0i, var_1.c.b), -50288i), -27856i), _wgslsmith_sub_u32(u_input.c.x, 1u >> (func_1(4294967295u).c.a % 32u)) | 0u, func_3(vec3<u32>(u_input.c.x, ~1u, ~u_input.c.x) ^ ~max(vec3<u32>(22492u, u_input.c.x, u_input.c.x), vec3<u32>(4104u, u_input.c.x, 4294967295u)), u_input.c, true, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.a))))));
}

