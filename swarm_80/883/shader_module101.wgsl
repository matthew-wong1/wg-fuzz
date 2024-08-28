struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: u32) -> vec4<f32> {
    var var_0 = all(!vec4<bool>(true, true, false | all(vec4<bool>(false, true, false, false)), true));
    let var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-653f, 680f, 1311f, -1224f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-508f, -477f, 1406f, 1135f) + vec4<f32>(-262f, 755f, -620f, 309f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, 369f, 931f, 176f), vec4<f32>(643f, -1000f, 196f, -1000f))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -249f, 2117f, -929f) * vec4<f32>(-866f, -481f, -623f, -682f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1100f, 978f, -718f, -158f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1205f, -430f, -1000f, 933f) - vec4<f32>(1636f, -209f, 278f, -242f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1059f, -308f, 1130f, -982f)) + _wgslsmith_div_vec4_f32(vec4<f32>(1838f, 606f, -1000f, -310f), vec4<f32>(615f, -850f, -371f, 1748f))))), vec4<bool>(!select(true, true, true), -u_input.a != -(u_input.a & u_input.a), true, !(reverseBits(-8707i) <= u_input.a))));
    var_0 = !(true & (_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, 0i, 2147483647i) & vec4<i32>(1i, -2635i, u_input.a, u_input.a), vec4<i32>(57502i, u_input.a, u_input.a, u_input.a) << (u_input.b % vec4<u32>(32u))) >= -abs(-16860i)));
    var var_2 = true;
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -298f), -1000f), var_1.x) + vec2<f32>(_wgslsmith_f_op_f32(-var_1.x), var_1.x)));
    return _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(var_1)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, 351f, 161f, var_1.x), var_1))))));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_3, arg_2: bool, arg_3: Struct_3) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(func_3(130741u));
    let var_1 = min(arg_0.a.x, (arg_0.a.x >> ((u_input.c ^ (1u & arg_0.a.x)) % 32u)) | 0u);
    let var_2 = -219f;
    var var_3 = -select(vec4<i32>(abs(1i), _wgslsmith_dot_vec3_i32(vec3<i32>(0i, -1i, arg_3.a.x), arg_1.a), 16155i, ~(~u_input.a)), -vec4<i32>(-u_input.a, 1i, -2147483647i, countOneBits(-37913i)), abs(_wgslsmith_dot_vec4_u32(u_input.b, u_input.b)) < u_input.b.x);
    let var_4 = !(1i >= (34420i >> ((arg_0.a.x << (u_input.b.x % 32u)) % 32u)));
    return _wgslsmith_f_op_f32(-var_2);
}

fn func_1(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: f32, arg_3: vec3<f32>) -> vec2<f32> {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.x - _wgslsmith_f_op_f32(ceil(646f))) + -1471f));
    let var_0 = -arg_0.a.yx << (arg_1.xy % vec2<u32>(32u));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-223f)), _wgslsmith_f_op_f32(func_2(Struct_2(vec3<u32>(u_input.b.x, 57622u, u_input.c), Struct_1(vec2<f32>(arg_3.x, arg_3.x)), Struct_1(vec2<f32>(-2144f, 724f)), true, Struct_1(vec2<f32>(1497f, 162f))), arg_0, true, Struct_3(arg_0.a)))) * _wgslsmith_f_op_f32(f32(-1f) * -766f)) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-296f - _wgslsmith_f_op_f32(trunc(arg_2))), arg_2, true))));
    var var_1 = !vec4<bool>(true, true, all(vec2<bool>(true, true)), true);
    var_1 = vec4<bool>(var_1.x, var_1.x | true, (_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1075f, arg_2))) < arg_3.x) && all(vec4<bool>(false, true, false != var_1.x, var_1.x)), any(vec2<bool>(false, true)));
    return arg_3.zz;
}

fn func_4(arg_0: i32, arg_1: vec2<f32>) -> vec3<bool> {
    global0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(arg_1.x)), -298f));
    let var_0 = Struct_1(arg_1);
    var var_1 = Struct_3(vec3<i32>(max(-_wgslsmith_mod_i32(arg_0, arg_0), -_wgslsmith_mult_i32(1i, 21615i)), -55699i, u_input.a));
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_1.x, _wgslsmith_f_op_f32(186f * _wgslsmith_f_op_f32(-var_0.a.x))), var_0.a)));
    var var_3 = all(vec4<bool>(any(vec3<bool>(any(vec3<bool>(false, false, true)), true, 317f == arg_1.x)), true && all(vec3<bool>(false, true, true)), !all(vec3<bool>(true, true, true)), !(_wgslsmith_f_op_vec2_f32(func_1(Struct_3(var_1.a), vec3<u32>(u_input.c, 4294967295u, u_input.b.x), -1105f, vec3<f32>(-1000f, 1438f, arg_1.x))).x > arg_1.x)));
    return vec3<bool>(any(vec2<bool>(true, true)), false, select((arg_1.x < var_2.a.x) & true, true, all(select(select(vec2<bool>(false, true), vec2<bool>(true, true), true), vec2<bool>(false, false), true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -396f;
    var var_1 = u_input.c;
    var var_2 = !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false);
    let var_3 = _wgslsmith_f_op_f32(-729f - -484f);
    let var_4 = func_4(u_input.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-615f, var_3) + _wgslsmith_f_op_vec2_f32(func_1(Struct_3(vec3<i32>(27500i, -2147483647i, u_input.a)), vec3<u32>(u_input.c, 1u, 4294967295u), -1352f, vec3<f32>(-428f, -482f, 668f))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(948f, -911f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-538f, var_3) + vec2<f32>(-560f, var_3))) + vec2<f32>(1745f, var_3))));
    var var_5 = vec3<i32>(0i, _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(firstTrailingBit(vec4<i32>(u_input.a, -12422i, -1i, 23486i)), -vec4<i32>(-2147483647i, 1i, u_input.a, u_input.a)), countOneBits(-vec4<i32>(1i, u_input.a, -16770i, u_input.a))), -_wgslsmith_mod_i32(~(-1i), _wgslsmith_mult_i32(26025i, u_input.a))), ~(u_input.a & -26027i));
    var_2 = vec3<bool>(var_2.x && select(all(var_4), any(var_4.yz), any(vec4<bool>(var_4.x, var_4.x, var_2.x, true))), true, !var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(firstTrailingBit(select(vec3<i32>(u_input.a, 2147483647i, var_5.x), vec3<i32>(u_input.a, u_input.a, -30151i), var_4.x)) | ((vec3<i32>(1i, 1i, var_5.x) >> (vec3<u32>(78948u, 0u, 8997u) % vec3<u32>(32u))) | ~vec3<i32>(var_5.x, var_5.x, 18746i))), 4294967295u, 1u);
}

