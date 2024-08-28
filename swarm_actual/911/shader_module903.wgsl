struct Struct_1 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec4<bool>,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: bool,
}

struct Struct_5 {
    a: vec2<f32>,
    b: i32,
    c: Struct_1,
    d: bool,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<f32>,
    d: vec2<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_1;

var<private> global2: array<vec2<i32>, 20>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> u32 {
    var var_0 = global0.b;
    let var_1 = Struct_3(global0.b, vec3<bool>(!all(!vec4<bool>(global0.a.x, global0.a.x, global0.a.x, global0.a.x)), any(vec3<bool>(true, true, true)), select(global0.a.x, !select(global0.a.x, global0.a.x, true), any(vec4<bool>(global0.a.x, true, false, global0.a.x)))), select(select(!select(vec4<bool>(false, global0.a.x, global0.a.x, true), vec4<bool>(global0.a.x, global0.a.x, global0.a.x, true), true), vec4<bool>(all(vec4<bool>(global0.a.x, true, true, false)), all(vec4<bool>(false, global0.a.x, global0.a.x, false)), all(global0.a), true), true), !vec4<bool>(global0.a.x, all(vec4<bool>(true, global0.a.x, false, true)), !global0.a.x, true), select(select(vec4<bool>(false, false, true, global0.a.x), select(vec4<bool>(true, global0.a.x, true, true), vec4<bool>(false, global0.a.x, global0.a.x, false), vec4<bool>(global0.a.x, false, false, global0.a.x)), all(vec4<bool>(global0.a.x, true, global0.a.x, true))), vec4<bool>(true, !global0.a.x, global0.a.x || global0.a.x, true), vec4<bool>(global0.a.x, true, false, global0.a.x || false))));
    global1 = global0.b;
    global2 = array<vec2<i32>, 20>();
    return global1.b.x;
}

fn func_2(arg_0: vec3<i32>, arg_1: i32, arg_2: bool) -> vec4<u32> {
    global1 = global0.b;
    let var_0 = ~global0.b.c.x;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.a.x * global1.a.x))) * -441f) + global0.b.a.x);
    var var_2 = Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.b.a - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(316f, global0.b.a.x, global0.b.a.x, global1.a.x), vec4<f32>(1535f, -1038f, -508f, global0.b.a.x))))), select(~global1.b, vec4<u32>(u_input.c, func_3(), abs(global1.b.x), _wgslsmith_add_u32(global0.b.b.x, 39669u)), arg_2), ~firstLeadingBit(-vec3<i32>(1i, -1i, arg_0.x))), vec3<bool>(true, arg_2, (true && arg_2) | all(vec4<bool>(arg_2, false, arg_2, arg_2))), vec4<bool>(select(true, !arg_2 | true, arg_2), false, !all(select(vec2<bool>(true, true), global0.a, arg_2)), true));
    var_1 = global1.a.x;
    return max(~(~vec4<u32>(u_input.c, 26551u, global1.b.x, ~29715u)), vec4<u32>(u_input.c, 11246u, ~var_2.a.b.x, ~(~0u)));
}

fn func_1() -> Struct_2 {
    let var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-global0.b.a.x), _wgslsmith_div_f32(global0.b.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1171f + _wgslsmith_f_op_f32(-global1.a.x))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(global1.a.x, _wgslsmith_f_op_f32(ceil(1566f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b.a.x - global1.a.x) + global0.b.a.x)))), func_2(abs(~vec3<i32>(u_input.d, 1i, global0.b.c.x) | vec3<i32>(-44237i, global0.b.c.x, u_input.a)), _wgslsmith_add_i32(countOneBits(global1.c.x), _wgslsmith_mult_i32(_wgslsmith_add_i32(-1i, global0.b.c.x), -1i)), !(!(global0.b.b.x < 4294967295u))), ~vec3<i32>(~(~(-18788i)), ~(-12683i | global0.b.c.x), 1i));
    let var_1 = Struct_5(global0.b.a.wz, ~_wgslsmith_div_i32(var_0.c.x, global0.b.c.x), Struct_1(global1.a, _wgslsmith_div_vec4_u32(global0.b.b, ~global1.b), abs(vec3<i32>(firstLeadingBit(var_0.c.x), _wgslsmith_mod_i32(2147483647i, 2147483647i), -u_input.a))), u_input.a >= max(~countOneBits(u_input.b), _wgslsmith_add_i32(abs(global0.b.c.x), i32(-1i) * -12349i)), abs(-global1.c) >> (max(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c, var_0.b.x, 48146u), firstLeadingBit(vec3<u32>(0u, global1.b.x, global1.b.x))), vec3<u32>(~52710u, 1u, abs(global0.b.b.x))) % vec3<u32>(32u)));
    global2 = array<vec2<i32>, 20>();
    var var_2 = Struct_5(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_1.a, global0.b.a.zy, global0.a.x)) - global1.a.wy), global0.b.a.yy)), _wgslsmith_f_op_vec2_f32(-var_0.a.xx)), max(16927i, var_1.b), var_1.c, false, abs(var_0.c ^ vec3<i32>(reverseBits(u_input.d), -30329i, 21561i | global0.b.c.x)));
    global1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-1000f * 452f), var_1.c.a.x, var_2.a.x, -375f), ~countOneBits(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global1.b.x, global1.b.x, var_2.c.b.x), var_2.c.b.zyy), ~1u, _wgslsmith_sub_u32(var_1.c.b.x, global0.b.b.x), ~1u)), vec3<i32>(1i, var_2.b, 35507i) & firstLeadingBit(max(vec3<i32>(u_input.a, var_1.c.c.x, u_input.a), var_1.e)));
    return Struct_2(!(!select(vec2<bool>(false, var_2.d), global0.a, var_2.c.b.x <= global1.b.x)), Struct_1(vec4<f32>(395f, global0.b.a.x, 508f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.b.a.x)))), vec4<u32>(49413u, _wgslsmith_mult_u32(func_2(global1.c, 1i, true).x, abs(0u)), _wgslsmith_dot_vec3_u32(max(vec3<u32>(var_1.c.b.x, 1u, global1.b.x), vec3<u32>(4294967295u, 1u, u_input.c)), vec3<u32>(var_1.c.b.x, 4294967295u, u_input.c)), _wgslsmith_add_u32(_wgslsmith_mod_u32(24880u, 13538u), var_2.c.b.x & var_1.c.b.x)), abs(firstLeadingBit(abs(vec3<i32>(-1i, 0i, var_0.c.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -global1.c.x;
    var_0 = 1i;
    let var_1 = func_1();
    global1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.b.a)), ~vec4<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, global0.b.b.x), vec2<u32>(global0.b.b.x, 0u)), global1.b.x), u_input.c, ~countOneBits(global0.b.b.x), global0.b.b.x), global0.b.c);
    global0 = Struct_2(vec2<bool>(false | !var_1.a.x, true), func_1().b);
    var var_2 = select(!vec2<bool>(var_1.a.x, var_1.a.x), var_1.a, global0.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-495f + var_1.b.a.x), -2580f)) + _wgslsmith_f_op_f32(sign(-669f))), -336f, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-724f, var_1.b.a.x, 351f), global1.a.yxx)) + global1.a.yxx))), vec2<f32>(_wgslsmith_f_op_f32(trunc(1478f)), -434f), 33220u);
}

