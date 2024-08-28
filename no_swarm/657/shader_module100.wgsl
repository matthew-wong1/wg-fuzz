struct Struct_1 {
    a: bool,
    b: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: Struct_1,
    d: vec2<i32>,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 22>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: Struct_3) -> bool {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-229f, _wgslsmith_f_op_f32(max(-1000f, -1335f)))), _wgslsmith_f_op_f32(-937f + 1552f))) > 1075f, arg_3.b, arg_0.c, vec2<i32>(max(arg_0.d.x, min(arg_1.x, arg_3.d.x) << (arg_3.e % 32u)), 0i), _wgslsmith_dot_vec2_u32(arg_0.c.b.xz, ~vec2<u32>(42471u, 1u)));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(145f, -389f))) + _wgslsmith_f_op_f32(f32(-1f) * -742f))), _wgslsmith_div_f32(2678f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(1f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-670f, _wgslsmith_div_f32(100f, -594f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -251f), -109f, false & arg_2.a)))))), _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-559f, -221f)))))));
    global0 = array<bool, 22>();
    let var_2 = var_0.c;
    var var_3 = Struct_3(true, !global0[_wgslsmith_index_u32(u_input.d, 22u)], Struct_1(!(!all(vec2<bool>(true, false))), var_0.c.b), _wgslsmith_div_vec2_i32(-arg_1.yx, u_input.b.xy), ~arg_3.e);
    return true != select(true, any(!(!vec4<bool>(var_2.a, arg_3.c.a, arg_3.b, var_0.c.a))), all(select(select(vec3<bool>(true, var_3.c.a, arg_3.a), vec3<bool>(true, false, true), vec3<bool>(true, arg_2.a, false)), select(vec3<bool>(true, global0[_wgslsmith_index_u32(var_2.b.x, 22u)], true), vec3<bool>(true, var_3.b, var_0.a), vec3<bool>(true, true, var_2.a)), all(vec2<bool>(arg_0.b, var_2.a)))));
}

