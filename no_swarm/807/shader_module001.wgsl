struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec2<f32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: u32,
    c: i32,
    d: i32,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: i32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 12>;

var<private> global1: array<vec3<u32>, 24> = array<vec3<u32>, 24>(vec3<u32>(13029u, 29404u, 1u), vec3<u32>(27510u, 0u, 55604u), vec3<u32>(10744u, 0u, 47617u), vec3<u32>(4294967295u, 1u, 49731u), vec3<u32>(59131u, 34720u, 0u), vec3<u32>(61627u, 3772u, 4294967295u), vec3<u32>(1u, 4294967295u, 14981u), vec3<u32>(0u, 0u, 4294967295u), vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(138995u, 37707u, 63042u), vec3<u32>(4294967295u, 17067u, 76021u), vec3<u32>(2505u, 53341u, 1u), vec3<u32>(0u, 4294967295u, 71617u), vec3<u32>(5995u, 9971u, 0u), vec3<u32>(5720u, 56334u, 10633u), vec3<u32>(1u, 0u, 1623u), vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(4294967295u, 18798u, 22466u), vec3<u32>(16405u, 46543u, 29931u), vec3<u32>(95761u, 35875u, 1u), vec3<u32>(12411u, 0u, 0u), vec3<u32>(19665u, 0u, 1u), vec3<u32>(70812u, 1u, 1u));

var<private> global2: array<vec3<i32>, 23>;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3() -> f32 {
    let var_0 = Struct_1(_wgslsmith_mod_vec3_i32(abs(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(select(u_input.b, 1u, true), 87955u), 23u)]), _wgslsmith_add_vec3_i32(abs(vec3<i32>(-2147483647i, u_input.a, u_input.a)), vec3<i32>(1i, u_input.a, 2147483647i) ^ vec3<i32>(u_input.a, u_input.a, u_input.a)) << (global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~u_input.b, _wgslsmith_add_u32(21240u, u_input.c.x)), 24u)] % vec3<u32>(32u))));
    return -380f;
}

fn func_2() -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -234f) - _wgslsmith_f_op_f32(trunc(-705f))), 1373f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-446f * -285f))) * vec3<f32>(-1354f, _wgslsmith_f_op_f32(func_3()), 358f)));
    var var_1 = vec4<i32>(-2147483647i, 1i, -u_input.a, _wgslsmith_dot_vec2_i32(abs(~vec2<i32>(41749i, u_input.a) | (vec2<i32>(u_input.a, 0i) & vec2<i32>(-2147483647i, -2147483647i))), abs(-vec2<i32>(u_input.a, u_input.a))));
    var var_2 = Struct_2(Struct_1(select(min(vec3<i32>(0i, u_input.a, 2147483647i) >> (vec3<u32>(1u, u_input.c.x, 0u) % vec3<u32>(32u)), vec3<i32>(1i, 2147483647i, 52830i)), global2[_wgslsmith_index_u32(~4294967295u, 23u)] | -vec3<i32>(u_input.a, 0i, -2910i), true)));
    global1 = array<vec3<u32>, 24>();
    var var_3 = 755f;
    return vec3<i32>(firstLeadingBit(_wgslsmith_dot_vec3_i32(~var_1.wwy, var_2.a.a)), _wgslsmith_add_i32(-_wgslsmith_div_i32(firstTrailingBit(var_1.x), u_input.a >> (3872u % 32u)), ~var_1.x), abs(u_input.a));
}

fn func_1(arg_0: vec4<bool>, arg_1: u32, arg_2: bool) -> vec2<u32> {
    let var_0 = u_input.c.x;
    let var_1 = arg_2;
    global1 = array<vec3<u32>, 24>();
    var var_2 = vec3<i32>(-u_input.a, u_input.a, ~(-_wgslsmith_sub_i32(u_input.a, u_input.a))) | (func_2() ^ global2[_wgslsmith_index_u32(1u, 23u)]);
    var var_3 = all(!select(select(vec3<bool>(arg_0.x, arg_0.x, arg_0.x), !vec3<bool>(arg_0.x, arg_2, true), true || arg_0.x), vec3<bool>(true, true, true), vec3<bool>(true, false, true)));
    return u_input.c.yz;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(countOneBits(func_1(vec4<bool>(true, true, true, true), abs(4294967295u), true))) << (vec2<u32>(_wgslsmith_mod_u32(~u_input.b << (_wgslsmith_mult_u32(0u, u_input.b) % 32u), ~countOneBits(0u)), u_input.b) % vec2<u32>(32u));
    global1 = array<vec3<u32>, 24>();
    global0 = array<Struct_4, 12>();
    let var_1 = select(vec4<bool>(true || all(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(845f, 151f)), -222f) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2588f + -2266f)), min(u_input.a, u_input.a) > _wgslsmith_clamp_i32(-1i & u_input.a, _wgslsmith_div_i32(u_input.a, u_input.a), -2147483647i), true), select(vec4<bool>(all(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true))), all(vec4<bool>(false, false, true, true)), false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, select(true, true, true), all(vec4<bool>(true, true, false, false)))), true);
    let var_2 = Struct_2(Struct_1(global2[_wgslsmith_index_u32(firstTrailingBit(select(u_input.c.x, 4294967295u, !var_1.x)), 23u)]));
    global0 = array<Struct_4, 12>();
    global0 = array<Struct_4, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_div_i32(var_2.a.a.x, -9119i), var_2.a.a.x, ~var_2.a.a.x, ~18119i), -_wgslsmith_div_vec4_i32(vec4<i32>(-30586i, u_input.a, u_input.a, var_2.a.a.x), vec4<i32>(var_2.a.a.x, var_2.a.a.x, var_2.a.a.x, 0i))), firstLeadingBit(select(min(vec4<i32>(-42665i, u_input.a, u_input.a, var_2.a.a.x), vec4<i32>(-48556i, 0i, 0i, -1i)), ~vec4<i32>(-17252i, var_2.a.a.x, 1i, -26782i), true))), var_2.a.a.yy, u_input.a, ~select(reverseBits(-var_2.a.a.xx), abs(var_2.a.a.yx) << (~vec2<u32>(u_input.b, u_input.c.x) % vec2<u32>(32u)), true || var_1.x));
}

