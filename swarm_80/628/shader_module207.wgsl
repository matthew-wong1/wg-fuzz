struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: bool = false;

var<private> global2: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(vec4<f32>(-340f, 194f, -201f, -504f)), Struct_1(vec4<f32>(1000f, 962f, 1211f, 997f)), Struct_1(vec4<f32>(2279f, 488f, 1727f, -481f)), Struct_1(vec4<f32>(-1566f, 1000f, 1043f, -278f)), Struct_1(vec4<f32>(512f, 277f, -670f, -187f)), Struct_1(vec4<f32>(-763f, 528f, 249f, -533f)), Struct_1(vec4<f32>(-934f, 455f, -1147f, -665f)), Struct_1(vec4<f32>(495f, 905f, 900f, -683f)), Struct_1(vec4<f32>(374f, -410f, -371f, -353f)), Struct_1(vec4<f32>(432f, 557f, -2036f, -1836f)), Struct_1(vec4<f32>(1623f, -241f, -214f, -1347f)), Struct_1(vec4<f32>(-1895f, -1000f, 728f, -1000f)), Struct_1(vec4<f32>(1438f, -586f, 245f, -1577f)), Struct_1(vec4<f32>(497f, -1413f, 174f, -1027f)), Struct_1(vec4<f32>(-1010f, 1000f, -1233f, -906f)), Struct_1(vec4<f32>(1000f, -265f, -1000f, -530f)), Struct_1(vec4<f32>(-1217f, 1289f, 264f, 398f)), Struct_1(vec4<f32>(740f, 581f, -458f, -323f)), Struct_1(vec4<f32>(908f, 1000f, -1211f, -831f)), Struct_1(vec4<f32>(-888f, 379f, -1745f, 1000f)), Struct_1(vec4<f32>(-487f, -503f, 540f, 663f)), Struct_1(vec4<f32>(1117f, 1991f, -1000f, -794f)), Struct_1(vec4<f32>(123f, -802f, 498f, 537f)), Struct_1(vec4<f32>(-1241f, 1270f, 1179f, -1077f)), Struct_1(vec4<f32>(140f, 510f, -1135f, -256f)), Struct_1(vec4<f32>(-1339f, 217f, 1316f, 776f)));

var<private> global3: vec4<u32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> f32 {
    global2 = array<Struct_1, 26>();
    let var_0 = vec2<bool>(true, select(any(vec4<bool>(true, true, true, true)), all(vec4<bool>(true, true, true, true)), false));
    var var_1 = ~vec4<i32>(u_input.b.x, u_input.c.x, 0i, u_input.c.x << (u_input.a % 32u));
    var var_2 = Struct_3(true);
    let var_3 = !(!(!vec3<bool>(true, false, -2147483647i != u_input.b.x)));
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(448f)))));
}

fn func_2(arg_0: u32, arg_1: Struct_3, arg_2: vec2<i32>) -> bool {
    global2 = array<Struct_1, 26>();
    var var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-2012f))))), _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(trunc(-309f))));
    var var_1 = ~(-(u_input.c >> (vec2<u32>(0u, u_input.a) % vec2<u32>(32u)))) & u_input.b;
    var var_2 = ~reverseBits(~(reverseBits(vec4<u32>(0u, 4294967295u, 102244u, 62715u)) ^ reverseBits(vec4<u32>(1u, u_input.d.x, 4294967295u, 4294967295u))));
    global0 = 2688u;
    return false;
}

fn func_1() -> Struct_2 {
    global1 = all(vec4<bool>(_wgslsmith_sub_i32(~u_input.b.x, u_input.c.x) == max(u_input.b.x, u_input.b.x), true, all(vec4<bool>(true, true, true, func_2(98373u, Struct_3(true), vec2<i32>(2147483647i, 1i)))), true));
    var var_0 = Struct_3(false);
    let var_1 = Struct_2(259f);
    var_0 = Struct_3(!any(vec4<bool>(var_0.a, var_0.a, !var_0.a, var_0.a || false)));
    global1 = any(vec2<bool>(!((u_input.b.x > -8474i) | (var_1.a >= var_1.a)), var_0.a));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2[_wgslsmith_index_u32(u_input.a & 4294967295u, 26u)];
    var var_1 = Struct_3(any(select(vec3<bool>(all(vec3<bool>(false, true, true)), true, false), vec3<bool>(false, true, true), all(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), false)))));
    global1 = ~max(abs(_wgslsmith_sub_u32(17178u, 1u)), ~(~1u)) != _wgslsmith_mult_u32(~4294967295u << (_wgslsmith_add_u32(~global3.x, ~5932u) % 32u), ~(~max(u_input.d.x, global3.x)));
    var var_2 = func_1();
    var var_3 = _wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.b.x, _wgslsmith_mod_i32(-1i, u_input.b.x), -2147483647i), ~(~_wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, u_input.c.x, -1i) & vec3<i32>(u_input.c.x, 0i, u_input.b.x), vec3<i32>(10255i, u_input.b.x, 1415i), -vec3<i32>(-2973i, 50781i, u_input.c.x))));
    let var_4 = _wgslsmith_mod_vec4_i32(~firstLeadingBit(vec4<i32>(u_input.b.x, u_input.b.x, -7249i, u_input.b.x)) ^ abs(_wgslsmith_sub_vec4_i32(abs(vec4<i32>(-2147483647i, u_input.c.x, 33024i, u_input.b.x)), vec4<i32>(10238i, u_input.b.x, 26744i, 1i))), vec4<i32>(-1i, ~u_input.b.x, 8498i, 0i) | min(~vec4<i32>(u_input.b.x, u_input.c.x, 0i, -63377i), firstLeadingBit(firstTrailingBit(vec4<i32>(0i, u_input.b.x, u_input.b.x, u_input.c.x)))));
    global2 = array<Struct_1, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-442f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(355f))) - _wgslsmith_f_op_f32(max(233f, _wgslsmith_f_op_f32(step(var_2.a, var_0.a.x)))))), ~_wgslsmith_mod_vec4_u32(vec4<u32>(global3.x, 1u, global3.x, u_input.d.x & global3.x), ~(vec4<u32>(global3.x, global3.x, 0u, u_input.d.x) << (vec4<u32>(global3.x, u_input.a, u_input.d.x, 4294967295u) % vec4<u32>(32u)))), vec4<u32>(reverseBits(abs(3019u)), global3.x, 0u, ~91107u));
}

