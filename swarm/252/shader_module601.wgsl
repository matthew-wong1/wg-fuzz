struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: u32,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 29> = array<Struct_2, 29>(Struct_2(183f, Struct_1(true, vec3<i32>(-1i, 7572i, 0i), 0i)), Struct_2(-1068f, Struct_1(true, vec3<i32>(i32(-2147483648), -8857i, -17752i), -50397i)), Struct_2(-1012f, Struct_1(false, vec3<i32>(-1i, 3457i, -40415i), 31288i)), Struct_2(235f, Struct_1(true, vec3<i32>(12551i, 0i, 32087i), -24920i)), Struct_2(-276f, Struct_1(true, vec3<i32>(-1i, -1i, -66454i), -3561i)), Struct_2(-165f, Struct_1(true, vec3<i32>(-1i, 1i, i32(-2147483648)), -33365i)), Struct_2(-1005f, Struct_1(false, vec3<i32>(2967i, 1i, 1i), i32(-2147483648))), Struct_2(1533f, Struct_1(false, vec3<i32>(0i, 1i, -38161i), 0i)), Struct_2(1636f, Struct_1(true, vec3<i32>(44785i, 2147483647i, 11357i), 31178i)), Struct_2(1371f, Struct_1(true, vec3<i32>(16551i, -9268i, -41376i), -1i)), Struct_2(634f, Struct_1(true, vec3<i32>(3994i, 59995i, -1i), 2147483647i)), Struct_2(-1191f, Struct_1(true, vec3<i32>(i32(-2147483648), -42514i, 1i), -74468i)), Struct_2(-418f, Struct_1(false, vec3<i32>(9978i, 14732i, 1812i), 13443i)), Struct_2(1535f, Struct_1(true, vec3<i32>(7679i, 18762i, i32(-2147483648)), i32(-2147483648))), Struct_2(-1169f, Struct_1(false, vec3<i32>(36952i, 0i, -10400i), 1i)), Struct_2(-515f, Struct_1(true, vec3<i32>(4539i, -1i, 0i), -17653i)), Struct_2(-101f, Struct_1(true, vec3<i32>(0i, 0i, 21025i), -29541i)), Struct_2(-595f, Struct_1(true, vec3<i32>(-20641i, -44524i, 3943i), 0i)), Struct_2(-513f, Struct_1(false, vec3<i32>(1i, 42607i, -36804i), -13826i)), Struct_2(1012f, Struct_1(false, vec3<i32>(1i, -1i, i32(-2147483648)), -39923i)), Struct_2(-548f, Struct_1(true, vec3<i32>(0i, -16591i, 2147483647i), 2147483647i)), Struct_2(963f, Struct_1(false, vec3<i32>(60636i, 18764i, 18485i), -74160i)), Struct_2(-1893f, Struct_1(false, vec3<i32>(49176i, 0i, -1i), 0i)), Struct_2(-248f, Struct_1(true, vec3<i32>(-1i, 1i, 8341i), -43145i)), Struct_2(283f, Struct_1(false, vec3<i32>(1i, 1i, i32(-2147483648)), -1i)), Struct_2(-2020f, Struct_1(false, vec3<i32>(-90555i, 2147483647i, 2147483647i), 2147483647i)), Struct_2(880f, Struct_1(true, vec3<i32>(-1i, 0i, 30401i), 0i)), Struct_2(308f, Struct_1(false, vec3<i32>(-1i, -66059i, -1i), -1872i)), Struct_2(2043f, Struct_1(false, vec3<i32>(2147483647i, -44517i, 2147483647i), 38753i)));

var<private> global1: Struct_4;

var<private> global2: f32;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: f32, arg_1: Struct_4) -> i32 {
    var var_0 = global1.a;
    return firstTrailingBit(-30241i);
}

