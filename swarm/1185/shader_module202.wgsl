struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: u32,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 18>;

var<private> global1: Struct_1;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> vec2<bool> {
    global1 = Struct_1(_wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(~global1.d.x, global1.d.x, 72018u, global1.c), max(vec4<u32>(global1.a.x, global1.d.x, 0u, 4294967295u) | u_input.a, reverseBits(vec4<u32>(global1.a.x, global1.a.x, global1.a.x, 1u)))), vec4<u32>(u_input.a.x, max(47905u, u_input.a.x), firstLeadingBit(~global1.d.x), ~(23845u << (u_input.a.x % 32u))), vec4<u32>(global1.c, firstTrailingBit(47703u), global1.c | firstLeadingBit(global1.c), 4294967295u)), !(false | (global0[_wgslsmith_index_u32(global1.d.x, 18u)] != _wgslsmith_div_f32(-1364f, global0[_wgslsmith_index_u32(54570u, 18u)]))), u_input.a.x, vec4<u32>(~u_input.a.x, ~(0u ^ global1.d.x) ^ global1.c, ~1u, ~reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(64629u, u_input.a.x)))));
    global1 = Struct_1(vec4<u32>(u_input.a.x, 46399u, max(u_input.a.x & _wgslsmith_add_u32(global1.d.x, 1u), 22621u), 19759u), -(~27481i) > ~select(28743i, ~2834i, !global1.b), _wgslsmith_mult_u32(abs(~0u), global1.a.x), _wgslsmith_mult_vec4_u32(select(vec4<u32>(~9161u, global1.a.x, ~global1.d.x, global1.d.x), global1.d, vec4<bool>(true, true, select(false, global1.b, global1.b), true)), global1.a));
    let var_0 = _wgslsmith_f_op_f32(step(797f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -781f))));
    global1 = Struct_1(global1.a, global1.b, ~1u >> (_wgslsmith_mult_u32(global1.a.x, abs(_wgslsmith_clamp_u32(global1.c, 32587u, 1u))) % 32u), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, ~1u, 1u >> (global1.d.x % 32u)), countOneBits(vec4<u32>(reverseBits(u_input.a.x), _wgslsmith_dot_vec4_u32(global1.d, vec4<u32>(u_input.a.x, 4294967295u, 38595u, global1.a.x)), countOneBits(global1.d.x), _wgslsmith_mult_u32(0u, u_input.a.x)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 18u)])), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-1354f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(406f)) - var_0), _wgslsmith_f_op_f32(f32(-1f) * -1141f)), vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_0, var_0))), 1000f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a.x << (162u % 32u), 18u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 18u)] + global0[_wgslsmith_index_u32(4294967295u, 18u)]) + _wgslsmith_f_op_f32(sign(var_0))))))));
    return select(vec2<bool>(all(!select(vec3<bool>(global1.b, global1.b, global1.b), vec3<bool>(global1.b, true, false), vec3<bool>(false, global1.b, true))), false == !all(vec4<bool>(global1.b, global1.b, global1.b, global1.b))), select(select(!select(vec2<bool>(global1.b, global1.b), vec2<bool>(true, true), global1.b), select(!vec2<bool>(global1.b, false), select(vec2<bool>(false, false), vec2<bool>(global1.b, global1.b), global1.b), vec2<bool>(true, true)), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(global1.b, true), true), !vec2<bool>(false, global1.b))), vec2<bool>(select(all(vec3<bool>(global1.b, true, false)), global1.b, true), global1.b && true), !(!vec2<bool>(global1.b, global1.b))), vec2<bool>(!(_wgslsmith_f_op_f32(-var_0) > 1988f), true));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    global0 = array<f32, 18>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -236f)));
    let var_1 = select(vec2<bool>(!arg_1.b, false), vec2<bool>(true, !select(true, false | arg_0.b, global1.b == true)), !all(func_3()));
    var var_2 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(156f, global0[_wgslsmith_index_u32(1u, 18u)], 278f)))) * vec3<f32>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(arg_0.d.ww, u_input.a.zz), 18u)], _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(arg_1.c, 18u)] * -268f), 436f))))));
    var var_3 = select(!(arg_0.c == _wgslsmith_div_u32(u_input.a.x, ~global1.d.x)), !arg_0.b, true);
    return Struct_1(~_wgslsmith_div_vec4_u32(global1.a, _wgslsmith_sub_vec4_u32(~global1.d, vec4<u32>(u_input.a.x, 77163u, arg_0.c, 48213u))), false, _wgslsmith_add_u32(8935u, 29624u), ~vec4<u32>(28618u, global1.d.x, 1u, ~27953u));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    var var_0 = 1u;
    global1 = func_2(Struct_1(vec4<u32>(0u, global1.d.x, 73023u, ~_wgslsmith_mod_u32(0u, global1.d.x)), false, 16416u, abs(vec4<u32>(u_input.a.x, _wgslsmith_dot_vec4_u32(arg_0.a, arg_2.a), arg_0.d.x >> (1u % 32u), global1.d.x | 4294967295u))), Struct_1(~max(vec4<u32>(10641u, 4294967295u, arg_0.c, global1.c), u_input.a), true, abs(~global1.c), vec4<u32>(max(global1.c << (global1.a.x % 32u), arg_2.a.x), global1.d.x, arg_0.c, global1.d.x)));
    global0 = array<f32, 18>();
    let var_1 = Struct_1(arg_0.a, false, global1.c, ~(~func_2(arg_0, Struct_1(vec4<u32>(0u, u_input.a.x, 56004u, 1u), true, u_input.a.x, u_input.a)).d));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a.x >> (12889u % 32u), 18u)] * 1075f))) - 754f));
    return var_1;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<u32>) -> u32 {
    global1 = func_4(Struct_1(~_wgslsmith_add_vec4_u32(arg_1 ^ vec4<u32>(global1.c, arg_1.x, 0u, 1u), vec4<u32>(global1.a.x, 0u, arg_0.d.x, 4294967295u)), true, 1u, _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(u_input.a, ~vec4<u32>(1u, global1.d.x, arg_0.a.x, u_input.a.x)), _wgslsmith_sub_vec4_u32(~vec4<u32>(global1.d.x, 33091u, global1.a.x, 49753u), max(vec4<u32>(20733u, 39568u, 4294967295u, 26680u), vec4<u32>(u_input.a.x, global1.d.x, arg_1.x, 87908u))))), all(!select(vec3<bool>(global1.b, global1.b, true), vec3<bool>(false, true, global1.b), !vec3<bool>(false, false, arg_0.b))), func_2(arg_0, arg_0));
    var var_0 = !vec3<bool>(true, !arg_0.b, !(!arg_0.b));
    let var_1 = !all(vec3<bool>(func_3().x, global1.b, all(var_0.yz) | any(vec4<bool>(true, var_0.x, global1.b, false))));
    global1 = func_2(Struct_1(reverseBits(vec4<u32>(min(u_input.a.x, 40201u), global1.c, 0u, arg_0.d.x)), !var_0.x, abs(~16740u), select(~firstTrailingBit(u_input.a), ~vec4<u32>(69162u, arg_1.x, 0u, arg_1.x), arg_0.b)), func_4(Struct_1(global1.d, arg_0.b, _wgslsmith_mod_u32(_wgslsmith_div_u32(global1.d.x, u_input.a.x), arg_0.a.x << (u_input.a.x % 32u)), u_input.a >> (~arg_0.d % vec4<u32>(32u))), arg_0.b, Struct_1(firstLeadingBit(~arg_1), func_2(Struct_1(u_input.a, global1.b, global1.c, u_input.a), arg_0).b, 4294967295u, arg_0.d)));
    var var_2 = arg_0;
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 18>();
    var var_0 = vec2<i32>(reverseBits(~_wgslsmith_clamp_i32(i32(-1i) * -2147483647i, max(0i, -2147483647i), max(-68645i, -1i))), _wgslsmith_sub_i32(1i, _wgslsmith_div_i32(~1i, 1i)));
    let var_1 = 0u & (~func_1(Struct_1(vec4<u32>(1u, u_input.a.x, 1u, u_input.a.x), true, global1.a.x, vec4<u32>(98772u, 15528u, u_input.a.x, 57301u)), vec4<u32>(20446u, 81961u, u_input.a.x, global1.c) | vec4<u32>(u_input.a.x, 1u, u_input.a.x, 30261u)) ^ func_1(Struct_1(_wgslsmith_add_vec4_u32(global1.a, global1.d), func_4(Struct_1(vec4<u32>(global1.a.x, global1.c, 10754u, u_input.a.x), global1.b, 1u, vec4<u32>(u_input.a.x, 4294967295u, 2719u, global1.a.x)), global1.b, Struct_1(global1.d, global1.b, 50537u, vec4<u32>(0u, global1.a.x, global1.d.x, 21487u))).b, global1.d.x, vec4<u32>(95891u, 67468u, 45951u, 0u)), _wgslsmith_sub_vec4_u32(vec4<u32>(59652u, u_input.a.x, global1.c, 4294967295u), vec4<u32>(global1.c, u_input.a.x, 36488u, 35852u))));
    var_0 = reverseBits(select(vec2<i32>(countOneBits(var_0.x), 0i), ~_wgslsmith_div_vec2_i32(vec2<i32>(-1473i, var_0.x), vec2<i32>(var_0.x, var_0.x)) | countOneBits(_wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, 2147483647i), vec2<i32>(15224i, var_0.x))), !all(select(vec3<bool>(false, true, true), vec3<bool>(true, global1.b, false), true))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(-1i), firstLeadingBit(abs(vec2<u32>(23592u, global1.d.x))), u_input.a.x);
}

