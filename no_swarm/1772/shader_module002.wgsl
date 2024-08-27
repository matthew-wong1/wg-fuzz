struct Struct_1 {
    a: vec4<i32>,
    b: f32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: f32,
}

struct Struct_5 {
    a: vec2<i32>,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(vec4<i32>(i32(-2147483648), 5478i, 1i, -1i), -399f), Struct_1(vec4<i32>(0i, 1i, -27225i, -39994i), 2283f), Struct_1(vec4<i32>(2147483647i, 8715i, 3077i, i32(-2147483648)), 1689f), Struct_1(vec4<i32>(21881i, 35685i, 27797i, -8971i), -907f), Struct_1(vec4<i32>(-24736i, 0i, 2147483647i, 9154i), 363f), Struct_1(vec4<i32>(28136i, 22881i, 1i, i32(-2147483648)), 272f), Struct_1(vec4<i32>(2147483647i, i32(-2147483648), 46355i, 1i), -832f), Struct_1(vec4<i32>(-34252i, 2147483647i, -1i, i32(-2147483648)), -733f), Struct_1(vec4<i32>(0i, -24474i, i32(-2147483648), i32(-2147483648)), -247f), Struct_1(vec4<i32>(0i, 0i, 1i, i32(-2147483648)), -516f), Struct_1(vec4<i32>(10691i, 1i, -1i, 0i), 1411f), Struct_1(vec4<i32>(-1i, i32(-2147483648), -68672i, 0i), -554f), Struct_1(vec4<i32>(-6984i, 14749i, 403i, 2147483647i), -788f), Struct_1(vec4<i32>(-45914i, -1i, 27274i, i32(-2147483648)), -1756f), Struct_1(vec4<i32>(1i, 93239i, -46580i, 1i), -446f), Struct_1(vec4<i32>(2147483647i, -75254i, -54310i, 1i), 270f), Struct_1(vec4<i32>(2147483647i, -16410i, 1i, 64325i), -680f), Struct_1(vec4<i32>(-20997i, i32(-2147483648), 0i, i32(-2147483648)), -718f), Struct_1(vec4<i32>(2147483647i, 2147483647i, 2147483647i, -5115i), -2026f), Struct_1(vec4<i32>(10858i, -2613i, -1i, 1i), -123f));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: i32, arg_1: vec4<f32>) -> vec2<bool> {
    global1 = array<Struct_1, 20>();
    var var_0 = vec3<f32>(-1000f, _wgslsmith_f_op_f32(trunc(arg_1.x)), 807f);
    var_0 = vec3<f32>(-760f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1499f))))), _wgslsmith_div_f32(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(floor(-168f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(783f, -1332f), _wgslsmith_f_op_f32(abs(266f)))))));
    var var_1 = arg_1.x;
    return !select(select(vec2<bool>(true, any(vec2<bool>(true, false))), select(vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(true, false), false), false), vec2<bool>(false, true)), vec2<bool>(!all(vec4<bool>(true, false, false, false)), !(u_input.d.x == global0.x)), vec2<bool>(all(vec3<bool>(true, true, true)), all(vec4<bool>(true, false, true, false)) && false));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_5, arg_2: Struct_3, arg_3: vec4<u32>) -> u32 {
    global0 = vec4<u32>(firstTrailingBit(global0.x), select(35298u, ~abs(_wgslsmith_dot_vec3_u32(global0.wyz, global0.zyw)), arg_0.x == -332f), ~_wgslsmith_dot_vec3_u32((u_input.e & vec3<u32>(u_input.d.x, u_input.e.x, global0.x)) ^ arg_3.ywx, select(u_input.d, u_input.c, false) & global0.xyw), ~abs(~(global0.x << (8938u % 32u))));
    let var_0 = Struct_5(reverseBits(select(arg_2.a.a.yz, _wgslsmith_mod_vec2_i32(arg_2.a.a.xy, arg_1.a) << (u_input.e.zx % vec2<u32>(32u)), ~(-1i) >= (arg_2.a.a.x << (arg_3.x % 32u)))), _wgslsmith_sub_i32(1i, abs(-27367i) & ((arg_2.a.a.x >> (arg_3.x % 32u)) | u_input.a)));
    global0 = _wgslsmith_sub_vec4_u32(abs(~vec4<u32>(select(1u, arg_3.x, true), min(u_input.e.x, arg_3.x), global0.x, 62830u)), arg_3);
    let var_1 = firstTrailingBit(9493u);
    let var_2 = arg_2;
    return 69320u;
}

