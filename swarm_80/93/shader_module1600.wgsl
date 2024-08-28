struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: bool,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: i32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: f32,
    d: u32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: Struct_1 = Struct_1(36805u, vec2<i32>(2147483647i, 1i), true, vec4<i32>(9757i, -19783i, 64547i, i32(-2147483648)));

var<private> global2: u32;

var<private> global3: vec2<f32>;

var<private> global4: array<i32, 27> = array<i32, 27>(22510i, 2147483647i, -12084i, -53952i, -16528i, 33156i, 0i, 1i, 53673i, 314i, 0i, -1i, 1i, -27740i, i32(-2147483648), -1i, 0i, i32(-2147483648), 34387i, 0i, -7607i, 1i, 0i, 5501i, 1i, 19454i, -25476i);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> f32 {
    global4 = array<i32, 27>();
    let var_0 = 36439i;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global0.x, 1364f), _wgslsmith_f_op_f32(f32(-1f) * -229f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-281f)) * _wgslsmith_f_op_f32(global0.x - global3.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global3.x)), 1267f)))));
    var var_2 = Struct_3(Struct_1(u_input.d.x, vec2<i32>(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, global1.a), vec3<u32>(global1.a, 25722u, global1.a)), 27u)] >> (~global1.a % 32u), -abs(1i)), global1.c, vec4<i32>(-49989i, var_0 << (29620u % 32u), global1.d.x, 0i) & ~vec4<i32>(var_0, global4[_wgslsmith_index_u32(32185u, 27u)], var_0, global1.b.x)), ~_wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(50349u, global1.a), vec2<u32>(global1.a, 50381u) << (u_input.d % vec2<u32>(32u))), firstTrailingBit(firstTrailingBit(vec2<u32>(global1.a, 4257u)))), select(firstTrailingBit(~(~vec4<u32>(global1.a, 1u, u_input.d.x, u_input.d.x))), firstTrailingBit(firstLeadingBit(vec4<u32>(u_input.d.x, 2617u, 67636u, u_input.d.x)) | firstTrailingBit(vec4<u32>(1u, u_input.d.x, u_input.d.x, u_input.d.x))), true & global1.c));
    var var_3 = vec4<u32>(9722u, ~(u_input.d.x | ~47026u), 0u, _wgslsmith_mod_u32(global1.a, ~45279u));
    return var_1.x;
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: vec4<f32>) -> i32 {
    var var_0 = global1.d;
    global4 = array<i32, 27>();
    global3 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), arg_2.x);
    global2 = arg_1;
    let var_1 = _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, arg_1, 1u), vec3<u32>(global1.a, _wgslsmith_div_u32(abs(global1.a), arg_1 << (0u % 32u)), ~_wgslsmith_add_u32(1u, 0u)) | firstTrailingBit(~vec3<u32>(16062u, 66337u, u_input.d.x)));
    return -_wgslsmith_clamp_i32(var_0.x, ~min(-2147483647i, _wgslsmith_dot_vec3_i32(var_0.wwz, u_input.a.xyx)), -_wgslsmith_mult_i32(var_0.x, 12285i) & var_0.x);
}

