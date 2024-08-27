struct Struct_1 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 1>;

var<private> global1: array<Struct_1, 11>;

var<private> global2: Struct_1 = Struct_1(vec2<u32>(125963u, 4863u));

var<private> global3: array<i32, 5> = array<i32, 5>(0i, 31263i, 1i, -1i, -9791i);

var<private> global4: vec2<i32>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> u32 {
    let var_0 = vec3<bool>(true, true, true);
    return global2.a.x;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: Struct_1) -> vec2<i32> {
    var var_0 = ~arg_1.zww;
    global3 = array<i32, 5>();
    let var_1 = vec4<i32>(-(2147483647i & (43581i >> (arg_3.a.x % 32u))) >> (~var_0.x % 32u), abs(-1i), global3[_wgslsmith_index_u32(_wgslsmith_div_u32((func_3(arg_3, Struct_1(arg_2.a), false) | ~arg_3.a.x) ^ arg_2.a.x, arg_2.a.x), 5u)], 33276i);
    var var_2 = Struct_1(_wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(~1766u, abs(global2.a.x)), reverseBits(vec2<u32>(arg_2.a.x, u_input.c.x))), ~(abs(vec2<u32>(4294967295u, arg_2.a.x)) >> (firstTrailingBit(global2.a) % vec2<u32>(32u)))));
    var var_3 = -375f;
    return countOneBits(_wgslsmith_mod_vec2_i32(~vec2<i32>(6436i, 2147483647i), ~(var_1.xw ^ vec2<i32>(global4.x, global4.x))) & _wgslsmith_clamp_vec2_i32(var_1.zw, firstTrailingBit(var_1.zz), select(~var_1.xy, var_1.yz ^ vec2<i32>(33546i, -1i), all(vec4<bool>(true, true, false, false)))));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec2<f32>, arg_2: vec2<i32>) -> u32 {
    var var_0 = Struct_1(_wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.a, abs(u_input.c.x)), global2.a));
    var var_1 = i32(-1i) * -1i;
    let var_2 = ~_wgslsmith_div_u32(_wgslsmith_add_u32(_wgslsmith_mod_u32(min(u_input.e.x, var_0.a.x), 1u), global2.a.x), max(1u, var_0.a.x));
    let var_3 = Struct_1(abs(~u_input.b.zz));
    let var_4 = true;
    return _wgslsmith_div_u32(~(~min(u_input.e.x, ~global2.a.x)), var_0.a.x);
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: vec2<i32>, arg_3: vec3<f32>) -> vec4<u32> {
    var var_0 = arg_3.zy;
    var var_1 = true;
    var var_2 = false & any(!vec2<bool>(true, arg_0 <= 12408i));
    let var_3 = _wgslsmith_f_op_f32(ceil(arg_3.x));
    var var_4 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, 59149u) << (~func_4(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)), true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(arg_3.xz, vec2<f32>(397f, var_3))) * _wgslsmith_div_vec2_f32(vec2<f32>(1258f, var_0.x), vec2<f32>(-971f, var_3))), min(-arg_2, func_2(Struct_1(global2.a), vec4<u32>(u_input.b.x, 7063u, 1u, global2.a.x), global1[_wgslsmith_index_u32(1u, 11u)], Struct_1(vec2<u32>(global2.a.x, global2.a.x))))) % 32u), 11u)];
    return ~firstLeadingBit(vec4<u32>(458u, func_4(vec2<bool>(true, true), vec2<f32>(1344f, var_3), vec2<i32>(-1i, u_input.d)), ~0u, 30248u << (global2.a.x % 32u)) << (abs(vec4<u32>(4294967295u, var_4.a.x, 48375u, 1u)) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_sub_vec4_u32(select(func_1(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, u_input.d, -3157i), vec3<i32>(0i, -18624i, u_input.d)), u_input.d, max(vec2<i32>(1i, 2147483647i), vec2<i32>(28064i, -1i)), _wgslsmith_f_op_vec3_f32(global0[_wgslsmith_index_u32(u_input.c.x, 1u)] * global0[_wgslsmith_index_u32(51146u, 1u)])), func_1(abs(global3[_wgslsmith_index_u32(global2.a.x, 5u)]), ~0i, firstTrailingBit(vec2<i32>(-28271i, -2147483647i)), vec3<f32>(-2255f, -1028f, 816f)), true), _wgslsmith_mult_vec4_u32(abs(reverseBits(vec4<u32>(0u, global2.a.x, global2.a.x, global2.a.x))), ~vec4<u32>(u_input.c.x, global2.a.x, 1u, u_input.a)));
    global4 = vec2<i32>(-u_input.d, 1i);
    global2 = Struct_1(abs(~(~global2.a)));
    global2 = Struct_1(select(var_0.ww, vec2<u32>(func_1(-1i, 1i, vec2<i32>(-2147483647i, global4.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(293f, -2292f, -195f) + vec3<f32>(322f, -113f, -1587f))).x, 0u), !vec2<bool>(select(false, true, true), true)));
    let var_1 = firstTrailingBit(_wgslsmith_mult_i32(~u_input.d, 38333i));
    global0 = array<vec3<f32>, 1>();
    var var_2 = global1[_wgslsmith_index_u32(global2.a.x, 11u)];
    var var_3 = global1[_wgslsmith_index_u32(abs(global2.a.x ^ var_2.a.x), 11u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-249f, 281f) - _wgslsmith_f_op_f32(-1000f * -260f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1079f - 1554f)), _wgslsmith_f_op_f32(f32(-1f) * -174f))), firstTrailingBit(_wgslsmith_dot_vec3_i32(~_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.d, -36442i, -2147483647i), vec3<i32>(var_1, u_input.d, u_input.d)), min(max(vec3<i32>(-2147483647i, global3[_wgslsmith_index_u32(45154u, 5u)], global3[_wgslsmith_index_u32(var_3.a.x, 5u)]), vec3<i32>(var_1, 0i, var_1)), reverseBits(vec3<i32>(2147483647i, global4.x, 6573i))))), max(-2147483647i, countOneBits(u_input.d)), _wgslsmith_f_op_vec3_f32(global0[_wgslsmith_index_u32(firstLeadingBit(~var_3.a.x) | ~_wgslsmith_mult_u32(u_input.e.x, u_input.e.x), 1u)] * global0[_wgslsmith_index_u32(min(_wgslsmith_mult_u32(31810u, var_2.a.x), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 103033u), _wgslsmith_clamp_vec2_u32(u_input.e, var_3.a, var_2.a))), 1u)]));
}

