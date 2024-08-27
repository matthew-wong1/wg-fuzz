struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: i32,
    e: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec3<f32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec2<bool>;

var<private> global2: array<Struct_2, 3> = array<Struct_2, 3>(Struct_2(Struct_1(-41375i), Struct_1(111039i), -796f, -35456i, true), Struct_2(Struct_1(32647i), Struct_1(-3030i), 1114f, i32(-2147483648), true), Struct_2(Struct_1(-1i), Struct_1(-26398i), -871f, 0i, true));

var<private> global3: vec2<f32>;

var<private> global4: u32;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec2<u32>) -> f32 {
    var var_0 = global2[_wgslsmith_index_u32(~arg_1.x, 3u)];
    let var_1 = var_0.a;
    let var_2 = var_0.a;
    var var_3 = global3.x;
    var var_4 = false;
    return -1000f;
}

fn func_2(arg_0: vec4<u32>, arg_1: i32, arg_2: u32, arg_3: vec4<i32>) -> vec2<f32> {
    global4 = 9487u;
    global0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(vec2<u32>(4294967295u, arg_2), _wgslsmith_mod_vec2_u32(countOneBits(_wgslsmith_mult_vec2_u32(arg_0.xx, arg_0.zz)), arg_0.zy))), global3.x));
    let var_0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(298f - global3.x), _wgslsmith_f_op_f32(global3.x - global3.x), _wgslsmith_f_op_f32(select(global3.x, global3.x, global1.x)), _wgslsmith_f_op_f32(f32(-1f) * -571f))) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(step(-292f, 167f)), -293f, -272f, _wgslsmith_f_op_f32(f32(-1f) * -223f)))))));
    global1 = vec2<bool>(global1.x, _wgslsmith_f_op_f32(min(1458f, _wgslsmith_f_op_f32(step(-892f, _wgslsmith_f_op_f32(f32(-1f) * -364f))))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.x)) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(-var_0.x), true))));
    var var_1 = Struct_2(Struct_1(arg_3.x | 1i), Struct_1(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_3.x, 1i, 63454i, arg_3.x), arg_3) >> (reverseBits(u_input.a) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(vec4<i32>(-1i, arg_1, 1i, arg_3.x), select(vec4<i32>(48283i, arg_3.x, arg_3.x, arg_1), arg_3, true)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-771f - _wgslsmith_f_op_f32(min(global3.x, 152f))) - var_0.x))), countOneBits(arg_1), all(vec2<bool>(arg_0.x <= u_input.a.x, !all(vec4<bool>(global1.x, global1.x, false, global1.x)))));
    return var_0.ww;
}

fn func_1(arg_0: i32, arg_1: i32) -> Struct_1 {
    var var_0 = 29298i;
    global3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.x, global3.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-197f, global3.x)), false))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(11167i, 2147483647i, 0i), vec3<i32>(arg_1, arg_0, arg_0)), ~u_input.a.x, select(vec4<i32>(-8899i, -2147483647i, -1i, arg_1), vec4<i32>(1i, arg_1, arg_0, arg_1), vec4<bool>(false, global1.x, global1.x, global1.x))))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-290f, global3.x) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(237f, global3.x) * vec2<f32>(global3.x, global3.x))))));
    let var_1 = Struct_1(_wgslsmith_add_i32(arg_0, abs(firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1, -22655i, -18644i, arg_0), vec4<i32>(arg_0, 0i, -1i, arg_1))))));
    let var_2 = 34993i;
    var var_3 = var_1;
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 3>();
    let var_0 = countOneBits(~u_input.a);
    let var_1 = abs(vec2<i32>(1i, 1i));
    global0 = global3.x;
    let var_2 = Struct_2(Struct_1(var_1.x), Struct_1(~_wgslsmith_mod_i32(8758i & var_1.x, -7198i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global3.x, _wgslsmith_f_op_f32(global3.x - _wgslsmith_f_op_f32(-1460f + 319f))))), reverseBits(var_1.x), true);
    var var_3 = Struct_1((select(var_1.x << (4294967295u % 32u), var_2.d, !var_2.e) | _wgslsmith_div_i32(~(-1i), ~var_1.x)) & -_wgslsmith_mult_i32(17826i ^ var_1.x, var_1.x));
    var_3 = func_1(1i, (-2147483647i | abs(var_3.a & var_1.x)) << (~abs(u_input.a.x) % 32u));
    let var_4 = var_3.a;
    global3 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_2.c, global3.x), vec2<f32>(var_2.c, 1219f))) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-255f, -279f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1752f, _wgslsmith_f_op_f32(f32(-1f) * -311f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.c, 167f) * vec2<f32>(var_2.c, var_2.c))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(776f, 520f))) - vec2<f32>(1000f, 1669f))), var_2.e == false)), ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(2425u, 41038u), _wgslsmith_clamp_vec2_u32(u_input.a.yw, vec2<u32>(90062u, var_0.x), var_0.wx))), vec3<f32>(var_2.c, var_2.c, _wgslsmith_f_op_f32(func_3(u_input.a.zz, u_input.a.yy))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-439f, -1066f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1145f, 688f)), vec2<f32>(1f, 1f))))));
}

