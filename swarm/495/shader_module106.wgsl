struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: vec2<u32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: i32,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec3<bool> = vec3<bool>(true, true, true);

var<private> global2: array<vec2<f32>, 30>;

var<private> global3: vec3<u32> = vec3<u32>(44857u, 55941u, 1u);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: u32, arg_3: vec2<f32>) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1.d.x)));
    let var_1 = Struct_2(arg_1, arg_1.d.x, select(_wgslsmith_div_i32(_wgslsmith_mult_i32(-u_input.a, countOneBits(u_input.a)), u_input.a), select(_wgslsmith_dot_vec3_i32(min(vec3<i32>(global0.c, -740i, 0i), vec3<i32>(global0.c, -17606i, -5900i)), ~vec3<i32>(u_input.a, -54031i, 2147483647i)), _wgslsmith_clamp_i32(abs(0i), ~u_input.a, global0.c), true), false || arg_1.b.x), abs(firstLeadingBit(global3.x)));
    let var_2 = arg_1;
    let var_3 = arg_1;
    var_0 = -2183f;
    return ~(-global0.c);
}

fn func_2(arg_0: i32, arg_1: vec3<i32>, arg_2: f32, arg_3: vec4<i32>) -> bool {
    var var_0 = global1.x;
    var var_1 = all(select(vec4<bool>(all(vec2<bool>(true, true)), true, true, all(select(vec4<bool>(global1.x, global1.x, true, true), vec4<bool>(true, false, false, global0.a.b.x), global0.a.b.x))), !vec4<bool>(true, !global1.x, false, !global1.x), !(!vec4<bool>(false, global1.x, global0.a.b.x, global1.x))));
    global2 = array<vec2<f32>, 30>();
    let var_2 = _wgslsmith_mod_vec4_u32(u_input.b, abs(~(~u_input.b)));
    var var_3 = ~((min(func_3(global0.a.b.x, global0.a, 4294967295u, vec2<f32>(global0.a.d.x, global0.b)), u_input.a) & -15986i) << (19858u % 32u));
    return global0.a.b.x;
}

fn func_4(arg_0: vec4<bool>, arg_1: vec2<u32>) -> Struct_2 {
    var var_0 = Struct_1(!(((9380i << (arg_1.x % 32u)) >> (abs(45186u) % 32u)) <= global0.c), !(!vec3<bool>(!global1.x, all(arg_0), arg_0.x)), select(global0.a.c, firstTrailingBit(global0.a.c), global0.a.b.zz), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1206f, 116f)), vec2<f32>(global0.a.d.x, global0.a.d.x)), vec2<f32>(_wgslsmith_f_op_f32(-global0.b), 557f), any(select(vec2<bool>(arg_0.x, false), global0.a.b.zy, global0.a.b.yy)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(global2[_wgslsmith_index_u32(max(23425u, 16974u), 30u)])) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.b, global0.a.d.x) + _wgslsmith_f_op_vec2_f32(floor(global2[_wgslsmith_index_u32(global3.x, 30u)]))))));
    global0 = Struct_2(global0.a, global0.b, _wgslsmith_dot_vec4_i32(-vec4<i32>(0i, u_input.a, 40368i >> (global0.d % 32u), u_input.a), vec4<i32>(~(-46372i), ~u_input.a, ~1i, -(~0i))), firstLeadingBit(1u));
    var_0 = global0.a;
    global2 = array<vec2<f32>, 30>();
    var var_1 = Struct_2(global0.a, 497f, max(abs(u_input.a), _wgslsmith_sub_i32(~(~global0.c), _wgslsmith_mult_i32(u_input.a, _wgslsmith_mod_i32(2147483647i, -25352i)))), abs(4294967295u));
    return Struct_2(Struct_1(select(var_1.a.b.x, any(vec2<bool>(arg_0.x, true)) || true, global1.x), !(!(!vec3<bool>(false, arg_0.x, arg_0.x))), _wgslsmith_div_vec2_u32(vec2<u32>(var_1.d, global0.a.c.x >> (0u % 32u)), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b.x, global3.x), global3.xy)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(2570f, var_1.a.d.x), vec2<f32>(234f, _wgslsmith_f_op_f32(select(global0.b, var_1.b, false))), false))), var_0.d.x, 1i, 34315u);
}

