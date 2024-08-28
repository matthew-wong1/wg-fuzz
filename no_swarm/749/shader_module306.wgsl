struct Struct_1 {
    a: vec2<bool>,
    b: vec4<bool>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec2<bool>,
    c: vec2<i32>,
    d: Struct_1,
    e: vec3<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: f32,
    d: f32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: vec2<bool>;

var<private> global2: bool;

var<private> global3: array<Struct_4, 18>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_4, arg_1: f32, arg_2: vec3<u32>, arg_3: bool) -> vec2<u32> {
    global0 = ~vec2<i32>(-(-global0.x ^ select(0i, u_input.b.x, true)), global0.x);
    var var_0 = Struct_2(Struct_1(arg_0.a.b.zw, select(!select(vec4<bool>(true, true, arg_0.a.a.x, global1.x), vec4<bool>(arg_0.a.b.x, arg_3, global1.x, false), vec4<bool>(arg_3, false, arg_0.a.a.x, true)), vec4<bool>(u_input.b.x > 14389i, arg_0.a.b.x, arg_3, arg_3), select(arg_0.a.b, !arg_0.a.b, select(vec4<bool>(arg_0.b, true, true, arg_3), vec4<bool>(global1.x, true, global1.x, arg_0.b), arg_0.a.b))), ~arg_2.yy), abs(arg_0.a.c.x), arg_0.a);
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -836f) + _wgslsmith_f_op_f32(-1271f + -773f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-960f * arg_1)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(132f, arg_1)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-818f, 269f))))));
    let var_2 = ~(~u_input.a);
    let var_3 = Struct_4(Struct_1(!(!var_0.c.b.xw), arg_0.a.b, (~arg_0.a.c << (~arg_0.a.c % vec2<u32>(32u))) & arg_2.yy), false);
    return ~(~firstLeadingBit(var_0.a.c) << (~vec2<u32>(4294967295u, ~var_2) % vec2<u32>(32u)));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<u32>) -> bool {
    var var_0 = Struct_3(_wgslsmith_mod_u32(~40238u, 14899u), vec2<bool>(true, !global1.x), vec2<i32>(-1i) * -abs(u_input.b.zy >> (vec2<u32>(0u, 21012u) % vec2<u32>(32u))), Struct_1(arg_0.a.b.zx, select(vec4<bool>(true, global1.x, global1.x, all(arg_0.a.b)), arg_0.c.b, arg_0.a.b), vec2<u32>(arg_1.x, min(~4294967295u, arg_1.x))), arg_1.xyz);
    let var_1 = Struct_4(arg_0.a, true);
    var var_2 = Struct_3(_wgslsmith_mod_u32(4294967295u, (min(1u, arg_1.x) | arg_1.x) | _wgslsmith_dot_vec2_u32(abs(vec2<u32>(var_0.e.x, arg_0.b)), func_3(global3[_wgslsmith_index_u32(25238u, 18u)], -809f, arg_1.xzz, true))), var_1.a.a, var_0.c, Struct_1(vec2<bool>(any(!vec4<bool>(var_1.a.b.x, false, true, false)), select(false, false, arg_0.a.b.x) | !arg_0.a.a.x), var_0.d.b, ~vec2<u32>(~arg_0.c.c.x, ~var_1.a.c.x)), vec3<u32>(0u, 1u, 1u));
    var var_3 = Struct_3(_wgslsmith_div_u32(~var_2.d.c.x, 48220u), select(vec2<bool>(true, true), var_2.b, var_1.b), firstLeadingBit(u_input.b.zy) ^ ~(-_wgslsmith_div_vec2_i32(var_0.c, var_2.c)), var_0.d, max(vec3<u32>(~arg_1.x, _wgslsmith_clamp_u32(11527u, 108720u, ~1u), 42002u), _wgslsmith_mod_vec3_u32(vec3<u32>(36948u, var_0.e.x, u_input.a) | var_2.e, min(vec3<u32>(var_0.a, arg_0.b, 0u), vec3<u32>(4294967295u, 1u, 0u)))));
    var var_4 = 7371i;
    return true;
}

