struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: vec4<bool>,
    d: i32,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec2<u32> = vec2<u32>(1u, 1u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_3) -> bool {
    var var_0 = Struct_2(_wgslsmith_div_vec3_u32(select(~vec3<u32>(24009u, global1.x, arg_0.c.a.x), ~arg_0.a.a, all(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true)))), abs(arg_0.a.a)));
    global0 = select(reverseBits(global1.x), global1.x, true);
    let var_1 = vec2<bool>(all(vec3<bool>(true, !any(vec3<bool>(true, true, false)), false)), ~104078i != arg_0.b);
    let var_2 = arg_0;
    let var_3 = arg_0.c;
    return false;
}

fn func_2() -> vec2<u32> {
    global1 = ~vec2<u32>(~global1.x, _wgslsmith_sub_u32(4294967295u, ~_wgslsmith_div_u32(global1.x, 0u)));
    let var_0 = Struct_1(vec3<f32>(736f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-136f)), _wgslsmith_f_op_f32(f32(-1f) * -634f), false)) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1219f, -1000f) - 661f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -315f))))), ~_wgslsmith_div_i32(select(1i, 0i, true), -u_input.c.x | u_input.b.x), vec4<bool>(false, true, func_3(Struct_3(Struct_2(vec3<u32>(global1.x, 4294967295u, global1.x)), u_input.c.x >> (global1.x % 32u), Struct_2(vec3<u32>(61902u, global1.x, global1.x)))), true), ~u_input.b.x & -21549i);
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x))));
    return select(firstLeadingBit(((vec2<u32>(global1.x, 39831u) >> (vec2<u32>(global1.x, 34245u) % vec2<u32>(32u))) >> ((vec2<u32>(6021u, 5468u) | vec2<u32>(38053u, global1.x)) % vec2<u32>(32u))) << (~(~vec2<u32>(global1.x, global1.x)) % vec2<u32>(32u))), vec2<u32>(4201u, 76508u), !select(vec2<bool>(any(vec4<bool>(true, var_0.c.x, var_0.c.x, false)), any(var_0.c)), vec2<bool>(select(var_0.c.x, true, var_0.c.x), false), var_0.c.zz));
}

fn func_1(arg_0: vec4<u32>) -> Struct_2 {
    global1 = func_2();
    global1 = vec2<u32>(arg_0.x, 16120u);
    let var_0 = ~_wgslsmith_add_vec2_u32(~_wgslsmith_add_vec2_u32(~arg_0.xz, ~arg_0.xy), abs(_wgslsmith_mult_vec2_u32(max(arg_0.yw, arg_0.zz), abs(arg_0.zx))));
    global0 = var_0.x;
    let var_1 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-369f, -1272f)), vec2<f32>(-235f, -705f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-163f, -1227f)) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(111f, 620f), vec2<f32>(719f, 774f)))))))));
    return Struct_2(select(vec3<u32>(12683u, global1.x, _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(arg_0.yxy, vec3<u32>(1u, 9125u, 0u)), firstLeadingBit(arg_0.yxy))), _wgslsmith_mod_vec3_u32(~arg_0.ywx, firstLeadingBit(reverseBits(arg_0.xyw))), !vec3<bool>(arg_0.x == var_0.x, u_input.a.x >= -1i, all(vec2<bool>(true, true)))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> vec3<u32> {
    let var_0 = Struct_3(Struct_2(~(~arg_1.a)), 2147483647i, Struct_2(~arg_1.a));
    let var_1 = min(abs(-_wgslsmith_mod_vec3_i32(vec3<i32>(-12938i, arg_0.b, u_input.c.x), u_input.b.wwy)), u_input.b.wzz) & u_input.b.xzx;
    global0 = ~(~4294967295u);
    global1 = vec2<u32>(global1.x, max(min(_wgslsmith_div_u32(76515u, var_0.c.a.x), 1u), _wgslsmith_add_u32(reverseBits(global1.x), max(96305u, var_0.a.a.x))) & _wgslsmith_mult_u32(func_2().x, 4294967295u));
    let var_2 = _wgslsmith_div_u32(38551u, _wgslsmith_clamp_u32(_wgslsmith_div_u32(countOneBits(arg_1.a.x), abs(arg_1.a.x)) | var_0.c.a.x, ~(~var_0.c.a.x), 33613u));
    return vec3<u32>(~1u, var_2, var_0.a.a.x);
}

fn func_5(arg_0: Struct_2, arg_1: bool, arg_2: Struct_1) -> StorageBuffer {
    global1 = arg_0.a.zy;
    var var_0 = (i32(-1i) * -49691i) >> (select(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(0u, arg_0.a.x), _wgslsmith_add_u32(4294967295u, global1.x), ~arg_0.a.x, 1u), reverseBits(vec4<u32>(4294967295u, 4294967295u, 8117u, global1.x)) | vec4<u32>(arg_0.a.x, arg_0.a.x, 4294967295u, global1.x)), ~arg_0.a.x, arg_1) % 32u);
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(arg_2.a - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(310f - -440f)), _wgslsmith_f_op_f32(f32(-1f) * -453f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_2.a.x, arg_2.a.x, arg_2.c.x)) - _wgslsmith_f_op_f32(select(arg_2.a.x, arg_2.a.x, true))))), _wgslsmith_clamp_i32(~(~(~arg_2.b)), 1i, 0i), vec4<bool>(true, any(arg_2.c), !arg_1, arg_2.c.x), arg_2.d);
    var_0 = min(-u_input.d, arg_2.b);
    var_0 = ~_wgslsmith_div_i32(~(-2147483647i >> (_wgslsmith_sub_u32(15308u, global1.x) % 32u)), i32(-1i) * -2147483647i);
    return StorageBuffer(32055u, vec2<f32>(183f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_2.a.x, -1058f, true)) - -1969f))), 2147483647i, -552f);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(Struct_2(func_4(Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(317f, 629f, -271f), vec3<f32>(1000f, -1000f, 219f), false)), _wgslsmith_mod_i32(u_input.d, u_input.d), vec4<bool>(false, false, false, false), _wgslsmith_dot_vec4_i32(u_input.b, u_input.b)), func_1(vec4<u32>(global1.x, global1.x, global1.x, global1.x) | vec4<u32>(4294967295u, 72779u, 52688u, global1.x)))), true | (select(any(vec2<bool>(true, true)), -51531i != u_input.a.x, any(vec3<bool>(true, false, false))) | true), Struct_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-854f, -1247f, -168f), vec3<f32>(1874f, -1166f, 627f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-482f, 573f, -808f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1703f, 799f, 774f))))), 13105i, select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true)), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false)), false), select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false)), vec4<bool>(false, true, true, true), true)), u_input.a.x));
}

