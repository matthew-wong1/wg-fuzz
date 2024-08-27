struct Struct_1 {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1;

var<private> global2: vec2<bool> = vec2<bool>(false, false);

var<private> global3: vec3<bool> = vec3<bool>(true, false, false);

var<private> global4: array<bool, 22>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> vec2<u32> {
    let var_0 = vec3<u32>(min(_wgslsmith_clamp_u32(arg_1.a.x, 24992u, _wgslsmith_sub_u32(u_input.a.x, 0u)) >> (~abs(5207u) % 32u), _wgslsmith_mult_u32(abs(1u), 4294967295u) | u_input.d), 18915u, reverseBits(106589u) ^ global0.a.x);
    global1 = arg_1;
    let var_1 = arg_1;
    var var_2 = -1767f;
    let var_3 = firstTrailingBit(firstTrailingBit(_wgslsmith_add_vec4_u32(select(vec4<u32>(arg_1.a.x, var_1.a.x, arg_0.a, 4294967295u), vec4<u32>(0u, var_1.a.x, 4294967295u, var_1.a.x), vec4<bool>(global3.x, global4[_wgslsmith_index_u32(0u, 22u)], global2.x, global4[_wgslsmith_index_u32(global0.a.x, 22u)])), ~vec4<u32>(0u, 22649u, 4294967295u, var_1.a.x))) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(33329u, global0.a.x, ~u_input.b, ~28131u), countOneBits(max(vec4<u32>(0u, var_1.a.x, u_input.a.x, u_input.b), vec4<u32>(23378u, global1.a.x, global0.a.x, 523u)))) % vec4<u32>(32u)));
    return ~global1.a ^ ~_wgslsmith_mod_vec2_u32(vec2<u32>(~28827u, ~var_1.a.x), reverseBits(var_0.xx));
}

fn func_2(arg_0: Struct_4, arg_1: vec2<u32>) -> Struct_1 {
    var var_0 = Struct_2(global1.a.x);
    global1 = Struct_1(_wgslsmith_mult_vec2_u32(u_input.a, func_3(arg_0.b, Struct_1(_wgslsmith_div_vec2_u32(arg_1, global1.a), vec3<i32>(25585i, global1.b.x, global1.b.x)))), _wgslsmith_mod_vec3_i32(global0.b, _wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(-vec3<i32>(-29829i, global0.b.x, global1.b.x), vec3<i32>(1i, global0.b.x, 2147483647i), u_input.e), min(vec3<i32>(-56833i, -1i, global0.b.x), u_input.c.wyz))));
    global1 = Struct_1(abs(_wgslsmith_clamp_vec2_u32(reverseBits(u_input.a), func_3(Struct_2(global0.a.x), Struct_1(u_input.a, u_input.e)), ~(~vec2<u32>(global0.a.x, u_input.d)))), select(~abs(global0.b), _wgslsmith_mod_vec3_i32(vec3<i32>(-1i) * -global0.b, u_input.e >> (max(vec3<u32>(4294967295u, global1.a.x, 1u), vec3<u32>(var_0.a, global0.a.x, 102137u)) % vec3<u32>(32u))), !(!(!vec3<bool>(global3.x, true, true)))));
    return Struct_1(~(~(global1.a | _wgslsmith_clamp_vec2_u32(vec2<u32>(arg_0.b.a, 65093u), global1.a, vec2<u32>(2088u, 1u)))), -vec3<i32>(0i | global1.b.x, global0.b.x, min(min(34601i, 43058i), -1i)));
}

