struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: u32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 13> = array<bool, 13>(false, false, true, false, false, true, false, false, true, true, false, true, true);

var<private> global1: Struct_1;

var<private> global2: array<vec4<i32>, 25>;

var<private> global3: array<vec3<f32>, 25>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: u32, arg_1: vec3<i32>) -> u32 {
    global2 = array<vec4<i32>, 25>();
    let var_0 = vec4<f32>(1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1470f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(1000f)))))), -163f), _wgslsmith_f_op_f32(f32(-1f) * -1761f), -165f);
    var var_1 = var_0.xxw;
    let var_2 = Struct_1(!global1.a, _wgslsmith_dot_vec4_i32(global1.d >> (_wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(12078u, arg_0, 0u, global1.c)), vec4<u32>(arg_0, 1u, global1.c, 0u) << (vec4<u32>(global1.c, 74893u, 49730u, 45603u) % vec4<u32>(32u))) % vec4<u32>(32u)), abs(global1.d) ^ ~_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, 8022i, 2147483647i, -13925i), global2[_wgslsmith_index_u32(1u, 25u)])), 0u, -select(vec4<i32>(arg_1.x, 2147483647i, u_input.b.x, global1.b), firstLeadingBit(global1.d >> (vec4<u32>(global1.c, 0u, 14453u, 61232u) % vec4<u32>(32u))), any(!vec4<bool>(false, global1.a.x, true, global1.a.x))));
    var var_3 = u_input.b;
    return ~(~var_2.c);
}

fn func_2(arg_0: u32, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: Struct_1) -> vec3<bool> {
    global1 = Struct_1(vec3<bool>(true, global1.a.x, all(arg_3.a)), firstTrailingBit(arg_3.d.x), reverseBits(func_3(global1.c, global1.d.xwy)), vec4<i32>(arg_2.d.x >> (_wgslsmith_sub_u32(~arg_2.c, arg_0 | arg_1.x) % 32u), _wgslsmith_add_i32(_wgslsmith_mod_i32(-arg_3.b, 1i), -12877i), -_wgslsmith_dot_vec2_i32(-vec2<i32>(arg_2.b, u_input.a), abs(vec2<i32>(global1.d.x, global1.d.x))), ~arg_3.b));
    global1 = Struct_1(select(global1.a, !global1.a, all(arg_3.a)), -15035i, 4294967295u, global1.d);
    let var_0 = 653i;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-879f, -1712f) + vec2<f32>(-358f, -1000f)), vec2<f32>(1f, 1f), select(false, arg_3.a.x, arg_3.a.x))), vec2<f32>(_wgslsmith_f_op_f32(abs(1358f)), _wgslsmith_f_op_f32(max(-1614f, 1438f))))))));
    let var_2 = min(~_wgslsmith_clamp_vec3_u32(~(arg_1 >> (arg_1 % vec3<u32>(32u))), vec3<u32>(global1.c, 15107u, 40663u), arg_1), ~vec3<u32>(1u, _wgslsmith_mod_u32(1u, 4294967295u), 10224u));
    return vec3<bool>(any(select(vec2<bool>(var_0 <= -2147483647i, true), vec2<bool>(any(vec2<bool>(false, global0[_wgslsmith_index_u32(arg_3.c, 13u)])), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(var_2.x, var_2.x), 13u)]), !any(vec4<bool>(false, global1.a.x, false, false)))), _wgslsmith_add_i32(~(~var_0), -_wgslsmith_div_i32(-1i, global1.b)) == min(var_0, ~_wgslsmith_mod_i32(-1i, arg_2.b)), global0[_wgslsmith_index_u32(~(_wgslsmith_mult_u32(~1u, reverseBits(global1.c)) | arg_1.x), 13u)]);
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: Struct_2, arg_3: i32) -> Struct_1 {
    return Struct_1(vec3<bool>(false, ((global0[_wgslsmith_index_u32(32576u, 13u)] || false) && true) & global1.a.x, true), ~1i, arg_2.b.c, arg_2.a.d);
}

