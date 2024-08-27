struct Struct_1 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: u32,
    d: f32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-123f, -1189f);

var<private> global1: bool = false;

var<private> global2: Struct_1;

var<private> global3: Struct_1 = Struct_1(vec3<bool>(true, false, true), vec4<i32>(i32(-2147483648), 53423i, 6749i, 1i), 61157u, -1032f, vec4<f32>(266f, -131f, -179f, -1000f));

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: f32) -> f32 {
    return _wgslsmith_f_op_f32(floor(1031f));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2) -> vec2<f32> {
    var var_0 = Struct_3(arg_0, 1000f, arg_0, arg_1);
    var var_1 = var_0.a;
    global3 = Struct_1(vec3<bool>(any(select(vec4<bool>(var_1.a.x, false, false, true), select(vec4<bool>(global3.a.x, var_1.a.x, true, false), vec4<bool>(false, false, false, global3.a.x), vec4<bool>(false, false, var_0.a.a.x, arg_0.a.x)), true)), !(var_1.e.x <= _wgslsmith_f_op_f32(func_3(vec4<bool>(true, true, false, var_0.c.a.x), Struct_3(Struct_1(var_1.a, var_0.c.b, 51184u, global0.x, vec4<f32>(292f, 1615f, -445f, 1000f)), var_1.d, var_0.a, arg_1), arg_0.d))), true), global2.b | max(_wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(var_0.a.b.x, -1947i, var_0.c.b.x, global2.b.x), vec4<i32>(global3.b.x, u_input.a, global2.b.x, global2.b.x)), ~vec4<i32>(-1i, 5351i, arg_0.b.x, 2147483647i)), ~(vec4<i32>(u_input.a, 1i, global2.b.x, var_1.b.x) & vec4<i32>(2147483647i, var_1.b.x, global3.b.x, 5844i))), 5564u & firstLeadingBit(_wgslsmith_mult_u32(firstTrailingBit(8317u), global2.c)), _wgslsmith_f_op_f32(-143f + _wgslsmith_f_op_f32(func_3(vec4<bool>(global3.a.x, var_1.a.x, true, global0.x > -1340f), Struct_3(Struct_1(vec3<bool>(arg_0.a.x, var_1.a.x, true), vec4<i32>(var_1.b.x, -54514i, arg_0.b.x, u_input.a), 4294967295u, global0.x, vec4<f32>(arg_0.d, 1245f, arg_0.d, 1040f)), var_0.c.d, Struct_1(vec3<bool>(var_1.a.x, true, var_1.a.x), var_1.b, 81189u, -167f, var_0.c.e), Struct_2(4294967295u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(764f)) * _wgslsmith_f_op_f32(global2.d + -1080f))))), vec4<f32>(global0.x, -1096f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global3.e.x, _wgslsmith_f_op_f32(ceil(var_1.e.x))) + _wgslsmith_f_op_f32(f32(-1f) * -771f)), 523f));
    global3 = Struct_1(global2.a, _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(-18115i, 1i), _wgslsmith_mod_i32(arg_0.b.x | global3.b.x, -global3.b.x), -18032i, -1i), ~(~var_1.b) << (firstLeadingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(34664u, 0u, global3.c, 1u), vec4<u32>(42859u, global3.c, global3.c, var_0.c.c))) % vec4<u32>(32u))), 43471u, _wgslsmith_f_op_f32(-global3.e.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.d, global2.d, global2.e.x, var_1.e.x), var_1.e, vec4<bool>(global3.a.x, global3.a.x, false, arg_0.a.x))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(2050f, global3.e.x, -680f, 1622f))))));
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1257f);
    return vec2<f32>(_wgslsmith_div_f32(var_1.e.x, var_1.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-688f, _wgslsmith_f_op_f32(-471f + global0.x))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0.d * var_0.b))) - _wgslsmith_f_op_f32(func_3(select(vec4<bool>(false, var_1.a.x, global2.a.x, global3.a.x), vec4<bool>(var_0.c.a.x, false, global3.a.x, arg_0.a.x), false), Struct_3(Struct_1(vec3<bool>(true, true, true), vec4<i32>(23251i, var_1.b.x, -1i, arg_0.b.x), global2.c, var_2, vec4<f32>(global0.x, var_1.e.x, 1021f, -1438f)), 405f, Struct_1(var_1.a, vec4<i32>(-7947i, 1i, 1i, 31446i), 0u, 1000f, vec4<f32>(global3.d, -911f, var_0.a.e.x, global3.d)), Struct_2(1u)), -142f)))));
}

