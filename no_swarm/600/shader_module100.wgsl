struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: f32,
    d: f32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec2<u32>,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: f32,
    d: vec2<u32>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(29714i, Struct_1(vec3<f32>(238f, -449f, -485f), -13390i, -2286f, 1260f, vec3<bool>(true, true, false)), 1873f, vec2<u32>(65936u, 4294967295u), vec2<bool>(false, false));

var<private> global1: array<bool, 21>;

var<private> global2: array<vec4<i32>, 1> = array<vec4<i32>, 1>(vec4<i32>(2147483647i, -11547i, -43919i, -20876i));

var<private> global3: array<Struct_1, 16>;

var<private> global4: Struct_1 = Struct_1(vec3<f32>(466f, -1350f, 945f), 2147483647i, 407f, -1000f, vec3<bool>(true, true, false));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: vec2<bool>) -> bool {
    global2 = array<vec4<i32>, 1>();
    global1 = array<bool, 21>();
    let var_0 = global0.b.e.x;
    global0 = Struct_3(-(~_wgslsmith_mod_i32(-10368i, _wgslsmith_sub_i32(0i, 31191i))), Struct_1(global4.a, u_input.c.x, _wgslsmith_f_op_f32(global0.b.a.x * -284f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(344f))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(f32(-1f) * -851f)))), !select(select(global4.e, vec3<bool>(arg_1, false, false), vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.a, 21u)], false)), select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 21u)], false, global0.b.e.x), global0.b.e, global1[_wgslsmith_index_u32(1u, 21u)]), all(global0.b.e))), 748f, ~global0.d, arg_2);
    let var_1 = Struct_3(_wgslsmith_dot_vec3_i32(abs(~firstTrailingBit(u_input.c.xzx)), abs(~(~vec3<i32>(-23193i, 0i, global0.b.b)))), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(max(arg_0, _wgslsmith_f_op_f32(global4.c + -475f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c + -816f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1223f + global0.b.d))), i32(-1i) * -(u_input.c.x ^ 30599i), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c) * global4.c))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(global0.b.a.x)), global0.b.a.x)), vec3<bool>(true, global0.e.x, global4.e.x)), global4.c, countOneBits(_wgslsmith_add_vec2_u32(~vec2<u32>(u_input.a, global0.d.x), abs(u_input.d.wz)) << (countOneBits(vec2<u32>(9136u, global0.d.x)) % vec2<u32>(32u))), vec2<bool>(false, !(!all(global0.b.e))));
    return !global1[_wgslsmith_index_u32(var_1.d.x, 21u)];
}

