struct Struct_1 {
    a: vec4<f32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 15>;

var<private> global1: Struct_3;

var<private> global2: Struct_4;

var<private> global3: array<Struct_1, 15>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: bool, arg_3: Struct_2) -> vec3<u32> {
    let var_0 = global1.a;
    var var_1 = global1.a;
    let var_2 = false;
    var var_3 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a.a.x, -916f)), _wgslsmith_f_op_f32(-global2.a.a.a.a.x)), _wgslsmith_f_op_f32(var_0.a.a.x - 522f), 256f);
    var var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(floor(var_1.a.a)), -1i << (arg_0 % 32u));
    return _wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_0, arg_0, 0u), vec3<u32>(arg_0, arg_0, arg_0) | vec3<u32>(48821u, arg_0, 15381u)) << (~vec3<u32>(26832u, 4294967295u, 155970u) % vec3<u32>(32u)), ((vec3<u32>(arg_0, arg_0, 0u) >> (vec3<u32>(9519u, arg_0, arg_0) % vec3<u32>(32u))) << (_wgslsmith_sub_vec3_u32(vec3<u32>(arg_0, 1u, 25298u), vec3<u32>(26139u, arg_0, arg_0)) % vec3<u32>(32u))) << (vec3<u32>(arg_0, _wgslsmith_clamp_u32(46253u, arg_0, arg_0), arg_0) % vec3<u32>(32u))) >> (~select(~(vec3<u32>(arg_0, arg_0, arg_0) | vec3<u32>(arg_0, 95099u, 0u)), _wgslsmith_add_vec3_u32(vec3<u32>(0u, 24653u, 0u), select(vec3<u32>(1u, arg_0, arg_0), vec3<u32>(1u, 7171u, 21281u), arg_3.c.x)), vec3<bool>(true, true, true)) % vec3<u32>(32u));
}

fn func_2() -> Struct_4 {
    global3 = array<Struct_1, 15>();
    global0 = array<vec3<bool>, 15>();
    let var_0 = _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), ~select(func_3(0u, global1.a.c.x, true, Struct_2(Struct_1(global2.b.a, -21196i), global1.a.b, vec4<bool>(global2.a.a.c.x, true, global1.a.c.x, global2.a.a.c.x))), vec3<u32>(4294967295u, 26693u, 11178u), select(global0[_wgslsmith_index_u32(4294967295u, 15u)], vec3<bool>(false, true, true), global2.a.a.c.x))) & ((_wgslsmith_clamp_u32(0u, ~55382u, ~1330u) ^ ~firstLeadingBit(0u)) ^ 81u);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(143f + _wgslsmith_f_op_f32(586f + _wgslsmith_f_op_f32(ceil(2104f)))))), _wgslsmith_f_op_f32(min(953f, global2.b.a.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-488f, global2.a.a.a.a.x)))), -1271f);
    let var_2 = u_input.b;
    return Struct_4(Struct_3(global1.a), global3[_wgslsmith_index_u32(reverseBits(abs(~(~var_0))), 15u)]);
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_2) -> vec4<i32> {
    global2 = func_2();
    var var_0 = -_wgslsmith_mod_i32(-(~global2.a.a.a.b), min(2400i, 1i) ^ select(global2.a.a.b << (5871u % 32u), -1i, true));
    let var_1 = select(~(-vec2<i32>(1i, -3651i)) >> (vec2<u32>(~select(12788u, 1u, false), _wgslsmith_sub_u32(4294967295u, ~0u)) % vec2<u32>(32u)), ~(vec2<i32>(-1i) * -_wgslsmith_div_vec2_i32(u_input.c.wx, arg_0.zz)), global1.a.a.a.x != arg_1.a.a.x);
    let var_2 = func_2().a.a.a.a.x;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(arg_1.a.a.x)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2))));
    return vec4<i32>(reverseBits(_wgslsmith_clamp_i32(-5862i, global2.b.b, ~61059i)) & 0i, arg_0.x, -(~var_1.x), func_2().a.a.b);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(global1.a.a.a.x, ~_wgslsmith_sub_vec4_i32(~u_input.c, func_1(vec3<i32>(u_input.a, global2.a.a.a.b, -9800i), Struct_2(Struct_1(global1.a.a.a, -19836i), u_input.b, global2.a.a.c))) & u_input.c, global1.a.a.a.x, ~(-54648i));
}

