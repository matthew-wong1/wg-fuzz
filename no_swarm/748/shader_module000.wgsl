struct Struct_1 {
    a: vec3<bool>,
    b: vec3<bool>,
    c: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: i32,
    c: vec3<bool>,
    d: f32,
    e: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_1) -> i32 {
    var var_0 = arg_2;
    var_0 = arg_2;
    var var_1 = u_input.b.x;
    var_1 = -23524i;
    let var_2 = arg_3.a.xx;
    return -countOneBits(~(-15082i) ^ u_input.b.x);
}

fn func_2(arg_0: f32) -> Struct_2 {
    let var_0 = Struct_2((_wgslsmith_add_vec3_u32(vec3<u32>(1u, 1456u, 12897u), firstTrailingBit(u_input.a.wyz)) & vec3<u32>(81016u, ~u_input.a.x, u_input.a.x)) << (_wgslsmith_mult_vec3_u32(u_input.a.zwy, _wgslsmith_sub_vec3_u32(reverseBits(vec3<u32>(26837u, u_input.a.x, 4294967295u)), ~vec3<u32>(1u, 5786u, 66172u))) % vec3<u32>(32u)), _wgslsmith_dot_vec3_i32(select(u_input.b << (vec3<u32>(u_input.a.x, 34741u, 0u) % vec3<u32>(32u)), vec3<i32>(u_input.b.x, -380i, u_input.b.x), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), true))), _wgslsmith_add_vec3_i32(~u_input.b, vec3<i32>(~u_input.c, func_3(vec3<u32>(54410u, 68856u, 51398u), Struct_1(vec3<bool>(true, false, false), vec3<bool>(true, true, false), u_input.a.x), Struct_2(u_input.a.www, 14134i, vec3<bool>(false, true, false), -1546f, 487f), Struct_1(vec3<bool>(true, true, false), vec3<bool>(false, false, false), 55346u)), -1i))), vec3<bool>(!(true | all(vec2<bool>(false, false))), select(951f >= arg_0, false, any(vec4<bool>(true, false, true, true))) && true, any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), true), false))), _wgslsmith_f_op_f32(1109f - 453f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(arg_0)))) * arg_0));
    var var_1 = _wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0)))));
    var var_2 = var_0;
    var var_3 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-579f, var_0.d, 1682f)));
    var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(481f, _wgslsmith_f_op_f32(exp2(arg_0)), 353f) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_0, -378f, var_3.x))))))));
    return Struct_2(~(~_wgslsmith_div_vec3_u32(firstLeadingBit(u_input.a.xzy), ~vec3<u32>(var_0.a.x, 1u, var_2.a.x))), -abs(abs(17188i)), var_2.c, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.d - -1358f), var_0.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.d * _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_3.x)), -360f))));
}

fn func_1(arg_0: bool, arg_1: u32) -> Struct_2 {
    let var_0 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-372f, -1080f, ~u_input.c >= _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, -44466i), u_input.b.zz)))));
    var var_1 = Struct_1(var_0.c, !select(!vec3<bool>(true, var_0.c.x, var_0.c.x), vec3<bool>(select(arg_0, var_0.c.x, arg_0), true, all(var_0.c)), false), ~u_input.a.x);
    var_1 = Struct_1(!vec3<bool>(var_1.b.x, true, false), var_0.c, var_1.c);
    var var_2 = ~var_0.a.x;
    var var_3 = var_0;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(true, 1u);
    var var_1 = Struct_1(func_2(var_0.e).c, vec3<bool>(true, true, true), select(~(~var_0.a.x), var_0.a.x, !var_0.c.x));
    var var_2 = vec3<u32>(var_1.c, ~_wgslsmith_mult_u32(_wgslsmith_div_u32(var_1.c, min(var_0.a.x, u_input.a.x)), var_1.c), _wgslsmith_sub_u32(var_0.a.x, 58347u));
    let var_3 = Struct_1(var_0.c, select(var_1.a, !func_2(_wgslsmith_f_op_f32(var_0.d - -759f)).c, func_1(true, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 0u, 1u), vec4<u32>(31748u, 4294967295u, 4294967295u, 4294967295u))).c), firstLeadingBit(var_2.x));
    var_1 = var_3;
    var var_4 = _wgslsmith_clamp_vec4_i32(~vec4<i32>(min(var_0.b, var_0.b ^ 37381i), abs(~var_0.b), reverseBits(var_0.b) >> (abs(46892u) % 32u), _wgslsmith_mult_i32(-2147483647i, u_input.b.x | var_0.b)), countOneBits(_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.b, -2147483647i, 2147483647i, u_input.b.x), abs(vec4<i32>(u_input.b.x, 75306i, 41970i, 1i)))) | (reverseBits(~vec4<i32>(var_0.b, -2147483647i, u_input.b.x, var_0.b)) ^ (vec4<i32>(-1i) * -vec4<i32>(-20053i, var_0.b, var_0.b, 27300i))), abs(~_wgslsmith_mult_vec4_i32(-vec4<i32>(var_0.b, 2147483647i, var_0.b, 4488i), _wgslsmith_add_vec4_i32(vec4<i32>(var_0.b, u_input.b.x, var_0.b, u_input.c), vec4<i32>(-27688i, -24396i, -42509i, var_0.b)))));
    var_1 = var_3;
    var_1 = Struct_1(vec3<bool>(true, _wgslsmith_f_op_f32(round(900f)) == -1351f, !var_0.c.x), vec3<bool>(false, any(select(vec3<bool>(false, false, var_1.a.x), vec3<bool>(false, true, var_3.b.x), func_1(var_0.c.x, u_input.a.x).c)), true), ~select(~28127u, 1u, true));
    var_2 = vec3<u32>(countOneBits(54936u) >> (var_1.c % 32u), ~4294967295u, ~_wgslsmith_add_u32(var_1.c, var_3.c));
    let x = u_input.a;
    s_output = StorageBuffer(-(~var_4.wyz), vec2<i32>(-_wgslsmith_div_i32(-1i, _wgslsmith_mod_i32(var_0.b, var_4.x)), func_1((0i & u_input.c) > -var_4.x, u_input.a.x).b));
}

