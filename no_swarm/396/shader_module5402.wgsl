struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: i32,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 12>;

var<private> global1: array<bool, 9>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec3<f32>) -> i32 {
    let var_0 = Struct_3(-(~(~firstLeadingBit(vec4<i32>(global0[_wgslsmith_index_u32(u_input.c, 12u)], -1i, global0[_wgslsmith_index_u32(1u, 12u)], global0[_wgslsmith_index_u32(u_input.c, 12u)])))), _wgslsmith_div_i32(abs(_wgslsmith_sub_i32(-20368i, 28587i)), _wgslsmith_sub_i32(-16379i, firstLeadingBit(global0[_wgslsmith_index_u32(27195u, 12u)]))) & _wgslsmith_mult_i32(36844i, _wgslsmith_clamp_i32(-10325i, global0[_wgslsmith_index_u32(87005u, 12u)], -1i)), u_input.a);
    var var_1 = vec4<f32>(1450f, arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.x, -799f) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(250f))), arg_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(886f - 747f) * _wgslsmith_f_op_f32(round(arg_0.x))), arg_0.x, false)) * -1000f));
    global1 = array<bool, 9>();
    let var_2 = Struct_1(~abs(~var_0.b), _wgslsmith_sub_i32(-global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.c), u_input.a.zz), 12u)], _wgslsmith_add_i32(-52843i >> ((u_input.a.x | 0u) % 32u), _wgslsmith_mod_i32(global0[_wgslsmith_index_u32(max(1u, 1u), 12u)], firstTrailingBit(2147483647i)))));
    var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(step(var_1.x, 1120f)), _wgslsmith_f_op_f32(-373f + arg_0.x), -181f, _wgslsmith_f_op_f32(var_1.x + arg_0.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1019f, -269f, -1991f, 322f) - vec4<f32>(-120f, var_1.x, 310f, arg_0.x))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, var_1.x, var_1.x, var_1.x) * vec4<f32>(-1149f, 167f, -2843f, arg_0.x))))) * vec4<f32>(-1000f, arg_0.x, var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1451f)))));
    return -38591i;
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: vec2<u32>, arg_3: vec2<u32>) -> Struct_1 {
    let var_0 = arg_1 && (!arg_1 == (all(vec3<bool>(arg_1, true, arg_1)) || any(vec2<bool>(false, false))));
    global1 = array<bool, 9>();
    global0 = array<i32, 12>();
    let var_1 = min(vec3<i32>(-_wgslsmith_dot_vec4_i32(~vec4<i32>(arg_0.b, global0[_wgslsmith_index_u32(arg_2.x, 12u)], global0[_wgslsmith_index_u32(19861u, 12u)], arg_0.b), -vec4<i32>(2147483647i, global0[_wgslsmith_index_u32(u_input.a.x, 12u)], 2147483647i, 0i)), 1i << ((arg_2.x << (arg_3.x % 32u)) % 32u), _wgslsmith_div_i32(~(-2147483647i) >> (1u % 32u), abs(1i))), vec3<i32>(~(-1i), -1i, _wgslsmith_clamp_i32(-arg_0.a, reverseBits(arg_0.b), ~func_3(vec3<f32>(1159f, 843f, 761f)))));
    let var_2 = Struct_3(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_0.b | arg_0.b, _wgslsmith_sub_i32(min(903i, global0[_wgslsmith_index_u32(arg_3.x, 12u)]), global0[_wgslsmith_index_u32(~1u, 12u)]), global0[_wgslsmith_index_u32(~u_input.c, 12u)] >> (~u_input.c % 32u), global0[_wgslsmith_index_u32(u_input.c ^ arg_2.x, 12u)]), firstLeadingBit(countOneBits(max(vec4<i32>(arg_0.b, -11809i, 0i, 2147483647i), vec4<i32>(2147483647i, 23016i, 0i, 0i))))), abs(-5494i), vec3<u32>(arg_2.x, arg_3.x, arg_3.x));
    return arg_0;
}

