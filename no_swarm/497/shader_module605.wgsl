struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: u32,
}

struct Struct_2 {
    a: i32,
    b: vec3<u32>,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_3, 26> = array<Struct_3, 26>(Struct_3(Struct_1(true, vec4<u32>(1u, 0u, 4294967295u, 4294967295u), 11574u), false, vec3<i32>(0i, -58508i, i32(-2147483648))), Struct_3(Struct_1(true, vec4<u32>(19396u, 21197u, 1u, 20329u), 1u), true, vec3<i32>(1i, -31452i, -38988i)), Struct_3(Struct_1(false, vec4<u32>(27171u, 1u, 0u, 4294967295u), 4294967295u), true, vec3<i32>(26848i, -11842i, 2147483647i)), Struct_3(Struct_1(false, vec4<u32>(4294967295u, 0u, 15876u, 4294967295u), 13861u), true, vec3<i32>(-11714i, 30322i, 16104i)), Struct_3(Struct_1(false, vec4<u32>(4294967295u, 0u, 1u, 0u), 1u), false, vec3<i32>(-1i, -32562i, -15037i)), Struct_3(Struct_1(false, vec4<u32>(1u, 7378u, 1u, 4294967295u), 22214u), true, vec3<i32>(-37188i, 20347i, -3866i)), Struct_3(Struct_1(false, vec4<u32>(4294967295u, 6024u, 27815u, 0u), 28073u), true, vec3<i32>(i32(-2147483648), i32(-2147483648), -1i)), Struct_3(Struct_1(false, vec4<u32>(4294967295u, 43570u, 4294967295u, 0u), 21194u), true, vec3<i32>(63268i, 2147483647i, 1i)), Struct_3(Struct_1(false, vec4<u32>(14113u, 0u, 1u, 8153u), 4294967295u), false, vec3<i32>(-1i, -64085i, -12818i)), Struct_3(Struct_1(false, vec4<u32>(1u, 4294967295u, 5594u, 27654u), 0u), true, vec3<i32>(2147483647i, 2147483647i, 1276i)), Struct_3(Struct_1(false, vec4<u32>(7652u, 0u, 13639u, 70427u), 280u), false, vec3<i32>(0i, i32(-2147483648), -7126i)), Struct_3(Struct_1(false, vec4<u32>(1u, 0u, 41457u, 80403u), 23996u), false, vec3<i32>(2147483647i, 0i, -2885i)), Struct_3(Struct_1(false, vec4<u32>(4294967295u, 1u, 9608u, 4294967295u), 4294967295u), false, vec3<i32>(-1i, -39132i, -42533i)), Struct_3(Struct_1(true, vec4<u32>(539u, 4294967295u, 1u, 26573u), 10501u), false, vec3<i32>(-7950i, 2147483647i, 2147483647i)), Struct_3(Struct_1(false, vec4<u32>(0u, 0u, 0u, 36340u), 4294967295u), true, vec3<i32>(-14329i, i32(-2147483648), 23581i)), Struct_3(Struct_1(true, vec4<u32>(68809u, 4294967295u, 0u, 5165u), 65817u), true, vec3<i32>(-15341i, i32(-2147483648), -11037i)), Struct_3(Struct_1(false, vec4<u32>(4294967295u, 1u, 4294967295u, 45281u), 4294967295u), true, vec3<i32>(1i, 1i, 0i)), Struct_3(Struct_1(false, vec4<u32>(0u, 21041u, 112768u, 0u), 10133u), false, vec3<i32>(i32(-2147483648), 1i, 61434i)), Struct_3(Struct_1(false, vec4<u32>(1u, 4294967295u, 11045u, 1u), 37641u), true, vec3<i32>(-27588i, 21434i, 1i)), Struct_3(Struct_1(true, vec4<u32>(61563u, 66286u, 40774u, 47874u), 4294967295u), false, vec3<i32>(-24902i, 2147483647i, 0i)), Struct_3(Struct_1(true, vec4<u32>(16728u, 41456u, 0u, 4294967295u), 68831u), true, vec3<i32>(i32(-2147483648), 18478i, 63561i)), Struct_3(Struct_1(true, vec4<u32>(59601u, 4294967295u, 15975u, 0u), 0u), true, vec3<i32>(-1i, i32(-2147483648), -1i)), Struct_3(Struct_1(false, vec4<u32>(44782u, 67511u, 8503u, 0u), 3429u), true, vec3<i32>(-1i, 25730i, 33099i)), Struct_3(Struct_1(true, vec4<u32>(0u, 116037u, 4294967295u, 1u), 13459u), true, vec3<i32>(-57938i, 1i, -1i)), Struct_3(Struct_1(true, vec4<u32>(20904u, 4294967295u, 91880u, 23703u), 0u), false, vec3<i32>(-1i, i32(-2147483648), -27803i)), Struct_3(Struct_1(true, vec4<u32>(28331u, 1u, 1u, 4294967295u), 4294967295u), false, vec3<i32>(-31655i, i32(-2147483648), 1377i)));

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_2(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: Struct_3) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1762f, -974f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -387f) + _wgslsmith_f_op_f32(-518f * 793f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1072f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), true)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -882f)))))));
    return ~vec3<u32>(arg_2.a.b.x, 48407u, ~arg_0.a.b.x);
}

