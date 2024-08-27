struct Struct_1 {
    a: bool,
    b: bool,
    c: vec3<bool>,
    d: f32,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: Struct_1,
    d: vec2<f32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: vec4<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: i32,
    d: vec2<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 27>;

var<private> global1: vec4<bool> = vec4<bool>(true, false, true, false);

var<private> global2: vec2<f32> = vec2<f32>(2542f, -742f);

var<private> global3: bool = true;

var<private> global4: array<f32, 18> = array<f32, 18>(962f, 1715f, -160f, -729f, 939f, -186f, -485f, 776f, -503f, -533f, 252f, 487f, 1275f, 851f, 660f, 1227f, -1442f, -1354f);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec2<u32>, arg_2: vec4<u32>) -> bool {
    global0 = array<vec4<f32>, 27>();
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0), arg_0);
    let var_1 = global1.x;
    global4 = array<f32, 18>();
    global2 = _wgslsmith_f_op_vec2_f32(arg_0 - arg_0);
    return all(global1.wxz);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: f32) -> vec4<bool> {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global4[_wgslsmith_index_u32(51801u, 18u)]))))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1536f * _wgslsmith_f_op_f32(f32(-1f) * -257f)), _wgslsmith_f_op_f32(-arg_0.d)))), false, arg_0, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-434f + -419f))) + 135f), _wgslsmith_f_op_f32(global2.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(668f * 1351f) - _wgslsmith_f_op_f32(sign(arg_0.d))))));
    let var_1 = Struct_1(false, !global1.x, var_0.c.c, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(916f, 426f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-1429f, var_0.a)), _wgslsmith_f_op_f32(arg_0.d * arg_0.d)))))));
    let var_2 = select(~abs(countOneBits(firstTrailingBit(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)))), _wgslsmith_mod_vec3_u32(~(~u_input.c.wwy >> (u_input.c.zyz % vec3<u32>(32u))), min(vec3<u32>(firstLeadingBit(u_input.c.x), u_input.c.x, _wgslsmith_mod_u32(u_input.a.x, u_input.a.x)), ~u_input.c.ywz)), true);
    global2 = var_0.d;
    let var_3 = true;
    return vec4<bool>(any(!(!(!vec4<bool>(true, var_0.c.a, false, true)))), -3576i >= -firstTrailingBit(firstLeadingBit(arg_1.x)), true, global1.x);
}

fn func_2(arg_0: vec3<f32>) -> vec4<bool> {
    global4 = array<f32, 18>();
    global4 = array<f32, 18>();
    global1 = select(!select(func_3(Struct_1(true, false, global1.wyx, arg_0.x), ~vec4<i32>(-47726i, u_input.b.x, u_input.b.x, 0i), 654f), select(func_3(Struct_1(false, false, global1.wxw, global4[_wgslsmith_index_u32(u_input.c.x, 18u)]), vec4<i32>(u_input.b.x, 7859i, 33038i, u_input.b.x), 1389f), vec4<bool>(global1.x, global1.x, false, global1.x), true), any(global1.wyw) && (global1.x | global1.x)), vec4<bool>(false, !global1.x, _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(4294967295u, 1u, 0u, u_input.a.x)), 18u)]) <= arg_0.x, global1.x), !select(!select(vec4<bool>(global1.x, global1.x, global1.x, true), vec4<bool>(global1.x, global1.x, false, true), global1.x), vec4<bool>(true, true, any(vec4<bool>(global1.x, global1.x, global1.x, false)), global1.x), global1.x));
    var var_0 = Struct_1(false, !(_wgslsmith_f_op_f32(abs(-583f)) != _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(u_input.a.x, 18u)] * -390f)))), vec3<bool>(true, func_1(vec2<f32>(-1508f, _wgslsmith_f_op_f32(abs(global2.x))), u_input.a, _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, u_input.c.x, 4294967295u) & vec4<u32>(u_input.c.x, 0u, 61524u, u_input.c.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.c.x), abs(vec4<u32>(u_input.c.x, u_input.c.x, 46474u, 1u)))), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)));
    global0 = array<vec4<f32>, 27>();
    return !(!vec4<bool>(true, all(global1.xyz), global2.x < global2.x, _wgslsmith_f_op_f32(select(global4[_wgslsmith_index_u32(u_input.a.x, 18u)], 257f, false)) <= _wgslsmith_div_f32(1098f, -937f)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = select(select(!select(!vec4<bool>(global1.x, true, global1.x, false), select(vec4<bool>(global1.x, true, false, true), vec4<bool>(global1.x, false, global1.x, global1.x), true), global1.x), select(select(select(vec4<bool>(true, true, global1.x, global1.x), vec4<bool>(global1.x, global1.x, true, true), false), vec4<bool>(true, true, global1.x, global1.x), vec4<bool>(false, false, false, global1.x)), !(!vec4<bool>(true, global1.x, true, true)), !vec4<bool>(global1.x, global1.x, global1.x, global1.x)), func_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global4[_wgslsmith_index_u32(u_input.c.x, 18u)], 306f)), _wgslsmith_div_vec2_f32(vec2<f32>(-403f, global4[_wgslsmith_index_u32(u_input.c.x, 18u)]), vec2<f32>(global2.x, global4[_wgslsmith_index_u32(21111u, 18u)])))), vec2<u32>(u_input.c.x, u_input.a.x), u_input.c)), !select(!vec4<bool>(true, global1.x, global1.x, global1.x), select(select(vec4<bool>(global1.x, true, false, true), vec4<bool>(true, global1.x, true, global1.x), true), !vec4<bool>(global1.x, false, global1.x, true), true), vec4<bool>(all(vec4<bool>(global1.x, global1.x, true, global1.x)), true, 1000f >= global4[_wgslsmith_index_u32(u_input.c.x, 18u)], false)), !func_2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global4[_wgslsmith_index_u32(15891u, 18u)], -1000f, -1361f)))))));
    global0 = array<vec4<f32>, 27>();
    var var_0 = u_input.a.x;
    global2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -119f), _wgslsmith_f_op_f32(-1000f * 720f))))));
    global1 = vec4<bool>(true, true, global1.x, global1.x || func_3(Struct_1(global1.x, false, select(vec3<bool>(false, global1.x, global1.x), global1.zwy, vec3<bool>(global1.x, false, global1.x)), 482f), reverseBits(countOneBits(vec4<i32>(-10269i, 2147483647i, 2147483647i, u_input.b.x))), -426f).x);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1081f - -493f) - global4[_wgslsmith_index_u32(countOneBits(~27599u), 18u)]), -1045f)) - 728f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(-1050f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(300f * _wgslsmith_f_op_f32(-global2.x))))), _wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<i32>(u_input.b.x, 19206i, 2147483647i), vec3<i32>(0i, 4100i, u_input.b.x)) ^ (vec3<i32>(36299i, 2147483647i, 2147483647i) ^ vec3<i32>(-30445i, u_input.b.x, u_input.b.x)), firstLeadingBit(abs(vec3<i32>(u_input.b.x, 0i, u_input.b.x)))), countOneBits(vec3<i32>(-1i) * -vec3<i32>(u_input.b.x, 28886i, u_input.b.x)), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.b.x >> (0u % 32u), reverseBits(2147483647i), u_input.b.x), countOneBits(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x)))), -u_input.b.x, ~u_input.c.yz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(919f, global4[_wgslsmith_index_u32(u_input.c.x, 18u)]))))));
}

