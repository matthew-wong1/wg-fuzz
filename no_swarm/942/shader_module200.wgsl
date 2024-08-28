struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: f32,
    d: vec4<i32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: bool,
    b: vec3<f32>,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: i32,
}

struct Struct_5 {
    a: f32,
    b: Struct_4,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<i32>,
    d: u32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 17> = array<vec3<f32>, 17>(vec3<f32>(1242f, 392f, 307f), vec3<f32>(1000f, -726f, -1000f), vec3<f32>(987f, 178f, -2525f), vec3<f32>(405f, -323f, 1000f), vec3<f32>(1250f, -231f, -893f), vec3<f32>(-939f, 1000f, -342f), vec3<f32>(-564f, 1586f, 167f), vec3<f32>(2175f, 426f, 1098f), vec3<f32>(-172f, -570f, 639f), vec3<f32>(1076f, -371f, 1101f), vec3<f32>(368f, 839f, -586f), vec3<f32>(-106f, 1000f, 832f), vec3<f32>(485f, 948f, -501f), vec3<f32>(-1973f, -1076f, -1572f), vec3<f32>(453f, -496f, 2089f), vec3<f32>(-2312f, -1000f, -201f), vec3<f32>(1489f, -201f, 2157f));

var<private> global1: array<vec4<bool>, 22> = array<vec4<bool>, 22>(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true));

var<private> global2: array<i32, 22>;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec2<i32>, arg_2: Struct_5, arg_3: bool) -> vec2<i32> {
    let var_0 = -arg_2.b.c.d;
    var var_1 = reverseBits(u_input.b) | ~0u;
    var var_2 = ~max(~(~692u), ~_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(u_input.c, u_input.c), u_input.c));
    let var_3 = 1u <= _wgslsmith_mod_u32(~(~u_input.c.x | 1u), u_input.c.x);
    var_2 = firstTrailingBit(select(arg_2.b.c.a.x, 37029u, any(!global1[_wgslsmith_index_u32(1u, 22u)])));
    return _wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, _wgslsmith_mod_i32(_wgslsmith_mod_i32(2147483647i, arg_2.b.d) << (0u % 32u), arg_2.b.d ^ global2[_wgslsmith_index_u32(0u, 22u)])), vec2<i32>(var_0.x, -1i), _wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_add_i32(firstLeadingBit(-18984i), firstLeadingBit(arg_2.b.a.d.x)), select(0i ^ u_input.a.x, ~(-41199i), u_input.c.x == 1u)), arg_1));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_2(Struct_1(~select(~u_input.c.zz, _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 1u), u_input.c.yy), vec2<bool>(true, true)), global2[_wgslsmith_index_u32(u_input.b, 22u)], _wgslsmith_f_op_f32(max(1816f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1205f)) - 946f))), vec4<i32>(u_input.a.x, _wgslsmith_dot_vec2_i32(func_3(vec3<bool>(false, true, false), u_input.a, Struct_5(-219f, Struct_4(Struct_1(vec2<u32>(1u, 7471u), u_input.a.x, 450f, vec4<i32>(global2[_wgslsmith_index_u32(u_input.c.x, 22u)], 12911i, 2147483647i, u_input.a.x), u_input.a.x), Struct_1(vec2<u32>(u_input.b, u_input.b), -14683i, -538f, vec4<i32>(-1i, -4509i, global2[_wgslsmith_index_u32(u_input.c.x, 22u)], u_input.a.x), -64616i), Struct_1(u_input.c.yz, u_input.a.x, 141f, vec4<i32>(u_input.a.x, 22662i, global2[_wgslsmith_index_u32(45098u, 22u)], -2441i), global2[_wgslsmith_index_u32(0u, 22u)]), -53992i), 1256f, false), false), -u_input.a), ~(~(-51833i)), 1i), 16734i), !all(vec2<bool>(true, true)));
    let var_1 = !vec2<bool>(false, all(vec2<bool>(var_0.a.a.x <= u_input.c.x, true)));
    var var_2 = _wgslsmith_sub_vec4_i32(firstLeadingBit(var_0.a.d), var_0.a.d);
    let var_3 = !all(var_1);
    let var_4 = var_0.a;
    return Struct_1(select(u_input.c.xy, _wgslsmith_mod_vec2_u32(vec2<u32>(var_0.a.a.x, u_input.b), abs(vec2<u32>(4294967295u, var_0.a.a.x))), !var_0.b) | _wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(abs(u_input.c.zx), var_0.a.a), vec2<u32>(12766u, ~1296u), ~(~u_input.c.zx)), reverseBits(-((i32(-1i) * -1i) >> (~var_0.a.a.x % 32u))), 155f, _wgslsmith_add_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(u_input.c.x, 22u)] << (11103u % 32u), 0i, u_input.a.x, 24093i) << (select(~vec4<u32>(var_4.a.x, 0u, 0u, 2233u), reverseBits(vec4<u32>(var_0.a.a.x, u_input.b, var_0.a.a.x, 30910u)), true) % vec4<u32>(32u)), vec4<i32>(var_0.a.e << ((0u << (var_0.a.a.x % 32u)) % 32u), _wgslsmith_dot_vec3_i32(var_0.a.d.zzw >> (vec3<u32>(4294967295u, 4404u, 1u) % vec3<u32>(32u)), reverseBits(var_0.a.d.wyz)), 1i, 0i)), 0i);
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: u32) -> Struct_4 {
    return Struct_4(func_2(), Struct_1(countOneBits(select(arg_1.a >> (vec2<u32>(arg_2, u_input.b) % vec2<u32>(32u)), ~vec2<u32>(arg_1.a.x, 1u), vec2<bool>(true, true))), func_3(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true))), firstTrailingBit(vec2<i32>(-1i, -2147483647i) << (arg_1.a % vec2<u32>(32u))), Struct_5(_wgslsmith_f_op_f32(select(-2017f, 837f, true)), Struct_4(arg_1, Struct_1(u_input.c.yx, arg_1.e, arg_1.c, arg_1.d, 23799i), Struct_1(vec2<u32>(arg_1.a.x, 1u), 9319i, -1024f, vec4<i32>(0i, global2[_wgslsmith_index_u32(1u, 22u)], global2[_wgslsmith_index_u32(arg_0, 22u)], global2[_wgslsmith_index_u32(69680u, 22u)]), global2[_wgslsmith_index_u32(arg_1.a.x, 22u)]), 36146i), arg_1.c, true), any(vec2<bool>(true, true))).x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-576f, -662f)))))), ~(-firstLeadingBit(arg_1.d)), -(i32(-1i) * -14824i)), func_2(), _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(arg_1.d, arg_1.d), _wgslsmith_sub_i32(1i, -61541i)));
}

