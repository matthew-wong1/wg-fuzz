struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: f32,
    c: i32,
    d: vec4<u32>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<vec4<i32>, 27> = array<vec4<i32>, 27>(vec4<i32>(36186i, 21021i, -6567i, 2147483647i), vec4<i32>(0i, -17057i, i32(-2147483648), -1i), vec4<i32>(13147i, 2147483647i, 1691i, -4377i), vec4<i32>(-1i, 23789i, 40891i, 2743i), vec4<i32>(-7428i, 11395i, 2147483647i, -21901i), vec4<i32>(54310i, -1i, 1i, 1i), vec4<i32>(2147483647i, i32(-2147483648), -35253i, -78904i), vec4<i32>(-19265i, i32(-2147483648), -1i, -5672i), vec4<i32>(61443i, 10133i, -19066i, 1i), vec4<i32>(4565i, -1i, 0i, 1i), vec4<i32>(-1i, 2147483647i, -1i, 2147483647i), vec4<i32>(i32(-2147483648), 7652i, i32(-2147483648), -41210i), vec4<i32>(i32(-2147483648), -6096i, 10410i, i32(-2147483648)), vec4<i32>(0i, -47494i, 1i, 8063i), vec4<i32>(2147483647i, 6101i, 26988i, 0i), vec4<i32>(i32(-2147483648), 1i, -33026i, 1i), vec4<i32>(i32(-2147483648), 1i, -7823i, 2147483647i), vec4<i32>(1i, i32(-2147483648), -35917i, 1i), vec4<i32>(-1i, 0i, -23324i, 38434i), vec4<i32>(-1i, -1i, 13307i, 2147483647i), vec4<i32>(1i, 31340i, -1i, 0i), vec4<i32>(i32(-2147483648), i32(-2147483648), 52752i, -1i), vec4<i32>(0i, 0i, 55024i, -14969i), vec4<i32>(-24894i, 1i, -67103i, i32(-2147483648)), vec4<i32>(2147483647i, -2075i, 51567i, 14211i), vec4<i32>(1i, -17601i, -48886i, -31502i), vec4<i32>(-44098i, -29754i, 2147483647i, -54926i));

var<private> global2: vec2<bool> = vec2<bool>(true, false);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<bool> {
    var var_0 = Struct_1(false);
    let var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(738f, 275f, -733f, 230f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(984f, 687f, 581f, 219f) * vec4<f32>(-912f, 1527f, 1220f, 653f))) * vec4<f32>(1f, 1f, 1f, 1f)), vec4<f32>(-378f, _wgslsmith_div_f32(758f, 597f), _wgslsmith_f_op_f32(-836f * _wgslsmith_f_op_f32(step(911f, 404f))), 1f), !vec4<bool>(all(vec2<bool>(false, false)), true, var_0.a, true))), 398f, -_wgslsmith_dot_vec2_i32(vec2<i32>(~2147483647i, -u_input.b.x), firstTrailingBit(-vec2<i32>(-60656i, u_input.b.x))), ~vec4<u32>(~u_input.a.x, global0.x ^ 1u, 19405u, ~countOneBits(1u)), -(firstTrailingBit(u_input.b) >> (~firstLeadingBit(vec3<u32>(16982u, 0u, 9452u)) % vec3<u32>(32u))));
    var var_2 = _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(select(u_input.a.wy, ~var_1.d.zw, vec2<bool>(false, all(vec4<bool>(false, global2.x, true, true)))), u_input.a.yw), _wgslsmith_mod_u32(0u, (~u_input.a.x >> ((global0.x | global0.x) % 32u)) << (~global0.x % 32u)));
    var var_3 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.x) * var_1.a.x)), !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b * var_1.b) + 669f) > _wgslsmith_f_op_f32(max(115f, var_1.a.x))), Struct_1(_wgslsmith_dot_vec4_i32(~global1[_wgslsmith_index_u32(4294967295u, 27u)], abs(vec4<i32>(-3755i, u_input.c, var_1.c, var_1.e.x))) < u_input.b.x));
    global1 = array<vec4<i32>, 27>();
    return vec4<bool>(var_0.a, true, false, var_0.a);
}

fn func_2(arg_0: Struct_3, arg_1: f32, arg_2: u32, arg_3: i32) -> vec4<bool> {
    global1 = array<vec4<i32>, 27>();
    global0 = arg_0.d.xz;
    var var_0 = Struct_1(all(!vec2<bool>(false, -343f <= arg_1)));
    var var_1 = select(func_3(), !(!vec4<bool>(any(vec2<bool>(global2.x, false)), true, global2.x, false)), vec4<bool>(var_0.a & false, false, true, all(vec2<bool>(var_0.a, global0.x < u_input.a.x))));
    global0 = select(~vec2<u32>(0u, arg_0.d.x), u_input.a.zx, true);
    return vec4<bool>(true, !(!select(true & var_1.x, arg_3 < u_input.b.x, all(var_1.zxx))), global2.x, any(func_3().xww) == (_wgslsmith_f_op_f32(f32(-1f) * -645f) != _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -521f)))));
}

