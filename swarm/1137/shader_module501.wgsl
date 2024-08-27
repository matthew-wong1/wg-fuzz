struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: f32,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: vec2<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 17>;

var<private> global1: Struct_1 = Struct_1(127f, vec2<u32>(2074u, 51184u), vec4<u32>(66371u, 0u, 47718u, 1u), -206f, 1613f);

var<private> global2: vec2<f32> = vec2<f32>(-1000f, -1000f);

var<private> global3: Struct_1 = Struct_1(934f, vec2<u32>(13833u, 1u), vec4<u32>(15728u, 59671u, 0u, 4294967295u), -1721f, -1940f);

var<private> global4: u32;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<u32>) -> f32 {
    let var_0 = select(!(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(378f - -445f) * _wgslsmith_f_op_f32(-558f - global2.x)) >= global2.x), all(select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true))), !select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true)), true)), global3.c.x <= ~1u);
    global1 = Struct_1(global1.a, arg_0.zy, vec4<u32>(~_wgslsmith_sub_u32(~5241u, ~arg_0.x), _wgslsmith_div_u32(~4294967295u, ~0u) >> (u_input.b.x % 32u), 4294967295u, ~(global1.c.x << (66889u % 32u)) & global1.c.x), global1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -174f), -922f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.d)))));
    global1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-global3.e))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1379f)))), max(abs(vec2<u32>(global3.c.x, global1.c.x)), ~vec2<u32>(firstLeadingBit(global3.b.x), 0u)), ~_wgslsmith_add_vec4_u32(~(~vec4<u32>(u_input.d.x, arg_0.x, 59239u, global1.c.x)), _wgslsmith_div_vec4_u32(select(vec4<u32>(global1.c.x, u_input.d.x, global1.b.x, 34479u), global1.c, false), global0[_wgslsmith_index_u32(arg_0.x, 17u)] & vec4<u32>(54999u, 72530u, 0u, 1u))), 971f, _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(global2.x)), _wgslsmith_f_op_f32(floor(-572f)), true))))));
    var var_1 = _wgslsmith_f_op_f32(select(global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x + -630f)), select(true, any(select(select(vec2<bool>(true, var_0), vec2<bool>(false, var_0), vec2<bool>(false, true)), vec2<bool>(true, var_0), select(vec2<bool>(true, false), vec2<bool>(var_0, var_0), vec2<bool>(true, var_0)))), !(!var_0 & all(vec4<bool>(false, var_0, var_0, var_0))))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-837f)), -2040f))) * _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(trunc(101f)))), ~max(_wgslsmith_mod_vec2_u32(u_input.d, global3.b), _wgslsmith_mult_vec2_u32(min(arg_0.xx, vec2<u32>(arg_0.x, 4294967295u)), vec2<u32>(global3.b.x, global3.b.x) ^ vec2<u32>(0u, 24196u))), ~_wgslsmith_clamp_vec4_u32(min(_wgslsmith_div_vec4_u32(arg_0, vec4<u32>(arg_0.x, 44146u, global3.b.x, u_input.a)), ~global3.c), vec4<u32>(u_input.e.x, 1u, 103366u, u_input.c) | firstTrailingBit(vec4<u32>(1u, 1u, 0u, arg_0.x)), ~max(global3.c, global1.c)), global1.e, _wgslsmith_f_op_f32(sign(-803f)));
    return _wgslsmith_f_op_f32(-global1.d);
}

