struct Struct_1 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: u32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: Struct_2,
}

struct Struct_4 {
    a: vec2<f32>,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1000f;

var<private> global1: Struct_2;

var<private> global2: array<Struct_2, 21>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec2<bool>) -> bool {
    var var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-735f, -2019f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(364f, -105f) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-317f, -246f)))))));
    let var_1 = var_0.a;
    let var_2 = global2[_wgslsmith_index_u32(firstLeadingBit(1788u), 21u)];
    var var_3 = select(vec4<bool>(!(all(arg_0) && true), true, true, select(!arg_0.x && true, true, arg_0.x)), vec4<bool>(false, all(select(select(vec3<bool>(arg_0.x, arg_0.x, true), vec3<bool>(arg_0.x, true, false), arg_0.x), vec3<bool>(false, false, arg_0.x), false)), !arg_0.x, 1u != countOneBits(max(u_input.b, 68028u))), vec4<bool>(true, all(vec4<bool>(37172u >= u_input.b, any(vec3<bool>(true, false, arg_0.x)), arg_0.x, arg_0.x)), arg_0.x, any(vec2<bool>(all(vec2<bool>(arg_0.x, true)), true))));
    var var_4 = vec4<bool>(_wgslsmith_sub_u32(~88359u, countOneBits(0u)) >= ~countOneBits(select(global1.b, 4294967295u, var_3.x)), arg_0.x, select(select(false, false, !all(var_3.wz)), !any(arg_0), !arg_0.x), true);
    return all(var_3.yyx);
}

fn func_2() -> Struct_4 {
    var var_0 = _wgslsmith_sub_vec3_i32(reverseBits(vec3<i32>(1i, ~24474i, u_input.a)), -u_input.d.yzx);
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(206f)) - _wgslsmith_f_op_f32(select(-1851f, _wgslsmith_f_op_f32(ceil(416f)), true))) + 228f) * 338f);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-363f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -763f))))));
    var var_2 = select(vec4<bool>(false, false, !(all(vec4<bool>(true, true, true, false)) && true), func_3(vec2<bool>(true, any(vec2<bool>(false, false))))), select(vec4<bool>(true, all(vec4<bool>(true, true, true, true)), !select(true, false, false), any(vec4<bool>(true, true, true, true))), vec4<bool>(true, true, true, true), !vec4<bool>(any(vec2<bool>(true, false)), true, false, true)), true);
    var var_3 = var_0.zx;
    return Struct_4(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(sign(339f)), 416f), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-594f, 121f) - vec2<f32>(-768f, -370f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(334f, 362f))))))));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_4, arg_2: Struct_4) -> vec2<f32> {
    let var_0 = global2[_wgslsmith_index_u32(4294967295u, 21u)];
    global1 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(~abs(62235u), 63291u, _wgslsmith_mult_u32(0u, ~global1.b), _wgslsmith_sub_u32(0u, u_input.b << (u_input.b % 32u))), _wgslsmith_add_vec4_u32(abs(vec4<u32>(9472u, _wgslsmith_add_u32(global1.b, 3676u), ~var_0.b, ~37994u)), vec4<u32>(0u, 1u, 35743u, ~var_0.b))), 21u)];
    global1 = Struct_2(1i, _wgslsmith_clamp_u32(u_input.b, min(u_input.b, 4294967295u), 17954u));
    global0 = arg_1.a.x;
    global1 = global2[_wgslsmith_index_u32(4294967295u, 21u)];
    return arg_2.a;
}

fn func_1(arg_0: vec3<i32>, arg_1: vec3<i32>, arg_2: Struct_5, arg_3: i32) -> u32 {
    var var_0 = -657f;
    let var_1 = _wgslsmith_mult_u32(15323u, 39267u);
    var var_2 = Struct_4(_wgslsmith_f_op_vec2_f32(func_4(vec2<bool>(true, _wgslsmith_f_op_f32(trunc(1584f)) > _wgslsmith_f_op_f32(1077f + -1112f)), func_2(), func_2())));
    let var_3 = vec3<bool>(!(!(_wgslsmith_f_op_f32(-var_2.a.x) <= _wgslsmith_f_op_f32(sign(830f)))), false, true);
    global1 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, 97810u) >> (~min(min(~global1.b, countOneBits(31811u)), global1.b) % 32u), 21u)];
    return 1u;
}

fn func_5(arg_0: u32, arg_1: Struct_3, arg_2: f32) -> f32 {
    let var_0 = func_3(vec2<bool>(true, true));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_2)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-393f * -451f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_5(_wgslsmith_sub_u32(79407u, ~0u << (~global1.b % 32u)), Struct_3(u_input.c.xy, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(144f, 1763f, -1070f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-281f, -372f, -463f))), global2[_wgslsmith_index_u32(func_1(u_input.d.yzx, -vec3<i32>(-9951i, global1.a, -1i), Struct_5(Struct_2(global1.a, 70374u)), -1i), 21u)]), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_2().a.x - _wgslsmith_div_f32(-2575f, 1297f))))))));
    let var_1 = vec3<bool>(true, any(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), true)), select((global1.a < _wgslsmith_mod_i32(u_input.a, global1.a)) | all(vec3<bool>(false, true, false)), true, true));
    let var_2 = -1132f;
    var var_3 = Struct_1(min(select(u_input.c, _wgslsmith_add_vec3_u32(u_input.c & vec3<u32>(0u, global1.b, 24716u), _wgslsmith_add_vec3_u32(u_input.c, vec3<u32>(u_input.c.x, global1.b, 1u))), var_1.x), vec3<u32>(u_input.c.x, ~(~0u), 117065u)), select(!(!var_1), vec3<bool>(var_1.x, false, all(vec3<bool>(var_1.x, var_1.x, true))), true), ~vec2<u32>(u_input.b, 1u));
    var var_4 = Struct_1(vec3<u32>(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(106052u, 67828u, u_input.c.x, 1253u)), ~(~vec4<u32>(1716u, 16385u, var_3.c.x, u_input.b))), abs(_wgslsmith_div_u32(0u, u_input.b) << ((var_3.c.x >> (global1.b % 32u)) % 32u)), u_input.b >> (var_3.c.x % 32u)), !var_3.b, u_input.c.xz);
    var_0 = _wgslsmith_f_op_f32(max(var_2, _wgslsmith_f_op_f32(step(var_2, -955f))));
    var var_5 = ~(~(~_wgslsmith_mult_vec2_u32(vec2<u32>(global1.b, global1.b) & var_3.a.yx, ~u_input.c.xx)));
    var var_6 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_2, var_2)) - -1410f);
    let var_7 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(abs(var_3.a), -2343f);
}

