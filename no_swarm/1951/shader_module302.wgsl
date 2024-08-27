struct Struct_1 {
    a: vec3<f32>,
    b: u32,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: u32,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: f32,
    d: f32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: Struct_2 = Struct_2(vec2<i32>(1i, 1i));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3() -> vec2<u32> {
    global1 = Struct_2(_wgslsmith_sub_vec2_i32(abs(countOneBits(vec2<i32>(-31928i, -1i))), ~abs(vec2<i32>(u_input.a, 55936i))));
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(sign(1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-371f - _wgslsmith_f_op_f32(round(-1036f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-878f)) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1070f)))))), -1549f);
    global0 = _wgslsmith_mod_vec2_u32(u_input.b.wx, ~u_input.b.wz | ~vec2<u32>(u_input.b.x, global0.x)) << (u_input.b.wy % vec2<u32>(32u));
    var var_1 = -(~countOneBits(firstTrailingBit(vec3<i32>(global1.a.x, 1386i, -1i)))) & select(firstLeadingBit(-vec3<i32>(0i, global1.a.x, global1.a.x)), _wgslsmith_mult_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(-2147483647i, u_input.a, 58848i), ~select(vec3<i32>(48907i, global1.a.x, global1.a.x), vec3<i32>(u_input.a, 12457i, global1.a.x), vec3<bool>(true, true, true))), select(vec3<bool>(all(vec4<bool>(true, true, false, false)), var_0.x > 175f, true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), false)));
    var var_2 = vec4<bool>(true, global1.a.x != global1.a.x, any(vec2<bool>(all(vec4<bool>(true, true, false, true)), 51908u < _wgslsmith_dot_vec3_u32(vec3<u32>(20020u, global0.x, 32588u), u_input.b.wwx))), all(vec3<bool>(true && (var_0.x >= var_0.x), !(var_0.x == var_0.x), true)));
    return ((select(vec2<u32>(u_input.b.x, global0.x) >> (vec2<u32>(u_input.b.x, u_input.b.x) % vec2<u32>(32u)), u_input.b.yw, var_2.zx) | ((u_input.b.wx | vec2<u32>(u_input.b.x, u_input.b.x)) | u_input.b.wy)) & u_input.b.yw) | ~vec2<u32>(~abs(global0.x), _wgslsmith_div_u32(~u_input.b.x, min(1u, 76849u)));
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: f32, arg_3: Struct_3) -> vec2<i32> {
    global0 = ~_wgslsmith_div_vec2_u32(~u_input.b.zx >> (select(vec2<u32>(global0.x, 4294967295u), min(vec2<u32>(1u, arg_1), vec2<u32>(8549u, u_input.b.x)), arg_3.b.zw) % vec2<u32>(32u)), func_3());
    let var_0 = arg_3;
    let var_1 = -_wgslsmith_mod_i32(1i, abs(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0, arg_0) & vec2<i32>(u_input.a, 25899i), reverseBits(vec2<i32>(arg_0, -17152i)))));
    let var_2 = true;
    let var_3 = Struct_2(-global1.a);
    return countOneBits(global1.a);
}

fn func_4(arg_0: Struct_2, arg_1: vec2<i32>) -> Struct_3 {
    let var_0 = false;
    global1 = Struct_2(~_wgslsmith_mult_vec2_i32(arg_0.a, select(arg_1, vec2<i32>(arg_0.a.x, u_input.a), vec2<bool>(true, true))));
    var var_1 = select(!(!(!vec4<bool>(var_0, true, var_0, var_0))), vec4<bool>(any(!(!vec2<bool>(false, var_0))), false, global1.a.x == 1i, any(!(!vec4<bool>(false, var_0, var_0, var_0)))), any(vec2<bool>(!all(vec2<bool>(var_0, false)), true)));
    let var_2 = vec4<u32>(global0.x, min(~(~global0.x), ~global0.x) << (36404u % 32u), ~35817u, u_input.b.x);
    var var_3 = Struct_3(max(global0.x, var_2.x), !vec4<bool>(true, !var_1.x, global0.x < var_2.x, !var_0));
    return Struct_3(0u, var_3.b);
}