fn func_2(arg_0: i32, arg_1: bool) -> bool {
    var var_0 = Struct_1(func_3(Struct_3(any(vec3<bool>(true, true, true)), false, Struct_1(!global0[_wgslsmith_index_u32(28323u, 22u)], _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d, 4294967295u, 4294967295u, u_input.d), vec4<u32>(u_input.d, u_input.d, u_input.d, u_input.d))), vec2<i32>(-25792i, arg_0), ~(u_input.d & u_input.d)), vec4<i32>(-3896i, arg_0, -46861i, u_input.c.x), Struct_1(!arg_1, countOneBits(~vec4<u32>(u_input.d, 0u, 70152u, u_input.d))), Struct_3(_wgslsmith_f_op_f32(round(-994f)) < 401f, true, Struct_1(true && arg_1, ~vec4<u32>(u_input.d, 77945u, 0u, u_input.d)), _wgslsmith_div_vec2_i32(~vec2<i32>(u_input.c.x, -1i), u_input.e), 4294967295u)), reverseBits(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.d, 4316u, u_input.d, u_input.d), firstLeadingBit(vec4<u32>(u_input.d, u_input.d, 0u, 0u)))));
    var_0 = Struct_1(global0[_wgslsmith_index_u32(~min(max(7305u, _wgslsmith_sub_u32(u_input.d, 57351u)), ~(u_input.d | 76950u)), 22u)], vec4<u32>(u_input.d << (u_input.d % 32u), 0u, (4294967295u & u_input.d) << (31319u % 32u), ~35974u) >> (vec4<u32>(max(~0u, _wgslsmith_clamp_u32(u_input.d, u_input.d, 1u)), 4294967295u, firstTrailingBit(104079u), u_input.d) % vec4<u32>(32u)));
    var var_1 = Struct_2(!all(select(!vec3<bool>(false, arg_1, arg_1), select(vec3<bool>(false, global0[_wgslsmith_index_u32(6952u, 22u)], arg_1), vec3<bool>(true, false, true), arg_1), any(vec3<bool>(false, var_0.a, false)))), Struct_1(!global0[_wgslsmith_index_u32(abs(var_0.b.x), 22u)], vec4<u32>(_wgslsmith_sub_u32(~u_input.d, u_input.d ^ 49400u), 4294967295u, var_0.b.x, var_0.b.x)), Struct_1(arg_1, _wgslsmith_sub_vec4_u32(min(~vec4<u32>(u_input.d, u_input.d, var_0.b.x, var_0.b.x), ~vec4<u32>(u_input.d, var_0.b.x, 4294967295u, 17354u)), var_0.b)), vec2<i32>(43995i, i32(-1i) * -_wgslsmith_mod_i32(arg_0, u_input.c.x)));
    let var_2 = _wgslsmith_dot_vec3_i32(-firstTrailingBit(vec3<i32>(-1i) * -u_input.c.xzx), ~(~select(~u_input.c.yyw, -vec3<i32>(2147483647i, 0i, u_input.e.x), vec3<bool>(true, global0[_wgslsmith_index_u32(var_0.b.x, 22u)], false))));
    var var_3 = Struct_3(true, true, Struct_1(func_3(Struct_3(!arg_1, any(vec4<bool>(false, arg_1, true, arg_1)), Struct_1(true, vec4<u32>(var_1.c.b.x, 71570u, var_1.b.b.x, var_1.b.b.x)), u_input.c.yx ^ vec2<i32>(-36521i, 0i), 4294967295u), vec4<i32>(_wgslsmith_mult_i32(2147483647i, var_1.d.x), -28478i, var_1.d.x, var_1.d.x), Struct_1(var_1.c.a | var_0.a, vec4<u32>(var_0.b.x, 22281u, 83595u, 1u)), Struct_3(false, all(vec3<bool>(true, false, true)), var_1.c, vec2<i32>(-2147483647i, 42090i), 28115u)), ~(var_0.b ^ vec4<u32>(u_input.d, 31989u, 27457u, 40716u))), ~(~u_input.c.xx), _wgslsmith_dot_vec2_u32(~var_1.c.b.xw, ~var_0.b.yx | var_1.c.b.zz));
    return !(!(!var_3.a));
}

fn func_1(arg_0: u32, arg_1: vec3<f32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = Struct_3(any(vec4<bool>(all(vec2<bool>(true, arg_2.a)), !global0[_wgslsmith_index_u32(u_input.d, 22u)], global0[_wgslsmith_index_u32(u_input.d, 22u)], all(vec3<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 22u)], false)))) & func_2(-25463i, true | (1u > arg_0)), true, arg_2, ~vec2<i32>(abs(0i), -_wgslsmith_div_i32(0i, 26501i)), arg_2.b.x);
    global0 = array<bool, 22>();
    var var_1 = Struct_2(arg_2.a, Struct_1(true, ~_wgslsmith_div_vec4_u32(vec4<u32>(var_0.c.b.x, 35710u, u_input.d, 18278u), ~var_0.c.b)), Struct_1(false, vec4<u32>(arg_0, _wgslsmith_mod_u32(1u, abs(var_0.e)), 10854u, ~(u_input.d & 4294967295u))), var_0.d);
    var var_2 = Struct_3(true, true, var_1.c, firstLeadingBit(select(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, -41607i), var_0.d), _wgslsmith_add_vec2_i32(var_1.d, vec2<i32>(1i, u_input.c.x)) >> (_wgslsmith_mod_vec2_u32(arg_2.b.yw, vec2<u32>(21241u, arg_0)) % vec2<u32>(32u)), !(!vec2<bool>(var_1.c.a, var_1.b.a)))), abs(~_wgslsmith_clamp_u32(1u, var_0.c.b.x, _wgslsmith_div_u32(var_0.e, 37025u))));
    var var_3 = -1395f;
    return var_0.c;
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: u32, arg_3: f32) -> Struct_1 {
    var var_0 = ~0u;
    global0 = array<bool, 22>();
    var var_1 = _wgslsmith_add_vec4_i32(reverseBits(vec4<i32>(arg_0.x, ~1i, 1909i, u_input.b.x)), ~firstLeadingBit(~vec4<i32>(19952i, -23864i, 9246i, -65086i) << (func_1(0u, vec3<f32>(arg_3, 616f, -391f), arg_1).b % vec4<u32>(32u))));
    global0 = array<bool, 22>();
    var_0 = ~(~u_input.d);
    return Struct_1(_wgslsmith_dot_vec4_u32(~vec4<u32>(51211u, 1u, arg_2, arg_2) | _wgslsmith_mult_vec4_u32(arg_1.b, arg_1.b), arg_1.b | countOneBits(vec4<u32>(arg_1.b.x, arg_2, 4294967295u, u_input.d))) < countOneBits(~arg_2), min(arg_1.b, ~_wgslsmith_div_vec4_u32(vec4<u32>(0u, 83319u, arg_1.b.x, arg_2) | arg_1.b, firstTrailingBit(arg_1.b))));
}

