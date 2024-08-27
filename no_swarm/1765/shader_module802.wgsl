struct Struct_1 {
    a: vec2<bool>,
    b: vec2<f32>,
    c: vec2<u32>,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec3<f32>,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: i32,
    b: vec4<f32>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 14> = array<Struct_2, 14>(Struct_2(vec2<bool>(false, false), vec3<f32>(1009f, 729f, 200f)), Struct_2(vec2<bool>(false, false), vec3<f32>(647f, -1237f, -883f)), Struct_2(vec2<bool>(false, true), vec3<f32>(-126f, -1000f, -1566f)), Struct_2(vec2<bool>(true, true), vec3<f32>(776f, -630f, 1000f)), Struct_2(vec2<bool>(false, true), vec3<f32>(-499f, -1156f, -453f)), Struct_2(vec2<bool>(true, true), vec3<f32>(1003f, -1714f, -664f)), Struct_2(vec2<bool>(true, true), vec3<f32>(918f, -337f, -884f)), Struct_2(vec2<bool>(false, false), vec3<f32>(2475f, -177f, 1000f)), Struct_2(vec2<bool>(false, true), vec3<f32>(-1694f, 1000f, -2042f)), Struct_2(vec2<bool>(false, true), vec3<f32>(-2137f, -189f, -558f)), Struct_2(vec2<bool>(true, false), vec3<f32>(345f, 1614f, -292f)), Struct_2(vec2<bool>(true, false), vec3<f32>(1004f, -1134f, 647f)), Struct_2(vec2<bool>(true, true), vec3<f32>(-1717f, 1243f, 455f)), Struct_2(vec2<bool>(true, true), vec3<f32>(-150f, 1058f, 401f)));

var<private> global1: array<f32, 15> = array<f32, 15>(1000f, 911f, -1142f, 1000f, 416f, -269f, 227f, -932f, -1387f, 846f, 2608f, 324f, -119f, 657f, -1665f);

var<private> global2: vec2<i32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2) -> i32 {
    var var_0 = true;
    let var_1 = !(arg_0.a.x | true) & arg_0.a.x;
    var var_2 = Struct_2(vec2<bool>(true, !all(!arg_0.a)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(arg_0.b)) + vec3<f32>(arg_0.b.x, _wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.c, 15u)], arg_0.b.x), -740f)), _wgslsmith_f_op_vec3_f32(max(arg_0.b, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(u_input.c, 15u)], 540f, global1[_wgslsmith_index_u32(1u, 15u)]) - vec3<f32>(arg_0.b.x, 1000f, -716f))))))));
    let var_3 = Struct_1(arg_0.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.b.yz) - vec2<f32>(_wgslsmith_f_op_f32(select(arg_0.b.x, global1[_wgslsmith_index_u32(10184u, 15u)], var_1)), 1000f)) + arg_0.b.yz), vec2<u32>(max(abs(u_input.a.x ^ u_input.a.x), 0u), _wgslsmith_dot_vec3_u32((u_input.a.wzw ^ vec3<u32>(u_input.a.x, 0u, 0u)) >> (u_input.a.xwy % vec3<u32>(32u)), vec3<u32>(u_input.c, 1u, u_input.a.x))), abs(u_input.b.yxw), _wgslsmith_sub_vec2_u32(~vec2<u32>(_wgslsmith_mod_u32(71131u, u_input.a.x), _wgslsmith_sub_u32(u_input.c, u_input.c)), _wgslsmith_sub_vec2_u32(u_input.a.xx, _wgslsmith_mod_vec2_u32(u_input.a.xy, u_input.a.xx))));
    var_2 = global0[_wgslsmith_index_u32(abs(1011u), 14u)];
    return global2.x;
}

fn func_2() -> i32 {
    let var_0 = Struct_2(vec2<bool>(select(any(vec2<bool>(true, false)), any(vec3<bool>(false, false, false)), true) && true, false), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(-2149f, _wgslsmith_f_op_f32(252f - global1[_wgslsmith_index_u32(u_input.c, 15u)]))), _wgslsmith_f_op_f32(step(-1434f, _wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(u_input.a.x, 15u)])))), -1000f)));
    global0 = array<Struct_2, 14>();
    global2 = ~(abs(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, -11206i, 32266i, 0i), u_input.b), 38550i)) ^ u_input.b.xz);
    let var_1 = Struct_4(var_0);
    var var_2 = _wgslsmith_clamp_i32(u_input.b.x, func_3(var_0), _wgslsmith_dot_vec4_i32((vec4<i32>(global2.x, u_input.d.x, 2147483647i, global2.x) >> (countOneBits(vec4<u32>(u_input.c, 18488u, 1u, 0u)) % vec4<u32>(32u))) | _wgslsmith_sub_vec4_i32(vec4<i32>(-1i, 16016i, global2.x, 6406i), -vec4<i32>(28780i, -72145i, 0i, global2.x)), u_input.b));
    return global2.x;
}

