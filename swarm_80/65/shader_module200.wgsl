struct Struct_1 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: u32,
    d: vec3<u32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: i32,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: vec3<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 19>;

var<private> global1: Struct_3;

var<private> global2: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(vec2<i32>(26138i, 2147483647i), vec2<f32>(-325f, 772f), 0u, vec3<u32>(30464u, 0u, 33562u), true), Struct_1(vec2<i32>(-5464i, -54977i), vec2<f32>(904f, 393f), 1u, vec3<u32>(1458u, 0u, 1u), true), Struct_1(vec2<i32>(i32(-2147483648), -40535i), vec2<f32>(-1000f, -1527f), 60223u, vec3<u32>(1u, 4294967295u, 1u), false), Struct_1(vec2<i32>(0i, 54796i), vec2<f32>(-117f, 241f), 1u, vec3<u32>(36152u, 1u, 1u), true), Struct_1(vec2<i32>(-1i, -34866i), vec2<f32>(-707f, -554f), 0u, vec3<u32>(132358u, 4294967295u, 4294967295u), false), Struct_1(vec2<i32>(2147483647i, 17596i), vec2<f32>(1000f, -411f), 0u, vec3<u32>(13235u, 17460u, 0u), true), Struct_1(vec2<i32>(-13603i, i32(-2147483648)), vec2<f32>(175f, -1661f), 4294967295u, vec3<u32>(0u, 6451u, 209u), true), Struct_1(vec2<i32>(-23542i, 277i), vec2<f32>(-434f, 1246f), 11082u, vec3<u32>(4294967295u, 20329u, 6698u), false), Struct_1(vec2<i32>(2147483647i, 14229i), vec2<f32>(1110f, 717f), 4294967295u, vec3<u32>(4294967295u, 1018u, 9648u), false), Struct_1(vec2<i32>(1i, -1i), vec2<f32>(-1000f, 620f), 4294967295u, vec3<u32>(13886u, 43126u, 39850u), false), Struct_1(vec2<i32>(55450i, 69023i), vec2<f32>(126f, -1337f), 18885u, vec3<u32>(0u, 3382u, 4294967295u), false), Struct_1(vec2<i32>(2110i, 1i), vec2<f32>(-1711f, -1000f), 9204u, vec3<u32>(4294967295u, 4294967295u, 0u), false), Struct_1(vec2<i32>(20315i, 98460i), vec2<f32>(-1043f, 1000f), 15547u, vec3<u32>(21790u, 4294967295u, 0u), false), Struct_1(vec2<i32>(-749i, -46859i), vec2<f32>(-2015f, 142f), 1u, vec3<u32>(72420u, 17127u, 1u), false));

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_2) -> vec4<i32> {
    global0 = array<vec3<bool>, 19>();
    var var_0 = vec3<bool>(all(vec4<bool>(true, arg_1.c == 2147483647i, false, arg_1.a.e)) & (4294967295u < arg_1.a.c), any(!vec3<bool>(!arg_1.a.e, !arg_1.a.e, all(vec3<bool>(true, arg_1.a.e, true)))), all(vec3<bool>(select(true, true, global1.b.a.e), global1.b.a.e, u_input.a >= 1u)));
    let var_1 = -(~vec3<i32>(arg_0.x, _wgslsmith_mod_i32(-12183i, -arg_0.x), -19483i));
    var var_2 = vec4<bool>(!all(select(select(vec4<bool>(global1.b.a.e, true, global1.b.a.e, arg_1.a.e), vec4<bool>(global1.b.a.e, false, false, var_0.x), true), !vec4<bool>(arg_1.a.e, false, global1.b.a.e, global1.b.a.e), !vec4<bool>(arg_1.a.e, true, false, global1.b.a.e))), false, select(true, !(arg_1.a.e & global1.b.a.e), any(var_0.xz)), global1.b.a.e);
    let var_3 = select(!select(vec3<bool>(any(vec3<bool>(true, true, false)), true, all(vec3<bool>(arg_1.a.e, global1.b.a.e, false))), select(global0[_wgslsmith_index_u32(u_input.a, 19u)], select(global0[_wgslsmith_index_u32(global1.b.a.c, 19u)], vec3<bool>(false, false, global1.b.a.e), vec3<bool>(true, true, false)), select(var_2.zyz, global0[_wgslsmith_index_u32(4294967295u, 19u)], vec3<bool>(arg_1.a.e, false, var_2.x))), select(!var_2.xzz, vec3<bool>(var_0.x, global1.b.a.e, true), vec3<bool>(arg_1.a.e, var_2.x, var_0.x))), !(!global0[_wgslsmith_index_u32(35987u, 19u)]), vec3<bool>(var_0.x, true, false));
    return u_input.c;
}

