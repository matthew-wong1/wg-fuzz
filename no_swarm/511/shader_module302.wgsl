struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<u32, 15>;

var<private> global2: Struct_1 = Struct_1(vec3<f32>(-2389f, 1530f, 307f), -972f, 46765u);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.a.x, 2039f)))), global0.a.zz));
    global1 = array<u32, 15>();
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-global0.a)))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b))), _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-604f + -652f)), !(true && (0u <= global0.c)))), firstLeadingBit(u_input.b));
    global2 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(837f)))), _wgslsmith_f_op_f32(min(-2381f, _wgslsmith_f_op_f32(max(-471f, global2.a.x)))), 1000f) - _wgslsmith_f_op_vec3_f32(global2.a * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-global2.a))))), -186f, global0.c);
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global2.a.x - var_0.x), var_0.x, 1578f) * vec3<f32>(_wgslsmith_div_f32(1131f, global0.b), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(global0.b + 588f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(global0.a.x, global2.b)), global2.b, _wgslsmith_f_op_f32(f32(-1f) * -576f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(149f * -330f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(var_0.x, global0.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -372f), true))))), _wgslsmith_clamp_u32(52107u, _wgslsmith_div_u32(~(~global2.c), global2.c), _wgslsmith_clamp_u32(~abs(4294967295u), 4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 45179u, global1[_wgslsmith_index_u32(38352u, 15u)], 0u) >> (vec4<u32>(1u, u_input.b, 8550u, global2.c) % vec4<u32>(32u)), ~vec4<u32>(u_input.b, 4294967295u, u_input.a.x, global1[_wgslsmith_index_u32(u_input.a.x, 15u)])))));
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1289f)));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(global2.a, _wgslsmith_div_f32(global0.a.x, _wgslsmith_f_op_f32(round(-1838f))), ~4294967295u);
    let var_1 = _wgslsmith_f_op_f32(func_3());
    let var_2 = select(_wgslsmith_div_i32(1i, firstLeadingBit(-2147483647i)) ^ _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-1i, -2147483647i, 2147483647i, -15613i), vec4<i32>(-30513i, 24487i, -1i, -57162i)), vec4<i32>(-2147483647i, -10053i, 1i, -83173i)), -1766i, all(select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), false), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false)), true))) > (countOneBits(40021i) << (reverseBits(0u | _wgslsmith_div_u32(u_input.b, u_input.a.x)) % 32u));
    let var_3 = -(~(~reverseBits(1i))) <= (1i ^ _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), (vec2<i32>(2147483647i, -1153i) << (u_input.a.xy % vec2<u32>(32u))) << (vec2<u32>(48812u, u_input.a.x) % vec2<u32>(32u))));
    var var_4 = var_0;
    return var_0;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: f32) -> Struct_1 {
    global0 = func_2();
    global0 = arg_0;
    global0 = arg_0;
    let var_0 = min(_wgslsmith_sub_vec2_u32(select(~vec2<u32>(arg_0.c, u_input.a.x), ~vec2<u32>(4294967295u, global2.c), vec2<bool>(true, true)), max(vec2<u32>(37796u, global2.c), vec2<u32>(global1[_wgslsmith_index_u32(global2.c, 15u)], 28144u))), _wgslsmith_sub_vec2_u32(~firstLeadingBit(u_input.a.yy), ~_wgslsmith_mod_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(17574u, 15u)], 0u), u_input.a.yy))) << (firstTrailingBit(~_wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, global2.c), vec2<u32>(4294967295u, 4294967295u)), ~vec2<u32>(u_input.b, u_input.b))) % vec2<u32>(32u));
    let var_1 = arg_1.x;
    return Struct_1(_wgslsmith_f_op_vec3_f32(-global2.a), -1577f, _wgslsmith_mult_u32(~global1[_wgslsmith_index_u32(36210u, 15u)], 0u));
}

fn func_1() -> Struct_1 {
    global0 = func_4(func_2(), -vec4<i32>(-1i, -abs(2147483647i), ~min(2147483647i, 2147483647i), ~33195i), _wgslsmith_f_op_f32(-global2.a.x));
    let var_0 = 33u;
    var var_1 = func_4(func_4(func_4(func_2(), _wgslsmith_sub_vec4_i32(abs(vec4<i32>(-84771i, 4349i, -10261i, -2147483647i)), vec4<i32>(1i, 1i, 1i, 1i)), 838f), select(vec4<i32>(62692i, -1i, 55268i, 17984i), vec4<i32>(1i, 9088i, -25490i, -1115i), true) | ~_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, 2147483647i, -1i, -2147483647i), vec4<i32>(30693i, 25208i, -2147483647i, 18647i)), -1537f), -vec4<i32>(-(~0i), _wgslsmith_add_i32(abs(-2147483647i), -24297i), firstTrailingBit(~7327i), 1i), global2.a.x);
    var var_2 = func_2();
    var var_3 = _wgslsmith_div_vec2_u32(u_input.a.xz, _wgslsmith_clamp_vec2_u32(~vec2<u32>(73855u, 0u) & ~_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, global0.c), vec2<u32>(var_2.c, var_2.c), vec2<u32>(u_input.a.x, global0.c)), vec2<u32>(4294967295u, _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(4294967295u, var_0)), countOneBits(u_input.a.yx))), _wgslsmith_add_vec2_u32(~select(u_input.a.xy, vec2<u32>(var_0, 80062u), vec2<bool>(false, false)), (u_input.a.xy | u_input.a.zz) << (vec2<u32>(var_2.c, global0.c) % vec2<u32>(32u)))));
    return func_2();
}

fn func_5(arg_0: vec2<u32>, arg_1: i32, arg_2: vec4<i32>, arg_3: Struct_1) -> Struct_1 {
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a.x * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global2.a.x + global0.b))))));
    global0 = func_5(vec2<u32>(global2.c | 6272u, _wgslsmith_dot_vec2_u32(abs(u_input.a.zx) << (countOneBits(u_input.a.yz) % vec2<u32>(32u)), ~u_input.a.zz)), _wgslsmith_add_i32(-_wgslsmith_div_i32(-1i, ~7922i), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -40342i, -43152i), vec3<i32>(0i, 2147483647i, 3243i))), vec2<i32>(1i, 1i))), -vec4<i32>(1i, 1i, 1i, 1i), func_1());
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2.a)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_5(u_input.a.zz, 0i, vec4<i32>(2147483647i, 1i, -1i, -10550i), Struct_1(vec3<f32>(1221f, global0.b, -102f), 1355f, u_input.b)).b) + _wgslsmith_f_op_f32(global0.a.x * 333f)), -1844f)), _wgslsmith_div_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(_wgslsmith_div_u32(864u, u_input.b), ~global0.c), _wgslsmith_mod_u32(1u, 1u)), 0u));
    global0 = var_1;
    let var_2 = var_1;
    var var_3 = global1[_wgslsmith_index_u32(41210u << (1u % 32u), 15u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_2.b), global1[_wgslsmith_index_u32(~(0u << (func_5(~u_input.a.yy, _wgslsmith_add_i32(2147483647i, 0i), vec4<i32>(1i, 1i, 1i, 1i), var_2).c % 32u)), 15u)], max(-vec3<i32>(1i, -45053i, 1i), reverseBits(vec3<i32>(1i, 1i, 1i))));
}

