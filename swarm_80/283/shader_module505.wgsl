struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec4<bool>,
    d: vec3<f32>,
    e: vec3<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: bool,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(-5558i, false, Struct_1(16549u));

var<private> global1: vec2<i32> = vec2<i32>(2147483647i, 1i);

var<private> global2: f32;

var<private> global3: Struct_4;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: vec4<i32>, arg_3: bool) -> f32 {
    global1 = arg_2.wx;
    let var_0 = Struct_3(reverseBits(global3.b.a), Struct_1(0u), global3.b.c, global3.a.e, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(global3.b.d)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global3.b.d.x, -607f, -653f), vec3<f32>(-624f, -925f, arg_1))), true)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, -1273f, global3.a.e.x) - _wgslsmith_f_op_vec3_f32(exp2(global3.b.e))))));
    return arg_1;
}

fn func_3(arg_0: f32, arg_1: vec4<u32>, arg_2: i32, arg_3: Struct_3) -> Struct_4 {
    let var_0 = -7822i;
    let var_1 = select(vec2<bool>(global3.d.b, all(arg_3.c.wy)), !(!arg_3.c.zx), global3.a.c.wz);
    global0 = Struct_2(1i, true, global0.c);
    var var_2 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-103f, 985f, 1000f, 176f) * vec4<f32>(-929f, arg_0, 1000f, global3.a.e.x))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, arg_0, arg_3.e.x, -660f)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-194f - global3.b.e.x), _wgslsmith_f_op_f32(select(962f, global3.a.e.x, true)), _wgslsmith_f_op_f32(ceil(1079f)), 764f)))));
    var var_3 = _wgslsmith_mult_vec2_u32(~vec2<u32>(global3.d.c.a, 37150u), vec2<u32>(_wgslsmith_clamp_u32(1u, 4294967295u, 0u), global0.c.a | global3.a.b.a) >> (global3.b.a.zy % vec2<u32>(32u))) | vec2<u32>(arg_3.a.x, 4294967295u);
    return Struct_4(arg_3, global3.a, global0.b, Struct_2(~4450i, false, Struct_1(~min(1876u, 0u))));
}

