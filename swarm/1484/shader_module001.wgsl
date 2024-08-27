struct Struct_1 {
    a: vec3<u32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: bool, arg_1: Struct_2) -> vec2<bool> {
    let var_0 = Struct_2(arg_1.a);
    let var_1 = Struct_2(!vec2<bool>(true, select(!arg_1.a.x, arg_0, arg_0)));
    var var_2 = 71777u;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(3303f + 661f)))), -1000f)) - 789f);
    var var_4 = ~(~vec4<u32>(countOneBits(_wgslsmith_add_u32(0u, u_input.a)), _wgslsmith_mod_u32(u_input.b.x, 4294967295u), min(45827u >> (u_input.a % 32u), u_input.b.x & 0u), ~70623u));
    return select(vec2<bool>(var_0.a.x, false), !select(vec2<bool>(true, true), vec2<bool>(false, select(true, arg_1.a.x, false)), all(var_0.a)), !(!arg_1.a));
}

fn func_2(arg_0: u32) -> u32 {
    let var_0 = Struct_2(select(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), !select(vec2<bool>(true, true), vec2<bool>(true, true), true)), select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), func_3(true, Struct_2(vec2<bool>(true, true))), vec2<bool>(true, true)), all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), true))));
    let var_1 = var_0;
    let var_2 = -vec4<i32>(countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), _wgslsmith_sub_vec2_i32(vec2<i32>(13127i, 1i), vec2<i32>(14131i, -83388i)))), -firstLeadingBit(_wgslsmith_clamp_i32(1i, -45015i, -21583i)), -22725i, -13120i);
    var var_3 = false;
    var_3 = true;
    return 4294967295u;
}

fn func_1(arg_0: Struct_2) -> Struct_2 {
    let var_0 = vec4<bool>(!any(select(select(vec3<bool>(arg_0.a.x, arg_0.a.x, true), vec3<bool>(true, true, arg_0.a.x), true), !vec3<bool>(arg_0.a.x, true, arg_0.a.x), vec3<bool>(false, arg_0.a.x, arg_0.a.x))), func_2(24099u) < ~(_wgslsmith_mult_u32(u_input.a, 0u) << ((u_input.a & 32812u) % 32u)), arg_0.a.x, all(!arg_0.a) != arg_0.a.x);
    let var_1 = ~62221u;
    var var_2 = _wgslsmith_f_op_f32(189f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-109f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(1087f))))))));
    var var_3 = Struct_1(u_input.b, !vec4<bool>(any(vec3<bool>(var_0.x, var_0.x, true)), select(all(vec3<bool>(false, false, arg_0.a.x)), true, all(arg_0.a)), true, ~var_1 >= var_1));
    let var_4 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(992f, -1000f, -962f, -2329f)))) * vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -319f))), _wgslsmith_f_op_f32(ceil(-309f)), -681f, 1575f))));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_2(vec2<bool>(!all(vec2<bool>(false, true)), false)));
    var var_1 = u_input.a ^ ~u_input.a;
    let var_2 = Struct_1(u_input.b, select(select(vec4<bool>(u_input.b.x <= 0u, false, var_0.a.x & false, true), select(!vec4<bool>(false, var_0.a.x, var_0.a.x, var_0.a.x), !vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x), !vec4<bool>(false, false, true, var_0.a.x)), select(select(vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x), vec4<bool>(true, false, var_0.a.x, var_0.a.x), true), vec4<bool>(var_0.a.x, true, false, var_0.a.x), any(vec3<bool>(false, var_0.a.x, true)))), !(!select(vec4<bool>(var_0.a.x, var_0.a.x, false, false), vec4<bool>(false, false, var_0.a.x, true), var_0.a.x)), vec4<bool>(any(vec4<bool>(true, var_0.a.x, var_0.a.x, false)) || select(var_0.a.x, var_0.a.x, true), var_0.a.x, any(!var_0.a), var_0.a.x)));
    let var_3 = !var_2.b.x;
    var var_4 = select(vec4<bool>(true, var_0.a.x, (true || var_0.a.x) | func_1(Struct_2(var_2.b.xy)).a.x, false), select(select(select(vec4<bool>(var_3, var_2.b.x, true, false), var_2.b, vec4<bool>(false, true, true, true)), vec4<bool>(!var_2.b.x, any(var_2.b), true, false), var_2.b.x), vec4<bool>(true, _wgslsmith_f_op_f32(round(-1584f)) == _wgslsmith_div_f32(-115f, 311f), !any(vec2<bool>(var_0.a.x, true)), all(select(vec2<bool>(var_0.a.x, var_2.b.x), vec2<bool>(false, var_2.b.x), vec2<bool>(var_2.b.x, false)))), !select(vec4<bool>(false, false, false, true), vec4<bool>(var_2.b.x, var_2.b.x, false, var_0.a.x), !var_2.b)), vec4<bool>(var_2.b.x, any(func_1(func_1(Struct_2(var_2.b.zy))).a), var_0.a.x, var_0.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(((_wgslsmith_mod_i32(-1i, -1i) << (u_input.b.x % 32u)) & 2147483647i) >> (~(~(u_input.b.x ^ 106361u)) % 32u), var_2.a.x, min(abs(reverseBits(~vec2<i32>(-28593i, -11477i))), ~vec2<i32>(1i, 1i)), ~(_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.a.x, 49859u, 34337u), u_input.b) ^ 4294967295u));
}

