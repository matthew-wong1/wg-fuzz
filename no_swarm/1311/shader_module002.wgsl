struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: f32,
    c: Struct_1,
    d: Struct_2,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<Struct_1, 17>;

var<private> global2: array<i32, 20> = array<i32, 20>(-1i, -29495i, -37638i, 2147483647i, 1i, 66696i, -58433i, 1i, -1i, -563i, 0i, -7578i, i32(-2147483648), 1i, -4134i, 35191i, 2147483647i, -1i, 10017i, -33182i);

var<private> global3: vec2<u32>;

var<private> global4: Struct_3 = Struct_3(vec2<u32>(4294967295u, 0u), 147f, Struct_1(vec3<f32>(1000f, -336f, -153f), -297f, 2147483647i, 892f), Struct_2(Struct_1(vec3<f32>(-743f, 907f, 1599f), 720f, -1i, -305f)), vec4<u32>(4294967295u, 0u, 51526u, 3549u));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
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

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1) -> bool {
    var var_0 = global4.e;
    global4 = Struct_3(_wgslsmith_mult_vec2_u32(global4.a, _wgslsmith_sub_vec2_u32(vec2<u32>(global3.x, _wgslsmith_add_u32(arg_0.e.x, var_0.x)), ~select(vec2<u32>(4294967295u, 52227u), global4.e.yx, vec2<bool>(true, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.d.a.a.x)), Struct_1(_wgslsmith_f_op_vec3_f32(-global4.c.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.d.a.b))), ~(~(-12341i)) | ~(-arg_1.c), _wgslsmith_f_op_f32(arg_1.b * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global4.d.a.b))))), global4.d, abs(global4.e));
    return all(!(!vec4<bool>(false, true, false, select(true, false, false))));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec3<f32>, arg_2: Struct_3, arg_3: i32) -> vec4<f32> {
    global2 = array<i32, 20>();
    let var_0 = arg_2;
    let var_1 = !all(select(vec3<bool>(false, false, func_3(Struct_3(arg_2.a, -1757f, var_0.c, Struct_2(global4.c), var_0.e), arg_2.c)), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true))));
    global3 = reverseBits(reverseBits(~var_0.e.yy & ~var_0.e.yw)) >> (arg_2.e.zx % vec2<u32>(32u));
    let var_2 = select(vec4<bool>(true, -716f == _wgslsmith_f_op_f32(-var_0.c.b), all(!(!vec4<bool>(false, var_1, false, false))), !(var_0.a.x <= arg_2.a.x) || any(select(vec3<bool>(var_1, true, true), vec3<bool>(true, var_1, true), vec3<bool>(true, false, true)))), select(!vec4<bool>(true, -288f <= arg_2.d.a.d, true, all(vec3<bool>(var_1, var_1, false))), vec4<bool>(var_0.c.d != -1254f, var_1 == true, _wgslsmith_f_op_f32(-arg_2.c.b) == _wgslsmith_f_op_f32(step(var_0.d.a.b, arg_2.d.a.a.x)), true), vec4<bool>(all(vec2<bool>(var_1, var_1)) || var_1, !var_1, !(!var_1), true)), var_1);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-666f, -511f, arg_1.x, arg_1.x))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1502f, arg_1.x, 359f, var_0.c.a.x) - vec4<f32>(arg_2.d.a.d, -230f, var_0.b, -1783f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, 1120f, arg_1.x, -258f)))))));
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: bool, arg_3: vec4<i32>) -> Struct_3 {
    var var_0 = global4.d;
    var var_1 = global4.e;
    global2 = array<i32, 20>();
    let var_2 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.a.a.x, -1000f, 910f, 200f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(vec4<i32>(var_0.a.c, 0i, -74224i, -4025i) ^ arg_3, _wgslsmith_f_op_vec3_f32(global4.d.a.a + vec3<f32>(var_0.a.b, -1809f, 720f)), Struct_3(vec2<u32>(17958u, global4.a.x), var_0.a.b, arg_0, Struct_2(Struct_1(var_0.a.a, 531f, -1i, var_0.a.d)), global4.e), -1i & global2[_wgslsmith_index_u32(1u, 20u)])) + vec4<f32>(_wgslsmith_div_f32(var_0.a.d, var_0.a.b), _wgslsmith_div_f32(1028f, -2004f), _wgslsmith_f_op_f32(f32(-1f) * -1932f), arg_0.d)), false))));
    global3 = countOneBits(abs(abs(~(var_1.xz & vec2<u32>(global3.x, 18497u)))));
    return Struct_3(_wgslsmith_div_vec2_u32(~vec2<u32>(~17412u, global3.x), global4.e.wx), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(140f, _wgslsmith_f_op_f32(-var_0.a.a.x))) * 1252f), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.a.a) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global4.c.d, 883f, var_0.a.a.x), var_0.a.a, vec3<bool>(false, arg_2, arg_2))), vec3<f32>(-905f, global4.c.b, global4.c.b))), _wgslsmith_f_op_f32(f32(-1f) * -222f), -(2824i >> (var_1.x % 32u)), 1110f), Struct_2(global4.d.a), min(max(vec4<u32>(~4294967295u, 0u, 1u, abs(global3.x)), countOneBits(global4.e)), firstLeadingBit(~(~global4.e))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1) -> Struct_3 {
    global0 = false;
    let var_0 = vec3<i32>(_wgslsmith_div_i32(~(-12562i), arg_0.d.a.c), min(~(~arg_1.c), _wgslsmith_dot_vec3_i32(reverseBits(-vec3<i32>(arg_1.c, 1i, global4.d.a.c)), -vec3<i32>(-4789i, global4.c.c, -1i) << (vec3<u32>(global4.a.x, global3.x, u_input.a) % vec3<u32>(32u)))), -(i32(-1i) * -2147483647i));
    var var_1 = !vec4<bool>(true, all(vec2<bool>(true, true)) & true, _wgslsmith_dot_vec2_u32(select(vec2<u32>(87972u, global3.x), vec2<u32>(global4.a.x, arg_0.e.x), vec2<bool>(false, true)), select(global4.a, arg_0.e.zz, false)) >= 1u, true & any(vec2<bool>(true, true)));
    let var_2 = false;
    var var_3 = _wgslsmith_mod_i32(_wgslsmith_add_i32(arg_0.c.c, 1i | max(var_0.x, arg_0.c.c)), var_0.x) & global4.c.c;
    return Struct_3(~min(vec2<u32>(~global4.e.x, abs(global3.x)), vec2<u32>(0u, 4294967295u | global4.e.x)), _wgslsmith_f_op_f32(-arg_1.d), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global3.x | min(55392u, global4.a.x), ~0u, 0u, select(4294967295u, 0u, true)), arg_0.e), 17u)], global4.d, vec4<u32>(min(global4.a.x, firstLeadingBit(12492u)), min(~1u, global3.x), ~arg_0.e.x, u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<i32, 20>();
    let var_0 = _wgslsmith_f_op_f32(-global4.d.a.a.x);
    var var_1 = func_4(func_1(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global4.c.b, -798f, var_0), global4.c.a, vec3<bool>(false, true, false)))), global4.d.a.a.x, firstTrailingBit(i32(-1i) * -1i), global4.d.a.a.x), firstTrailingBit(0i), true, select(firstTrailingBit(vec4<i32>(global4.c.c, 0i, global4.d.a.c, global4.c.c)), vec4<i32>(-2147483647i, min(global4.c.c, 2147483647i), 11925i, _wgslsmith_dot_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(global3.x, 20u)], 14601i), vec2<i32>(global4.c.c, global2[_wgslsmith_index_u32(4294967295u, 20u)]))), any(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true))))), func_1(global4.d.a, -5377i, false, reverseBits(vec4<i32>(global2[_wgslsmith_index_u32(0u, 20u)] & -31574i, 2147483647i, firstLeadingBit(global4.d.a.c), global2[_wgslsmith_index_u32(4294967295u, 20u)]))).c);
    let var_2 = _wgslsmith_dot_vec4_u32(vec4<u32>(~(~_wgslsmith_dot_vec4_u32(var_1.e, vec4<u32>(0u, 4294967295u, 87392u, 14296u))), ~global3.x, 4294967295u, ~_wgslsmith_add_u32(4294967295u, ~global4.a.x)), func_1(var_1.d.a, abs(global4.c.c) << (1u % 32u), true, vec4<i32>(1i, 1i, ~_wgslsmith_mult_i32(var_1.d.a.c, -1i), countOneBits(-2147483647i))).e);
    let var_3 = var_1.d.a.c;
    global4 = Struct_3(~(max(vec2<u32>(57679u, var_1.a.x), vec2<u32>(u_input.a, 4135u)) ^ global4.e.wy) & _wgslsmith_add_vec2_u32(~var_1.e.wy << (func_4(Struct_3(vec2<u32>(44186u, 63739u), var_1.c.d, var_1.d.a, Struct_2(Struct_1(var_1.c.a, -2136f, 1i, 2594f)), var_1.e), Struct_1(vec3<f32>(var_1.c.b, global4.c.b, var_1.b), var_0, global4.d.a.c, -249f)).a % vec2<u32>(32u)), vec2<u32>(~global3.x, var_2)), 1000f, global4.d.a, func_1(global4.c, -13503i, false, _wgslsmith_sub_vec4_i32(~firstTrailingBit(vec4<i32>(global2[_wgslsmith_index_u32(var_1.a.x, 20u)], global2[_wgslsmith_index_u32(global3.x, 20u)], var_1.c.c, -112i)), vec4<i32>(3955i, -2147483647i << (var_2 % 32u), min(var_1.c.c, global2[_wgslsmith_index_u32(1u, 20u)]), global2[_wgslsmith_index_u32(1u & var_1.a.x, 20u)]))).d, ~select(_wgslsmith_div_vec4_u32(vec4<u32>(global3.x, 60750u, var_2, var_2), min(global4.e, global4.e)), reverseBits(~var_1.e), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), true)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0, var_2);
}

