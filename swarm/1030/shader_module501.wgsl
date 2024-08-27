struct Struct_1 {
    a: vec3<u32>,
    b: f32,
}

struct Struct_2 {
    a: bool,
    b: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: Struct_2,
    d: u32,
    e: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec3<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(vec3<u32>(50675u, 1u, 0u), 500f), Struct_1(vec3<u32>(61000u, 92228u, 103622u), 1000f), Struct_1(vec3<u32>(48076u, 3669u, 61044u), 830f), Struct_1(vec3<u32>(43222u, 27029u, 76146u), 1289f), Struct_1(vec3<u32>(73142u, 8339u, 83190u), -1000f), Struct_1(vec3<u32>(4849u, 61942u, 39731u), 1000f), Struct_1(vec3<u32>(0u, 20872u, 53199u), -598f), Struct_1(vec3<u32>(1u, 4294967295u, 55662u), 1015f), Struct_1(vec3<u32>(0u, 1u, 1u), -1418f), Struct_1(vec3<u32>(1u, 65092u, 1616u), -535f), Struct_1(vec3<u32>(4294967295u, 1u, 33810u), -2845f), Struct_1(vec3<u32>(4294967295u, 18201u, 8869u), -786f));

var<private> global1: Struct_5;

var<private> global2: f32;

var<private> global3: vec2<bool>;

var<private> global4: f32;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: u32, arg_1: vec3<u32>, arg_2: i32, arg_3: Struct_2) -> f32 {
    global4 = -1113f;
    global4 = -1954f;
    var var_0 = _wgslsmith_f_op_f32(step(-730f, -442f));
    let var_1 = -(vec4<i32>(-1i) * -select(vec4<i32>(18949i, u_input.d, arg_3.b, u_input.e.x) | vec4<i32>(arg_3.b, -2147483647i, -1i, arg_2), vec4<i32>(u_input.d, u_input.b.x, -2147483647i, u_input.b.x), true));
    var_0 = 241f;
    return _wgslsmith_f_op_f32(min(-1012f, -1449f));
}

fn func_3(arg_0: u32, arg_1: vec4<i32>) -> i32 {
    global1 = Struct_5(30575u | _wgslsmith_mult_u32(global1.a, ~select(3442u, arg_0, true)));
    global4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-195f, _wgslsmith_f_op_f32(f32(-1f) * -2000f))) - _wgslsmith_f_op_f32(f32(-1f) * -1369f))));
    var var_0 = global0[_wgslsmith_index_u32(u_input.c.x << (4294967295u % 32u), 12u)];
    return _wgslsmith_dot_vec4_i32(arg_1, ~((arg_1 << ((vec4<u32>(var_0.a.x, 60177u, 44352u, var_0.a.x) << (vec4<u32>(4294967295u, 61996u, var_0.a.x, 38852u) % vec4<u32>(32u))) % vec4<u32>(32u))) & (vec4<i32>(-17267i, u_input.b.x, u_input.d, -40375i) | vec4<i32>(-2147483647i, arg_1.x, -2147483647i, arg_1.x))));
}

fn func_4(arg_0: vec4<i32>, arg_1: bool, arg_2: Struct_2, arg_3: bool) -> vec2<bool> {
    global4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-772f * _wgslsmith_f_op_f32(sign(-1032f))) * _wgslsmith_f_op_f32(f32(-1f) * -444f)));
    var var_0 = vec4<i32>(0i, reverseBits(-u_input.d) >> (u_input.a % 32u), 27644i, -32341i);
    global4 = _wgslsmith_f_op_f32(min(-2533f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1260f, -167f, false)), _wgslsmith_f_op_f32(floor(-674f)))));
    let var_1 = any(select(vec2<bool>(any(!vec3<bool>(arg_1, arg_3, true)), any(vec4<bool>(arg_2.a, true, true, true))), vec2<bool>(arg_2.a, arg_3), (!arg_2.a | arg_1) != arg_2.a));
    var var_2 = Struct_4(Struct_3(global0[_wgslsmith_index_u32(82281u, 12u)], _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1081f) + -1495f))), Struct_2(true & arg_2.a, ~reverseBits(var_0.x)), firstTrailingBit(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(global1.a, 5447u, global1.a), u_input.a)), global1.a), arg_2);
    return select(!vec2<bool>(_wgslsmith_f_op_f32(1082f + var_2.a.b) == var_2.a.a.b, !arg_2.a), select(select(vec2<bool>(true, true), select(vec2<bool>(var_2.b.a, false), vec2<bool>(true, true), var_2.a.b >= -454f), !vec2<bool>(false, global3.x)), !vec2<bool>(arg_2.a && false, !var_2.a.c.a), arg_2.a), !vec2<bool>(false, global1.a > 31454u));
}

