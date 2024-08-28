struct Struct_1 {
    a: vec4<f32>,
    b: vec3<u32>,
    c: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: u32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 24> = array<bool, 24>(true, true, false, false, true, true, false, false, false, false, true, true, false, true, false, false, false, true, false, false, false, true, false, true);

var<private> global1: vec3<f32>;

var<private> global2: i32;

var<private> global3: Struct_1 = Struct_1(vec4<f32>(-2242f, 1682f, 1151f, -1257f), vec3<u32>(0u, 61115u, 14497u), -983f);

var<private> global4: Struct_3 = Struct_3(vec3<bool>(false, true, true), Struct_1(vec4<f32>(-1763f, -684f, -421f, 612f), vec3<u32>(20287u, 16110u, 0u), -585f));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_1() -> Struct_1 {
    global0 = array<bool, 24>();
    var var_0 = global3.a.x;
    global1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, 1140f, _wgslsmith_f_op_f32(2129f + _wgslsmith_div_f32(global3.a.x, -909f))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(459f, -673f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-275f - _wgslsmith_f_op_f32(-global4.b.c)))));
    global3 = Struct_1(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global3.c, -1897f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global4.b.a.x, global3.a.x) - 635f), global1.x))), vec3<u32>(~(~global4.b.b.x), global4.b.b.x, global4.b.b.x & global3.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.b.c - 2383f) - _wgslsmith_f_op_f32(-var_1.x)) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(293f))))));
    return global4.b;
}

fn func_3(arg_0: f32, arg_1: vec2<u32>, arg_2: vec2<u32>) -> vec2<i32> {
    global2 = _wgslsmith_dot_vec3_i32(~_wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(~vec3<i32>(u_input.a, 2147483647i, u_input.a), _wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, -1868i, -2147483647i), vec3<i32>(u_input.a, 18016i, 1i))), abs(~vec3<i32>(0i, -15420i, 0i))), firstLeadingBit(vec3<i32>(2927i, u_input.a, ~(u_input.a | 22873i))));
    var var_0 = ~(vec3<i32>(u_input.a, -1i, -23679i) << (vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(30836u, global3.b.x, 0u, global3.b.x), vec4<u32>(5119u, 4294967295u, 4294967295u, arg_2.x)), 1u, ~13676u) % vec3<u32>(32u))) >> (vec3<u32>(50207u, firstLeadingBit(reverseBits(abs(4294967295u))), 0u) % vec3<u32>(32u));
    var var_1 = _wgslsmith_mult_i32(~(~0i ^ select(-2147483647i, var_0.x, false)), ~17451i);
    var var_2 = Struct_3(!select(vec3<bool>(false, !global4.a.x, true), global4.a, false), Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.c, global3.a.x, global3.a.x, global4.b.a.x)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-852f, arg_0, -1000f, global4.b.c)))), firstTrailingBit(global3.b), _wgslsmith_div_f32(173f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-358f))))));
    let var_3 = arg_2.x;
    return ~firstLeadingBit(-vec2<i32>(abs(23433i), -var_0.x));
}

fn func_2() -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global3.a));
    global3 = func_1();
    var var_1 = ~(~vec2<i32>(2908i, -84758i) & vec2<i32>(firstTrailingBit(-4882i), u_input.a)) | firstTrailingBit(select(~(~vec2<i32>(35076i, u_input.a)), _wgslsmith_mult_vec2_i32(func_3(376f, vec2<u32>(global4.b.b.x, global3.b.x), vec2<u32>(1893u, global3.b.x)), ~vec2<i32>(u_input.a, 2147483647i)), vec2<bool>(true, true)));
    global0 = array<bool, 24>();
    var var_2 = Struct_2(global3.a.yw, 4294967295u);
    return Struct_3(!select(select(select(global4.a, vec3<bool>(global0[_wgslsmith_index_u32(var_2.b, 24u)], global4.a.x, global0[_wgslsmith_index_u32(16684u, 24u)]), global4.a), select(vec3<bool>(global4.a.x, true, false), vec3<bool>(global0[_wgslsmith_index_u32(0u, 24u)], global4.a.x, global0[_wgslsmith_index_u32(var_2.b, 24u)]), global4.a.x), !vec3<bool>(global4.a.x, false, true)), !vec3<bool>(global4.a.x, global4.a.x, true), !(!vec3<bool>(true, false, global4.a.x))), func_1());
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(!vec3<bool>(true, all(select(vec2<bool>(false, global4.a.x), global4.a.xx, vec2<bool>(true, global0[_wgslsmith_index_u32(global4.b.b.x, 24u)]))), !global0[_wgslsmith_index_u32(85592u, 24u)]), Struct_1(global4.b.a, vec3<u32>(4294967295u, countOneBits(global3.b.x) << (_wgslsmith_sub_u32(global3.b.x, 1u) % 32u), min(13053u, ~global4.b.b.x)), global4.b.c));
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(global1.zy, vec2<f32>(817f, 1219f), vec2<bool>(false, false))) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1126f, 802f)))) - vec2<f32>(-983f, -637f)))), global3.b.x >> (4294967295u % 32u));
    var var_2 = func_1();
    let var_3 = -(~(-54610i));
    global0 = array<bool, 24>();
    global3 = var_0.b;
    global3 = global4.b;
    global2 = var_3;
    var_0 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(var_0.b.a.zxz)), _wgslsmith_f_op_vec3_f32(-var_2.a.yxz)), func_1().a.wy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-func_1().a.zy))));
}

