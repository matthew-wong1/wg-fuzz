struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: f32,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 14> = array<Struct_2, 14>(Struct_2(-1458f, 8699u, Struct_1(-1046f, vec2<u32>(94117u, 4015u), 1360f), 0i), Struct_2(450f, 34782u, Struct_1(1626f, vec2<u32>(46803u, 0u), 166f), i32(-2147483648)), Struct_2(-1505f, 301u, Struct_1(514f, vec2<u32>(55813u, 4294967295u), 994f), 2147483647i), Struct_2(-1364f, 4294967295u, Struct_1(2087f, vec2<u32>(23344u, 0u), -1000f), -88626i), Struct_2(205f, 1u, Struct_1(-1966f, vec2<u32>(39155u, 16148u), -954f), 0i), Struct_2(1086f, 12153u, Struct_1(1889f, vec2<u32>(4294967295u, 0u), -2159f), -15868i), Struct_2(-1000f, 75641u, Struct_1(-1046f, vec2<u32>(1u, 0u), -700f), 2147483647i), Struct_2(1000f, 37886u, Struct_1(564f, vec2<u32>(4294967295u, 31973u), 1000f), -19609i), Struct_2(1199f, 4294967295u, Struct_1(1495f, vec2<u32>(4294967295u, 43355u), -1948f), 0i), Struct_2(747f, 28789u, Struct_1(-612f, vec2<u32>(4294967295u, 78944u), -1192f), 2147483647i), Struct_2(-238f, 65845u, Struct_1(-488f, vec2<u32>(4294967295u, 49964u), -642f), 11664i), Struct_2(-273f, 4692u, Struct_1(1000f, vec2<u32>(1u, 0u), -1000f), -1i), Struct_2(-1031f, 15503u, Struct_1(-1000f, vec2<u32>(68063u, 44418u), 1601f), -14926i), Struct_2(1425f, 4294967295u, Struct_1(606f, vec2<u32>(0u, 28981u), -1281f), 0i));

var<private> global1: bool = false;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: i32, arg_1: Struct_3) -> vec2<bool> {
    let var_0 = Struct_2(637f, u_input.b.x, arg_1.a.c, _wgslsmith_mod_i32(~(-13612i), arg_1.a.d));
    let var_1 = u_input.b.x;
    let var_2 = vec3<i32>(_wgslsmith_sub_i32(-1i, arg_0), -332i, _wgslsmith_mult_i32(countOneBits(-(i32(-1i) * -42204i)), abs(arg_1.a.d)));
    var var_3 = !all(vec2<bool>(true, _wgslsmith_f_op_f32(var_0.c.c + 399f) != 680f));
    var var_4 = 1f;
    return select(!vec2<bool>(all(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), false)), true), vec2<bool>(true, all(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true)))), true);
}

fn func_2(arg_0: Struct_3) -> bool {
    let var_0 = ~abs(_wgslsmith_sub_vec4_i32(u_input.c & u_input.a, u_input.a) | u_input.a);
    global1 = true;
    global0 = array<Struct_2, 14>();
    global0 = array<Struct_2, 14>();
    let var_1 = -vec3<i32>(_wgslsmith_mod_i32(~_wgslsmith_add_i32(arg_0.a.d, 2147483647i), u_input.a.x), u_input.c.x, 2147483647i);
    return any(vec3<bool>(4294967295u < u_input.b.x, all(func_3(arg_0.a.d, Struct_3(global0[_wgslsmith_index_u32(20813u, 14u)]))) & (var_0.x >= var_0.x), false));
}

fn func_1(arg_0: bool, arg_1: Struct_3) -> f32 {
    global1 = true || !any(vec4<bool>(!arg_0, false, func_2(arg_1), true));
    let var_0 = select(!select(!vec2<bool>(arg_0, false), vec2<bool>(true, 0i > u_input.a.x), true), vec2<bool>(all(vec2<bool>(arg_0, true)), -75966i <= -(arg_1.a.d ^ u_input.a.x)), !arg_0);
    global1 = var_0.x;
    var var_1 = 0u;
    global1 = !all(!vec4<bool>(any(var_0), arg_0, arg_0, select(arg_0, arg_0, false)));
    return _wgslsmith_f_op_f32(f32(-1f) * -453f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_i32(4417i, max(-1042i, firstTrailingBit(23033i)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_1(false, Struct_3(global0[_wgslsmith_index_u32(4294967295u, 14u)]))))))));
    var var_2 = Struct_3(Struct_2(-1000f, firstTrailingBit(~66451u), Struct_1(_wgslsmith_f_op_f32(func_1(any(vec2<bool>(true, true)), Struct_3(Struct_2(var_1, u_input.b.x, Struct_1(var_1, u_input.b.yy, var_1), 0i)))), vec2<u32>(1u, 72541u ^ u_input.b.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(-u_input.c, -u_input.a), ~(vec4<i32>(2147483647i, 0i, var_0, u_input.a.x) << (u_input.b % vec4<u32>(32u))))));
    global0 = array<Struct_2, 14>();
    let var_3 = vec4<u32>(~var_2.a.b, reverseBits(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 7867u, 5373u, u_input.b.x), u_input.b))), ~(~1u), reverseBits(0u));
    var_2 = Struct_3(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-218f, var_1) * _wgslsmith_f_op_f32(-var_1))), _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, var_3.x, var_3.x, 0u), vec4<u32>(~var_2.a.b, var_3.x, ~1u, var_2.a.b >> (55380u % 32u))), var_2.a.c, var_2.a.d));
    let var_4 = u_input.a.xx;
    let var_5 = any(!vec4<bool>(true, all(vec4<bool>(false, true, false, false)), all(vec3<bool>(false, true, false)), true)) && func_2(Struct_3(var_2.a));
    let x = u_input.a;
    s_output = StorageBuffer(-507f, vec3<i32>(var_0, 1i, var_4.x));
}

