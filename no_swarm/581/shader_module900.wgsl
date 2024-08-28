struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_1;

var<private> global2: array<u32, 22> = array<u32, 22>(1u, 56707u, 77310u, 44093u, 1u, 1u, 4294967295u, 1u, 1u, 1u, 19206u, 95642u, 4294967295u, 35506u, 62181u, 70831u, 34706u, 52145u, 101223u, 1u, 96101u, 1u);

var<private> global3: array<vec4<u32>, 2>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_2() -> vec3<bool> {
    global2 = array<u32, 22>();
    let var_0 = select(global1.a, 0i, global0.c.a < global0.c.a);
    let var_1 = Struct_1(reverseBits(i32(-1i) * -_wgslsmith_mod_i32(-10691i, var_0)));
    global1 = Struct_1(24723i);
    var var_2 = global1.a;
    return vec3<bool>(true, select(all(vec2<bool>(true, any(vec3<bool>(true, false, true)))), _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 22u)], 2u)], vec4<u32>(92683u, 1u, 1u, u_input.a.x)), _wgslsmith_dot_vec2_u32(u_input.a.yx, u_input.a.zx)) > 1u, all(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)))), false);
}

fn func_3(arg_0: Struct_2) -> vec4<bool> {
    global2 = array<u32, 22>();
    global1 = Struct_1(~(i32(-1i) * -16578i));
    global1 = global0.c;
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1027f, 106f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b, -1294f, 153f)), vec3<bool>(true, true, true))))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(round(arg_0.b)), _wgslsmith_f_op_f32(min(386f, -219f)), _wgslsmith_f_op_f32(-arg_0.b)))));
    var var_1 = arg_0.c;
    return vec4<bool>(true, _wgslsmith_f_op_f32(abs(var_0.x)) <= global0.b, any(!select(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), true), vec3<bool>(false, false, true), false)), !(!(!any(vec3<bool>(false, true, true)))));
}

fn func_1(arg_0: f32) -> Struct_1 {
    var var_0 = !select(vec4<bool>(all(func_2()), global0.b < _wgslsmith_f_op_f32(-global0.b), true, any(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false)))), select(select(func_3(Struct_2(15499u, global0.b, Struct_1(0i))), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), true), true), vec4<bool>(any(vec4<bool>(true, false, true, true)), false, all(vec3<bool>(true, true, true)), true), any(vec4<bool>(false, false, true, true)) & false), vec4<bool>(true, true, true, true));
    global0 = Struct_2(10244u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1307f, _wgslsmith_div_f32(global0.b, 367f))) * 145f), global0.c);
    var var_1 = Struct_2(~_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(abs(global0.a), 29242u, 0u)), global0.b, Struct_1(-8732i));
    var var_2 = (-4002i | ~global0.c.a) > -34257i;
    var_1 = Struct_2(~select(_wgslsmith_dot_vec4_u32(reverseBits(global3[_wgslsmith_index_u32(48658u, 2u)]), global3[_wgslsmith_index_u32(~global0.a, 2u)]), ~reverseBits(var_1.a), false), global0.b, Struct_1(-12758i));
    return Struct_1(_wgslsmith_add_i32(global0.c.a, _wgslsmith_div_i32(-select(global1.a, global0.c.a, var_0.x), 37858i)));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: vec2<u32>) -> vec2<u32> {
    let var_0 = any(vec2<bool>(true, _wgslsmith_clamp_u32(11696u, 51396u, u_input.a.x) != 29624u)) || (arg_1 >= reverseBits(~_wgslsmith_dot_vec2_u32(u_input.a.yx, u_input.a.xy)));
    global2 = array<u32, 22>();
    let var_1 = ~arg_0.a;
    return vec2<u32>(17345u, _wgslsmith_div_u32(_wgslsmith_add_u32(~u_input.a.x >> (global2[_wgslsmith_index_u32(42776u, 22u)] % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(53627u, u_input.a.x, 10338u, arg_1) ^ global3[_wgslsmith_index_u32(1u, 2u)], vec4<u32>(global0.a, arg_2.x, 0u, 18855u))), ~(13561u << (global2[_wgslsmith_index_u32(1u, 22u)] % 32u))));
}

