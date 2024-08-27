struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: vec2<u32>,
    e: i32,
}

struct Struct_3 {
    a: i32,
    b: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 27> = array<Struct_3, 27>(Struct_3(-36053i, 4294967295u), Struct_3(2147483647i, 1u), Struct_3(1i, 15994u), Struct_3(2147483647i, 11722u), Struct_3(-1i, 2670u), Struct_3(35088i, 32470u), Struct_3(4476i, 4294967295u), Struct_3(-5937i, 0u), Struct_3(2147483647i, 0u), Struct_3(0i, 21218u), Struct_3(i32(-2147483648), 4294967295u), Struct_3(1i, 0u), Struct_3(-49727i, 48111u), Struct_3(-15937i, 1u), Struct_3(2147483647i, 43207u), Struct_3(2147483647i, 51363u), Struct_3(0i, 16634u), Struct_3(2147483647i, 1u), Struct_3(2147483647i, 0u), Struct_3(-26807i, 41323u), Struct_3(2147483647i, 4294967295u), Struct_3(2147483647i, 4294967295u), Struct_3(-27867i, 12689u), Struct_3(2147483647i, 25482u), Struct_3(0i, 53010u), Struct_3(-1i, 1u), Struct_3(i32(-2147483648), 21116u));

var<private> global1: bool;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3() -> vec4<i32> {
    var var_0 = ~abs(-vec3<i32>(u_input.a.x, u_input.a.x, -12896i));
    let var_1 = Struct_3(u_input.a.x, ~firstTrailingBit(~reverseBits(u_input.d)));
    global0 = array<Struct_3, 27>();
    global0 = array<Struct_3, 27>();
    var var_2 = Struct_2(i32(-1i) * -2147483647i, Struct_1(countOneBits(abs(u_input.b))), Struct_1(countOneBits(1u)), min(vec2<u32>(_wgslsmith_sub_u32(~var_1.b, 0u), reverseBits(~var_1.b)), _wgslsmith_mod_vec2_u32(vec2<u32>(~1u, var_1.b), ~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c, 1u), vec2<u32>(u_input.d, u_input.c)))), firstTrailingBit(2147483647i));
    return countOneBits(reverseBits(abs(vec4<i32>(var_0.x, var_2.a, -24528i, var_0.x))) >> ((_wgslsmith_mod_vec4_u32(reverseBits(vec4<u32>(var_2.b.a, u_input.d, var_1.b, var_1.b)), max(vec4<u32>(var_2.b.a, 1u, 11857u, 91585u), vec4<u32>(u_input.d, 15918u, 63453u, var_1.b))) ^ ~vec4<u32>(var_2.d.x, var_2.d.x, var_1.b, 0u)) % vec4<u32>(32u)));
}

fn func_2(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: vec3<u32>, arg_3: vec3<i32>) -> vec4<i32> {
    let var_0 = Struct_1(_wgslsmith_div_u32(~u_input.d, 1u));
    var var_1 = ~(0u << (arg_0.b % 32u));
    return ~func_3() ^ (_wgslsmith_mult_vec4_i32(countOneBits(vec4<i32>(arg_0.a, u_input.a.x, -1i, arg_0.a) << (vec4<u32>(arg_0.b, var_0.a, u_input.b, arg_2.x) % vec4<u32>(32u))), ~(-vec4<i32>(-55255i, u_input.a.x, arg_0.a, arg_0.a))) >> (~(~(~vec4<u32>(arg_2.x, arg_2.x, 1u, arg_0.b))) % vec4<u32>(32u)));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec3<u32>, arg_2: vec3<f32>) -> u32 {
    var var_0 = arg_0;
    global0 = array<Struct_3, 27>();
    var var_1 = var_0.x;
    var_1 = arg_2.x;
    let var_2 = vec2<i32>(_wgslsmith_dot_vec4_i32(firstTrailingBit(~vec4<i32>(-1i, u_input.a.x, u_input.a.x, 0i)), func_2(global0[_wgslsmith_index_u32(50989u, 27u)], select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), arg_1, ~vec3<i32>(0i, u_input.a.x, u_input.a.x))), ~countOneBits(i32(-1i) * -u_input.a.x));
    return u_input.b;
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: vec2<f32>, arg_3: Struct_3) -> vec3<i32> {
    let var_0 = !vec2<bool>(~arg_1.b < 112617u, !all(vec4<bool>(true, true, true, true)));
    global1 = true;
    let var_1 = _wgslsmith_add_vec2_i32(vec2<i32>(39100i, arg_3.a), firstTrailingBit(u_input.a.zz));
    var var_2 = Struct_2(-abs(var_1.x), Struct_1(arg_1.b), Struct_1(func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-329f, -485f, 801f, 1493f)), (vec3<u32>(u_input.b, 35413u, 4294967295u) << (vec3<u32>(12525u, 1u, 1u) % vec3<u32>(32u))) ^ ~vec3<u32>(1u, 66740u, 1u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-502f, arg_2.x, -457f), vec3<f32>(867f, 216f, arg_2.x), var_0.x))))), abs(~(~(~vec2<u32>(arg_3.b, 1u)))), 0i);
    var var_3 = min(~(~abs(u_input.d)), _wgslsmith_mod_u32(var_2.c.a, arg_3.b));
    return u_input.a & ~_wgslsmith_clamp_vec3_i32(u_input.a, vec3<i32>(-var_1.x, 767i >> (1u % 32u), arg_1.a | arg_1.a), -_wgslsmith_add_vec3_i32(u_input.a, u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = false;
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-306f, 161f)))), -631f, false)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1087f), _wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-595f + 1701f), -485f))))))));
    let var_1 = min(_wgslsmith_sub_vec3_i32(func_4(-10739i, global0[_wgslsmith_index_u32(func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-249f, -1027f, 134f, -908f)), _wgslsmith_sub_vec3_u32(vec3<u32>(556u, 23085u, u_input.c), vec3<u32>(60993u, u_input.d, u_input.d)), _wgslsmith_f_op_vec3_f32(vec3<f32>(124f, 1378f, -929f) * vec3<f32>(462f, 561f, -278f))), 27u)], vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -794f), _wgslsmith_f_op_f32(round(-1845f))), global0[_wgslsmith_index_u32(u_input.b, 27u)]), _wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, countOneBits(u_input.a.x), _wgslsmith_mult_i32(u_input.a.x, u_input.a.x)), func_3().wzx, func_4(0i, Struct_3(u_input.a.x, 57911u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(344f, 934f)), global0[_wgslsmith_index_u32(~62569u, 27u)]))), vec3<i32>(max(1i, 1i), u_input.a.x, ~(~u_input.a.x)) >> (_wgslsmith_div_vec3_u32(max(~vec3<u32>(0u, u_input.c, u_input.c), max(vec3<u32>(u_input.b, u_input.b, 13403u), vec3<u32>(8676u, u_input.c, 21947u))), vec3<u32>(u_input.b, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.c), vec2<u32>(u_input.c, u_input.c)), abs(u_input.c))) % vec3<u32>(32u)));
    var var_2 = Struct_2(~_wgslsmith_div_i32(u_input.a.x, u_input.a.x) & ~u_input.a.x, Struct_1(~u_input.c), Struct_1(10660u << (u_input.c % 32u)), firstTrailingBit(~vec2<u32>(~0u, ~1u)), u_input.a.x);
    global0 = array<Struct_3, 27>();
    var_0 = 1004f;
    var var_3 = var_2.c;
    let x = u_input.a;
    s_output = StorageBuffer(113f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1536f, -1000f, _wgslsmith_f_op_f32(step(-1002f, -372f)))))), -604f);
}