fn func_5(arg_0: Struct_3, arg_1: Struct_2) -> i32 {
    global1 = Struct_2(-countOneBits(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-33397i, arg_1.a.x, -36341i, -2147483647i), vec4<i32>(-13488i, arg_1.a.x, -64532i, 12433i)), _wgslsmith_dot_vec2_i32(vec2<i32>(global1.a.x, 34766i), vec2<i32>(-2147483647i, -25700i)))));
    return _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(~abs(vec4<i32>(u_input.a, u_input.a, 6022i, global1.a.x)), _wgslsmith_add_vec4_i32(vec4<i32>(24609i, global1.a.x, global1.a.x, -35043i), -vec4<i32>(arg_1.a.x, -2147483647i, u_input.a, u_input.a))) | _wgslsmith_add_i32(max(_wgslsmith_dot_vec2_i32(global1.a, global1.a), min(u_input.a, 21055i)), -reverseBits(1i)), reverseBits(~global1.a.x));
}

fn func_1() -> Struct_2 {
    var var_0 = u_input.b.zzx;
    global1 = Struct_2(_wgslsmith_mod_vec2_i32(global1.a, -global1.a));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-904f, 521f, -449f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-701f, -1575f, -1000f))), select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), true), vec3<bool>(true, true, false))))));
    let var_2 = 1u;
    let var_3 = func_5(func_4(Struct_2(reverseBits(countOneBits(vec2<i32>(global1.a.x, global1.a.x)))), _wgslsmith_mod_vec2_i32(func_2(u_input.a, global0.x, -494f, Struct_3(var_0.x, vec4<bool>(true, true, true, false))) << (~var_0.xx % vec2<u32>(32u)), _wgslsmith_clamp_vec2_i32(global1.a, _wgslsmith_mult_vec2_i32(global1.a, global1.a), global1.a))), Struct_2(vec2<i32>(u_input.a, -26906i)));
    return Struct_2(func_2(reverseBits(global1.a.x) ^ var_3, _wgslsmith_dot_vec2_u32(var_0.yy, ~vec2<u32>(60156u, global0.x) << (vec2<u32>(global0.x, 4294967295u) % vec2<u32>(32u))), _wgslsmith_f_op_f32(select(var_1.x, -1165f, true)), Struct_3(var_2 ^ _wgslsmith_dot_vec3_u32(u_input.b.yzx, u_input.b.ywx), vec4<bool>(var_1.x <= -446f, select(true, false, true), func_4(Struct_2(global1.a), global1.a).b.x, global0.x < u_input.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -484f)) - 263f));
    global1 = func_1();
    var var_1 = true;
    var_1 = true;
    let var_2 = func_4(func_1(), global1.a);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(688f - _wgslsmith_div_f32(-1000f, -760f))))) * -3424f);
    let var_4 = var_2.a;
    let var_5 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-588f, 171f, -1078f) - vec3<f32>(385f, -659f, -176f))), vec3<f32>(1f, 1f, 1f), !(!var_2.b.xww))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-215f, _wgslsmith_f_op_f32(-336f + 544f), _wgslsmith_f_op_f32(f32(-1f) * -1367f))))), u_input.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(-860f, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_5.a.x, _wgslsmith_f_op_f32(step(933f, -1168f)), -1165f))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_5.a.x, var_5.a.x, -1888f)))), _wgslsmith_f_op_f32(-1310f * -1701f), var_5.a.x, _wgslsmith_sub_vec4_i32(-vec4<i32>(-global1.a.x, u_input.a, reverseBits(global1.a.x), -16319i), vec4<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(global1.a.x, 24301i, u_input.a), vec3<i32>(-38352i, -2147483647i, -5475i)), ~70269i, _wgslsmith_sub_i32(-1i << (global0.x % 32u), global1.a.x), global1.a.x)));
}

