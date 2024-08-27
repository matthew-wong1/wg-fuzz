struct Struct_1 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: bool,
    d: vec2<f32>,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 3>;

var<private> global1: Struct_2 = Struct_2(630u);

var<private> global2: array<u32, 25> = array<u32, 25>(0u, 64806u, 1u, 0u, 0u, 46346u, 0u, 19229u, 41329u, 0u, 0u, 0u, 21736u, 4294967295u, 4294967295u, 12160u, 50838u, 20735u, 45011u, 41946u, 0u, 17596u, 4294967295u, 0u, 1u);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: vec3<bool>) -> vec3<bool> {
    let var_0 = -2147483647i;
    global0 = array<Struct_2, 3>();
    global0 = array<Struct_2, 3>();
    var var_1 = select(!(!vec4<bool>(!arg_2.x, all(vec3<bool>(true, arg_2.x, false)), false || arg_2.x, false)), select(vec4<bool>(!arg_2.x, arg_2.x, all(vec4<bool>(arg_2.x, arg_2.x, false, arg_2.x)), all(select(vec3<bool>(arg_2.x, arg_2.x, true), vec3<bool>(arg_2.x, arg_2.x, arg_2.x), arg_2.x))), vec4<bool>(true, arg_2.x, !arg_2.x, any(vec2<bool>(arg_2.x, arg_2.x))), vec4<bool>(false, all(select(arg_2.xz, arg_2.xx, arg_2.x)), true, any(vec2<bool>(false, arg_2.x)))), _wgslsmith_mult_u32(countOneBits(global2[_wgslsmith_index_u32(global1.a, 25u)] | global2[_wgslsmith_index_u32(1u, 25u)]), global1.a) < ~abs(countOneBits(80995u)));
    var var_2 = ~var_0;
    return arg_2;
}

fn func_2(arg_0: f32, arg_1: vec4<i32>, arg_2: bool) -> vec3<bool> {
    return select(!(!func_3(arg_1.x, 1317i, vec3<bool>(arg_2, arg_2, arg_2))), vec3<bool>(func_3(~(~arg_1.x), arg_1.x, !(!vec3<bool>(arg_2, false, arg_2))).x, false || any(func_3(0i, u_input.a.x, vec3<bool>(arg_2, arg_2, arg_2)).xx), arg_2), any(select(vec3<bool>(true, true, 2254u < global2[_wgslsmith_index_u32(0u, 25u)]), vec3<bool>(false, arg_2, func_3(-7058i, u_input.a.x, vec3<bool>(false, true, arg_2)).x), arg_2)));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: i32) -> Struct_2 {
    let var_0 = !any(!vec4<bool>(select(true, false, true), arg_0.c, all(vec4<bool>(true, arg_1.x, false, false)), func_2(arg_0.d.x, vec4<i32>(arg_2, 2147483647i, u_input.a.x, 2147483647i), false).x));
    let var_1 = countOneBits(global2[_wgslsmith_index_u32(global1.a & 1u, 25u)]);
    let var_2 = Struct_1(vec4<u32>((firstLeadingBit(var_1) ^ 1u) << (53296u % 32u), var_1, reverseBits(~var_1), var_1), arg_0.b, false, arg_0.d);
    var var_3 = var_2;
    var_3 = Struct_1(_wgslsmith_add_vec4_u32(arg_0.a, vec4<u32>(max(arg_0.a.x, global1.a), arg_0.a.x ^ arg_0.a.x, arg_0.a.x, 4294967295u) | arg_0.a), var_2.b, true, _wgslsmith_f_op_vec2_f32(-var_3.d));
    return global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(~(~var_3.a.yw), firstLeadingBit(_wgslsmith_mult_vec2_u32(arg_0.a.ww, var_3.a.xz))), var_3.a.zx), 3u)];
}

