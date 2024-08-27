struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: Struct_1,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec3<f32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 12> = array<Struct_2, 12>(Struct_2(vec2<u32>(80u, 4294967295u), Struct_1(vec2<i32>(32939i, i32(-2147483648))), vec3<i32>(-24911i, 27466i, -8114i)), Struct_2(vec2<u32>(7932u, 67518u), Struct_1(vec2<i32>(i32(-2147483648), -29561i)), vec3<i32>(0i, 13201i, 28995i)), Struct_2(vec2<u32>(4058u, 67382u), Struct_1(vec2<i32>(1i, i32(-2147483648))), vec3<i32>(0i, 2147483647i, -2828i)), Struct_2(vec2<u32>(4294967295u, 1u), Struct_1(vec2<i32>(27848i, 54763i)), vec3<i32>(2147483647i, -422i, 2147483647i)), Struct_2(vec2<u32>(11613u, 4294967295u), Struct_1(vec2<i32>(1i, i32(-2147483648))), vec3<i32>(-1i, 2147483647i, 0i)), Struct_2(vec2<u32>(1u, 9009u), Struct_1(vec2<i32>(-23402i, i32(-2147483648))), vec3<i32>(-1i, 27080i, -1i)), Struct_2(vec2<u32>(17657u, 4294967295u), Struct_1(vec2<i32>(-23470i, 5258i)), vec3<i32>(1404i, -1i, 2147483647i)), Struct_2(vec2<u32>(48260u, 72816u), Struct_1(vec2<i32>(19254i, 37802i)), vec3<i32>(-13953i, i32(-2147483648), 2147483647i)), Struct_2(vec2<u32>(4294967295u, 4294967295u), Struct_1(vec2<i32>(0i, 32288i)), vec3<i32>(45929i, -51854i, -88697i)), Struct_2(vec2<u32>(33849u, 4294967295u), Struct_1(vec2<i32>(-1i, 27990i)), vec3<i32>(-69417i, 78757i, i32(-2147483648))), Struct_2(vec2<u32>(4294967295u, 53271u), Struct_1(vec2<i32>(-1i, 0i)), vec3<i32>(0i, 20903i, -42503i)), Struct_2(vec2<u32>(36223u, 0u), Struct_1(vec2<i32>(-14405i, 2147483647i)), vec3<i32>(0i, -32517i, 1i)));

var<private> global1: vec3<bool> = vec3<bool>(false, true, false);

var<private> global2: vec4<bool> = vec4<bool>(false, true, true, false);

var<private> global3: array<vec3<f32>, 9> = array<vec3<f32>, 9>(vec3<f32>(832f, 1125f, -1247f), vec3<f32>(1783f, -577f, 1944f), vec3<f32>(-922f, 164f, 791f), vec3<f32>(-907f, -1035f, 1559f), vec3<f32>(284f, 1486f, -508f), vec3<f32>(-932f, 532f, 1958f), vec3<f32>(-283f, 287f, 903f), vec3<f32>(1887f, 824f, 797f), vec3<f32>(-716f, 135f, -2073f));

var<private> global4: i32 = i32(-2147483648);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32) -> vec4<bool> {
    var var_0 = true;
    global3 = array<vec3<f32>, 9>();
    let var_1 = global2.zww;
    var_0 = true;
    global2 = select(!select(vec4<bool>(false, var_1.x, true, global2.x), select(select(vec4<bool>(var_1.x, var_1.x, true, global2.x), vec4<bool>(global1.x, var_1.x, true, var_1.x), vec4<bool>(true, global1.x, false, global2.x)), !vec4<bool>(global2.x, true, global2.x, global1.x), any(global2.zwz)), vec4<bool>(any(vec2<bool>(true, true)), false, global1.x, true)), vec4<bool>(true, true, !(!(global1.x || var_1.x)), global2.x), all(!(!(!vec4<bool>(global1.x, global1.x, false, true)))));
    return select(!vec4<bool>(_wgslsmith_f_op_f32(-arg_0) < _wgslsmith_f_op_f32(arg_0 * -823f), all(global2.zxy) == true, any(vec2<bool>(global1.x, false)), _wgslsmith_dot_vec3_i32(vec3<i32>(-27161i, 21484i, -79446i), vec3<i32>(3301i, -1i, 35079i)) <= (i32(-1i) * -17143i)), vec4<bool>(true, true, false, var_1.x), vec4<bool>(907f <= _wgslsmith_f_op_f32(-arg_0), global2.x, !all(vec2<bool>(false, true)), all(select(select(vec4<bool>(false, true, global1.x, global1.x), vec4<bool>(global2.x, true, true, true), vec4<bool>(var_1.x, true, global1.x, true)), vec4<bool>(global2.x, false, true, false), any(vec3<bool>(global1.x, var_1.x, true))))));
}

