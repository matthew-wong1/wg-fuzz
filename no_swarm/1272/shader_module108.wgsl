struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: bool,
    d: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(61177u, vec2<bool>(true, true), true, 4294967295u), Struct_1(0u, vec2<bool>(false, false), true, 1u), Struct_1(4294967295u, vec2<bool>(false, false), false, 42150u), Struct_1(1u, vec2<bool>(false, false), true, 33470u), Struct_1(1u, vec2<bool>(true, true), true, 0u), Struct_1(0u, vec2<bool>(false, false), false, 2233u), Struct_1(38193u, vec2<bool>(false, false), false, 1356u), Struct_1(4294967295u, vec2<bool>(true, false), true, 88940u), Struct_1(1u, vec2<bool>(true, true), false, 0u), Struct_1(4294967295u, vec2<bool>(false, true), true, 1u), Struct_1(4294967295u, vec2<bool>(true, false), false, 113525u), Struct_1(48231u, vec2<bool>(false, false), false, 0u), Struct_1(4294967295u, vec2<bool>(false, true), false, 0u), Struct_1(69048u, vec2<bool>(true, true), false, 0u), Struct_1(103696u, vec2<bool>(true, false), true, 1u), Struct_1(4294967295u, vec2<bool>(true, true), false, 4294967295u), Struct_1(8305u, vec2<bool>(true, false), true, 62817u), Struct_1(14437u, vec2<bool>(false, false), true, 4294967295u), Struct_1(63834u, vec2<bool>(true, false), false, 0u), Struct_1(34554u, vec2<bool>(true, false), false, 0u), Struct_1(14245u, vec2<bool>(false, false), true, 4294967295u), Struct_1(4294967295u, vec2<bool>(true, false), true, 4294967295u));

var<private> global1: array<f32, 25>;

var<private> global2: vec2<bool> = vec2<bool>(true, false);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: i32) -> bool {
    global2 = !vec2<bool>(global2.x, any(select(vec4<bool>(global2.x, true, false, global2.x), vec4<bool>(global2.x, false, global2.x, false), vec4<bool>(global2.x, false, false, true))) || true);
    global2 = vec2<bool>(true, true);
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(abs(~1u), 19063u, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.a.zx, vec2<u32>(u_input.c, 0u)), ~0u), abs(u_input.a.yy)), _wgslsmith_add_vec2_u32(~vec2<u32>(54988u, u_input.c), u_input.a.zx >> (_wgslsmith_clamp_vec2_u32(u_input.a.xx, u_input.a.yy, vec2<u32>(4294967295u, 18360u)) % vec2<u32>(32u))))), 22u)];
    var var_1 = Struct_1(0u, !(!var_0.b), !((var_0.c & true) || true), u_input.c);
    var var_2 = global0[_wgslsmith_index_u32(u_input.c, 22u)];
    return false;
}

fn func_2(arg_0: Struct_1) -> vec2<bool> {
    let var_0 = arg_0;
    let var_1 = !(!vec4<bool>(var_0.c, select(true, arg_0.c, !var_0.c), !func_3(u_input.b.x), any(vec4<bool>(global2.x, false, arg_0.c, true))));
    global1 = array<f32, 25>();
    global1 = array<f32, 25>();
    let var_2 = arg_0;
    return var_0.b;
}

