struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: vec2<f32>,
    d: f32,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_4;

var<private> global2: vec2<u32>;

var<private> global3: bool = false;

var<private> global4: array<Struct_1, 25>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_2) -> vec4<bool> {
    global3 = false;
    let var_0 = -1301f;
    global2 = firstTrailingBit(firstTrailingBit(~(~vec2<u32>(48348u, global2.x))));
    let var_1 = vec2<i32>(-(~u_input.c), _wgslsmith_dot_vec3_i32(~_wgslsmith_sub_vec3_i32(vec3<i32>(global1.a, -23590i, -15380i), ~vec3<i32>(u_input.c, global1.a, global1.a)), vec3<i32>(u_input.c, 64333i, u_input.b)));
    global4 = array<Struct_1, 25>();
    return vec4<bool>(any(vec4<bool>(global1.b.a, any(vec2<bool>(global0.a, arg_0.a)), all(!vec2<bool>(true, global0.a)), true)), true, all(vec3<bool>(global2.x <= 1u, select(!arg_0.b, arg_0.b, any(vec2<bool>(true, global0.b))), false)), arg_0.b);
}

fn func_2(arg_0: vec4<u32>, arg_1: vec4<bool>, arg_2: f32, arg_3: bool) -> vec4<bool> {
    global0 = Struct_1(true, any(!(!vec4<bool>(false, true, global0.b, false))));
    let var_0 = arg_3;
    var var_1 = global2.x;
    let var_2 = Struct_1(any(vec3<bool>(true, arg_2 < arg_2, var_0)), global1.b.a);
    global4 = array<Struct_1, 25>();
    return func_3(Struct_1(false, true), min(vec3<u32>(20895u, reverseBits(2144u), ~33365u), abs(~vec3<u32>(global2.x, 0u, arg_0.x))) | ((vec3<u32>(arg_0.x, global2.x, global2.x) | vec3<u32>(arg_0.x, 4294967295u, arg_0.x)) | (_wgslsmith_mod_vec3_u32(vec3<u32>(arg_0.x, arg_0.x, arg_0.x), vec3<u32>(global2.x, 65911u, 0u)) | firstLeadingBit(vec3<u32>(global2.x, global2.x, global2.x)))), Struct_2(global2.x));
}

fn func_1(arg_0: i32, arg_1: vec2<f32>) -> Struct_4 {
    var var_0 = !select(!(!vec4<bool>(false, global1.c.a, false, false)), func_2(_wgslsmith_mod_vec4_u32(vec4<u32>(global2.x, global2.x, global2.x, 1u), vec4<u32>(global2.x, 4294967295u, 20863u, global2.x)), !vec4<bool>(global0.b, global1.c.b, global1.c.b, false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1171f) * _wgslsmith_f_op_f32(arg_1.x + 618f)), false), global0.a);
    let var_1 = global1.b;
    var var_2 = firstTrailingBit(~_wgslsmith_add_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(1i, global1.a, 0i, arg_0), vec4<i32>(firstTrailingBit(-1i), 9012i, 19648i, global1.a)));
    var var_3 = arg_1.x;
    var var_4 = ~(global2.x << (4294967295u % 32u));
    return Struct_4(arg_0, global1.c, global4[_wgslsmith_index_u32(global2.x, 25u)]);
}

fn func_4(arg_0: f32, arg_1: Struct_4) -> Struct_3 {
    var var_0 = Struct_1(select(any(!select(vec3<bool>(true, global0.b, arg_1.b.a), vec3<bool>(true, arg_1.c.a, global1.b.b), true)), arg_0 >= -485f, false), u_input.d < 12242i);
    var_0 = func_1(856i ^ -arg_1.a, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -192f), _wgslsmith_f_op_f32(f32(-1f) * -1511f))).c;
    var_0 = arg_1.b;
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(arg_0, -1000f), arg_0) * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1302f, -901f), vec2<f32>(686f, arg_0)) + vec2<f32>(289f, -1103f))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, 2035f) - vec2<f32>(arg_0, arg_0)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1391f, arg_0) - vec2<f32>(-397f, 1499f)), vec2<bool>(true, true)))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-679f, arg_0) + vec2<f32>(-954f, arg_0))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-363f, arg_0), vec2<f32>(arg_0, -667f), vec2<bool>(global0.b, true))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(777f, arg_0))))));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0, 966f, var_1.x), vec3<f32>(1007f, 1933f, var_1.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-832f, -555f, arg_0))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -259f, var_1.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, 944f)))), !func_3(func_1(u_input.b, vec2<f32>(624f, arg_0)).c, vec3<u32>(global2.x, global2.x, 268u), Struct_2(global2.x)).yxw)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, 1596f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(911f, var_1.x, 648f), vec3<f32>(arg_0, var_1.x, 987f))))));
    return Struct_3(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2271f), var_1.x, 1129f), vec3<bool>(any(select(!vec4<bool>(global0.a, true, false, global0.b), vec4<bool>(arg_1.c.b, false, arg_1.c.b, false), var_0.a)), func_1(-5700i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(var_2.yy)) - _wgslsmith_f_op_vec2_f32(exp2(var_2.yx)))).c.b, global1.b.a), _wgslsmith_div_vec2_f32(var_2.yy, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-var_2.yz), vec2<f32>(_wgslsmith_f_op_f32(-676f * var_2.x), _wgslsmith_f_op_f32(-arg_0))))), var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(161f)) - -1460f)), func_1(u_input.b, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 738f)));
    var var_1 = global1.b.a;
    global2 = countOneBits(vec2<u32>(global2.x, global2.x));
    global1 = Struct_4(select(-17103i, -16390i, ~countOneBits(global2.x) < global2.x), Struct_1(!all(vec4<bool>(false, global1.c.b, global0.b, var_0.b.x)), func_1(firstTrailingBit(global1.a), func_4(var_0.c.x, Struct_4(global1.a, Struct_1(var_0.b.x, false), Struct_1(var_0.b.x, global0.a))).c).a == (_wgslsmith_sub_i32(1i, u_input.c) | select(u_input.d, 2147483647i, false))), func_1(-(-51258i & (global1.a ^ u_input.b)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.c.x, -1000f), var_0.c))))).b);
    var var_2 = _wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d * var_0.c.x) * var_0.c.x), -1296f), Struct_4(~(-27405i), global4[_wgslsmith_index_u32(13817u, 25u)], func_1(-u_input.d, _wgslsmith_f_op_vec2_f32(select(var_0.c, vec2<f32>(-437f, var_0.a.x), false))).b)).a.xz + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.c * var_0.a.yz)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(_wgslsmith_sub_u32(_wgslsmith_add_u32(18317u, 1u), global2.x >> (29442u % 32u)), ~(~4294967295u << (_wgslsmith_sub_u32(global2.x, 72662u) % 32u))), ~31320i, 30902i, -1610f, 1u);
}