fn func_1(arg_0: vec2<bool>, arg_1: vec2<i32>) -> u32 {
    global2 = false;
    global2 = true;
    var var_0 = _wgslsmith_f_op_f32(trunc(351f));
    global0 = -vec2<i32>(countOneBits(global0.x), ~u_input.b.x);
    var var_1 = select(vec4<bool>(arg_0.x, any(vec3<bool>(global1.x, false, global1.x)) || any(vec4<bool>(true, true, true, arg_0.x)), any(!vec2<bool>(arg_0.x, global1.x)), global1.x), vec4<bool>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(551f)))) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1518f * 187f) + _wgslsmith_f_op_f32(max(-1000f, 700f))), !global1.x, true, !(all(vec3<bool>(global1.x, arg_0.x, false)) || true)), select(~_wgslsmith_add_u32(u_input.a, u_input.c) <= firstTrailingBit(~4294967295u), select(global1.x, func_2(Struct_2(Struct_1(arg_0, vec4<bool>(true, global1.x, global1.x, global1.x), vec2<u32>(u_input.a, u_input.a)), u_input.a, Struct_1(arg_0, vec4<bool>(arg_0.x, global1.x, arg_0.x, arg_0.x), vec2<u32>(u_input.c, 61213u))), max(vec4<u32>(u_input.c, u_input.a, 14776u, 22279u), vec4<u32>(u_input.a, u_input.c, u_input.a, u_input.c))), any(select(vec3<bool>(arg_0.x, global1.x, global1.x), vec3<bool>(arg_0.x, true, arg_0.x), true))), (all(vec2<bool>(global1.x, arg_0.x)) & any(vec3<bool>(global1.x, true, true))) || all(!vec2<bool>(arg_0.x, global1.x))));
    return u_input.c;
}

