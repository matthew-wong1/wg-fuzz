struct Struct_1 {
    a: vec4<bool>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec3<f32>,
    d: i32,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec4<bool>(true, true, true, true), 4294967295u), vec4<f32>(1000f, 1172f, 201f, 1603f), vec3<f32>(912f, -2686f, -1000f), 21580i);

var<private> global1: array<vec4<u32>, 10>;

var<private> global2: f32;

var<private> global3: vec3<u32>;

var<private> global4: array<vec4<bool>, 13>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: i32, arg_3: vec4<i32>) -> vec4<bool> {
    let var_0 = arg_1.a.x;
    var var_1 = global0.b.x;
    global0 = Struct_2(Struct_1(vec4<bool>(!all(global0.a.a), any(global4[_wgslsmith_index_u32(~global0.a.b, 13u)]), var_0, !var_0), max(u_input.c.x, 1u)), vec4<f32>(_wgslsmith_f_op_f32(global0.c.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2287f * global0.b.x) * global0.b.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-521f)), _wgslsmith_f_op_f32(max(global0.c.x, global0.b.x)), var_0)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global0.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c.x + -1696f))), _wgslsmith_f_op_f32(f32(-1f) * -1195f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.b.zzy) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(global0.c, vec3<f32>(global0.b.x, global0.b.x, global0.b.x), arg_1.a.xwx)) - _wgslsmith_f_op_vec3_f32(select(global0.b.wzw, global0.b.wzz, var_0)))))), arg_3.x);
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -197f));
    var var_2 = Struct_2(arg_1, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(global0.b))) - _wgslsmith_f_op_vec4_f32(abs(global0.b))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.b) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global0.b, vec4<f32>(global0.b.x, global0.b.x, -246f, global0.c.x))))), vec3<f32>(global0.c.x, _wgslsmith_f_op_f32(round(global0.c.x)), 529f), ~_wgslsmith_dot_vec4_i32(vec4<i32>(firstLeadingBit(u_input.a.x), abs(arg_2), ~arg_2, _wgslsmith_clamp_i32(global0.d, -2147483647i, -5296i)), vec4<i32>(i32(-1i) * -2147483647i, ~2147483647i, 0i, arg_2)));
    return arg_1.a;
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: vec3<i32>, arg_3: vec4<i32>) -> Struct_1 {
    global4 = array<vec4<bool>, 13>();
    var var_0 = Struct_2(global0.a, global0.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.b.xwz - _wgslsmith_f_op_vec3_f32(sign(global0.b.xwz))))), 1i);
    let var_1 = Struct_1(select(vec4<bool>(var_0.a.a.x, true, false, var_0.a.a.x), !func_3(1u, Struct_1(vec4<bool>(global0.a.a.x, var_0.a.a.x, true, false), global0.a.b), arg_2.x, firstLeadingBit(arg_3)), global0.a.a), firstLeadingBit(~(~global3.x) << (_wgslsmith_sub_u32(var_0.a.b << (4294967295u % 32u), countOneBits(1u)) % 32u)));
    global3 = firstTrailingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(global0.a.b, 61661u, u_input.c.x), ~(~vec3<u32>(arg_1, 4294967295u, 4529u)), (abs(vec3<u32>(global3.x, 30861u, 6139u)) ^ select(vec3<u32>(u_input.b.x, 10896u, 0u), vec3<u32>(u_input.c.x, global0.a.b, global0.a.b), true)) >> (_wgslsmith_mod_vec3_u32(abs(vec3<u32>(83415u, 1u, 0u)), vec3<u32>(global3.x, 4294967295u, var_0.a.b)) % vec3<u32>(32u))));
    let var_2 = _wgslsmith_f_op_f32(-arg_0);
    return Struct_1(vec4<bool>(!var_1.a.x, true & !(!var_0.a.a.x), (_wgslsmith_div_u32(45099u, 59583u) > ~global3.x) != false, all(global0.a.a)), 1u);
}

fn func_4(arg_0: vec3<i32>, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: Struct_2) -> f32 {
    let var_0 = ~arg_1.x;
    var var_1 = Struct_1(!vec4<bool>(any(arg_2.a.a), arg_2.a.a.x, false, global0.a.a.x), firstTrailingBit(_wgslsmith_div_u32(_wgslsmith_sub_u32(arg_2.a.b, global3.x) | ~u_input.b.x, 68001u)));
    let var_2 = global0.a.a.zz;
    let var_3 = _wgslsmith_add_i32(_wgslsmith_clamp_i32(-min(max(1i, -1i), abs(var_0)), 0i, _wgslsmith_dot_vec3_i32(-vec3<i32>(arg_3.d, arg_2.d, arg_3.d), ~select(vec3<i32>(0i, arg_1.x, -1i), vec3<i32>(2147483647i, arg_3.d, 25317i), arg_3.a.a.x))), _wgslsmith_sub_i32(arg_2.d & -(~arg_2.d), ~(~abs(-16236i))));
    var var_4 = firstLeadingBit(arg_0);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -661f) + 541f)));
}

