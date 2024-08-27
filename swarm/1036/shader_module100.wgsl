struct Struct_1 {
    a: f32,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec4<i32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
    c: vec2<bool>,
}

struct Struct_4 {
    a: u32,
    b: vec4<i32>,
    c: f32,
    d: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<bool, 24> = array<bool, 24>(false, true, true, false, true, false, false, true, true, true, true, false, true, false, false, true, true, false, false, false, true, true, true, false);

var<private> global2: array<vec3<u32>, 4>;

var<private> global3: array<Struct_1, 2>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec4<f32>, arg_1: bool, arg_2: bool, arg_3: vec4<i32>) -> i32 {
    global0 = Struct_2(global2[_wgslsmith_index_u32(min(~(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(31394u, global0.a.x)) | 19964u), ~17956u), 4u)], global0.e, reverseBits(~(max(vec4<i32>(global0.e.c, 0i, arg_3.x, global0.e.c), arg_3) >> ((vec4<u32>(u_input.a.x, global0.a.x, 4620u, u_input.a.x) | vec4<u32>(0u, global0.a.x, 54577u, 58182u)) % vec4<u32>(32u)))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -171f), max(_wgslsmith_mult_i32(global0.b.b | -33620i, 1i), 2147483647i), global0.d.b), global0.e);
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_0.xxy, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-461f, 1485f, 838f) + arg_0.zwz)))) * arg_0.wzz);
    var var_1 = any(vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 24u)], global1[_wgslsmith_index_u32(~1u, 24u)])) | !arg_1;
    var var_2 = arg_0.x;
    let var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -900f) * 1000f), -2147483647i, -min(2147483647i ^ global0.b.c, 1i));
    return 1i;
}

