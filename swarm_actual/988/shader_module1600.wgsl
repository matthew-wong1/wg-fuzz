struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: vec2<bool>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec4<f32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 36344u;

var<private> global1: array<vec2<i32>, 5> = array<vec2<i32>, 5>(vec2<i32>(0i, 0i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(2147483647i, -1i), vec2<i32>(1i, 1i));

var<private> global2: array<vec4<f32>, 10>;

var<private> global3: Struct_1;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    let var_0 = vec3<u32>(arg_2.a << (arg_1.a % 32u), abs(firstLeadingBit(abs(51395u))), 20468u);
    var var_1 = reverseBits(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(-(global1[_wgslsmith_index_u32(2407u, 5u)] >> (var_0.xx % vec2<u32>(32u))), global1[_wgslsmith_index_u32(~arg_2.a, 5u)], vec2<i32>(select(u_input.b, 0i, false), max(global3.d.x, 1i))), ~select(global3.d.zz, vec2<i32>(-10341i, 0i), vec2<bool>(arg_2.c.x, false)) ^ (global1[_wgslsmith_index_u32(arg_0 << (arg_1.a % 32u), 5u)] >> (vec2<u32>(2477u, 10486u) % vec2<u32>(32u)))));
    var var_2 = Struct_1(abs(global3.a), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(489f - 1878f), -235f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + global3.b.x))), _wgslsmith_f_op_f32(min(233f, _wgslsmith_f_op_f32(sign(arg_1.b.x)))), 215f), global3.c, _wgslsmith_add_vec4_i32(-countOneBits(arg_1.d) | (~vec4<i32>(-57160i, global3.d.x, 1i, arg_2.d.x) << (vec4<u32>(arg_1.a, 1u, arg_0, u_input.c.x) % vec4<u32>(32u))), -vec4<i32>(2147483647i, -2147483647i, arg_2.d.x, 1i) >> (u_input.c % vec4<u32>(32u))));
    var var_3 = 1u;
    let var_4 = !vec3<bool>(any(vec3<bool>(!global3.c.x, !arg_1.c.x, arg_2.c.x)), true, select(arg_2.c.x, false, !(!arg_1.c.x)));
    return global3.b.x;
}

fn func_2() -> Struct_1 {
    global3 = Struct_1(global3.a, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(global3.b.x, 1012f)))), _wgslsmith_div_f32(-978f, global3.b.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.b.x), _wgslsmith_f_op_f32(func_3(4514u, Struct_1(1u, global3.b, vec2<bool>(global3.c.x, global3.c.x), global3.d), Struct_1(59648u, global3.b, vec2<bool>(global3.c.x, global3.c.x), vec4<i32>(1i, u_input.b, u_input.b, global3.d.x))))) * -312f)), !vec2<bool>(any(vec4<bool>(false, global3.c.x, global3.c.x, global3.c.x)), global3.c.x), vec4<i32>(2147483647i, 25443i, global3.d.x, ~u_input.b));
    let var_0 = i32(-1i) * -42551i;
    global2 = array<vec4<f32>, 10>();
    var var_1 = ~(~vec4<u32>(_wgslsmith_mult_u32(~global3.a, _wgslsmith_sub_u32(global3.a, global3.a)), ~u_input.c.x, ~1u, global3.a));
    global1 = array<vec2<i32>, 5>();
    return Struct_1(abs(1u), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.b.x, -829f, -1270f)) * vec3<f32>(_wgslsmith_f_op_f32(588f + 553f), _wgslsmith_f_op_f32(round(global3.b.x)), _wgslsmith_f_op_f32(-1338f - global3.b.x))))), select(global3.c, select(vec2<bool>(true, !global3.c.x), vec2<bool>(any(vec3<bool>(global3.c.x, false, false)), true), global3.c), select(global3.c, global3.c, !(!global3.c))), _wgslsmith_mod_vec4_i32(countOneBits(vec4<i32>(var_0, -2147483647i, 52755i, global3.d.x)), global3.d) ^ vec4<i32>(~global3.d.x, u_input.b, _wgslsmith_div_i32(-u_input.b, _wgslsmith_mult_i32(var_0, 0i)), -48627i));
}

fn func_1(arg_0: vec2<u32>) -> vec2<u32> {
    global0 = _wgslsmith_clamp_u32(arg_0.x, ~(~0u), 1u) >> (_wgslsmith_dot_vec4_u32(u_input.c, u_input.c) % 32u);
    var var_0 = vec2<i32>(-1i, (global3.d.x ^ -1i) ^ -(~(-global3.d.x)));
    let var_1 = func_2();
    var_0 = _wgslsmith_mod_vec2_i32(global3.d.wz, global1[_wgslsmith_index_u32(var_1.a, 5u)]);
    var var_2 = func_2();
    return firstTrailingBit(vec2<u32>(58797u, ~0u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = reverseBits(_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(1u, 1u)), func_1(vec2<u32>(reverseBits(4294967295u), ~18910u))));
    let var_0 = func_2();
    let var_1 = firstTrailingBit(firstTrailingBit(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, 1i, 0i), _wgslsmith_add_vec3_i32(vec3<i32>(var_0.d.x, global3.d.x, 0i), vec3<i32>(u_input.b, global3.d.x, global3.d.x) & global3.d.wwz))));
    var var_2 = abs(u_input.c);
    global1 = array<vec2<i32>, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.b.xy), _wgslsmith_f_op_vec2_f32(-var_0.b.yx)), var_0.d.x, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(566f - _wgslsmith_f_op_f32(ceil(1382f))), var_0.b.x, _wgslsmith_f_op_f32(-3780f * global3.b.x), -131f))), abs(firstTrailingBit(u_input.c)));
}