fn func_1(arg_0: vec2<f32>) -> bool {
    let var_0 = ~_wgslsmith_div_vec4_u32(abs(min(u_input.a, ~vec4<u32>(13524u, u_input.a.x, 39605u, 87780u))), u_input.a);
    let var_1 = 26422u;
    global1 = array<vec4<i32>, 27>();
    let var_2 = vec4<bool>(false, any(select(select(select(vec4<bool>(false, global2.x, false, false), vec4<bool>(false, global2.x, global2.x, false), vec4<bool>(false, false, global2.x, true)), func_2(Struct_3(vec4<f32>(-1258f, arg_0.x, 1391f, -762f), arg_0.x, u_input.c, vec4<u32>(87185u, var_1, 4949u, 39344u), u_input.b), arg_0.x, global0.x, 2147483647i), global2.x), !vec4<bool>(global2.x, true, true, global2.x), any(!vec3<bool>(global2.x, false, true)))), any(func_3().wz), true);
    let var_3 = countOneBits(~u_input.a.x);
    return var_2.x;
}

fn func_4(arg_0: bool) -> Struct_3 {
    let var_0 = all(!vec2<bool>(1u > _wgslsmith_add_u32(global0.x, u_input.a.x), arg_0));
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(1519f, 1602f, arg_0)), -364f, -408f) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1347f, 513f, 217f))), vec3<f32>(-1009f, -280f, 829f))))));
    global0 = reverseBits(~(~(~abs(vec2<u32>(4294967295u, 0u)))));
    let var_2 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1527f, var_1.x), var_1.xx))) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, 823f) * vec2<f32>(-1000f, var_1.x)))))))));
    let var_3 = max(_wgslsmith_add_vec4_i32(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(global0.x, global0.x), 27u)], _wgslsmith_clamp_vec4_i32(~global1[_wgslsmith_index_u32(global0.x, 27u)], vec4<i32>(_wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(u_input.b.x, u_input.b.x, 2147483647i)), ~5819i, _wgslsmith_dot_vec4_i32(vec4<i32>(-18894i, u_input.b.x, u_input.c, u_input.c), global1[_wgslsmith_index_u32(global0.x, 27u)]), ~u_input.b.x), vec4<i32>(~u_input.c, ~0i, u_input.c, 0i))), global1[_wgslsmith_index_u32(~35264u, 27u)]);
    return Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -823f), _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), var_1.x)), -1000f, _wgslsmith_dot_vec2_i32(~u_input.b.xy, (vec2<i32>(u_input.b.x, 1i) << ((vec2<u32>(u_input.a.x, 25522u) ^ vec2<u32>(global0.x, global0.x)) % vec2<u32>(32u))) ^ vec2<i32>(469i, i32(-1i) * -1i)), u_input.a, select(vec3<i32>(~15430i >> (u_input.a.x % 32u), var_3.x, var_3.x), countOneBits(~_wgslsmith_add_vec3_i32(vec3<i32>(var_3.x, var_3.x, 0i), vec3<i32>(-33488i, var_3.x, 2147483647i))), !(!vec3<bool>(true, var_0, arg_0))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(select(!func_1(vec2<f32>(1f, 1f)), func_3().x, (all(vec2<bool>(global2.x, global2.x)) || !global2.x) == true));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1065f);
    var var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-296f, var_0.b, global2.x))), global2.x == (!all(vec2<bool>(false, false)) & false), Struct_1(func_2(Struct_3(var_0.a, _wgslsmith_f_op_f32(f32(-1f) * -1569f), 33078i, select(u_input.a, vec4<u32>(11513u, 0u, var_0.d.x, 1u), vec4<bool>(false, true, true, global2.x)), min(vec3<i32>(49710i, 39381i, 2147483647i), vec3<i32>(var_0.c, var_0.c, var_0.c))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1, -1415f)), 122828u, 2147483647i).x));
    global2 = select(vec2<bool>(var_2.b, abs(var_0.e.x) <= -41458i), func_3().wy, vec2<bool>(any(vec3<bool>(global2.x, true, false)), !global2.x));
    var var_3 = 539f;
    var var_4 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1980f, -1476f)), global2.x)) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a) - var_2.a)))), var_2.c.a, var_2.c);
    let x = u_input.a;
    s_output = StorageBuffer(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, reverseBits(_wgslsmith_sub_u32(u_input.a.x, var_0.d.x)), 0u), vec3<u32>(_wgslsmith_div_u32(4294967295u, global0.x), _wgslsmith_mult_u32(u_input.a.x, 0u), _wgslsmith_dot_vec2_u32(var_0.d.xw, vec2<u32>(1u, 108057u))) & _wgslsmith_mult_vec3_u32(var_0.d.zxy ^ u_input.a.yzy, vec3<u32>(15472u, 4294967295u, global0.x))), 27u)], var_0.a, _wgslsmith_clamp_i32(2147483647i & var_0.c, firstTrailingBit(select(31101i, -1i, global2.x)), firstTrailingBit(-2147483647i)));
}

