struct Struct_1 {
    a: u32,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: vec2<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: vec4<u32>,
    d: Struct_1,
}

struct Struct_5 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec3<f32>,
    d: f32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(Struct_2(Struct_1(69221u, false, -1637f), true), Struct_1(4294967295u, false, 1216f), vec4<u32>(71376u, 85883u, 0u, 106244u), Struct_1(1u, false, -574f));

var<private> global1: Struct_3;

var<private> global2: array<Struct_1, 5>;

var<private> global3: u32 = 4294967295u;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: Struct_4) -> vec3<u32> {
    let var_0 = abs(firstLeadingBit(-abs(vec3<i32>(1i, 23528i, 37577i))));
    return vec3<u32>(0u, global0.c.x, ~reverseBits(0u));
}

fn func_2(arg_0: f32, arg_1: vec2<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(sign(2314f));
    var var_1 = firstTrailingBit(vec3<u32>(_wgslsmith_mod_u32(global1.a.a.a, ~u_input.c), abs(global0.b.a), 4294967295u) | func_3(_wgslsmith_f_op_f32(abs(var_0)), any(vec4<bool>(true, true, true, global0.d.b)) != true, Struct_4(Struct_2(global0.a.a, false), global1.a.a, ~vec4<u32>(44233u, 40643u, arg_1.x, global1.a.a.a), Struct_1(0u, true, arg_0))));
    let var_2 = Struct_1(1u, false | all(!select(vec2<bool>(global1.a.b, false), vec2<bool>(global1.a.b, false), true)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-1115f)), _wgslsmith_f_op_f32(667f + global1.a.a.c), !global1.a.a.b)), -536f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -248f) * _wgslsmith_f_op_f32(ceil(global0.a.a.c))))));
    let var_3 = !select(select(select(vec2<bool>(true, false), vec2<bool>(true, true), true | global1.a.b), vec2<bool>(var_2.b, global0.a.a.b), !all(vec3<bool>(false, false, global1.a.b))), !vec2<bool>(!global0.a.a.b, false), global1.a.b);
    let var_4 = select(var_3, var_3, !vec2<bool>(false, (u_input.b.x <= u_input.b.x) || (global1.a.a.a < 0u)));
    return Struct_1(select(_wgslsmith_dot_vec2_u32(global0.c.yy, global0.c.yy), _wgslsmith_clamp_u32(arg_1.x, firstLeadingBit(1u), ~(~global1.a.a.a)), false), 1i != global1.c.x, _wgslsmith_f_op_f32(global0.a.a.c * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1282f + 696f) * global1.a.a.c)));
}

fn func_1() -> f32 {
    var var_0 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a.a.c - _wgslsmith_f_op_f32(-global1.a.a.c)) * global1.a.a.c), global0.c.zz);
    var var_1 = Struct_2(func_2(global0.b.c, ~global0.c.ww), all(select(select(vec2<bool>(var_0.b, true), !vec2<bool>(var_0.b, global0.a.a.b), select(var_0.b, false, true)), !vec2<bool>(false, global1.a.a.b), true)));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global1.a.a.c, var_1.a.c, var_0.c, var_0.c), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-683f, -330f, 110f, global0.a.a.c))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-494f, var_0.c, -924f, global0.b.c))) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1935f, _wgslsmith_div_f32(132f, var_0.c), var_0.c, global0.b.c)))));
    global0 = Struct_4(Struct_2(Struct_1(_wgslsmith_mod_u32(var_1.a.a, global1.a.a.a) & _wgslsmith_sub_u32(var_0.a, global1.a.a.a), true, 360f), true), global0.a.a, global0.c, Struct_1(global0.a.a.a, global1.a.b, 907f));
    let var_3 = !vec3<bool>(true, all(select(vec4<bool>(var_0.b, false, false, true), vec4<bool>(global1.a.a.b, var_1.b, false, var_0.b), true)) & select(true, var_1.a.b, all(vec2<bool>(var_0.b, false))), _wgslsmith_div_i32(max(global1.c.x, 2147483647i), global1.b) >= global1.c.x);
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 34866u;
    global2 = array<Struct_1, 5>();
    var var_1 = _wgslsmith_div_f32(global0.b.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(692f * _wgslsmith_f_op_f32(-global0.d.c)), _wgslsmith_div_f32(-1062f, _wgslsmith_f_op_f32(round(global0.b.c)))));
    var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-295f * _wgslsmith_f_op_f32(-1099f - _wgslsmith_f_op_f32(f32(-1f) * -462f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())), global1.a.a.b))));
    let var_2 = -global1.c.x & (u_input.b.x << (_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(~global0.c, vec4<u32>(69802u, 49150u, var_0, 67521u) ^ global0.c), ~_wgslsmith_sub_u32(u_input.c, var_0)) % 32u));
    var var_3 = global0.c.yyy;
    var var_4 = Struct_3(global0.a, var_2, reverseBits(min(_wgslsmith_sub_vec2_i32(select(u_input.b.yy, global1.c, false), countOneBits(vec2<i32>(u_input.b.x, global1.c.x))), _wgslsmith_mod_vec2_i32(select(u_input.b.xz, vec2<i32>(1i, global1.b), global0.b.b), -vec2<i32>(u_input.a, 1i)))));
    global3 = ~(~(countOneBits(u_input.c) >> (var_0 % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(max(-global1.b, ~u_input.a >> (~_wgslsmith_clamp_u32(55906u, 37997u, 92822u) % 32u)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-409f, global1.a.a.c)) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1000f, -1977f)))))))), -21875i >> ((~countOneBits(7731u) | (~u_input.c & _wgslsmith_sub_u32(59382u, var_0))) % 32u));
}

