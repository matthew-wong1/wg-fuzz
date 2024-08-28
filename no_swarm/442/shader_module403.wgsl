struct Struct_1 {
    a: bool,
    b: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<u32>,
    c: f32,
    d: vec3<f32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: Struct_1,
    d: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: u32,
    d: vec3<i32>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: vec4<u32> = vec4<u32>(0u, 16105u, 1u, 4294967295u);

var<private> global2: vec3<bool> = vec3<bool>(false, false, false);

var<private> global3: vec3<f32> = vec3<f32>(860f, -636f, 763f);

var<private> global4: Struct_1;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1(arg_0: i32) -> vec3<bool> {
    return vec3<bool>(global4.a, global2.x, global4.a);
}

fn func_3() -> vec3<i32> {
    let var_0 = -abs(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, global0.x, global0.x), global0.zyw ^ global4.b.xxw), vec3<i32>(53123i, _wgslsmith_div_i32(global4.b.x, global4.b.x), -2147483647i)));
    global0 = max(_wgslsmith_clamp_vec4_i32(-global4.b, ~global4.b, _wgslsmith_add_vec4_i32(vec4<i32>(u_input.c.x, -24352i, 2147483647i, -2147483647i), vec4<i32>(global4.b.x, var_0, global0.x, global4.b.x))) & ~vec4<i32>(max(var_0, var_0), -20428i, u_input.c.x, min(0i, var_0)), vec4<i32>(firstLeadingBit(var_0 >> (~78493u % 32u)), -(firstTrailingBit(18923i) | u_input.c.x), global4.b.x, (abs(u_input.c.x) | ~0i) << ((global1.x | 54847u) % 32u)));
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global3.x), global3.x, global3.x, _wgslsmith_f_op_f32(-global3.x)) - vec4<f32>(global3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1548f * -919f)) + 531f), _wgslsmith_f_op_f32(global3.x * _wgslsmith_f_op_f32(-global3.x)), -129f));
    global0 = global4.b | _wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(global0.x, global4.b.x, u_input.c.x, u_input.c.x), vec4<i32>(6524i, global4.b.x, global0.x, var_0)) & select(global4.b, -global4.b, select(vec4<bool>(global4.a, true, global2.x, global4.a), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, global4.a))), global4.b);
    global1 = max(vec4<u32>((global1.x | u_input.b.x) | ~u_input.b.x, ~55944u, ~u_input.a.x, ~global1.x) & firstLeadingBit(~max(vec4<u32>(4294967295u, global1.x, u_input.a.x, 2607u), vec4<u32>(u_input.b.x, 1u, global1.x, global1.x))), vec4<u32>(select(u_input.a.x & 1u, abs(4294967295u), true), _wgslsmith_mod_u32(global1.x, 4294967295u), countOneBits(global1.x), 16054u) << (~vec4<u32>(max(4294967295u, global1.x), 4294967295u, ~0u, _wgslsmith_mod_u32(u_input.a.x, u_input.a.x)) % vec4<u32>(32u)));
    return ~vec3<i32>(-(i32(-1i) * -20515i), abs(20018i), ~min(u_input.c.x, -1i) ^ _wgslsmith_add_i32(~u_input.c.x, var_0));
}

fn func_4(arg_0: Struct_4) -> f32 {
    let var_0 = vec3<bool>(any(!vec4<bool>(any(vec3<bool>(global4.a, arg_0.e.x, false)), arg_0.e.x, false, false)), func_1(8868i).x, false);
    let var_1 = -2147483647i << (global1.x % 32u);
    var var_2 = arg_0.a;
    var_2 = Struct_3(vec2<u32>(1u, global1.x), select(var_2.b | vec4<u32>(~0u, _wgslsmith_mult_u32(var_2.b.x, var_2.d), global1.x, _wgslsmith_mod_u32(var_2.b.x, 0u)), var_2.b, global2.x), Struct_1(!all(vec4<bool>(global2.x, var_0.x, false, global4.a)), _wgslsmith_add_vec4_i32(arg_0.a.c.b, ~global4.b)), 0u);
    var_2 = Struct_3(_wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(abs(var_2.a), u_input.b), firstLeadingBit(abs(arg_0.a.b.wy) ^ var_2.b.yx)), abs(vec4<u32>(countOneBits(u_input.a.x), u_input.b.x, ~1u, arg_0.c)), arg_0.a.c, ~0u);
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-1093f)), arg_0.b));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_4, arg_2: u32) -> u32 {
    global1 = arg_1.a.b;
    var var_0 = arg_1;
    let var_1 = Struct_2(_wgslsmith_f_op_f32(func_4(Struct_4(arg_1.a, var_0.b, 0u, -func_3(), vec2<bool>(global4.a, !global2.x)))), global1.zzz, _wgslsmith_f_op_f32(exp2(global3.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1000f, arg_1.b)) * _wgslsmith_f_op_f32(-918f - 362f)), _wgslsmith_f_op_f32(-arg_1.b), _wgslsmith_f_op_f32(func_4(arg_1))) + arg_0.d));
    var var_2 = vec3<u32>(0u, 4294967295u, _wgslsmith_mod_u32(var_1.b.x, ~abs(global1.x)));
    global2 = vec3<bool>(false, _wgslsmith_f_op_f32(select(182f, arg_0.a, any(func_1(global4.b.x).xz))) == var_1.c, global3.x > _wgslsmith_f_op_f32(abs(global3.x)));
    return ~max(~(~(~0u)), 1u);
}

