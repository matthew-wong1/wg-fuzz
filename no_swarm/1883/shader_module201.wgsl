struct Struct_1 {
    a: vec3<bool>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: vec4<bool>,
}

struct Struct_5 {
    a: vec2<i32>,
    b: vec4<u32>,
    c: Struct_2,
    d: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<Struct_3, 14>;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: i32, arg_1: Struct_4) -> vec3<bool> {
    global1 = array<Struct_3, 14>();
    var var_0 = ~abs(vec2<i32>(0i, global0.x));
    var var_1 = 361f;
    global0 = vec2<i32>(8279i, ~_wgslsmith_dot_vec2_i32(vec2<i32>(global0.x, -6652i) & _wgslsmith_mult_vec2_i32(vec2<i32>(19541i, arg_0), vec2<i32>(26575i, 2147483647i)), abs(select(vec2<i32>(-1i, -1i), vec2<i32>(arg_0, var_0.x), arg_1.b.a.xy))));
    let var_2 = arg_1.a;
    return !(!vec3<bool>(~1i == arg_0, false, !any(arg_1.b.a)));
}

fn func_2() -> vec4<bool> {
    let var_0 = Struct_2(Struct_1(!func_3(select(-2147483647i, global0.x, false), Struct_4(false, Struct_1(vec3<bool>(false, false, true), vec3<u32>(42918u, u_input.a, u_input.a)), vec4<bool>(true, true, true, false))), abs(vec3<u32>(1u, ~u_input.a, firstTrailingBit(12303u)))));
    var var_1 = var_0.a.b.yy;
    let var_2 = var_0;
    var var_3 = var_0.a.a.x;
    var_3 = !any(vec4<bool>(false, any(var_0.a.a) || true, all(vec3<bool>(true, true, true)), true));
    return select(vec4<bool>(var_2.a.a.x, var_0.a.a.x, (i32(-1i) * -23828i) > global0.x, !(_wgslsmith_f_op_f32(round(1983f)) <= _wgslsmith_f_op_f32(1022f + -158f))), !vec4<bool>(var_2.a.a.x, ~var_0.a.b.x >= 1u, true, func_3(-1i, Struct_4(false, var_0.a, vec4<bool>(true, var_0.a.a.x, var_0.a.a.x, true))).x), false);
}

fn func_1() -> Struct_1 {
    global0 = select(firstLeadingBit(_wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(~vec2<i32>(global0.x, -25986i), ~vec2<i32>(-2147483647i, global0.x)), abs(_wgslsmith_mod_vec2_i32(vec2<i32>(global0.x, -17394i), vec2<i32>(global0.x, global0.x))))), _wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_div_i32(_wgslsmith_sub_i32(global0.x, global0.x), 13352i), -1i), _wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(~vec2<i32>(1i, global0.x), -vec2<i32>(global0.x, global0.x)), vec2<i32>(abs(-1659i), _wgslsmith_clamp_i32(-709i, -29675i, global0.x))), firstTrailingBit(_wgslsmith_clamp_vec2_i32(vec2<i32>(global0.x, -46955i), vec2<i32>(2147483647i, 34458i), vec2<i32>(global0.x, -7661i))) ^ (-vec2<i32>(global0.x, global0.x) | vec2<i32>(global0.x, 2147483647i))), all(select(vec4<bool>(false, true, true, false), vec4<bool>(true, any(vec4<bool>(false, true, true, true)), true, true), !func_2())));
    var var_0 = Struct_2(Struct_1(vec3<bool>(true, true, true), countOneBits(min(vec3<u32>(u_input.a, u_input.a, 58824u), abs(vec3<u32>(u_input.a, u_input.a, 37484u))))));
    var_0 = Struct_2(Struct_1(var_0.a.a, abs(_wgslsmith_mult_vec3_u32(select(vec3<u32>(var_0.a.b.x, 1u, 4294967295u), var_0.a.b, var_0.a.a.x), var_0.a.b >> (var_0.a.b % vec3<u32>(32u))))));
    var var_1 = Struct_5(_wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(-40676i, ~global0.x), global0.x), vec2<i32>(2147483647i, _wgslsmith_div_i32(16808i, global0.x)) >> (var_0.a.b.xx % vec2<u32>(32u)), vec2<i32>(global0.x, _wgslsmith_sub_i32(~global0.x, -1i))), _wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(15541u, u_input.a, 1u, u_input.a), vec4<u32>(var_0.a.b.x, var_0.a.b.x, 0u, 20357u)), ~vec4<u32>(u_input.a, var_0.a.b.x, var_0.a.b.x, 18127u) >> ((vec4<u32>(4294967295u, 0u, var_0.a.b.x, u_input.a) >> (vec4<u32>(u_input.a, 1u, 20654u, 108655u) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(abs(vec4<u32>(25238u, 1u, 3823u, 1u)), abs(vec4<u32>(var_0.a.b.x, 4294967295u, u_input.a, 577u)))), vec4<u32>(96523u, ~38857u, firstLeadingBit(1u), ~_wgslsmith_clamp_u32(12022u, u_input.a, var_0.a.b.x))), Struct_2(var_0.a), max(global0.x, -43672i));
    var_1 = Struct_5(select(_wgslsmith_div_vec2_i32(vec2<i32>(i32(-1i) * -1i, -28314i), vec2<i32>(-2147483647i, -20113i)), vec2<i32>(0i, _wgslsmith_div_i32(var_1.d, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 19798i), vec2<i32>(-1i, -1i)))), !(!any(vec3<bool>(var_0.a.a.x, false, var_0.a.a.x)))), ~(~vec4<u32>(22063u, ~var_0.a.b.x, var_0.a.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a.b.x, 1764u), vec2<u32>(53144u, 4294967295u)))), Struct_2(Struct_1(var_0.a.a, _wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.a, 4294967295u, 1u), vec3<u32>(u_input.a, var_0.a.b.x, 4294967295u)))), _wgslsmith_div_i32(-12338i, ~(~global0.x)));
    return var_1.c.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(Struct_2(func_1()), ~global0.x);
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1870f + -3662f))), 665f)))));
    let var_2 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, var_1)))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1184f, var_1))))));
    let var_3 = func_1();
    global0 = reverseBits((firstLeadingBit(vec2<i32>(global0.x, var_0.b) << (var_3.b.zx % vec2<u32>(32u))) & (vec2<i32>(-1i) * -vec2<i32>(-11417i, var_0.b))) >> (_wgslsmith_mod_vec2_u32(var_0.a.a.b.zx, ~vec2<u32>(33813u, 7201u) ^ var_3.b.zx) % vec2<u32>(32u)));
    var var_4 = vec2<i32>(47364i, 1i) & -((_wgslsmith_mod_vec2_i32(vec2<i32>(global0.x, var_0.b), vec2<i32>(global0.x, -106291i)) & reverseBits(vec2<i32>(global0.x, -7540i))) << (reverseBits(countOneBits(vec2<u32>(u_input.a, 0u))) % vec2<u32>(32u)));
    global1 = array<Struct_3, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(88254u);
}

