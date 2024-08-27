struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: vec4<u32>,
    d: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: i32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: bool,
}

struct Struct_4 {
    a: i32,
    b: vec2<f32>,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_5 {
    a: vec2<i32>,
    b: Struct_3,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: u32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
    c: vec2<f32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 22> = array<u32, 22>(1u, 0u, 1u, 8014u, 44046u, 1u, 0u, 0u, 4294967295u, 31035u, 0u, 5511u, 1u, 4294967295u, 0u, 0u, 1u, 22467u, 9002u, 43552u, 47342u, 1u);

var<private> global1: array<vec2<i32>, 20> = array<vec2<i32>, 20>(vec2<i32>(0i, 9212i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(i32(-2147483648), 12841i), vec2<i32>(1i, 1i), vec2<i32>(2147483647i, -13438i), vec2<i32>(-20741i, 5393i), vec2<i32>(-88953i, 35749i), vec2<i32>(2147483647i, -7336i), vec2<i32>(0i, 15208i), vec2<i32>(i32(-2147483648), -86232i), vec2<i32>(1i, -1i), vec2<i32>(-12234i, 0i), vec2<i32>(i32(-2147483648), -60521i), vec2<i32>(14683i, 1i), vec2<i32>(2147483647i, 19892i), vec2<i32>(69965i, 2147483647i), vec2<i32>(1i, 0i), vec2<i32>(15302i, -50857i), vec2<i32>(-1i, -16614i), vec2<i32>(1i, 2147483647i));

var<private> global2: vec3<bool> = vec3<bool>(false, true, false);

var<private> global3: array<vec3<bool>, 14>;

var<private> global4: array<vec3<u32>, 13>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: u32, arg_1: bool) -> vec3<i32> {
    let var_0 = !global3[_wgslsmith_index_u32(15881u, 14u)];
    global4 = array<vec3<u32>, 13>();
    let var_1 = select(!vec2<bool>(!global2.x, var_0.x), vec2<bool>(arg_1, !(!(global2.x | var_0.x))), vec2<bool>(true, true));
    global0 = array<u32, 22>();
    global4 = array<vec3<u32>, 13>();
    return min(max(_wgslsmith_add_vec3_i32(-_wgslsmith_clamp_vec3_i32(u_input.a.zwz, vec3<i32>(u_input.a.x, u_input.a.x, -1i), u_input.a.zzy), vec3<i32>(_wgslsmith_mult_i32(u_input.a.x, u_input.a.x), -61180i, _wgslsmith_div_i32(-1i, u_input.a.x))), ~vec3<i32>(i32(-1i) * -11163i, i32(-1i) * -66526i, u_input.a.x | u_input.e)), vec3<i32>(firstTrailingBit(0i), u_input.a.x, u_input.a.x ^ -1i) & _wgslsmith_clamp_vec3_i32(-u_input.a.yxz, u_input.a.zwx, _wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-6488i, u_input.a.x, 11939i), vec3<i32>(u_input.e, 0i, u_input.e)), firstLeadingBit(u_input.a.ywy))));
}

fn func_2() -> u32 {
    global4 = array<vec3<u32>, 13>();
    var var_0 = firstTrailingBit(func_3(39167u, global2.x & (global0[_wgslsmith_index_u32(countOneBits(0u), 22u)] <= global0[_wgslsmith_index_u32(u_input.b.x, 22u)])));
    global1 = array<vec2<i32>, 20>();
    var var_1 = select(!vec4<bool>(any(global2.xz), global2.x, true, global2.x), select(!(!select(vec4<bool>(false, false, global2.x, global2.x), vec4<bool>(true, global2.x, true, true), vec4<bool>(global2.x, global2.x, true, false))), !(!(!vec4<bool>(false, global2.x, false, true))), all(select(!vec4<bool>(global2.x, false, true, global2.x), vec4<bool>(false, global2.x, false, global2.x), select(vec4<bool>(global2.x, global2.x, global2.x, global2.x), vec4<bool>(true, true, true, global2.x), true)))), !(!vec4<bool>(global2.x, global2.x, true, true)));
    var var_2 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(round(-394f)), -965f), _wgslsmith_mod_i32(max(var_0.x, _wgslsmith_mod_i32(u_input.a.x, 0i)), var_0.x), firstTrailingBit(vec4<u32>(global0[_wgslsmith_index_u32(41949u, 22u)], _wgslsmith_mult_u32(_wgslsmith_mod_u32(1u, 3628u), 4294967295u), u_input.b.x, abs(~1u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) * 743f)));
    return max(1u, ~_wgslsmith_mod_u32(~(global0[_wgslsmith_index_u32(4294967295u, 22u)] & 1u), _wgslsmith_add_u32(var_2.c.x, u_input.b.x)));
}