fn func_1(arg_0: Struct_2) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-902f, global3.d), _wgslsmith_f_op_f32(global3.e.x + global2.d))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.d, -1315f)) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(659f, 297f) * global3.e.zw), _wgslsmith_f_op_vec2_f32(func_2(Struct_1(vec3<bool>(true, false, true), global3.b, 1u, global0.x, global2.e), Struct_2(arg_0.a)))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, 1074f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(257f, 258f) * vec2<f32>(global2.e.x, -288f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(global2.e.wz, vec2<f32>(-613f, global0.x), false)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-288f, -1000f))))));
    global3 = Struct_1(select(vec3<bool>(false, global2.a.x, true & !global2.a.x), !select(select(vec3<bool>(global2.a.x, true, false), vec3<bool>(false, global2.a.x, false), global3.a.x), global3.a, !global2.a.x), !global3.a), abs(global2.b), ~_wgslsmith_dot_vec2_u32(~vec2<u32>(60844u, global3.c) ^ ~vec2<u32>(4294967295u, 17339u), ~vec2<u32>(global3.c, arg_0.a) >> (~vec2<u32>(38888u, 54290u) % vec2<u32>(32u))), 354f, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(-1656f)), var_0.x, global3.e.x, -343f)))));
    var var_1 = ~(vec3<u32>(global2.c, 1u, abs(global3.c)) << ((vec3<u32>(arg_0.a, arg_0.a, 47702u) >> ((~vec3<u32>(arg_0.a, 14227u, 21920u) ^ ~vec3<u32>(73498u, 66099u, global2.c)) % vec3<u32>(32u))) % vec3<u32>(32u)));
    global0 = global3.e.xy;
    let var_2 = arg_0;
    return Struct_2(~(~var_1.x));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: bool) -> Struct_3 {
    var var_0 = Struct_1(select(vec3<bool>(false, ~arg_1.a >= _wgslsmith_mod_u32(arg_0.a, 4294967295u), true), vec3<bool>(false, arg_2, arg_2), select(global3.a, select(select(vec3<bool>(arg_2, arg_2, global3.a.x), global2.a, global3.a), vec3<bool>(false, global2.a.x, true), any(global3.a)), true)), -vec4<i32>(_wgslsmith_clamp_i32(countOneBits(global2.b.x), abs(global2.b.x), _wgslsmith_mod_i32(u_input.a, 26187i)), ~(~u_input.a), ~firstLeadingBit(global2.b.x), global3.b.x), 1u, -201f, global3.e);
    return Struct_3(Struct_1(select(var_0.a, vec3<bool>(true, true, true), all(var_0.a)), reverseBits(_wgslsmith_mult_vec4_i32(~vec4<i32>(-33379i, -2147483647i, -11679i, u_input.a), global3.b)), _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(max(arg_1.a, arg_0.a), ~global2.c, arg_1.a), _wgslsmith_div_u32(firstTrailingBit(4491u), ~arg_1.a), 1u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -121f) + -508f) - _wgslsmith_f_op_f32(global3.d * global3.d)), _wgslsmith_f_op_vec4_f32(global2.e + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.e)))), _wgslsmith_f_op_f32(-670f - _wgslsmith_f_op_f32(352f - 1000f)), Struct_1(!var_0.a, global3.b, _wgslsmith_add_u32(~(~1u), arg_0.a ^ max(19975u, 27109u)), 1338f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.e.x, 545f, global0.x, 661f)) + var_0.e)), func_1(Struct_2(var_0.c)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(Struct_2(60608u)), func_1(Struct_2(69946u & global3.c)), any(!vec2<bool>(true, select(global3.a.x, true, global2.a.x))));
    let var_1 = ~vec3<u32>(func_4(func_1(Struct_2(4294967295u)), var_0.d, global3.a.x || true).a.c, global2.c, global3.c);
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global2.d + global0.x), _wgslsmith_f_op_vec2_f32(func_2(var_0.c, var_0.d)).x)));
    global0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(882f, global2.e.x) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(var_0.c, func_1(Struct_2(global2.c))))));
    let var_2 = var_0;
    global1 = any(global3.a);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(2109f, -834f, global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-619f)) * -1000f)), countOneBits(34498i));
}

