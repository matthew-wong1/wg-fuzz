struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: vec2<f32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: i32,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: u32,
    d: vec2<i32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: bool = true;

var<private> global2: vec3<bool>;

var<private> global3: array<f32, 12>;

var<private> global4: array<vec3<i32>, 8>;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: vec3<f32>) -> u32 {
    global1 = false;
    let var_0 = Struct_3(firstTrailingBit(vec3<u32>(~u_input.a & ~7849u, 4294967295u, u_input.b)), i32(-1i) * -(~(-u_input.d)), Struct_2(select(select(select(vec4<bool>(false, false, global2.x, global2.x), vec4<bool>(global2.x, true, true, global2.x), true), vec4<bool>(false, false, global2.x, global2.x), select(vec4<bool>(global2.x, global2.x, global2.x, global2.x), vec4<bool>(true, false, false, global2.x), vec4<bool>(true, false, global2.x, true))), vec4<bool>(all(vec3<bool>(false, global2.x, false)), all(vec4<bool>(false, global2.x, true, false)), any(vec3<bool>(false, true, global2.x)), any(vec2<bool>(true, global2.x))), !select(vec4<bool>(false, false, true, global2.x), vec4<bool>(true, global2.x, false, true), true))));
    global2 = !(!select(vec3<bool>(var_0.c.a.x, true, !global2.x), !(!var_0.c.a.yzy), all(vec4<bool>(var_0.c.a.x, global2.x, true, var_0.c.a.x)) | any(var_0.c.a.yw)));
    global4 = array<vec3<i32>, 8>();
    global2 = select(vec3<bool>(true, false, !(!global2.x) & !(!var_0.c.a.x)), !select(var_0.c.a.wxz, var_0.c.a.wwz, vec3<bool>(select(var_0.c.a.x, false, var_0.c.a.x), true, !var_0.c.a.x)), var_0.c.a.ywx);
    return ~_wgslsmith_dot_vec2_u32(~vec2<u32>(firstLeadingBit(u_input.a), reverseBits(u_input.a)), vec2<u32>(~0u, 16150u));
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: u32, arg_3: vec2<f32>) -> vec4<i32> {
    let var_0 = ~u_input.a;
    let var_1 = ~vec4<u32>(_wgslsmith_div_u32(arg_2, (arg_2 ^ u_input.a) | func_2(vec3<f32>(arg_0.c.x, arg_3.x, arg_3.x))), _wgslsmith_sub_u32(arg_2 & u_input.a, _wgslsmith_mod_u32(0u, arg_2)) & ~_wgslsmith_div_u32(55737u, 1u), _wgslsmith_add_u32(_wgslsmith_div_u32(0u, arg_2), ~58281u), 0u >> (max(firstTrailingBit(21697u), 10414u) % 32u));
    let var_2 = arg_0;
    let var_3 = Struct_3(~(min(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 4294967295u, u_input.a), vec3<u32>(0u, u_input.b, var_0)), var_1.yww) >> (~_wgslsmith_div_vec3_u32(vec3<u32>(1u, var_0, 87654u), vec3<u32>(arg_2, u_input.a, var_0)) % vec3<u32>(32u))), abs(-max(_wgslsmith_div_i32(1638i, u_input.e), arg_0.a)), Struct_2(arg_0.b));
    global3 = array<f32, 12>();
    return -_wgslsmith_clamp_vec4_i32(((vec4<i32>(-2147483647i, u_input.e, var_2.a, var_3.b) ^ vec4<i32>(var_3.b, var_2.a, -1i, 1i)) & ~vec4<i32>(51446i, 1i, 1i, var_3.b)) >> (vec4<u32>(1u, select(var_1.x, arg_2, var_3.c.a.x), ~14146u, ~var_1.x) % vec4<u32>(32u)), vec4<i32>(~var_3.b, -(~arg_0.a), i32(-1i) * -75499i, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1, 55619i), ~vec2<i32>(var_3.b, -2147483647i))), ~(~vec4<i32>(var_3.b, var_3.b, 18345i, u_input.c.x) & select(vec4<i32>(var_3.b, 2147483647i, var_2.a, arg_0.a), vec4<i32>(arg_1, var_3.b, 1i, arg_1), false)));
}