fn func_2(arg_0: vec2<u32>) -> vec4<i32> {
    let var_0 = vec3<u32>(global1.b.a.c, abs(~global1.b.a.d.x), reverseBits(abs(select(u_input.a, ~13953u, u_input.c.x == 38933i))));
    global0 = array<vec3<bool>, 19>();
    let var_1 = _wgslsmith_div_vec2_i32(-u_input.c.xy, _wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(firstLeadingBit(global1.b.a.a), vec2<i32>(24528i ^ u_input.c.x, _wgslsmith_mult_i32(-1i, global1.b.c))), global1.b.a.a));
    global0 = array<vec3<bool>, 19>();
    global2 = array<Struct_1, 14>();
    return ~_wgslsmith_clamp_vec4_i32(func_3(vec2<i32>(2179i, -40958i), Struct_2(global1.b.a, arg_0.x, global1.a & 0i)), ~u_input.c, _wgslsmith_sub_vec4_i32(u_input.c, abs(u_input.c)));
}

fn func_1(arg_0: u32, arg_1: Struct_2, arg_2: vec2<f32>) -> Struct_1 {
    var var_0 = 320f;
    let var_1 = _wgslsmith_div_vec4_i32(~vec4<i32>(-3893i, u_input.c.x, ~(~global1.a), -27169i), ~abs(func_2(~vec2<u32>(4294967295u, 58102u))));
    let var_2 = vec2<i32>(-1i) * -select(var_1.zx, _wgslsmith_mod_vec2_i32(countOneBits(vec2<i32>(var_1.x, 0i)), var_1.ww), vec2<bool>(arg_1.a.e, global1.b.a.e));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1343f, arg_2.x))));
    let var_3 = !(!vec2<bool>(global1.b.a.e, all(select(vec2<bool>(true, global1.b.a.e), vec2<bool>(arg_1.a.e, true), arg_1.a.e))));
    return Struct_1(vec2<i32>(select(var_1.x >> (10101u % 32u), func_2(reverseBits(u_input.b)).x, !global1.b.a.e), _wgslsmith_dot_vec2_i32(-u_input.c.zw, func_2(~vec2<u32>(4294967295u, 61960u)).zy)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_2.x, 541f), arg_2)), arg_1.a.b))), ~(global1.b.a.c & abs(~arg_0)), arg_1.a.d, any(select(select(vec4<bool>(false, var_3.x, false, global1.b.a.e), vec4<bool>(true, arg_1.a.e, global1.b.a.e, arg_1.a.e), any(vec4<bool>(true, false, true, false))), select(!vec4<bool>(true, false, true, arg_1.a.e), select(vec4<bool>(true, false, global1.b.a.e, arg_1.a.e), vec4<bool>(true, global1.b.a.e, var_3.x, var_3.x), vec4<bool>(true, arg_1.a.e, var_3.x, true)), all(global0[_wgslsmith_index_u32(29964u, 19u)])), !select(vec4<bool>(true, arg_1.a.e, var_3.x, false), vec4<bool>(false, global1.b.a.e, false, false), vec4<bool>(true, true, false, var_3.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.b;
    var_0 = Struct_2(func_1(0u, global1.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b.a.b.x, global1.b.a.b.x))) + var_0.a.b)), ~16946u | (var_0.a.d.x | _wgslsmith_dot_vec4_u32(vec4<u32>(global1.b.b, 27007u, var_0.b, 4294967295u), vec4<u32>(var_0.a.c, u_input.a, 72436u, var_0.b) & vec4<u32>(73546u, global1.b.a.c, global1.b.a.c, 17280u))), ~11000i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-global1.b.a.b.x), _wgslsmith_add_i32(u_input.c.x, u_input.c.x), 0i, vec3<f32>(global1.b.a.b.x, _wgslsmith_f_op_f32(step(var_0.a.b.x, 425f)), 2238f), vec3<u32>(~u_input.b.x, 1u, ~(var_0.a.c & ~var_0.a.d.x)));
}

