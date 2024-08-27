struct Struct_1 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: f32,
    c: vec2<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1000f;

var<private> global1: vec3<bool>;

var<private> global2: i32 = -1i;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: bool, arg_1: bool) -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -668f, 2869f)))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1283f, 511f, -2425f))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1642f, 3219f, 1453f), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-968f, 1074f, 566f))))) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-755f, -1336f, -1009f)))))));
    global2 = -86163i;
    let var_1 = _wgslsmith_f_op_f32(select(283f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(var_0.x)), _wgslsmith_f_op_f32(trunc(1034f)), false)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + var_0.x))), !(!(select(true, arg_1, arg_1) && global1.x))));
    let var_2 = false;
    let var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1718f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1 + var_1))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 * _wgslsmith_f_op_f32(sign(-703f)))))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_0.xy, var_0.yx) * vec2<f32>(-1062f, 384f))))), Struct_1(_wgslsmith_clamp_vec3_u32(firstTrailingBit(vec3<u32>(1u, 30832u, 0u)), vec3<u32>(1u, 1u, 1u), ~vec3<u32>(15912u, 2411u, 20928u)), global1.zy, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-114f, var_0.x, true))))));
    return -(~(~(-u_input.a.x)) >> (_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(var_3.d.a.x, var_3.d.a.x, var_3.d.a.x) | vec3<u32>(8641u, var_3.d.a.x, var_3.d.a.x)), var_3.d.a) % 32u));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32, arg_3: f32) -> i32 {
    let var_0 = ~_wgslsmith_mult_i32(u_input.a.x, u_input.b.x);
    var var_1 = Struct_3(-(~_wgslsmith_mult_vec3_i32(u_input.a, -vec3<i32>(16083i, var_0, var_0))), firstTrailingBit(-_wgslsmith_mod_vec4_i32(vec4<i32>(var_0, var_0, 2147483647i, 2147483647i) | vec4<i32>(var_0, 47397i, -33796i, -2147483647i), -vec4<i32>(-3417i, 0i, u_input.b.x, u_input.a.x))), Struct_1(vec3<u32>(arg_0.a.x, 0u, _wgslsmith_add_u32(arg_1.a.x, arg_0.a.x)) >> (~vec3<u32>(4294967295u, arg_0.a.x, 4294967295u) % vec3<u32>(32u)), global1.zy, arg_3));
    var_1 = Struct_3(select(vec3<i32>(firstLeadingBit(i32(-1i) * -39131i), func_3(arg_0.b.x & true, any(vec3<bool>(false, global1.x, global1.x))), 19648i), u_input.a << (var_1.c.a % vec3<u32>(32u)), false), vec4<i32>((49503i ^ var_0) << (4294967295u % 32u), _wgslsmith_add_i32(-21230i, u_input.a.x) | 1i, 1i, _wgslsmith_add_i32(-2147483647i >> (arg_0.a.x % 32u), 1i)) ^ countOneBits(var_1.b), Struct_1(~vec3<u32>(~arg_0.a.x, ~17801u, ~arg_1.a.x), vec2<bool>(!all(vec4<bool>(false, var_1.c.b.x, global1.x, arg_0.b.x)), !(!arg_0.b.x)), _wgslsmith_f_op_f32(var_1.c.c - -1077f)));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(258f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.c.c + arg_0.c), arg_3)))));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c) + 1153f) * 684f);
    return -21153i;
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: f32) -> u32 {
    global0 = _wgslsmith_f_op_f32(sign(arg_1));
    var var_0 = !global1.x;
    global1 = !vec3<bool>(true, arg_0, global1.x);
    let var_1 = Struct_3(firstTrailingBit(-select(vec3<i32>(u_input.a.x, 47163i, -4015i), max(u_input.a, vec3<i32>(38491i, -26346i, 0i)), !vec3<bool>(arg_0, true, true))), _wgslsmith_mod_vec4_i32(firstLeadingBit(reverseBits(vec4<i32>(-21515i, u_input.b.x, u_input.b.x, u_input.b.x))), max(reverseBits(vec4<i32>(10861i, u_input.a.x, u_input.a.x, 4012i)) << (~vec4<u32>(59330u, 4294967295u, 0u, 25621u) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, -1943i, 1i, u_input.b.x), vec4<i32>(16388i, 2147483647i, 15965i, 33655i)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, u_input.a.x, 1i), vec4<i32>(2147483647i, u_input.b.x, 1i, u_input.a.x))))), Struct_1(vec3<u32>(36760u, 0u, firstLeadingBit(countOneBits(11359u))), global1.yx, arg_2));
    let var_2 = _wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(firstTrailingBit(-var_1.b | vec4<i32>(3165i, var_1.b.x, -22749i, -1178i)), vec4<i32>(func_2(Struct_1(var_1.c.a, vec2<bool>(false, arg_0), 883f), Struct_1(vec3<u32>(4294967295u, var_1.c.a.x, 48914u), var_1.c.b, var_1.c.c), 297f, var_1.c.c), 1i, -2147483647i, ~33940i) & var_1.b), _wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(-vec4<i32>(2147483647i, var_1.a.x, -17300i, var_1.b.x) ^ vec4<i32>(-29050i, 2147483647i, 2147483647i, 5705i), vec4<i32>(var_1.b.x, 34431i, 53670i, 30603i) << ((vec4<u32>(var_1.c.a.x, 0u, var_1.c.a.x, var_1.c.a.x) | vec4<u32>(var_1.c.a.x, var_1.c.a.x, var_1.c.a.x, 38415u)) % vec4<u32>(32u))), vec4<i32>(select(u_input.a.x, var_1.a.x >> (4294967295u % 32u), u_input.a.x >= u_input.b.x), var_1.a.x ^ ~122i, _wgslsmith_mult_i32(_wgslsmith_mult_i32(u_input.b.x, u_input.b.x), 1i), -firstTrailingBit(u_input.a.x))));
    return (90639u & ~_wgslsmith_clamp_u32(3430u, var_1.c.a.x, firstTrailingBit(var_1.c.a.x))) >> (var_1.c.a.x % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.x | _wgslsmith_dot_vec3_i32(vec3<i32>(-u_input.a.x, ~_wgslsmith_sub_i32(u_input.b.x, u_input.b.x), 31914i), u_input.a);
    global2 = -20060i >> (_wgslsmith_mult_u32(~(~_wgslsmith_mod_u32(5249u, 1u)), ~11069u) % 32u);
    let var_1 = vec2<bool>(global1.x, global1.x);
    global2 = -countOneBits(countOneBits(max(var_0, u_input.a.x) << (~2151u % 32u)));
    let var_2 = false;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(func_1(!any(vec2<bool>(var_1.x, var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(281f, 1521f, var_1.x)) * _wgslsmith_f_op_f32(-476f * -443f)), 1967f), abs(1u), _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(23506u, 0u, 0u, 0u), ~vec4<u32>(0u, 4737u, 4294967295u, 1u)), abs(1u)), ~_wgslsmith_sub_u32(min(13758u, 0u), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(38169u, 30383u)))));
}