fn func_5(arg_0: Struct_3, arg_1: i32) -> Struct_1 {
    var var_0 = _wgslsmith_mult_vec2_i32(u_input.c.xx, arg_0.d);
    var var_1 = arg_0;
    global0 = array<bool, 22>();
    var_0 = u_input.c.xz;
    var_0 = firstTrailingBit(~(vec2<i32>(-1i) * -arg_0.d));
    return Struct_1(true, ~_wgslsmith_mod_vec4_u32(var_1.c.b, firstTrailingBit(func_4(u_input.c, Struct_1(false, vec4<u32>(var_1.e, var_1.c.b.x, 1u, 4294967295u)), u_input.d, -1294f).b)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstLeadingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(select(u_input.d, u_input.d, global0[_wgslsmith_index_u32(u_input.d, 22u)]), ~u_input.d), _wgslsmith_add_u32(u_input.d, u_input.d) | ~1u), ~select(vec2<u32>(u_input.d, 39714u), _wgslsmith_div_vec2_u32(vec2<u32>(1u, u_input.d), vec2<u32>(u_input.d, 0u)), !vec2<bool>(global0[_wgslsmith_index_u32(0u, 22u)], false)), ~vec2<u32>(4294967295u, ~u_input.d)));
    let var_1 = true;
    let var_2 = func_5(Struct_3((_wgslsmith_dot_vec3_u32(vec3<u32>(63658u, 46043u, 0u), vec3<u32>(20250u, 2190u, u_input.d)) << (abs(u_input.d) % 32u)) > 15968u, (true & !global0[_wgslsmith_index_u32(var_0.x, 22u)]) && var_1, func_4(vec4<i32>(_wgslsmith_add_i32(-39277i, 1i), _wgslsmith_mult_i32(0i, 1i), ~1i, -1i), func_1(~u_input.d, _wgslsmith_f_op_vec3_f32(vec3<f32>(345f, 984f, -1017f) - vec3<f32>(-866f, 1000f, -948f)), Struct_1(var_1, vec4<u32>(var_0.x, 86421u, u_input.d, var_0.x))), var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -839f), _wgslsmith_f_op_f32(round(2717f)))), u_input.c.wy, 68260u), 8526i);
    var var_3 = var_2;
    var var_4 = _wgslsmith_add_i32(countOneBits(-678i), u_input.b.x);
    var_4 = -13453i;
    let var_5 = (-_wgslsmith_sub_vec3_i32(select(vec3<i32>(0i, u_input.c.x, u_input.c.x), vec3<i32>(u_input.c.x, u_input.e.x, -17015i), vec3<bool>(false, var_2.a, false)), vec3<i32>(-1i, 2147483647i, u_input.a) ^ u_input.c.xyz) ^ _wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(~vec3<i32>(1i, u_input.a, u_input.c.x), u_input.b), -u_input.b)) >> (~min(vec3<u32>(0u, u_input.d, 4294967295u) ^ vec3<u32>(29576u, 4294967295u, var_2.b.x), var_3.b.yxw) % vec3<u32>(32u));
    var var_6 = -2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b, min(52999u, ~(~14866u)));
}

