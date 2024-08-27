struct Struct_1 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
    d: vec3<f32>,
    e: f32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
    c: Struct_2,
    d: vec2<bool>,
    e: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<u32>,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec4<i32>,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 24>;

var<private> global1: u32 = 23469u;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: vec2<u32>, arg_1: u32, arg_2: Struct_5) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_2.c, _wgslsmith_f_op_f32(arg_2.c - 728f))) + arg_2.c), 1459f)));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(637f, -1055f, 207f))))))));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_4) -> Struct_1 {
    var var_0 = Struct_2(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_1.a.a.x, arg_0.x, false)) * arg_1.a.c), -613f), 183f), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1.a.a + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-373f, arg_0.x, arg_1.a.a.x)))) - arg_0), vec2<f32>(890f, arg_1.a.b.x), -637f, ~abs(0u)), Struct_1(arg_0, vec2<f32>(_wgslsmith_f_op_f32(-arg_0.x), -649f), 619f, 1u), arg_1.a.a, arg_0.x);
    var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-var_0.b.a.zx), arg_1.a, var_0.c, arg_1.a.a, _wgslsmith_f_op_f32(-var_0.b.b.x));
    global1 = global0[_wgslsmith_index_u32(u_input.a.x, 24u)];
    let var_1 = -(~abs(~vec2<i32>(u_input.b, u_input.b) << (firstLeadingBit(vec2<u32>(arg_1.b.x, var_0.c.d)) % vec2<u32>(32u))));
    let var_2 = ~min(abs(select(u_input.d.xyx, _wgslsmith_sub_vec3_u32(u_input.d.zwx, u_input.d.wzx), true)), _wgslsmith_mult_vec3_u32(vec3<u32>(var_0.b.d, 1u, var_0.b.d) ^ ~vec3<u32>(92695u, u_input.d.x, 1u), u_input.d.yyx));
    return var_0.b;
}

fn func_1(arg_0: vec3<f32>) -> Struct_1 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 556f)), func_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(u_input.d.zw, global0[_wgslsmith_index_u32(1u, 24u)], Struct_5(u_input.a, vec4<i32>(22799i, -39548i, 38417i, -22677i), arg_0.x, true)))) + arg_0), Struct_4(Struct_1(_wgslsmith_f_op_vec3_f32(min(arg_0, arg_0)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_0.x, arg_0.x))), _wgslsmith_f_op_f32(arg_0.x + 856f), u_input.a.x), vec2<u32>(global0[_wgslsmith_index_u32(u_input.d.x, 24u)] << (global0[_wgslsmith_index_u32(u_input.a.x, 24u)] % 32u), 75824u))), Struct_1(vec3<f32>(1000f, _wgslsmith_f_op_vec3_f32(func_2(vec2<u32>(24898u, u_input.a.x) ^ vec2<u32>(30838u, global0[_wgslsmith_index_u32(1u, 24u)]), _wgslsmith_dot_vec3_u32(u_input.d.zzz, u_input.d.xxy), Struct_5(u_input.a, vec4<i32>(u_input.b, u_input.c.x, 2147483647i, u_input.c.x), arg_0.x, true))).x, -1000f), arg_0.yy, -615f, u_input.a.x), _wgslsmith_f_op_vec3_f32(-arg_0), -996f);
    global0 = array<u32, 24>();
    let var_1 = -22251i;
    global0 = array<u32, 24>();
    return func_3(vec3<f32>(var_0.b.a.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(func_3(arg_0, Struct_4(Struct_1(vec3<f32>(arg_0.x, var_0.a.x, arg_0.x), arg_0.yy, -631f, 0u), vec2<u32>(70352u, 14331u))).c, _wgslsmith_f_op_f32(round(var_0.e)))), -1000f), Struct_4(func_3(var_0.d, Struct_4(func_3(arg_0, Struct_4(Struct_1(vec3<f32>(-352f, 1000f, 1770f), arg_0.zx, arg_0.x, 1u), u_input.d.xw)), vec2<u32>(67526u, 19718u))), ~(~vec2<u32>(var_0.b.d, 52802u)) & ~(~vec2<u32>(u_input.a.x, 37553u))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~(~4294967295u);
    var var_0 = Struct_4(func_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(215f, 1600f, -1141f) - vec3<f32>(166f, 437f, -486f)))))), countOneBits(~select(vec2<u32>(u_input.d.x, u_input.d.x), u_input.d.zy, all(vec3<bool>(false, false, true)))));
    var var_1 = Struct_5(var_0.b, _wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c.x, -43628i, 2147483647i, 2147483647i) & vec4<i32>(-7093i, 8577i, u_input.c.x, 2851i), ~vec4<i32>(0i, u_input.c.x, u_input.c.x, 0i)), vec4<i32>(-1i) * -vec4<i32>(-2147483647i, u_input.c.x, 28423i, u_input.c.x)), vec4<i32>(_wgslsmith_mult_i32(u_input.c.x, reverseBits(u_input.b)), u_input.b, select(~u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.c.x, u_input.b), vec3<i32>(u_input.c.x, 27902i, u_input.b)), all(vec3<bool>(false, true, true))), ~u_input.c.x | (u_input.b & 2147483647i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.b.x)), false);
    global1 = firstLeadingBit(1u ^ _wgslsmith_mult_u32(_wgslsmith_mult_u32(10849u, ~u_input.d.x), _wgslsmith_sub_u32(~var_1.a.x, ~u_input.a.x)));
    var var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c, 1271f, var_0.a.a.x, 1000f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, var_0.a.c, var_1.c, -1849f))))), Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_1.c), func_1(vec3<f32>(-243f, 953f, -410f)).a.x) - vec2<f32>(-1291f, -642f)), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, var_0.a.a.x, -1000f) * var_0.a.a) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.b.x, var_1.c, -720f) * vec3<f32>(1119f, 924f, -1225f))), var_0.a.b, _wgslsmith_f_op_f32(var_0.a.b.x + _wgslsmith_div_f32(var_1.c, -1639f)), 76553u), func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.a.a.x, -673f, 809f))))), vec3<f32>(_wgslsmith_f_op_f32(ceil(var_1.c)), var_1.c, -195f), func_1(vec3<f32>(var_1.c, _wgslsmith_div_f32(var_0.a.b.x, 327f), -1000f)).c), Struct_2(vec2<f32>(_wgslsmith_f_op_f32(trunc(func_3(vec3<f32>(var_1.c, var_1.c, 1126f), Struct_4(var_0.a, vec2<u32>(var_1.a.x, 90134u))).a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-912f)) + var_1.c)), func_1(var_0.a.a), Struct_1(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-757f, var_0.a.a.x, var_0.a.a.x), var_0.a.a)))), _wgslsmith_div_vec2_f32(var_0.a.a.xy, var_0.a.a.yx), -476f, 4294967295u), _wgslsmith_div_vec3_f32(var_0.a.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-740f, var_1.c, var_1.c) - vec3<f32>(var_1.c, var_1.c, 756f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.b.x + var_0.a.a.x)))), !(!vec2<bool>(var_1.d, var_1.a.x == 63529u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-174f * var_1.c)));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u);
}

