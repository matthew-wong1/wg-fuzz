struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: i32,
    d: vec4<u32>,
    e: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
}

struct Struct_4 {
    a: i32,
    b: f32,
    c: Struct_1,
    d: vec4<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(0u, vec4<f32>(1232f, 1466f, 600f, -311f), 16133i, 0u), Struct_1(87423u, vec4<f32>(587f, 1714f, 1238f, 133f), -25465i, 11816u), Struct_1(0u, vec4<f32>(-1000f, 1554f, 1190f, -1490f), 5500i, 41538u), Struct_1(35654u, vec4<f32>(-869f, 538f, -2374f, 2743f), -1i, 0u), Struct_1(18298u, vec4<f32>(-601f, 781f, 720f, 1000f), -47215i, 43340u), Struct_1(4294967295u, vec4<f32>(258f, 1249f, 335f, 586f), -9528i, 108435u), Struct_1(4294967295u, vec4<f32>(-638f, 2043f, 1100f, -613f), 58868i, 30727u), Struct_1(40678u, vec4<f32>(1521f, 1822f, 1952f, 1265f), 40927i, 4176u), Struct_1(7470u, vec4<f32>(1000f, 215f, -1317f, -1000f), 1i, 4294967295u), Struct_1(25740u, vec4<f32>(-112f, 169f, -1913f, -583f), i32(-2147483648), 25130u), Struct_1(12077u, vec4<f32>(-130f, 484f, -339f, -188f), 34280i, 8041u), Struct_1(24727u, vec4<f32>(659f, -676f, -731f, -304f), i32(-2147483648), 0u), Struct_1(4294967295u, vec4<f32>(-841f, 1632f, -1012f, 727f), -1i, 1u), Struct_1(47916u, vec4<f32>(2179f, 1603f, 1679f, 1375f), -1i, 4294967295u), Struct_1(37805u, vec4<f32>(733f, 361f, 521f, -488f), 0i, 1u), Struct_1(38982u, vec4<f32>(-276f, 954f, -1810f, -697f), 2147483647i, 8944u), Struct_1(29507u, vec4<f32>(916f, 382f, -685f, -109f), -3129i, 4294967295u), Struct_1(4294967295u, vec4<f32>(666f, 2083f, -1239f, 124f), -4654i, 55385u), Struct_1(13636u, vec4<f32>(1652f, -253f, -1171f, -550f), i32(-2147483648), 64279u), Struct_1(46966u, vec4<f32>(-1196f, 130f, -694f, -1450f), -57794i, 0u), Struct_1(0u, vec4<f32>(750f, 1041f, -675f, -422f), -1i, 27982u), Struct_1(27835u, vec4<f32>(-1490f, 462f, 157f, -130f), 822i, 3012u), Struct_1(40274u, vec4<f32>(-794f, -248f, -511f, 565f), -1i, 25184u), Struct_1(8034u, vec4<f32>(172f, -782f, 606f, 1000f), -58564i, 27796u), Struct_1(41020u, vec4<f32>(1000f, 819f, -909f, -2021f), i32(-2147483648), 15889u));

var<private> global1: u32 = 1u;

var<private> global2: array<vec2<bool>, 23>;

var<private> global3: array<u32, 20> = array<u32, 20>(4294967295u, 5397u, 4294967295u, 31771u, 4294967295u, 0u, 4294967295u, 28662u, 33971u, 46321u, 4294967295u, 32035u, 0u, 1u, 0u, 1u, 1u, 4294967295u, 4294967295u, 4294967295u);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32, arg_1: vec4<f32>, arg_2: f32, arg_3: f32) -> f32 {
    global3 = array<u32, 20>();
    let var_0 = _wgslsmith_add_i32(-_wgslsmith_mod_i32(-_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -27607i), vec2<i32>(u_input.b, 18605i)), -1i), arg_0);
    global1 = _wgslsmith_mult_u32(select(select(0u ^ _wgslsmith_add_u32(u_input.a, u_input.a), countOneBits(u_input.a), any(vec2<bool>(true, false))), ~11979u, true), ~39551u);
    global1 = global3[_wgslsmith_index_u32(7274u, 20u)];
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1047f - _wgslsmith_f_op_f32(exp2(arg_3))))) - 583f);
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-377f, _wgslsmith_f_op_f32(var_1 * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1)))))));
}

