struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: f32,
    d: vec3<u32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
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

var<private> global0: vec4<i32> = vec4<i32>(11134i, i32(-2147483648), 2147483647i, i32(-2147483648));

var<private> global1: vec3<u32> = vec3<u32>(0u, 1u, 23935u);

var<private> global2: vec2<f32>;

var<private> global3: vec2<bool> = vec2<bool>(false, false);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_2, arg_1: f32) -> f32 {
    let var_0 = Struct_2(arg_0.a);
    let var_1 = global0.x;
    var var_2 = ~(~global0.x & -41622i);
    global3 = select(vec2<bool>(global3.x, arg_0.a.a), !select(select(vec2<bool>(global3.x, var_0.a.a), select(vec2<bool>(true, arg_0.a.a), vec2<bool>(var_0.a.a, arg_0.a.a), true), true), vec2<bool>(any(vec3<bool>(true, true, global3.x)), all(vec2<bool>(global3.x, arg_0.a.a))), true), all(select(vec3<bool>(global3.x, true, var_0.a.a), vec3<bool>(true, !global3.x, true), !vec3<bool>(true, global3.x, global3.x))));
    var var_3 = arg_0.a;
    return arg_1;
}

fn func_2() -> i32 {
    var var_0 = select(vec4<i32>(_wgslsmith_mult_i32(9808i, ~(i32(-1i) * -64673i)), select(~global0.x, 1i, !all(vec2<bool>(global3.x, global3.x))), global0.x, 2823i), vec4<i32>(-(~(global0.x ^ global0.x)), ~_wgslsmith_dot_vec4_i32(vec4<i32>(-35416i, global0.x, global0.x, -17268i), vec4<i32>(-2147483647i, -9914i, global0.x, 35050i)), ~1i, abs(global0.x)), global3.x);
    let var_1 = reverseBits(vec4<i32>(8944i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, -27660i, 2147483647i, global0.x), -vec4<i32>(35024i, var_0.x, global0.x, global0.x)), -var_0.x, -2147483647i)) << ((min(vec4<u32>(global1.x, 4294967295u, 39954u, u_input.b.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(global1.x, global1.x, 9419u, global1.x), vec4<u32>(617u, 0u, global1.x, 37772u), vec4<u32>(u_input.a, 45146u, 81689u, global1.x))) ^ ~(vec4<u32>(4294967295u, 1u, 49254u, 0u) | firstLeadingBit(vec4<u32>(u_input.a, u_input.b.x, 88824u, 0u)))) % vec4<u32>(32u));
    global2 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(true, var_1.x)), -592f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global2.x, global2.x))))))));
    var var_2 = Struct_3(~_wgslsmith_dot_vec4_u32(abs(vec4<u32>(1u, 4294967295u, 4502u, global1.x)), _wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, 49580u, 47262u), vec4<u32>(1u, 0u, global1.x, u_input.b.x)), ~vec4<u32>(global1.x, u_input.b.x, 40809u, 16706u), select(vec4<u32>(45197u, global1.x, 1u, 4294967295u), vec4<u32>(u_input.b.x, u_input.a, 112856u, u_input.a), global3.x))), Struct_1(!(!global3.x && global3.x), 2147483647i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(284f)))))), ~_wgslsmith_sub_vec3_u32(vec3<u32>(countOneBits(7763u), ~global1.x, 0u), u_input.b));
    var var_3 = -14591i;
    return -5681i;
}