fn func_2(arg_0: vec4<bool>) -> Struct_5 {
    let var_0 = Struct_3(vec3<i32>(30320i, ~u_input.a.x, func_3(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-429f, 131f)))), Struct_4(vec2<bool>(true, arg_0.x), 22862u))));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-784f + 887f), _wgslsmith_f_op_f32(1221f - 105f)))) - _wgslsmith_f_op_f32(f32(-1f) * -880f)));
    global1 = Struct_4(select(!vec2<bool>(false, !global1.a.x), global1.a, vec2<bool>(!(global1.a.x && global1.a.x), true)), 26018u);
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-494f)) * -1557f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-201f)) * _wgslsmith_f_op_f32(449f - 160f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1073f, _wgslsmith_f_op_f32(-256f - -360f)) + _wgslsmith_div_f32(-168f, -637f))))));
    global2 = _wgslsmith_div_f32(var_1, 173f);
    return Struct_5(Struct_4(!(!vec2<bool>(arg_0.x, arg_0.x)), ~countOneBits(64088u)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1) -> i32 {
    global2 = -375f;
    global0 = array<Struct_2, 29>();
    var var_0 = func_2(vec4<bool>(true, arg_0.a, any(vec3<bool>(true | arg_2.a, 32318u >= u_input.b.x, arg_2.a)), false));
    global1 = var_0.a;
    var_0 = Struct_5(func_2(vec4<bool>(arg_1.a > -1915f, true, true, var_0.a.a.x)).a);
    return -1i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 29>();
    global1 = Struct_4(!global1.a, u_input.b.x >> ((_wgslsmith_add_u32(23974u, abs(u_input.b.x)) | u_input.b.x) % 32u));
    let var_0 = select(min(vec3<i32>(abs(_wgslsmith_sub_i32(u_input.a.x, u_input.a.x)), -_wgslsmith_mult_i32(0i, -1i), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-1i, u_input.a.x, 2147483647i, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, 0i, -2147483647i)), vec4<i32>(u_input.a.x, 0i, u_input.a.x, u_input.a.x))), vec3<i32>(u_input.a.x, -u_input.a.x, abs(-2147483647i)) | vec3<i32>(_wgslsmith_add_i32(-22263i, -4998i), u_input.a.x, -2147483647i)), vec3<i32>(abs(-16520i), -1i, func_1(Struct_1(!global1.a.x, vec3<i32>(u_input.a.x, u_input.a.x, 2199i), 0i), Struct_2(-689f, Struct_1(false, vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), u_input.a.x)), Struct_1(global1.a.x, vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x) | vec3<i32>(u_input.a.x, u_input.a.x, -1i), u_input.a.x))), vec3<bool>(global1.a.x, any(!(!vec3<bool>(global1.a.x, true, global1.a.x))), false));
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(1f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -931f), -802f))))));
    global0 = array<Struct_2, 29>();
    var var_2 = Struct_4(global1.a, global1.b);
    global1 = func_2(select(select(!vec4<bool>(var_2.a.x, global1.a.x, var_2.a.x, true), vec4<bool>(true, true, true, true), !select(vec4<bool>(global1.a.x, true, false, true), vec4<bool>(global1.a.x, global1.a.x, global1.a.x, false), true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, var_2.a.x, all(global1.a), true), false), var_2.a.x)).a;
    let x = u_input.a;
    s_output = StorageBuffer(~(abs(vec2<i32>(var_0.x, var_0.x)) & _wgslsmith_sub_vec2_i32(var_0.zz, u_input.a)) >> (max(~_wgslsmith_clamp_vec2_u32(vec2<u32>(23518u, global1.b), u_input.b, vec2<u32>(global1.b, u_input.b.x)), firstLeadingBit(reverseBits(u_input.b))) % vec2<u32>(32u)), ~firstTrailingBit(_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, global1.b, 74177u, 4294967295u), vec4<u32>(global1.b, 46998u, 0u, 4294967295u)), ~vec4<u32>(global1.b, 0u, u_input.b.x, global1.b), vec4<u32>(1075u, 50567u, global1.b, var_2.b) & vec4<u32>(u_input.b.x, u_input.b.x, 10376u, 24259u))), select(countOneBits(vec2<i32>(u_input.a.x, ~u_input.a.x)), -select(vec2<i32>(u_input.a.x, u_input.a.x) & vec2<i32>(1i, u_input.a.x), vec2<i32>(2147483647i, u_input.a.x), true), true), -1i);
}

