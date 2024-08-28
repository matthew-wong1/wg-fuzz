struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: u32,
    c: vec2<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-1000f, vec4<bool>(true, true, false, true), -18801i);

var<private> global1: Struct_2 = Struct_2(vec3<i32>(i32(-2147483648), i32(-2147483648), 31160i), 8454u, vec2<i32>(2147483647i, 2147483647i), Struct_1(406f, vec4<bool>(false, true, true, true), -1i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: vec3<bool>) -> vec4<i32> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)), !select(global1.d.b, select(vec4<bool>(false, false, true, global0.b.x), !global0.b, global1.d.b), global0.b.x | arg_1), -global0.c);
    var var_1 = true;
    let var_2 = !var_0.b.zx;
    var var_3 = global1.b;
    global0 = global1.d;
    return reverseBits(~((vec4<i32>(56090i, 0i, 1i, arg_0) | vec4<i32>(var_0.c, var_0.c, global1.d.c, 1i)) & vec4<i32>(global0.c, 2147483647i, global1.d.c, var_0.c))) >> (firstLeadingBit(reverseBits(reverseBits(vec4<u32>(global1.b, global1.b, global1.b, global1.b) & vec4<u32>(4294967295u, 4294967295u, global1.b, global1.b)))) % vec4<u32>(32u));
}

fn func_2() -> Struct_1 {
    var var_0 = global1.b;
    var var_1 = firstLeadingBit(1i ^ global1.c.x);
    var var_2 = global1.d;
    var var_3 = func_3(~min(global1.d.c, -1i), all(var_2.b.zw), global1.d.b.xyw);
    let var_4 = ~(vec3<u32>(_wgslsmith_add_u32(4294967295u >> (global1.b % 32u), ~48041u), 44980u, ~global1.b) & abs(_wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(2116u, 4294967295u, global1.b), vec3<u32>(0u, 0u, 0u), vec3<u32>(37481u, 4294967295u, global1.b)), ~vec3<u32>(global1.b, global1.b, global1.b))));
    return Struct_1(global0.a, vec4<bool>(false, all(!vec3<bool>(global1.d.b.x, var_2.b.x, false)) & var_2.b.x, !all(global0.b.yz), global0.b.x), -1i);
}

fn func_1(arg_0: u32) -> Struct_2 {
    var var_0 = Struct_2(vec3<i32>(0i, _wgslsmith_mod_i32(global1.c.x, u_input.b), global0.c), arg_0 << (~(~arg_0 ^ 1u) % 32u), reverseBits(firstLeadingBit(global1.a.xx)), func_2());
    global1 = Struct_2(vec3<i32>(~_wgslsmith_div_i32(firstLeadingBit(-2147483647i), -11118i), ~u_input.a, 2693i), abs(arg_0), firstTrailingBit(firstLeadingBit(abs(-vec2<i32>(var_0.a.x, global1.c.x)))), var_0.d);
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1169f, global0.a, -1250f, var_0.d.a)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, global0.a, -1528f, global1.d.a) - vec4<f32>(-1522f, -2598f, global0.a, -554f))))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(505f + 738f)))));
    let var_3 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.xyz)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1592f, -234f, -352f)))) + _wgslsmith_div_vec3_f32(var_1.zyw, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(667f, var_1.x, -1000f) - var_1.yzx)))))));
    return Struct_2(vec3<i32>(~(_wgslsmith_div_i32(29434i, 38746i) << (~4294967295u % 32u)), -31461i, _wgslsmith_clamp_i32(global1.c.x, u_input.b, -1i)), arg_0, countOneBits(max(-(~var_0.c), _wgslsmith_mod_vec2_i32(var_0.a.xx, global1.a.zy))), func_2());
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(1u);
    global1 = Struct_2(var_0.a, 1u, vec2<i32>(reverseBits(u_input.a), firstLeadingBit(i32(-1i) * -26142i)), var_0.d);
    global0 = Struct_1(global0.a, !vec4<bool>(global1.d.b.x, all(select(var_0.d.b, vec4<bool>(false, global1.d.b.x, global0.b.x, global0.b.x), true)), !global1.d.b.x, true), -3996i);
    global0 = Struct_1(-1059f, select(select(vec4<bool>(func_1(global1.b).d.b.x, global1.d.b.x, true, global0.b.x), !(!vec4<bool>(false, global0.b.x, false, true)), func_2().c >= var_0.c.x), func_1(~(1u >> (var_0.b % 32u))).d.b, all(select(var_0.d.b, vec4<bool>(false, false, global0.b.x, var_0.d.b.x), vec4<bool>(false, var_0.d.b.x, false, true))) & false), -5343i);
    var var_1 = vec3<i32>(abs(1i), ~2147483647i, u_input.b);
    var var_2 = Struct_2(-vec3<i32>(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(var_1.x, var_0.c.x)), vec2<i32>(var_0.c.x, var_1.x) >> (vec2<u32>(var_0.b, var_0.b) % vec2<u32>(32u))), ~firstLeadingBit(25772i), _wgslsmith_clamp_i32(0i, abs(global0.c), u_input.b | global0.c)), abs(~global1.b), _wgslsmith_div_vec2_i32(var_0.a.xy, vec2<i32>(2147483647i, -global0.c & min(var_0.c.x, var_0.a.x))), var_0.d);
    var var_3 = ~(2147483647i & ((-29108i | ~global0.c) ^ _wgslsmith_sub_i32(6482i, 0i)));
    var var_4 = global1.d.b.xw;
    var var_5 = func_1(~(~(~1u)));
    let x = u_input.a;
    s_output = StorageBuffer(select(-10743i, _wgslsmith_div_i32(global1.c.x, 11372i), !(!all(var_0.d.b.xxw))));
}

