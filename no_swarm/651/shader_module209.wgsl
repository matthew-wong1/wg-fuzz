struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: vec4<i32>,
    d: Struct_1,
}

struct Struct_5 {
    a: f32,
    b: i32,
    c: vec3<u32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: Struct_5 = Struct_5(-612f, 1i, vec3<u32>(45120u, 9467u, 32391u), Struct_1(vec3<bool>(false, true, true), true, false));

var<private> global2: Struct_1 = Struct_1(vec3<bool>(true, false, true), false, true);

var<private> global3: Struct_5 = Struct_5(-488f, i32(-2147483648), vec3<u32>(4294967295u, 1u, 1u), Struct_1(vec3<bool>(false, false, true), false, true));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_5, arg_1: u32) -> i32 {
    global1 = arg_0;
    global3 = Struct_5(_wgslsmith_f_op_f32(floor(638f)), global1.b, ~(arg_0.c << (max(~global3.c, _wgslsmith_mod_vec3_u32(global1.c, vec3<u32>(arg_0.c.x, u_input.e, 1u))) % vec3<u32>(32u))), global3.d);
    let var_0 = Struct_2(arg_0.b);
    var var_1 = arg_0;
    let var_2 = arg_1;
    return _wgslsmith_div_i32(-55767i, -9384i);
}

fn func_2(arg_0: vec2<i32>, arg_1: vec4<u32>, arg_2: Struct_3) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(507f * _wgslsmith_f_op_f32(-global1.a)) - -1714f), 697f)));
    global1 = Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0, var_0)))) + 738f), func_3(Struct_5(-807f, 16323i, arg_1.xxw | vec3<u32>(u_input.e, u_input.e, global3.c.x), global1.d), _wgslsmith_add_u32(1u, reverseBits(max(arg_1.x, 4294967295u)))), ~_wgslsmith_add_vec3_u32(~vec3<u32>(global3.c.x, global3.c.x, 67716u), firstTrailingBit(vec3<u32>(85059u, global1.c.x, global3.c.x) << (global3.c % vec3<u32>(32u)))), global1.d);
    global0 = vec2<u32>(18473u >> (arg_1.x % 32u), ~(~(~(~28252u))));
    var var_1 = u_input.d.yx;
    global3 = Struct_5(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-2154f, _wgslsmith_f_op_f32(var_0 + global3.a), arg_0.x < 8341i)) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-396f)), _wgslsmith_f_op_f32(step(global1.a, global3.a))))), -1636f), _wgslsmith_sub_i32(~_wgslsmith_dot_vec2_i32(-arg_0, _wgslsmith_sub_vec2_i32(arg_0, vec2<i32>(arg_2.a, u_input.c))), arg_0.x), ~firstLeadingBit(global1.c), global1.d);
    return _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, abs(32918u), global1.c.x), vec3<u32>(abs(_wgslsmith_add_u32(0u, global0.x)), ~u_input.e, u_input.e));
}

fn func_4(arg_0: f32, arg_1: u32) -> Struct_5 {
    var var_0 = vec2<u32>(max(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, 5855u), vec2<u32>(global1.c.x, global0.x))), 0u) & ~(~arg_1 << ((4294967295u & global3.c.x) % 32u)), 4294967295u);
    global0 = ~global1.c.zz;
    var var_1 = global1.b;
    let var_2 = Struct_2(1i);
    global0 = _wgslsmith_add_vec2_u32(global3.c.yz, vec2<u32>(~(~1044u), select(~global3.c.x, _wgslsmith_clamp_u32(1u, 65882u, 4294967295u), all(vec2<bool>(global3.d.a.x, global2.a.x))))) ^ vec2<u32>(71679u, u_input.e);
    return Struct_5(609f, select(firstLeadingBit(-11246i), -2147483647i, _wgslsmith_clamp_i32(firstTrailingBit(-2147483647i), func_3(Struct_5(global1.a, var_2.a, vec3<u32>(global3.c.x, arg_1, arg_1), global1.d), 0u), -19439i) < reverseBits(_wgslsmith_div_i32(u_input.b, u_input.c))), vec3<u32>(~(~u_input.e), func_2(vec2<i32>(-u_input.b, var_2.a), _wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(80346u, global0.x, 47603u, 0u), vec4<u32>(4294967295u, global3.c.x, var_0.x, 546u)), ~vec4<u32>(global1.c.x, 1u, arg_1, 6521u)), Struct_3(u_input.b, !global1.d.a.x, Struct_2(-23457i))), ~u_input.a << (global0.x % 32u)), global3.d);
}

