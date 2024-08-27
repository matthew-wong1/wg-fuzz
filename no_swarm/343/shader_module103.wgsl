struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: f32,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<f32>,
    c: f32,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
    c: f32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 6>;

var<private> global1: vec3<f32>;

var<private> global2: f32 = 195f;

var<private> global3: vec4<i32> = vec4<i32>(i32(-2147483648), -24357i, -10916i, 2147483647i);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_2(arg_0: vec2<f32>, arg_1: f32) -> Struct_3 {
    return Struct_3(-1000f, arg_1, abs(u_input.b.x));
}

fn func_3() -> vec3<f32> {
    global0 = array<Struct_4, 6>();
    var var_0 = 4294967295u;
    global2 = _wgslsmith_f_op_f32(max(global1.x, global1.x));
    var var_1 = true;
    var var_2 = Struct_2(vec4<i32>(~_wgslsmith_add_i32(u_input.a, global3.x), ~(-2147483647i), (u_input.a ^ global3.x) << (u_input.b.x % 32u), ~0i) | vec4<i32>(max(-2147483647i, u_input.a), -1i, (44063i | global3.x) << (~1u % 32u), u_input.a), global1.x, Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, -179f, global1.x, global1.x) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(253f, global1.x, -975f, 233f), vec4<f32>(global1.x, -1117f, -2000f, global1.x), true))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, -1655f, -1000f) * vec4<f32>(258f, 2150f, global1.x, 1442f)))), ~abs(4294967295u) & _wgslsmith_clamp_u32(4294967295u, 75271u, reverseBits(14099u)), true, true), global3.x);
    return _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(var_2.c.a.xyy - var_2.c.a.yxz), vec3<f32>(var_2.b, 460f, var_2.b), !vec3<bool>(false, true, var_2.c.d))))))), var_2.c.a.wyw, select(!(!(!vec3<bool>(false, true, var_2.c.c))), select(vec3<bool>(var_2.c.c, u_input.b.x > 1u, select(var_2.c.d, true, var_2.c.c)), !select(vec3<bool>(var_2.c.c, false, true), vec3<bool>(false, false, var_2.c.c), var_2.c.d), !select(vec3<bool>(true, false, false), vec3<bool>(false, var_2.c.d, true), vec3<bool>(var_2.c.c, var_2.c.c, var_2.c.c))), true)));
}

fn func_1() -> u32 {
    var var_0 = func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global1.yy, _wgslsmith_f_op_vec2_f32(select(global1.zy, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, global1.x)), true)))), global1.x);
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - _wgslsmith_f_op_f32(-var_0.a)), _wgslsmith_div_f32(-124f, func_2(global1.xy, 819f).a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b + var_0.a) * _wgslsmith_f_op_f32(global1.x - global1.x))), _wgslsmith_f_op_vec3_f32(func_3()))));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(global1.x + -300f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b - 1000f))), -2226f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -183f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.b, _wgslsmith_f_op_f32(global1.x - -219f), true)))), _wgslsmith_f_op_f32(f32(-1f) * -1295f));
    global0 = array<Struct_4, 6>();
    let var_2 = u_input.b;
    return firstLeadingBit(~var_0.c);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, -2389f, global1.x) * vec3<f32>(418f, 392f, global1.x)), _wgslsmith_div_vec3_f32(vec3<f32>(-713f, 475f, global1.x), vec3<f32>(global1.x, 857f, 1000f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, global1.x, global1.x)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global1.x, -202f, global1.x))))));
    let var_0 = -_wgslsmith_div_i32(u_input.a, (-44392i << (_wgslsmith_add_u32(15715u, u_input.c) % 32u)) << (func_1() % 32u));
    var var_1 = global0[_wgslsmith_index_u32(~countOneBits(33855u), 6u)];
    var var_2 = Struct_2(firstLeadingBit(min(var_1.d.a << (~vec4<u32>(0u, 1u, u_input.c, u_input.c) % vec4<u32>(32u)), vec4<i32>(abs(global3.x), var_1.d.d, _wgslsmith_dot_vec2_i32(vec2<i32>(global3.x, var_0), vec2<i32>(var_1.d.a.x, -34065i)), var_0 << (0u % 32u)))), _wgslsmith_f_op_f32(min(-119f, _wgslsmith_f_op_f32(global1.x + -1960f))), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-global1.x), 1279f, global1.x, _wgslsmith_f_op_f32(select(-1495f, var_1.d.b, any(vec4<bool>(false, var_1.d.c.c, true, false))))), _wgslsmith_add_u32(~(~1u), var_1.d.c.b), select(all(vec2<bool>(true, var_1.a.c)), !var_1.d.c.c, true), select(!any(vec2<bool>(true, var_1.d.c.d)), false, true)), min(_wgslsmith_div_i32(var_1.d.a.x, 0i), 27879i));
    global3 = ~(-(_wgslsmith_add_vec4_i32(~vec4<i32>(2147483647i, -5974i, var_2.d, var_2.d), vec4<i32>(-60852i, 0i, var_0, var_1.d.a.x)) ^ _wgslsmith_clamp_vec4_i32(vec4<i32>(var_1.d.d, -2147483647i, -1i, 103770i), max(vec4<i32>(var_2.d, -1i, var_2.a.x, u_input.a), vec4<i32>(var_1.d.a.x, -1694i, 2147483647i, u_input.a)), vec4<i32>(-2147483647i, var_1.d.a.x, global3.x, var_2.d))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global1.x, 986f, -819f, -263f), var_2.c.a)))) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_2.c.a.x, _wgslsmith_f_op_f32(global1.x - -372f), _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(f32(-1f) * -734f))))), var_2.a.zy, _wgslsmith_f_op_f32(floor(1515f)), reverseBits(_wgslsmith_mod_vec4_i32(~vec4<i32>(var_2.d, u_input.a, var_1.d.a.x, u_input.a), var_1.d.a | var_1.d.a)) << (u_input.b % vec4<u32>(32u)));
}