fn func_1(arg_0: bool, arg_1: vec4<f32>) -> Struct_1 {
    let var_0 = Struct_2(~(i32(-1i) * -_wgslsmith_add_i32(global0.a, -11421i)), Struct_1(global0.b.a, 8260i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_1.x * -121f), _wgslsmith_f_op_f32(trunc(arg_1.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c + _wgslsmith_f_op_f32(-arg_1.x))), vec3<bool>(func_2(-1088f, true, vec2<bool>(true, true)), global0.e.x, true || select(false, true, true))), firstTrailingBit(~firstLeadingBit(vec2<u32>(global0.d.x, global0.d.x))), global3[_wgslsmith_index_u32(~((global0.d.x << (global0.d.x % 32u)) ^ ~global0.d.x), 16u)], -(i32(-1i) * -67457i));
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_0.b.d, _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(1325f - _wgslsmith_f_op_f32(abs(global0.c)))))));
    var var_2 = global0.b;
    let var_3 = var_2.b;
    var_1 = _wgslsmith_f_op_f32(trunc(-229f));
    return Struct_1(_wgslsmith_f_op_vec3_f32(-arg_1.xwy), global4.b, arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.d)), global4.c, true)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(var_0.b.c))))), global0.b.e);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: f32, arg_3: i32) -> Struct_1 {
    let var_0 = Struct_3(firstTrailingBit(global0.a), func_1(func_1(!global1[_wgslsmith_index_u32(37314u, 21u)], vec4<f32>(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_div_f32(arg_2, arg_0.a.x), 512f, _wgslsmith_f_op_f32(sign(global0.c)))).e.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(-1241f, global0.c, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(443f + arg_2)) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.c, arg_0.d, global0.b.c, -1487f) - vec4<f32>(-2110f, -435f, 1514f, -1145f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1000f, arg_2, global0.c, 1767f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -909f), -393f) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0.c + 729f)))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2, _wgslsmith_f_op_f32(-arg_0.a.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1003f))))), _wgslsmith_mod_vec2_u32(global0.d, ~(~global0.d)), vec2<bool>(global0.b.e.x && all(arg_0.e.yx), global1[_wgslsmith_index_u32(firstTrailingBit(u_input.d.x), 21u)]));
    let var_1 = true;
    global4 = Struct_1(_wgslsmith_f_op_vec3_f32(var_0.b.a * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1f, 1f, 1f))) * vec3<f32>(func_1(true, vec4<f32>(-532f, global0.c, arg_0.d, -791f)).c, 217f, var_0.b.d))), ~arg_0.b, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.d))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(1000f, global0.b.d))))) - _wgslsmith_f_op_f32(f32(-1f) * -1615f)), func_1(any(select(vec4<bool>(arg_0.e.x, global1[_wgslsmith_index_u32(59244u, 21u)], false, global0.e.x), vec4<bool>(global1[_wgslsmith_index_u32(arg_1.x, 21u)], false, global4.e.x, true), var_0.e.x | false)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.b.a.x)) + arg_0.d), 611f, _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(round(arg_2)))).e);
    global4 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c) * _wgslsmith_f_op_f32(f32(-1f) * -436f))), -260f, _wgslsmith_f_op_f32(-func_1(false | arg_0.e.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, -346f, arg_2, global0.b.a.x) + vec4<f32>(global4.d, 1773f, 790f, 1210f))).c)), u_input.c.x, _wgslsmith_f_op_f32(-arg_0.d), arg_0.a.x, global4.e);
    var var_2 = (~_wgslsmith_mult_i32(~var_0.a, i32(-1i) * -1i) >> (_wgslsmith_sub_u32(abs(_wgslsmith_add_u32(arg_1.x, 1u)), _wgslsmith_dot_vec2_u32(~global0.d, countOneBits(var_0.d))) % 32u)) == 29593i;
    return func_1((false & (23817u == _wgslsmith_sub_u32(arg_1.x, u_input.a))) && true, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(660f)), arg_0.c, _wgslsmith_f_op_f32(sign(415f)), _wgslsmith_f_op_f32(628f * arg_2)) * vec4<f32>(_wgslsmith_f_op_f32(-514f + 1170f), _wgslsmith_f_op_f32(var_0.b.a.x * global4.a.x), -1255f, arg_0.d)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1398f), _wgslsmith_f_op_f32(arg_0.a.x * -198f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-383f - -415f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-166f * global4.a.x)))))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: bool) -> StorageBuffer {
    let var_0 = -_wgslsmith_mult_vec2_i32(u_input.c.xz, _wgslsmith_mod_vec2_i32(u_input.c.xy, ~countOneBits(u_input.c.yx)));
    global2 = array<vec4<i32>, 1>();
    global4 = Struct_1(vec3<f32>(arg_1.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1826f), arg_1.d), _wgslsmith_mult_i32(-1i, 0i), _wgslsmith_f_op_f32(552f - -204f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1683f + global4.a.x)), global0.b.c)), -337f)), vec3<bool>(!func_1(arg_3 == global4.e.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b.a.x, -1883f, -1328f, 537f) - vec4<f32>(-305f, arg_1.a.x, arg_0.b.a.x, -345f))).e.x, true, !(_wgslsmith_f_op_f32(min(global0.b.d, 1000f)) == 266f)));
    let var_1 = -vec3<i32>(arg_0.a, firstLeadingBit(-37008i), global4.b);
    let var_2 = arg_2;
    return StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -582f)), func_3(func_3(Struct_1(arg_0.b.a, global0.a, -733f, arg_1.a.x, arg_1.e), ~vec4<u32>(arg_2.x, global0.d.x, var_2.x, 0u), -2075f, 1i), vec4<u32>(~u_input.d.x, ~arg_2.x, _wgslsmith_sub_u32(arg_0.d.x, arg_2.x), 4294967295u), global0.c, countOneBits(-2147483647i >> (1u % 32u))).c), u_input.c, ~arg_0.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(Struct_3(global4.b, func_1((global0.d.x ^ 28096u) != ~4294967295u, vec4<f32>(-164f, _wgslsmith_f_op_f32(floor(global0.c)), _wgslsmith_div_f32(1999f, global0.c), -974f)), 2472f, ~firstLeadingBit(firstTrailingBit(vec2<u32>(11786u, u_input.a))), global0.e), func_3(func_1((19374u << (u_input.a % 32u)) == select(0u, 4294967295u, true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.c, -286f, 1954f, -1476f))), u_input.d, global0.c, _wgslsmith_dot_vec2_i32(-u_input.c.yw, u_input.c.yw)), ~min(~(~global0.d), reverseBits(firstLeadingBit(u_input.d.wz))), !all(vec3<bool>(u_input.d.x != u_input.a, any(global0.b.e), global1[_wgslsmith_index_u32(u_input.d.x, 21u)])));
}

