struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<f32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
    c: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: i32;

var<private> global2: u32;

var<private> global3: u32;

var<private> global4: array<bool, 5> = array<bool, 5>(false, true, true, true, false);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> i32 {
    global4 = array<bool, 5>();
    let var_0 = firstTrailingBit(_wgslsmith_add_u32(27178u, ~u_input.c) ^ ~u_input.c);
    global4 = array<bool, 5>();
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(ceil(global0.c.x)))) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.c.x)))))));
    global1 = 10724i;
    return 2147483647i;
}

fn func_2(arg_0: u32) -> Struct_2 {
    var var_0 = _wgslsmith_mult_i32(u_input.b, _wgslsmith_dot_vec2_i32(max(vec2<i32>(global0.a.x, -28617i), global0.a.xx), vec2<i32>(global0.a.x, u_input.b)) & 2147483647i) | countOneBits(func_3());
    var var_1 = Struct_3(global0.c.zy, Struct_2(!global4[_wgslsmith_index_u32(4294967295u, 5u)], global0.c.yyy), global0.c.x);
    var_0 = 2147483647i;
    var var_2 = select(min(1i << (_wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.a.x, u_input.c), ~u_input.a.x) % 32u), min(_wgslsmith_clamp_i32(1i << (1u % 32u), countOneBits(2147483647i), u_input.b), _wgslsmith_dot_vec3_i32(global0.a.xzy << (vec3<u32>(0u, arg_0, arg_0) % vec3<u32>(32u)), _wgslsmith_add_vec3_i32(global0.a.yzw, global0.a.zww)))), 31449i, var_1.b.a);
    var var_3 = var_1.a;
    return Struct_2(_wgslsmith_f_op_f32(floor(569f)) != _wgslsmith_f_op_f32(f32(-1f) * -321f), vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1.b.b.x * _wgslsmith_f_op_f32(-var_3.x)))), -373f, -2636f));
}

fn func_4(arg_0: bool, arg_1: vec2<bool>, arg_2: Struct_2) -> f32 {
    var var_0 = func_2(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.c, u_input.c), u_input.a.wxw)) >> (~(~u_input.a.x) % 32u));
    global4 = array<bool, 5>();
    let var_1 = false;
    let var_2 = _wgslsmith_f_op_f32(step(578f, var_0.b.x));
    let var_3 = arg_1;
    return -711f;
}

fn func_1(arg_0: vec3<i32>, arg_1: vec3<f32>, arg_2: vec4<u32>) -> Struct_3 {
    var var_0 = arg_0.zx;
    let var_1 = -1438f;
    var var_2 = global0.a;
    var var_3 = Struct_2(true, vec3<f32>(_wgslsmith_f_op_f32(max(var_1, _wgslsmith_div_f32(arg_1.x, global0.c.x))), global0.c.x, _wgslsmith_f_op_f32(300f - _wgslsmith_f_op_f32(func_4(global4[_wgslsmith_index_u32(arg_2.x, 5u)] || false, !vec2<bool>(global0.b, global0.b), func_2(arg_2.x))))));
    var var_4 = func_2(~(~firstLeadingBit(max(u_input.c, 1u))));
    return Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_4.b.zy))), Struct_2(true, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-306f, var_4.b.x, -2045f) + _wgslsmith_div_vec3_f32(arg_1, global0.c.wyx))))), var_3.b.x);
}

fn func_5(arg_0: Struct_3, arg_1: vec3<i32>) -> Struct_1 {
    global2 = 0u;
    var var_0 = Struct_1(-firstLeadingBit(vec4<i32>(1i, global0.a.x, u_input.b, u_input.b)), all(vec4<bool>(true, false, select(true, global4[_wgslsmith_index_u32(firstLeadingBit(1u), 5u)], true), all(select(vec4<bool>(arg_0.b.a, global0.b, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, arg_0.b.a, global4[_wgslsmith_index_u32(u_input.c, 5u)], global0.b))))), global0.c);
    var var_1 = func_1(vec3<i32>(-1i) * -_wgslsmith_clamp_vec3_i32(var_0.a.xyy, ~vec3<i32>(-26399i, global0.a.x, global0.a.x), global0.a.wxz), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.b.b) + _wgslsmith_f_op_vec3_f32(-global0.c.xyw))) - vec3<f32>(-404f, -1947f, var_0.c.x)), vec4<u32>(~(~0u >> (_wgslsmith_div_u32(u_input.c, 0u) % 32u)), firstLeadingBit(17717u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.c) | vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(u_input.c, 4294967295u, 1u)), 0u));
    global1 = ~arg_1.x;
    global2 = 4294967295u;
    return Struct_1(vec4<i32>(var_0.a.x, 57642i, ~countOneBits(-2147483647i), ~(~global0.a.x)), func_2(_wgslsmith_clamp_u32(min(_wgslsmith_sub_u32(u_input.a.x, u_input.c), u_input.a.x), ~13019u >> (~4294967295u % 32u), u_input.c)).a, vec4<f32>(794f, var_0.c.x, global0.c.x, _wgslsmith_f_op_f32(1395f + _wgslsmith_f_op_f32(-var_0.c.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_1(max(global0.a.xyy, global0.a.wxy) ^ (_wgslsmith_mod_vec3_i32(vec3<i32>(731i, global0.a.x, 4870i), global0.a.yzx) ^ _wgslsmith_div_vec3_i32(vec3<i32>(global0.a.x, u_input.b, 1i), global0.a.xww)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1854f, 1000f))), global0.c.x, _wgslsmith_f_op_f32(-global0.c.x)), u_input.a), vec3<i32>(i32(-1i) * -1i, 70700i & ~u_input.b, -52298i));
    var var_1 = u_input.a;
    var var_2 = Struct_2(true, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.c.zyz * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.x, global0.c.x, global0.c.x) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1983f, var_0.c.x, -848f) * var_0.c.wxx))), vec3<f32>(func_2(var_1.x).b.x, _wgslsmith_f_op_f32(-var_0.c.x), global0.c.x)));
    var var_3 = false;
    let var_4 = func_5(func_1(~(~abs(var_0.a.wzx)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-var_2.b)))), vec4<u32>(1u, ~max(20785u, var_1.x), 0u, ~10659u)), -vec3<i32>(2147483647i, 1i, var_0.a.x));
    let var_5 = 19650u;
    let var_6 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(323f);
}

