struct Struct_1 {
    a: bool,
    b: bool,
    c: u32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
    c: i32,
    d: vec2<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec2<i32>, 13> = array<vec2<i32>, 13>(vec2<i32>(-73214i, 1i), vec2<i32>(1i, -1i), vec2<i32>(0i, 393i), vec2<i32>(33709i, -8587i), vec2<i32>(12589i, -56166i), vec2<i32>(18033i, 1i), vec2<i32>(0i, 2147483647i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(29926i, -3836i), vec2<i32>(-1i, 20644i), vec2<i32>(-104189i, -19287i), vec2<i32>(0i, 35284i), vec2<i32>(-1i, 2147483647i));

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec3<u32>) -> f32 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-341f, global0.d.x, global0.d.x, global0.d.x), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1437f, global0.d.x, 152f, global0.d.x)))))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0.d.x, -834f, global0.d.x, global0.d.x))) + vec4<f32>(global0.d.x, -562f, global0.d.x, global0.d.x)))))), Struct_2(Struct_1(arg_0.x, abs(24971u) > global0.c, _wgslsmith_div_u32(3656u, ~arg_1.x), global0.d), -1346f));
    global1 = array<vec2<i32>, 13>();
    global1 = array<vec2<i32>, 13>();
    let var_1 = Struct_2(Struct_1(false | any(vec3<bool>(false, arg_0.x, arg_0.x)), true, var_0.b.a.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.d))), 180f);
    var var_2 = arg_0;
    return var_0.b.b;
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_2) -> f32 {
    let var_0 = ~vec4<i32>(_wgslsmith_mult_i32(0i, ~(-arg_0.x)), ~(-1i), arg_0.x, -min(firstTrailingBit(46709i), 51150i));
    global0 = Struct_1(-381f != global0.d.x, arg_1.a.b, ~(global0.c >> ((reverseBits(global0.c) ^ _wgslsmith_mult_u32(global0.c, arg_1.a.c)) % 32u)), arg_1.a.d);
    var var_1 = u_input.a.x;
    let var_2 = arg_1;
    var var_3 = arg_0.x;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(select(vec3<bool>(true, false && arg_1.a.b, var_2.a.b), select(!vec3<bool>(true, arg_1.a.a, false), !vec3<bool>(global0.a, global0.b, global0.b), arg_1.a.b | var_2.a.a), select(!vec3<bool>(arg_1.a.a, true, var_2.a.a), !vec3<bool>(var_2.a.a, false, arg_1.a.a), vec3<bool>(var_2.a.a, var_2.a.b, global0.b))), ~_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(arg_1.a.c, 1u, 31582u), vec3<u32>(var_2.a.c, 4294967295u, 1u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(var_2.a.c, global0.c, 67027u), vec3<u32>(1u, arg_1.a.c, var_2.a.c), vec3<u32>(51545u, 0u, 5758u))))));
}

fn func_1() -> bool {
    var var_0 = _wgslsmith_mod_u32(reverseBits(_wgslsmith_div_u32(~reverseBits(0u), global0.c)), max(_wgslsmith_mod_u32(global0.c, global0.c), global0.c));
    global1 = array<vec2<i32>, 13>();
    var var_1 = Struct_2(Struct_1(global0.a, global0.b, 0u, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(max(global0.d.x, 1120f)), global0.d.x)))), global0.d.x);
    var var_2 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.d.x) * _wgslsmith_f_op_f32(func_2(vec3<bool>(true, false, var_1.a.a), vec3<u32>(1u, 4294967295u, var_1.a.c)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0.d.x, 2050f)) + _wgslsmith_f_op_f32(func_3(vec3<i32>(-1i, u_input.b.x, 6158i), Struct_2(Struct_1(var_1.a.a, false, global0.c, var_1.a.d), 1095f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-643f - -843f) - _wgslsmith_div_f32(var_1.a.d.x, -446f))))));
    var var_3 = ~_wgslsmith_mod_vec3_i32(min(_wgslsmith_div_vec3_i32(u_input.b, select(u_input.b, u_input.b, vec3<bool>(true, var_1.a.b, global0.b))), vec3<i32>(reverseBits(-26207i), ~(-16829i), ~u_input.a.x)), vec3<i32>(~(-21751i), reverseBits(u_input.a.x) << (_wgslsmith_div_u32(23513u, 27078u) % 32u), u_input.b.x >> (~71324u % 32u)));
    return !(_wgslsmith_f_op_f32(var_2.x - -1816f) < _wgslsmith_div_f32(-980f, 1f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(global0.a, func_1(), 29080u, global0.d);
    var var_1 = true;
    var_1 = var_0.a;
    global1 = array<vec2<i32>, 13>();
    var_1 = abs(_wgslsmith_dot_vec4_u32(select(select(vec4<u32>(4294967295u, 76855u, global0.c, 0u), vec4<u32>(177293u, var_0.c, global0.c, var_0.c), vec4<bool>(true, false, false, global0.b)), vec4<u32>(global0.c, global0.c, 1u, var_0.c), select(vec4<bool>(false, true, var_0.a, false), vec4<bool>(false, var_0.a, true, global0.a), vec4<bool>(false, global0.b, false, var_0.a))), vec4<u32>(global0.c, 1u, _wgslsmith_mult_u32(global0.c, 72150u), 77534u))) <= 1u;
    let var_2 = Struct_2(Struct_1(!(!all(vec4<bool>(true, true, false, var_0.b))), global0.a, ~var_0.c ^ 1u, _wgslsmith_f_op_vec2_f32(-vec2<f32>(291f, -507f))), _wgslsmith_f_op_f32(min(-654f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -985f)))))));
    var_1 = (var_2.b > var_2.b) | true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-global0.d), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b.x << (16224u % 32u), select(24071i, ~6316i, any(vec3<bool>(true, global0.a, global0.b))), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-17171i, u_input.a.x, -40645i), vec3<i32>(u_input.a.x, -93489i, u_input.b.x)), 0i)), _wgslsmith_add_vec3_i32(countOneBits(~vec3<i32>(u_input.a.x, -49981i, u_input.a.x)), abs(-vec3<i32>(2147483647i, u_input.b.x, 34443i)))), ~((u_input.a.x & (-75068i ^ u_input.b.x)) ^ ~abs(-33009i)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.a.d.x, var_0.d.x) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(ceil(var_2.a.d)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.d.x, var_2.a.d.x)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(global0.d, vec2<f32>(-215f, -1000f)))))), var_0.d.x);
}

