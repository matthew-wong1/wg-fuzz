struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 11>;

var<private> global1: vec2<u32> = vec2<u32>(4294967295u, 0u);

var<private> global2: u32;

var<private> global3: vec4<bool>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3() -> vec3<i32> {
    global0 = array<vec3<f32>, 11>();
    global3 = select(select(!vec4<bool>(global3.x, true, global3.x, any(global3.xx)), !select(!vec4<bool>(true, false, global3.x, global3.x), vec4<bool>(false, true, global3.x, global3.x), vec4<bool>(false, global3.x, global3.x, global3.x)), global3.x), !(!(!vec4<bool>(false, global3.x, global3.x, false))), global3.x);
    global1 = ~abs(vec2<u32>(15974u & global1.x, _wgslsmith_mult_u32(1u, 28714u))) | ~min(~vec2<u32>(u_input.b, 55559u) >> (max(vec2<u32>(37051u, u_input.b), vec2<u32>(34304u, u_input.b)) % vec2<u32>(32u)), ~max(vec2<u32>(25764u, u_input.b), vec2<u32>(4294967295u, 24313u)));
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(201f, 252f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1209f)))) + -982f);
    global0 = array<vec3<f32>, 11>();
    return ~(vec3<i32>(-1i) * -u_input.a.wyw);
}

fn func_2(arg_0: Struct_1) -> u32 {
    global1 = ~(~_wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_0.c, 4294967295u), vec2<u32>(u_input.c, global1.x), vec2<u32>(global1.x, global1.x)) << (countOneBits(vec2<u32>(global1.x, arg_0.c)) % vec2<u32>(32u)), max(abs(vec2<u32>(arg_0.c, u_input.c)), ~vec2<u32>(4294967295u, arg_0.c))));
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1000f - arg_0.d))) < _wgslsmith_f_op_f32(floor(297f)), ~_wgslsmith_sub_vec3_i32(func_3(), arg_0.b << (vec3<u32>(4294967295u, 57474u, u_input.c) % vec3<u32>(32u))), arg_0.c, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(277f + -1455f), arg_0.d))), arg_0, u_input.b);
    let var_1 = vec3<i32>(~(~firstTrailingBit(var_0.a.b.x)), ~(-_wgslsmith_clamp_i32(-39421i, 0i, 15554i) >> (~abs(83500u) % 32u)), firstTrailingBit(countOneBits(-21755i)));
    global1 = ~_wgslsmith_clamp_vec2_u32(~(_wgslsmith_mult_vec2_u32(vec2<u32>(global1.x, var_0.b.c), vec2<u32>(arg_0.c, var_0.a.c)) & vec2<u32>(4294967295u, arg_0.c)), ~vec2<u32>(u_input.b, _wgslsmith_mod_u32(global1.x, 32999u)), ~vec2<u32>(~global1.x, _wgslsmith_sub_u32(1u, var_0.a.c)));
    let var_2 = Struct_2(arg_0, Struct_1(var_0.b.a, select(-abs(vec3<i32>(arg_0.b.x, -60847i, arg_0.b.x)), min(-arg_0.b, _wgslsmith_add_vec3_i32(vec3<i32>(var_0.a.b.x, 2147483647i, -2147483647i), vec3<i32>(arg_0.b.x, 37015i, var_0.b.b.x))), !select(global3.zww, vec3<bool>(true, var_0.a.a, true), false)), u_input.c, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a.d), _wgslsmith_f_op_f32(f32(-1f) * -1640f)) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(1000f)), var_0.a.d)))), var_0.a.c);
    return _wgslsmith_clamp_u32(reverseBits(84555u), ~_wgslsmith_clamp_u32(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(global1.x, var_2.a.c, 101104u), vec3<u32>(u_input.b, 4294967295u, 8237u))), ~(~var_0.c), _wgslsmith_clamp_u32(~1u, ~var_2.b.c, _wgslsmith_div_u32(global1.x, global1.x))), 4294967295u);
}

fn func_1() -> Struct_2 {
    let var_0 = 1730f;
    let var_1 = Struct_1(true, u_input.a.wyw, ~(~(func_2(Struct_1(true, u_input.d.xzx, 37771u, var_0)) >> (~60659u % 32u))), -336f);
    global3 = vec4<bool>(var_1.a == false, !(all(!vec3<bool>(true, false, var_1.a)) & (~(-11408i) <= _wgslsmith_sub_i32(var_1.b.x, 44005i))), !(~u_input.d.x > _wgslsmith_dot_vec2_i32(u_input.d.zz, u_input.d.xz)) || all(!vec2<bool>(true, var_1.a)), false);
    global1 = abs(firstTrailingBit(select(~(~vec2<u32>(global1.x, var_1.c)), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 3575u, var_1.c, var_1.c), vec4<u32>(global1.x, 29928u, u_input.c, global1.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, 9983u, u_input.c, u_input.c), vec4<u32>(31026u, u_input.b, 4294967295u, global1.x))), false)));
    global3 = !(!vec4<bool>(true, !(!var_1.a), true, firstTrailingBit(global1.x) != _wgslsmith_dot_vec4_u32(vec4<u32>(462u, global1.x, 1u, 15049u), vec4<u32>(var_1.c, global1.x, 21264u, 0u))));
    return Struct_2(var_1, var_1, u_input.c);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: i32, arg_3: bool) -> u32 {
    var var_0 = vec4<bool>(!any(!vec3<bool>(arg_1.b.a, arg_0.a.a, false)), arg_0.b.a, any(select(select(global3.yzy, vec3<bool>(arg_1.b.a, arg_1.a.a, true), arg_1.a.a), vec3<bool>(true, true, true), vec3<bool>(16185u <= arg_1.b.c, global3.x, arg_1.b.a))), true);
    let var_1 = func_1().b;
    global2 = ~u_input.c >> (var_1.c % 32u);
    var var_2 = true;
    let var_3 = Struct_1(arg_0.b.a, func_1().a.b, ~16426u, _wgslsmith_f_op_f32(-arg_1.b.d));
    return arg_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = _wgslsmith_sub_u32(~(~(~u_input.c)), global1.x << (83300u % 32u));
    var var_2 = vec4<u32>(_wgslsmith_mod_u32(countOneBits(62313u), _wgslsmith_mod_u32(0u, select(var_1, 27204u, select(var_0, var_0, true)))), _wgslsmith_add_u32(~global1.x, ~func_4(func_1(), func_1(), 1i, var_0)), ~(~(~0u >> (1u % 32u))), 102219u);
    var var_3 = u_input.a.x;
    global0 = array<vec3<f32>, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(~0i, _wgslsmith_add_vec2_u32(var_2.xx | vec2<u32>(u_input.b, 0u), vec2<u32>(abs(var_2.x), _wgslsmith_mod_u32(global1.x, 0u))), 2147483647i);
}

