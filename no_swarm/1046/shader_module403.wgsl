struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: i32,
}

struct Struct_2 {
    a: bool,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 11>;

var<private> global1: array<Struct_1, 22>;

var<private> global2: array<vec2<f32>, 18>;

var<private> global3: vec4<u32> = vec4<u32>(56839u, 76581u, 38460u, 0u);

var<private> global4: array<Struct_2, 23> = array<Struct_2, 23>(Struct_2(false, vec2<i32>(27040i, 84732i)), Struct_2(false, vec2<i32>(0i, -25471i)), Struct_2(false, vec2<i32>(37453i, 44261i)), Struct_2(true, vec2<i32>(26227i, 1i)), Struct_2(true, vec2<i32>(12258i, 0i)), Struct_2(true, vec2<i32>(-1i, i32(-2147483648))), Struct_2(true, vec2<i32>(2147483647i, 2147483647i)), Struct_2(false, vec2<i32>(1i, 4227i)), Struct_2(true, vec2<i32>(39453i, -1i)), Struct_2(true, vec2<i32>(2147483647i, 50519i)), Struct_2(false, vec2<i32>(21193i, 4005i)), Struct_2(true, vec2<i32>(10225i, -44454i)), Struct_2(true, vec2<i32>(59119i, 23657i)), Struct_2(true, vec2<i32>(-61017i, -27275i)), Struct_2(true, vec2<i32>(2147483647i, 2147483647i)), Struct_2(true, vec2<i32>(0i, 15522i)), Struct_2(false, vec2<i32>(9715i, 2147483647i)), Struct_2(true, vec2<i32>(-10982i, 16906i)), Struct_2(true, vec2<i32>(2147483647i, -1i)), Struct_2(true, vec2<i32>(0i, 0i)), Struct_2(true, vec2<i32>(i32(-2147483648), 2147483647i)), Struct_2(false, vec2<i32>(-30306i, 2147483647i)), Struct_2(true, vec2<i32>(1i, i32(-2147483648))));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec4<u32>, arg_1: vec4<u32>, arg_2: Struct_1) -> u32 {
    var var_0 = arg_2.b;
    global4 = array<Struct_2, 23>();
    var var_1 = Struct_2(140f <= _wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, arg_0.x), 11u)], _wgslsmith_f_op_f32(round(1f)))), abs(firstTrailingBit(u_input.b)));
    var var_2 = Struct_2(arg_1.x != 4294967295u, -select(vec2<i32>(arg_2.c >> (arg_1.x % 32u), u_input.b.x), ~min(vec2<i32>(27i, -42698i), u_input.b), select(arg_2.b.yy, vec2<bool>(false, true), true)));
    var var_3 = Struct_2(true, vec2<i32>(-1i) * -select(var_2.b, _wgslsmith_div_vec2_i32(var_2.b, vec2<i32>(arg_2.c, 5846i)), var_1.a));
    return arg_1.x;
}

fn func_2(arg_0: Struct_1) -> vec3<i32> {
    global1 = array<Struct_1, 22>();
    var var_0 = vec4<u32>(global3.x >> (35115u % 32u), select(~(~(global3.x >> (4294967295u % 32u))), func_3(~max(vec4<u32>(global3.x, global3.x, 39223u, 24954u), vec4<u32>(u_input.a.x, 47776u, 4294967295u, 31155u)), ~(vec4<u32>(4294967295u, 0u, global3.x, 4294967295u) ^ vec4<u32>(33681u, 34917u, 40757u, 54271u)), Struct_1(_wgslsmith_f_op_f32(step(1000f, arg_0.a)), arg_0.b, arg_0.c)), arg_0.b.x), firstTrailingBit(global3.x) << (max(~(~global3.x), _wgslsmith_mult_u32(~global3.x, min(20793u, 52992u))) % 32u), max(_wgslsmith_dot_vec2_u32(vec2<u32>(global3.x, 0u), global3.zw), ~(~4294967295u)) >> (max(u_input.a.x, ~(u_input.a.x ^ 1u)) % 32u));
    global3 = vec4<u32>(u_input.a.x, 4294967295u, _wgslsmith_mult_u32(global3.x, 1u), var_0.x);
    var var_1 = vec4<u32>(reverseBits(u_input.a.x), var_0.x, ~20367u, ~_wgslsmith_mult_u32(u_input.a.x, abs(u_input.a.x))) & _wgslsmith_div_vec4_u32(vec4<u32>(global3.x, var_0.x, _wgslsmith_sub_u32(u_input.a.x >> (global3.x % 32u), _wgslsmith_sub_u32(59834u, u_input.a.x)), _wgslsmith_mult_u32(u_input.a.x, var_0.x)), firstTrailingBit(vec4<u32>(global3.x >> (0u % 32u), 44166u, _wgslsmith_add_u32(4294967295u, var_0.x), 1u)));
    global1 = array<Struct_1, 22>();
    return firstLeadingBit(~(~firstTrailingBit(vec3<i32>(-7043i, -16960i, arg_0.c))));
}

fn func_1(arg_0: f32) -> vec3<bool> {
    global3 = ~vec4<u32>(firstLeadingBit(1117u), global3.x, u_input.a.x, 59366u) | vec4<u32>(abs(1u), u_input.a.x, 1u, max(firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, global3.x), vec2<u32>(u_input.a.x, 1u))), 28965u));
    let var_0 = Struct_2(true, -vec2<i32>(15349i, u_input.b.x));
    global2 = array<vec2<f32>, 18>();
    var var_1 = _wgslsmith_sub_vec3_i32(~(-func_2(Struct_1(1136f, vec3<bool>(var_0.a, var_0.a, false), var_0.b.x))), _wgslsmith_mod_vec3_i32(abs(vec3<i32>(1i, u_input.b.x, firstTrailingBit(25102i))), ~(firstLeadingBit(vec3<i32>(var_0.b.x, -24186i, -1i)) | -vec3<i32>(-1i, 0i, 18307i))));
    var var_2 = true;
    return !(!vec3<bool>(!var_0.a, any(!vec4<bool>(false, var_0.a, var_0.a, var_0.a)), var_0.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !any(vec4<bool>(true, true, true, true));
    global1 = array<Struct_1, 22>();
    let var_1 = !any(select(select(select(vec3<bool>(true, var_0, var_0), vec3<bool>(false, var_0, var_0), var_0), vec3<bool>(var_0, var_0, var_0), var_0), func_1(_wgslsmith_f_op_f32(-1878f - global0[_wgslsmith_index_u32(u_input.a.x, 11u)])), vec3<bool>(true, true, true)));
    let var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 11u)]) - _wgslsmith_f_op_f32(floor(332f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 11u)])))), 207f)));
    let var_3 = 74590u;
    global1 = array<Struct_1, 22>();
    global2 = array<vec2<f32>, 18>();
    global0 = array<f32, 11>();
    var var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global2[_wgslsmith_index_u32(14687u, 18u)] + vec2<f32>(1054f, -652f))) + _wgslsmith_div_vec2_f32(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_3, 98338u), 18u)], global2[_wgslsmith_index_u32(~global3.x, 18u)])) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global2[_wgslsmith_index_u32(select(0u, 38386u, true), 18u)] + global2[_wgslsmith_index_u32(1u, 18u)]), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 11u)], -2366f) + global2[_wgslsmith_index_u32(var_3, 18u)]))));
    let x = u_input.a;
    s_output = StorageBuffer(~global3.wzx);
}