fn func_2(arg_0: Struct_5, arg_1: vec2<bool>, arg_2: vec2<i32>) -> u32 {
    let var_0 = ~(~abs(vec3<u32>(~global0.x, abs(0u), 101989u)));
    global1 = array<Struct_1, 20>();
    let var_1 = ~firstTrailingBit(vec2<u32>(var_0.x, 12288u));
    var var_2 = _wgslsmith_mult_i32(-_wgslsmith_mod_i32(~u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.x, arg_0.a.x, arg_2.x, u_input.a), vec4<i32>(arg_0.b, arg_0.b, -29564i, 1i))), arg_0.b) | -1i;
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1040f, -580f)) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1840f, 1957f) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-272f, 164f))))))) * vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-353f)) * _wgslsmith_f_op_f32(f32(-1f) * -418f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -274f)))), _wgslsmith_f_op_f32(select(1427f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-996f)))), false))));
    return func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1795f, _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-var_3.x)))), arg_0, Struct_3(Struct_1(_wgslsmith_clamp_vec4_i32(reverseBits(vec4<i32>(u_input.b, arg_2.x, arg_2.x, 1i)), ~vec4<i32>(-10546i, arg_2.x, 2147483647i, u_input.b), ~vec4<i32>(-1i, arg_2.x, -2147483647i, arg_0.a.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_3.x + 1508f)))), func_3(abs(_wgslsmith_mod_i32(arg_0.a.x, arg_0.a.x)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1221f), _wgslsmith_div_f32(var_3.x, 286f), _wgslsmith_f_op_f32(var_3.x * 1000f), _wgslsmith_f_op_f32(1418f - var_3.x))), Struct_2(var_3.x), Struct_2(_wgslsmith_f_op_f32(ceil(var_3.x)))), ((firstTrailingBit(vec4<u32>(75117u, var_1.x, 33817u, u_input.e.x)) ^ reverseBits(vec4<u32>(var_1.x, var_1.x, 1u, var_0.x))) << (vec4<u32>(_wgslsmith_sub_u32(12806u, var_0.x), min(0u, var_0.x), _wgslsmith_div_u32(var_0.x, 4294967295u), var_0.x) % vec4<u32>(32u))) << (((max(vec4<u32>(1u, var_1.x, 1u, 0u), vec4<u32>(0u, u_input.c.x, var_1.x, u_input.d.x)) | _wgslsmith_mod_vec4_u32(vec4<u32>(var_0.x, global0.x, 0u, var_0.x), vec4<u32>(0u, 4294967295u, 1u, var_0.x))) >> (_wgslsmith_mod_vec4_u32(~vec4<u32>(var_0.x, 130252u, 6364u, u_input.c.x), vec4<u32>(var_1.x, 919u, 4294967295u, var_1.x)) % vec4<u32>(32u))) % vec4<u32>(32u)));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec3<f32>, arg_3: vec3<i32>) -> i32 {
    global0 = _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d.x, global0.x, _wgslsmith_mod_u32(u_input.e.x, _wgslsmith_dot_vec4_u32(vec4<u32>(29652u, u_input.d.x, u_input.d.x, global0.x), vec4<u32>(u_input.c.x, global0.x, 22278u, u_input.e.x))), ~global0.x), ~(~vec4<u32>(1u, global0.x, global0.x, u_input.e.x) << (vec4<u32>(95905u, global0.x, u_input.d.x, 0u) % vec4<u32>(32u)))), _wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(~global0.x, func_2(Struct_5(arg_3.zz, -38528i), vec2<bool>(true, false), vec2<i32>(arg_3.x, arg_3.x)), ~0u, ~u_input.d.x), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 10054u, 16263u, u_input.c.x) | vec4<u32>(u_input.d.x, 0u, 1u, u_input.d.x), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d.x, global0.x, global0.x, u_input.e.x), vec4<u32>(global0.x, global0.x, 22187u, global0.x)))), abs(~vec4<u32>(73923u, u_input.c.x, 11971u, 12694u))));
    global1 = array<Struct_1, 20>();
    var var_0 = arg_1.a.a;
    global1 = array<Struct_1, 20>();
    var var_1 = ~firstLeadingBit(min(~max(global0.x, global0.x), 48383u));
    return 42490i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(1241u, u_input.c.x), 20u)];
    let var_1 = ~_wgslsmith_dot_vec3_i32(max(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.a.x, 47840i, 27533i), ~vec3<i32>(-39726i, u_input.a, 0i), -vec3<i32>(0i, -1i, var_0.a.x)), -reverseBits(vec3<i32>(var_0.a.x, u_input.b, var_0.a.x))), ~vec3<i32>(func_1(Struct_2(var_0.b), Struct_3(Struct_1(vec4<i32>(-19640i, u_input.a, u_input.b, var_0.a.x), var_0.b), vec2<bool>(false, true), Struct_2(-1979f), Struct_2(-1270f)), vec3<f32>(var_0.b, -131f, var_0.b), vec3<i32>(var_0.a.x, 1i, 2147483647i)), ~(-2147483647i), var_0.a.x));
    let var_2 = Struct_3(Struct_1(vec4<i32>(_wgslsmith_add_i32(1i, var_1), -2147483647i, var_1, i32(-1i) * -29185i) << (~(vec4<u32>(u_input.d.x, 1u, 53582u, 0u) & vec4<u32>(u_input.c.x, 4294967295u, global0.x, 1u)) % vec4<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b, _wgslsmith_f_op_f32(var_0.b - 496f)))), select(!select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(_wgslsmith_f_op_f32(exp2(var_0.b)) <= _wgslsmith_f_op_f32(-1323f - var_0.b), false), select(vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true)), select(select(vec2<bool>(false, true), vec2<bool>(true, false), true), vec2<bool>(false, true), true))), Struct_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(382f, var_0.b))), var_0.b))), Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.b), -1317f, true))));
    global1 = array<Struct_1, 20>();
    global0 = select(firstTrailingBit(max(_wgslsmith_mod_vec4_u32(select(vec4<u32>(35936u, u_input.e.x, u_input.e.x, 1u), vec4<u32>(u_input.e.x, u_input.c.x, 4294967295u, 1u), var_2.b.x), countOneBits(vec4<u32>(44307u, 6532u, u_input.e.x, 1u))), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, 0u, 18608u, u_input.d.x), vec4<u32>(global0.x, u_input.c.x, 4294967295u, global0.x)) & ~vec4<u32>(global0.x, u_input.c.x, global0.x, 4294967295u))), vec4<u32>(72708u, ~(~global0.x), firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, u_input.d.x, global0.x), vec4<u32>(0u, 4294967295u, 4459u, u_input.d.x))), 0u) | ~(~vec4<u32>(0u, u_input.c.x, 38633u, global0.x)), !select(!vec4<bool>(var_2.b.x, true, var_2.b.x, var_2.b.x), select(vec4<bool>(true, false, var_2.b.x, false), vec4<bool>(var_2.b.x, true, true, false), !vec4<bool>(true, true, false, var_2.b.x)), var_2.b.x));
    var var_3 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b);
}

