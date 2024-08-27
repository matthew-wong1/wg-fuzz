struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: vec2<bool>,
    d: f32,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: bool = false;

var<private> global2: bool = false;

var<private> global3: array<bool, 6> = array<bool, 6>(false, true, true, true, false, false);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: Struct_3, arg_1: bool, arg_2: Struct_1, arg_3: i32) -> vec3<i32> {
    var var_0 = arg_2;
    let var_1 = select(select(!select(!vec4<bool>(arg_1, global3[_wgslsmith_index_u32(u_input.b.x, 6u)], true, var_0.a.x), !vec4<bool>(true, false, arg_1, arg_1), true), vec4<bool>(false, !global3[_wgslsmith_index_u32(~u_input.b.x, 6u)], all(!vec4<bool>(false, arg_1, false, global0.c.x)), true), !(!vec4<bool>(global0.c.x, arg_1, arg_1, false))), !select(!vec4<bool>(true, false, true, global3[_wgslsmith_index_u32(103232u, 6u)]), select(!vec4<bool>(global0.c.x, false, false, var_0.a.x), vec4<bool>(true, true, arg_1, global0.c.x), !vec4<bool>(false, global3[_wgslsmith_index_u32(arg_0.a, 6u)], arg_1, global0.c.x)), select(select(vec4<bool>(global3[_wgslsmith_index_u32(72519u, 6u)], arg_1, false, true), vec4<bool>(arg_2.a.x, true, false, false), vec4<bool>(true, true, true, arg_1)), !vec4<bool>(arg_2.a.x, arg_1, arg_1, arg_2.a.x), !vec4<bool>(arg_2.a.x, global0.c.x, false, true))), arg_1);
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-883f, 1128f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, global0.d)), _wgslsmith_f_op_f32(min(global0.d, -271f)))));
    let var_3 = abs(~countOneBits(arg_3));
    let var_4 = abs(_wgslsmith_div_vec3_u32(vec3<u32>(~arg_0.a, ~4294967295u, _wgslsmith_sub_u32(94540u, u_input.b.x)) << (~vec3<u32>(arg_0.a, 33419u, arg_0.a) % vec3<u32>(32u)), vec3<u32>(u_input.b.x, 0u, 79915u)));
    return vec3<i32>(var_3, -53808i, ~(firstTrailingBit(arg_3) >> (_wgslsmith_dot_vec3_u32(var_4, vec3<u32>(0u, arg_0.a, 0u)) % 32u)) & ~_wgslsmith_div_i32(_wgslsmith_sub_i32(var_3, global0.b), _wgslsmith_sub_i32(-39183i, u_input.a.x)));
}

fn func_2(arg_0: f32) -> vec2<i32> {
    var var_0 = !(any(vec3<bool>(false, global0.c.x || true, true)) && select(_wgslsmith_f_op_f32(-arg_0) > _wgslsmith_f_op_f32(sign(arg_0)), false, true));
    global2 = true;
    global0 = Struct_2(-2147483647i, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, global0.b, 1i), func_3(Struct_3(u_input.b.x, Struct_1(vec3<bool>(global3[_wgslsmith_index_u32(4294967295u, 6u)], global0.c.x, false))), global0.c.x, Struct_1(vec3<bool>(true, true, global3[_wgslsmith_index_u32(u_input.b.x, 6u)])), u_input.a.x)), vec3<i32>(-u_input.a.x, global0.b, -u_input.a.x)), _wgslsmith_mult_vec3_i32(min(vec3<i32>(0i, -2147483647i, global0.b), vec3<i32>(2147483647i, 22012i, global0.a)), u_input.a ^ u_input.a) ^ min(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, global0.a, global0.a), vec3<i32>(0i, 2147483647i, 2147483647i)), u_input.a)), vec2<bool>(global0.c.x, global0.c.x && false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-871f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * arg_0))))));
    var_0 = global3[_wgslsmith_index_u32(u_input.b.x, 6u)];
    let var_1 = Struct_2(_wgslsmith_mult_i32(max(_wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, global0.a), u_input.a.x), -1i), select(5714i, reverseBits(u_input.a.x), true), vec2<bool>(true, true), -1640f);
    return ~vec2<i32>(global0.b, _wgslsmith_div_i32(var_1.b, _wgslsmith_sub_i32(var_1.a, -14951i >> (u_input.b.x % 32u))));
}

