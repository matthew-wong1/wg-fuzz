struct Struct_1 {
    a: f32,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: f32,
    d: vec2<i32>,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: bool,
    b: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: bool = true;

var<private> global2: array<Struct_2, 8> = array<Struct_2, 8>(Struct_2(0u, Struct_1(1008f, false, -183f), 2902f, vec2<i32>(i32(-2147483648), 9134i)), Struct_2(25470u, Struct_1(136f, false, -1826f), 765f, vec2<i32>(17472i, 9200i)), Struct_2(1u, Struct_1(466f, true, 884f), 731f, vec2<i32>(275i, 0i)), Struct_2(12061u, Struct_1(1280f, false, 903f), 181f, vec2<i32>(2147483647i, -1i)), Struct_2(35946u, Struct_1(-1428f, true, -697f), -2092f, vec2<i32>(-91817i, -20088i)), Struct_2(45265u, Struct_1(-589f, true, -1417f), 354f, vec2<i32>(-7822i, -3363i)), Struct_2(23584u, Struct_1(-361f, true, -380f), -154f, vec2<i32>(22861i, -31018i)), Struct_2(62148u, Struct_1(355f, false, 1843f), 2729f, vec2<i32>(-4034i, -1i)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2() -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(342f, -636f, -958f))) * vec3<f32>(1000f, global0.a, global0.a)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(1000f)), global0.a, _wgslsmith_f_op_f32(min(global0.a, 956f))) - vec3<f32>(-767f, _wgslsmith_f_op_f32(global0.c * global0.a), _wgslsmith_div_f32(-1000f, global0.a))))));
    global2 = array<Struct_2, 8>();
    let var_1 = _wgslsmith_f_op_f32(-global0.a);
    var var_2 = Struct_3(vec3<bool>(true, true, true));
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.x + global0.c), var_1)), _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(900f + global0.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1387f * var_1))));
    return max(1299i, i32(-1i) * -7248i);
}

fn func_3(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: Struct_1) -> vec4<u32> {
    let var_0 = u_input.b;
    var var_1 = true;
    let var_2 = _wgslsmith_add_i32(var_0, var_0);
    global2 = array<Struct_2, 8>();
    var var_3 = arg_3;
    return vec4<u32>(select(u_input.c, 42653u | _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 4294967295u, u_input.d.x), ~vec3<u32>(0u, 4294967295u, 0u)), any(!arg_0.a)), _wgslsmith_dot_vec3_u32(~(~vec3<u32>(u_input.c, 20114u, 10917u)), _wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c, u_input.c, u_input.c), ~vec3<u32>(10785u, 0u, 41713u)), _wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.c, 1u, 142326u), vec3<u32>(u_input.a.x, u_input.d.x, u_input.a.x)), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, 1u, u_input.d.x), vec3<u32>(30323u, u_input.a.x, 1u)), ~vec3<u32>(u_input.d.x, 4294967295u, 6940u)))), 44153u, u_input.a.x >> ((countOneBits(reverseBits(u_input.a.x)) | (34462u << ((u_input.a.x << (4294967295u % 32u)) % 32u))) % 32u));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec2<f32>, arg_2: Struct_2, arg_3: Struct_2) -> f32 {
    let var_0 = func_3(Struct_3(vec3<bool>(any(vec2<bool>(true, true)) && (0u >= u_input.c), arg_3.b.b == arg_3.b.b, true)), (abs(-vec3<i32>(arg_2.d.x, 1i, -25264i)) | ~_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.e, arg_2.d.x, arg_2.d.x), vec3<i32>(-1i, -31443i, 0i))) & _wgslsmith_mult_vec3_i32(select(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.e, arg_3.d.x, -1i), vec3<i32>(arg_2.d.x, -44544i, arg_2.d.x), vec3<i32>(arg_0.x, 3521i, -2147483647i)), ~vec3<i32>(1i, 0i, -8875i), !vec3<bool>(true, arg_3.b.b, true)), vec3<i32>(arg_0.x, abs(u_input.b), func_2())), arg_3.b, Struct_1(-526f, false, arg_1.x));
    let var_1 = Struct_2(28238u, Struct_1(-1000f, false, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-990f)), _wgslsmith_f_op_f32(select(arg_1.x, global0.c, global0.b))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1181f - arg_2.b.c)))) - _wgslsmith_f_op_f32(1528f * -1605f)), vec2<i32>(u_input.b, firstTrailingBit(_wgslsmith_mod_i32(-1i | arg_2.d.x, 14160i))));
    var var_2 = Struct_4(arg_3.b.b, -2147483647i);
    global0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-183f + _wgslsmith_f_op_f32(f32(-1f) * -640f)))), true, 603f);
    var var_3 = Struct_4(true, var_2.b);
    return 670f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -652f), _wgslsmith_div_f32(1119f, _wgslsmith_f_op_f32(-global0.a))));
    var var_1 = Struct_1(429f, !global0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec2<i32>(u_input.b, u_input.e), vec2<f32>(global0.a, 215f), global2[_wgslsmith_index_u32(u_input.c, 8u)], Struct_2(4294967295u, Struct_1(1030f, global0.b, -1745f), 2964f, vec2<i32>(2147483647i, -1i))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c))) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(416f)), _wgslsmith_f_op_f32(829f - 899f)))))));
    global1 = all(vec4<bool>(false || !(u_input.a.x < u_input.d.x), true, all(select(!vec4<bool>(var_1.b, true, false, true), vec4<bool>(true, var_1.b, false, false), all(vec3<bool>(true, false, false)))), all(select(select(vec3<bool>(false, false, false), vec3<bool>(global0.b, var_1.b, var_1.b), false), !vec3<bool>(false, var_1.b, true), vec3<bool>(var_1.b, global0.b, global0.b)))));
    var var_2 = Struct_3(!vec3<bool>(var_1.b, (15215u << (u_input.a.x % 32u)) >= abs(4294967295u), false));
    let var_3 = abs(1754i);
    var_2 = Struct_3(select(select(select(select(var_2.a, var_2.a, global0.b), var_2.a, false), var_2.a, var_2.a), select(!var_2.a, var_2.a, var_2.a), select(select(vec3<bool>(var_2.a.x, var_2.a.x, global0.b), select(var_2.a, var_2.a, var_1.b), global0.a >= 230f), !select(vec3<bool>(global0.b, false, false), vec3<bool>(true, var_2.a.x, var_1.b), var_2.a.x), var_2.a)));
    global2 = array<Struct_2, 8>();
    var var_4 = true;
    var_0 = var_1.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(122707u, ~u_input.a.x, 845u >> (_wgslsmith_mult_u32(~u_input.c, u_input.c) % 32u)), vec2<i32>(~(var_3 & 217i), u_input.e << (~1u % 32u)) << (vec2<u32>(91076u, 14018u) % vec2<u32>(32u)));
}

