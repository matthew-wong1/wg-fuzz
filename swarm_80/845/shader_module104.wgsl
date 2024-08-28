struct Struct_1 {
    a: u32,
    b: f32,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: i32,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 21103i;

var<private> global1: Struct_1 = Struct_1(46829u, 196f, false, false);

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> f32 {
    var var_0 = -82410i;
    global1 = Struct_1(93727u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b + global1.b) - _wgslsmith_f_op_f32(global1.b + 235f))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global1.b - _wgslsmith_f_op_f32(global1.b + global1.b)), 1660f))), !(!any(vec2<bool>(global1.d, false))), !all(!select(vec4<bool>(global1.c, false, global1.d, global1.d), vec4<bool>(global1.d, false, global1.d, global1.c), global1.c)));
    let var_1 = Struct_3(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(36836i, max(49777i, u_input.d)), firstLeadingBit(~u_input.b)), -(_wgslsmith_mod_i32(u_input.d, -1i) & (i32(-1i) * -26143i))), ~(~abs(vec2<u32>(61895u, u_input.c.x) & u_input.c.xx)));
    let var_2 = Struct_1(global1.a, -164f, true, _wgslsmith_f_op_f32(-global1.b) != -209f);
    var_0 = u_input.d;
    return 1248f;
}

fn func_4(arg_0: f32, arg_1: vec2<f32>, arg_2: Struct_3, arg_3: vec3<f32>) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(arg_3.zy, vec2<f32>(arg_3.x, arg_3.x)) - arg_1);
    global0 = u_input.b.x;
    var var_1 = 1u;
    var_1 = arg_2.b.x;
    let var_2 = vec4<i32>(arg_2.a, ~(1i | abs(abs(u_input.b.x))), _wgslsmith_mod_i32(-select(_wgslsmith_div_i32(0i, arg_2.a), 42919i, false), _wgslsmith_sub_i32(~countOneBits(u_input.d), _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(arg_2.a, -19339i, arg_2.a, arg_2.a)), vec4<i32>(2147483647i, u_input.b.x, 6416i, -1968i)))), i32(-1i) * -(~arg_2.a << (1u % 32u)));
    return vec2<f32>(var_0.x, arg_3.x);
}

fn func_2(arg_0: vec4<f32>) -> u32 {
    var var_0 = global1.a;
    global0 = u_input.d;
    let var_1 = _wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, global1.b))))), Struct_3(-_wgslsmith_mult_i32(u_input.d, 11348i) ^ _wgslsmith_dot_vec3_i32(abs(vec3<i32>(u_input.b.x, -1i, u_input.b.x)), ~vec3<i32>(u_input.d, -1i, u_input.d)), min(u_input.c.ww, vec2<u32>(abs(8977u), u_input.c.x | global1.a))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-arg_0.xxw)))));
    let var_2 = !vec2<bool>(global1.c, true);
    let var_3 = Struct_1(~u_input.e << (global1.a % 32u), 1f, (u_input.b.x | u_input.b.x) < _wgslsmith_dot_vec2_i32(~(u_input.b | u_input.b), max(select(u_input.b, u_input.b, vec2<bool>(global1.d, true)), firstTrailingBit(vec2<i32>(2147483647i, 2147483647i)))), global1.d);
    return _wgslsmith_mod_u32(60347u, abs(countOneBits(~_wgslsmith_dot_vec2_u32(u_input.c.wx, vec2<u32>(4294967295u, 0u)))));
}

fn func_5(arg_0: Struct_1) -> Struct_3 {
    global1 = arg_0;
    let var_0 = select(!select(vec3<bool>(global1.c & arg_0.d, false, global1.c), select(vec3<bool>(global1.c, global1.c, global1.d), vec3<bool>(true, arg_0.c, arg_0.d), vec3<bool>(false, false, arg_0.d)), select(select(vec3<bool>(true, true, arg_0.d), vec3<bool>(arg_0.c, global1.c, global1.c), false), vec3<bool>(false, arg_0.c, arg_0.c), !vec3<bool>(arg_0.c, false, global1.d))), select(select(!vec3<bool>(false, arg_0.c, global1.c), !(!vec3<bool>(global1.c, true, global1.c)), false), select(!vec3<bool>(true, true, global1.d), vec3<bool>(all(vec4<bool>(global1.c, true, true, global1.d)), global1.c, global1.c), select(!vec3<bool>(true, arg_0.c, global1.c), select(vec3<bool>(arg_0.d, true, false), vec3<bool>(true, true, false), vec3<bool>(arg_0.c, global1.d, global1.d)), !vec3<bool>(true, global1.c, arg_0.d))), !vec3<bool>(any(vec3<bool>(false, arg_0.d, arg_0.c)), !global1.d, arg_0.d)), !select(!vec3<bool>(arg_0.d, arg_0.d, true), vec3<bool>(global1.c, true, true), !(!vec3<bool>(global1.c, arg_0.d, arg_0.d))));
    var var_1 = var_0.x;
    var var_2 = u_input.e;
    let var_3 = true;
    return Struct_3((_wgslsmith_div_i32(-u_input.d, u_input.b.x & u_input.d) | _wgslsmith_dot_vec4_i32(vec4<i32>(-24865i, 2147483647i, 951i, u_input.b.x) << (vec4<u32>(0u, u_input.c.x, global1.a, arg_0.a) % vec4<u32>(32u)), -vec4<i32>(-12820i, 1i, u_input.d, u_input.b.x))) << (u_input.a % 32u), select(select(vec2<u32>(1u, u_input.a), _wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.c.yz, u_input.c.yy), _wgslsmith_mod_vec2_u32(vec2<u32>(global1.a, 12073u), u_input.c.yw)), arg_0.a == ~u_input.a), ~u_input.c.yw, any(!(!vec4<bool>(true, true, false, global1.c)))));
}