fn func_1(arg_0: u32, arg_1: Struct_3, arg_2: vec3<u32>) -> vec4<f32> {
    global2 = _wgslsmith_f_op_f32(func_4(u_input.a, min(vec2<i32>(-(i32(-1i) * -56164i), _wgslsmith_dot_vec2_i32(vec2<i32>(-89078i, u_input.a.x), firstTrailingBit(vec2<i32>(-1i, 1i)))), -max(~u_input.a.xy, u_input.a.yz)), arg_1.a, Struct_2(func_2(arg_1.a.c.x, 38942u, u_input.a, min(vec4<i32>(arg_1.a.d, global0.d, u_input.a.x, arg_1.a.d), abs(vec4<i32>(arg_1.a.d, arg_1.a.d, -1i, u_input.a.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.c.x, global0.c.x, -937f, -2045f), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1380f, 830f, arg_1.a.c.x, -285f), arg_1.a.b))))), vec3<f32>(arg_1.a.c.x, global0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(249f - global0.c.x))), abs(1i))));
    let var_0 = vec2<u32>(global0.a.b, _wgslsmith_mod_u32(~(~38404u) << (~global3.x % 32u), u_input.b.x));
    global2 = -2823f;
    global1 = array<vec4<u32>, 10>();
    var var_1 = _wgslsmith_dot_vec4_i32(~(-(~abs(vec4<i32>(2147483647i, global0.d, u_input.a.x, 2147483647i)))), -(~(~vec4<i32>(30608i, global0.d, arg_1.a.d, global0.d))) & vec4<i32>(arg_1.a.d, -6880i, _wgslsmith_mult_i32(_wgslsmith_mult_i32(global0.d, -8560i), arg_1.a.d), firstTrailingBit(abs(1i))));
    return arg_1.a.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(Struct_2(global0.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(1u, Struct_3(Struct_2(global0.a, global0.b, global0.b.xzz, -2147483647i)), vec3<u32>(global3.x, global0.a.b, global0.a.b))) * vec4<f32>(global0.c.x, 548f, -2823f, 1000f)), global0.c, -42788i));
    let var_1 = _wgslsmith_clamp_vec4_u32(~(abs(vec4<u32>(global3.x, 0u, u_input.b.x, 8256u) | vec4<u32>(0u, u_input.c.x, 0u, var_0.a.a.b)) & vec4<u32>(select(u_input.c.x, global0.a.b, global0.a.a.x), global0.a.b, u_input.b.x, 26570u)), (firstTrailingBit(select(vec4<u32>(0u, global3.x, global0.a.b, global0.a.b), vec4<u32>(0u, 0u, global3.x, 39032u), true)) << (vec4<u32>(var_0.a.a.b, ~global3.x, u_input.b.x, u_input.c.x) % vec4<u32>(32u))) ^ vec4<u32>(countOneBits(52016u), firstTrailingBit(select(31023u, global3.x, var_0.a.a.a.x)), firstLeadingBit(global3.x), global3.x), vec4<u32>(global0.a.b, max(abs(global0.a.b), u_input.c.x), ~1553u, max(var_0.a.a.b, global0.a.b)));
    global1 = array<vec4<u32>, 10>();
    var var_2 = _wgslsmith_f_op_vec4_f32(func_1(~22792u, var_0, vec3<u32>(max(func_2(-580f, select(12112u, 0u, true), countOneBits(vec3<i32>(-56710i, -25987i, -43411i)), -vec4<i32>(var_0.a.d, -1i, u_input.a.x, -1i)).b, 36508u), _wgslsmith_sub_u32(var_0.a.a.b, _wgslsmith_dot_vec4_u32(global1[_wgslsmith_index_u32(36782u >> (1u % 32u), 10u)], ~vec4<u32>(6266u, u_input.b.x, global3.x, var_1.x))), var_0.a.a.b))).yzw;
    var var_3 = 82937u;
    let var_4 = u_input.a.zy;
    let var_5 = vec2<i32>(~(~(-6513i)), reverseBits((2147483647i << (var_0.a.a.b % 32u)) ^ global0.d));
    let x = u_input.a;
    s_output = StorageBuffer(global0.b.xxx, ~_wgslsmith_dot_vec4_i32(abs(vec4<i32>(0i, var_4.x, 0i, u_input.a.x)), _wgslsmith_mod_vec4_i32(-vec4<i32>(1i, var_5.x, var_0.a.d, global0.d), ~vec4<i32>(-3810i, var_5.x, global0.d, 36021i))));
}

