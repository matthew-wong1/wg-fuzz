struct Struct_1 {
    a: bool,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: f32,
    b: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<u32>,
    d: vec2<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, true, false, false);

var<private> global1: vec2<f32>;

var<private> global2: f32;

var<private> global3: Struct_3 = Struct_3(-583f, 57728u);

var<private> global4: vec2<f32> = vec2<f32>(1909f, -375f);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: i32) -> Struct_3 {
    let var_0 = select(~(~vec4<u32>(21334u, u_input.c.x, _wgslsmith_sub_u32(4294967295u, 46607u), global3.b)), ~firstTrailingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, global3.b, 4294967295u), vec4<u32>(global3.b, 1u, 0u, global3.b))) | ~abs(countOneBits(vec4<u32>(u_input.c.x, global3.b, u_input.c.x, 1u))), !vec4<bool>(global0.x, (true || global0.x) || !global0.x, false, global0.x));
    var var_1 = !vec2<bool>(any(!(!vec4<bool>(false, global0.x, false, global0.x))), ((54020u != var_0.x) && (true & global0.x)) == global0.x);
    var var_2 = ~_wgslsmith_div_i32(firstTrailingBit(arg_0), -_wgslsmith_mult_i32(-2147483647i, _wgslsmith_div_i32(arg_0, arg_0)));
    global4 = vec2<f32>(global1.x, global3.a);
    let var_3 = Struct_2(_wgslsmith_div_u32(_wgslsmith_mult_u32(firstLeadingBit(66466u), countOneBits(var_0.x)), var_0.x) >> (~37010u % 32u));
    return Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -465f)), ~global3.b);
}

fn func_3(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: vec2<i32>) -> vec3<f32> {
    let var_0 = u_input.c.x;
    global4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global3.a, 871f) - vec2<f32>(302f, -1728f)) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global1.x, 1101f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global3.a, global1.x))))) * vec2<f32>(global4.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(2230f, global1.x)))));
    global4 = vec2<f32>(_wgslsmith_f_op_f32(605f * arg_0.a), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global3.a))));
    global0 = arg_1;
    global0 = vec4<bool>(!select(global0.x, !(410f <= global4.x), false), any(!(!arg_1)), arg_1.x, arg_1.x | (_wgslsmith_div_f32(-363f, _wgslsmith_f_op_f32(ceil(1000f))) != _wgslsmith_f_op_f32(sign(-301f))));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1661f, global4.x, global3.a)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-728f, global4.x, 1241f) * vec3<f32>(871f, 428f, 260f)) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-296f, global4.x, arg_0.a)))))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(894f * global1.x)), global1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(715f, _wgslsmith_f_op_f32(f32(-1f) * -182f))), 1188f)));
}

fn func_2(arg_0: Struct_3) -> bool {
    let var_0 = _wgslsmith_clamp_i32(-22015i, _wgslsmith_sub_i32(2147483647i, i32(-1i) * -24596i), u_input.a.x) <= min(~_wgslsmith_div_i32(u_input.a.x, 48120i) << (~(~4294967295u) % 32u), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(-2147483647i, u_input.b.x, u_input.b.x)), firstLeadingBit(23581i)) | 20346i);
    let var_1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global3.a, global4.x, 606f), vec3<f32>(-2005f, 604f, 1011f))) + vec3<f32>(347f, arg_0.a, -640f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.a, 1238f, -2542f)) - vec3<f32>(-394f, -1002f, global4.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.a, global4.x, arg_0.a), vec3<f32>(1459f, -516f, global4.x), vec3<bool>(true, global0.x, false))) * _wgslsmith_f_op_vec3_f32(func_3(arg_0, vec4<bool>(var_0, global0.x, true, global0.x), vec2<i32>(u_input.b.x, u_input.b.x))))))));
    global1 = _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-522f, 819f) - vec2<f32>(global4.x, -760f))), vec2<f32>(_wgslsmith_f_op_f32(ceil(-383f)), global3.a)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(851f, var_1.x)), vec2<f32>(global3.a, -1170f), vec2<bool>(true, false)))))), var_1.xy);
    var var_2 = 10431u;
    var var_3 = abs(_wgslsmith_add_vec4_u32(max(vec4<u32>(1u, 0u, u_input.c.x, 14648u) | vec4<u32>(global3.b, u_input.c.x, global3.b, 39311u), countOneBits(vec4<u32>(global3.b, 100142u, 4294967295u, u_input.c.x))) << (_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, global3.b, 4294967295u, 4294967295u) >> (vec4<u32>(arg_0.b, 27006u, global3.b, u_input.c.x) % vec4<u32>(32u)), ~vec4<u32>(global3.b, arg_0.b, global3.b, u_input.c.x)) % vec4<u32>(32u)), min(vec4<u32>(1u, select(u_input.c.x, 89045u, false), u_input.c.x, 14286u), vec4<u32>(834u, _wgslsmith_mult_u32(arg_0.b, 34570u), ~19752u, _wgslsmith_clamp_u32(u_input.c.x, arg_0.b, arg_0.b)))));
    return global0.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1i;
    var var_1 = _wgslsmith_add_vec3_u32(~firstTrailingBit(min(vec3<u32>(global3.b, u_input.c.x, global3.b), vec3<u32>(4585u, u_input.c.x, u_input.c.x) ^ u_input.c)), u_input.c);
    var var_2 = func_2(func_1(_wgslsmith_mult_i32(select(-44979i, u_input.b.x | 13158i, global0.x), 2515i)));
    var_2 = !all(select(global0.wyx, select(!vec3<bool>(global0.x, global0.x, global0.x), select(vec3<bool>(false, false, true), vec3<bool>(true, global0.x, global0.x), vec3<bool>(true, global0.x, false)), global0.wwx), select(select(global0.xxy, vec3<bool>(false, false, false), global0.x), !global0.yww, global0.x)));
    var var_3 = Struct_1(any(global0.wy), global0.x, 1u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(-327f)), 36040u, (~max(vec4<u32>(1u, u_input.c.x, 194u, 1u), vec4<u32>(global3.b, u_input.c.x, global3.b, 1u)) >> (firstLeadingBit(vec4<u32>(var_1.x, global3.b, 29849u, 36823u) ^ vec4<u32>(u_input.c.x, global3.b, var_3.c, 18112u)) % vec4<u32>(32u))) >> (abs(vec4<u32>(_wgslsmith_div_u32(u_input.c.x, 4294967295u), ~0u, 4294967295u >> (global3.b % 32u), func_1(-33978i).b)) % vec4<u32>(32u)), firstLeadingBit(vec2<i32>(-1i, -2147483647i)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global4.x + _wgslsmith_f_op_f32(global1.x + global1.x)), _wgslsmith_f_op_f32(global1.x * -874f))));
}

