struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
    c: f32,
    d: vec4<i32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 31> = array<vec3<f32>, 31>(vec3<f32>(-357f, -1176f, -279f), vec3<f32>(-905f, -2042f, 1843f), vec3<f32>(-473f, -2365f, 273f), vec3<f32>(563f, -1046f, -1037f), vec3<f32>(1000f, 283f, 868f), vec3<f32>(367f, 1000f, -2407f), vec3<f32>(448f, 774f, 844f), vec3<f32>(-552f, -977f, -1673f), vec3<f32>(267f, -1000f, 1000f), vec3<f32>(-211f, 867f, -383f), vec3<f32>(-1644f, -396f, -656f), vec3<f32>(678f, -2058f, 2159f), vec3<f32>(-761f, 358f, 1000f), vec3<f32>(691f, 892f, 795f), vec3<f32>(-965f, 270f, -693f), vec3<f32>(-1439f, -2297f, -411f), vec3<f32>(1979f, 379f, -1000f), vec3<f32>(1009f, -415f, 1000f), vec3<f32>(-423f, 853f, 834f), vec3<f32>(-1816f, 129f, 1202f), vec3<f32>(944f, 1656f, 879f), vec3<f32>(635f, -1371f, 363f), vec3<f32>(-357f, -2456f, -707f), vec3<f32>(-120f, -1440f, -1084f), vec3<f32>(407f, -1561f, -1000f), vec3<f32>(-1034f, -872f, 960f), vec3<f32>(-528f, 940f, 488f), vec3<f32>(118f, 253f, -640f), vec3<f32>(-517f, -789f, 304f), vec3<f32>(-1000f, 246f, -1278f), vec3<f32>(512f, -1406f, 648f));

var<private> global1: vec4<bool>;

var<private> global2: vec3<u32> = vec3<u32>(85349u, 56532u, 40989u);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<f32>, arg_1: i32, arg_2: vec3<u32>) -> bool {
    var var_0 = ~(~max(~vec4<u32>(47853u, arg_2.x, arg_2.x, arg_2.x), vec4<u32>(global2.x, arg_2.x, u_input.c.x, 52375u)) & firstLeadingBit(vec4<u32>(~4294967295u, firstLeadingBit(32027u), u_input.b, 104009u)));
    var var_1 = vec2<u32>(firstLeadingBit(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(45640u, 1u, global2.x)), firstLeadingBit(var_0.xzw)), var_0.x >> (var_0.x % 32u))), global2.x);
    let var_2 = arg_2.zz;
    let var_3 = Struct_4(Struct_1(!(!(false != global1.x))));
    var var_4 = _wgslsmith_f_op_vec3_f32(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_2.x ^ var_1.x, 7138u), 31u)] - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(global0[_wgslsmith_index_u32(max(var_1.x, 1u), 31u)] * global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, var_1.x), 31u)]), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(34961u, 1841u), 31u)])), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(68185u, 31u)])))));
    return true;
}

fn func_2(arg_0: vec3<i32>) -> u32 {
    global1 = vec4<bool>(true, true, false, all(vec3<bool>(true, true, all(!vec4<bool>(global1.x, global1.x, false, true)))));
    var var_0 = true;
    global1 = select(select(select(vec4<bool>(false == global1.x, true, global1.x, !global1.x), !(!vec4<bool>(global1.x, true, global1.x, false)), all(select(global1.xyy, global1.www, false))), vec4<bool>(all(global1.wzx), -arg_0.x >= _wgslsmith_add_i32(arg_0.x, u_input.d), true, true), vec4<bool>(func_3(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-2258f, 1031f))), u_input.a | -12555i, vec3<u32>(u_input.c.x, u_input.c.x, 12302u) << (vec3<u32>(44409u, 25954u, 2301u) % vec3<u32>(32u))), true, !global1.x && false, !global1.x & true)), select(vec4<bool>(false, true, true, true), !select(!vec4<bool>(global1.x, false, false, true), !vec4<bool>(global1.x, global1.x, global1.x, global1.x), global1.x), vec4<bool>(any(select(vec4<bool>(true, false, global1.x, false), vec4<bool>(false, true, true, false), false)), all(!global1.yxy), true & any(vec4<bool>(global1.x, global1.x, true, global1.x)), true)), global1.x);
    var var_1 = global1.x;
    let var_2 = select(_wgslsmith_mod_vec2_i32(arg_0.yy << (vec2<u32>(reverseBits(4294967295u), _wgslsmith_div_u32(global2.x, 29705u)) % vec2<u32>(32u)), arg_0.zy), max(_wgslsmith_clamp_vec2_i32(arg_0.zy, _wgslsmith_sub_vec2_i32(~arg_0.xx, arg_0.xy ^ vec2<i32>(1i, 37130i)), -arg_0.xx), ~(reverseBits(arg_0.zy) & (arg_0.zz | vec2<i32>(arg_0.x, u_input.a)))), !all(select(vec3<bool>(global1.x, true, false), global1.wzx, global1.x)) & global1.x);
    return 45252u;
}

