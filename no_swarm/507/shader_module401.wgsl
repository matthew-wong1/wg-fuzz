struct Struct_1 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: Struct_1;

var<private> global2: array<bool, 5>;

var<private> global3: array<vec4<bool>, 20> = array<vec4<bool>, 20>(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> vec2<bool> {
    global3 = array<vec4<bool>, 20>();
    var var_0 = u_input.c;
    global0 = select(firstLeadingBit(vec2<i32>(abs(u_input.a) & ~(-2147483647i), -20938i)), ~vec2<i32>(_wgslsmith_mult_i32(0i, _wgslsmith_sub_i32(global0.x, u_input.a)), global0.x), !(!global1.a.x));
    var_0 = ~(~_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b.x, u_input.b.x), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b.x, 0u), vec2<u32>(4294967295u, u_input.b.x)))) << (u_input.c % 32u);
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(926f, 1420f, 1000f, -952f))))) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(2319f, 888f, 338f, 1459f), vec4<f32>(1535f, 1000f, 1699f, -1006f))))), vec4<f32>(-856f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-137f, -697f, global1.a.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(166f, 1529f)))), _wgslsmith_f_op_f32(select(1f, _wgslsmith_div_f32(1621f, 358f), false)))));
    return global1.a.zx;
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_sub_vec2_i32(~vec2<i32>(-21831i, 40406i), abs(-vec2<i32>(_wgslsmith_add_i32(-2147483647i, global0.x), -12404i << (0u % 32u))));
    var var_1 = vec2<bool>(false, u_input.a <= u_input.a);
    let var_2 = select(!(!vec2<bool>(true, global2[_wgslsmith_index_u32(u_input.b.x, 5u)])), select(!global1.a.zx, !select(func_3(), select(vec2<bool>(true, global2[_wgslsmith_index_u32(u_input.c, 5u)]), global1.a.wy, true), true), global1.a.zy), var_1.x);
    let var_3 = Struct_1(select(vec4<bool>(any(global1.a.ywx), true, var_2.x, func_3().x), vec4<bool>(false, global2[_wgslsmith_index_u32(10226u, 5u)], true, false), select(global3[_wgslsmith_index_u32(u_input.b.x, 20u)], !global1.a, true)));
    var var_4 = var_3;
    return var_3;
}

fn func_1(arg_0: vec3<f32>, arg_1: vec2<i32>) -> Struct_1 {
    global3 = array<vec4<bool>, 20>();
    let var_0 = global2[_wgslsmith_index_u32(firstTrailingBit(~u_input.c ^ ~_wgslsmith_mult_u32(min(u_input.b.x, 4294967295u), 1u)), 5u)];
    global1 = Struct_1(global3[_wgslsmith_index_u32(reverseBits(u_input.b.x), 20u)]);
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.xx));
    global2 = array<bool, 5>();
    return func_2();
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: bool, arg_3: bool) -> Struct_1 {
    let var_0 = ~vec3<i32>(min(i32(-1i) * -2147483647i, abs(global0.x)), _wgslsmith_dot_vec3_i32(~(-vec3<i32>(-2147483647i, u_input.a, -2147483647i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(6351i, u_input.a, global0.x), -vec3<i32>(u_input.a, global0.x, -15071i), ~vec3<i32>(-2147483647i, u_input.a, u_input.a))), -1i);
    let var_1 = 13723i;
    global0 = vec2<i32>(u_input.a, 1i);
    global1 = arg_0;
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 114f, 623f) - vec3<f32>(509f, -690f, -2185f)))) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(612f, 280f, -858f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-796f, 1354f, 1107f))) - _wgslsmith_div_vec3_f32(vec3<f32>(410f, -324f, -1000f), vec3<f32>(512f, -840f, -1038f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -1472f, 2081f) + vec3<f32>(1020f, 1144f, 611f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-792f, 267f, 1396f))))));
    return func_2();
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1) -> StorageBuffer {
    let var_0 = max(u_input.c, u_input.b.x);
    global1 = func_2();
    let var_1 = vec3<f32>(-251f, _wgslsmith_f_op_f32(sign(-579f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1216f - _wgslsmith_f_op_f32(sign(1000f))))));
    let var_2 = Struct_1(vec4<bool>(false, any(!vec4<bool>(arg_1, false, global2[_wgslsmith_index_u32(79659u, 5u)], arg_0.a.x)) || all(vec3<bool>(true, true, false)), _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(var_1.x + var_1.x)) > var_1.x, global1.a.x));
    let var_3 = ~firstLeadingBit(~_wgslsmith_clamp_u32(~var_0, _wgslsmith_add_u32(4294967295u, 0u), abs(u_input.b.x)));
    return StorageBuffer(vec4<f32>(-200f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1470f - var_1.x) * -425f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - var_1.x) + 492f), _wgslsmith_f_op_f32(314f + -448f))), var_1.x), u_input.a, _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, var_0 & _wgslsmith_add_u32(21655u, var_0), _wgslsmith_div_u32(4294967295u, ~0u), u_input.b.x), vec4<u32>(countOneBits(u_input.b.x), max(~var_0, u_input.b.x ^ 40506u), 13308u, ~u_input.c)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(Struct_1(select(!global3[_wgslsmith_index_u32(1u, 20u)], !global1.a, !global1.a)), global2[_wgslsmith_index_u32(4294967295u, 5u)], func_4(func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(588f, -707f, -1000f)), select(~vec2<i32>(global0.x, global0.x), vec2<i32>(41337i, global0.x), vec2<bool>(global2[_wgslsmith_index_u32(2247u, 5u)], false))), func_3(), true, all(!(!vec2<bool>(true, global2[_wgslsmith_index_u32(u_input.c, 5u)])))));
}