fn func_4(arg_0: i32) -> Struct_3 {
    let var_0 = global0.d;
    let var_1 = -3056i;
    global3 = array<bool, 6>();
    global1 = global0.c.x;
    var var_2 = ~_wgslsmith_add_u32(~(~u_input.b.x), ~_wgslsmith_dot_vec3_u32(u_input.b.wzx, vec3<u32>(1u, u_input.b.x, u_input.b.x))) >> ((reverseBits(_wgslsmith_mod_u32(2988u | u_input.b.x, countOneBits(20039u))) ^ ~u_input.b.x) % 32u);
    return Struct_3(~u_input.b.x << ((u_input.b.x | 48234u) % 32u), Struct_1(select(select(vec3<bool>(false, global0.c.x, global3[_wgslsmith_index_u32(0u, 6u)]), select(vec3<bool>(global0.c.x, global0.c.x, false), vec3<bool>(global0.c.x, global3[_wgslsmith_index_u32(u_input.b.x, 6u)], false), global3[_wgslsmith_index_u32(u_input.b.x, 6u)]), true), !(!vec3<bool>(true, global3[_wgslsmith_index_u32(u_input.b.x, 6u)], false)), !(!vec3<bool>(global3[_wgslsmith_index_u32(1u, 6u)], global0.c.x, false)))));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_3) -> i32 {
    var var_0 = Struct_1(select(!arg_0.a, !arg_2.b.a, all(func_4(global0.a).b.a.xx)));
    var var_1 = vec4<f32>(global0.d, _wgslsmith_f_op_f32(select(global0.d, -1621f, true)), global0.d, _wgslsmith_f_op_f32(-global0.d));
    let var_2 = vec4<f32>(global0.d, global0.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-451f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.d - 130f) + -868f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x * 951f) * global0.d))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-809f + _wgslsmith_f_op_f32(f32(-1f) * -1104f)), _wgslsmith_f_op_f32(f32(-1f) * -348f)), var_1.x)));
    let var_3 = Struct_2(_wgslsmith_mult_i32(_wgslsmith_sub_i32(max(~global0.a, global0.a), 48665i), 14249i), u_input.a.x, vec2<bool>(true || (_wgslsmith_f_op_f32(sign(-1612f)) == _wgslsmith_f_op_f32(abs(854f))), false), var_2.x);
    global2 = false;
    return max(-2147483647i, var_3.b);
}

fn func_1() -> vec4<bool> {
    global3 = array<bool, 6>();
    var var_0 = func_5(Struct_1(vec3<bool>(global3[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(0u, 74351u, 22182u), 6u)], !(!global3[_wgslsmith_index_u32(1u, 6u)]), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, u_input.b.x) | u_input.b.xyx, select(vec3<u32>(3696u, u_input.b.x, 10750u), vec3<u32>(4294967295u, 0u, u_input.b.x), global0.c.x)), 6u)])), max(u_input.b.yx, vec2<u32>(u_input.b.x, min(_wgslsmith_mult_u32(u_input.b.x, 56553u), 0u))), func_4(max(1785i, _wgslsmith_dot_vec2_i32(func_2(global0.d), _wgslsmith_add_vec2_i32(vec2<i32>(-45537i, u_input.a.x), vec2<i32>(global0.a, -2147483647i))))));
    return !vec4<bool>(any(select(vec3<bool>(false, true, global0.c.x), !vec3<bool>(false, false, global3[_wgslsmith_index_u32(65653u, 6u)]), true)), true, !(!all(vec2<bool>(true, true))), global3[_wgslsmith_index_u32(~(~u_input.b.x), 6u)]);
}