fn func_2() -> Struct_3 {
    global2 = array<vec2<bool>, 23>();
    let var_0 = ~_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(-11911i, 59999i), vec2<i32>(15961i, 1i))), select(vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.b, u_input.b) ^ vec2<i32>(u_input.b, u_input.b), false) >> (reverseBits(reverseBits(vec2<u32>(u_input.a, 93457u))) % vec2<u32>(32u)));
    let var_1 = global0[_wgslsmith_index_u32(u_input.a | ~global3[_wgslsmith_index_u32(103021u, 20u)], 25u)];
    let var_2 = Struct_3(Struct_2(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(var_0, vec4<f32>(-1527f, var_1.b.x, var_1.b.x, -1268f), var_1.b.x, -876f)))), var_1.b.x, 1299f), vec4<u32>(~_wgslsmith_sub_u32(119359u, 0u), _wgslsmith_mult_u32(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(7542u, 60321u), 20u)], 4294967295u), abs(global3[_wgslsmith_index_u32(var_1.d, 20u)]) & ~var_1.d, ~select(var_1.d, var_1.d, true)), -_wgslsmith_add_i32(-41018i, var_1.c), _wgslsmith_div_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(22601u, global3[_wgslsmith_index_u32(u_input.a, 20u)]), 20u)], 20u)], _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, global3[_wgslsmith_index_u32(0u, 20u)]), vec2<u32>(0u, global3[_wgslsmith_index_u32(u_input.a, 20u)])), 1u, 1u), min(vec4<u32>(var_1.a, u_input.a, u_input.a, u_input.a), ~vec4<u32>(12557u, 24682u, 0u, global3[_wgslsmith_index_u32(1u, 20u)]))), -(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, u_input.b, var_1.c, var_1.c), vec4<i32>(var_1.c, 2147483647i, 21084i, -40423i)) | vec4<i32>(u_input.b, var_1.c, -13799i, var_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-529f * 661f) + -1000f) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(-9218i, var_1.b, var_1.b.x, -329f)), _wgslsmith_f_op_f32(abs(var_1.b.x)))))));
    let var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_2.a.a.x)), _wgslsmith_f_op_f32(-699f + _wgslsmith_f_op_f32(f32(-1f) * -923f)))));
    return Struct_3(var_2.a, var_1.b.x);
}

fn func_1(arg_0: f32) -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(211f, arg_0) * vec2<f32>(arg_0, arg_0)))))));
    global0 = array<Struct_1, 25>();
    var var_1 = func_2();
    global0 = array<Struct_1, 25>();
    let var_2 = var_1.a;
    return 10536i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-2344f * -303f), -779f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-229f * 805f), _wgslsmith_f_op_f32(-819f + 1031f)) * _wgslsmith_f_op_f32(select(-300f, -794f, true)))));
    global0 = array<Struct_1, 25>();
    var var_1 = var_0;
    var var_2 = reverseBits(global3[_wgslsmith_index_u32(0u, 20u)]);
    global3 = array<u32, 20>();
    var var_3 = select(~(~_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, u_input.b, 11081i), vec3<i32>(-9330i, 2989i, u_input.b))), vec3<i32>(u_input.b, -abs(func_1(-203f)), -(~_wgslsmith_mod_i32(u_input.b, u_input.b))), false);
    let var_4 = vec3<bool>(true, !(!any(vec3<bool>(true, true, true))), true);
    var var_5 = !vec2<bool>(true, (_wgslsmith_f_op_f32(abs(var_0)) <= -368f) | var_4.x);
    let x = u_input.a;
    s_output = StorageBuffer(-(-9430i ^ (~u_input.b << (firstTrailingBit(u_input.a) % 32u))));
}

