struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: vec3<bool>,
    b: Struct_3,
    c: vec2<bool>,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<bool>(true, false, true), Struct_1(vec3<bool>(false, false, false), true, 0i), Struct_1(vec3<bool>(true, true, true), true, 0i));

var<private> global1: vec4<i32>;

var<private> global2: i32;

var<private> global3: Struct_2 = Struct_2(vec3<bool>(false, true, false), Struct_1(vec3<bool>(false, true, false), true, 9303i), Struct_1(vec3<bool>(true, true, true), false, -1i));

var<private> global4: array<vec4<i32>, 9>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: bool, arg_1: vec4<i32>, arg_2: f32) -> vec2<u32> {
    var var_0 = Struct_2(vec3<bool>((all(vec4<bool>(global0.c.b, false, arg_0, arg_0)) | (arg_0 & arg_0)) || true, any(global0.c.a.xx), true), Struct_1(select(global0.b.a, !global3.b.a, vec3<bool>(true, select(global3.b.a.x, global0.a.x, global3.b.a.x), global3.a.x)), any(select(!global3.a, select(vec3<bool>(true, false, true), vec3<bool>(true, global3.c.b, false), global3.a.x), arg_0)), global1.x), global0.b);
    var var_1 = arg_0;
    global0 = Struct_2(var_0.c.a, global3.c, Struct_1(vec3<bool>(any(!vec3<bool>(true, global0.a.x, arg_0)), all(vec4<bool>(false, global3.b.a.x, arg_0, arg_0)), !all(vec3<bool>(true, true, true))), !var_0.c.a.x & true, reverseBits(-2147483647i)));
    var var_2 = abs(-10126i);
    let var_3 = _wgslsmith_add_i32(var_0.b.c, 2147483647i);
    return vec2<u32>(0u, 11850u);
}

fn func_2() -> Struct_3 {
    var var_0 = i32(-1i) * -global1.x;
    var var_1 = _wgslsmith_mult_vec2_u32(~_wgslsmith_mult_vec2_u32(func_3(!global3.b.a.x, _wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, global0.c.c, -24989i, global3.b.c), global4[_wgslsmith_index_u32(4294967295u, 9u)]), _wgslsmith_div_f32(-2648f, -1171f)), u_input.e), vec2<u32>(((u_input.c | u_input.c) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(11557u, u_input.c, u_input.c, 4294967295u), vec4<u32>(19732u, 45854u, 1u, u_input.e.x))) | (1u ^ u_input.e.x), _wgslsmith_dot_vec4_u32(vec4<u32>(select(u_input.e.x, u_input.e.x, false), abs(u_input.c), _wgslsmith_dot_vec2_u32(u_input.e, u_input.e), u_input.c), min(firstTrailingBit(vec4<u32>(0u, u_input.c, u_input.c, u_input.e.x)), vec4<u32>(42771u, 73730u, 4294967295u, 4294967295u)))));
    let var_2 = global0.c.a.x;
    let var_3 = var_1.x;
    let var_4 = Struct_2(select(global0.b.a, global0.a, select(select(!vec3<bool>(global3.b.a.x, false, global3.b.b), vec3<bool>(global0.c.b, true, false), select(vec3<bool>(global3.b.a.x, global3.c.a.x, true), global3.b.a, global3.b.a)), select(!global0.b.a, vec3<bool>(false, global3.a.x, global0.a.x), !global3.a), true)), global0.c, Struct_1(global0.c.a, true, firstTrailingBit(_wgslsmith_div_i32(~2147483647i, -1232i | global1.x))));
    return Struct_3(global0.b, Struct_1(var_4.a, !var_4.a.x, min(1i, (2147483647i & global0.b.c) | global3.b.c)), Struct_1(var_4.a, var_4.a.x, -39731i));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec2<u32>, arg_2: Struct_3, arg_3: bool) -> Struct_1 {
    return func_2().c;
}