fn func_1() -> vec3<i32> {
    global1 = func_2(Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1758f - _wgslsmith_f_op_f32(578f + -245f)) * -1911f), Struct_2(_wgslsmith_mult_u32(~global0.a.x, 1u))), vec2<u32>(global0.a.x, 4294967295u));
    var var_0 = global0.b.x;
    var var_1 = _wgslsmith_div_i32(global0.b.x, _wgslsmith_sub_i32(-global1.b.x << (~2272u % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, 1i, u_input.c.x), -vec3<i32>(-2147483647i, 0i, 1i)))) == 2147483647i;
    var var_2 = all(!vec3<bool>(true || any(vec4<bool>(global4[_wgslsmith_index_u32(48681u, 22u)], global4[_wgslsmith_index_u32(global1.a.x, 22u)], global2.x, global2.x)), global4[_wgslsmith_index_u32(~_wgslsmith_mult_u32(75917u, 0u), 22u)], false || global4[_wgslsmith_index_u32(23374u, 22u)]));
    var var_3 = Struct_3(select(global3.xx, !vec2<bool>(global3.x, all(global3.xx)), global3.x));
    return _wgslsmith_add_vec3_i32(vec3<i32>(35008i, 0i, 15733i), ~global1.b);
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: i32, arg_3: Struct_1) -> Struct_3 {
    let var_0 = !vec2<bool>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0))) > _wgslsmith_div_f32(arg_0, _wgslsmith_div_f32(-625f, arg_0)), (-22256i < select(arg_3.b.x, -2147483647i, global3.x)) | global2.x);
    var var_1 = Struct_1(vec2<u32>(1u, 4294967295u), _wgslsmith_mod_vec3_i32(global1.b, _wgslsmith_clamp_vec3_i32(~global1.b, firstTrailingBit(~global0.b), -global0.b >> (vec3<u32>(4294967295u, global1.a.x, 1u) % vec3<u32>(32u)))));
    global2 = var_0;
    var var_2 = _wgslsmith_mod_vec3_i32(-firstLeadingBit(u_input.e), -(vec3<i32>(-2147483647i, -2147483647i, -2147483647i & global1.b.x) >> (reverseBits(max(vec3<u32>(u_input.a.x, 1u, 16468u), vec3<u32>(global0.a.x, global1.a.x, var_1.a.x))) % vec3<u32>(32u))));
    global2 = !var_0;
    return Struct_3(vec2<bool>(false, true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(_wgslsmith_f_op_f32(f32(-1f) * -2043f), _wgslsmith_sub_i32(global0.b.x, global0.b.x), _wgslsmith_add_i32(~_wgslsmith_sub_i32(0i, -global1.b.x), _wgslsmith_dot_vec3_i32(vec3<i32>(-global1.b.x, global0.b.x, firstLeadingBit(global1.b.x)), vec3<i32>(-global0.b.x, ~(-23773i), global1.b.x))), Struct_1(vec2<u32>(max(_wgslsmith_div_u32(1u, 62362u), ~global1.a.x), u_input.b), vec3<i32>(_wgslsmith_dot_vec3_i32(func_1(), u_input.c.wyx), 1i, ~(-12582i | global0.b.x))));
    var var_1 = abs(vec3<u32>(select(~u_input.a.x << (firstLeadingBit(43104u) % 32u), u_input.b, select(false, true, var_0.a.x)), func_2(Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -1108f), Struct_2(global0.a.x)), vec2<u32>(firstTrailingBit(1u), 4294967295u)).a.x, _wgslsmith_clamp_u32(global0.a.x, _wgslsmith_add_u32(_wgslsmith_mod_u32(1u, 10191u), _wgslsmith_mod_u32(4294967295u, 1u)), _wgslsmith_div_u32(u_input.b, u_input.a.x) & _wgslsmith_dot_vec4_u32(vec4<u32>(global0.a.x, global0.a.x, 0u, global1.a.x), vec4<u32>(0u, global0.a.x, 40408u, global0.a.x)))));
    let var_2 = _wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(global1.b.xy, -vec2<i32>(-global1.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(74814i, u_input.e.x, global0.b.x), vec3<i32>(global0.b.x, 2147483647i, -57129i)))), func_1().yz);
    var var_3 = ~global1.a.x;
    var var_4 = Struct_3(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(step(1009f, 326f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2144f * 661f))), firstTrailingBit(global1.b.x), 2147483647i, func_2(Struct_4(1000f, Struct_2(1u)), max(vec2<u32>(global1.a.x, 28859u), global0.a))).a);
    let x = u_input.a;
    s_output = StorageBuffer(select(-max(abs(global0.b), select(vec3<i32>(2147483647i, global1.b.x, var_2.x), u_input.e, true)), ~(-vec3<i32>(-37274i, 1i, -2147483647i)) >> (_wgslsmith_div_vec3_u32(~vec3<u32>(1u, global0.a.x, global1.a.x), vec3<u32>(66679u, global0.a.x, var_1.x)) % vec3<u32>(32u)), true));
}

