struct Struct_1 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: f32,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> vec3<f32> {
    let var_0 = any(vec4<bool>(-_wgslsmith_add_i32(u_input.b, 2147483647i) > abs(8211i), true, select(true, !select(false, false, true), false), select(false, false, -399f == _wgslsmith_f_op_f32(select(1760f, -331f, false)))));
    global0 = min(select(min(vec4<u32>(1u, 52781u, global0.x, u_input.a), firstLeadingBit(vec4<u32>(global0.x, 19692u, 4294967295u, u_input.a))) & ~vec4<u32>(16667u, 6057u, 4294967295u, 38915u), reverseBits(vec4<u32>(u_input.a, global0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 11698u, u_input.a, global0.x), vec4<u32>(global0.x, u_input.a, global0.x, 5759u)), 25182u)), vec4<bool>((var_0 & var_0) && false, true, false, all(!vec4<bool>(true, false, var_0, var_0)))), vec4<u32>(4294967295u, ~global0.x, select(~(96773u ^ global0.x), global0.x, var_0), ~(~(~1u))));
    var var_1 = Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(227f, 971f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-377f - -1516f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1627f, 2037f, -596f)) + vec3<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -587f), -127f))), reverseBits(~(~(~vec4<u32>(global0.x, 904u, global0.x, 87933u)))), -537f, vec4<bool>(false, (var_0 || false) & true, var_0, any(vec3<bool>(false, true, false)) & (_wgslsmith_mod_u32(global0.x, global0.x) <= 1u)));
    var var_2 = -1000f;
    var var_3 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-var_1.c), -353f, -250f), ~_wgslsmith_sub_vec4_u32(vec4<u32>(1u, ~global0.x, ~0u, var_1.b.x), _wgslsmith_mult_vec4_u32(abs(var_1.b), vec4<u32>(u_input.a, global0.x, global0.x, 94051u))), _wgslsmith_f_op_f32(select(225f, _wgslsmith_f_op_f32(f32(-1f) * -304f), (_wgslsmith_add_u32(var_1.b.x, 1u) >> (~1u % 32u)) == global0.x)), vec4<bool>(true, var_1.d.x, all(var_1.d), !var_0));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, var_3.a.x, var_1.a.x) * _wgslsmith_f_op_vec3_f32(-var_3.a)) + var_1.a)) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.c, var_3.c, var_3.a.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.a)))))));
}

fn func_2() -> Struct_1 {
    var var_0 = max(firstLeadingBit(~(abs(global0.zw) >> (global0.zx % vec2<u32>(32u)))), global0.yx);
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3())), ~(~(~vec4<u32>(31275u, 3378u, var_0.x, u_input.a))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_div_f32(858f, -1332f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-2939f, -183f, true)))))), vec4<bool>((true == all(vec3<bool>(true, false, false))) || true, true, !((var_0.x >> (1u % 32u)) != (4294967295u >> (0u % 32u))), true));
    var var_2 = var_1.d.xzy;
    var_1 = Struct_1(var_1.a, vec4<u32>(_wgslsmith_add_u32(5448u, 1u), _wgslsmith_sub_u32(~54126u, abs(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.b.x, global0.x, var_1.b.x), vec3<u32>(var_0.x, 25061u, 4294967295u)))), firstLeadingBit(~_wgslsmith_mult_u32(u_input.a, 45463u)), var_0.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c)))))), select(!select(select(vec4<bool>(false, true, var_2.x, var_1.d.x), var_1.d, var_2.x), select(var_1.d, var_1.d, var_2.x), !var_2.x), vec4<bool>(var_2.x, !all(vec2<bool>(var_1.d.x, var_1.d.x)), var_2.x, select(any(var_1.d.zz), true | var_1.d.x, true)), var_2.x || any(select(vec2<bool>(true, true), vec2<bool>(false, true), var_1.d.wz))));
    let var_3 = Struct_1(var_1.a, vec4<u32>(~u_input.a, 0u, global0.x, _wgslsmith_sub_u32(_wgslsmith_div_u32(~global0.x, var_1.b.x), 13456u)), -528f, !(!(!vec4<bool>(true, var_2.x, true, var_1.d.x))));
    return Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c) - var_3.a.x)), _wgslsmith_f_op_f32(-390f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(473f - var_3.a.x))), var_3.c), _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(firstLeadingBit(vec4<u32>(1u, 26204u, 24919u, u_input.a)) << (abs(vec4<u32>(var_3.b.x, var_3.b.x, var_1.b.x, u_input.a)) % vec4<u32>(32u)), min(var_1.b, vec4<u32>(u_input.a, var_1.b.x, 14138u, u_input.a)) ^ ~var_3.b), vec4<u32>(global0.x & ~1u, 4294967295u, ~u_input.a, ~(var_3.b.x & var_3.b.x))), _wgslsmith_f_op_f32(max(var_3.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_3.c))) * var_1.a.x))), var_1.d);
}

fn func_1(arg_0: vec2<u32>, arg_1: bool, arg_2: vec2<f32>) -> Struct_1 {
    let var_0 = func_2();
    let var_1 = _wgslsmith_div_u32(global0.x, reverseBits(_wgslsmith_div_u32(~2913u, ~func_2().b.x)));
    global0 = select(vec4<u32>(_wgslsmith_add_u32(global0.x << (arg_0.x % 32u), 0u >> (0u % 32u)), var_1, _wgslsmith_add_u32(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 60890u, 1u), vec3<u32>(u_input.a, 23597u, u_input.a))), ~37091u), _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(var_0.b, vec4<u32>(arg_0.x, arg_0.x, 0u, var_0.b.x)), countOneBits(var_0.b)) | (var_0.b | vec4<u32>(62785u, var_0.b.x, 126043u, 4294967295u)), var_0.b.x < _wgslsmith_div_u32(1u, global0.x)) ^ var_0.b;
    var var_2 = func_2();
    let var_3 = var_2.b.x;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(global0.zw, true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1721f, -477f)) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(floor(661f)), 527f)))));
    let x = u_input.a;
    s_output = StorageBuffer(-(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, -55570i, 1i), ~vec3<i32>(55486i, 22226i, u_input.b)) >> (~global0.zxz % vec3<u32>(32u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec3_f32(func_3()).xy + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.x, -238f) - var_0.a.zz)))), global0.zyx);
}

