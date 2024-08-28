struct Struct_1 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: f32,
    d: u32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 30> = array<i32, 30>(-1i, -18315i, 8028i, i32(-2147483648), 40580i, -58473i, -54001i, 2147483647i, 1i, 24468i, 1i, -8560i, i32(-2147483648), i32(-2147483648), 0i, 2147483647i, -75005i, -3875i, 0i, -3404i, 1i, -4820i, 47640i, -45205i, 1i, 76718i, -4619i, 11954i, 1i, -20281i);

var<private> global1: Struct_2;

var<private> global2: array<i32, 1>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec2<i32>) -> vec2<u32> {
    global2 = array<i32, 1>();
    var var_0 = Struct_1(~_wgslsmith_div_vec4_u32(~global1.b.a, firstLeadingBit(vec4<u32>(global1.b.a.x, global1.b.a.x, global1.b.a.x, global1.b.a.x))), select(vec3<bool>((global1.b.b.x | true) || any(global1.e.zyw), all(select(vec3<bool>(global1.e.x, false, global1.b.b.x), global1.e.zwz, vec3<bool>(global1.e.x, true, global1.e.x))), all(select(vec2<bool>(global1.e.x, global1.e.x), global1.b.b.xz, true))), select(!global1.e.yzw, global1.b.b, true), select(!vec3<bool>(global1.b.b.x, true, global1.b.b.x), select(vec3<bool>(global1.b.b.x, global1.e.x, true), select(global1.e.wwz, global1.e.xzw, vec3<bool>(false, global1.b.b.x, global1.b.b.x)), true), all(!vec2<bool>(false, global1.e.x)))), -_wgslsmith_dot_vec2_i32(countOneBits(_wgslsmith_add_vec2_i32(vec2<i32>(0i, global1.a.x), vec2<i32>(243i, 1i))), select(global1.a, abs(arg_0), true)));
    var var_1 = Struct_2(firstTrailingBit(arg_0 | vec2<i32>(7850i, -19590i)), global1.b, 125f, var_0.a.x, !select(vec4<bool>(!var_0.b.x, var_0.b.x, var_0.b.x, global1.e.x || false), vec4<bool>(any(var_0.b), global1.b.b.x || false, true, 46847i == arg_0.x), !vec4<bool>(true, var_0.b.x, true, true)));
    return var_1.b.a.yz;
}

fn func_2(arg_0: i32, arg_1: bool) -> Struct_1 {
    var var_0 = false;
    var var_1 = vec2<bool>(!(!any(vec2<bool>(global1.b.b.x, true))), false);
    let var_2 = Struct_2(_wgslsmith_add_vec2_i32((global1.a & firstLeadingBit(vec2<i32>(u_input.a, u_input.a))) >> (~func_3(global1.a) % vec2<u32>(32u)), _wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(global1.b.a.x, 1u)], global2[_wgslsmith_index_u32(44388u, 1u)]) >> (vec2<u32>(71287u, global1.d) % vec2<u32>(32u)), global1.a), _wgslsmith_mod_vec2_i32(vec2<i32>(arg_0, 2147483647i), abs(vec2<i32>(arg_0, 12752i))))), Struct_1(_wgslsmith_clamp_vec4_u32(firstLeadingBit(~global1.b.a), global1.b.a, ~global1.b.a), vec3<bool>(select(true, true, var_1.x || false), false, false | var_1.x), 18260i), global1.c, 1u, global1.e);
    let var_3 = Struct_2(var_2.a, Struct_1(_wgslsmith_add_vec4_u32(global1.b.a, ~vec4<u32>(var_2.b.a.x, 1u, 0u, 0u) & vec4<u32>(0u, var_2.d, var_2.b.a.x, 73532u)), var_2.b.b, _wgslsmith_dot_vec4_i32(vec4<i32>(3987i, global2[_wgslsmith_index_u32(var_2.d, 1u)], 11334i, global1.b.c), -vec4<i32>(-2147483647i, u_input.a, -1837i, -49503i)) >> (select(var_2.d, _wgslsmith_add_u32(var_2.d, var_2.d), true) % 32u)), global1.c, max(~0u, ~var_2.d), !var_2.e);
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_3.c), var_3.c, _wgslsmith_f_op_f32(1763f - var_3.c), -870f), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.c, var_3.c, var_3.c, -1339f) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1065f, var_2.c, var_3.c, 949f), vec4<f32>(var_2.c, 253f, var_2.c, var_2.c))))) + vec4<f32>(1f, 1f, 1f, 1f)));
    return Struct_1(~select(~(~vec4<u32>(var_3.b.a.x, 552u, 94302u, 4294967295u)), _wgslsmith_add_vec4_u32(global1.b.a, vec4<u32>(29256u, 14049u, var_3.d, 1u)) | _wgslsmith_mult_vec4_u32(var_3.b.a, global1.b.a), (global1.d < 9479u) || false), var_2.e.yzx, -15783i);
}

