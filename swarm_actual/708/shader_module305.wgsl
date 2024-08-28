struct Struct_1 {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec2<bool>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 12> = array<vec3<f32>, 12>(vec3<f32>(-1000f, 1011f, -432f), vec3<f32>(-771f, 102f, -793f), vec3<f32>(458f, -186f, 1000f), vec3<f32>(416f, -1588f, 1080f), vec3<f32>(968f, -2179f, -718f), vec3<f32>(-711f, -1316f, 1108f), vec3<f32>(-1000f, -465f, 447f), vec3<f32>(585f, 1667f, 1641f), vec3<f32>(-1000f, 1279f, 674f), vec3<f32>(1000f, -479f, -257f), vec3<f32>(-1005f, 1000f, 1462f), vec3<f32>(-182f, -1000f, 1000f));

var<private> global1: array<i32, 12> = array<i32, 12>(-1i, 0i, 30588i, i32(-2147483648), 1i, 19263i, -58511i, -11121i, 1i, 2147483647i, 0i, 0i);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec2<bool>, arg_1: u32, arg_2: Struct_1, arg_3: f32) -> i32 {
    let var_0 = all(select(vec3<bool>(arg_0.x && !arg_2.c.x, arg_2.c.x, true && arg_0.x), !(!select(vec3<bool>(arg_0.x, true, arg_0.x), vec3<bool>(false, arg_0.x, arg_0.x), arg_2.c.x)), select(select(!vec3<bool>(false, arg_0.x, true), vec3<bool>(false, arg_2.c.x, false), select(vec3<bool>(arg_2.c.x, true, arg_0.x), vec3<bool>(arg_0.x, false, true), vec3<bool>(arg_0.x, arg_2.c.x, arg_0.x))), !select(vec3<bool>(true, false, false), vec3<bool>(arg_0.x, arg_2.c.x, arg_0.x), vec3<bool>(arg_2.c.x, true, arg_2.c.x)), all(vec2<bool>(true, arg_2.c.x)))));
    global1 = array<i32, 12>();
    let var_1 = abs(~u_input.b.x);
    let var_2 = abs(arg_2.d);
    var var_3 = vec3<i32>(-_wgslsmith_sub_i32(firstTrailingBit(firstTrailingBit(-60418i)), -_wgslsmith_clamp_i32(arg_2.a.x, global1[_wgslsmith_index_u32(arg_2.d.x, 12u)], -2147483647i)), max(_wgslsmith_sub_i32(_wgslsmith_mod_i32(arg_2.a.x, -314i) << (select(arg_1, arg_1, arg_0.x) % 32u), firstTrailingBit(1i)), max(arg_2.a.x, min(-18821i, max(arg_2.a.x, -29840i)))), arg_2.a.x);
    return ~var_3.x;
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: u32, arg_3: Struct_1) -> bool {
    let var_0 = ~41532u;
    global1 = array<i32, 12>();
    var var_1 = u_input.a;
    global1 = array<i32, 12>();
    var var_2 = Struct_2(~(~(-max(arg_1, arg_1))), arg_3, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-494f)))))));
    return any(!arg_3.c);
}

fn func_2(arg_0: vec4<bool>) -> vec2<bool> {
    var var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(762f, -131f, false)), _wgslsmith_f_op_f32(f32(-1f) * -1230f)) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-284f, _wgslsmith_f_op_f32(max(-789f, -278f)))))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(665f, -919f), vec2<f32>(1790f, 639f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-315f, -1726f))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-535f, -777f), vec2<f32>(2537f, 1041f), vec2<bool>(var_0.x, var_0.x))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(264f, -1712f) - vec2<f32>(-282f, -605f))))));
    var_0 = !vec4<bool>(arg_0.x && true, !(global1[_wgslsmith_index_u32(u_input.b.x, 12u)] != (44397i | u_input.d.x)), true, func_4(var_1.x < var_1.x, func_3(vec2<bool>(false, false), u_input.a, Struct_1(vec2<i32>(-18813i, 5321i), vec4<u32>(u_input.a, u_input.c.x, u_input.a, 0u), var_0.wy, vec3<u32>(u_input.a, u_input.a, 3031u)), -908f), ~14321u, Struct_1(u_input.d.xx, u_input.c, var_0.yy, u_input.b.wzw)) | true);
    let var_2 = select(_wgslsmith_mod_vec4_i32(select(_wgslsmith_mult_vec4_i32(-vec4<i32>(1i, u_input.d.x, 1i, 9268i), _wgslsmith_sub_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(u_input.a, 12u)], 22300i, -8049i, -1i), vec4<i32>(-2147483647i, -44117i, -1i, u_input.d.x))), select(vec4<i32>(global1[_wgslsmith_index_u32(u_input.b.x, 12u)], 2147483647i, u_input.d.x, -2147483647i), select(vec4<i32>(global1[_wgslsmith_index_u32(4294967295u, 12u)], 1i, global1[_wgslsmith_index_u32(1u, 12u)], -9395i), vec4<i32>(0i, global1[_wgslsmith_index_u32(u_input.b.x, 12u)], -3273i, 0i), vec4<bool>(false, arg_0.x, true, true)), var_0.x), all(arg_0)), _wgslsmith_sub_vec4_i32(~(~vec4<i32>(global1[_wgslsmith_index_u32(4294967295u, 12u)], u_input.d.x, -1i, global1[_wgslsmith_index_u32(u_input.c.x, 12u)])), vec4<i32>(-1i) * -vec4<i32>(-2147483647i, global1[_wgslsmith_index_u32(u_input.b.x, 12u)], -36083i, 1i))), vec4<i32>(countOneBits(abs(global1[_wgslsmith_index_u32(~35210u, 12u)])), _wgslsmith_sub_i32(~0i, abs(global1[_wgslsmith_index_u32(65943u, 12u)])), func_3(select(!arg_0.xx, vec2<bool>(true, false), !vec2<bool>(true, arg_0.x)), _wgslsmith_add_u32(u_input.c.x << (28517u % 32u), 1u), Struct_1(u_input.d.xx, vec4<u32>(58973u, u_input.c.x, u_input.b.x, 18795u), select(vec2<bool>(true, arg_0.x), var_0.xy, true), _wgslsmith_add_vec3_u32(vec3<u32>(0u, u_input.c.x, u_input.a), vec3<u32>(u_input.a, u_input.b.x, 111961u))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-602f))))), _wgslsmith_mult_i32(~(-20413i) >> (reverseBits(u_input.c.x) % 32u), global1[_wgslsmith_index_u32(70661u, 12u)])), true);
    var var_3 = var_2.xw;
    return select(!var_0.yz, select(arg_0.wz, select(vec2<bool>(var_1.x >= var_1.x, all(arg_0)), select(!vec2<bool>(var_0.x, var_0.x), arg_0.yx, global1[_wgslsmith_index_u32(1u, 12u)] == 0i), vec2<bool>(select(arg_0.x, true, arg_0.x), false)), arg_0.x), var_0.wy);
}