fn func_1(arg_0: i32, arg_1: vec4<u32>, arg_2: f32) -> vec4<i32> {
    let var_0 = Struct_1(u_input.a.x, select(vec2<bool>(true, any(!vec2<bool>(global2.x, false))), select(vec2<bool>(any(vec4<bool>(true, false, true, global2.x)), global2.x), func_2(global0[_wgslsmith_index_u32(~arg_1.x, 22u)]), any(vec4<bool>(global2.x, global2.x, true, true))), true), global2.x, arg_1.x);
    var var_1 = global0[_wgslsmith_index_u32(max(_wgslsmith_mod_u32(1u, ~select(_wgslsmith_mod_u32(54686u, u_input.c), _wgslsmith_sub_u32(u_input.c, arg_1.x), !global2.x)), _wgslsmith_sub_u32(arg_1.x ^ arg_1.x, _wgslsmith_mod_u32(u_input.a.x, var_0.d & arg_1.x)) & ~(reverseBits(var_0.a) >> (94374u % 32u))), 22u)];
    return vec4<i32>(0i, 1i, _wgslsmith_clamp_i32(countOneBits(arg_0), select(0i, _wgslsmith_mult_i32(max(-98750i, 37655i), _wgslsmith_mod_i32(arg_0, -19547i)), select(false == var_0.b.x, all(vec4<bool>(var_1.b.x, var_1.b.x, true, false)), false)), _wgslsmith_div_i32(~reverseBits(arg_0), firstLeadingBit(-2147483647i))), -1i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~abs(_wgslsmith_div_vec4_i32(func_1(13259i, vec4<u32>(u_input.c, u_input.a.x, u_input.a.x, 4294967295u), -2820f), -vec4<i32>(u_input.b.x, u_input.b.x, 0i, -33252i)) | (vec4<i32>(0i, -2147483647i, 17991i, u_input.b.x) & ~vec4<i32>(18915i, -2147483647i, -1i, u_input.b.x)));
    global1 = array<f32, 25>();
    global1 = array<f32, 25>();
    var_0 = -(~(_wgslsmith_div_vec4_i32(~vec4<i32>(u_input.b.x, var_0.x, var_0.x, 2147483647i), ~vec4<i32>(u_input.b.x, u_input.b.x, -1i, u_input.b.x)) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(10681u, u_input.a.x, u_input.a.x, u_input.c), abs(vec4<u32>(u_input.a.x, u_input.a.x, 27347u, 0u)), abs(vec4<u32>(u_input.c, 0u, 1u, 1u))) % vec4<u32>(32u))));
    var_0 = ~_wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(min(-vec4<i32>(0i, var_0.x, 1i, 2147483647i), vec4<i32>(var_0.x, u_input.b.x, -1i, 4028i) << (vec4<u32>(1u, 49631u, 11549u, 20583u) % vec4<u32>(32u))), vec4<i32>(2147483647i, u_input.b.x & 2147483647i, ~49178i, var_0.x)), ~vec4<i32>(u_input.b.x, -var_0.x, -1i, var_0.x));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~(u_input.a.x >> (4294967295u % 32u)), 25u)])) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(~u_input.a.x, 25u)]))));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(u_input.a.x, 25u)], _wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(7053u, 25u)], -744f)), func_2(global0[_wgslsmith_index_u32(u_input.c, 22u)]).x)), global1[_wgslsmith_index_u32(max(33734u, u_input.c) & min(48238u, u_input.c), 25u)]))), -343f);
    var_0 = -_wgslsmith_mult_vec4_i32(-firstTrailingBit(vec4<i32>(60877i, 14735i, -9571i, var_0.x)), firstTrailingBit(abs(vec4<i32>(-2147483647i, 15994i, var_0.x, u_input.b.x))) >> (_wgslsmith_div_vec4_u32(vec4<u32>(1u, u_input.a.x, u_input.a.x, 37828u), vec4<u32>(35412u, 9254u, u_input.c, 33829u)) % vec4<u32>(32u)));
    var var_3 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_1, global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a.x, 56320u), 25u)], -839f, -102f), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, var_1, var_2, var_1) + vec4<f32>(-2419f, global1[_wgslsmith_index_u32(4294967295u, 25u)], -292f, global1[_wgslsmith_index_u32(4294967295u, 25u)]))))) * vec4<f32>(_wgslsmith_f_op_f32(336f * 1201f), global1[_wgslsmith_index_u32(abs(u_input.c), 25u)], _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a.x, 25u)]), 1214f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(5026u, 25u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(458f)) * _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a.x, 25u)])), var_2, 1781f) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1305f, var_2, -820f, 256f), vec4<f32>(1000f, var_1, -1686f, -460f))))))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, func_1(_wgslsmith_sub_i32(-select(u_input.b.x, var_0.x, true), 0i), min(vec4<u32>(~4294967295u, firstTrailingBit(u_input.c), abs(u_input.c), firstTrailingBit(27222u)), ~(vec4<u32>(u_input.a.x, u_input.c, u_input.c, u_input.c) ^ vec4<u32>(u_input.c, 3288u, u_input.a.x, 28273u))), _wgslsmith_f_op_f32(step(1290f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 - 1036f) * _wgslsmith_f_op_f32(-var_2))))).x);
}

