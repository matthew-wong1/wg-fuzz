struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: f32,
    b: vec3<bool>,
    c: bool,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-38414i, 6222i, 2147483647i);

var<private> global1: array<i32, 21> = array<i32, 21>(-1i, 0i, 1i, -1i, 21525i, 0i, 8649i, 37756i, i32(-2147483648), i32(-2147483648), i32(-2147483648), 1i, 2147483647i, -14405i, -4638i, -1i, 1i, -43091i, 0i, 1i, 18992i);

var<private> global2: f32;

var<private> global3: Struct_2 = Struct_2(792f, vec3<bool>(false, true, false), false, -1574f, Struct_1(-939f, vec4<i32>(2147483647i, -62752i, 0i, i32(-2147483648)), -256i, -792f));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> bool {
    global3 = Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(513f + 469f))), !vec3<bool>(false, max(global0.x, global3.e.c) > -u_input.b, !global3.c), countOneBits(_wgslsmith_div_i32(abs(1i), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -1i), vec2<i32>(-32332i, u_input.b)))) < 1i, 1000f, global3.e);
    var var_0 = vec2<bool>(all(select(!vec2<bool>(global3.b.x, false), vec2<bool>(false, global3.c), true)), !(_wgslsmith_mod_i32(u_input.b, 4976i >> (u_input.a.x % 32u)) == (abs(2147483647i) >> (_wgslsmith_mod_u32(0u, 19589u) % 32u))));
    global3 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1520f)))), select(vec3<bool>(all(vec2<bool>(var_0.x, false)) & true, true, !global3.c), !(!select(vec3<bool>(false, true, var_0.x), global3.b, vec3<bool>(false, global3.c, var_0.x))), !(!global3.b)), any(vec4<bool>(all(!vec4<bool>(true, false, global3.b.x, global3.b.x)), global0.x > reverseBits(u_input.b), true, true)), _wgslsmith_f_op_f32(-315f + global3.d), Struct_1(_wgslsmith_f_op_f32(global3.d + 689f), global3.e.b << (~(~u_input.a) % vec4<u32>(32u)), u_input.b, _wgslsmith_f_op_f32(f32(-1f) * -2171f)));
    global3 = Struct_2(_wgslsmith_f_op_f32(floor(-440f)), vec3<bool>(global3.b.x, true, all(select(select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, var_0.x), var_0.x), select(vec2<bool>(true, global3.b.x), vec2<bool>(var_0.x, global3.c), global3.c), select(global3.b.yx, vec2<bool>(false, var_0.x), vec2<bool>(var_0.x, false))))), any(vec3<bool>(!global3.c, any(!vec4<bool>(var_0.x, false, var_0.x, true)), all(vec2<bool>(var_0.x, false)))), _wgslsmith_f_op_f32(max(1567f, -1061f)), global3.e);
    return all(!vec4<bool>(!(var_0.x | var_0.x), any(vec4<bool>(var_0.x, global3.b.x, var_0.x, true)) || global3.b.x, all(!vec4<bool>(global3.c, false, true, global3.c)), any(select(global3.b, global3.b, true))));
}

