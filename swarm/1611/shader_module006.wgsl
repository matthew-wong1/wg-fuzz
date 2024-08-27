struct Struct_1 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 3>;

var<private> global1: Struct_1 = Struct_1(vec4<i32>(-35005i, -18172i, 36197i, -37110i));

var<private> global2: vec3<f32>;

var<private> global3: Struct_1 = Struct_1(vec4<i32>(8721i, 0i, -18755i, -54671i));

var<private> global4: bool = true;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<u32>) -> vec3<f32> {
    let var_0 = !vec2<bool>(true, all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), true), true)));
    let var_1 = var_0.x;
    global4 = var_0.x;
    var var_2 = Struct_1(global3.a);
    var var_3 = Struct_1(vec4<i32>(-global1.a.x, _wgslsmith_clamp_i32(~select(global3.a.x, global3.a.x, true), 1i << (0u % 32u), min(global3.a.x, _wgslsmith_div_i32(0i, 1i))), global0[_wgslsmith_index_u32(arg_0.x, 3u)], 2147483647i));
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(441f, 1532f, 290f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, -820f, global2.x) - vec3<f32>(2726f, global2.x, -1000f)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(268f, global2.x, global2.x), vec3<f32>(global2.x, 402f, global2.x), vec3<bool>(false, var_1, true)))) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global2.x, -221f, -375f))))));
}

fn func_2() -> bool {
    var var_0 = Struct_1(global1.a);
    let var_1 = Struct_1(global1.a);
    global2 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -431f), global2.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-530f, -927f))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global2.x, global2.x, -524f), vec3<f32>(2906f, global2.x, global2.x))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-403f, global2.x, -940f), vec3<f32>(1000f, global2.x, global2.x))))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, -428f, 611f)))))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x - 1375f) + _wgslsmith_f_op_f32(f32(-1f) * -1912f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global2.x, global2.x))))))));
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1970f, 1825f, 766f)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, global2.x, global2.x) - vec3<f32>(-896f, global2.x, global2.x))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(150f))), _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(abs(global2.x))), true)));
    global2 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-558f, 1000f, global2.x) - _wgslsmith_div_vec3_f32(vec3<f32>(global2.x, global2.x, global2.x), vec3<f32>(global2.x, global2.x, global2.x))) * _wgslsmith_f_op_vec3_f32(func_3(vec3<u32>(1u, u_input.a, u_input.a)))))));
    return !any(vec2<bool>(true, true)) & select(false, all(vec4<bool>(true, true, global2.x < global2.x, true)), true);
}

fn func_1(arg_0: vec2<f32>, arg_1: bool) -> bool {
    var var_0 = ~((~vec3<u32>(107976u, 4294967295u, 32408u) & vec3<u32>(u_input.a, 1u, _wgslsmith_sub_u32(4294967295u, 0u))) << (~(vec3<u32>(34789u, u_input.a, u_input.a) & _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, 4294967295u, 0u), vec3<u32>(45185u, 1u, 0u))) % vec3<u32>(32u)));
    var var_1 = func_2();
    var_0 = vec3<u32>(26119u, select(min(120517u, u_input.a), ~_wgslsmith_mod_u32(u_input.a, reverseBits(u_input.a)), true), 109415u);
    global3 = Struct_1(global3.a);
    var var_2 = -(_wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(2147483647i, global1.a.x), -global0[_wgslsmith_index_u32(5665u, 3u)], reverseBits(-23923i)), -vec3<i32>(global0[_wgslsmith_index_u32(0u, 3u)], -1i, global3.a.x)) ^ vec3<i32>(max(global3.a.x, 0i), _wgslsmith_mod_i32(_wgslsmith_mod_i32(-2147483647i, -17021i), ~2445i), global3.a.x));
    return any(vec4<bool>(!(_wgslsmith_f_op_f32(floor(-2208f)) != _wgslsmith_div_f32(arg_0.x, 772f)), all(!select(vec4<bool>(arg_1, true, arg_1, arg_1), vec4<bool>(false, false, false, false), vec4<bool>(arg_1, arg_1, false, true))), false, arg_1));
}

fn func_4(arg_0: vec3<bool>, arg_1: f32, arg_2: vec4<u32>, arg_3: vec3<i32>) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1720f, global2.x, 1000f, 185f) - vec4<f32>(2087f, global2.x, -290f, global2.x)), vec4<f32>(global2.x, -977f, -1422f, global2.x)))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(346f, arg_1, -967f, -818f)) + vec4<f32>(-2101f, global2.x, -401f, -1000f)), vec4<f32>(-533f, _wgslsmith_f_op_f32(global2.x - -593f), 1f, _wgslsmith_f_op_f32(global2.x + arg_1)))));
    var var_1 = Struct_1(-vec4<i32>(global1.a.x, global1.a.x, arg_3.x, -22762i));
    global1 = Struct_1(firstLeadingBit(-global3.a));
    var var_2 = Struct_1(abs(global1.a));
    global4 = !(1u < _wgslsmith_mod_u32(_wgslsmith_add_u32(~29600u, u_input.a), 4294967295u));
    return arg_2.wzw;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3.a.x;
    global3 = Struct_1(global3.a);
    global3 = Struct_1(~(-vec4<i32>(_wgslsmith_mult_i32(global3.a.x, -2147483647i), -global0[_wgslsmith_index_u32(u_input.a, 3u)], global1.a.x, abs(48735i))));
    let var_1 = -global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, u_input.a, 4294967295u) << (vec3<u32>(57128u, u_input.a, 25189u) % vec3<u32>(32u)), firstLeadingBit(vec3<u32>(9079u, 47708u, u_input.a))) << (~(vec3<u32>(u_input.a, u_input.a, 0u) << (vec3<u32>(30001u, u_input.a, u_input.a) % vec3<u32>(32u))) % vec3<u32>(32u)), func_4(vec3<bool>(func_1(global2.zz, false), true, true), global2.x, ~(~vec4<u32>(4294967295u, 0u, u_input.a, 10032u)), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global1.a.x, global1.a.x, 1i, -21355i), global1.a), global0[_wgslsmith_index_u32(u_input.a << (4294967295u % 32u), 3u)], global0[_wgslsmith_index_u32(firstTrailingBit(u_input.a), 3u)]))), 3u)];
    var var_2 = Struct_1(_wgslsmith_mult_vec4_i32(-(vec4<i32>(-1i) * -vec4<i32>(global0[_wgslsmith_index_u32(u_input.a, 3u)], 23013i, global3.a.x, 22284i)), countOneBits(-vec4<i32>(-21354i, global1.a.x, global0[_wgslsmith_index_u32(1u, 3u)], global1.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, vec2<i32>(-global3.a.x << (select(~62484u, select(u_input.a, 1u, true), true) % 32u), i32(-1i) * -30812i));
}

