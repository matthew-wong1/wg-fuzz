struct Struct_1 {
    a: vec4<f32>,
    b: vec2<i32>,
    c: bool,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 14> = array<vec2<i32>, 14>(vec2<i32>(47246i, 1i), vec2<i32>(-1312i, -1i), vec2<i32>(-16299i, -17297i), vec2<i32>(27923i, 2147483647i), vec2<i32>(0i, -8924i), vec2<i32>(-2627i, 18984i), vec2<i32>(2147483647i, 1i), vec2<i32>(238i, 51326i), vec2<i32>(50659i, -1i), vec2<i32>(-56118i, i32(-2147483648)), vec2<i32>(0i, -1i), vec2<i32>(16014i, -705i), vec2<i32>(-1i, 21505i), vec2<i32>(-51799i, 2147483647i));

var<private> global1: Struct_2;

var<private> global2: vec2<u32> = vec2<u32>(0u, 35225u);

var<private> global3: vec2<bool> = vec2<bool>(true, true);

var<private> global4: Struct_3;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> u32 {
    let var_0 = global1.b.d.x;
    var var_1 = ~(~countOneBits(u_input.a));
    var var_2 = _wgslsmith_dot_vec4_u32(~vec4<u32>(abs(1u), ~44347u, _wgslsmith_div_u32(0u, global2.x), ~countOneBits(9230u)), ~_wgslsmith_div_vec4_u32(~vec4<u32>(72566u, 1u, 6928u, 1u), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(54742u, global2.x, global2.x), vec3<u32>(global2.x, 0u, 4294967295u)), _wgslsmith_clamp_u32(17167u, global2.x, 34530u), ~1u, ~1u)));
    var_2 = 83053u;
    global3 = select(!select(vec2<bool>(any(vec4<bool>(global1.b.c, global4.b.c, global4.b.c, global4.a)), false), vec2<bool>(global4.a, false), !global1.b.c), vec2<bool>(any(!vec4<bool>(global3.x, global1.b.c, false, false)), !(!global4.a | true)), (select(false, global3.x, true) || all(!vec4<bool>(true, global1.b.c, true, false))) | global3.x);
    return 42207u;
}

fn func_2(arg_0: f32, arg_1: vec2<bool>) -> Struct_3 {
    global4 = Struct_3(true, global1.b);
    var var_0 = _wgslsmith_f_op_f32(step(-1434f, global4.b.a.x));
    let var_1 = select(30406u, ~(_wgslsmith_div_u32(func_3(), 1u) & _wgslsmith_add_u32(~global2.x, _wgslsmith_mult_u32(global2.x, global2.x))), global3.x);
    return Struct_3(arg_1.x, Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(global4.b.a * _wgslsmith_f_op_vec4_f32(-global1.b.a)))), select(~global0[_wgslsmith_index_u32(1u, 14u)] << (~u_input.a % vec2<u32>(32u)), global0[_wgslsmith_index_u32(func_3(), 14u)], !arg_1.x), global1.b.c, _wgslsmith_add_vec2_i32(select(vec2<i32>(global4.b.b.x, 0i), -vec2<i32>(1i, u_input.d), global1.b.c | global1.b.c), firstLeadingBit(firstTrailingBit(global0[_wgslsmith_index_u32(106034u, 14u)])))));
}

fn func_1() -> Struct_4 {
    var var_0 = vec2<bool>(global3.x, global4.b.c);
    var var_1 = func_2(global4.b.a.x, vec2<bool>(true, !all(select(vec2<bool>(true, global4.b.c), vec2<bool>(global3.x, true), vec2<bool>(global4.a, true)))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-global1.b.a), ~(-vec2<i32>(25794i, -global1.b.b.x)), global3.x, firstTrailingBit(firstTrailingBit(firstLeadingBit(vec2<i32>(0i, u_input.d)))));
    var_0 = select(vec2<bool>(false, false), select(!vec2<bool>(var_2.c, select(global4.b.c, global3.x, false)), vec2<bool>(var_2.c, var_2.c), !vec2<bool>(var_0.x, var_2.c)), vec2<bool>(true, true));
    global2 = min(max(max(u_input.a, ~vec2<u32>(55466u, 68525u) << (u_input.a % vec2<u32>(32u))), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.c, global2.x, u_input.c) ^ vec4<u32>(1u, 0u, global2.x, 19586u), vec4<u32>(1u, 1u, u_input.a.x, 39371u)), abs(~global2.x))), ~firstLeadingBit(vec2<u32>(1u, _wgslsmith_mult_u32(u_input.c, u_input.b))));
    return Struct_4(Struct_2(var_2.a, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(global4.b.a, var_2.a))), select(vec2<i32>(2147483647i, var_1.b.d.x), var_2.b, select(vec2<bool>(true, var_2.c), vec2<bool>(global1.b.c, true), vec2<bool>(true, var_1.b.c))), false & var_1.b.c, var_1.b.d)), Struct_3(var_2.a.x <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(697f, global1.a.x, true))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, global1.a.x, var_2.a.x, var_1.b.a.x) + vec4<f32>(339f, 2049f, var_2.a.x, global4.b.a.x)) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1.b.a.x, -1000f, var_1.b.a.x, global4.b.a.x), vec4<f32>(global1.a.x, var_2.a.x, 1026f, var_2.a.x)))), abs(-vec2<i32>(19513i, -23042i)), global1.b.c, ~global4.b.b)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global4.b.d.x;
    var var_1 = func_1();
    let var_2 = abs(countOneBits(reverseBits(vec2<u32>(_wgslsmith_clamp_u32(1u, 33939u, 6899u), 1u))));
    let var_3 = firstLeadingBit(vec3<i32>(countOneBits(1i >> (_wgslsmith_add_u32(48993u, global2.x) % 32u)), -(~_wgslsmith_mod_i32(var_1.a.b.d.x, 11600i)), 0i));
    var var_4 = Struct_4(func_1().a, Struct_3(!var_1.b.b.c, Struct_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-613f, -733f, global1.b.a.x, var_1.b.b.a.x), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(170f, -1144f, global4.b.a.x, -362f), vec4<f32>(global1.a.x, 1476f, global4.b.a.x, -160f), vec4<bool>(global4.b.c, true, false, global4.a))), vec4<bool>(global3.x, global3.x, false, false))), global4.b.b, all(!vec4<bool>(false, global3.x, var_1.a.b.c, false)), vec2<i32>(1i & global4.b.b.x, 1i))));
    let var_5 = vec4<i32>(var_1.a.b.d.x, _wgslsmith_mod_i32(u_input.d, -global1.b.b.x), var_1.a.b.b.x, var_3.x);
    let var_6 = u_input.a;
    global2 = ~(~max(reverseBits(u_input.a >> (var_6 % vec2<u32>(32u))), (u_input.a << (vec2<u32>(var_2.x, var_6.x) % vec2<u32>(32u))) << ((var_6 & u_input.a) % vec2<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(var_5), func_1().a.b.d.x ^ u_input.d, vec2<f32>(_wgslsmith_f_op_f32(602f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global4.b.a.x)) * global4.b.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.a.x * global4.b.a.x) * _wgslsmith_f_op_f32(f32(-1f) * -1124f))));
}