fn func_4(arg_0: u32, arg_1: vec2<i32>, arg_2: vec3<bool>, arg_3: Struct_4) -> Struct_3 {
    global1 = select(arg_2.zx, arg_3.a.a, all(arg_3.a.b.xwx));
    let var_0 = vec4<i32>(-_wgslsmith_clamp_i32(max(-61779i, -16420i) & select(u_input.b.x, arg_1.x, false), global0.x, -2147483647i), select(-4657i, _wgslsmith_mod_i32(global0.x, _wgslsmith_div_i32(i32(-1i) * -2147483647i, _wgslsmith_sub_i32(arg_1.x, arg_1.x))), false), ~global0.x << (49336u % 32u), _wgslsmith_mod_i32(-1i, _wgslsmith_mod_i32(35057i, _wgslsmith_div_i32(~u_input.b.x, _wgslsmith_dot_vec2_i32(arg_1, vec2<i32>(global0.x, -34560i))))));
    let var_1 = all(arg_3.a.b);
    global1 = !select(select(arg_2.zz, !arg_2.yy, arg_2.x), select(select(arg_3.a.a, select(arg_2.zx, arg_2.yy, true), !arg_3.b), vec2<bool>(-1i < u_input.b.x, true), any(vec3<bool>(true, true, global1.x)) & var_1), true);
    let var_2 = Struct_3(11810u, arg_3.a.b.yx, vec2<i32>(~(~(~global0.x)), u_input.b.x), arg_3.a, ~vec3<u32>(~0u, u_input.a, _wgslsmith_div_u32(arg_3.a.c.x << (arg_0 % 32u), firstTrailingBit(u_input.a))));
    return Struct_3(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, ~10816u, ~0u, max(0u, 28737u)), vec4<u32>(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(20944u, 68380u, arg_0, arg_0), vec4<u32>(4294967295u, 65020u, var_2.a, 1u)), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, arg_0, var_2.e.x, 4294967295u), vec4<u32>(arg_0, 112417u, 1567u, 1u)), 0u)), arg_3.a.a, vec2<i32>(var_0.x, _wgslsmith_clamp_i32(reverseBits(~0i), global0.x, _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.b.x, -1i), ~vec2<i32>(11665i, var_2.c.x)))), arg_3.a, ~_wgslsmith_add_vec3_u32(var_2.e, var_2.e) >> ((select(abs(vec3<u32>(u_input.c, 0u, var_2.a)), ~vec3<u32>(var_2.a, 1u, 18422u), var_2.d.b.zxz) & vec3<u32>(~83745u, _wgslsmith_mod_u32(arg_3.a.c.x, 1u), 17391u)) % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(max(u_input.c, func_1(!select(vec2<bool>(global1.x, true), vec2<bool>(global1.x, global1.x), vec2<bool>(true, global1.x)), u_input.b.yz)), u_input.b.zz & u_input.b.xz, select(vec3<bool>(any(select(vec4<bool>(true, global1.x, global1.x, true), vec4<bool>(global1.x, global1.x, false, true), vec4<bool>(global1.x, global1.x, false, false))), true, global1.x), select(vec3<bool>(global1.x, true, global1.x), !(!vec3<bool>(false, global1.x, global1.x)), vec3<bool>(true, false, !global1.x)), true), global3[_wgslsmith_index_u32(~56546u, 18u)]);
    global3 = array<Struct_4, 18>();
    let var_1 = func_4(_wgslsmith_dot_vec2_u32(vec2<u32>(~7892u, ~4294967295u) ^ vec2<u32>(abs(var_0.a), u_input.a), select(~var_0.d.c, _wgslsmith_add_vec2_u32(countOneBits(vec2<u32>(var_0.d.c.x, u_input.a)), ~var_0.d.c), !var_0.d.a)), vec2<i32>(_wgslsmith_add_i32(global0.x, u_input.b.x), select(u_input.b.x, var_0.c.x, var_0.b.x)), var_0.d.b.yxz, Struct_4(Struct_1(select(!vec2<bool>(global1.x, var_0.b.x), var_0.d.a, vec2<bool>(var_0.b.x, false)), !vec4<bool>(var_0.b.x, global1.x, true, global1.x), vec2<u32>(u_input.a, 47343u) << (var_0.e.yx % vec2<u32>(32u))), var_0.d.a.x)).d.b;
    var var_2 = vec2<u32>(~u_input.c, 4294967295u);
    var var_3 = func_4(u_input.a, ~_wgslsmith_mod_vec2_i32(~vec2<i32>(var_0.c.x, u_input.b.x), -func_4(60505u, var_0.c, var_1.wwx, Struct_4(var_0.d, true)).c), var_0.d.b.zyw, Struct_4(var_0.d, all(vec4<bool>(!var_0.b.x, select(var_0.b.x, false, true), global1.x, any(var_0.d.b.zyz)))));
    var_2 = vec2<u32>(~(~_wgslsmith_mult_u32(74327u, 7220u)), 4065u);
    let var_4 = !(!var_3.b.x);
    var var_5 = _wgslsmith_mod_u32(~((var_0.e.x & var_3.a) & firstTrailingBit(var_3.d.c.x)) & (var_0.e.x | var_2.x), _wgslsmith_sub_u32(4294967295u, 0u));
    let var_6 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(576f * 330f)) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(441f - 329f), _wgslsmith_f_op_f32(abs(634f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.d.c, _wgslsmith_sub_u32(firstTrailingBit(1u), 36518u), var_6, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(240f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_6)))))), _wgslsmith_div_vec2_u32(~vec2<u32>(24732u >> (var_0.a % 32u), 6197u), vec2<u32>(firstLeadingBit(var_0.d.c.x), 0u | var_3.e.x) & var_0.d.c));
}