fn func_1(arg_0: Struct_1, arg_1: vec2<i32>) -> Struct_2 {
    global0 = ~(vec4<i32>(_wgslsmith_mult_i32(-global0.x, _wgslsmith_sub_i32(global0.x, -18776i)), ~func_2(), (-2147483647i >> (u_input.b.x % 32u)) << ((global1.x >> (global1.x % 32u)) % 32u), _wgslsmith_add_i32(1i, ~25491i)) & vec4<i32>(func_2(), -2147483647i, 44514i, _wgslsmith_clamp_i32(-2147483647i, arg_1.x, arg_0.b) & 1i));
    global0 = ~(~firstTrailingBit(select(_wgslsmith_div_vec4_i32(vec4<i32>(1i, -2147483647i, arg_1.x, 2147483647i), vec4<i32>(15075i, 73149i, arg_1.x, global0.x)), _wgslsmith_div_vec4_i32(vec4<i32>(arg_1.x, global0.x, arg_1.x, arg_0.b), vec4<i32>(-2147483647i, arg_0.b, global0.x, global0.x)), arg_0.a)));
    var var_0 = Struct_4(~4294967295u, Struct_2(Struct_1(arg_0.a, 1i)), Struct_1(false, 26699i), arg_0.b);
    var var_1 = _wgslsmith_f_op_f32(-global2.x);
    var_0 = Struct_4(_wgslsmith_mod_u32(global1.x, 1u), Struct_2(var_0.b.a), var_0.b.a, arg_0.b);
    return Struct_2(arg_0);
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: u32, arg_3: Struct_2) -> i32 {
    global3 = vec2<bool>(all(vec2<bool>(true, any(vec4<bool>(arg_3.a.a, true, false, true)))), all(!vec2<bool>(!arg_1.a.a, true)));
    var var_0 = func_1(func_1(arg_1.a, vec2<i32>(-2147483647i | _wgslsmith_dot_vec2_i32(global0.yx, vec2<i32>(-2147483647i, arg_1.a.b)), -1i)).a, global0.wy).a;
    global2 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(744f)), arg_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * _wgslsmith_f_op_f32(-global2.x)) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -535f) + _wgslsmith_f_op_f32(437f - arg_0))))));
    var_0 = func_1(arg_3.a, _wgslsmith_div_vec2_i32(-(global0.zx | global0.wx), vec2<i32>(arg_3.a.b, max(-58868i, arg_3.a.b)))).a;
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2164f * 1093f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(-1000f + arg_0)) * _wgslsmith_f_op_f32(-1032f - _wgslsmith_f_op_f32(abs(arg_0))))), arg_0, _wgslsmith_f_op_f32(select(arg_0, _wgslsmith_f_op_f32(step(184f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0))))), any(vec4<bool>(global3.x, var_0.a, global1.x > 170524u, true | arg_1.a.a)))));
    return global0.x;
}

fn func_5(arg_0: Struct_4, arg_1: f32) -> Struct_1 {
    var var_0 = ~arg_0.a;
    var var_1 = Struct_3(~97097u, arg_0.b.a, arg_1, vec3<u32>(global1.x, global1.x, 1u));
    let var_2 = global1.x;
    var_0 = countOneBits(62437u);
    var var_3 = ~_wgslsmith_clamp_u32(1u, arg_0.a, ~(~var_1.d.x));
    return Struct_1(all(vec4<bool>(false, true, any(vec4<bool>(global3.x, true, var_1.b.a, true)), true)), func_2() << (18625u % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3.x;
    var var_1 = func_5(Struct_4(~0u, Struct_2(Struct_1(true, global0.x)), Struct_1(true, _wgslsmith_add_i32(1i, global0.x)), func_4(726f, func_1(Struct_1(false, -1i), vec2<i32>(global0.x, -2147483647i)), 44369u, func_1(Struct_1(false, global0.x), firstLeadingBit(vec2<i32>(-2147483647i, 0i))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(false, -31901i)), global2.x)))));
    let var_2 = Struct_4(~_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.b, vec3<u32>(4294967295u, u_input.a, 2426u)), u_input.b), abs(global1.x) ^ _wgslsmith_mult_u32(14416u, 5193u)), Struct_2(func_1(func_1(Struct_1(var_1.a, 44478i), global0.wx).a, min(countOneBits(global0.yx), vec2<i32>(0i, global0.x))).a), func_1(func_5(Struct_4(23572u, func_1(Struct_1(true, 21070i), global0.xx), Struct_1(true, 2147483647i), -2147483647i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1087f)) - _wgslsmith_f_op_f32(-2542f - global2.x))), vec2<i32>(0i, 2820i)).a, global0.x);
    global1 = reverseBits(u_input.b);
    var_1 = Struct_1(_wgslsmith_dot_vec3_u32(select(abs(vec3<u32>(1u, 24146u, u_input.b.x)), min(u_input.b, vec3<u32>(u_input.a, 4294967295u, var_2.a)), vec3<bool>(false, global3.x, var_2.b.a.a)), vec3<u32>(1u, _wgslsmith_div_u32(0u, u_input.b.x), ~u_input.b.x)) != ((_wgslsmith_mod_u32(var_2.a, 18546u) & _wgslsmith_dot_vec2_u32(vec2<u32>(var_2.a, 1u), vec2<u32>(86849u, 1u))) | var_2.a), 1i);
    var var_3 = Struct_3(_wgslsmith_dot_vec3_u32(vec3<u32>(~(~var_2.a), 17554u, 53287u), vec3<u32>(global1.x, 0u, ~59148u)), Struct_1(select(select(-55196i, -37368i, global3.x) > 1i, all(select(vec2<bool>(true, false), vec2<bool>(true, false), true)), any(!vec4<bool>(var_1.a, var_1.a, false, true))), -min(-1i, -2147483647i)), _wgslsmith_f_op_f32(global2.x * _wgslsmith_f_op_f32(1525f * global2.x)), u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(global0.wxw);
}

