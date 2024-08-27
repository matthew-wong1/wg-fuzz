struct Struct_1 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_1,
    d: bool,
    e: Struct_2,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: Struct_3,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: u32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_2, arg_1: f32, arg_2: vec2<u32>, arg_3: f32) -> Struct_3 {
    let var_0 = Struct_3(vec3<bool>(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, 10405u, arg_2.x, 18293u), min(vec4<u32>(u_input.a, arg_0.b.b.x, arg_2.x, arg_2.x), vec4<u32>(arg_0.a.b.x, arg_0.b.b.x, arg_0.b.b.x, 53419u))) != 0u, true, true));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3)));
    let var_2 = arg_2;
    var var_3 = var_0.a.x;
    var_3 = var_0.a.x;
    return var_0;
}

fn func_3(arg_0: bool, arg_1: vec2<f32>, arg_2: Struct_3, arg_3: i32) -> vec2<u32> {
    var var_0 = arg_1;
    var_0 = _wgslsmith_f_op_vec2_f32(-arg_1);
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-519f, var_0.x) - arg_1))), max(select(vec2<u32>(u_input.a, u_input.a), ~vec2<u32>(1u, 47398u), arg_2.a.yy), vec2<u32>(4430u, u_input.a) << (_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, 65235u), vec2<u32>(0u, 30406u)) % vec2<u32>(32u))), arg_2.a), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1.x))), _wgslsmith_f_op_f32(exp2(var_0.x))), ~vec2<u32>(~u_input.a, 82791u), arg_2.a));
    var var_2 = vec2<bool>(var_1.a.c.x, var_1.b.c.x);
    let var_3 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(var_1.a.a + vec2<f32>(437f, _wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_mult_vec2_u32(reverseBits(vec2<u32>(0u, 84612u)), vec2<u32>(var_1.a.b.x, ~u_input.a)), vec3<bool>(var_1.a.c.x, true, var_2.x)), var_1.b);
    return vec2<u32>(~4294967295u, 25227u);
}

