struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: u32,
    b: vec4<i32>,
}

struct Struct_3 {
    a: f32,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: vec2<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -56578i;

var<private> global1: Struct_3;

var<private> global2: vec3<u32> = vec3<u32>(1u, 58497u, 49859u);

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_2(arg_0: vec3<u32>) -> Struct_1 {
    global0 = countOneBits(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i << (u_input.a % 32u), i32(-1i) * -30945i), abs(vec2<i32>(48274i, 1i)), ~vec2<i32>(-31430i, 0i)), (vec2<i32>(1i, -28212i) >> (select(vec2<u32>(0u, 17689u), vec2<u32>(global2.x, arg_0.x), false) % vec2<u32>(32u))) >> (countOneBits(abs(vec2<u32>(arg_0.x, 35558u))) % vec2<u32>(32u))));
    var var_0 = Struct_1(abs(max(max(_wgslsmith_dot_vec4_i32(vec4<i32>(-47200i, 0i, 1i, 0i), vec4<i32>(-1i, -55574i, -18610i, -1i)), _wgslsmith_mod_i32(1i, 23474i)), _wgslsmith_mult_i32(1i, 1i))));
    var_0 = Struct_1(_wgslsmith_div_i32(var_0.a, 0i ^ -select(var_0.a, var_0.a, true)));
    var var_1 = 24769i;
    var var_2 = vec2<bool>(!(false != (_wgslsmith_f_op_f32(min(global1.b.x, global1.a)) <= _wgslsmith_f_op_f32(round(768f)))), false);
    return Struct_1(8034i);
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: vec4<i32>) -> vec4<i32> {
    let var_0 = Struct_2(firstLeadingBit(firstTrailingBit(0u << (u_input.a % 32u)) | ~abs(arg_1.a)), ~(-arg_2));
    global1 = Struct_3(global1.b.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1.b * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-884f, 436f, global1.a), vec3<f32>(global1.a, 624f, -172f))))))));
    global1 = Struct_3(_wgslsmith_f_op_f32(-global1.b.x), global1.b);
    let var_1 = Struct_1(-29833i);
    global1 = Struct_3(_wgslsmith_f_op_f32(-1471f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(411f + -278f), _wgslsmith_f_op_f32(trunc(global1.a)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.b)));
    return vec4<i32>(arg_1.b.x, var_1.a, _wgslsmith_dot_vec3_i32((arg_2.ywy << (u_input.b.wzw % vec3<u32>(32u))) | (-var_0.b.ywy | var_0.b.xxw), min(vec3<i32>(var_0.b.x, arg_0, _wgslsmith_add_i32(92087i, var_1.a)), arg_2.wyz)), arg_0);
}

fn func_1() -> Struct_1 {
    let var_0 = func_2(vec3<u32>(0u, u_input.a, ~select(~0u, ~20123u, true)));
    global1 = Struct_3(-1129f, vec3<f32>(2234f, global1.a, global1.a));
    var var_1 = -func_3(~func_2(u_input.b.zyy).a, Struct_2(1u >> (u_input.b.x % 32u), vec4<i32>(var_0.a, 1i, var_0.a, 2147483647i)), vec4<i32>(var_0.a, var_0.a, 2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a, -5137i, -33680i), vec3<i32>(-1i, var_0.a, var_0.a)))) << (_wgslsmith_sub_vec4_u32((vec4<u32>(4294967295u, u_input.b.x, 57858u, 0u) | vec4<u32>(global2.x, u_input.b.x, 6898u, 15140u)) << (vec4<u32>(firstLeadingBit(901u), _wgslsmith_sub_u32(1u, u_input.b.x), reverseBits(0u), ~0u) % vec4<u32>(32u)), u_input.b) % vec4<u32>(32u));
    var var_2 = abs(firstTrailingBit(global2.x) | u_input.b.x);
    var var_3 = ~_wgslsmith_mult_i32(var_0.a, 49947i);
    return var_0;
}

fn func_4(arg_0: Struct_1) -> Struct_2 {
    var var_0 = -1i;
    global2 = (vec3<u32>(abs(u_input.b.x), global2.x, countOneBits(abs(0u))) & u_input.b.yxx) >> (~(~vec3<u32>(global2.x, min(global2.x, global2.x), 0u)) % vec3<u32>(32u));
    return Struct_2(_wgslsmith_sub_u32(firstTrailingBit(4294967295u), ~min(4294967295u, 30842u)) << (u_input.b.x % 32u), vec4<i32>(arg_0.a ^ _wgslsmith_sub_i32(1i, arg_0.a), ~firstLeadingBit(arg_0.a), 4597i, ~_wgslsmith_sub_i32(arg_0.a, arg_0.a)) ^ select(_wgslsmith_div_vec4_i32(vec4<i32>(-42304i, -1i, arg_0.a, 2147483647i), select(vec4<i32>(0i, -1166i, 28686i, -1i), vec4<i32>(-1i, 1i, -19924i, 45388i), vec4<bool>(true, true, false, true))), vec4<i32>(-1i, arg_0.a, _wgslsmith_mod_i32(3741i, arg_0.a), 1i), vec4<bool>(true, true, true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = vec3<u32>(78359u, global2.x >> ((_wgslsmith_div_u32(_wgslsmith_div_u32(271u, 4294967295u), _wgslsmith_dot_vec4_u32(u_input.b, u_input.b)) << (~_wgslsmith_mult_u32(1u, 25976u) % 32u)) % 32u), ~22045u & u_input.b.x);
    var var_0 = Struct_2(~u_input.b.x & _wgslsmith_mult_u32(1u, global2.x), _wgslsmith_add_vec4_i32(min(vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_div_vec4_i32(abs(vec4<i32>(31752i, 2147483647i, -1i, 1i)), _wgslsmith_add_vec4_i32(vec4<i32>(-1i, -25640i, 32122i, 1397i), vec4<i32>(-46750i, -1i, -2147483647i, -1i)))), vec4<i32>(-(~(-34899i)), ~firstLeadingBit(1i), ~1i, 1i)));
    let var_1 = func_4(func_1());
    let var_2 = !(!select(vec3<bool>(true, true, false), !select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false)), vec3<bool>(false, true, true)));
    var_0 = var_1;
    var var_3 = firstTrailingBit(_wgslsmith_mult_vec4_i32(-min(-var_0.b, ~var_1.b), ~_wgslsmith_sub_vec4_i32(vec4<i32>(var_1.b.x, var_0.b.x, var_1.b.x, var_1.b.x) << (vec4<u32>(var_0.a, 21450u, 72259u, 4294967295u) % vec4<u32>(32u)), vec4<i32>(var_1.b.x, var_0.b.x, -2147483647i, var_0.b.x))));
    var var_4 = var_2.x;
    var var_5 = abs(_wgslsmith_div_u32(_wgslsmith_sub_u32(~var_1.a, ~u_input.b.x), countOneBits(_wgslsmith_sub_u32(4294967295u, var_1.a))) >> (_wgslsmith_mult_u32(0u ^ u_input.a, firstTrailingBit(~33224u)) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(95883u, vec4<i32>(~1i, func_3(15588i, var_1, var_0.b ^ (var_0.b ^ vec4<i32>(var_3.x, var_1.b.x, 1i, -10346i))).x, select(i32(-1i) * -2147483647i, var_3.x, ~var_1.a <= 48906u), var_0.b.x), ~var_0.b.x, vec2<i32>(-_wgslsmith_dot_vec2_i32(var_0.b.xy, var_1.b.xx), func_1().a), global1.b);
}

