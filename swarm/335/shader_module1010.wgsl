struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec4<u32>,
    d: f32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
}

struct Struct_5 {
    a: vec2<f32>,
    b: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(vec2<f32>(-818f, 511f), i32(-2147483648));

var<private> global1: f32 = 378f;

var<private> global2: f32;

var<private> global3: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(true, true)));

var<private> global4: array<vec3<f32>, 23>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> vec3<u32> {
    let var_0 = vec2<bool>(true, true);
    var var_1 = Struct_4(var_0.x, Struct_1(var_0));
    global1 = _wgslsmith_f_op_f32(-global0.a.x);
    let var_2 = _wgslsmith_add_u32(u_input.a.x, reverseBits(_wgslsmith_div_u32(1176u, reverseBits(u_input.a.x ^ u_input.a.x))));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global0.a.x, 1019f), global0.a.x, var_0.x)), global0.a.x, _wgslsmith_f_op_f32(global0.a.x - _wgslsmith_f_op_f32(sign(global0.a.x)))))));
    return ~min(vec3<u32>(1u, 12484u, var_2) << (~vec3<u32>(u_input.a.x, u_input.a.x, var_2) % vec3<u32>(32u)), vec3<u32>(_wgslsmith_add_u32(7926u, 0u), 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 47827u, 0u, 1u), vec4<u32>(u_input.a.x, var_2, var_2, u_input.a.x)))) << (_wgslsmith_add_vec3_u32(~select(vec3<u32>(u_input.a.x, 0u, u_input.a.x), max(vec3<u32>(4294967295u, 8319u, u_input.a.x), vec3<u32>(var_2, var_2, 1u)), true), _wgslsmith_clamp_vec3_u32(firstTrailingBit(vec3<u32>(30496u, 42469u, 15909u) & vec3<u32>(0u, 51766u, u_input.a.x)), vec3<u32>(0u, var_2, u_input.a.x), vec3<u32>(~var_2, _wgslsmith_clamp_u32(4294967295u, 93069u, u_input.a.x), reverseBits(3880u)))) % vec3<u32>(32u));
}

fn func_2(arg_0: bool, arg_1: vec2<f32>, arg_2: f32) -> vec4<bool> {
    var var_0 = vec4<i32>(_wgslsmith_sub_i32(firstTrailingBit(-global0.b), ~_wgslsmith_dot_vec4_i32(vec4<i32>(-36082i, global0.b, -30135i, global0.b), vec4<i32>(-24263i, 3961i, 2973i, -1i))), global0.b ^ ((i32(-1i) * -13772i) | global0.b), 0i, -1i) ^ (vec4<i32>(-1i) * -(~_wgslsmith_mult_vec4_i32(vec4<i32>(global0.b, global0.b, global0.b, global0.b), vec4<i32>(39915i, global0.b, -33493i, -2147483647i))));
    let var_1 = select(global0.b, var_0.x, arg_0);
    let var_2 = func_3();
    var var_3 = Struct_4(arg_0, Struct_1(!vec2<bool>(true, all(vec4<bool>(arg_0, false, true, arg_0)))));
    global3 = array<Struct_1, 2>();
    return !(!(!(!vec4<bool>(true, var_3.a, var_3.a, true))));
}

fn func_4(arg_0: Struct_5, arg_1: vec4<f32>, arg_2: vec3<f32>, arg_3: vec4<bool>) -> vec3<bool> {
    var var_0 = ~vec2<i32>(~arg_0.b, -_wgslsmith_mod_i32(global0.b, global0.b)) ^ -countOneBits(~(vec2<i32>(arg_0.b, arg_0.b) << (u_input.a % vec2<u32>(32u))));
    let var_1 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-533f + 976f)), -1036f))));
    let var_2 = -7348i;
    global0 = Struct_5(arg_2.zx, -2147483647i);
    let var_3 = global3[_wgslsmith_index_u32(select(7040u, 4294967295u, arg_2.x == _wgslsmith_f_op_f32(arg_2.x + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.a.x + -1473f))))), 2u)];
    return !arg_3.zxw;
}

fn func_1(arg_0: u32) -> Struct_3 {
    var var_0 = select(vec3<bool>(true, true, true), func_4(Struct_5(global0.a, -(8718i & global0.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, 787f, -545f, 1000f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.x, -131f, -205f, global0.a.x) - vec4<f32>(global0.a.x, 1000f, global0.a.x, 1332f)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.a.x, global0.a.x) * -198f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1122f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global0.a.x)), _wgslsmith_f_op_f32(-global0.a.x))), func_2(true, global0.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1114f)), _wgslsmith_f_op_f32(global0.a.x * -694f)))), false);
    var var_1 = ~arg_0;
    var var_2 = ~vec4<u32>(4312u & _wgslsmith_mod_u32(~3839u, u_input.a.x), 1u >> (u_input.a.x % 32u), func_3().x & 12662u, arg_0);
    let var_3 = ~(~(~(~1u)));
    let var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.a.x)))), global0.a.x, var_3 > 1u)), _wgslsmith_f_op_f32(2299f - 1644f));
    return Struct_3(!select(!select(vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, true)), vec3<bool>(var_0.x | var_0.x, false, var_0.x), true), Struct_1(vec2<bool>(false, false)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    var var_1 = func_1(abs(0u) | max(var_0.x, select(~u_input.a.x, _wgslsmith_div_u32(0u, u_input.a.x), true)));
    var_0 = max(u_input.a, countOneBits(_wgslsmith_add_vec2_u32(~vec2<u32>(1u, var_0.x), ~_wgslsmith_sub_vec2_u32(vec2<u32>(42402u, var_0.x), u_input.a))));
    var var_2 = vec4<bool>(any(func_2((var_0.x < u_input.a.x) | var_1.b.a.x, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2917f), 183f), _wgslsmith_f_op_f32(-719f - 1000f)).yw), var_1.b.a.x, var_1.b.a.x, true);
    var var_3 = Struct_5(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(137f))))), -200f), global0.b);
    let var_4 = _wgslsmith_sub_i32(global0.b, -4225i);
    var var_5 = 1u;
    global2 = 800f;
    let var_6 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(global0.a)));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a, -3236f);
}

