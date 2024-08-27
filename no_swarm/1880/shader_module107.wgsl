struct Struct_1 {
    a: f32,
    b: bool,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: bool,
    d: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: u32,
    d: vec2<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: vec4<bool>, arg_1: u32, arg_2: vec2<f32>, arg_3: vec3<u32>) -> Struct_2 {
    global0 = Struct_1(-1043f, true, _wgslsmith_f_op_vec3_f32(-global0.c));
    global0 = Struct_1(global0.a, (true || arg_0.x) | (true || any(!arg_0.zy)), global0.c);
    let var_0 = vec3<bool>(all(arg_0), false, !global0.b);
    global0 = Struct_1(arg_2.x, var_0.x, global0.c);
    var var_1 = Struct_1(1000f, global0.b, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_2.x, arg_2.x, global0.a))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0.c.x, arg_2.x, -1665f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c.x, arg_2.x, arg_2.x)))))));
    return Struct_2(var_0.xy, -abs(_wgslsmith_add_vec4_i32(vec4<i32>(14714i, -36606i, 54205i, -2147483647i) >> (vec4<u32>(1u, arg_1, arg_1, 0u) % vec4<u32>(32u)), vec4<i32>(-38586i, 20596i, -1i, 31288i))), !any(arg_0.yyw), -2147483647i);
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: Struct_2) -> f32 {
    return _wgslsmith_f_op_f32(-global0.a);
}

fn func_4(arg_0: u32, arg_1: Struct_2) -> Struct_2 {
    global0 = Struct_1(797f, false, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1472f, _wgslsmith_f_op_f32(f32(-1f) * -102f), _wgslsmith_f_op_f32(241f + global0.a)))));
    let var_0 = ~abs(_wgslsmith_add_vec3_i32(max(vec3<i32>(1i, arg_1.d, -1i), arg_1.b.www), arg_1.b.xzy) & vec3<i32>(_wgslsmith_clamp_i32(0i, arg_1.d, -2147483647i), func_2(vec4<bool>(false, true, true, true), u_input.a.x, vec2<f32>(global0.c.x, 645f), u_input.a).d, -2147483647i));
    let var_1 = func_2(!vec4<bool>(true, true, any(select(arg_1.a, arg_1.a, global0.b)), true), ~24664u, vec2<f32>(global0.a, -151f), _wgslsmith_add_vec3_u32(u_input.a & countOneBits(u_input.a), ~u_input.a));
    return arg_1;
}