fn func_1() -> i32 {
    var var_0 = func_4(0u, false & global1.a.x, Struct_2(Struct_1(!func_2(global1.c, vec3<u32>(1u, 22812u, global1.c), Struct_1(global1.a, u_input.b.x, global1.c, global1.d), Struct_1(vec3<bool>(global1.a.x, false, global0[_wgslsmith_index_u32(4294967295u, 13u)]), global1.d.x, global1.c, vec4<i32>(u_input.a, -95799i, u_input.b.x, u_input.a))), reverseBits(-global1.d.x), 1u, select(vec4<i32>(-10732i, 35426i, global1.b, 17767i), firstLeadingBit(global2[_wgslsmith_index_u32(global1.c, 25u)]), !global0[_wgslsmith_index_u32(0u, 13u)])), Struct_1(select(global1.a, vec3<bool>(true, false, true), false), _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(global1.d.yz, global1.d.xx, vec2<i32>(global1.d.x, 0i)), select(global1.d.xw, vec2<i32>(global1.d.x, global1.d.x), vec2<bool>(true, global1.a.x))), ~43952u, global1.d)), _wgslsmith_dot_vec4_i32(vec4<i32>(~_wgslsmith_dot_vec4_i32(global2[_wgslsmith_index_u32(global1.c, 25u)], global2[_wgslsmith_index_u32(8948u, 25u)]), ~(~global1.b), 6418i, ~_wgslsmith_sub_i32(0i, u_input.a)), countOneBits(global2[_wgslsmith_index_u32(global1.c, 25u)]) ^ vec4<i32>(max(0i, u_input.b.x), _wgslsmith_mult_i32(global1.d.x, 35799i), global1.b, u_input.a)));
    global0 = array<bool, 13>();
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(1353f, 1551f)), -1834f))))), 662f);
    var var_2 = Struct_2(func_4(var_0.c, false, Struct_2(Struct_1(vec3<bool>(global1.a.x, global1.a.x, global1.a.x), select(0i, u_input.b.x, var_0.a.x), func_3(global1.c, var_0.d.yxy), min(vec4<i32>(global1.d.x, -13973i, global1.b, global1.b), global1.d)), Struct_1(global1.a, var_0.d.x, var_0.c, ~global1.d)), global1.d.x), func_4(min(var_0.c, global1.c), global1.a.x, Struct_2(func_4(_wgslsmith_add_u32(72272u, 1u), any(var_0.a.yx), Struct_2(Struct_1(var_0.a, u_input.a, 109071u, vec4<i32>(u_input.b.x, u_input.b.x, 9547i, global1.d.x)), Struct_1(global1.a, 1i, global1.c, vec4<i32>(var_0.b, 4695i, 51180i, -2147483647i))), -global1.b), Struct_1(select(vec3<bool>(true, false, false), vec3<bool>(var_0.a.x, var_0.a.x, global1.a.x), var_0.a.x), countOneBits(u_input.a), var_0.c & global1.c, vec4<i32>(var_0.d.x, var_0.d.x, var_0.b, -1i))), -2147483647i));
    let var_3 = Struct_2(var_2.a, Struct_1(!vec3<bool>(!var_2.a.a.x, false, var_0.a.x), _wgslsmith_mod_i32(_wgslsmith_div_i32(global1.b, 0i) >> (var_2.a.c % 32u), var_0.d.x), 14906u, vec4<i32>(-_wgslsmith_sub_i32(1i, 2147483647i), var_0.d.x, global1.d.x, var_0.b)));
    return 46119i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.a.yy;
    let var_1 = ~global1.d.wyz;
    let var_2 = vec4<i32>((func_1() ^ _wgslsmith_sub_i32(-7314i, _wgslsmith_add_i32(global1.d.x, global1.d.x))) | u_input.b.x, ~global1.d.x, i32(-1i) * -2147483647i, var_1.x);
    var var_3 = Struct_2(Struct_1(global1.a, u_input.b.x, _wgslsmith_div_u32(max(~1u, global1.c >> (global1.c % 32u)), reverseBits(_wgslsmith_mult_u32(1u, global1.c))), ~firstLeadingBit(_wgslsmith_mod_vec4_i32(global1.d, vec4<i32>(-24823i, u_input.a, 1i, -1i)))), func_4(~global1.c, false, Struct_2(func_4(global1.c, -1i >= u_input.b.x, Struct_2(Struct_1(vec3<bool>(false, global0[_wgslsmith_index_u32(global1.c, 13u)], true), 0i, global1.c, vec4<i32>(35246i, 1i, var_2.x, u_input.a)), Struct_1(vec3<bool>(true, true, global1.a.x), var_2.x, global1.c, var_2)), ~2147483647i), func_4(13568u, any(global1.a.yy), Struct_2(Struct_1(vec3<bool>(false, global1.a.x, true), var_2.x, global1.c, vec4<i32>(var_1.x, global1.d.x, 2147483647i, var_2.x)), Struct_1(global1.a, global1.b, global1.c, var_2)), 0i)), _wgslsmith_div_i32(var_1.x, -2147483647i)));
    var var_4 = abs(~vec4<u32>(countOneBits(~29011u), 1u ^ func_4(6320u, true, Struct_2(var_3.b, var_3.a), 1i).c, func_3(func_4(var_3.a.c, global0[_wgslsmith_index_u32(global1.c, 13u)], Struct_2(Struct_1(var_3.a.a, var_2.x, 0u, vec4<i32>(1925i, 1i, 32809i, u_input.a)), Struct_1(var_3.a.a, -2147483647i, global1.c, vec4<i32>(2147483647i, var_3.a.b, 2147483647i, 0i))), -22301i).c, ~var_1), ~1u));
    let var_5 = func_4(var_4.x, -42369i == _wgslsmith_dot_vec2_i32(vec2<i32>(1i, -35545i), global1.d.yw), Struct_2(func_4(1u, all(vec4<bool>(true, true, global0[_wgslsmith_index_u32(var_3.b.c, 13u)], var_3.b.a.x)), Struct_2(func_4(0u, global1.a.x, Struct_2(Struct_1(global1.a, 26982i, var_3.b.c, var_2), var_3.b), -66619i), Struct_1(var_3.b.a, 0i, 15118u, var_2)), 1i), func_4(~4294967295u, true, Struct_2(Struct_1(vec3<bool>(global0[_wgslsmith_index_u32(30553u, 13u)], false, true), u_input.b.x, 0u, vec4<i32>(u_input.a, 41192i, -2147483647i, 10778i)), Struct_1(var_3.a.a, -55168i, var_4.x, var_3.b.d)), -1i)), ~(-reverseBits(u_input.a)));
    var var_6 = Struct_2(func_4(~reverseBits(_wgslsmith_add_u32(0u, 1u)), !(global1.a.x | !global0[_wgslsmith_index_u32(var_3.a.c, 13u)]), Struct_2(Struct_1(var_5.a, max(-1i, var_2.x), 72445u, -vec4<i32>(-1725i, global1.d.x, 42621i, var_2.x)), Struct_1(select(var_3.a.a, var_5.a, vec3<bool>(global0[_wgslsmith_index_u32(0u, 13u)], true, global1.a.x)), firstTrailingBit(-11186i), 1u, select(vec4<i32>(global1.d.x, var_3.a.d.x, 1i, global1.d.x), vec4<i32>(u_input.b.x, 24830i, var_5.d.x, global1.d.x), vec4<bool>(var_3.b.a.x, false, global0[_wgslsmith_index_u32(37175u, 13u)], false)))), -27388i), Struct_1(var_5.a, var_5.d.x, _wgslsmith_mult_u32(func_3(86312u, _wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, 1i, -28657i), vec3<i32>(-9138i, var_3.b.d.x, -58292i))), _wgslsmith_sub_u32(95437u, ~var_4.x)), func_4(18458u, !select(true, true, var_0.x), Struct_2(func_4(4294967295u, var_3.b.a.x, Struct_2(Struct_1(vec3<bool>(false, global0[_wgslsmith_index_u32(var_3.b.c, 13u)], false), global1.b, global1.c, vec4<i32>(1i, 0i, var_5.b, var_5.d.x)), Struct_1(vec3<bool>(global0[_wgslsmith_index_u32(98062u, 13u)], true, true), global1.d.x, 12930u, global1.d)), -1i), Struct_1(var_3.b.a, 8067i, 46229u, var_5.d)), _wgslsmith_add_i32(69169i, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 9935i, -2147483647i), var_2.xxx))).d));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -775f)) * _wgslsmith_f_op_f32(f32(-1f) * -891f)) * _wgslsmith_div_f32(-713f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -711f))))), reverseBits(func_3(var_3.a.c, -vec3<i32>(var_5.d.x, 24312i, var_6.a.b))));
}