fn func_2(arg_0: u32) -> vec3<f32> {
    let var_0 = 2147483647i;
    let var_1 = Struct_1(global2.x, u_input.d, firstLeadingBit(vec4<u32>(abs(0u), global1.b.x, global1.c.x, 16834u)), _wgslsmith_div_f32(-2056f, -732f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x + _wgslsmith_f_op_f32(global1.d - global2.x)) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(global3.d, global3.e)))), _wgslsmith_f_op_f32(f32(-1f) * -1222f)))));
    var var_2 = arg_0;
    var var_3 = var_1;
    let var_4 = var_1;
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec4<u32>(1u, 4294967295u, 71796u, var_4.c.x) | vec4<u32>(global3.b.x, arg_0, u_input.a, var_3.c.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-177f)) + var_3.d), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -683f))));
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(func_2(~u_input.a));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(157f - var_0.x) * global1.a) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.d + global3.e) - _wgslsmith_div_f32(global3.d, 1653f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(global3.d + -1460f), _wgslsmith_f_op_f32(-337f + 415f)))), countOneBits(abs(global1.b)), abs(~vec4<u32>(37944u, 1u, _wgslsmith_sub_u32(u_input.b.x, global1.b.x), reverseBits(0u))), global1.e, -555f);
    var var_2 = abs(~_wgslsmith_sub_vec3_u32(min(~vec3<u32>(u_input.a, global1.b.x, global1.c.x), _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 43004u, global3.c.x), var_1.c.yzw, vec3<u32>(4294967295u, u_input.c, global3.b.x))), vec3<u32>(_wgslsmith_mod_u32(global3.b.x, global1.c.x), global1.b.x, var_1.c.x)));
    var var_3 = var_1;
    global2 = var_0.zy;
    return Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_vec3_f32(func_2(global3.b.x)).x, var_1.e)), vec2<u32>(var_2.x, ~(~select(u_input.e.x, global1.b.x, false))), vec4<u32>(var_3.b.x, countOneBits(~_wgslsmith_add_u32(var_1.c.x, 0u)), ~(~(~var_1.b.x)), 3874u), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-1000f))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-462f)) + _wgslsmith_div_f32(var_3.d, -1387f)));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1) -> vec4<u32> {
    var var_0 = arg_1;
    global0 = array<vec4<u32>, 17>();
    var var_1 = -1i;
    global0 = array<vec4<u32>, 17>();
    let var_2 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-162f, arg_1.d), vec2<f32>(arg_1.e, global2.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1625f, var_0.e))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, -847f) * vec2<f32>(arg_1.a, global3.a)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(138f, 955f))) - vec2<f32>(1f, _wgslsmith_f_op_f32(-global1.e)))))));
    return vec4<u32>(1906u, u_input.e.x, 1u, _wgslsmith_clamp_u32(arg_0.x, abs(firstTrailingBit(select(1u, arg_1.b.x, true))), _wgslsmith_clamp_u32(~11341u, abs(0u), arg_1.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(global1.d, vec2<u32>(76311u, _wgslsmith_dot_vec2_u32(u_input.e.zz, vec2<u32>(global3.c.x, ~6028u))), ~_wgslsmith_sub_vec4_u32(abs(~global3.c), func_4(~vec2<u32>(u_input.c, 24219u), func_1())), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1034f)) * 526f), global3.a);
    global3 = var_0;
    global1 = Struct_1(global1.a, _wgslsmith_mult_vec2_u32(vec2<u32>(~16345u >> (1u % 32u), ~(~0u)), vec2<u32>(global3.b.x, _wgslsmith_clamp_u32(_wgslsmith_add_u32(u_input.c, 1u), global3.b.x, global3.b.x))), ~var_0.c, global3.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a) + _wgslsmith_f_op_f32(-global3.a)));
    global0 = array<vec4<u32>, 17>();
    global0 = array<vec4<u32>, 17>();
    let var_1 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(~1i, _wgslsmith_div_i32(-firstLeadingBit(1i), ~4993i), 2147483647i), countOneBits(~_wgslsmith_add_vec3_i32(reverseBits(vec3<i32>(5293i, 21334i, 15534i)), -vec3<i32>(-2147483647i, -1i, 2410i))), var_0.c.x, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), _wgslsmith_sub_vec3_i32(vec3<i32>(~5433i, -2080i >> (global1.c.x % 32u), ~(-36296i)), ~vec3<i32>(-240i, -39378i, 17861i))));
}