fn func_1(arg_0: vec2<f32>, arg_1: i32) -> Struct_1 {
    global2 = vec3<u32>(_wgslsmith_mult_u32(~(~25440u << (u_input.b % 32u)), ~u_input.c.x), max(_wgslsmith_dot_vec3_u32(vec3<u32>(func_2(vec3<i32>(u_input.d, u_input.d, arg_1)), ~0u, select(1u, u_input.b, global1.x)), ~vec3<u32>(1u, 82411u, 53798u) << (select(vec3<u32>(global2.x, 15628u, 4294967295u), vec3<u32>(53845u, u_input.c.x, u_input.c.x), false) % vec3<u32>(32u))), u_input.c.x), ~(~u_input.c.x >> (_wgslsmith_clamp_u32(~u_input.b, ~global2.x, reverseBits(u_input.b)) % 32u)));
    var var_0 = ~global2.x;
    let var_1 = vec2<u32>(~0u, u_input.c.x);
    global1 = vec4<bool>(true, any(global1.xzw) || (~u_input.d <= -9746i), global1.x, global1.x);
    var_0 = _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, ~var_1.x, var_1.x, ~0u) ^ ~vec4<u32>(~var_1.x, _wgslsmith_add_u32(0u, u_input.b), abs(1u), firstTrailingBit(var_1.x)), reverseBits(vec4<u32>(~var_1.x, global2.x, global2.x, firstTrailingBit(u_input.c.x)) | (vec4<u32>(global2.x, global2.x, 10563u, 1u) | vec4<u32>(var_1.x, 20402u, var_1.x, global2.x))));
    return Struct_1(global1.x);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    global1 = !select(!select(vec4<bool>(arg_2.a, arg_2.a, arg_0.a, arg_2.a), vec4<bool>(arg_1.a, true, global1.x, true), !vec4<bool>(arg_2.a, global1.x, false, arg_2.a)), !select(select(vec4<bool>(arg_0.a, arg_0.a, global1.x, true), vec4<bool>(arg_1.a, false, arg_2.a, arg_0.a), false), vec4<bool>(true, global1.x, true, false), vec4<bool>(true, true, true, true)), func_3(vec2<f32>(_wgslsmith_f_op_f32(floor(396f)), -1329f), u_input.a, vec3<u32>(u_input.c.x << (u_input.c.x % 32u), 7042u, global2.x)));
    let var_0 = vec2<bool>(!all(select(global1.zz, !global1.wz, arg_0.a && false)), false);
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = ~vec3<u32>(~global2.x, ~1u & u_input.b, 69245u);
    let var_0 = ~_wgslsmith_add_vec2_u32(global2.xx, u_input.c);
    let var_1 = vec3<u32>(50091u | var_0.x, _wgslsmith_sub_u32(func_4(Struct_1(global1.x), Struct_1(global1.x), func_1(vec2<f32>(675f, -252f), 19658i)), _wgslsmith_add_u32(~1u, abs(global2.x))) ^ ~1u, 65816u);
    var var_2 = Struct_4(func_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(3006f, -421f) - vec2<f32>(-1000f, -1873f)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(299f, 289f), vec2<f32>(-1297f, 1320f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -186f))), true)), max(_wgslsmith_clamp_i32(u_input.a, u_input.a, u_input.d) | u_input.d, abs(10531i))));
    var var_3 = Struct_3(vec4<u32>(abs(~u_input.b), ~_wgslsmith_add_u32(1u, abs(var_0.x)), 50454u, var_1.x), Struct_2(Struct_1(global1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1203f - 186f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1862f + 121f) + -2043f) + _wgslsmith_f_op_f32(max(255f, -1184f)))), abs(reverseBits(~vec4<i32>(u_input.a, u_input.d, u_input.a, u_input.d)) | vec4<i32>(-2013i, _wgslsmith_mult_i32(u_input.a, 1i), u_input.a, _wgslsmith_div_i32(u_input.a, 0i))));
    var var_4 = _wgslsmith_f_op_f32(select(186f, -201f, _wgslsmith_mod_i32(u_input.d, u_input.a & reverseBits(u_input.d)) > _wgslsmith_dot_vec4_i32(~vec4<i32>(var_3.d.x, 2147483647i, u_input.a, -12890i), -var_3.d)));
    let x = u_input.a;
    s_output = StorageBuffer(-abs(vec3<i32>(var_3.d.x, u_input.a, var_3.d.x) ^ vec3<i32>(u_input.a, var_3.d.x, -1i)) << (vec3<u32>(~global2.x, _wgslsmith_clamp_u32(0u | var_0.x, firstTrailingBit(104054u), countOneBits(u_input.c.x)), 31191u) % vec3<u32>(32u)), select(~_wgslsmith_sub_u32(1u, var_1.x), 4294967295u, true));
}

