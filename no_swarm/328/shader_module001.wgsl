struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec3<u32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: i32,
    d: vec4<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 26217i;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: i32) -> vec4<bool> {
    return !vec4<bool>(false, all(!vec3<bool>(arg_1.a, arg_1.a, arg_0.a.a)), all(select(select(vec4<bool>(arg_0.a.a, arg_1.a, arg_0.a.a, true), vec4<bool>(true, arg_1.a, arg_1.a, arg_0.a.a), arg_0.a.a), vec4<bool>(false, false, arg_1.a, false), arg_2 != arg_2)), true);
}

fn func_3(arg_0: Struct_3, arg_1: vec3<i32>) -> u32 {
    global0 = firstTrailingBit(arg_0.c.c.x);
    var var_0 = Struct_3(arg_0.b, arg_0.c, Struct_1(!arg_0.c.a || (_wgslsmith_sub_i32(arg_1.x, -1i) <= u_input.b.x), ~min(vec3<u32>(19942u, arg_0.a.d.x, 0u), abs(vec3<u32>(arg_0.a.d.x, 18565u, u_input.d.x))), arg_0.a.c, arg_0.c.d, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(arg_0.a.e.x * arg_0.a.e.x), -1553f))));
    var_0 = arg_0;
    let var_1 = _wgslsmith_dot_vec3_i32(vec3<i32>(reverseBits(arg_0.c.c.x), -u_input.c, _wgslsmith_dot_vec4_i32(vec4<i32>(23552i, ~(-48044i), min(arg_0.c.c.x, 0i), 0i), abs(vec4<i32>(20470i, 1i, var_0.b.c.x, 11742i)))), arg_0.b.c.zyw);
    let var_2 = all(select(vec3<bool>(true, true, true), vec3<bool>(true, arg_0.c.a, arg_0.c.a), !vec3<bool>(any(vec2<bool>(arg_0.b.a, false)), all(vec4<bool>(true, false, false, arg_0.a.a)), any(vec3<bool>(false, false, false)))));
    return u_input.d.x;
}