fn func_1() -> Struct_1 {
    let var_0 = vec3<bool>(true, global1.c & global1.c, global1.c);
    global1 = Struct_1(17161u, min(global1.b, vec2<i32>(-reverseBits(u_input.a.x), 11215i)), var_0.x != (true == ((1u < global1.a) | global1.c)), _wgslsmith_mult_vec4_i32(vec4<i32>(-26440i, -2147483647i, func_2(global0.x, global1.a, vec4<f32>(global3.x, 2274f, global3.x, -262f)), abs(-10249i)) >> (abs(~vec4<u32>(4294967295u, 58885u, u_input.d.x, 0u)) % vec4<u32>(32u)), vec4<i32>(1i, u_input.b.x, 50393i, 19670i)));
    global4 = array<i32, 27>();
    let var_1 = max(global1.d.x, _wgslsmith_dot_vec4_i32(max(global1.d >> (~vec4<u32>(u_input.d.x, 4294967295u, global1.a, u_input.d.x) % vec4<u32>(32u)), -global1.d), -_wgslsmith_add_vec4_i32(vec4<i32>(global4[_wgslsmith_index_u32(12774u, 27u)], -52841i, 19353i, -2147483647i), ~vec4<i32>(-1i, -2147483647i, u_input.b.x, 2147483647i))));
    global0 = vec2<f32>(global3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x * 1565f)) - 532f) * _wgslsmith_f_op_f32(-384f - _wgslsmith_div_f32(global0.x, global0.x))));
    return Struct_1(_wgslsmith_mod_u32(~u_input.d.x & _wgslsmith_sub_u32(97576u, u_input.d.x), ~u_input.d.x) & (~global1.a ^ ~(~0u)), vec2<i32>(1i, var_1), true, reverseBits(u_input.a));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: vec4<u32>) -> i32 {
    global0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(689f, _wgslsmith_f_op_f32(-4130f + -1498f)) * vec2<f32>(global0.x, _wgslsmith_f_op_f32(-global3.x))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1069f, global0.x)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 1143f)))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, -161f) - vec2<f32>(436f, global0.x))), vec2<f32>(-473f, _wgslsmith_f_op_f32(-global3.x))))));
    let var_0 = Struct_2(!vec3<bool>(!(arg_1.b.x < u_input.c), arg_0.a.c && false, arg_0.a.c), global1.c, arg_1);
    let var_1 = _wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.c.a, ~u_input.d.x, abs(u_input.d.x)), vec3<u32>(arg_1.a, ~(~(~arg_0.c.x)), abs(abs(0u))), vec3<u32>(arg_1.a, 1u >> (arg_1.a % 32u), 8645u));
    var var_2 = arg_0;
    var var_3 = arg_3.x;
    return ~(-(~(~firstTrailingBit(var_2.a.d.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(799f, global3.x), vec2<f32>(1141f, 1192f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global0.x, global0.x), vec2<f32>(1139f, global0.x)) * vec2<f32>(global3.x, 340f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global0.x, global0.x)))))))));
    var var_0 = Struct_1(~(_wgslsmith_mod_u32(min(u_input.d.x, 14572u), 59501u) ^ global1.a), vec2<i32>(-15671i, _wgslsmith_mult_i32(global4[_wgslsmith_index_u32(~u_input.d.x, 27u)], -2445i) & firstLeadingBit(-26292i)), -func_4(Struct_3(Struct_1(28150u, vec2<i32>(global1.b.x, u_input.b.x), global1.c, global1.d), vec2<u32>(global1.a, 71284u), vec4<u32>(1u, 1u, 18780u, 1u)), func_1(), u_input.d, vec4<u32>(global1.a, u_input.d.x, 44196u, global1.a)) != u_input.c, u_input.a);
    let var_1 = Struct_2(select(vec3<bool>(true, false, true), vec3<bool>(any(!vec2<bool>(global1.c, var_0.c)), false, any(!vec4<bool>(var_0.c, var_0.c, false, global1.c))), all(vec2<bool>(true, false)) | !select(var_0.c, true, var_0.c)), _wgslsmith_f_op_f32(min(1071f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global3.x)) * _wgslsmith_div_f32(global3.x, -701f)))) == -1155f, func_1());
    var var_2 = _wgslsmith_sub_vec3_u32(firstTrailingBit(~(~_wgslsmith_mod_vec3_u32(vec3<u32>(var_1.c.a, 1u, u_input.d.x), vec3<u32>(var_0.a, 54364u, 4294967295u)))), min(~vec3<u32>(var_1.c.a, select(71480u, var_0.a, true), ~u_input.d.x), ~(~(vec3<u32>(global1.a, u_input.d.x, global1.a) | vec3<u32>(1u, 34871u, var_1.c.a)))));
    global0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1447f, global0.x))) * vec2<f32>(global3.x, global0.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global3.x, 400f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, 1315f))), all(vec3<bool>(var_1.a.x, global1.c, var_1.b)))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global3.x, -1811f) - vec2<f32>(1104f, global3.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-183f, -216f), vec2<f32>(global0.x, global3.x))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(2425f, global0.x) - vec2<f32>(-119f, global3.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, 441f, global0.x, 1000f) * vec4<f32>(global0.x, global3.x, 1846f, 1000f)) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-474f, global0.x, -611f, global3.x), vec4<f32>(global3.x, 431f, global3.x, -791f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-824f, global3.x, global3.x, global0.x) - vec4<f32>(global3.x, global0.x, global0.x, 694f)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global3.x, global3.x, 993f, global0.x))))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.x + global3.x), _wgslsmith_f_op_f32(f32(-1f) * -621f)))), _wgslsmith_div_f32(global0.x, global0.x), global3.x), global0.x, min(firstLeadingBit((global1.a << (24466u % 32u)) >> (firstLeadingBit(46849u) % 32u)), var_1.c.a & ~func_1().a), vec2<f32>(-107f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-135f - _wgslsmith_div_f32(global3.x, -221f)) + -1693f)));
}

