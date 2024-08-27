struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: f32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: f32,
    c: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: i32,
    c: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<vec3<f32>, 28>;

var<private> global2: vec4<f32>;

var<private> global3: Struct_4;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> f32 {
    let var_0 = true && global0.x;
    var var_1 = Struct_4(global3.a, global3.b | 36839i, ~1u);
    var var_2 = select(!vec4<bool>(var_0, any(vec2<bool>(var_0, global0.x)), global3.a, 4294967295u >= var_1.c), vec4<bool>(select(global0.x, false, global0.x), false, true, !(~global3.c == _wgslsmith_mod_u32(0u, var_1.c))), var_1.a);
    let var_3 = Struct_4(all(!select(!vec3<bool>(false, var_2.x, true), !var_2.yyy, var_2.x)), abs(_wgslsmith_mult_i32(~var_1.b, reverseBits(global3.b))) | ~_wgslsmith_dot_vec3_i32(vec3<i32>(-13185i, global3.b, global3.b), _wgslsmith_add_vec3_i32(vec3<i32>(1i, 1022i, 1i), vec3<i32>(40313i, var_1.b, global3.b))), 1u);
    var_1 = var_3;
    return 1474f;
}

fn func_3(arg_0: bool) -> f32 {
    global2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1406f * -1764f), -464f, _wgslsmith_f_op_f32(f32(-1f) * -1246f), _wgslsmith_f_op_f32(-global2.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global2.x, global2.x, _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(-791f * global2.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, global2.x, 741f)))), select(vec4<bool>(any(global0.xz), !(global3.a & global3.a), false, all(vec2<bool>(false, global3.a))), select(vec4<bool>(select(global3.a, true, arg_0), arg_0, any(vec4<bool>(false, global3.a, global3.a, true)), true), select(!vec4<bool>(false, arg_0, false, false), vec4<bool>(arg_0, global3.a, global3.a, global0.x), vec4<bool>(true, global0.x, false, global3.a)), !vec4<bool>(global3.a, false, global3.a, arg_0)), select(!vec4<bool>(false, true, global0.x, false), !(!vec4<bool>(false, true, arg_0, global3.a)), all(vec3<bool>(true, true, arg_0))))));
    global3 = Struct_4(global2.x > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-206f - global2.x)))), ~global3.b, _wgslsmith_mult_u32(_wgslsmith_mult_u32(7970u, global3.c), ~(~33846u)));
    let var_0 = global3.b;
    var var_1 = Struct_1(firstTrailingBit(min(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, global3.c), vec3<u32>(u_input.a, u_input.a, 1u)), reverseBits(u_input.a))), ~vec2<u32>(min(global3.c, global3.c), u_input.a | 13248u) << (~vec2<u32>(u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, 4019u), vec3<u32>(global3.c, u_input.a, 11683u))) % vec2<u32>(32u)), _wgslsmith_f_op_f32(select(global2.x, -270f, global0.x && true)), _wgslsmith_add_vec3_u32(abs(~(vec3<u32>(global3.c, 47365u, 56765u) & vec3<u32>(0u, 35387u, 4294967295u))), ~reverseBits(firstTrailingBit(vec3<u32>(47074u, u_input.a, 483u)))));
    var var_2 = select(4294967295u >> (~(~u_input.a) % 32u), ~(223u >> (_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(var_1.a, 4294967295u, u_input.a, 12025u)), _wgslsmith_sub_vec4_u32(vec4<u32>(var_1.d.x, var_1.a, 0u, 58037u), vec4<u32>(var_1.a, 4294967295u, 40832u, var_1.a))) % 32u)), true);
    return 269f;
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_4, arg_2: bool, arg_3: Struct_3) -> i32 {
    global1 = array<vec3<f32>, 28>();
    let var_0 = Struct_2(reverseBits(vec3<u32>(u_input.a & _wgslsmith_mod_u32(31369u, 20420u), 6536u, ~(~61074u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(-594f, arg_3.a)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(arg_2)), global2.x)), vec3<i32>(countOneBits(firstLeadingBit(firstTrailingBit(-1i))), arg_1.b, min(arg_1.b | arg_1.b, _wgslsmith_mult_i32(4619i, -1i))));
    global2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.b, global2.x, var_0.b, 1000f) + vec4<f32>(var_0.b, -1155f, 833f, 1110f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.b, -1863f, var_0.b, var_0.b), vec4<f32>(var_0.b, -493f, arg_3.c.b, -2322f), vec4<bool>(true, false, true, global0.x)))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1480f, global2.x, arg_3.b, var_0.b)))))))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(var_0.b, arg_3.a))), -894f, arg_3.b, var_0.b));
    let var_1 = arg_3.a.b;
    global1 = array<vec3<f32>, 28>();
    return select(~arg_1.b, countOneBits(-9345i), false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_vec4_i32(min(-_wgslsmith_div_vec4_i32(vec4<i32>(0i, global3.b, global3.b, 0i), _wgslsmith_add_vec4_i32(vec4<i32>(global3.b, global3.b, 26267i, 32251i), vec4<i32>(global3.b, 0i, -36686i, -2147483647i))), select(vec4<i32>(_wgslsmith_mod_i32(global3.b, -2147483647i), ~global3.b, _wgslsmith_add_i32(1i, global3.b), -global3.b), vec4<i32>(firstTrailingBit(-2147483647i), firstLeadingBit(global3.b), -34726i, global3.b), false)), ~vec4<i32>(global3.b << (1u % 32u), -abs(global3.b), ~(-2147483647i), min(global3.b, global3.b) | func_1(vec2<u32>(0u, u_input.a), Struct_4(global3.a, -2020i, 13417u), false, Struct_3(Struct_1(4294967295u, vec2<u32>(u_input.a, 38813u), 106f, vec3<u32>(1u, 0u, 37737u)), -614f, Struct_2(vec3<u32>(u_input.a, 1u, global3.c), global2.x, vec3<i32>(global3.b, global3.b, 2147483647i))))));
    var var_1 = true;
    var var_2 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(~(firstLeadingBit(u_input.a) << (abs(global3.c) % 32u)), 28u)])));
    var var_3 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(971f, var_2.x, global2.x, 104f), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-614f, var_2.x, 1828f, 158f))), true)))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, -570f, var_2.x, 875f) + vec4<f32>(global2.x, -1826f, var_2.x, global2.x)))))), vec4<f32>(-442f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -409f))), -2050f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global2.x - -104f)))))));
    let var_4 = var_0.x;
    global0 = select(select(vec3<bool>(global0.x, global3.a, all(!vec3<bool>(false, true, global3.a))), select(vec3<bool>(false, false, !global3.a), select(!vec3<bool>(true, global3.a, false), vec3<bool>(global3.a, false, global3.a), vec3<bool>(global0.x, global3.a, true)), select(!vec3<bool>(false, true, global3.a), select(vec3<bool>(global3.a, false, global0.x), vec3<bool>(global3.a, global0.x, false), vec3<bool>(true, global0.x, false)), u_input.a > u_input.a)), false), vec3<bool>(!all(select(vec3<bool>(true, global3.a, global0.x), vec3<bool>(false, true, global0.x), global3.a)), global0.x, select(!global3.a, global3.a, all(!vec4<bool>(true, false, false, global3.a)))), !any(vec3<bool>(true, !global0.x, !global3.a)));
    let var_5 = vec3<f32>(var_3.x, global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(step(var_3.x, 1606f)) <= var_3.x))));
    global1 = array<vec3<f32>, 28>();
    var var_6 = -(~abs(-var_4));
    let x = u_input.a;
    s_output = StorageBuffer(38643i, ~(-_wgslsmith_add_vec4_i32(vec4<i32>(-1i, -2147483647i, var_0.x, var_0.x), -var_0)), _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(step(-1852f, _wgslsmith_f_op_f32(-global2.x))), Struct_1(64686u, ~vec2<u32>(12888u, global3.c), _wgslsmith_f_op_f32(max(249f, _wgslsmith_div_f32(var_2.x, -815f))), max(~vec3<u32>(16360u, 85752u, 892u), countOneBits(vec3<u32>(45457u, u_input.a, global3.c)))))));
}