fn func_3(arg_0: vec4<bool>, arg_1: u32, arg_2: vec4<bool>, arg_3: vec3<i32>) -> i32 {
    global3 = array<f32, 12>();
    var var_0 = vec2<f32>(-912f, 864f);
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-517f, -1189f, 601f, var_0.x) * vec4<f32>(global3[_wgslsmith_index_u32(0u, 12u)], var_0.x, -1929f, global3[_wgslsmith_index_u32(4294967295u, 12u)])) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, global3[_wgslsmith_index_u32(45402u, 12u)], 925f) + vec4<f32>(986f, -276f, var_0.x, -608f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.x, global3[_wgslsmith_index_u32(6605u, 12u)], global3[_wgslsmith_index_u32(0u, 12u)], -221f))) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.x, -1000f, global3[_wgslsmith_index_u32(u_input.a, 12u)], global3[_wgslsmith_index_u32(u_input.a, 12u)]), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(266f, 403f, -1000f, var_0.x), vec4<f32>(1109f, global3[_wgslsmith_index_u32(31978u, 12u)], -564f, -599f))))))));
    let var_2 = ~_wgslsmith_sub_u32(~75952u, ~abs(~arg_1));
    var var_3 = Struct_1(1i, arg_0, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-514f * -182f), -1087f) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.zz) - var_1.xz)), arg_0);
    return min(~1i, firstLeadingBit(firstTrailingBit(~0i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(-1i, _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(func_1(Struct_1(u_input.c.x, vec4<bool>(global2.x, true, true, global2.x), vec2<f32>(1122f, 176f), vec4<bool>(false, global2.x, false, true)), u_input.c.x, 0u, vec2<f32>(global3[_wgslsmith_index_u32(52916u, 12u)], global3[_wgslsmith_index_u32(u_input.b, 12u)])), vec4<i32>(-44043i, u_input.e, u_input.e, u_input.e), vec4<i32>(u_input.c.x, -63494i, -1i, -2147483647i) ^ vec4<i32>(56612i, -21513i, 1i, u_input.e)), ~(-vec4<i32>(u_input.d, u_input.c.x, u_input.c.x, u_input.d))), ~(~(-43621i)), ~(reverseBits(0i) | u_input.d)), -62216i, i32(-1i) * -(func_3(vec4<bool>(global2.x, global2.x, false, true), u_input.a, vec4<bool>(global2.x, true, false, true), u_input.c) >> (1u % 32u)));
    global3 = array<f32, 12>();
    let var_1 = Struct_3(_wgslsmith_sub_vec3_u32(abs(vec3<u32>(0u, u_input.b, u_input.b) >> (vec3<u32>(u_input.a, u_input.a, 27749u) % vec3<u32>(32u))), firstTrailingBit(vec3<u32>(u_input.a, 1u, u_input.b))) ^ vec3<u32>(~u_input.b, _wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.b, 41986u), u_input.b), 3290u >> (reverseBits(0u) % 32u)), _wgslsmith_dot_vec4_i32(select(vec4<i32>(~2147483647i, 1i, _wgslsmith_div_i32(u_input.d, 816i), 2147483647i), firstLeadingBit(_wgslsmith_mod_vec4_i32(var_0, var_0)), !vec4<bool>(global2.x, true, global2.x, global2.x)), var_0), Struct_2(select(vec4<bool>(true, true, true, true), select(!vec4<bool>(global2.x, global2.x, true, false), !vec4<bool>(true, global2.x, false, true), any(vec3<bool>(true, true, global2.x))), !vec4<bool>(false, global2.x, false, true))));
    let var_2 = Struct_1(func_3(var_1.c.a, var_1.a.x, vec4<bool>(true && var_1.c.a.x, false, false, _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(var_1.a.x, 12u)]) < _wgslsmith_f_op_f32(select(global3[_wgslsmith_index_u32(42397u, 12u)], global3[_wgslsmith_index_u32(var_1.a.x, 12u)], false))), select(var_0.xzx, ~global4[_wgslsmith_index_u32(var_1.a.x, 8u)] ^ _wgslsmith_div_vec3_i32(global4[_wgslsmith_index_u32(22821u, 8u)], u_input.c), all(vec2<bool>(global2.x, var_1.c.a.x)))), !vec4<bool>(all(!global2.zy), var_1.c.a.x, true, var_1.c.a.x), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_div_f32(global3[_wgslsmith_index_u32(var_1.a.x, 12u)], -1071f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(var_1.a.x, 12u)])))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-986f, global3[_wgslsmith_index_u32(u_input.b, 12u)]), vec2<f32>(global3[_wgslsmith_index_u32(7672u, 12u)], global3[_wgslsmith_index_u32(var_1.a.x, 12u)]), false)) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global3[_wgslsmith_index_u32(37600u, 12u)], -1608f))))))), select(var_1.c.a, var_1.c.a, select(vec4<bool>(!global2.x, all(vec3<bool>(global2.x, var_1.c.a.x, false)), global2.x, true), select(select(vec4<bool>(false, var_1.c.a.x, global2.x, global2.x), var_1.c.a, global2.x), var_1.c.a, vec4<bool>(var_1.c.a.x, false, var_1.c.a.x, global2.x)), !global2.x)));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.yx, var_1.a ^ var_1.a, 1u, ~(~vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, 11295i, var_0.x), vec3<i32>(0i, var_2.a, var_1.b)), 11613i)), var_1.a);
}

