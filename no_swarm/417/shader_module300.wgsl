struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-135f, 324f, 1965f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: u32) -> vec4<bool> {
    let var_0 = max(vec4<u32>(arg_0, 0u, min(arg_0, 110562u), arg_0 ^ 65040u) & (~vec4<u32>(arg_0, arg_0, arg_0, arg_0) << (vec4<u32>(1u, 4294967295u, arg_0, arg_0) % vec4<u32>(32u))), ~_wgslsmith_sub_vec4_u32(vec4<u32>(1u, arg_0, 41197u, arg_0) >> (vec4<u32>(0u, arg_0, 4294967295u, 1u) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_0, arg_0, arg_0, 4294967295u), vec4<u32>(arg_0, arg_0, 0u, arg_0)))) << (_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(~select(vec4<u32>(19296u, arg_0, 0u, arg_0), vec4<u32>(84426u, arg_0, 4294967295u, arg_0), true), reverseBits(vec4<u32>(0u, 41195u, 42166u, 0u))), ~select(~vec4<u32>(arg_0, 4294967295u, 0u, 33443u), ~vec4<u32>(1u, arg_0, 1u, 44765u), true)) % vec4<u32>(32u));
    return !select(vec4<bool>(false, all(vec3<bool>(true, true, true)), !any(vec3<bool>(false, false, true)), true), vec4<bool>(_wgslsmith_f_op_f32(-global0.x) <= _wgslsmith_f_op_f32(-global0.x), true & (-1024f > global0.x), true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(select(false, true, false), true, any(vec3<bool>(false, true, false)), true), all(vec2<bool>(true, true))));
}

fn func_2() -> vec4<bool> {
    let var_0 = reverseBits(21845i);
    global0 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * global0.x))), global0.x), _wgslsmith_div_f32(897f, global0.x), -1281f);
    let var_1 = Struct_1(_wgslsmith_div_i32(_wgslsmith_mod_i32(firstTrailingBit(_wgslsmith_div_i32(-21241i, var_0)), var_0), 4880i), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.x, 1017f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1232f - 130f)), 272f))), vec2<u32>(102603u, ~92941u));
    let var_2 = var_1.b.wxw;
    return !select(vec4<bool>(false & any(vec2<bool>(true, false)), false, any(vec4<bool>(false, true, false, true)), global0.x > 354f), !vec4<bool>(false, false, all(vec3<bool>(false, false, false)), any(vec4<bool>(false, true, true, false))), func_3(var_1.c.x));
}

fn func_1() -> bool {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(456f)) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0.x - -540f)))))), 1042f, global0.x);
    var var_1 = Struct_2(func_2(), _wgslsmith_add_u32(countOneBits(max(1u, 77732u)) << (abs(1u) % 32u), ~4294967295u & _wgslsmith_dot_vec2_u32(vec2<u32>(35234u, 1u), vec2<u32>(1u, 3502u))));
    let var_2 = Struct_1(_wgslsmith_clamp_i32(1i, _wgslsmith_clamp_i32(-u_input.b.x >> (_wgslsmith_mult_u32(var_1.b, 4294967295u) % 32u), ~(-13353i) | firstTrailingBit(2147483647i), u_input.a.x), ~(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, u_input.a.x), u_input.a.zz) << (~var_1.b % 32u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(-665f)), _wgslsmith_f_op_f32(-var_0.x), -413f, _wgslsmith_f_op_f32(select(250f, global0.x, var_1.a.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.x, -1179f, 804f, 209f))))) + vec4<f32>(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(-global0.x)), 1923f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_div_f32(global0.x, global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1364f, -1000f))))), _wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(reverseBits(vec2<u32>(4294967295u, var_1.b)), vec2<u32>(4294967295u, 18919u)) & (~vec2<u32>(0u, 1u) ^ vec2<u32>(0u, var_1.b)), ~vec2<u32>(1u << (var_1.b % 32u), var_1.b)));
    var var_3 = Struct_1(-_wgslsmith_sub_i32(firstLeadingBit(u_input.a.x), -20117i), _wgslsmith_f_op_vec4_f32(trunc(var_2.b)), ~vec2<u32>(1u, 3893u));
    var var_4 = Struct_2(!vec4<bool>(_wgslsmith_clamp_u32(1u, 1u, var_1.b) > _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 56462u, var_2.c.x, 4294967295u), vec4<u32>(var_3.c.x, 0u, 1u, var_3.c.x)), true, var_1.a.x, !(!var_1.a.x)), _wgslsmith_sub_u32(~(~(var_1.b ^ var_1.b)), ~45555u));
    return var_4.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec4<bool>(select(true, true, false), !func_1() || true, any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), !all(vec4<bool>(false, false, true, true)) || true);
    let var_1 = Struct_2(vec4<bool>(func_2().x, _wgslsmith_mult_i32(-u_input.a.x, -28539i) > (u_input.b.x >> (~1u % 32u)), all(func_2()), all(vec4<bool>(false, any(vec4<bool>(false, false, var_0.x, false)), true, !var_0.x))), abs(_wgslsmith_add_u32(firstTrailingBit(4294967295u), 1u)));
    var var_2 = ~min(vec2<u32>(~30866u, var_1.b), vec2<u32>(1231u, var_1.b) | ~(vec2<u32>(0u, var_1.b) >> (vec2<u32>(var_1.b, 1u) % vec2<u32>(32u))));
    var var_3 = u_input.b.x;
    var var_4 = ~(-(u_input.a.xy >> (vec2<u32>(4294967295u, 4294967295u) % vec2<u32>(32u))) | -(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a.x, -41536i), u_input.b.xw) >> (~vec2<u32>(var_2.x, 0u) % vec2<u32>(32u))));
    var var_5 = Struct_1(u_input.b.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, global0.x, global0.x))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-851f, -1756f, global0.x, global0.x))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1000f, 1324f, 1569f, global0.x))))), func_2()))), firstLeadingBit(~vec2<u32>(var_2.x, var_1.b)));
    let var_6 = var_1.a;
    var_4 = _wgslsmith_add_vec2_i32(u_input.b.xx, -countOneBits(abs(vec2<i32>(-47842i, var_4.x)) >> (var_5.c % vec2<u32>(32u))));
    let var_7 = Struct_1(2147483647i, _wgslsmith_f_op_vec4_f32(var_5.b * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_5.b + _wgslsmith_f_op_vec4_f32(-var_5.b)))), abs(countOneBits(vec2<u32>(var_2.x, _wgslsmith_div_u32(var_2.x, 1u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(var_7.b.wwz - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(var_7.b.yzz)) * _wgslsmith_f_op_vec3_f32(-var_5.b.xwy))))), _wgslsmith_f_op_f32(step(503f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_5.b.x) - var_7.b.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-502f)))))), var_7.a);
}