fn func_2(arg_0: vec2<u32>) -> vec4<bool> {
    global3 = vec2<bool>(all(select(!vec3<bool>(true, global3.x, global3.x), vec3<bool>(false, global3.x, true), vec3<bool>(global3.x, global3.x, false))) & false, global3.x);
    var var_0 = global0[_wgslsmith_index_u32(~global1.a, 12u)];
    global3 = func_4(vec4<i32>(func_3(4294967295u, vec4<i32>(u_input.b.x << (arg_0.x % 32u), ~9352i, -u_input.e.x, u_input.b.x)), u_input.e.x, ~max(min(-2147483647i, -4405i), _wgslsmith_clamp_i32(u_input.e.x, u_input.d, 0i)), firstTrailingBit(i32(-1i) * -1i)), any(!select(vec3<bool>(global3.x, true, global3.x), !vec3<bool>(global3.x, false, global3.x), !vec3<bool>(global3.x, true, true))), Struct_2(global3.x, u_input.d), !all(!select(vec2<bool>(false, false), vec2<bool>(global3.x, global3.x), global3.x)));
    let var_1 = global3.x;
    let var_2 = select(!vec3<bool>(true, global3.x, global3.x), vec3<bool>(false, global3.x, !all(!vec3<bool>(false, global3.x, global3.x))), global3.x);
    return select(!select(select(select(vec4<bool>(true, true, global3.x, true), vec4<bool>(true, false, var_2.x, var_2.x), vec4<bool>(false, global3.x, global3.x, true)), select(vec4<bool>(false, false, global3.x, true), vec4<bool>(true, global3.x, false, global3.x), false), var_2.x), vec4<bool>(all(vec4<bool>(true, global3.x, var_2.x, false)), false, global3.x, true), select(vec4<bool>(var_2.x, false, false, global3.x), select(vec4<bool>(false, true, true, var_2.x), vec4<bool>(true, var_2.x, false, true), global3.x), select(vec4<bool>(global3.x, var_2.x, true, global3.x), vec4<bool>(true, global3.x, false, false), vec4<bool>(true, global3.x, false, var_2.x)))), vec4<bool>(global3.x, true, false, true), false || global3.x);
}

fn func_5(arg_0: vec4<f32>, arg_1: bool, arg_2: vec2<u32>) -> StorageBuffer {
    global2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1971f)), 262f), -452f)), arg_0.x) + _wgslsmith_f_op_f32(step(arg_0.x, arg_0.x)));
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.zx + arg_0.wz)), arg_0.yy);
    global1 = Struct_5(_wgslsmith_div_u32(~_wgslsmith_div_u32(~arg_2.x, arg_2.x), arg_2.x));
    global2 = -796f;
    global4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.x)) * 1000f))));
    return StorageBuffer(arg_0.x, reverseBits(u_input.e), _wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_2.x, 19052u), ~arg_2, arg_2 ^ u_input.c.yz), (vec2<u32>(1u, 16285u) & vec2<u32>(5093u, u_input.c.x)) & vec2<u32>(global1.a, 1u)), arg_2, vec2<u32>(global1.a, global1.a)), arg_0.wzz, firstTrailingBit(arg_2));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-904f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1185f, -611f)), -591f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-556f))), -1652f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1095f, 1038f, 327f, 1477f) * vec4<f32>(279f, -205f, 2015f, -2205f)))) * vec4<f32>(_wgslsmith_f_op_f32(func_1(global1.a, u_input.c, 1i, Struct_2(global3.x, u_input.b.x))), -285f, _wgslsmith_f_op_f32(func_1(25085u, vec3<u32>(55471u, global1.a, 4294967295u), -2147483647i, Struct_2(false, -1135i))), _wgslsmith_f_op_f32(-1000f * 1439f))), !func_2(vec2<u32>(u_input.a, u_input.c.x)))), global3.x, ~(~vec2<u32>(u_input.c.x, u_input.c.x << (u_input.a % 32u))));
}