fn func_1() -> Struct_5 {
    return Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2247f + -1095f))), func_4(~7964u, func_2(), ~(~(~u_input.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(1685f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-376f, 1382f)) - _wgslsmith_f_op_f32(round(984f))))), _wgslsmith_f_op_f32(f32(-1f) * -326f) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1174f * 1000f) * _wgslsmith_f_op_f32(select(-1870f, 972f, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<f32>, 17>();
    global0 = array<vec3<f32>, 17>();
    let var_0 = global1[_wgslsmith_index_u32(~u_input.b, 22u)];
    var var_1 = !vec2<bool>(!all(!vec4<bool>(var_0.x, var_0.x, var_0.x, true)), all(select(select(vec4<bool>(true, true, true, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), global1[_wgslsmith_index_u32(u_input.b, 22u)]), vec4<bool>(true, true, true, true), !global1[_wgslsmith_index_u32(8944u, 22u)])));
    let var_2 = func_1();
    let var_3 = var_2;
    var var_4 = Struct_2(func_2(), false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(var_2.c, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(557f - var_4.a.c)))), func_3(var_0.zxz, vec2<i32>(u_input.a.x, 1i), Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(-var_2.c)), func_1().b, func_2().c, var_2.b.c.a.x > _wgslsmith_clamp_u32(3697u, var_2.b.b.a.x, 5073u)), any(select(var_0.wx, var_0.xz, var_0.yz))).x, _wgslsmith_div_vec4_i32(-var_4.a.d, func_1().b.c.d), 38282u, vec4<u32>(var_4.a.a.x, 1u, 4294967295u, var_3.b.a.a.x));
}

