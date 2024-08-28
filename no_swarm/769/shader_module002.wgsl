struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: bool,
    d: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: vec2<u32>,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec4<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 29> = array<vec3<bool>, 29>(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false));

var<private> global1: vec2<bool> = vec2<bool>(true, false);

var<private> global2: Struct_1;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    global2 = Struct_1(global2.a, ~(~0u >> (global2.b % 32u)), all(vec4<bool>(u_input.d.x >= u_input.b.x, true, !any(vec4<bool>(false, true, true, global2.c)), true)), u_input.c.yw);
    var var_0 = false;
    return ~1u;
}

fn func_2(arg_0: u32, arg_1: vec2<bool>, arg_2: vec2<bool>) -> vec2<u32> {
    global1 = arg_1;
    global2 = Struct_1(max(vec2<u32>(_wgslsmith_sub_u32(0u, arg_0), func_3()), vec2<u32>(4294967295u, _wgslsmith_div_u32(_wgslsmith_mult_u32(29429u, u_input.c.x), ~arg_0))), 1u, false, ~(~(vec2<u32>(12930u, arg_0) & ~vec2<u32>(global2.a.x, arg_0))));
    global2 = Struct_1(vec2<u32>(79734u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, ~43430u, firstTrailingBit(u_input.c.x), arg_0 << (57847u % 32u)), u_input.c)), _wgslsmith_mult_u32(arg_0, ~74099u), !(!(12584u > arg_0)) & !global2.c, _wgslsmith_div_vec2_u32(u_input.c.wy, vec2<u32>(17238u, 28449u)));
    var var_0 = Struct_1(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, abs(30478u)), ~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c.x, arg_0), vec2<u32>(1u, 0u))), select(130615u, 49964u, false & all(arg_1))), u_input.c.x, -29328i == u_input.a, countOneBits(_wgslsmith_add_vec2_u32(vec2<u32>(arg_0 & arg_0, 12611u), u_input.c.xx)));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-339f, 792f) * 1223f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -561f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -479f) + _wgslsmith_f_op_f32(1593f - -1379f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-225f, -984f)) + 1000f) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1191f, 431f) + 1138f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-679f * 667f), _wgslsmith_f_op_f32(1628f + 435f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-149f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2474f * 303f))))));
    return vec2<u32>(~(~(_wgslsmith_div_u32(0u, 50831u) ^ firstTrailingBit(12785u))), ~(~7671u));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_3, arg_3: Struct_2) -> Struct_1 {
    global2 = Struct_1(abs(select(_wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 24108u), u_input.c.ww), min(vec2<u32>(arg_3.d.x, arg_3.d.x), global2.a), ~vec2<u32>(1844u, global2.d.x)), vec2<u32>(min(u_input.c.x, 0u), global2.d.x | arg_3.d.x), false)), ~(~min(arg_3.d.x, 4294967295u)) ^ ~(~17323u), !(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_2.a))) >= -1694f), arg_0.a);
    var var_0 = _wgslsmith_mult_vec2_u32(arg_3.b.a, min(vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.c.yyz, select(u_input.c.zzw, u_input.c.xyy, false)), _wgslsmith_add_u32(_wgslsmith_clamp_u32(global2.d.x, u_input.c.x, 0u), arg_3.c.d.x)), global2.d));
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1174f, -1025f));
    let var_2 = ~global2.d.x;
    var var_3 = arg_3;
    return var_3.b;
}

