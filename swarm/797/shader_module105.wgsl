struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 31> = array<vec4<bool>, 31>(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false));

var<private> global1: Struct_1;

var<private> global2: Struct_2;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec4<i32>, arg_1: bool, arg_2: vec3<f32>) -> f32 {
    global0 = array<vec4<bool>, 31>();
    global2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-2019f * arg_2.x)), (min(_wgslsmith_mult_i32(arg_0.x, -2147483647i), 1i) & ~(-u_input.c.x)) & -37259i, ~(~global2.c), Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a.a + global2.a.a))))));
    global0 = array<vec4<bool>, 31>();
    var var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(-626f - 858f))), -912f)), -442f, true));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a))))));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<bool>) -> i32 {
    let var_0 = -(countOneBits(-firstTrailingBit(vec4<i32>(u_input.c.x, arg_0.b, global2.b, -2147483647i))) & vec4<i32>(_wgslsmith_add_i32(~(-21889i), -45391i), global2.b, -13630i, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.a.x, 5459i, -2147483647i), _wgslsmith_div_vec4_i32(vec4<i32>(global2.b, -16144i, arg_0.b, u_input.c.x), vec4<i32>(u_input.a.x, u_input.a.x, global2.b, global2.b)))));
    let var_1 = arg_0.d;
    global1 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1.a))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1.a))))))));
    let var_2 = Struct_2(arg_0.d, countOneBits(_wgslsmith_sub_i32(18411i, var_0.x)), _wgslsmith_dot_vec2_u32(u_input.b.yw, ~_wgslsmith_mod_vec2_u32(u_input.b.wz, u_input.b.xz)) & (abs(12448u) | arg_0.c), Struct_1(global1.a));
    var var_3 = Struct_1(global1.a);
    return -1i;
}

fn func_2(arg_0: vec3<u32>, arg_1: bool) -> Struct_2 {
    var var_0 = func_4(Struct_2(Struct_1(_wgslsmith_f_op_f32(-651f + _wgslsmith_f_op_f32(func_3(vec4<i32>(8880i, u_input.c.x, u_input.c.x, 48164i), true, vec3<f32>(global2.d.a, 839f, global2.d.a))))), 653i, u_input.b.x, Struct_1(global1.a)), select(select(select(vec2<bool>(true, false), vec2<bool>(false, arg_1), select(false, arg_1, true)), select(select(vec2<bool>(arg_1, true), vec2<bool>(arg_1, false), vec2<bool>(false, true)), !vec2<bool>(arg_1, false), select(vec2<bool>(arg_1, arg_1), vec2<bool>(false, arg_1), vec2<bool>(false, false))), arg_1), select(select(vec2<bool>(arg_1, arg_1), select(vec2<bool>(arg_1, false), vec2<bool>(false, false), arg_1), all(global0[_wgslsmith_index_u32(1u, 31u)])), select(vec2<bool>(arg_1, true), select(vec2<bool>(arg_1, true), vec2<bool>(arg_1, true), arg_1), !arg_1), ~39201u <= ~u_input.b.x), any(select(global0[_wgslsmith_index_u32(u_input.b.x, 31u)], global0[_wgslsmith_index_u32(_wgslsmith_div_u32(34264u, global2.c), 31u)], !global0[_wgslsmith_index_u32(1u, 31u)]))));
    global0 = array<vec4<bool>, 31>();
    return Struct_2(global2.a, -2147483647i, ~4294967295u, global2.a);
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_2) -> Struct_1 {
    return arg_1.d;
}

fn func_1() -> vec4<bool> {
    let var_0 = Struct_1(global2.d.a);
    var var_1 = Struct_2(global2.d, 1i, 0u, func_5(vec2<bool>(true, true), func_2(~(vec3<u32>(global2.c, global2.c, 42911u) & u_input.b.yyz), firstTrailingBit(global2.c) >= _wgslsmith_dot_vec4_u32(vec4<u32>(global2.c, u_input.b.x, global2.c, global2.c), u_input.b))));
    var var_2 = !(global2.c <= u_input.b.x);
    global0 = array<vec4<bool>, 31>();
    global0 = array<vec4<bool>, 31>();
    return global0[_wgslsmith_index_u32(3321u | max((30948u | var_1.c) << (_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(38276u, 4294967295u), vec2<u32>(0u, var_1.c)), vec2<u32>(var_1.c, 65281u) << (vec2<u32>(u_input.b.x, u_input.b.x) % vec2<u32>(32u))) % 32u), ~_wgslsmith_mod_u32(4294967295u, u_input.b.x)), 31u)];
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 31>();
    let var_0 = true;
    let var_1 = select(!func_1(), select(func_1(), !(!global0[_wgslsmith_index_u32(u_input.b.x & u_input.b.x, 31u)]), all(vec2<bool>(396f <= global2.d.a, select(false, var_0, var_0)))), global0[_wgslsmith_index_u32(~21823u, 31u)]);
    let x = u_input.a;
    s_output = StorageBuffer(1u, _wgslsmith_div_i32(max(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(global2.b, -2147483647i, u_input.a.x, global2.b), vec4<i32>(-12249i, global2.b, u_input.a.x, global2.b)), ~vec4<i32>(2147483647i, u_input.c.x, global2.b, global2.b)), -1i), _wgslsmith_clamp_i32(global2.b, ~u_input.c.x, global2.b)), 1u, -570f, _wgslsmith_mult_i32(-_wgslsmith_div_i32(u_input.c.x, 0i), _wgslsmith_add_i32(2147483647i, -1i)) >> (1u % 32u));
}

