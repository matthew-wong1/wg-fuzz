struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: vec4<i32>,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1i);

var<private> global1: u32 = 0u;

var<private> global2: i32;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: i32) -> Struct_1 {
    let var_0 = arg_1 << (u_input.c.x % 32u);
    let var_1 = Struct_1(countOneBits(~(~arg_2)) >> (u_input.c.x % 32u));
    global0 = var_1;
    global2 = ~(i32(-1i) * -4941i);
    let var_2 = _wgslsmith_add_u32(u_input.b, max(44943u, 24564u)) == u_input.b;
    return var_1;
}

fn func_3(arg_0: u32, arg_1: Struct_3) -> f32 {
    var var_0 = 4294967295u;
    let var_1 = u_input.c.wy;
    var var_2 = (_wgslsmith_sub_i32(_wgslsmith_div_i32(-global0.a, u_input.a), 1i) ^ global0.a) << ((arg_0 >> (~5143u % 32u)) % 32u);
    let var_3 = arg_1.a.c.xx | (_wgslsmith_div_vec2_i32(vec2<i32>(global0.a, 33673i), arg_1.a.c.yx) << (var_1 % vec2<u32>(32u)));
    return _wgslsmith_f_op_f32(max(-281f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -999f) - _wgslsmith_f_op_f32(trunc(726f)))), 1289f))));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec4<bool>, arg_3: bool) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-392f + -1643f)), _wgslsmith_f_op_f32(f32(-1f) * -940f))), _wgslsmith_f_op_f32(-459f + 1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(806f, _wgslsmith_f_op_f32(min(-295f, -849f)), true)) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1054f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -555f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-173f, -771f, 168f, -1209f) * vec4<f32>(968f, 1091f, -1109f, -699f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(444f, 332f, -101f, 775f) * vec4<f32>(812f, 1245f, 102f, -303f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-270f, -1786f, -1916f, 606f))))))));
    var var_1 = 4294967295u;
    var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_3(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(42260u, u_input.b, 41980u), ~u_input.b), Struct_3(Struct_2(arg_2.x, 4294967295u, arg_1, Struct_1(30548i), arg_3), func_2(2147483647i, arg_1.x, arg_1.x), _wgslsmith_dot_vec4_i32(arg_1, vec4<i32>(arg_1.x, u_input.a, -1i, 49318i))))), _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(floor(-957f))), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(func_3(u_input.b, Struct_3(Struct_2(arg_3, u_input.b, arg_1, Struct_1(-11358i), arg_2.x), arg_0, -global0.a)))));
    let var_2 = countOneBits(arg_1.zx);
    var_1 = u_input.c.x;
    return Struct_2(min(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 17829u, 32037u), u_input.c.zxz | u_input.c.xzz)) <= 8012u, ~17393u, vec4<i32>(_wgslsmith_div_i32(~var_2.x, i32(-1i) * -35742i), ~max(1i, var_2.x), _wgslsmith_dot_vec3_i32(arg_1.xzy, arg_1.xyz), ~u_input.a) ^ ~(-select(vec4<i32>(-1i, u_input.a, u_input.a, var_2.x), arg_1, false)), arg_0, false);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> bool {
    global1 = max(22798u, ~226u);
    global2 = _wgslsmith_dot_vec2_i32(~arg_1.c.ww, vec2<i32>(global0.a, arg_1.c.x));
    global2 = arg_1.d.a;
    global0 = func_2(func_2(-func_2(_wgslsmith_mult_i32(arg_1.d.a, 70426i), func_1(arg_1.d, arg_0.c, vec4<bool>(true, arg_1.e, arg_0.e, arg_1.a), false).c.x, -arg_0.d.a).a, ~min(arg_1.c.x, arg_0.d.a) >> (0u % 32u), (arg_0.d.a & -26975i) >> (~(arg_1.b | arg_1.b) % 32u)).a, u_input.a, 1i);
    var var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(-828f, -1040f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(199f, 159f))))))));
    return arg_0.e;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(~(~0i));
    global2 = global0.a;
    global2 = -u_input.a;
    var var_0 = any(vec3<bool>(func_4(Struct_2(true, 12785u, ~vec4<i32>(u_input.a, u_input.a, global0.a, 52386i), Struct_1(global0.a), 4294967295u <= u_input.b), func_1(Struct_1(-1938i), -vec4<i32>(global0.a, global0.a, global0.a, global0.a), vec4<bool>(true, true, true, true), true)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -276f), _wgslsmith_f_op_f32(f32(-1f) * -152f))) <= _wgslsmith_f_op_f32(step(-2923f, _wgslsmith_f_op_f32(-457f + -1188f))), !(u_input.a < global0.a)));
    global1 = u_input.b;
    global2 = 2147483647i;
    let var_1 = Struct_2(!all(vec4<bool>(true, func_4(Struct_2(true, 1u, vec4<i32>(-9989i, u_input.a, -1i, -2147483647i), Struct_1(2147483647i), false), Struct_2(false, 16729u, vec4<i32>(u_input.a, u_input.a, -38455i, 1128i), Struct_1(u_input.a), false)), false, true)), u_input.c.x, -(vec4<i32>(-1i) * -select(vec4<i32>(-1i, -2147483647i, -1i, -16696i), vec4<i32>(global0.a, 1i, u_input.a, 1i), vec4<bool>(true, false, true, false))), Struct_1(29074i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-692f)) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)) == -401f);
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(601f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1455f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1114f)) + -1000f));
    var var_3 = max(reverseBits(~var_1.b), ~var_1.b);
    let x = u_input.a;
    s_output = StorageBuffer(~min(~(vec2<u32>(var_1.b, u_input.b) ^ vec2<u32>(u_input.c.x, 1u)), ~_wgslsmith_mult_vec2_u32(u_input.c.xy, vec2<u32>(4294967295u, var_1.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-104f))));
}

