struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<i32>,
    c: bool,
    d: vec3<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: vec4<f32>) -> vec3<u32> {
    var var_0 = Struct_3(global0.b.xx, arg_0, -abs(vec4<i32>(~(-7957i), 0i, _wgslsmith_add_i32(-4059i, arg_0.b.x), ~u_input.a)));
    var var_1 = !vec4<bool>(any(vec3<bool>(select(true, false, false), any(vec4<bool>(true, var_0.b.c, true, var_0.b.c)), any(vec4<bool>(var_0.b.c, global0.c, arg_0.c, arg_0.c)))), true, global0.c, _wgslsmith_add_u32(~arg_0.a.x, 1u) <= 4372u);
    var_0 = Struct_3(global0.b.yx, Struct_2(arg_0.a, arg_0.b, all(!vec4<bool>(var_1.x, var_0.b.c, global0.c, var_0.b.c)), arg_0.d, Struct_1(~_wgslsmith_mod_u32(0u, 4360u))), var_0.c);
    let var_2 = Struct_3(vec2<i32>(reverseBits(var_0.b.b.x), reverseBits(var_0.c.x)), var_0.b, select(var_0.c, var_0.c, vec4<bool>(!var_0.b.c, global0.c, false, !any(var_1.wwy))));
    global0 = arg_0;
    return vec3<u32>(~global0.a.x, ~(~abs(1u) >> (~min(var_2.b.e.a, 83005u) % 32u)), global0.a.x);
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: Struct_2) -> i32 {
    let var_0 = Struct_1(~_wgslsmith_mod_u32(arg_1, _wgslsmith_add_u32(arg_1, 18810u)));
    let var_1 = vec2<i32>(46737i, firstTrailingBit(global0.b.x));
    global0 = arg_0;
    let var_2 = ~arg_0.b.x;
    let var_3 = _wgslsmith_clamp_u32(_wgslsmith_add_u32(1u, ~var_0.a << (arg_2.e.a % 32u)), _wgslsmith_div_u32(arg_1, arg_0.a.x), _wgslsmith_add_u32(arg_0.a.x, 4294967295u));
    return 0i;
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: bool, arg_3: i32) -> f32 {
    var var_0 = false;
    var var_1 = global0.d.x;
    let var_2 = vec4<bool>(global0.d.x == _wgslsmith_div_f32(-659f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.d.x)))), ~0u == global0.e.a, true, global0.a.x > reverseBits(firstLeadingBit(_wgslsmith_div_u32(arg_0.a, 1u))));
    var_0 = ~firstTrailingBit(u_input.a) > func_4(Struct_2(~global0.a, -(~global0.b), true, vec3<f32>(-922f, global0.d.x, global0.d.x), arg_0), ~4294967295u, Struct_2(countOneBits(func_3(Struct_2(global0.a, global0.b, true, vec3<f32>(global0.d.x, -841f, 1740f), global0.e), vec4<f32>(global0.d.x, global0.d.x, -1697f, -972f))), countOneBits(firstLeadingBit(global0.b)), var_2.x, global0.d, arg_0));
    let var_3 = arg_3;
    return _wgslsmith_f_op_f32(-global0.d.x);
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: vec2<i32>) -> Struct_1 {
    global0 = Struct_2(firstLeadingBit(global0.a), firstLeadingBit(vec3<i32>(-(i32(-1i) * -22798i), -_wgslsmith_add_i32(global0.b.x, arg_2.x), arg_2.x)), !all(vec2<bool>(true, !global0.c)), global0.d, global0.e);
    global0 = Struct_2(global0.a, _wgslsmith_sub_vec3_i32(vec3<i32>(func_4(Struct_2(vec3<u32>(18508u, global0.e.a, 0u), global0.b, true, global0.d, Struct_1(arg_1.a)), _wgslsmith_clamp_u32(global0.e.a, global0.a.x, 34824u), Struct_2(global0.a, vec3<i32>(global0.b.x, 1i, -35217i), global0.c, vec3<f32>(global0.d.x, arg_0, -1219f), Struct_1(1u))), -_wgslsmith_dot_vec2_i32(arg_2, arg_2), arg_2.x), _wgslsmith_add_vec3_i32(firstTrailingBit(abs(global0.b)), vec3<i32>(max(arg_2.x, 65990i), -arg_2.x, arg_2.x))), any(select(select(!vec4<bool>(global0.c, global0.c, true, global0.c), !vec4<bool>(global0.c, global0.c, true, true), global0.c), select(!vec4<bool>(true, true, global0.c, global0.c), !vec4<bool>(false, global0.c, global0.c, true), vec4<bool>(global0.c, true, true, true)), 1387u != _wgslsmith_div_u32(global0.a.x, global0.a.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1570f, _wgslsmith_f_op_f32(global0.d.x - _wgslsmith_div_f32(980f, arg_0)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(785f, 1315f) - _wgslsmith_f_op_f32(arg_0 - 1000f))) - _wgslsmith_f_op_vec3_f32(abs(global0.d))), Struct_1(4294967295u));
    global0 = Struct_2(~vec3<u32>(1u, global0.a.x, 3159u), _wgslsmith_mult_vec3_i32(abs(-min(global0.b, vec3<i32>(global0.b.x, 1i, u_input.b))), firstLeadingBit(_wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(global0.b, global0.b), global0.b & vec3<i32>(u_input.b, arg_2.x, -24239i)))), global0.c, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(1135f, -712f))), -1633f, arg_0)), global0.e);
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, arg_0, arg_0)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-161f, arg_0, global0.d.x, 952f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.d.x, -1000f, arg_0, 342f))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, 1281f, arg_0)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.d.x, arg_0, global0.d.x, global0.d.x))))) + vec4<f32>(arg_0, -362f, arg_0, -976f)));
    var var_1 = vec3<bool>(any(vec3<bool>(global0.c, global0.c, any(!vec4<bool>(global0.c, global0.c, global0.c, true)))), global0.c, true);
    return arg_1;
}