fn func_1() -> u32 {
    let var_0 = Struct_2(-73081i, func_4(Struct_1(~func_2(4294967295u, vec2<bool>(global1.x, false), vec2<bool>(true, global1.x)), u_input.c.x, false, vec2<u32>(~34828u, max(u_input.c.x, global2.a.x))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(132f, _wgslsmith_f_op_f32(sign(886f))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2033f, -249f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-174f, 331f), vec2<f32>(-979f, 328f), vec2<bool>(false, false))))), select(vec2<bool>(true, global2.c), !vec2<bool>(global2.c, global2.c), select(vec2<bool>(false, global2.c), vec2<bool>(false, global1.x), global2.c)))), Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(466f, -2269f, false)) + _wgslsmith_f_op_f32(round(-590f)))), Struct_2(_wgslsmith_div_i32(i32(-1i) * -50447i, -u_input.a), Struct_1(u_input.c.wy ^ vec2<u32>(0u, global2.b), _wgslsmith_clamp_u32(48034u, 0u, u_input.c.x), true, ~u_input.c.yx), Struct_1(u_input.c.yz, u_input.c.x, u_input.d.x <= u_input.e.x, vec2<u32>(29686u, u_input.c.x)), select(vec2<u32>(global2.b, global2.b), u_input.c.yw << (vec2<u32>(0u, u_input.c.x) % vec2<u32>(32u)), !vec2<bool>(global1.x, global1.x)))), Struct_1(vec2<u32>(35821u, ~58482u), 4294967295u, !(countOneBits(1i) == _wgslsmith_dot_vec4_i32(u_input.d, vec4<i32>(u_input.d.x, 2147483647i, 30288i, 1i))), vec2<u32>(global2.d.x, _wgslsmith_mult_u32(firstLeadingBit(28729u), u_input.c.x << (u_input.c.x % 32u)))), vec2<u32>(12175u, 4294967295u));
    let var_1 = var_0.c;
    var var_2 = ~_wgslsmith_div_u32(u_input.c.x, ~0u);
    var_2 = u_input.c.x;
    global1 = select(!(!select(select(vec2<bool>(true, true), vec2<bool>(global2.c, global1.x), true), vec2<bool>(var_0.b.c, var_1.c), select(vec2<bool>(var_0.c.c, global2.c), vec2<bool>(global1.x, false), vec2<bool>(false, var_1.c)))), select(select(!(!vec2<bool>(var_1.c, global1.x)), !vec2<bool>(var_0.b.c, var_1.c), !select(vec2<bool>(false, var_1.c), vec2<bool>(global1.x, false), global1.x)), !select(vec2<bool>(true, true), vec2<bool>(var_0.b.c, false), select(vec2<bool>(global1.x, global1.x), vec2<bool>(var_0.c.c, true), vec2<bool>(true, true))), !vec2<bool>(6918u > var_0.d.x, true)), vec2<bool>(!any(vec4<bool>(true, true, true, true)), true));
    return ~(~countOneBits(26015u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(vec2<u32>(~(~func_1()), _wgslsmith_clamp_u32(_wgslsmith_add_u32(max(4294967295u, 43526u), 0u), u_input.c.x, func_2(u_input.c.x, vec2<bool>(global2.c, global2.c), vec2<bool>(true, true)).x)));
    global1 = vec2<bool>(-1758f == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(978f, -468f))) - _wgslsmith_f_op_f32(trunc(-187f))), !global2.c);
    global0 = array<vec3<bool>, 29>();
    global0 = array<vec3<bool>, 29>();
    global2 = func_4(Struct_1(select(_wgslsmith_add_vec2_u32(~vec2<u32>(var_0.x, u_input.c.x), ~vec2<u32>(var_0.x, u_input.c.x)), ~(~global2.a), _wgslsmith_f_op_f32(select(-456f, -748f, global1.x)) != -507f), 4294967295u, true, _wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(firstLeadingBit(u_input.c.yx), ~vec2<u32>(4294967295u, 0u)), vec2<u32>(func_2(var_0.x, vec2<bool>(global1.x, global2.c), vec2<bool>(true, true)).x, ~u_input.c.x))), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -272f))))), -196f), Struct_3(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f * -2003f), _wgslsmith_f_op_f32(-859f - 1442f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(184f - -200f)), true))), Struct_2(1i, func_4(func_4(func_4(Struct_1(global2.a, var_0.x, global2.c, vec2<u32>(0u, 4294967295u)), vec2<f32>(1000f, -240f), Struct_3(-378f), Struct_2(u_input.d.x, Struct_1(u_input.c.yy, 25984u, true, vec2<u32>(u_input.c.x, global2.a.x)), Struct_1(u_input.c.zz, var_0.x, global2.c, vec2<u32>(u_input.c.x, 19561u)), vec2<u32>(var_0.x, global2.d.x))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1142f, 1000f), vec2<f32>(-374f, 228f))), Struct_3(-1711f), Struct_2(-2147483647i, Struct_1(u_input.c.yz, global2.d.x, false, vec2<u32>(0u, u_input.c.x)), Struct_1(vec2<u32>(global2.d.x, 4294967295u), var_0.x, true, vec2<u32>(global2.b, 4294967295u)), vec2<u32>(1u, 11183u))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-266f, -1087f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(273f, -200f)))), Struct_3(_wgslsmith_f_op_f32(-659f * 888f)), Struct_2(0i, func_4(Struct_1(u_input.c.yz, global2.b, global1.x, var_0), vec2<f32>(1222f, -275f), Struct_3(-250f), Struct_2(u_input.a, Struct_1(vec2<u32>(32152u, 0u), global2.b, global1.x, u_input.c.wy), Struct_1(vec2<u32>(u_input.c.x, 4294967295u), var_0.x, global1.x, vec2<u32>(0u, u_input.c.x)), var_0)), Struct_1(vec2<u32>(global2.b, 1u), var_0.x, true, vec2<u32>(global2.b, var_0.x)), vec2<u32>(7171u, global2.b))), func_4(Struct_1(~global2.a, global2.d.x, any(vec2<bool>(true, true)), ~u_input.c.wx), vec2<f32>(-1149f, -244f), Struct_3(_wgslsmith_f_op_f32(1122f - -1951f)), Struct_2(-13697i >> (global2.b % 32u), func_4(Struct_1(vec2<u32>(u_input.c.x, u_input.c.x), 16970u, true, vec2<u32>(0u, u_input.c.x)), vec2<f32>(-970f, 542f), Struct_3(1000f), Struct_2(u_input.a, Struct_1(u_input.c.yw, u_input.c.x, global2.c, vec2<u32>(global2.d.x, u_input.c.x)), Struct_1(global2.a, u_input.c.x, true, global2.a), u_input.c.xx)), Struct_1(var_0, global2.b, global1.x, var_0), u_input.c.zx)), _wgslsmith_mod_vec2_u32(~(u_input.c.zz | var_0), var_0)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec3<u32>(min(~36551u, 43921u), u_input.c.x, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 28048u), ~var_0))), -(_wgslsmith_sub_i32(-u_input.b.x, u_input.e.x) << (9720u % 32u)), global2.a);
}

