struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: u32,
    b: vec2<i32>,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec4<i32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 25>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
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

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
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

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_2() -> Struct_1 {
    let var_0 = true;
    let var_1 = _wgslsmith_f_op_f32(-1244f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1211f, _wgslsmith_f_op_f32(round(307f))))) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(696f - -625f))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -652f)))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1354f + -1000f), _wgslsmith_f_op_f32(f32(-1f) * -979f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(-694f)), _wgslsmith_f_op_f32(f32(-1f) * -160f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1070f, 1878f) + vec2<f32>(1000f, -405f)))), vec2<bool>(any(select(global0[_wgslsmith_index_u32(u_input.c, 25u)], global0[_wgslsmith_index_u32(0u, 25u)], vec3<bool>(false, var_0, var_1))), false))));
    var var_3 = u_input.a.x;
    var var_4 = Struct_1(-(~(-u_input.b)), 1u);
    return Struct_1(0i, select(~(~53377u), _wgslsmith_sub_u32(var_4.b, 1u), !all(!vec2<bool>(var_0, var_1))));
}

fn func_1() -> Struct_3 {
    var var_0 = Struct_1(0i, 0u);
    var var_1 = var_0.a;
    var var_2 = func_2();
    var_1 = var_2.a;
    return Struct_3(func_2());
}

fn func_3(arg_0: vec4<i32>) -> Struct_1 {
    global0 = array<vec3<bool>, 25>();
    let var_0 = func_1().a;
    let var_1 = vec2<u32>(1u, var_0.b) ^ firstLeadingBit(~vec2<u32>(_wgslsmith_mod_u32(14192u, 4294967295u), ~12301u));
    let var_2 = _wgslsmith_clamp_i32(_wgslsmith_add_i32(_wgslsmith_clamp_i32(_wgslsmith_div_i32(i32(-1i) * -51766i, -6229i), -29321i, u_input.a.x), ~(-var_0.a)), u_input.b, var_0.a ^ (_wgslsmith_clamp_i32(~u_input.a.x, u_input.b, i32(-1i) * -2147483647i) << (var_1.x % 32u)));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -151f));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec3<u32>(reverseBits(_wgslsmith_sub_u32(_wgslsmith_mult_u32(72047u, u_input.c), _wgslsmith_mult_u32(4294967295u, 0u))), 4294967295u, _wgslsmith_sub_u32(u_input.c, ~1u) | 17215u);
    global0 = array<vec3<bool>, 25>();
    var var_1 = func_1();
    let var_2 = Struct_2(~u_input.c, vec2<i32>(_wgslsmith_mod_i32(-2147483647i, ~(-1823i)), u_input.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-760f)) + _wgslsmith_f_op_f32(-613f * -204f)))), func_3(reverseBits(-abs(vec4<i32>(u_input.a.x, u_input.a.x, 0i, 0i)))), var_1.a);
    let var_3 = var_2.d.b;
    let var_4 = _wgslsmith_add_u32(var_2.d.b, min(51719u | ~u_input.c, countOneBits(_wgslsmith_mod_u32(var_3, 63376u))));
    var var_5 = vec2<bool>(true, 19328u < func_1().a.b);
    var var_6 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, var_2.c))), _wgslsmith_f_op_f32(-237f + -529f)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_2.c, 2356f))), _wgslsmith_f_op_f32(min(-1633f, var_2.c))))), vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(108f - var_2.c), -2210f)))), var_2.c));
    var var_7 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1289f, -941f, var_2.c))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(1000f, 2683f)))) - -830f)), vec4<i32>(var_2.e.a, var_7.a, 0i, firstTrailingBit(~(-1i))), var_4, var_2.c);
}

