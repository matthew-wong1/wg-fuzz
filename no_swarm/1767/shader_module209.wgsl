struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec2<u32>, arg_1: i32, arg_2: Struct_2) -> i32 {
    return firstTrailingBit(-65827i);
}

fn func_2() -> bool {
    var var_0 = 0u;
    let var_1 = true;
    var var_2 = abs(~(~vec4<i32>(-20022i, u_input.a, -16831i, u_input.a))) ^ (firstLeadingBit(countOneBits(-vec4<i32>(40497i, u_input.a, u_input.a, u_input.a))) << (vec4<u32>(min(~0u, 1u), 28524u, ~4294967295u, 0u) % vec4<u32>(32u)));
    let var_3 = var_1;
    var var_4 = Struct_3(Struct_1(583f, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(func_3(vec2<u32>(5339u, 0u), 2147483647i, Struct_2(Struct_1(1065f, u_input.a, vec3<i32>(-77299i, var_2.x, u_input.a)))), reverseBits(var_2.x)), var_2.x, firstTrailingBit(var_2.x) << (~60530u % 32u)), -(var_2.wxx | reverseBits(vec3<i32>(u_input.a, 5284i, u_input.a)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1141f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(200f, -1136f) + _wgslsmith_f_op_f32(step(1438f, 102f)))) * -1562f));
    return var_3;
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: Struct_3, arg_3: f32) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_f32(arg_2.a.a + arg_2.a.a);
    var var_1 = select(~_wgslsmith_div_vec4_u32(~(~vec4<u32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)), firstLeadingBit(countOneBits(vec4<u32>(98398u, 36463u, 70393u, 1u)))), arg_0, select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false)), !vec4<bool>(select(true, true, true), true, func_2(), false), true));
    var var_2 = ~vec4<i32>(-arg_2.a.b, _wgslsmith_mod_i32(~(-2147483647i), ~1i) >> (_wgslsmith_mult_u32(~arg_0.x, select(24313u, arg_0.x, true)) % 32u), 2147483647i, _wgslsmith_div_i32(u_input.a, u_input.a));
    var var_3 = Struct_2(arg_2.a);
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_3.a.a, 1000f))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3, -107f))))));
    return vec4<i32>(-arg_2.a.b, max(18054i, -var_3.a.c.x), _wgslsmith_sub_i32(-_wgslsmith_mod_i32(~(-1i), 29296i), _wgslsmith_mod_i32(_wgslsmith_mod_i32(22541i, ~arg_2.a.c.x), ~firstLeadingBit(var_3.a.c.x))), -1i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_i32(_wgslsmith_div_i32(-2147483647i ^ firstTrailingBit(u_input.a), -_wgslsmith_div_i32(2147483647i, ~u_input.a)), _wgslsmith_dot_vec4_i32(select(vec4<i32>(-2147483647i, u_input.a, u_input.a, u_input.a), func_1(vec4<u32>(0u, 1u, 4294967295u, 4294967295u), Struct_3(Struct_1(-954f, -30530i, vec3<i32>(u_input.a, -11438i, -12624i)), 404f), Struct_3(Struct_1(555f, u_input.a, vec3<i32>(u_input.a, -2147483647i, u_input.a)), -718f), 632f), true), -_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, 0i, u_input.a), vec4<i32>(-2757i, u_input.a, u_input.a, u_input.a))) << (90572u % 32u));
    let var_1 = ~_wgslsmith_mod_u32(10235u, ~_wgslsmith_mod_u32(16091u, 1u));
    var var_2 = select(!select(vec4<bool>(all(vec2<bool>(false, false)), true, true, false), vec4<bool>(true, true, func_2(), select(true, true, true)), vec4<bool>(true, true, true, true)), select(vec4<bool>(!select(false, false, false), true, -2147483647i > _wgslsmith_sub_i32(46101i, var_0), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, any(vec3<bool>(false, true, true)), true), select(vec4<bool>(true, true, false, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), true), vec4<bool>(true, true, true, true))), !select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false)), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false)), true)), vec4<bool>(false, select(true, !all(vec2<bool>(false, false)), true), true, abs(var_0 << (var_1 % 32u)) <= _wgslsmith_dot_vec4_i32(vec4<i32>(-5233i, 48593i, -13530i, -49234i), vec4<i32>(var_0, var_0, 2147483647i, 64384i) | vec4<i32>(var_0, 230i, 1654i, var_0))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1);
}