fn func_2(arg_0: u32, arg_1: vec3<bool>) -> Struct_3 {
    global2 = 1130f;
    global0 = select(_wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(global3.e.b.wyy, vec3<i32>(global3.e.c, u_input.b, -1i)), ~vec3<i32>(u_input.b, global0.x, 12413i)), min(~vec3<i32>(-24751i, global3.e.c, global3.e.b.x), vec3<i32>(3973i, u_input.b, 0i))), vec3<i32>(global0.x, 2147483647i, u_input.b) | vec3<i32>(-2147483647i, 1i, ~global3.e.c)), global3.e.b.zzz, arg_1.x);
    global1 = array<i32, 21>();
    global3 = Struct_2(-539f, select(select(select(arg_1, arg_1, arg_1.x), arg_1, arg_1.x), global3.b, global3.c), func_3(), _wgslsmith_div_f32(global3.d, global3.d), Struct_1(1414f, vec4<i32>(2147483647i, min(33510i, -1i), global3.e.b.x, 14701i), select(reverseBits(_wgslsmith_dot_vec2_i32(global0.zx, global0.zy)), _wgslsmith_dot_vec2_i32(abs(global0.yx), _wgslsmith_mod_vec2_i32(global0.xz, vec2<i32>(u_input.b, u_input.b))), true & (20582u >= arg_0)), _wgslsmith_div_f32(global3.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.d + -695f) * _wgslsmith_f_op_f32(sign(-169f))))));
    var var_0 = arg_0;
    return Struct_3(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.d, global3.a, global3.e.d)) * vec3<f32>(-1067f, global3.d, 1549f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.a, global3.e.d, -480f) * vec3<f32>(global3.a, global3.d, global3.a)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-642f, global3.d, global3.d))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.e.a, global3.d, -232f) * vec3<f32>(global3.a, -332f, 1517f)))))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_3) -> Struct_1 {
    var var_0 = arg_1;
    var var_1 = func_2(_wgslsmith_mult_u32(firstTrailingBit(u_input.a.x), 4294967295u), !vec3<bool>(global3.c, true != select(false, global3.c, global3.b.x), global3.c));
    let var_2 = global3.b;
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.a.x, _wgslsmith_f_op_f32(arg_0.d - arg_0.d), var_0.a.x, -225f))) + vec4<f32>(global3.d, 408f, var_0.a.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(452f))))))));
    let var_4 = func_2(_wgslsmith_mult_u32(reverseBits(_wgslsmith_sub_u32(u_input.a.x, ~35781u)), 4294967295u), vec3<bool>(true, true, !var_2.x));
    return global3.e;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> StorageBuffer {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global3.e.d - global3.a), _wgslsmith_f_op_f32(-1107f * _wgslsmith_f_op_f32(exp2(arg_0.a))))) + arg_0.d), func_1(Struct_1(-1000f, arg_1.b ^ reverseBits(global3.e.b), u_input.b, arg_0.d), func_2(36873u, vec3<bool>(false, 20592u != u_input.c, global3.b.x))).b, -20267i, _wgslsmith_f_op_f32(f32(-1f) * -116f));
    global2 = -1416f;
    let var_1 = ~min(u_input.d, u_input.c ^ 1u);
    var var_2 = -1560f;
    global2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.a + 321f), _wgslsmith_f_op_f32(216f * _wgslsmith_f_op_f32(round(arg_0.a)))));
    return StorageBuffer(~(~vec2<i32>(arg_0.c, global0.x)), ~(~_wgslsmith_sub_u32(~91518u, var_1 ^ var_1)), global0.zy);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.yyy;
    var var_1 = 0u;
    var_0 = u_input.a.zxz;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(445f, global3.d) - vec2<f32>(-1328f, global3.d)))))));
    var var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global3.e.a, -121f, var_2.x)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, 1146f, 419f)), _wgslsmith_f_op_f32(trunc(global3.d)) <= _wgslsmith_f_op_f32(-global3.a)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(859f, 331f, var_2.x) * vec3<f32>(1541f, var_2.x, 942f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-890f, var_2.x, var_2.x) + vec3<f32>(-1000f, -1733f, global3.d))) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(699f, global3.a, var_2.x), vec3<f32>(var_2.x, 499f, 1584f))))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, -1169f, global3.a) - vec3<f32>(524f, var_2.x, -878f))))))));
    var_3 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.x - _wgslsmith_div_f32(global3.a, _wgslsmith_f_op_f32(-563f - var_3.x))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-928f, -511f))), -1067f, 513f);
    var_1 = ~(~66356u);
    let x = u_input.a;
    s_output = func_4(func_1(Struct_1(_wgslsmith_f_op_f32(global3.e.d - 129f), vec4<i32>(firstTrailingBit(global0.x), u_input.b, u_input.b, -2147483647i), 26372i, _wgslsmith_f_op_f32(global3.a * _wgslsmith_f_op_f32(-global3.a))), Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1202f, 1469f, var_3.x))))), global3.e);
}