fn func_6(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: Struct_2, arg_3: vec3<i32>) -> bool {
    var var_0 = vec4<i32>(_wgslsmith_add_i32(_wgslsmith_div_i32(1i, func_2(arg_2.d).x) | global0.a, ~(u_input.a.x ^ reverseBits(44770i))), (global0.b & -arg_2.b) & _wgslsmith_mult_i32(global0.b, arg_3.x), _wgslsmith_div_i32(func_3(Struct_3(78205u ^ arg_1.a, func_4(17661i).b), global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(6874u, func_4(global0.a).a), 6u)], Struct_1(arg_1.b.a), 7688i).x, arg_2.a >> (~0u % 32u)), global0.b & countOneBits(_wgslsmith_div_i32(~arg_2.b, -1i)));
    let var_1 = func_4(_wgslsmith_dot_vec4_i32(select(vec4<i32>(select(global0.a, -1i, arg_1.b.a.x), i32(-1i) * -40013i, global0.a, ~arg_3.x), vec4<i32>(-1i) * -vec4<i32>(var_0.x, arg_2.a, global0.a, arg_2.b), !vec4<bool>(arg_0.x, global3[_wgslsmith_index_u32(26979u, 6u)], arg_1.b.a.x, arg_0.x)), vec4<i32>(_wgslsmith_clamp_i32(-24400i, -2147483647i, -33476i) >> (select(u_input.b.x, arg_1.a, global0.c.x) % 32u), func_2(-722f).x, 1i, u_input.a.x)));
    var var_2 = -_wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(select(u_input.a, vec3<i32>(global0.b, 1i, u_input.a.x), arg_1.b.a.x), -(~vec3<i32>(2147483647i, -39656i, 1i))), firstTrailingBit(arg_3));
    global1 = all(!(!vec3<bool>(var_1.b.a.x, func_1().x, global3[_wgslsmith_index_u32(83707u, 6u)] && true)));
    var var_3 = Struct_2(u_input.a.x ^ u_input.a.x, 12008i, !(!func_1().zz), _wgslsmith_f_op_f32(arg_2.d * arg_2.d));
    return !func_4(36526i).b.a.x;
}