fn func_2(arg_0: vec2<bool>) -> Struct_1 {
    let var_0 = 4294967295u;
    global2 = func_3(_wgslsmith_f_op_f32(sign(-309f)));
    let var_1 = _wgslsmith_f_op_f32(375f + 1000f);
    let var_2 = ~14101u;
    let var_3 = Struct_4(global2.yyx, vec3<i32>(-2147483647i, min(-29186i, _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(2147483647i, -2147483647i, -26607i)), vec3<i32>(1i, 1i, 1i))), -2147483647i), Struct_1(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-6717i, 9307i, -926i, -85806i) << (u_input.a % vec4<u32>(32u)), vec4<i32>(1i, 1i, 1i, 1i)), _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(-22730i, 2147483647i, 0i)), vec3<i32>(1i, 1i, 1i)))), Struct_1(-vec2<i32>(2147483647i, 0i) << (_wgslsmith_add_vec2_u32(u_input.a.xy & u_input.a.yx, u_input.a.yx) % vec2<u32>(32u))), _wgslsmith_f_op_f32(var_1 - var_1));
    return var_3.c;
}

fn func_4(arg_0: Struct_2, arg_1: i32) -> vec3<f32> {
    global4 = 28027i;
    var var_0 = Struct_4(global2.xzz, -(vec3<i32>(max(2147483647i, arg_1), ~0i, ~arg_0.b.a.x) & ~_wgslsmith_div_vec3_i32(vec3<i32>(arg_0.b.a.x, 12037i, arg_1), arg_0.c)), func_2(global1.zz), func_2(select(global2.xy, select(global2.wx, global1.xy, global1.xy), vec2<bool>(true, global2.x))), _wgslsmith_f_op_f32(trunc(-104f)));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(~arg_0.a, ~vec2<u32>(18666u, arg_0.a.x)), _wgslsmith_sub_u32(u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.a.x, arg_0.a.x, 0u), vec3<u32>(48558u, 44581u, 62330u)))), 9u)] - vec3<f32>(var_0.e, -910f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.e))))));
}

fn func_1(arg_0: vec3<i32>, arg_1: bool) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec3_f32(func_4(Struct_2(u_input.a.xx, func_2(global1.yx), arg_0), ~2147483647i));
    return Struct_4(!select(!func_3(var_0.x).zyz, select(global2.yzy, !vec3<bool>(arg_1, false, true), arg_1 || true), global2.x), arg_0, func_2(func_3(var_0.x).zx), Struct_1(_wgslsmith_sub_vec2_i32(select(abs(arg_0.xx), vec2<i32>(arg_0.x, -32463i) | vec2<i32>(6644i, 0i), global1.yx), arg_0.xy)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(-var_0.x)), var_0.x)))));
}

fn func_5(arg_0: Struct_4, arg_1: bool) -> vec3<i32> {
    var var_0 = reverseBits(-_wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.c.a.x, _wgslsmith_mod_i32(arg_0.c.a.x, arg_0.c.a.x), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, arg_0.b.x), arg_0.d.a), ~15402i), vec4<i32>(_wgslsmith_div_i32(arg_0.d.a.x, arg_0.b.x), 0i & arg_0.d.a.x, 0i, arg_0.d.a.x)));
    let var_1 = vec3<bool>(true | arg_1, global2.x, arg_1);
    global3 = array<vec3<f32>, 9>();
    var var_2 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(arg_0.e * _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_0.e, arg_0.e), _wgslsmith_f_op_f32(-arg_0.e)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.e)), arg_0.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-289f, 919f), _wgslsmith_f_op_f32(f32(-1f) * -771f))))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0.e, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(616f, -849f)), _wgslsmith_f_op_f32(-arg_0.e))), -674f, arg_0.e))), select(vec4<bool>(true, false, all(vec4<bool>(true, arg_0.a.x, arg_0.a.x, arg_1)), select(arg_0.e < arg_0.e, false, arg_1)), func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.e))), true)));
    global0 = array<Struct_2, 12>();
    return var_0.zyz;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 12>();
    let var_0 = true;
    global2 = vec4<bool>(true, true, true, global2.x);
    let var_1 = ~(~(~u_input.a.ww));
    var var_2 = ~_wgslsmith_div_vec3_u32((min(vec3<u32>(77137u, 67198u, 0u), vec3<u32>(21196u, 1u, u_input.a.x)) | ~vec3<u32>(0u, 4294967295u, var_1.x)) & u_input.a.yxy, u_input.a.www);
    let var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -811f), _wgslsmith_f_op_f32(f32(-1f) * -256f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(global3[_wgslsmith_index_u32(var_2.x, 9u)] - global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(~reverseBits(1u), ~var_2.x), 9u)]), func_5(func_1(vec3<i32>(-1i) * -vec3<i32>(42616i, -23459i, -2147483647i), !global2.x), any(global1.xz)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(global3[_wgslsmith_index_u32(~(~1u), 9u)], _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3, var_3, var_3))))), _wgslsmith_f_op_vec3_f32(func_4(Struct_2(vec2<u32>(var_2.x, 1u), Struct_1(~vec2<i32>(24235i, -2147483647i)), ~vec3<i32>(1i, 23733i, -12981i)), -54325i)).xz);
}