fn func_1(arg_0: u32) -> vec2<i32> {
    global1 = ~vec2<i32>(-23495i, _wgslsmith_mult_i32(_wgslsmith_mult_i32(-global1.x, global1.x), global1.x));
    global3 = func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.a.d.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(false, -894f, vec4<i32>(-1259i, -17011i, 18442i, -1i), false)) * -504f))), vec4<u32>(4294967295u, global3.a.b.a, _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(~vec3<u32>(34823u, arg_0, 0u), vec3<u32>(arg_0, 4294967295u, 4294967295u) & vec3<u32>(global3.b.a.x, 36451u, 42199u), ~vec3<u32>(4294967295u, arg_0, global0.c.a)), global3.a.a), ~arg_0), global1.x, global3.b);
    global1 = -(u_input.b & u_input.b);
    let var_0 = select(global0.b, global3.d.b, global3.b.c.x);
    global1 = reverseBits(_wgslsmith_mod_vec2_i32(u_input.b, (vec2<i32>(2147483647i, -42859i) | -u_input.b) | vec2<i32>(u_input.a.x << (42431u % 32u), ~0i)));
    return _wgslsmith_mod_vec2_i32(u_input.b ^ _wgslsmith_div_vec2_i32(~u_input.b, ~select(u_input.b, u_input.b, global3.b.c.xz)), vec2<i32>(~abs(firstLeadingBit(-16700i)), max(func_3(global3.a.d.x, ~vec4<u32>(global0.c.a, arg_0, 29065u, global0.c.a), -2147483647i | u_input.b.x, Struct_3(vec3<u32>(arg_0, global0.c.a, global3.a.b.a), Struct_1(global0.c.a), vec4<bool>(global3.b.c.x, global0.b, false, true), vec3<f32>(127f, global3.b.d.x, global3.a.e.x), global3.b.e)).d.a, _wgslsmith_dot_vec3_i32(select(vec3<i32>(global3.d.a, -2147483647i, global3.d.a), vec3<i32>(global0.a, global0.a, 2147483647i), false), reverseBits(vec3<i32>(global1.x, global0.a, -1i))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_mult_vec2_i32(~u_input.b | -_wgslsmith_mult_vec2_i32(abs(vec2<i32>(global0.a, global0.a)), vec2<i32>(u_input.b.x, -47014i)), abs(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a.x << (global3.d.c.a % 32u), global0.a), func_1(~65138u))));
    var var_0 = global3.b.d.x;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -270f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - global3.a.d.x)) - global3.b.d.x));
    var var_1 = 239f;
    let var_2 = Struct_4(Struct_3(vec3<u32>(1u, 66594u, ~4294967295u >> ((global3.b.a.x | global0.c.a) % 32u)), Struct_1(0u), func_3(-271f, vec4<u32>(~global3.d.c.a, ~global0.c.a, global3.a.a.x, global0.c.a << (global3.d.c.a % 32u)), func_1(func_3(-885f, vec4<u32>(37813u, 0u, 0u, 1u), global3.d.a, Struct_3(global3.b.a, global0.c, vec4<bool>(false, false, true, false), global3.b.e, global3.a.d)).a.a.x).x, func_3(_wgslsmith_f_op_f32(max(-1217f, 1953f)), firstTrailingBit(vec4<u32>(global0.c.a, 12395u, 19414u, 4294967295u)), -global0.a, Struct_3(vec3<u32>(global0.c.a, 4294967295u, 4167u), global0.c, vec4<bool>(global0.b, global3.b.c.x, global0.b, false), vec3<f32>(global3.a.e.x, global3.b.d.x, 949f), global3.a.e)).b).a.c, vec3<f32>(161f, 1906f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-global3.a.d))))), Struct_3(global3.b.a, func_3(-739f, ~min(vec4<u32>(global0.c.a, global0.c.a, global3.d.c.a, 3274u), vec4<u32>(47064u, global0.c.a, global0.c.a, global3.b.b.a)), global0.a, func_3(_wgslsmith_f_op_f32(-global3.b.d.x), vec4<u32>(global0.c.a, global3.b.a.x, 1u, 4294967295u), func_3(-491f, vec4<u32>(global3.b.a.x, global3.d.c.a, global3.b.a.x, global3.a.b.a), u_input.a.x, global3.b).d.a, func_3(-491f, vec4<u32>(1u, 51062u, global0.c.a, 4294967295u), 24773i, Struct_3(vec3<u32>(24044u, 4294967295u, 50419u), global0.c, global3.a.c, vec3<f32>(global3.a.d.x, global3.b.e.x, global3.a.e.x), global3.b.d)).a).a).b.b, select(func_3(global3.b.d.x, reverseBits(vec4<u32>(global0.c.a, global3.b.a.x, 0u, global3.d.c.a)), 0i, global3.b).b.c, !select(vec4<bool>(false, true, global3.a.c.x, true), vec4<bool>(global3.a.c.x, false, true, false), vec4<bool>(global0.b, false, global3.c, global3.d.b)), global3.a.c), _wgslsmith_f_op_vec3_f32(min(global3.a.e, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global3.b.e.x, global3.b.e.x, 1025f)))))), _wgslsmith_f_op_vec3_f32(-global3.b.e)), true, global3.d);
    var_1 = -1834f;
    var var_3 = vec4<i32>(-global1.x, global1.x, -global3.d.a, _wgslsmith_sub_i32(-global1.x, -1i));
    var var_4 = vec3<u32>(~min(~(~var_2.b.b.a), 1u), 4294967295u, ~(~1u));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2195f)), var_2.b.d.x), _wgslsmith_sub_u32(abs(~1u) ^ abs(var_4.x), global3.a.b.a));
}