fn func_1(arg_0: vec3<f32>) -> Struct_2 {
    var var_0 = func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_1(global0.e.a), 2147483647i, true, -2147483647i)) * 455f)), Struct_1(~_wgslsmith_mult_u32(~20513u, global0.e.a)), global0.b.yy);
    global0 = Struct_2(~countOneBits(vec3<u32>(min(34842u, var_0.a), 43881u, 4294967295u)), global0.b, true, vec3<f32>(_wgslsmith_f_op_f32(func_2(func_5(_wgslsmith_f_op_f32(global0.d.x - arg_0.x), Struct_1(var_0.a), countOneBits(global0.b.xx)), -countOneBits(8952i), !select(true, global0.c, global0.c), 2545i)), global0.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(global0.d.x)), _wgslsmith_f_op_f32(f32(-1f) * -529f))))), Struct_1(~(~_wgslsmith_mod_u32(global0.a.x, global0.a.x))));
    var var_1 = 590f;
    var var_2 = min(select(~_wgslsmith_mod_vec3_u32(global0.a, ~global0.a), _wgslsmith_clamp_vec3_u32(global0.a, reverseBits(firstTrailingBit(vec3<u32>(7993u, var_0.a, var_0.a))), ~global0.a), !select(!vec3<bool>(global0.c, global0.c, true), vec3<bool>(false, true, false), true)), ~global0.a << (abs(_wgslsmith_div_vec3_u32(global0.a << (vec3<u32>(1u, 53375u, global0.a.x) % vec3<u32>(32u)), reverseBits(vec3<u32>(0u, 0u, 0u)))) % vec3<u32>(32u)));
    let var_3 = reverseBits(var_2.x);
    return Struct_2(_wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(~(~vec3<u32>(var_3, var_2.x, var_2.x)), ~_wgslsmith_mod_vec3_u32(vec3<u32>(var_2.x, 4294967295u, 30770u), global0.a)), ~vec3<u32>(var_0.a >> (var_3 % 32u), ~global0.e.a, 4294967295u)), reverseBits(vec3<i32>(-u_input.b | 1i, _wgslsmith_mod_i32(1i ^ u_input.a, -52155i), 43293i)), true, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1548f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * -1000f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.x - -1096f), -645f)))), Struct_1(~62865u >> (firstTrailingBit(30383u) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(_wgslsmith_mult_vec3_u32(~(~(~vec3<u32>(1u, global0.a.x, 43170u))), _wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(1u, 0u), ~global0.a.x, 4294967295u >> (global0.a.x % 32u)), ~global0.a)), global0.b, !(!any(select(vec4<bool>(global0.c, false, false, false), vec4<bool>(true, true, false, global0.c), global0.c))), global0.d, global0.e);
    let var_0 = func_1(_wgslsmith_f_op_vec3_f32(-global0.d));
    let var_1 = global0.d.x;
    let var_2 = func_5(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-593f, var_0.d.x)) * global0.d.x) + _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(min(var_0.d.x, 1743f))))))), var_0.e, ~global0.b.xz);
    var var_3 = max(_wgslsmith_sub_i32(-_wgslsmith_sub_i32(var_0.b.x, 42073i), 15600i), -1i);
    var var_4 = ~var_0.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(var_0.d.x)), var_0.d.x)) - _wgslsmith_f_op_f32(sign(func_1(var_0.d).d.x))) + 919f), func_1(global0.d).d.x, _wgslsmith_f_op_vec3_f32(-global0.d), func_3(var_0, vec4<f32>(global0.d.x, _wgslsmith_f_op_f32(global0.d.x + _wgslsmith_f_op_f32(-var_0.d.x)), _wgslsmith_f_op_f32(-global0.d.x), -1256f)).x);
}