fn func_1() -> u32 {
    global1 = Struct_2(global1.a, global1.b, global1.c, _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(global1.b.a.x, global1.b.a.x), global1.d | global1.d, 0u & global1.b.a.x, global1.d), _wgslsmith_clamp_vec4_u32(global1.b.a, vec4<u32>(65248u, 4294967295u, global1.d, 0u), firstLeadingBit(global1.b.a))) << (max(~(~4294967295u), global1.d) % 32u), !vec4<bool>(false, false, global1.b.b.x, any(select(global1.e, global1.e, false))));
    let var_0 = func_2(0i, !(-1i >= abs(global2[_wgslsmith_index_u32(1u, 1u)])));
    let var_1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.c, _wgslsmith_f_op_f32(step(global1.c, _wgslsmith_f_op_f32(-global1.c))), 854f), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.c, 112f, global1.c)))))), global1.e.xzy))));
    global2 = array<i32, 1>();
    return _wgslsmith_add_u32(var_0.a.x, _wgslsmith_mult_u32(func_3(vec2<i32>(global2[_wgslsmith_index_u32(19074u, 1u)] >> (var_0.a.x % 32u), var_0.c)).x, _wgslsmith_dot_vec3_u32(var_0.a.yxx, var_0.a.zwy)));
}

fn func_4(arg_0: Struct_1) -> Struct_2 {
    let var_0 = _wgslsmith_sub_i32(arg_0.c, _wgslsmith_mod_i32(firstLeadingBit(-2147483647i ^ (arg_0.c << (global1.d % 32u))), -(~arg_0.c)));
    var var_1 = global1.b.a;
    let var_2 = vec4<bool>(true && ((-922f > global1.c) && any(select(global1.e, vec4<bool>(global1.e.x, global1.e.x, arg_0.b.x, arg_0.b.x), true))), _wgslsmith_mod_i32(-arg_0.c, _wgslsmith_add_i32(_wgslsmith_mod_i32(-24358i, -1i), -27194i)) >= _wgslsmith_mod_i32(global1.a.x, _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(global1.a, global1.a), global1.a)), all(vec4<bool>(true, true, false, true)), select(false, any(vec4<bool>(global1.b.b.x, global1.b.b.x, arg_0.b.x, true)) | !(u_input.a == global0[_wgslsmith_index_u32(1u, 30u)]), false));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(895f)));
    let var_4 = _wgslsmith_dot_vec3_u32(min(global1.b.a.ywy, ~(~vec3<u32>(1u, global1.b.a.x, var_1.x) & ~var_1.xzy)), ~_wgslsmith_sub_vec3_u32(vec3<u32>(25240u, abs(arg_0.a.x), 33612u), global1.b.a.xzw));
    return Struct_2(~(select(vec2<i32>(28457i, global2[_wgslsmith_index_u32(arg_0.a.x, 1u)]), vec2<i32>(global0[_wgslsmith_index_u32(var_1.x, 30u)], 77821i), var_2.x) << (global1.b.a.xz % vec2<u32>(32u))) & vec2<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(1u, 1u)], global2[_wgslsmith_index_u32(4294967295u, 1u)], global1.b.c), vec3<i32>(global0[_wgslsmith_index_u32(arg_0.a.x, 30u)], -1i, global2[_wgslsmith_index_u32(global1.b.a.x, 1u)])), abs(-arg_0.c)), global1.b, _wgslsmith_f_op_f32(-global1.c), ~0u, vec4<bool>(!select(false, var_2.x, true), var_2.x & var_2.x, 1u != global1.d, true));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_4(Struct_1(global1.b.a, !vec3<bool>(global1.e.x, global1.e.x, global1.b.b.x), _wgslsmith_sub_i32(_wgslsmith_div_i32(global1.a.x, -15057i), 0i << (func_1() % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(-454f);
}