fn func_5(arg_0: Struct_2) -> Struct_2 {
    global1 = func_4(Struct_1(_wgslsmith_add_vec4_u32(~countOneBits(vec4<u32>(arg_0.a, arg_0.a, 4294967295u, 123242u)), ~countOneBits(vec4<u32>(arg_0.a, global2[_wgslsmith_index_u32(20989u, 25u)], 3764u, global2[_wgslsmith_index_u32(global1.a, 25u)]))), select(vec3<bool>(1u <= global1.a, false, true), func_2(_wgslsmith_f_op_f32(-432f * 762f), abs(vec4<i32>(-1i, u_input.a.x, 1i, -16540i)), false), vec3<bool>(true, true, true)), !(!any(vec2<bool>(true, false))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-257f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-471f)) + 647f))), vec2<bool>(all(select(vec3<bool>(true, true, true), func_2(307f, vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, u_input.a.x), true), func_2(-639f, u_input.a, false))), true), ~(~1i));
    let var_0 = Struct_1(~(~(~vec4<u32>(2408u, 4294967295u, 1u, 0u))), func_2(-1535f, _wgslsmith_add_vec4_i32(countOneBits(max(vec4<i32>(1i, u_input.a.x, -2147483647i, -14672i), u_input.a)), vec4<i32>(countOneBits(u_input.a.x), u_input.a.x, 52974i, 1i)), true), any(select(vec2<bool>(439i <= u_input.a.x, true), vec2<bool>(func_3(u_input.a.x, u_input.a.x, vec3<bool>(true, false, true)).x, true), vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-946f, 1000f), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1248f, 2572f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(568f, 384f) + vec2<f32>(-767f, 149f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(174f, 1000f) + vec2<f32>(1983f, -841f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-124f, 1000f) - vec2<f32>(-694f, 1143f)))), vec2<bool>(false, true))));
    var var_1 = var_0;
    let var_2 = u_input.a.yyw;
    global2 = array<u32, 25>();
    return func_4(var_0, !var_0.b.xx, _wgslsmith_dot_vec3_i32(~select(var_2, _wgslsmith_add_vec3_i32(vec3<i32>(-40407i, u_input.a.x, 16434i), vec3<i32>(1i, -27275i, 1i)), func_3(u_input.a.x, u_input.a.x, vec3<bool>(var_0.c, var_1.c, true)).x), _wgslsmith_mod_vec3_i32(var_2, vec3<i32>(var_2.x, -62457i >> (var_0.a.x % 32u), _wgslsmith_dot_vec3_i32(u_input.a.zwz, u_input.a.wxz)))));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: i32) -> u32 {
    var var_0 = vec3<i32>(u_input.a.x, u_input.a.x, _wgslsmith_dot_vec2_i32(-u_input.a.xw, u_input.a.zw));
    var var_1 = func_5(func_4(Struct_1(vec4<u32>(global2[_wgslsmith_index_u32(0u, 25u)], ~arg_1.x, global2[_wgslsmith_index_u32(52341u, 25u)], ~10446u), func_2(_wgslsmith_f_op_f32(-arg_0.d.x), ~vec4<i32>(u_input.a.x, 32242i, u_input.a.x, -26333i), arg_0.d.x >= arg_0.d.x), true, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -955f), _wgslsmith_f_op_f32(arg_0.d.x + 161f))), !(!vec2<bool>(arg_0.b.x, true)), reverseBits(0i)));
    var var_2 = Struct_1(min(arg_0.a, vec4<u32>(var_1.a, global1.a, _wgslsmith_dot_vec2_u32(arg_1.xz, ~arg_0.a.wx), 1u)), arg_0.b, all(vec3<bool>(true, false, _wgslsmith_dot_vec2_i32(var_0.zz, var_0.xz) < -40357i)), arg_0.d);
    let var_3 = vec2<bool>(true, true);
    global1 = global0[_wgslsmith_index_u32(~1u, 3u)];
    return 50774u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(106f - _wgslsmith_div_f32(-156f, -715f))));
    global1 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32(82353u, global2[_wgslsmith_index_u32(0u, 25u)]), _wgslsmith_sub_u32(global1.a, func_1(Struct_1(vec4<u32>(0u, 24149u, global2[_wgslsmith_index_u32(0u, 25u)], 2249u), vec3<bool>(true, true, true), false, _wgslsmith_div_vec2_f32(vec2<f32>(var_0, var_0), vec2<f32>(1096f, var_0))), ~_wgslsmith_mod_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(54315u, 25u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1.a, 25u)], 25u)], 25u)], 25u)], 25u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(88955u, 25u)], 25u)]), vec3<u32>(8029u, global1.a, global2[_wgslsmith_index_u32(1u, 25u)])), u_input.a.x))), 3u)];
    var var_1 = global0[_wgslsmith_index_u32(countOneBits(24022u), 3u)];
    var var_2 = global1.a;
    global0 = array<Struct_2, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(~var_1.a);
}

