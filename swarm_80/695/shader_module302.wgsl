struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: bool,
    c: vec2<f32>,
    d: bool,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: i32,
    d: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: i32,
    c: vec2<bool>,
    d: Struct_3,
    e: vec3<f32>,
}

struct Struct_5 {
    a: vec4<i32>,
    b: f32,
    c: bool,
    d: Struct_4,
    e: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 17>;

var<private> global1: array<vec3<bool>, 2>;

var<private> global2: vec3<bool> = vec3<bool>(true, true, true);

var<private> global3: array<u32, 27> = array<u32, 27>(58923u, 0u, 22922u, 0u, 0u, 0u, 25085u, 0u, 26928u, 25545u, 0u, 1u, 1u, 20471u, 4294967295u, 4294967295u, 3197u, 1u, 19769u, 0u, 5247u, 44446u, 1293u, 13114u, 1u, 62915u, 8183u);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: Struct_2) -> f32 {
    global0 = array<vec2<i32>, 17>();
    var var_0 = vec4<i32>(2147483647i, (27579i & arg_0) & max(i32(-1i) * -4572i, -reverseBits(arg_0)), max(20906i, arg_1), arg_0);
    return _wgslsmith_div_f32(1649f, _wgslsmith_f_op_f32(exp2(arg_2.c.x)));
}

fn func_3(arg_0: i32) -> vec4<f32> {
    var var_0 = Struct_3(countOneBits(~arg_0), _wgslsmith_f_op_f32(step(628f, _wgslsmith_div_f32(-267f, _wgslsmith_f_op_f32(f32(-1f) * -162f)))), _wgslsmith_mod_i32(firstLeadingBit(firstLeadingBit(-arg_0)), -arg_0), Struct_1(global2.x, 1i));
    let var_1 = arg_0;
    global1 = array<vec3<bool>, 2>();
    var var_2 = !select(select(select(global1[_wgslsmith_index_u32(~118471u, 2u)], vec3<bool>(var_0.d.a, var_0.d.a, true), var_0.d.a), select(global1[_wgslsmith_index_u32(u_input.a.x, 2u)], !vec3<bool>(global2.x, var_0.d.a, false), any(vec4<bool>(var_0.d.a, true, true, global2.x))), !global1[_wgslsmith_index_u32(8610u, 2u)]), global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a.x, 27u)], 2u)], select(!global2.x, all(select(global2.xz, vec2<bool>(global2.x, true), vec2<bool>(false, false))), select(var_0.d.a, true, false)));
    let var_3 = _wgslsmith_sub_i32(var_1, _wgslsmith_div_i32(max(~arg_0, _wgslsmith_sub_i32(39947i, arg_0)), arg_0));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-466f, -1186f, var_0.b, -1307f)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, 824f, var_0.b, 254f))))));
}

fn func_1(arg_0: bool) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1733f) - -876f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -285f))), _wgslsmith_f_op_f32(771f - _wgslsmith_f_op_f32(func_2(-29670i, 2147483647i, Struct_2(vec4<f32>(897f, -757f, 1448f, 529f), global2.x, vec2<f32>(-679f, -764f), true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -490f) + _wgslsmith_f_op_f32(-258f + -608f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(126f, -1000f, -844f, 1834f), vec4<f32>(104f, 107f, 194f, 1000f)))) * vec4<f32>(1f, -1102f, _wgslsmith_f_op_f32(sign(1000f)), -570f)) + _wgslsmith_f_op_vec4_f32(func_3(-57156i))));
    global2 = select(vec3<bool>(any(select(select(vec4<bool>(global2.x, false, true, arg_0), vec4<bool>(arg_0, global2.x, true, arg_0), arg_0), select(vec4<bool>(true, true, true, global2.x), vec4<bool>(arg_0, global2.x, arg_0, true), vec4<bool>(global2.x, true, global2.x, true)), !arg_0)), arg_0, true), select(select(global1[_wgslsmith_index_u32(~firstTrailingBit(u_input.a.x), 2u)], vec3<bool>(true, true, true), !vec3<bool>(global2.x, global2.x, global2.x)), select(vec3<bool>(true, global2.x | true, global2.x), vec3<bool>(arg_0, true, true), !all(vec3<bool>(true, true, false))), global1[_wgslsmith_index_u32(~49732u, 2u)]), vec3<bool>(arg_0, any(global2.zz) | true, all(!vec4<bool>(arg_0, false, false, arg_0))));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, -1114f, 294f, -304f), vec4<f32>(-319f, 179f, -276f, var_0.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, -1026f, var_0.x))) + vec4<f32>(-1290f, _wgslsmith_f_op_f32(f32(-1f) * -990f), var_0.x, 1629f))) + vec4<f32>(_wgslsmith_f_op_f32(274f * _wgslsmith_f_op_f32(683f * var_0.x)), var_0.x, 1275f, -401f));
    var var_1 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.zx * _wgslsmith_div_vec2_f32(var_0.wx, vec2<f32>(var_0.x, var_0.x))) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(881f, _wgslsmith_f_op_f32(var_0.x + -482f)), vec2<f32>(var_0.x, -783f), !(!vec2<bool>(true, arg_0)))))));
    var_0 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.x)) - var_1.x))), _wgslsmith_f_op_f32(max(-164f, var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-234f))) - -752f), _wgslsmith_f_op_f32(step(403f, -651f)))));
    return Struct_1(global2.x, -2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<bool>, 2>();
    var var_0 = Struct_5(-abs(select(vec4<i32>(-4683i, -20142i, 2147483647i, -7060i), vec4<i32>(1i, 1i, 1i, 1i), select(vec4<bool>(true, global2.x, global2.x, global2.x), vec4<bool>(global2.x, global2.x, global2.x, false), vec4<bool>(false, global2.x, global2.x, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-466f, _wgslsmith_f_op_f32(abs(-1000f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2000f)))), global2.x, Struct_4(_wgslsmith_add_i32(-47581i, i32(-1i) * -33476i), 1i, global2.yy, Struct_3(~_wgslsmith_div_i32(9967i, 15960i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-338f, -1011f)) + _wgslsmith_f_op_f32(round(1233f))), ~0i << (global3[_wgslsmith_index_u32(0u & u_input.a.x, 27u)] % 32u), func_1(any(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 27u)], 2u)]))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1330f, -129f, 451f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1065f, -621f, 1640f)))))), ~u_input.a.x);
    global1 = array<vec3<bool>, 2>();
    let var_1 = var_0.e;
    global1 = array<vec3<bool>, 2>();
    let var_2 = Struct_4(_wgslsmith_mult_i32(var_0.d.a, -2147483647i), _wgslsmith_div_i32(20793i, (-1i | (var_0.d.b >> (global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 27u)], 27u)] % 32u))) >> (11205u % 32u)), select(global2.yx, vec2<bool>(any(select(vec3<bool>(global2.x, var_0.c, var_0.d.c.x), vec3<bool>(global2.x, global2.x, false), global1[_wgslsmith_index_u32(20427u, 2u)])), func_1(false).a), var_0.d.d.d.a), var_0.d.d, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-819f, var_0.d.d.b, -521f)))))))));
    global0 = array<vec2<i32>, 17>();
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(step(var_0.d.d.b, -1184f)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(0i, reverseBits(32765i), 4797i, reverseBits(-var_0.a.x)), ~min(vec2<i32>(-1i) * -var_0.a.xx, vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, var_2.a, var_2.d.a, var_2.b), var_0.a), 19292i)));
}