fn func_1() -> u32 {
    global2 = ~(~u_input.d | global0.b.c);
    let var_0 = 1u;
    global0 = Struct_2(global3.c.a, func_4(~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, var_0, 80911u), vec3<u32>(1u, 1u, 0u)) >> (~select(vec3<u32>(var_0, var_0, u_input.c), vec3<u32>(95443u, u_input.e.x, 26401u), global0.a) % vec3<u32>(32u)), vec2<u32>(~u_input.c, 0u) & ~(u_input.e << (u_input.e % vec2<u32>(32u))), func_2(), false), global3.c);
    global0 = Struct_2(global3.a, Struct_1(vec3<bool>(true, all(!vec2<bool>(global3.c.b, false)), !(false == global3.a.x)), global0.a.x, -_wgslsmith_clamp_i32(~u_input.a, global1.x, global3.b.c)), func_4(vec3<u32>(~_wgslsmith_dot_vec2_u32(u_input.e, vec2<u32>(52746u, var_0)), _wgslsmith_mod_u32(u_input.c, var_0 ^ 1u), _wgslsmith_sub_u32(_wgslsmith_mod_u32(var_0, u_input.e.x), ~u_input.c)), _wgslsmith_add_vec2_u32(vec2<u32>(abs(53638u), u_input.e.x), min(min(vec2<u32>(35859u, 4294967295u), vec2<u32>(var_0, var_0)), u_input.e)), Struct_3(func_4(~vec3<u32>(1u, u_input.c, var_0), abs(vec2<u32>(4294967295u, var_0)), func_2(), global3.c.b), Struct_1(global0.c.a, global1.x == -35835i, global0.b.c), global0.c), all(select(!vec4<bool>(false, global3.b.b, global3.c.a.x, global3.a.x), !vec4<bool>(true, global0.b.a.x, false, false), !vec4<bool>(true, false, global0.c.b, global0.b.a.x)))));
    var var_1 = func_2().a;
    return _wgslsmith_mult_u32(~(~(0u & var_0)), 54918u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~vec4<u32>(1u, firstTrailingBit(u_input.e.x), _wgslsmith_mod_u32(firstLeadingBit(1u), u_input.c), 1u));
    var var_1 = !all(select(select(vec3<bool>(true, true, global0.a.x), select(vec3<bool>(global3.c.b, true, true), global3.b.a, global3.c.a), !global3.a), vec3<bool>(any(global0.b.a.zz), all(global3.c.a.zy), select(global0.c.a.x, false, false)), vec3<bool>(true, true, true)));
    let var_2 = 70362u >> (abs(_wgslsmith_mult_u32(func_1(), ~4294967295u >> (1u % 32u))) % 32u);
    var var_3 = Struct_4(global0.b.c);
    global1 = _wgslsmith_mod_vec4_i32(vec4<i32>(firstTrailingBit(abs(var_3.a)), _wgslsmith_clamp_i32(global3.b.c & -2147483647i, 2147483647i, func_2().a.c), reverseBits(~1i), -33720i), vec4<i32>(func_2().b.c, -30072i, max(~var_3.a, 0i), ~(-66532i))) >> ((var_0 | var_0) % vec4<u32>(32u));
    var var_4 = Struct_2(vec3<bool>(global3.a.x, global0.c.a.x, !all(global3.b.a)), Struct_1(!func_2().c.a, global0.c.b, _wgslsmith_div_i32(_wgslsmith_sub_i32(5030i, 24225i), ~var_3.a ^ ~(-27823i))), global0.c);
    let var_5 = vec3<bool>(var_4.a.x, false, !var_4.b.b | !(_wgslsmith_dot_vec4_i32(global4[_wgslsmith_index_u32(1u, 9u)], global4[_wgslsmith_index_u32(668u, 9u)]) > (var_3.a << (u_input.e.x % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(~var_0.zwy) << (abs(firstLeadingBit(_wgslsmith_mod_vec3_u32(var_0.zww, var_0.wxy))) % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-311f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1122f, -959f)) - 625f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(983f + 308f))), _wgslsmith_f_op_f32(select(-1778f, 1f, true)))), abs(~var_0 ^ vec4<u32>(~u_input.e.x, u_input.e.x, 6796u, 18181u)));
}