fn func_2() -> f32 {
    global3 = array<Struct_1, 2>();
    let var_0 = 1666f;
    let var_1 = Struct_4(firstTrailingBit(global0.a.x), ~global0.c, _wgslsmith_f_op_f32(ceil(global0.b.a)), 1u);
    var var_2 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a.x, global0.a.x, _wgslsmith_div_u32(~global0.a.x, _wgslsmith_div_u32(_wgslsmith_mod_u32(var_1.d, u_input.a.x), var_1.d))), 24u)];
    global0 = Struct_2(global0.a, Struct_1(-735f, _wgslsmith_div_i32(func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.a, 2320f, -513f, 1686f) * vec4<f32>(global0.d.a, var_1.c, -1498f, var_0)), any(vec3<bool>(true, false, global1[_wgslsmith_index_u32(var_1.a, 24u)])), true, max(global0.c, vec4<i32>(var_1.b.x, var_1.b.x, 38504i, 4217i))), _wgslsmith_mult_i32(var_1.b.x, 0i)), global0.c.x), vec4<i32>(-1i) * -reverseBits(countOneBits(vec4<i32>(1i, global0.c.x, global0.b.c, -52661i))), global3[_wgslsmith_index_u32(~(~firstTrailingBit(2399u)), 2u)], Struct_1(_wgslsmith_f_op_f32(-global0.b.a), abs(-31613i), var_1.b.x));
    return 1000f;
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> Struct_3 {
    let var_0 = _wgslsmith_div_f32(global0.e.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-266f + arg_1.a)))));
    var var_1 = global0.a.xy;
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_2())));
    var var_3 = Struct_2(vec3<u32>(_wgslsmith_div_u32(_wgslsmith_mod_u32(arg_0, 6537u), reverseBits(0u)), _wgslsmith_dot_vec2_u32(min(u_input.a, vec2<u32>(41817u, 23628u)), u_input.a), ~12056u) << (abs(_wgslsmith_sub_vec3_u32(global0.a, global2[_wgslsmith_index_u32(~8921u, 4u)])) % vec3<u32>(32u)), global0.e, vec4<i32>(15494i, arg_1.b, _wgslsmith_sub_i32(global0.c.x, func_3(vec4<f32>(1551f, var_2, arg_1.a, var_0), any(vec3<bool>(true, false, true)), true, vec4<i32>(23543i, global0.e.c, 2147483647i, -1i) ^ global0.c)), global0.d.b), Struct_1(_wgslsmith_f_op_f32(var_2 * 189f), -11407i, -2147483647i), Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -963f), _wgslsmith_f_op_f32(max(377f, arg_1.a)))))), _wgslsmith_mult_i32(global0.b.c, _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.b, arg_1.c, global0.e.b, 67064i), global0.c), ~30809i)), -15979i << (_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(87783u, global0.a.x, arg_0, 30586u), vec4<u32>(1u, 4593u, global0.a.x, 26674u)), _wgslsmith_add_vec4_u32(vec4<u32>(global0.a.x, 6294u, 52429u, global0.a.x), vec4<u32>(4294967295u, 4294967295u, u_input.a.x, 1581u))) % 32u)));
    var_3 = Struct_2(global0.a, Struct_1(917f, global0.c.x, 2147483647i), -global0.c, Struct_1(var_3.e.a, arg_1.c, global0.d.c), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(-879f - 694f))), -45011i, ~_wgslsmith_sub_i32(var_3.d.b >> (91953u % 32u), 0i)));
    return Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_2), _wgslsmith_div_f32(var_3.d.a, 2024f), 1f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-854f, 130f, 475f))))), Struct_2(select(vec3<u32>(firstLeadingBit(1u), ~58119u, 18868u), var_3.a, true), var_3.d, vec4<i32>(global0.d.c, global0.e.c, _wgslsmith_div_i32(var_3.c.x, -1i) & func_3(vec4<f32>(var_2, 1415f, -563f, -315f), true, global1[_wgslsmith_index_u32(106261u, 24u)], vec4<i32>(-33976i, -2147483647i, 46356i, 1i)), 2147483647i ^ arg_1.c), arg_1, Struct_1(_wgslsmith_f_op_f32(-1f), -2147483647i, max(-var_3.b.c, _wgslsmith_add_i32(12811i, var_3.b.b)))), select(vec2<bool>(!global1[_wgslsmith_index_u32(4294967295u, 24u)], (-1296f > arg_1.a) || global1[_wgslsmith_index_u32(~1u, 24u)]), vec2<bool>(global1[_wgslsmith_index_u32(select(1u, arg_0, global1[_wgslsmith_index_u32(var_1.x, 24u)]), 24u)] | true, all(vec3<bool>(false, false, global1[_wgslsmith_index_u32(0u, 24u)]))), !select(!vec2<bool>(global1[_wgslsmith_index_u32(13335u, 24u)], global1[_wgslsmith_index_u32(39335u, 24u)]), vec2<bool>(true, global1[_wgslsmith_index_u32(24070u, 24u)]), select(global1[_wgslsmith_index_u32(17331u, 24u)], true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-175f + 773f), -724f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.e.a))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(182f, global0.e.a, -983f) + vec3<f32>(678f, global0.e.a, global0.b.a))))));
    let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.d.a) + -163f)));
    var var_2 = func_1(global0.a.x, global3[_wgslsmith_index_u32(~(~65639u), 2u)]);
    var var_3 = Struct_2(vec3<u32>(~(40392u ^ var_2.b.a.x), min(~(~4294967295u), select(~34512u, u_input.a.x, false)), countOneBits(func_1(68734u, Struct_1(1340f, -44074i, 9286i)).b.a.x) & var_2.b.a.x), func_1(4294967295u, Struct_1(-1188f, var_2.b.d.b, ~func_3(vec4<f32>(931f, -202f, global0.d.a, global0.e.a), false, var_2.c.x, var_2.b.c))).b.b, _wgslsmith_mod_vec4_i32(var_2.b.c, _wgslsmith_mult_vec4_i32(var_2.b.c, vec4<i32>(func_1(4294967295u, var_2.b.d).b.b.c, global0.c.x, 2147483647i & global0.b.c, global0.b.b))), global3[_wgslsmith_index_u32(~(~70764u), 2u)], func_1(~1u, func_1(~(~u_input.a.x), Struct_1(_wgslsmith_f_op_f32(trunc(-447f)), var_2.b.e.b, max(global0.e.b, -431i))).b.d).b.e);
    var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(-655f, 1287f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.e.a), global0.b.a, any(vec4<bool>(true, false, true, true))))) * _wgslsmith_f_op_vec3_f32(min(var_0, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-var_2.a)))))), var_2.b, !vec2<bool>(true, any(var_2.c)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_sub_u32(global0.a.x, 69329u), ~firstTrailingBit(_wgslsmith_div_u32(4294967295u, var_3.a.x)), _wgslsmith_mult_u32(u_input.a.x, u_input.a.x), 4294967295u), global0.c.yzy);
}