fn func_5(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec2<u32>, arg_3: Struct_1) -> Struct_2 {
    var var_0 = Struct_1(func_1(_wgslsmith_f_op_f32(exp2(global0.b))).a);
    var var_1 = Struct_2(4294967295u, _wgslsmith_f_op_f32(497f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.b, global0.b)))))), Struct_1(-25678i));
    var var_2 = Struct_2(select(global2[_wgslsmith_index_u32(global0.a, 22u)], ~(~(~33074u)), all(vec4<bool>(true, true, true, true))), 1822f, func_1(-759f));
    global0 = Struct_2(firstTrailingBit(0u), var_1.b, Struct_1(43738i));
    let var_3 = min(arg_1.x, 0i) >> (arg_2.x % 32u);
    return Struct_2(_wgslsmith_dot_vec2_u32(vec2<u32>(abs(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 22u)], 22u)]), abs(global2[_wgslsmith_index_u32(1u, 22u)])), vec2<u32>(abs(0u), global2[_wgslsmith_index_u32(13466u, 22u)] & global2[_wgslsmith_index_u32(1u, 22u)])) >> (~(var_1.a ^ 54296u) % 32u), _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.b, _wgslsmith_f_op_f32(global0.b - var_2.b)))), arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(-1i);
    global0 = func_5(global0.c, _wgslsmith_add_vec3_i32(abs(~vec3<i32>(global1.a, var_0.a, -2147483647i) ^ _wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, global0.c.a, global1.a), vec3<i32>(var_0.a, 12985i, global0.c.a))), select(~(-vec3<i32>(global1.a, var_0.a, global1.a)), vec3<i32>(~global1.a, var_0.a, global0.c.a), vec3<bool>(true, true, true))), func_4(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.b, global0.b)))), global0.a, _wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(~u_input.a.zx, vec2<u32>(global2[_wgslsmith_index_u32(0u, 22u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global0.a, 22u)], 22u)]), vec2<u32>(0u, global2[_wgslsmith_index_u32(global0.a, 22u)]) & u_input.a.yy), u_input.a.xz)), Struct_1(-1i));
    let var_1 = func_5(var_0, ~_wgslsmith_div_vec3_i32(~vec3<i32>(global0.c.a, 0i, 1682i), firstTrailingBit(vec3<i32>(global1.a, global0.c.a, -42153i) ^ vec3<i32>(2147483647i, 23917i, global0.c.a))), ~abs(vec2<u32>(u_input.a.x, 58113u) & u_input.a.xy), var_0);
    let var_2 = false;
    global3 = array<vec4<u32>, 2>();
    let var_3 = Struct_1(max(~global0.c.a, countOneBits(-(~13956i))));
    let var_4 = func_1(-1252f);
    let x = u_input.a;
    s_output = StorageBuffer(global1.a, _wgslsmith_dot_vec3_i32(select(_wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-15419i, 1i, 1i), vec3<i32>(var_0.a, -1i, var_1.c.a)), vec3<i32>(var_1.c.a, -25574i, 0i)), -vec3<i32>(-1i, 1i, var_1.c.a) >> (firstTrailingBit(u_input.a) % vec3<u32>(32u)), var_2), vec3<i32>(func_5(var_1.c, -vec3<i32>(var_4.a, -2147483647i, var_4.a), u_input.a.zx >> (vec2<u32>(1u, 4946u) % vec2<u32>(32u)), func_5(Struct_1(global1.a), vec3<i32>(global1.a, global1.a, 2147483647i), u_input.a.xz, var_1.c).c).c.a, -2147483647i, global1.a)), global0.c.a);
}

