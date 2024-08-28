struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec2<i32>,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: bool,
    d: vec3<i32>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 13>;

var<private> global1: vec3<u32>;

var<private> global2: array<Struct_1, 6>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec4<f32>, arg_1: i32) -> f32 {
    global0 = array<bool, 13>();
    global2 = array<Struct_1, 6>();
    var var_0 = max(vec4<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(0i, u_input.a, u_input.d.x), _wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-32733i, arg_1, u_input.d.x), vec3<i32>(arg_1, u_input.c, arg_1)), max(vec3<i32>(-2147483647i, u_input.a, u_input.d.x), vec3<i32>(u_input.c, 63059i, arg_1)))), u_input.d.x, -35138i ^ countOneBits(~u_input.a), _wgslsmith_add_i32(arg_1, 45287i)), ~vec4<i32>(-18177i, 25785i, _wgslsmith_sub_i32(_wgslsmith_clamp_i32(arg_1, arg_1, -17902i), -arg_1), u_input.a));
    var var_1 = vec3<i32>(-(~(~(-7589i))), countOneBits(min(countOneBits(countOneBits(arg_1)), abs(u_input.a))), abs(~u_input.c & (1i | arg_1)) | ~(-15906i));
    var_1 = var_0.wxx;
    return arg_0.x;
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1) -> u32 {
    var var_0 = Struct_2(!(reverseBits(_wgslsmith_mod_i32(u_input.c, 1i)) != u_input.a), Struct_1(arg_1.a, !arg_1.b, !all(select(vec4<bool>(arg_1.b, true, true, true), vec4<bool>(global0[_wgslsmith_index_u32(32351u, 13u)], true, false, arg_1.b), vec4<bool>(true, true, true, global0[_wgslsmith_index_u32(922u, 13u)]))), -694f), u_input.d);
    global1 = abs(vec3<u32>(firstTrailingBit(max(1u, 50122u) >> (arg_1.a.x % 32u)), u_input.e, arg_1.a.x));
    global1 = min(vec3<u32>(u_input.b, _wgslsmith_dot_vec3_u32(arg_1.a, vec3<u32>(_wgslsmith_div_u32(4294967295u, 7899u), u_input.e, _wgslsmith_dot_vec3_u32(vec3<u32>(36589u, u_input.b, u_input.e), vec3<u32>(u_input.b, var_0.b.a.x, var_0.b.a.x)))), global1.x), ~min(abs(vec3<u32>(arg_1.a.x, u_input.e, 4294967295u)), var_0.b.a));
    return 31616u;
}

fn func_2() -> Struct_2 {
    var var_0 = 1271f;
    let var_1 = u_input.a;
    var var_2 = Struct_2(global0[_wgslsmith_index_u32(u_input.b, 13u)], global2[_wgslsmith_index_u32(func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1550f, -958f) + vec2<f32>(1690f, -634f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(696f, 183f))) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -707f), _wgslsmith_f_op_f32(func_3(vec4<f32>(-418f, 1198f, 285f, 558f), -1i)))), global2[_wgslsmith_index_u32(4294967295u, 6u)]), 6u)], u_input.d);
    var var_3 = var_2.b.a;
    let var_4 = ~_wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -min(vec3<i32>(-44472i, 38690i, 7226i), vec3<i32>(u_input.c, var_2.c.x, var_2.c.x)), firstTrailingBit(vec3<i32>(-6406i, -36016i, -2147483647i)) & vec3<i32>(~0i, -2147483647i, countOneBits(-2147483647i)));
    return Struct_2((true == !any(vec4<bool>(false, var_2.b.b, global0[_wgslsmith_index_u32(56469u, 13u)], false))) | all(!vec3<bool>(var_2.b.c, global0[_wgslsmith_index_u32(var_2.b.a.x, 13u)], true)), Struct_1(~(~var_2.b.a), var_2.b.d > var_2.b.d, !(var_2.a & (u_input.d.x <= u_input.d.x)), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 777f, 1526f, -1000f) * vec4<f32>(-162f, -155f, var_2.b.d, var_2.b.d)))), _wgslsmith_div_i32(-u_input.d.x, 53895i)))), vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(12098i, 1i), var_2.c), 2147483647i), 4209i) | (u_input.d ^ vec2<i32>(_wgslsmith_div_i32(var_2.c.x, var_2.c.x), -var_1)));
}

fn func_1() -> u32 {
    var var_0 = firstLeadingBit(-vec3<i32>(0i, _wgslsmith_mod_i32(1i, _wgslsmith_clamp_i32(u_input.d.x, -1i, -11504i)), u_input.d.x));
    global1 = ~vec3<u32>(1u, ~(1u & ~global1.x), global1.x);
    let var_1 = abs(~vec3<u32>(_wgslsmith_div_u32(49238u, u_input.b), ~0u ^ u_input.b, 7942u));
    var var_2 = func_2();
    let var_3 = _wgslsmith_f_op_f32(-var_2.b.d);
    return global1.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(!(all(vec3<bool>(global0[_wgslsmith_index_u32(global1.x, 13u)], true, false)) | false), global2[_wgslsmith_index_u32(~(~u_input.b), 6u)], select(vec2<i32>(abs(u_input.a), firstTrailingBit(_wgslsmith_mod_i32(-1i, -10101i))), -vec2<i32>(abs(u_input.a), reverseBits(u_input.a)), vec2<bool>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 10967u), global1.zy), 13u)], _wgslsmith_sub_u32(global1.x, global1.x) == 0u)));
    var var_1 = _wgslsmith_mult_u32(_wgslsmith_clamp_u32(~var_0.b.a.x, func_1(), 104417u), 58134u) ^ u_input.b;
    var var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1115f)) - _wgslsmith_f_op_f32(var_0.b.d + -498f)))));
    global2 = array<Struct_1, 6>();
    let var_3 = Struct_2(var_0.a, func_2().b, vec2<i32>(_wgslsmith_clamp_i32(~(var_0.c.x >> (u_input.b % 32u)), var_0.c.x, _wgslsmith_div_i32(~1i, min(0i, u_input.a))), -2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.d - var_0.b.d)), _wgslsmith_f_op_f32(step(var_0.b.d, _wgslsmith_f_op_f32(-265f - 1378f))))), var_0.c, var_0.b.d);
}

