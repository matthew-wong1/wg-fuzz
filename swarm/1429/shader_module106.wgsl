struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(1573f, -1047f, -519f, 135f);

var<private> global1: array<Struct_2, 22>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3() -> vec2<u32> {
    let var_0 = Struct_5(Struct_3(vec3<i32>(_wgslsmith_mult_i32(0i ^ u_input.b.x, ~u_input.b.x), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.c.x, u_input.c.x), u_input.c), _wgslsmith_add_i32(_wgslsmith_mult_i32(1i, u_input.b.x), -56674i)), Struct_1(vec3<bool>(any(vec3<bool>(false, true, true)), true, true), 1u, countOneBits(~vec2<u32>(0u, 7547u))), Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-173f, -1049f, 434f)))), Struct_4(Struct_1(!select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), false), _wgslsmith_mod_u32(~13563u, firstTrailingBit(0u)), max(vec2<u32>(4294967295u, 48028u), max(vec2<u32>(8365u, 43546u), vec2<u32>(4294967295u, 35088u)))), Struct_1(vec3<bool>(true, true, true), 10210u, vec2<u32>(~1u, min(1u, 1u))), -1090f != _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(global0.x)), _wgslsmith_f_op_f32(floor(global0.x))))));
    var var_1 = var_0.a.a.x;
    let var_2 = var_0.a.b.a.xz;
    global0 = vec4<f32>(_wgslsmith_f_op_f32(-1000f - global0.x), 993f, _wgslsmith_div_f32(var_0.a.c.a.x, _wgslsmith_f_op_f32(sign(var_0.a.c.a.x))), 734f);
    let var_3 = var_0.a;
    return var_0.a.b.c;
}

fn func_2(arg_0: Struct_5, arg_1: vec3<u32>, arg_2: vec3<bool>, arg_3: bool) -> vec4<f32> {
    var var_0 = Struct_5(Struct_3(~(-u_input.c), arg_0.b.a, global1[_wgslsmith_index_u32(1u, 22u)]), Struct_4(Struct_1(select(select(arg_0.a.b.a, arg_0.a.b.a, vec3<bool>(arg_0.b.a.a.x, true, arg_3)), select(vec3<bool>(false, true, arg_0.a.b.a.x), vec3<bool>(arg_2.x, true, arg_2.x), vec3<bool>(arg_2.x, arg_0.a.b.a.x, true)), true), _wgslsmith_dot_vec3_u32(arg_1, vec3<u32>(1u, 0u, 1u)) ^ ~1u, arg_0.a.b.c), Struct_1(arg_0.b.b.a, _wgslsmith_dot_vec3_u32(vec3<u32>(46106u, 34882u, 4294967295u) ^ vec3<u32>(arg_0.b.b.c.x, arg_1.x, arg_1.x), arg_1), _wgslsmith_mult_vec2_u32(~arg_1.yz, func_3())), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(766f, 969f))) > _wgslsmith_f_op_f32(f32(-1f) * -455f)));
    var var_1 = Struct_4(var_0.a.b, var_0.a.b, global0.x != _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, global0.x)));
    var_1 = arg_0.b;
    let var_2 = _wgslsmith_mult_vec2_u32(~var_0.a.b.c, _wgslsmith_add_vec2_u32(arg_1.zy, var_1.b.c));
    var var_3 = Struct_5(arg_0.a, arg_0.b);
    return _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(1000f, var_3.a.c.a.x), var_0.a.c.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x + global0.x) * -2630f), _wgslsmith_div_f32(var_3.a.c.a.x, var_0.a.c.a.x)))));
}

fn func_1() -> vec3<f32> {
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -905f), global0.x, global0.x, -122f)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-532f, -469f, 144f, global0.x))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(func_2(Struct_5(Struct_3(vec3<i32>(2147483647i, u_input.b.x, u_input.a), Struct_1(vec3<bool>(false, false, false), 23345u, vec2<u32>(0u, 68899u)), Struct_2(global0.xyz)), Struct_4(Struct_1(vec3<bool>(true, false, false), 4105u, vec2<u32>(0u, 0u)), Struct_1(vec3<bool>(false, false, false), 71877u, vec2<u32>(75661u, 486u)), true)), vec3<u32>(35516u, 4294967295u, 4294967295u), vec3<bool>(false, false, false), true))))))) - vec4<f32>(2043f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(round(201f))) + global0.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1420f, global0.x))), _wgslsmith_div_f32(global0.x, global0.x))), global0.x));
    var var_0 = select(_wgslsmith_div_vec4_u32(vec4<u32>(func_3().x | 1u, 4294967295u, 1u, countOneBits(reverseBits(4294967295u))), firstLeadingBit(~vec4<u32>(1u, 0u, 13025u, 1u))), ~firstTrailingBit(vec4<u32>(1u, 1264u, 1u, ~113433u)), true);
    global0 = _wgslsmith_f_op_vec4_f32(func_2(Struct_5(Struct_3(_wgslsmith_div_vec3_i32(u_input.c, u_input.c), Struct_1(vec3<bool>(true, true, true), countOneBits(var_0.x), vec2<u32>(var_0.x, var_0.x)), Struct_2(vec3<f32>(-2033f, -569f, -1000f))), Struct_4(Struct_1(vec3<bool>(true, true, true), 27341u, vec2<u32>(var_0.x, 4294967295u)), Struct_1(vec3<bool>(true, true, true), 1u, ~vec2<u32>(1u, 2360u)), true)), var_0.zxw, vec3<bool>(true, true, true), all(vec4<bool>(true, true, true, true))));
    let var_1 = vec3<u32>(0u, var_0.x, 88688u);
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, global0.x), vec4<f32>(236f, global0.x, -771f, -1214f)) + vec4<f32>(2013f, 347f, global0.x, -104f)) + vec4<f32>(_wgslsmith_f_op_f32(global0.x - global0.x), -473f, _wgslsmith_f_op_f32(ceil(global0.x)), global0.x)))));
    return var_2.wzw;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 22>();
    global0 = vec4<f32>(global0.x, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(875f * global0.x) - _wgslsmith_f_op_f32(min(-691f, _wgslsmith_f_op_f32(ceil(-711f))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)))));
    global0 = vec4<f32>(-870f, global0.x, 1912f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * global0.x)))) + -1586f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(func_1()), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -301f, -199f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, 228f, -1778f) + vec3<f32>(global0.x, 104f, 1727f))) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(global0.yyz * vec3<f32>(global0.x, global0.x, global0.x))))))));
}