fn func_3(arg_0: vec4<f32>) -> vec3<u32> {
    var var_0 = global1[_wgslsmith_index_u32(~1u, 26u)];
    global1 = array<Struct_3, 26>();
    var_0 = global1[_wgslsmith_index_u32(15825u, 26u)];
    var var_1 = var_0.a;
    let var_2 = global1[_wgslsmith_index_u32(global0.c, 26u)];
    return vec3<u32>(1u, ~var_2.a.b.x, countOneBits(1u));
}

fn func_1() -> vec3<u32> {
    global0 = Struct_1(true, vec4<u32>(1u, min(global0.b.x, global0.c), ~(countOneBits(global0.c) ^ _wgslsmith_add_u32(global0.b.x, global0.b.x)), _wgslsmith_dot_vec3_u32(countOneBits(func_2(global1[_wgslsmith_index_u32(global0.b.x, 26u)], vec3<bool>(false, global0.a, false), global1[_wgslsmith_index_u32(1u, 26u)])), _wgslsmith_add_vec3_u32(reverseBits(global0.b.xwz), ~vec3<u32>(global0.b.x, global0.b.x, global0.b.x)))), 50092u);
    let var_0 = Struct_2(u_input.b.x >> (4294967295u % 32u), _wgslsmith_mult_vec3_u32(global0.b.www | vec3<u32>(~global0.c, ~1u, global0.b.x), _wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(~global0.b.wzz, select(global0.b.wxx, global0.b.wzz, true)), func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2385f, 887f, 243f, 696f))))), Struct_1((~global0.b.x < 4294967295u) || all(!vec4<bool>(false, global0.a, global0.a, true)), ~global0.b, 61501u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -211f)) + _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -297f) * _wgslsmith_f_op_f32(floor(-1526f))))));
    var var_1 = Struct_3(var_0.c, var_0.c.a, u_input.b.ywx);
    let var_2 = Struct_1(true, ~global0.b, ~1u);
    let var_3 = Struct_1(any(vec3<bool>(var_0.c.a, all(select(vec2<bool>(var_1.a.a, true), vec2<bool>(var_0.c.a, var_2.a), vec2<bool>(true, var_2.a))), select(var_1.b, global0.a, true))), var_1.a.b, ~1u);
    return ((vec3<u32>(1u, 0u, var_3.b.x) ^ (_wgslsmith_add_vec3_u32(var_2.b.xxx, vec3<u32>(var_3.b.x, 32098u, var_1.a.c)) << (_wgslsmith_mod_vec3_u32(var_1.a.b.yzy, vec3<u32>(var_1.a.b.x, global0.b.x, 82985u)) % vec3<u32>(32u)))) ^ ~vec3<u32>(global0.b.x, ~1u, 0u)) ^ global0.b.zxw;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(global0.a, _wgslsmith_sub_vec4_u32(global0.b, global0.b), ~global0.c);
    var var_0 = Struct_2(u_input.b.x, firstTrailingBit(func_1()), Struct_1(global0.a, vec4<u32>(37152u << ((global0.b.x << (global0.c % 32u)) % 32u), func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(-507f, 593f, -819f, -492f) * vec4<f32>(688f, 212f, 1413f, -347f))).x, func_1().x, global0.b.x), 4294967295u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(303f * _wgslsmith_f_op_f32(f32(-1f) * -1471f))));
    var_0 = Struct_2(-14225i, ~abs(~vec3<u32>(106045u, 13417u, global0.b.x)), var_0.c, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-219f, _wgslsmith_f_op_f32(-var_0.d))), 230f)));
    global0 = var_0.c;
    var var_1 = firstTrailingBit(global0.b.x);
    global0 = var_0.c;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(_wgslsmith_clamp_u32(64397u, abs(_wgslsmith_dot_vec2_u32(global0.b.zx, vec2<u32>(26110u, var_0.b.x))), 0u), _wgslsmith_add_u32(~(~global0.c), ~_wgslsmith_mod_u32(global0.c, 3356u)), ~_wgslsmith_div_u32(65962u, 61369u)), _wgslsmith_div_vec4_i32(u_input.b, min(countOneBits(_wgslsmith_mult_vec4_i32(u_input.b, u_input.b)), -vec4<i32>(53706i, 0i, 42899i, u_input.b.x))));
}

