struct Struct_1 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec3<u32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
}

struct Struct_5 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec3<f32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 11> = array<u32, 11>(1u, 1u, 0u, 59788u, 0u, 61572u, 9813u, 15474u, 24871u, 12929u, 20463u);

var<private> global1: i32;

var<private> global2: vec2<u32>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_4, arg_2: Struct_2) -> i32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a, arg_1.a, arg_1.a) + vec3<f32>(413f, 1799f, arg_1.a))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(783f, arg_1.a, arg_1.a))), vec3<f32>(_wgslsmith_f_op_f32(arg_1.a + 1538f), arg_1.a, -190f), select(arg_2.a, select(vec3<bool>(false, arg_1.b.a.x, arg_2.a.x), arg_1.b.a, vec3<bool>(false, true, arg_1.b.a.x)), arg_2.a.x)))), arg_2.a));
    let var_1 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_1.a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1.a, var_0.x, true))))), -1131f)));
    let var_2 = all(vec3<bool>(any(select(vec4<bool>(arg_2.a.x, true, false, arg_2.a.x), select(vec4<bool>(arg_1.b.a.x, arg_1.b.a.x, false, false), vec4<bool>(arg_1.b.a.x, false, true, false), vec4<bool>(arg_1.b.a.x, false, arg_2.a.x, false)), vec4<bool>(true, arg_1.b.a.x, false, arg_2.a.x))), _wgslsmith_f_op_f32(select(arg_1.a, -1053f, true)) != _wgslsmith_f_op_f32(1979f + _wgslsmith_f_op_f32(step(arg_1.a, var_0.x))), true & !arg_2.a.x));
    var var_3 = any(!select(select(arg_2.a.zx, arg_2.a.yy, any(vec4<bool>(var_2, arg_1.b.a.x, arg_1.b.a.x, var_2))), !vec2<bool>(true, var_2), vec2<bool>(arg_2.a.x & arg_2.a.x, all(arg_1.b.a.yy))));
    global2 = vec2<u32>(global2.x, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~0u, global2.x, ~(4294967295u << (abs(u_input.b.x) % 32u))), 11u)]);
    return 2147483647i;
}

fn func_2(arg_0: i32, arg_1: vec2<i32>, arg_2: vec4<u32>) -> bool {
    var var_0 = arg_2;
    return (arg_1.x > func_3(arg_1, Struct_4(_wgslsmith_f_op_f32(-1543f * 473f), Struct_2(vec3<bool>(true, false, false))), Struct_2(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), false)))) || !(!all(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), true)));
}

fn func_1(arg_0: vec2<i32>) -> Struct_1 {
    var var_0 = all(select(vec3<bool>(!any(vec3<bool>(false, false, false)), func_2(~0i, -arg_0, abs(vec4<u32>(global2.x, global0[_wgslsmith_index_u32(4294967295u, 11u)], 4294967295u, 1u))), false), vec3<bool>(true, true, true), (-arg_0.x != _wgslsmith_add_i32(-28547i, arg_0.x)) && false));
    var_0 = func_2(-_wgslsmith_sub_i32(-35314i, i32(-1i) * -u_input.c), vec2<i32>(28482i, func_3(arg_0, Struct_4(-1146f, Struct_2(vec3<bool>(false, false, true))), Struct_2(vec3<bool>(true, true, false)))), firstTrailingBit(~_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 23087u, 19870u, 65869u), max(vec4<u32>(1u, global2.x, global2.x, 1u), vec4<u32>(0u, 4294967295u, 4294967295u, 28749u)), select(vec4<u32>(global2.x, 0u, 0u, 0u), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 11u)], 11u)], global0[_wgslsmith_index_u32(u_input.b.x, 11u)], global0[_wgslsmith_index_u32(4294967295u, 11u)], 14405u), vec4<bool>(false, false, false, false)))));
    global0 = array<u32, 11>();
    let var_1 = _wgslsmith_add_u32(~110759u, ~global2.x);
    var var_2 = arg_0.x;
    return Struct_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-235f, 712f, 138f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(-888f)), -1000f, _wgslsmith_f_op_f32(floor(677f)))))), vec3<u32>(countOneBits(~var_1), ~max(~41491u, 50714u), reverseBits(~(~4532u))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-813f, -669f, -414f, 1426f) * vec4<f32>(-796f, -670f, 312f, 1367f)) * _wgslsmith_div_vec4_f32(vec4<f32>(-314f, 1937f, -2114f, 465f), vec4<f32>(399f, 1000f, -1302f, 203f))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1000f, -364f, -971f, 508f))), _wgslsmith_dot_vec4_i32(vec4<i32>(-25472i, arg_0.x, u_input.c, 1039i), vec4<i32>(1i, arg_0.x, 54674i, arg_0.x)) != ~(-1i))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-692f, 1086f, -1367f, -961f)))), !(!select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(max(vec4<u32>(~0u, _wgslsmith_add_u32(u_input.b.x, u_input.b.x), ~1u, global0[_wgslsmith_index_u32(~9013u, 11u)]), _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, global0[_wgslsmith_index_u32(1u, 11u)], 1u, global2.x), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global2.x, 11u)], 11u)], 21534u, 49638u, 29297u)), vec4<u32>(global2.x, 0u, 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 11u)], 11u)]))) << (vec4<u32>(_wgslsmith_div_u32(firstTrailingBit(3073u), ~global0[_wgslsmith_index_u32(4294967295u, 11u)]), global0[_wgslsmith_index_u32(0u, 11u)], global2.x, ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 11u)] ^ u_input.b.x, 11u)]) % vec4<u32>(32u)));
    var_0 = ~(~max(vec4<u32>(var_0.x, 1u, ~var_0.x, 1u), ~_wgslsmith_add_vec4_u32(vec4<u32>(1u, 0u, 1u, global2.x), vec4<u32>(86782u, global2.x, 59472u, global2.x))));
    var var_1 = func_1(~firstLeadingBit(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.c, u_input.c) & vec2<i32>(u_input.a, u_input.c), vec2<i32>(5463i, 34823i))));
    global2 = var_0.wz;
    let var_2 = Struct_4(_wgslsmith_f_op_f32(var_1.c.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1.c.x)) * 917f)), Struct_2(vec3<bool>(any(vec3<bool>(true, false, false)), any(vec2<bool>(true, true)), false)));
    let var_3 = !all(vec3<bool>(select(12930u, 1u, false) <= ~31170u, true, !var_2.b.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(~abs(~(~var_1.b.x)), _wgslsmith_f_op_vec2_f32(select(func_1(vec2<i32>(-44919i, ~u_input.c)).c.xy, vec2<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(278f - -258f)))), vec2<bool>(var_3, var_2.b.a.x))), var_1.a, vec4<u32>(_wgslsmith_mult_u32(1u, _wgslsmith_dot_vec4_u32(~vec4<u32>(42179u, 1u, u_input.b.x, var_1.b.x), ~vec4<u32>(1u, 44243u, u_input.b.x, 0u))), 0u, ~min(31840u | u_input.b.x, u_input.b.x), ~var_1.b.x));
}

