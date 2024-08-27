struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec2<f32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec2<u32>, 20>;

var<private> global2: vec3<bool>;

var<private> global3: array<Struct_1, 32>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: bool, arg_1: vec2<f32>) -> i32 {
    var var_0 = Struct_2(Struct_1(true, global0.a.b, _wgslsmith_mod_i32(global0.a.c, _wgslsmith_mod_i32(-1i, 2147483647i & u_input.b))));
    let var_1 = Struct_2(Struct_1(global0.a.a, vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(var_0.a.b, vec4<u32>(4294967295u, 1u, 1u, 4294967295u)), _wgslsmith_add_u32(global0.a.b.x, global0.a.b.x)), _wgslsmith_div_u32(var_0.a.b.x, var_0.a.b.x), 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(26420u, 4294967295u), vec2<u32>(1u, 0u) | global0.a.b.xy)), ~u_input.c.x));
    global1 = array<vec2<u32>, 20>();
    var var_2 = var_1;
    global1 = array<vec2<u32>, 20>();
    return 0i;
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> Struct_2 {
    return Struct_2(Struct_1(true, global0.a.b, min(min(countOneBits(31699i), func_3(global2.x, vec2<f32>(-768f, arg_0))), -34354i)));
}

fn func_1(arg_0: u32, arg_1: vec2<i32>) -> u32 {
    global3 = array<Struct_1, 32>();
    global0 = func_2(_wgslsmith_f_op_f32(-2631f + -910f), global0.a);
    let var_0 = -554f;
    global1 = array<vec2<u32>, 20>();
    global2 = vec3<bool>(!(!(!global0.a.a | true)), false == ((any(vec4<bool>(global2.x, true, global0.a.a, false)) != (-19352i != arg_1.x)) && !(!global0.a.a)), true | global0.a.a);
    return u_input.a;
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: f32) -> StorageBuffer {
    global1 = array<vec2<u32>, 20>();
    var var_0 = func_2(arg_2, global0.a);
    let var_1 = _wgslsmith_dot_vec2_i32(u_input.c.yy, ~vec2<i32>(-arg_1 | _wgslsmith_mod_i32(-65097i, global0.a.c), reverseBits(u_input.c.x)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_2)) * _wgslsmith_f_op_f32(-arg_2)));
    let var_3 = -23411i;
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(arg_2, 235f)), -503f, _wgslsmith_f_op_f32(select(411f, arg_2, global2.x)), _wgslsmith_div_f32(arg_2, arg_2)) - vec4<f32>(_wgslsmith_f_op_f32(-arg_2), arg_2, _wgslsmith_f_op_f32(max(arg_2, arg_2)), _wgslsmith_f_op_f32(ceil(arg_2)))))), global0.a.b.x, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, arg_2)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1101f, arg_2), vec2<f32>(arg_2, -885f))), false)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-751f, 683f)) * vec2<f32>(arg_2, -280f)), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 0i, var_0.a.c, -54481i), u_input.c) > _wgslsmith_add_i32(51623i, arg_1))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(261f, 607f), vec2<f32>(arg_2, 510f), vec2<bool>(true, true))))) - vec2<f32>(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(ceil(588f)))))), select(~vec4<u32>(arg_0, u_input.e.x, ~85947u, 2446u), ~vec4<u32>(_wgslsmith_mult_u32(global0.a.b.x, u_input.a), var_0.a.b.x, arg_0 ^ arg_0, ~u_input.e.x), global0.a.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 16246i;
    let var_1 = true;
    let x = u_input.a;
    s_output = func_4(min(_wgslsmith_add_u32(countOneBits(u_input.e.x), ~(~4294967295u)), func_1(u_input.a, u_input.c.zy)), firstTrailingBit(func_3(true, _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * vec2<f32>(-507f, 1000f)))), 855f);
}