fn func_5(arg_0: Struct_2) -> Struct_2 {
    var var_0 = vec2<u32>(abs(~(~u_input.b.x)), 0u);
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-299f, global0.b, true)))), 533f, _wgslsmith_div_f32(769f, arg_0.b)));
    var var_2 = global3.yz;
    global3 = u_input.b.yww;
    let var_3 = _wgslsmith_f_op_f32(-global0.a.d.x);
    return arg_0;
}

fn func_1(arg_0: vec2<i32>) -> vec2<u32> {
    global0 = func_5(func_4(vec4<bool>(func_2(1i, firstLeadingBit(vec3<i32>(1i, global0.c, 1901i)), 1000f, ~vec4<i32>(60614i, -1i, arg_0.x, -1i)), !(!global1.x), true, any(vec3<bool>(false, global0.a.b.x, false))), (abs(global3.zz) << (_wgslsmith_add_vec2_u32(global0.a.c, vec2<u32>(13409u, 4294967295u)) % vec2<u32>(32u))) >> ((select(vec2<u32>(61582u, 52455u), u_input.b.yx, vec2<bool>(global1.x, false)) >> (~vec2<u32>(global3.x, global0.d) % vec2<u32>(32u))) % vec2<u32>(32u))));
    global0 = Struct_2(func_5(func_5(func_5(Struct_2(global0.a, 1000f, global0.c, global3.x)))).a, 198f, u_input.a, func_4(!select(vec4<bool>(global1.x, global1.x, global0.a.b.x, false), select(vec4<bool>(false, false, global1.x, false), vec4<bool>(global0.a.b.x, global1.x, true, true), global1.x), any(vec4<bool>(true, global0.a.b.x, true, false))), ~firstLeadingBit(~global3.yx)).d);
    global0 = Struct_2(global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.a.d.x)))), _wgslsmith_mod_i32(-52537i & global0.c, func_3(global1.x || !global0.a.a, Struct_1(any(vec3<bool>(true, false, global0.a.a)), vec3<bool>(global0.a.a, false, true), global3.xz, global2[_wgslsmith_index_u32(~98935u, 30u)]), u_input.b.x, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(global0.a.d)))))), max(max(global0.a.c.x, _wgslsmith_mod_u32(9921u, global0.a.c.x)), 78634u) | (_wgslsmith_clamp_u32(~global0.d, global0.d >> (global3.x % 32u), _wgslsmith_dot_vec4_u32(u_input.b, u_input.b)) ^ ~abs(0u)));
    var var_0 = global0.b;
    let var_1 = Struct_1(-min(1i, 2147483647i) == global0.c, !(!global0.a.b), global3.zy, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(global0.a.d)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.a.d) * global2[_wgslsmith_index_u32(global0.a.c.x >> (global0.d % 32u), 30u)]) + vec2<f32>(_wgslsmith_f_op_f32(exp2(global0.a.d.x)), _wgslsmith_f_op_f32(f32(-1f) * -1952f)))));
    return _wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(global0.a.c.x, 0u), firstLeadingBit(global0.a.c)), reverseBits(~1u)), vec2<u32>(~u_input.b.x, ~(global3.x ^ func_4(vec4<bool>(global1.x, false, true, true), vec2<u32>(global3.x, u_input.b.x)).a.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(global0.a.b.x, !(!vec3<bool>(global1.x, false, true)), func_1(vec2<i32>(1i, reverseBits(global0.c))), global0.a.d), global0.a.d.x, -firstLeadingBit(2483i), ~global3.x);
    var var_1 = min(select(var_0.d, func_4(select(vec4<bool>(global0.a.b.x, false, global1.x, var_0.a.b.x), select(vec4<bool>(true, false, true, true), vec4<bool>(global1.x, global1.x, true, global1.x), false), global0.a.b.x), vec2<u32>(~0u, global3.x & global0.a.c.x)).a.c.x, global1.x), 4294967295u);
    let var_2 = 2147483647i;
    let var_3 = _wgslsmith_div_f32(-834f, -1243f);
    var var_4 = u_input.a & func_3(global0.a.b.x, global0.a, _wgslsmith_clamp_u32(global3.x, global0.d, _wgslsmith_div_u32(_wgslsmith_sub_u32(var_0.a.c.x, 0u), max(0u, u_input.b.x))), global0.a.d);
    let var_5 = 5758i >> (min(1u, abs(global0.a.c.x)) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.c, -((~u_input.a & countOneBits(u_input.a)) | -26345i), -vec3<i32>(select(u_input.a, _wgslsmith_sub_i32(global0.c, global0.c), var_0.b >= global0.a.d.x), firstTrailingBit(var_0.c), -var_5 ^ min(-3487i, 1i)));
}