fn func_4(arg_0: i32, arg_1: i32) -> Struct_4 {
    let var_0 = Struct_4(global0[_wgslsmith_index_u32(0u, 14u)]);
    var var_1 = -global2.x | u_input.d.x;
    var_1 = u_input.b.x;
    global2 = ~u_input.b.xw;
    let var_2 = -581f;
    return Struct_4(global0[_wgslsmith_index_u32(~(~abs(u_input.a.x)), 14u)]);
}

fn func_1() -> bool {
    var var_0 = vec2<u32>(~u_input.a.x ^ u_input.a.x, ~u_input.c);
    let var_1 = func_4(-_wgslsmith_mult_i32(15624i, firstTrailingBit(func_2())), reverseBits(u_input.d.x));
    var var_2 = abs(~(~vec3<u32>(u_input.a.x, var_0.x, u_input.c) >> (~u_input.a.wzy % vec3<u32>(32u)))) << (countOneBits(_wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.a.zxy, vec3<u32>(76629u, var_0.x, 4294967295u), vec3<u32>(u_input.c, 26217u, 359u)), ~u_input.a.yyx) ^ u_input.a.zwx) % vec3<u32>(32u));
    return var_1.a.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(vec2<bool>(!all(vec3<bool>(true, true, true)), func_1()), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(53634u, 15u)]), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.c, 15u)] + global1[_wgslsmith_index_u32(38652u, 15u)]), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, 63753u), 15u)]))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1789f, global1[_wgslsmith_index_u32(u_input.a.x, 15u)], -1000f), vec3<f32>(global1[_wgslsmith_index_u32(0u, 15u)], global1[_wgslsmith_index_u32(u_input.a.x, 15u)], 987f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(746f, 456f, global1[_wgslsmith_index_u32(u_input.a.x, 15u)])) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(u_input.c, 15u)], global1[_wgslsmith_index_u32(u_input.c, 15u)], 901f))))));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1389f - -386f)), -506f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(abs(u_input.a), u_input.a), 15u)] - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -987f)))));
    global1 = array<f32, 15>();
    var var_2 = true;
    let var_3 = any(select(vec4<bool>(true | (var_0.a.x == false), true, !(u_input.c < u_input.c), true), !(!select(vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x), vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x), vec4<bool>(true, false, var_0.a.x, false))), !select(!vec4<bool>(var_0.a.x, false, false, var_0.a.x), vec4<bool>(var_0.a.x, var_0.a.x, false, var_0.a.x), vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, true))));
    let var_4 = ~(~(~(~u_input.a.x) >> (u_input.a.x % 32u)));
    var var_5 = Struct_3(u_input.d);
    global2 = vec2<i32>(-37226i, -2147483647i) >> (abs(u_input.a.yy & (_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, 1u), vec2<u32>(17070u, 28348u)) | vec2<u32>(6985u, u_input.c))) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(~select(_wgslsmith_add_vec2_u32(vec2<u32>(51422u, var_4), ~u_input.a.xw), u_input.a.ww, vec2<bool>(false, any(vec3<bool>(var_0.a.x, var_0.a.x, true)))), _wgslsmith_dot_vec3_u32(firstLeadingBit(select(vec3<u32>(23720u, 1u, u_input.a.x), _wgslsmith_mod_vec3_u32(vec3<u32>(0u, var_4, var_4), vec3<u32>(var_4, 0u, u_input.c)), var_0.a.x & true)), _wgslsmith_div_vec3_u32(reverseBits(min(u_input.a.wxx, vec3<u32>(0u, u_input.a.x, 45840u))), ~(u_input.a.xxw ^ vec3<u32>(u_input.a.x, 83816u, u_input.a.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(var_0.b)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.b.x, -151f, var_1.x), _wgslsmith_div_vec3_f32(vec3<f32>(-1656f, 1146f, global1[_wgslsmith_index_u32(3149u, 15u)]), vec3<f32>(var_1.x, var_0.b.x, 723f)), vec3<bool>(false, var_3, var_0.a.x))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(var_0.b - vec3<f32>(279f, -1501f, global1[_wgslsmith_index_u32(606u, 15u)])))))));
}