fn func_7(arg_0: vec4<bool>) -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-363f, 1000f), vec2<f32>(387f, global0.d), global0.c))), vec2<f32>(_wgslsmith_f_op_f32(-490f + global0.d), global0.d))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.d, _wgslsmith_f_op_f32(-global0.d)) - vec2<f32>(global0.d, _wgslsmith_f_op_f32(543f - -319f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(-global0.d), _wgslsmith_div_f32(global0.d, global0.d))))));
    var var_1 = select(_wgslsmith_mod_vec4_i32(vec4<i32>(global0.b, _wgslsmith_clamp_i32(-2147483647i, global0.b, -1i), -2147483647i | u_input.a.x, ~5650i), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, global0.a, u_input.a.x), vec4<i32>(31772i, 2147483647i, 12952i, 44971i)) ^ _wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, 0i, -1i, -1i), vec4<i32>(global0.b, global0.b, -11437i, global0.a))), -(~vec4<i32>(1i, 2147483647i, 0i, 6207i)), vec4<bool>(true, _wgslsmith_f_op_f32(floor(-532f)) != _wgslsmith_f_op_f32(round(var_0.x)), true, !(!global3[_wgslsmith_index_u32(u_input.b.x, 6u)]))) ^ abs(_wgslsmith_mult_vec4_i32(~(-vec4<i32>(global0.a, global0.a, global0.b, global0.b)), _wgslsmith_add_vec4_i32(-vec4<i32>(3706i, -19748i, 0i, -1i), _wgslsmith_div_vec4_i32(vec4<i32>(54043i, global0.a, 1i, -18916i), vec4<i32>(-10316i, global0.b, -19366i, -5699i)))));
    var var_2 = Struct_1(arg_0.wyz);
    var_1 = select(_wgslsmith_add_vec4_i32(-vec4<i32>(reverseBits(13632i), 2147483647i, _wgslsmith_add_i32(6469i, -9033i), 0i), -(~vec4<i32>(global0.a, -2147483647i, u_input.a.x, -285i))), vec4<i32>(firstTrailingBit(-69933i) ^ (i32(-1i) * -67227i), global0.b, u_input.a.x, -1i) >> (max(vec4<u32>(u_input.b.x, u_input.b.x, 59572u, 0u) | u_input.b, ~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, 1u, u_input.b.x, u_input.b.x), u_input.b)) % vec4<u32>(32u)), !func_1());
    let var_3 = u_input.b.x;
    return StorageBuffer(_wgslsmith_add_i32(26811i, 24356i), ~var_1.x, 1369f, func_3(func_4(global0.a), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_0.x, 2554f), 735f)) <= -397f, func_4(countOneBits(_wgslsmith_mult_i32(-1i, global0.a))).b, var_1.x).x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.x;
    var var_1 = u_input.b.x;
    global1 = all(vec4<bool>(!(!(!global3[_wgslsmith_index_u32(891u, 6u)])), !(!global0.c.x) & global3[_wgslsmith_index_u32(1u ^ _wgslsmith_dot_vec2_u32(vec2<u32>(var_0, var_0), u_input.b.yy), 6u)], select(global3[_wgslsmith_index_u32(50035u, 6u)], any(select(vec4<bool>(global0.c.x, global0.c.x, false, true), vec4<bool>(global3[_wgslsmith_index_u32(11715u, 6u)], global0.c.x, true, global0.c.x), vec4<bool>(global0.c.x, global3[_wgslsmith_index_u32(var_0, 6u)], false, global0.c.x))), global0.c.x), true));
    global0 = Struct_2(-firstTrailingBit(global0.b), abs(_wgslsmith_sub_i32(-2147483647i, -66i)), select(select(!global0.c, global0.c, false), vec2<bool>(623f <= _wgslsmith_f_op_f32(round(1326f)), global3[_wgslsmith_index_u32(~_wgslsmith_mod_u32(5395u, var_0), 6u)]), !(!(!global0.c.x))), global0.d);
    let var_2 = global3[_wgslsmith_index_u32(~u_input.b.x, 6u)];
    var var_3 = Struct_1(!select(vec3<bool>(global0.c.x, !global0.c.x, any(vec4<bool>(global0.c.x, global3[_wgslsmith_index_u32(var_0, 6u)], true, global3[_wgslsmith_index_u32(u_input.b.x, 6u)]))), !select(vec3<bool>(true, true, true), vec3<bool>(global3[_wgslsmith_index_u32(var_0, 6u)], true, global0.c.x), false), !global3[_wgslsmith_index_u32(var_0 | var_0, 6u)]));
    var var_4 = vec2<f32>(_wgslsmith_f_op_f32(-1505f - 1897f), -641f);
    var_1 = ~1u;
    let x = u_input.a;
    s_output = func_7(select(vec4<bool>(any(vec4<bool>(true, false, global0.c.x, true)) || (global0.d >= global0.d), global0.c.x, var_3.a.x, func_6(func_1(), Struct_3(0u, Struct_1(var_3.a)), Struct_2(global0.b, u_input.a.x, global0.c, var_4.x), vec3<i32>(global0.a, global0.b, 24836i) << (u_input.b.zwy % vec3<u32>(32u)))), !select(select(vec4<bool>(true, false, true, var_3.a.x), vec4<bool>(true, true, true, false), false), select(vec4<bool>(true, false, global3[_wgslsmith_index_u32(var_0, 6u)], true), vec4<bool>(false, global3[_wgslsmith_index_u32(var_0, 6u)], global0.c.x, global3[_wgslsmith_index_u32(var_0, 6u)]), var_3.a.x), any(var_3.a)), !(!func_1())));
}