fn func_1(arg_0: Struct_5, arg_1: vec3<i32>, arg_2: Struct_1) -> Struct_2 {
    var var_0 = vec4<bool>(_wgslsmith_f_op_f32(sign(-1910f)) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global3.a))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a))), all(vec3<bool>(any(global2.a.yy), true, false)), true, _wgslsmith_sub_i32(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(global3.b, arg_0.b, arg_1.x, -1i), vec4<i32>(2147483647i, 25816i, -2581i, global3.b))) >= _wgslsmith_mult_i32(abs(-2147483647i), ~(~(-1i))));
    global1 = func_4(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1660f, -1000f), arg_0.a)), countOneBits(func_2(vec2<i32>(arg_0.b | arg_1.x, 2147483647i), firstTrailingBit(~vec4<u32>(16525u, global0.x, u_input.a, 37403u)), Struct_3(abs(1i), true, Struct_2(2147483647i)))));
    let var_1 = global3.a;
    var_0 = !select(!(!vec4<bool>(global3.d.a.x, true, true, global2.b)), select(vec4<bool>(arg_0.d.b, false, global2.a.x, arg_2.c), select(vec4<bool>(false, true, global2.a.x, var_0.x), select(vec4<bool>(arg_0.d.c, true, global1.d.a.x, false), vec4<bool>(true, true, true, true), false), true), select(select(vec4<bool>(global2.a.x, arg_0.d.b, false, true), vec4<bool>(var_0.x, arg_0.d.b, false, true), global1.d.a.x), vec4<bool>(false, true, true, var_0.x), vec4<bool>(global3.d.a.x, global3.d.b, global1.d.b, true))), ~2147483647i <= global3.b);
    return Struct_2(~(-1i));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_4, arg_3: f32) -> vec4<bool> {
    let var_0 = arg_2.a.c;
    global0 = vec2<u32>(select(u_input.e, ~(~_wgslsmith_mult_u32(global3.c.x, global3.c.x)), global3.d.c), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(global3.c | firstLeadingBit(vec3<u32>(u_input.a, 58039u, 27215u)), global1.c), 1706u));
    global1 = func_4(arg_3, 0u);
    let var_1 = firstTrailingBit(~(~((vec4<u32>(4294967295u, 0u, global1.c.x, 5894u) << (vec4<u32>(u_input.e, u_input.a, 1u, 20212u) % vec4<u32>(32u))) << (select(vec4<u32>(global1.c.x, global0.x, 41296u, 1u), vec4<u32>(26459u, 20770u, 63378u, 4294967295u), vec4<bool>(arg_1.b, global3.d.c, arg_0.a.x, arg_0.b)) % vec4<u32>(32u)))));
    return vec4<bool>(all(!select(select(vec4<bool>(global3.d.b, global1.d.b, false, true), vec4<bool>(arg_0.a.x, false, arg_2.a.b, true), vec4<bool>(true, global2.a.x, arg_2.d.b, true)), vec4<bool>(global1.d.b, false, global3.d.a.x, global2.a.x), vec4<bool>(arg_0.a.x, true, true, arg_1.b))), all(vec2<bool>(all(arg_2.d.a), false)), any(vec2<bool>(false, true | !global1.d.c)), arg_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 130f;
    var var_1 = select(vec4<bool>(!all(!vec4<bool>(global1.d.c, global2.a.x, true, false)), !global3.d.a.x, !all(!vec3<bool>(global1.d.b, global1.d.a.x, global3.d.a.x)), !(!global3.d.c)), !vec4<bool>(!all(global1.d.a), global1.d.a.x, select(global1.d.b, global3.d.c, all(global3.d.a.xx)), true), func_5(global1.d, Struct_3(41232i, global1.d.c, func_1(Struct_5(global1.a, 23360i, global1.c, Struct_1(global1.d.a, true, true)), countOneBits(u_input.d), global1.d)), Struct_4(Struct_3(23061i << (0u % 32u), true, func_1(Struct_5(global1.a, global3.b, global1.c, Struct_1(global1.d.a, global2.a.x, global1.d.b)), u_input.d, Struct_1(global2.a, true, global2.b))), i32(-1i) * -2147483647i, vec4<i32>(39267i, -17419i, func_4(334f, u_input.a).b, func_4(global1.a, 5554u).b), func_4(_wgslsmith_f_op_f32(round(global3.a)), 23515u).d), _wgslsmith_f_op_f32(-global1.a)));
    global2 = func_4(557f, global0.x).d;
    global3 = func_4(_wgslsmith_f_op_f32(-func_4(global1.a, global1.c.x).a), min(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(global0.x, ~0u), _wgslsmith_clamp_u32(global0.x, global3.c.x, ~4294967295u), global0.x), func_2(-u_input.d.xy, vec4<u32>(u_input.a, ~34954u, abs(50336u), global0.x), Struct_3(-2147483647i, any(global3.d.a.xy), func_1(Struct_5(207f, u_input.d.x, global1.c, global1.d), u_input.d, Struct_1(global2.a, global2.c, true))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-763f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1226f - global3.a) - _wgslsmith_f_op_f32(floor(987f)))))), _wgslsmith_clamp_vec2_u32(select(global1.c.yz, select(~vec2<u32>(u_input.e, global0.x), _wgslsmith_mult_vec2_u32(global1.c.xy, vec2<u32>(global3.c.x, 1u)), false), func_5(func_4(global3.a, u_input.e).d, Struct_3(u_input.c, false, Struct_2(53415i)), Struct_4(Struct_3(-25002i, var_1.x, Struct_2(u_input.c)), -1i, vec4<i32>(11797i, global3.b, 2147483647i, 0i), global1.d), _wgslsmith_f_op_f32(-global1.a)).wz), abs(~_wgslsmith_mod_vec2_u32(vec2<u32>(14114u, 59760u), vec2<u32>(u_input.a, u_input.a))), min(global3.c.xz, global3.c.yy)));
}