fn func_1() -> Struct_1 {
    global0 = u_input.b.x;
    var var_0 = vec3<u32>(_wgslsmith_mult_u32(29835u, abs(4294967295u) | ~firstTrailingBit(4294967295u)), _wgslsmith_sub_u32(~42496u, reverseBits(55305u)), 4294967295u);
    let var_1 = vec3<bool>(false | ((_wgslsmith_clamp_u32(var_0.x, var_0.x, 570u) <= u_input.a.x) | any(func_2(Struct_2(Struct_1(false, vec3<u32>(0u, var_0.x, 0u), vec4<i32>(-58127i, -10966i, u_input.c, 2147483647i), u_input.e, vec2<f32>(-1019f, -954f))), Struct_1(true, vec3<u32>(u_input.a.x, 0u, 4294967295u), vec4<i32>(-1i, u_input.b.x, -26406i, 23977i), vec3<u32>(4294967295u, u_input.e.x, 0u), vec2<f32>(-108f, 917f)), u_input.c))), _wgslsmith_dot_vec3_u32(vec3<u32>(4190u, var_0.x, u_input.d.x & 0u), ~u_input.e & ~vec3<u32>(2114u, var_0.x, var_0.x)) <= ~(~var_0.x << (u_input.a.x % 32u)), any(select(func_2(Struct_2(Struct_1(true, vec3<u32>(4294967295u, 1u, u_input.d.x), vec4<i32>(u_input.b.x, -11907i, -3597i, 1i), u_input.e, vec2<f32>(1779f, 588f))), Struct_1(false, u_input.a.yzx, u_input.b, u_input.a.xzz, vec2<f32>(-255f, 440f)), _wgslsmith_clamp_i32(-2147483647i, u_input.c, u_input.c)), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false)), vec4<bool>(true, true, true, true))));
    var var_2 = abs(~(~(func_3(Struct_3(Struct_1(var_1.x, vec3<u32>(0u, var_0.x, var_0.x), vec4<i32>(u_input.c, -3593i, u_input.c, u_input.b.x), vec3<u32>(35631u, 4294967295u, 4294967295u), vec2<f32>(-155f, -167f)), Struct_1(true, u_input.a.yxy, u_input.b, u_input.e, vec2<f32>(802f, 1047f)), Struct_1(true, vec3<u32>(var_0.x, var_0.x, u_input.a.x), vec4<i32>(18076i, 11851i, u_input.b.x, 38749i), vec3<u32>(var_0.x, 1u, var_0.x), vec2<f32>(185f, 1841f))), u_input.b.zwy) | ~12967u)));
    global0 = u_input.b.x;
    return Struct_1(false, ~vec3<u32>(select(firstTrailingBit(0u), 1u, all(vec4<bool>(false, true, var_1.x, false))), _wgslsmith_mult_u32(99222u, _wgslsmith_dot_vec3_u32(vec3<u32>(4068u, 24049u, 1u), u_input.a.zzz)), var_0.x), vec4<i32>(u_input.b.x, -11890i, -5641i, u_input.b.x), ~vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.e.x, u_input.a.x, u_input.a.x, u_input.e.x), vec4<u32>(u_input.a.x, 1u, 49121u, 1u)), _wgslsmith_add_vec4_u32(u_input.a, vec4<u32>(var_0.x, u_input.a.x, u_input.d.x, var_0.x))), func_3(Struct_3(Struct_1(true, vec3<u32>(var_0.x, 101907u, 4294967295u), vec4<i32>(38058i, u_input.b.x, 2147483647i, u_input.c), u_input.e, vec2<f32>(353f, 972f)), Struct_1(true, u_input.a.xyx, u_input.b, vec3<u32>(4294967295u, u_input.e.x, var_0.x), vec2<f32>(-1146f, 1281f)), Struct_1(true, vec3<u32>(18215u, 0u, var_0.x), vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.b.x), u_input.e, vec2<f32>(2088f, -1118f))), min(u_input.b.xzx, vec3<i32>(u_input.b.x, u_input.b.x, -13674i))), 0u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1287f, _wgslsmith_f_op_f32(round(1f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_1(), func_1(), func_1());
    var var_1 = max(firstTrailingBit(-min(var_0.a.c.zz << (u_input.d.yz % vec2<u32>(32u)), vec2<i32>(-8257i, 25554i))), u_input.b.zx);
    var var_2 = -764f;
    var var_3 = _wgslsmith_mod_vec4_i32(~reverseBits(~(-var_0.b.c)), ~_wgslsmith_mod_vec4_i32(~(vec4<i32>(1i, var_1.x, var_0.b.c.x, -29522i) ^ var_0.b.c), reverseBits(vec4<i32>(var_0.c.c.x, var_1.x, u_input.c, -14602i)) & -vec4<i32>(31076i, u_input.b.x, 28494i, 36570i)));
    let var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.e.x, var_0.c.e.x, var_0.c.e.x)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(435f, 2178f, var_0.c.e.x) - vec3<f32>(var_0.a.e.x, var_0.c.e.x, 1170f)))) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.e.x, 895f, var_0.c.e.x)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.c.e.x, -571f, 941f), vec3<f32>(-637f, var_0.a.e.x, var_0.c.e.x))))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.b.e.x, -196f, 1216f)))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.e.x, var_0.b.e.x, var_0.a.e.x) - vec3<f32>(var_0.a.e.x, var_0.c.e.x, var_0.c.e.x)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.e.x, var_0.c.e.x, 1094f)))));
    let var_5 = Struct_2(Struct_1((29655u >> (u_input.d.x % 32u)) == (~var_0.a.d.x | firstLeadingBit(var_0.b.d.x)), var_0.a.d, _wgslsmith_mod_vec4_i32(u_input.b ^ var_0.b.c, select(vec4<i32>(var_3.x, u_input.b.x, u_input.b.x, 2147483647i), u_input.b, vec4<bool>(false, false, var_0.a.a, false))) | var_0.c.c, vec3<u32>(u_input.a.x, var_0.b.b.x, _wgslsmith_add_u32(u_input.d.x, var_0.a.d.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.a.e), _wgslsmith_f_op_vec2_f32(-var_4.zz)))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(var_0.c.c & vec4<i32>(var_3.x, 38372i, -2147483647i, var_5.a.c.x), var_0.c.c), var_1.x), ~(~var_5.a.b.x), ~_wgslsmith_mult_i32(max(var_1.x, var_1.x), -var_3.x) << (_wgslsmith_sub_u32(4294967295u, ~1u) % 32u));
}