fn func_1() -> StorageBuffer {
    var var_0 = Struct_4(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(108f, -349f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1525f, -361f)))), func_3(any(vec3<bool>(false, true, true)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(243f, -280f)), func_2(Struct_2(Struct_1(vec2<f32>(-423f, 1267f), vec2<u32>(u_input.a, 13924u), vec3<bool>(true, true, true)), Struct_1(vec2<f32>(-924f, -223f), vec2<u32>(4118u, 8289u), vec3<bool>(true, false, true))), 496f, vec2<u32>(74950u, u_input.a), -357f), -22622i) & vec2<u32>(~u_input.a, 23308u), vec3<bool>(true, _wgslsmith_f_op_f32(trunc(-1530f)) <= _wgslsmith_f_op_f32(max(1619f, 1312f)), all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(125f, 624f, -1271f) - vec3<f32>(-1032f, 1866f, -554f))))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-142f, -1124f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1048f, 1000f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-136f, -1000f))))), ~abs(vec2<u32>(u_input.a, 0u)), !vec3<bool>(true, u_input.a == 0u, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(1112f, -604f)))) - _wgslsmith_f_op_f32(max(-163f, -859f))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1f, -365f))), Struct_2(Struct_1(vec2<f32>(-346f, 253f), ~(~vec2<u32>(47249u, 0u)), !select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), false)), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(921f, -1209f))), _wgslsmith_mult_vec2_u32(select(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a), vec2<bool>(false, true)), vec2<u32>(4294967295u, u_input.a)), vec3<bool>(true, false, true))));
    var var_1 = !select(vec4<bool>(var_0.e.a.c.x, any(vec3<bool>(true, var_0.a.c.x, var_0.e.b.c.x)), true, any(vec4<bool>(var_0.c.c.x, var_0.d, true, false))), select(select(select(vec4<bool>(false, false, var_0.d, var_0.d), vec4<bool>(var_0.a.c.x, var_0.a.c.x, var_0.e.a.c.x, var_0.a.c.x), vec4<bool>(var_0.c.c.x, var_0.a.c.x, false, true)), !vec4<bool>(var_0.a.c.x, false, false, var_0.e.b.c.x), select(vec4<bool>(false, var_0.a.c.x, var_0.a.c.x, var_0.e.a.c.x), vec4<bool>(true, true, var_0.d, var_0.a.c.x), var_0.a.c.x)), !vec4<bool>(var_0.e.b.c.x, true, var_0.c.c.x, var_0.a.c.x), any(vec3<bool>(true, true, false))), false);
    let var_2 = vec4<bool>(!(!var_0.e.a.c.x), all(var_0.a.c) | (var_0.a.a.x <= _wgslsmith_f_op_f32(select(382f, _wgslsmith_f_op_f32(-var_0.e.a.a.x), true))), all(select(!(!var_1.wzy), select(var_1.zzy, var_1.xyx, 1000f == var_0.c.a.x), var_0.a.c.x)), true);
    var var_3 = Struct_2(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(850f - 1390f), _wgslsmith_f_op_f32(min(var_0.e.a.a.x, var_0.e.a.a.x))), vec2<u32>(firstLeadingBit(var_0.e.b.b.x) | 1u, 51753u), select(vec3<bool>(false || var_2.x, all(vec3<bool>(var_0.d, var_0.d, false)), true), !var_2.yxy, true)), var_0.c);
    var var_4 = Struct_5(_wgslsmith_sub_vec2_u32(~select(vec2<u32>(u_input.a, 23336u), var_0.a.b, var_3.a.b.x > 9897u), _wgslsmith_mod_vec2_u32(var_0.e.a.b, var_0.e.b.b) | _wgslsmith_sub_vec2_u32(vec2<u32>(var_3.b.b.x, u_input.a), vec2<u32>(var_3.a.b.x, u_input.a))), ~max(var_3.b.b, select(var_0.c.b, ~vec2<u32>(1u, 1776u), var_0.c.c.xx)), var_3.b.b, Struct_3(!vec3<bool>(true, var_3.a.c.x, false)));
    return StorageBuffer(-186f, 48288u, ~var_0.a.b.x, var_3.b.b.x, _wgslsmith_f_op_vec3_f32(-var_0.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_mod_vec4_u32(~_wgslsmith_div_vec4_u32(min(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, 4294967295u, 39085u, u_input.a)), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) << (vec4<u32>(u_input.a, u_input.a, 7078u, 48839u) % vec4<u32>(32u))), ~_wgslsmith_mult_vec4_u32(firstLeadingBit(vec4<u32>(61000u, 102619u, u_input.a, 74704u)), ~vec4<u32>(u_input.a, 6001u, 1u, u_input.a)));
    let var_1 = 23758i;
    global0 = 14212i;
    global0 = -21242i;
    var var_2 = Struct_5(var_0.xx >> (~(~vec2<u32>(0u, var_0.x)) % vec2<u32>(32u)), vec2<u32>(_wgslsmith_mod_u32(~(~u_input.a), 4294967295u), min(var_0.x, _wgslsmith_clamp_u32(~u_input.a, _wgslsmith_clamp_u32(u_input.a, 1u, u_input.a), ~1u))), select(_wgslsmith_mult_vec2_u32(~var_0.wz | vec2<u32>(var_0.x, 4294967295u), ~vec2<u32>(1u, 0u)), countOneBits(~var_0.wx) << (vec2<u32>(min(49569u, 717u), _wgslsmith_mult_u32(51474u, 0u)) % vec2<u32>(32u)), select(vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(true, true), true), vec2<bool>(true, false))), Struct_3(!select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), false), vec3<bool>(false, false, true), false)));
    let x = u_input.a;
    s_output = func_1();
}