fn func_1(arg_0: vec3<u32>, arg_1: i32, arg_2: u32) -> i32 {
    var var_0 = func_2(!vec4<bool>(any(vec2<bool>(false, global0.b)) | true, true | (false & global0.b), _wgslsmith_f_op_f32(-global0.c.x) <= _wgslsmith_f_op_f32(min(1148f, global0.c.x)), true), 4294967295u, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.c.x, _wgslsmith_div_f32(_wgslsmith_div_f32(global0.c.x, global0.c.x), -1283f))), ~(~arg_0));
    var_0 = func_4(_wgslsmith_mod_u32(arg_0.x, ~22643u << (_wgslsmith_dot_vec3_u32(u_input.a | arg_0, u_input.a) % 32u)), func_2(vec4<bool>(!(!var_0.a.x), var_0.a.x, abs(var_0.d) != arg_1, global0.b), 1u, vec2<f32>(_wgslsmith_f_op_f32(-1049f + _wgslsmith_f_op_f32(func_3(global0.c.x, Struct_2(var_0.a, var_0.b, true, -2147483647i), Struct_2(var_0.a, var_0.b, true, var_0.d)))), 1035f), min(reverseBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0.x, 8291u, 1u), arg_0, vec3<u32>(1u, arg_2, 1u))), u_input.a)));
    let var_1 = vec3<u32>(_wgslsmith_add_u32(6363u, _wgslsmith_clamp_u32(min(_wgslsmith_add_u32(0u, 47033u), 44759u), select(max(0u, arg_0.x), _wgslsmith_clamp_u32(u_input.a.x, 6997u, u_input.a.x), any(vec2<bool>(global0.b, global0.b))), u_input.a.x)), arg_0.x, reverseBits(91252u));
    var var_2 = _wgslsmith_mult_vec3_i32(vec3<i32>(min(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.d, var_0.d, 0i, var_0.b.x), vec4<i32>(2147483647i, -1i, var_0.d, var_0.d)), arg_1 >> (52110u % 32u)), _wgslsmith_mod_i32(var_0.b.x, arg_1) ^ 0i), var_0.b.x, max(-_wgslsmith_div_i32(var_0.b.x, 0i), _wgslsmith_mod_i32(firstTrailingBit(arg_1), _wgslsmith_mult_i32(arg_1, 1i)))), min(var_0.b.yzx, ~(var_0.b.zyy & vec3<i32>(-4842i, -11801i, var_0.d))) >> (~_wgslsmith_mult_vec3_u32(arg_0, vec3<u32>(arg_0.x, u_input.a.x, var_1.x)) % vec3<u32>(32u)));
    let var_3 = func_2(select(select(vec4<bool>(all(vec3<bool>(global0.b, false, global0.b)), true, true, var_0.a.x), select(!vec4<bool>(global0.b, false, false, global0.b), !vec4<bool>(var_0.c, true, global0.b, false), vec4<bool>(global0.b, var_0.a.x, var_0.a.x, false)), true), !select(vec4<bool>(var_0.a.x, var_0.c, false, global0.b), !vec4<bool>(true, global0.b, var_0.a.x, true), select(vec4<bool>(global0.b, false, global0.b, global0.b), vec4<bool>(true, false, var_0.c, var_0.a.x), true)), (~0i <= func_4(10680u, Struct_2(var_0.a, var_0.b, var_0.a.x, var_0.d)).b.x) || ((12684u < var_1.x) | !var_0.a.x)), var_1.x, vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-115f, global0.c.x)))), _wgslsmith_f_op_f32(f32(-1f) * -1270f)), u_input.a);
    return abs(_wgslsmith_clamp_i32(-abs(_wgslsmith_dot_vec3_i32(vec3<i32>(var_3.d, arg_1, var_3.d), vec3<i32>(arg_1, 2147483647i, arg_1))), i32(-1i) * -_wgslsmith_dot_vec3_i32(vec3<i32>(var_2.x, var_2.x, 4689i), vec3<i32>(arg_1, var_0.d, var_2.x)), _wgslsmith_mod_i32(max(var_2.x, var_2.x), -1i) << (~(~arg_0.x) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(vec2<bool>(any(vec4<bool>(!global0.b, true, true, global0.b || global0.b)), -(~(-15020i)) > max(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 0i), vec2<i32>(-3896i, -46442i)), ~27725i)), _wgslsmith_sub_vec4_i32(max(vec4<i32>(~(-2147483647i), i32(-1i) * -1i, 20222i, _wgslsmith_add_i32(9560i, -1i)), vec4<i32>(~(-2147483647i), -16369i >> (u_input.a.x % 32u), -19160i, min(2147483647i, 26280i))), vec4<i32>(1i, 1i, 1i, 1i)), true, func_1(u_input.a >> (vec3<u32>(_wgslsmith_dot_vec2_u32(u_input.a.zz, u_input.a.yy), 1u, reverseBits(u_input.a.x)) % vec3<u32>(32u)), ~_wgslsmith_dot_vec2_i32(~vec2<i32>(2147483647i, 0i), max(vec2<i32>(8490i, 20435i), vec2<i32>(-2147483647i, 5893i))), ~((0u | u_input.a.x) >> (_wgslsmith_sub_u32(0u, u_input.a.x) % 32u))));
    let var_1 = u_input.a;
    var var_2 = _wgslsmith_f_op_f32(-109f + 1063f);
    let var_3 = var_0;
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(594f - _wgslsmith_f_op_f32(func_3(1f, func_2(vec4<bool>(var_0.c, false, var_0.a.x, global0.b), ~75823u, vec2<f32>(958f, 1000f), reverseBits(u_input.a)), func_2(select(vec4<bool>(true, var_0.a.x, global0.b, true), vec4<bool>(var_0.a.x, global0.b, var_0.c, false), vec4<bool>(false, global0.b, true, var_3.a.x)), var_1.x, global0.c.yz, u_input.a)))));
    let var_4 = vec3<f32>(803f, _wgslsmith_f_op_f32(-global0.c.x), global0.c.x);
    var var_5 = _wgslsmith_f_op_f32(var_4.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-812f)) - global0.a), -322f));
    var_2 = -934f;
    var_5 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-3395f, 262f)), _wgslsmith_f_op_f32(-global0.a))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-177f + 1000f), 1207f, false)), 518f)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(var_0.d, 18271i << ((select(21918u, var_1.x, global0.b) | var_1.x) % 32u), var_3.b.x), var_0.b & select(firstTrailingBit(vec4<i32>(var_3.d, 62696i, 9706i, var_0.d)), ~(-vec4<i32>(-27385i, var_0.b.x, -16476i, 27402i)), vec4<bool>(false, true, var_0.a.x, !global0.b)), _wgslsmith_add_u32(~abs(_wgslsmith_dot_vec4_u32(vec4<u32>(48516u, var_1.x, var_1.x, u_input.a.x), vec4<u32>(var_1.x, var_1.x, 0u, u_input.a.x))), reverseBits(_wgslsmith_mod_u32(77942u, 26800u))), global0.c.xx, vec4<f32>(var_4.x, global0.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_4.x, global0.a))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.c.x)))), var_4.x));
}

