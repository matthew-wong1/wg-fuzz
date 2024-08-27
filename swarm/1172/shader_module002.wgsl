struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: Struct_2,
    d: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 4>;

var<private> global1: vec4<i32> = vec4<i32>(2147483647i, 2147483647i, 1i, -27805i);

var<private> global2: array<i32, 9>;

var<private> global3: Struct_3;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2() -> vec4<bool> {
    let var_0 = global3.c.a;
    var var_1 = global3.c;
    var var_2 = var_1.b;
    global0 = array<vec4<bool>, 4>();
    var_1 = global3.c;
    return global0[_wgslsmith_index_u32(38090u, 4u)];
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    let var_0 = vec2<bool>(all(!select(select(vec2<bool>(true, arg_2.c), vec2<bool>(false, true), true), !vec2<bool>(arg_0, false), !arg_3.c)), false);
    var var_1 = Struct_1(vec4<u32>(~arg_2.a.x, arg_2.a.x, abs(8273u), firstLeadingBit(arg_1.b.b)), 1u, var_0.x, _wgslsmith_div_f32(1235f, _wgslsmith_f_op_f32(sign(-569f))));
    let var_2 = Struct_3(all(!(!vec4<bool>(var_1.c, true, true, true))), var_1.a.x, global3.c, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, ~_wgslsmith_dot_vec3_i32(vec3<i32>(-13707i, -16606i, -2147483647i), global1.wzw)), _wgslsmith_add_vec2_i32(~(global1.zx | global1.yx), _wgslsmith_mult_vec2_i32(-vec2<i32>(-46760i, -15760i), _wgslsmith_sub_vec2_i32(u_input.a.yy, u_input.a.yx)))));
    global3 = var_2;
    global0 = array<vec4<bool>, 4>();
    return global1.x;
}

fn func_1(arg_0: vec4<i32>) -> Struct_3 {
    var var_0 = func_3(any(func_2()), Struct_2(Struct_1(~global3.c.b.a, reverseBits(27339u), any(vec3<bool>(global3.c.b.c, false, true)), 889f), global3.c.b, max(-global2[_wgslsmith_index_u32(~global3.c.b.b, 9u)], global3.d)), global3.c.b, global3.c.b);
    var var_1 = Struct_2(global3.c.a, global3.c.b, 16595i);
    var_0 = global3.c.c;
    var_0 = 30400i;
    let var_2 = Struct_1(global3.c.a.a ^ var_1.a.a, ~firstTrailingBit(~1u), true, _wgslsmith_f_op_f32(trunc(var_1.b.d)));
    return Struct_3((var_1.a.c & any(vec2<bool>(global3.a, true))) || true, ~_wgslsmith_mult_u32(_wgslsmith_clamp_u32(0u, _wgslsmith_mod_u32(global3.c.a.a.x, var_1.a.a.x), global3.b), ~var_1.b.a.x), global3.c, reverseBits(~(var_1.c << (~119245u % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec2<bool>(global3.a, global3.c.a.c);
    global3 = func_1(countOneBits(_wgslsmith_div_vec4_i32(-vec4<i32>(global2[_wgslsmith_index_u32(46607u, 9u)], u_input.a.x, 2147483647i, -6109i), abs(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, 347i, -1i, global2[_wgslsmith_index_u32(4294967295u, 9u)]), vec4<i32>(55621i, 0i, -11040i, 0i))))));
    var var_1 = ~firstLeadingBit(vec2<u32>(9564u, firstLeadingBit(6352u)));
    let var_2 = func_1(~(vec4<i32>(-1i) * -(vec4<i32>(u_input.a.x, global3.d, global2[_wgslsmith_index_u32(1u, 9u)], u_input.a.x) << (vec4<u32>(var_1.x, 7815u, 0u, 1u) % vec4<u32>(32u))))).c.a;
    let var_3 = global1.x ^ abs(global3.d);
    var var_4 = _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(~reverseBits(var_2.a.yx), var_2.a.zz) | var_2.a.x, 46216u);
    var var_5 = global1.wzz;
    var_1 = var_2.a.wx;
    let x = u_input.a;
    s_output = StorageBuffer(~var_1.x ^ _wgslsmith_div_u32(global3.b, global3.b), global2[_wgslsmith_index_u32(min(0u, global3.b), 9u)]);
}