fn func_1() -> Struct_2 {
    let var_0 = ~u_input.c.x;
    var var_1 = Struct_1(_wgslsmith_mult_vec2_i32(reverseBits(vec2<i32>(60756i, 0i << (u_input.a % 32u))), ~(_wgslsmith_mult_vec2_i32(u_input.d.yz, u_input.d.yy) & vec2<i32>(-2147483647i, global1[_wgslsmith_index_u32(var_0, 12u)]))), u_input.c, select(!select(vec2<bool>(true, true), func_2(vec4<bool>(false, true, true, true)), vec2<bool>(false, false)), !vec2<bool>(any(vec4<bool>(true, false, true, false)), any(vec4<bool>(true, false, true, true))), select(vec2<bool>(true, true), select(vec2<bool>(true, true), func_2(vec4<bool>(true, true, true, true)), vec2<bool>(true, true)), !select(vec2<bool>(false, false), vec2<bool>(false, true), false))), vec3<u32>(~_wgslsmith_sub_u32(~0u, ~u_input.a), _wgslsmith_dot_vec3_u32(u_input.b.yyx, ~countOneBits(u_input.c.yxw)), u_input.a));
    var var_2 = Struct_1(_wgslsmith_div_vec2_i32(var_1.a, -(u_input.d.yy & u_input.d.yx)) << (~reverseBits(var_1.b.xz) % vec2<u32>(32u)), vec4<u32>(abs(var_0), ~1u, 0u, 4294967295u), vec2<bool>(false, true), u_input.b.wxw);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -415f));
    var var_4 = (var_1.d.x > ~(~_wgslsmith_div_u32(u_input.a, var_1.b.x))) || !any(select(vec3<bool>(false, false, false), select(vec3<bool>(true, var_2.c.x, false), vec3<bool>(var_2.c.x, var_1.c.x, var_1.c.x), var_2.c.x), vec3<bool>(var_2.c.x, var_1.c.x, var_1.c.x)));
    return Struct_2(2147483647i, Struct_1(vec2<i32>(global1[_wgslsmith_index_u32(4294967295u, 12u)], select(~(-1i), 34001i, false)), ~min(reverseBits(var_1.b), var_1.b), vec2<bool>(true, false), var_2.d), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(var_3 - -291f))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 12>();
    global1 = array<i32, 12>();
    var var_0 = Struct_2(2527i, Struct_1(u_input.d.zx | u_input.d.xx, _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 1u, ~u_input.c.x, ~1u), abs(vec4<u32>(0u, u_input.b.x, u_input.a, u_input.c.x))), vec2<bool>(true, true), u_input.b.yzy), _wgslsmith_f_op_f32(487f - _wgslsmith_f_op_f32(-195f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1277f, -1355f))))));
    var var_1 = func_1();
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(632f, 300f) - vec2<f32>(122f, -1529f)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0.c, var_0.c))))))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(u_input.b.x ^ _wgslsmith_mult_u32(var_1.b.d.x, 14922u))), _wgslsmith_add_vec2_i32(-_wgslsmith_sub_vec2_i32(var_0.b.a ^ u_input.d.xy, var_1.b.a), -func_1().b.a), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-func_1().c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1158f)))));
}