fn func_4(arg_0: vec4<f32>, arg_1: bool, arg_2: bool) -> Struct_1 {
    global0 = array<u32, 22>();
    var var_0 = select(true, !(!arg_1), arg_2);
    global3 = array<vec3<bool>, 14>();
    global0 = array<u32, 22>();
    global0 = array<u32, 22>();
    return Struct_1(_wgslsmith_f_op_vec2_f32(arg_0.zw - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-arg_0.x), 473f), _wgslsmith_f_op_vec2_f32(-arg_0.zy), select(!global2.zy, global2.zy, u_input.e >= 2147483647i)))), _wgslsmith_div_i32(firstLeadingBit(abs(31281i)), u_input.a.x) ^ -1i, ~(vec4<u32>(~global0[_wgslsmith_index_u32(31477u, 22u)], ~4294967295u, 4294967295u, _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(4294967295u, 22u)], 0u)) | vec4<u32>(_wgslsmith_sub_u32(u_input.b.x, 0u), 122718u, abs(42484u), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.b, u_input.d), 22u)])), arg_0.x);
}

fn func_1(arg_0: u32) -> Struct_1 {
    var var_0 = -firstLeadingBit((_wgslsmith_add_i32(u_input.e, 33936i) ^ 0i) | min(-1i, 106885i ^ u_input.a.x));
    global3 = array<vec3<bool>, 14>();
    var var_1 = !(all(select(global3[_wgslsmith_index_u32(arg_0, 14u)], !global3[_wgslsmith_index_u32(35267u, 14u)], global2.x)) && global2.x);
    var var_2 = abs(countOneBits(_wgslsmith_mod_u32(~0u, 73946u)));
    return func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1000f + -1121f), _wgslsmith_f_op_f32(-1042f + -1247f), _wgslsmith_f_op_f32(-1561f + -389f), 1106f))), true, min(min(global0[_wgslsmith_index_u32(0u << (arg_0 % 32u), 22u)], ~31468u), abs(0u) | global0[_wgslsmith_index_u32(max(arg_0, u_input.c), 22u)]) > func_2());
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(vec4<i32>(-1i) * -(~vec4<i32>(u_input.a.x, u_input.e, -20553i, 11449i)), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(select(-1193f, _wgslsmith_f_op_f32(-169f - 1290f), true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-559f)), _wgslsmith_f_op_f32(f32(-1f) * -770f))), 211i, ~vec4<u32>(u_input.d.x, reverseBits(1u), ~global0[_wgslsmith_index_u32(0u, 22u)], ~40734u), -1282f), func_1(_wgslsmith_add_u32(_wgslsmith_add_u32(0u, 24469u), ~(u_input.d.x << (u_input.d.x % 32u)))), -u_input.a.x, 1718f != _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1528f))))));
    global0 = array<u32, 22>();
    global1 = array<vec2<i32>, 20>();
    let var_1 = var_0;
    var var_2 = Struct_4(-38164i & -firstTrailingBit(i32(-1i) * -30272i), var_0.b.a, vec4<f32>(var_0.b.a.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.b.a.x), -444f)), var_1.b.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.c.d)) - _wgslsmith_f_op_f32(-var_0.b.d)) * 1054f)), Struct_1(vec2<f32>(561f, 321f), _wgslsmith_dot_vec4_i32(select(~vec4<i32>(-22103i, 6959i, 16582i, u_input.a.x), ~var_1.a, !var_0.e), -vec4<i32>(var_1.c.b, var_1.d, -2147483647i, -24434i)), vec4<u32>(var_1.b.c.x, ~1u, u_input.b.x, 25941u), _wgslsmith_f_op_f32(-var_1.c.d)));
    var var_3 = var_0.a.wz;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_1.b.a.x, _wgslsmith_f_op_f32(f32(-1f) * -590f))))), var_0.c.c, var_1.c.a, u_input.b.x, ~(firstLeadingBit(1u) ^ firstLeadingBit(select(81468u, 42698u, global2.x))));
}