fn func_5(arg_0: vec2<u32>, arg_1: vec3<u32>, arg_2: vec3<u32>) -> StorageBuffer {
    global1 = select(vec4<u32>(arg_2.x, u_input.a.x, 28239u, ~(~max(60216u, arg_1.x))), ~reverseBits(vec4<u32>(_wgslsmith_add_u32(0u, 0u), abs(4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(6521u, 4294967295u, global1.x), vec3<u32>(56476u, u_input.b.x, 0u)), _wgslsmith_div_u32(41170u, 1u))), true);
    global4 = Struct_1(false, abs(vec4<i32>(_wgslsmith_mod_i32(-32459i, global0.x), 2147483647i, _wgslsmith_add_i32(-10124i, global0.x), abs(2147483647i)) >> (select(~vec4<u32>(88577u, arg_2.x, 37501u, global1.x), ~vec4<u32>(30609u, arg_1.x, arg_0.x, arg_0.x), global2.x) % vec4<u32>(32u))));
    var var_0 = global4.b.x;
    var var_1 = Struct_3(abs(select(~(~arg_2.xy), firstTrailingBit(countOneBits(arg_1.xx)), func_1(select(global0.x, u_input.c.x, true)).xz)), ~(~(~_wgslsmith_add_vec4_u32(vec4<u32>(arg_1.x, arg_1.x, global1.x, arg_1.x), vec4<u32>(arg_1.x, global1.x, 4294967295u, 1u)))), Struct_1(global4.a, vec4<i32>(-_wgslsmith_mod_i32(u_input.c.x, u_input.c.x), u_input.c.x, -1i, u_input.c.x)), arg_2.x);
    let var_2 = u_input.c.x;
    return StorageBuffer(max(~23922u, func_2(Struct_2(_wgslsmith_f_op_f32(508f - 721f), global1.wxw, global3.x, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(285f, -779f, 1000f)))), Struct_4(Struct_3(arg_1.xx, vec4<u32>(0u, arg_2.x, 43576u, 0u), var_1.c, 4294967295u), global3.x, _wgslsmith_dot_vec3_u32(arg_1, vec3<u32>(u_input.a.x, 4294967295u, global1.x)), var_1.c.b.yww, vec2<bool>(var_1.c.a, false)), ~(~39970u))), -739f, min(var_1.d, 1u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1000f - global3.x), _wgslsmith_f_op_f32(sign(620f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(global2.yy, vec2<bool>(true, true), global2.yx);
    global2 = vec3<bool>(global1.x > ~1u, !var_0.x, !global4.a);
    global2 = func_1(global0.x);
    global0 = global4.b | vec4<i32>(-1i, global4.b.x, _wgslsmith_dot_vec2_i32(abs(vec2<i32>(u_input.c.x, global4.b.x)), ~(-vec2<i32>(0i, global4.b.x))), global0.x);
    let x = u_input.a;
    s_output = func_5(vec2<u32>(_wgslsmith_sub_u32(0u, func_2(Struct_2(780f, vec3<u32>(2966u, global1.x, u_input.a.x), 830f, vec3<f32>(-341f, 1960f, 933f)), Struct_4(Struct_3(vec2<u32>(35173u, global1.x), vec4<u32>(6843u, u_input.b.x, 8840u, 44607u), Struct_1(global4.a, global4.b), u_input.b.x), 1329f, u_input.a.x, global4.b.xxz, vec2<bool>(global4.a, false)), u_input.b.x)) & _wgslsmith_add_u32(~4294967295u, _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(49969u, global1.x, 27957u))), u_input.b.x ^ 1u), min(_wgslsmith_clamp_vec3_u32(~abs(vec3<u32>(u_input.b.x, u_input.a.x, global1.x)), ~vec3<u32>(u_input.a.x, 4294967295u, global1.x), abs(global1.zzw)), ~(~vec3<u32>(global1.x, u_input.a.x, global1.x))), reverseBits(min(u_input.a, ~vec3<u32>(global1.x, global1.x, 7974u) >> ((u_input.a & u_input.a) % vec3<u32>(32u)))));
}

