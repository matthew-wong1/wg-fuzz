struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: bool, arg_1: Struct_2, arg_2: Struct_1) -> vec3<u32> {
    var var_0 = true;
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(-arg_1.a), Struct_1(1683f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(arg_1.a.zww, _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.a, -1589f, arg_2.a) + vec3<f32>(-1000f, arg_1.a.x, arg_2.c.x)))) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1410f, 1755f, 215f), vec3<f32>(arg_1.a.x, arg_1.a.x, arg_1.b.a), false))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.c.x, -1081f) * arg_2.c))) * arg_2.c)), -47790i);
    var_0 = !arg_0;
    let var_2 = ~_wgslsmith_clamp_vec2_u32(vec2<u32>(~(~u_input.a), 4294967295u), vec2<u32>(u_input.a, 12343u), vec2<u32>(16743u, 28595u));
    var var_3 = var_1;
    return firstLeadingBit(_wgslsmith_mult_vec3_u32(firstTrailingBit(select(vec3<u32>(var_2.x, 0u, var_2.x), vec3<u32>(u_input.a, 0u, 16762u), vec3<bool>(arg_0, false, arg_0))), vec3<u32>(_wgslsmith_div_u32(4294967295u, u_input.a), _wgslsmith_sub_u32(u_input.a, var_2.x), _wgslsmith_mod_u32(u_input.a, 1u))) >> (select(~vec3<u32>(5u, 1u, var_2.x) ^ ~vec3<u32>(u_input.a, 10389u, u_input.a), ~vec3<u32>(var_2.x, 17098u, 0u), false) % vec3<u32>(32u)));
}

fn func_3() -> f32 {
    var var_0 = !(!vec2<bool>(any(select(vec2<bool>(true, true), vec2<bool>(false, false), true)), true));
    var_0 = vec2<bool>(min(~(~75746u), u_input.a) <= _wgslsmith_mod_u32(max(firstTrailingBit(0u), u_input.a), _wgslsmith_mod_u32(u_input.a, u_input.a)), true);
    var_0 = vec2<bool>(!var_0.x, var_0.x);
    var_0 = !select(!vec2<bool>(select(var_0.x, false, false), true), !select(vec2<bool>(true, true), select(vec2<bool>(var_0.x, true), vec2<bool>(var_0.x, false), var_0.x), vec2<bool>(var_0.x, var_0.x)), all(vec2<bool>(true, true)));
    let var_1 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(367f + _wgslsmith_f_op_f32(160f * 624f)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(422f, -280f))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1525f)), _wgslsmith_div_f32(-749f, 539f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-934f + 1000f)))), -1287f, -1180f), Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-146f)))))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1f, 1f, 1f))))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(497f, 883f), _wgslsmith_f_op_vec2_f32(vec2<f32>(969f, -106f) - vec2<f32>(-355f, -2651f)))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -426f), _wgslsmith_f_op_f32(floor(-150f)))))), 12266i);
    return -162f;
}

fn func_1(arg_0: Struct_1) -> i32 {
    var var_0 = ~(~(~_wgslsmith_add_vec3_u32(min(vec3<u32>(u_input.a, u_input.a, 0u), vec3<u32>(39498u, 0u, u_input.a)), countOneBits(vec3<u32>(42441u, 1u, u_input.a)))));
    var_0 = vec3<u32>(1u, ~41696u, _wgslsmith_dot_vec2_u32(~(vec2<u32>(1u, var_0.x) & vec2<u32>(var_0.x, 4294967295u)), ~_wgslsmith_add_vec2_u32(vec2<u32>(var_0.x, u_input.a), var_0.zz))) ^ ~abs(vec3<u32>(u_input.a, u_input.a, 19656u) << (~vec3<u32>(u_input.a, 29096u, 4294967295u) % vec3<u32>(32u)));
    var_0 = min(vec3<u32>(~(~(86397u ^ var_0.x)), ~countOneBits(~16767u), u_input.a), ~select(func_2(false, Struct_2(vec4<f32>(1000f, arg_0.c.x, arg_0.a, -1000f), arg_0, 21190i), arg_0), ~vec3<u32>(var_0.x, var_0.x, var_0.x), vec3<bool>(true, select(true, true, true), true)));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) * arg_0.c.x) * _wgslsmith_f_op_f32(sign(arg_0.c.x))), vec3<f32>(arg_0.a, _wgslsmith_f_op_f32(478f * -264f), _wgslsmith_f_op_f32(select(1051f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(arg_0.b.x, 418f)))), true))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1662f)), arg_0.b.x)));
    let var_2 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1115f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1912f + var_1.c.x))), arg_0.c.x, true)), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-496f, arg_0.a), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_1.a, 522f))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c.x) * _wgslsmith_f_op_f32(-170f + arg_0.a))))), Struct_1(arg_0.b.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.b + var_1.b), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a, var_1.b.x, 304f) * vec3<f32>(var_1.b.x, var_1.a, 1174f))) + vec3<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(sign(-2070f)), 1f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a, -136f))), _wgslsmith_dot_vec4_i32(-vec4<i32>(-1i, u_input.b, -22305i, -39303i), ~reverseBits(vec4<i32>(u_input.b, u_input.b, u_input.b, -1i))) >> (min(var_0.x >> (u_input.a % 32u), 42693u) % 32u));
    return _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(-(~(~vec2<i32>(var_2.c, 20640i))), select(countOneBits(~vec2<i32>(-46689i, 10040i)), vec2<i32>(u_input.b, -var_2.c), vec2<bool>(true, true))), -(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.b, var_2.c) ^ vec2<i32>(var_2.c, -2147483647i)) & abs(max(vec2<i32>(u_input.b, 6922i), vec2<i32>(var_2.c, 16278i)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -349f) + _wgslsmith_f_op_f32(148f + -506f)), -594f)))));
    let var_1 = _wgslsmith_mod_i32(reverseBits(min(~func_1(Struct_1(var_0.x, vec3<f32>(var_0.x, 927f, -344f), var_0)), 0i >> (abs(0u) % 32u))), _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(~_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b, 2147483647i), vec2<i32>(-27572i, -1i), vec2<i32>(u_input.b, u_input.b)), ~(-vec2<i32>(u_input.b, 5951i))), u_input.b));
    let var_2 = ~(-firstLeadingBit(vec3<i32>(-30919i, u_input.b, -637i) & -vec3<i32>(var_1, u_input.b, var_1)));
    var var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(647f + -336f)), -108f, var_0.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.x - 1062f)))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(341f, var_0.x, _wgslsmith_f_op_f32(var_0.x + var_0.x), -339f))), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), false), vec4<bool>(true, true, true, true)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), vec3<f32>(_wgslsmith_f_op_f32(trunc(var_0.x)), 1291f, _wgslsmith_f_op_f32(floor(var_0.x))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(282f))), 2192f)), var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(31782u, -vec4<i32>(-select(2147483647i, 0i, false), (u_input.b >> (0u % 32u)) << (u_input.a % 32u), 16478i, -(u_input.b << (0u % 32u))), var_3.a.x);
}