fn func_1(arg_0: vec4<bool>) -> bool {
    global1 = array<bool, 9>();
    var var_0 = Struct_2(func_2(Struct_1(_wgslsmith_dot_vec3_i32(-vec3<i32>(global0[_wgslsmith_index_u32(u_input.c, 12u)], -1i, 2216i), _wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, global0[_wgslsmith_index_u32(u_input.b, 12u)], 1i), vec3<i32>(global0[_wgslsmith_index_u32(7841u, 12u)], global0[_wgslsmith_index_u32(u_input.c, 12u)], global0[_wgslsmith_index_u32(u_input.b, 12u)]), vec3<i32>(4442i, -2147483647i, global0[_wgslsmith_index_u32(24091u, 12u)]))), firstLeadingBit(_wgslsmith_sub_i32(global0[_wgslsmith_index_u32(1u, 12u)], 47578i))), false, u_input.a.zx, firstLeadingBit(u_input.a.xx)), select(arg_0.yxz, arg_0.wwy, arg_0.zyz), func_2(func_2(Struct_1(~(-685i), global0[_wgslsmith_index_u32(u_input.a.x, 12u)] & global0[_wgslsmith_index_u32(66142u, 12u)]), global1[_wgslsmith_index_u32(u_input.c, 9u)], u_input.a.zz, vec2<u32>(u_input.c, 1u) & ~u_input.a.yz), false, u_input.a.yy << (~u_input.a.zz % vec2<u32>(32u)), ~(~abs(vec2<u32>(60888u, u_input.a.x)))));
    var var_1 = Struct_2(var_0.a, !vec3<bool>(all(arg_0.wyz) || var_0.b.x, select(any(vec4<bool>(global1[_wgslsmith_index_u32(1u, 9u)], arg_0.x, var_0.b.x, global1[_wgslsmith_index_u32(0u, 9u)])), true, 60611u < u_input.c), select(var_0.b.x, all(var_0.b), true)), Struct_1(global0[_wgslsmith_index_u32((u_input.b << (~u_input.c % 32u)) ^ (abs(u_input.a.x) << (_wgslsmith_mult_u32(u_input.c, 1u) % 32u)), 12u)], _wgslsmith_mult_i32(var_0.c.a, -1i)));
    var var_2 = Struct_3(vec4<i32>(1i, var_0.a.b, 33943i, ~global0[_wgslsmith_index_u32(u_input.c, 12u)] >> (1u % 32u)) << (select(~(~vec4<u32>(26284u, u_input.a.x, 4294967295u, 9027u)), min(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, u_input.b, 0u, u_input.b), vec4<u32>(4294967295u, 7675u, u_input.c, u_input.c)), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 24246u, 18475u, 28741u), vec4<u32>(74744u, u_input.c, 6999u, 71070u))), select(arg_0, arg_0, var_0.b.x || true)) % vec4<u32>(32u)), firstLeadingBit(i32(-1i) * -1i), u_input.a);
    var var_3 = Struct_3(~(-firstTrailingBit(var_2.a) << (vec4<u32>(var_2.c.x, 2803u, var_2.c.x, ~20204u) % vec4<u32>(32u))), func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(995f, 928f, -1758f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-900f, 625f, 524f)), false)))), min(vec3<u32>(1u, firstLeadingBit(56159u), u_input.b), vec3<u32>(1u, 0u, 0u)));
    return true;
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: Struct_2, arg_3: bool) -> vec4<f32> {
    let var_0 = arg_2;
    let var_1 = reverseBits(_wgslsmith_add_u32(abs(arg_0), ~32847u)) | ~u_input.a.x;
    var var_2 = arg_1.b;
    let var_3 = Struct_1(arg_2.a.a, firstLeadingBit(-93128i));
    global0 = array<i32, 12>();
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -608f) * _wgslsmith_f_op_f32(step(704f, 1000f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -195f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(972f, 1028f, false))), 1589f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(812f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -305f)) - _wgslsmith_f_op_f32(-206f - _wgslsmith_f_op_f32(945f - -1000f))), _wgslsmith_f_op_f32(abs(-138f)), _wgslsmith_div_f32(703f, _wgslsmith_f_op_f32(242f - _wgslsmith_f_op_f32(931f + 364f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-424f)) + 1691f), -3238f, _wgslsmith_f_op_f32(698f + _wgslsmith_f_op_f32(f32(-1f) * -1584f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-1000f))))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(func_4(4294967295u, Struct_2(Struct_1(i32(-1i) * -global0[_wgslsmith_index_u32(u_input.c, 12u)], -1i), vec3<bool>(true, func_1(select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 9u)], true, true, global1[_wgslsmith_index_u32(u_input.c, 9u)]), vec4<bool>(global1[_wgslsmith_index_u32(27071u, 9u)], global1[_wgslsmith_index_u32(16139u, 9u)], global1[_wgslsmith_index_u32(70934u, 9u)], global1[_wgslsmith_index_u32(u_input.b, 9u)]), vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 9u)], true, true, false))), global1[_wgslsmith_index_u32(0u, 9u)]), func_2(Struct_1(global0[_wgslsmith_index_u32(30035u, 12u)] | global0[_wgslsmith_index_u32(1u, 12u)], ~32286i), global1[_wgslsmith_index_u32(select(4294967295u, firstTrailingBit(1u), true), 9u)], select(u_input.a.zx >> (vec2<u32>(41817u, 0u) % vec2<u32>(32u)), ~u_input.a.xx, any(vec3<bool>(global1[_wgslsmith_index_u32(0u, 9u)], global1[_wgslsmith_index_u32(u_input.c, 9u)], global1[_wgslsmith_index_u32(u_input.a.x, 9u)]))), vec2<u32>(4294967295u, ~29058u))), Struct_2(Struct_1(6778i, -2147483647i), vec3<bool>(true, !global1[_wgslsmith_index_u32(~1u, 9u)], true), Struct_1(-2147483647i, _wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(global0[_wgslsmith_index_u32(29207u, 12u)], -19975i)), _wgslsmith_div_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(u_input.c, 12u)], global0[_wgslsmith_index_u32(0u, 12u)]), vec2<i32>(global0[_wgslsmith_index_u32(17450u, 12u)], global0[_wgslsmith_index_u32(u_input.b, 12u)]))))), all(!select(vec2<bool>(true, true), !vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.b, 9u)]), !global1[_wgslsmith_index_u32(u_input.a.x, 9u)]))));
    let var_2 = var_1.x;
    let var_3 = -1000f;
    global1 = array<bool, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(~(-_wgslsmith_div_vec2_i32(vec2<i32>(10960i, -4478i) << (vec2<u32>(0u, u_input.b) % vec2<u32>(32u)), ~vec2<i32>(2147483647i, global0[_wgslsmith_index_u32(u_input.c, 12u)]))));
}