fn func_1(arg_0: i32, arg_1: Struct_2) -> Struct_1 {
    let var_0 = func_5(Struct_1(func_2(vec4<f32>(_wgslsmith_f_op_f32(trunc(-447f)), -261f, 496f, _wgslsmith_f_op_f32(trunc(global1.b)))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global1.b)), global1.b))), true, all(!vec4<bool>(global1.d, false, global1.c, global1.d))));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -616f), -364f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b + _wgslsmith_f_op_f32(global1.b - _wgslsmith_f_op_f32(ceil(global1.b)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.b, global1.b)))));
    var var_2 = vec4<f32>(_wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global1.b - global1.b))) + _wgslsmith_f_op_f32(-global1.b)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_1.yz), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global1.b, global1.b)))), select(select(vec2<bool>(global1.c, global1.d), vec2<bool>(false, global1.c), vec2<bool>(false, global1.c)), vec2<bool>(global1.c, true), select(true, global1.d, true)))), var_0, _wgslsmith_f_op_vec3_f32(var_1 * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1))))).x, _wgslsmith_f_op_f32(min(global1.b, global1.b)), global1.b, -183f);
    let var_3 = vec4<bool>(!global1.d, true, true, all(vec3<bool>(global1.c, !global1.d, global1.d)));
    var var_4 = var_0.b | max(vec2<u32>(abs(arg_1.a), ~11500u), vec2<u32>(firstTrailingBit(arg_1.a), (global1.a ^ var_0.b.x) & ~arg_1.a));
    return Struct_1(~1u, var_2.x, !(false || (true | all(vec3<bool>(false, var_3.x, true)))), true);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1(1i, Struct_2(_wgslsmith_sub_u32(global1.a, u_input.e | global1.a)));
    var var_0 = firstTrailingBit(select(select(-vec4<i32>(-2147483647i, u_input.d, u_input.d, -2870i), vec4<i32>(u_input.b.x, 39993i, u_input.b.x, u_input.b.x), true), firstTrailingBit(vec4<i32>(36200i, -35711i, u_input.b.x, 79235i)) >> (_wgslsmith_add_vec4_u32(u_input.c, vec4<u32>(u_input.a, u_input.a, 0u, u_input.a)) % vec4<u32>(32u)), 46551u >= global1.a) | vec4<i32>(_wgslsmith_sub_i32(6656i, u_input.b.x) & (2147483647i | u_input.d), -(i32(-1i) * -4088i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, -2147483647i, u_input.b.x, 36884i), select(vec4<i32>(71904i, u_input.d, u_input.d, -17303i), vec4<i32>(u_input.d, 0i, u_input.b.x, u_input.d), vec4<bool>(true, global1.d, global1.c, false))), ~reverseBits(u_input.b.x)));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global1.b, global1.b), vec2<f32>(global1.b, 1395f)))))));
    var_0 = -_wgslsmith_add_vec4_i32(reverseBits(-min(vec4<i32>(20132i, u_input.d, -1i, -14438i), vec4<i32>(2147483647i, var_0.x, -52047i, var_0.x))), ~vec4<i32>(u_input.d & 9764i, var_0.x, var_0.x, max(0i, 9491i)));
    global0 = -2147483647i;
    var_0 = vec4<i32>(~var_0.x, u_input.d << (29087u % 32u), var_0.x, ~((2147483647i << (max(u_input.e, 0u) % 32u)) | _wgslsmith_mult_i32(var_0.x, 56315i)));
    global1 = func_1(-1i, Struct_2(7009u));
    global0 = u_input.b.x;
    global0 = select(max(_wgslsmith_mod_i32(-_wgslsmith_div_i32(var_0.x, -40492i), select(_wgslsmith_div_i32(0i, 2147483647i), u_input.b.x, true)), var_0.x), ~u_input.d, false);
    let x = u_input.a;
    s_output = StorageBuffer(-204f, u_input.c.xzz, var_0.x);
}

