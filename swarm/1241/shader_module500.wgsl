struct Struct_1 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3() -> i32 {
    let var_0 = vec2<bool>(true, (firstTrailingBit(~65353u) >> (u_input.a % 32u)) != u_input.c.x);
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1023f, -1332f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -341f)), vec2<f32>(1f, 1f)), var_0.x))));
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-196f, var_1.x)))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, var_1.x) * vec2<f32>(var_1.x, var_1.x))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-136f * 1221f)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(858f, -329f) + vec2<f32>(var_1.x, -1716f)) + vec2<f32>(var_1.x, 927f)))));
    let var_2 = _wgslsmith_f_op_f32(-var_1.x);
    let var_3 = -_wgslsmith_mod_vec3_i32(~(~u_input.b), u_input.b ^ u_input.b);
    return select(-16603i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, i32(-1i) * -30815i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_3.x, var_3.x, var_3.x), vec3<i32>(29673i, var_3.x, var_3.x))), vec3<i32>(1i, -32i, ~(-1i << (1u % 32u)))), var_0.x);
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: u32) -> f32 {
    var var_0 = max(~arg_2.x, -arg_1.a.x);
    var_0 = func_3();
    var var_1 = -2429f;
    var var_2 = arg_1;
    var var_3 = false;
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_2.b.x)) + _wgslsmith_f_op_f32(2379f * -367f)))) - var_2.b.x), _wgslsmith_f_op_f32(f32(-1f) * -1312f)));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec3<u32>) -> f32 {
    var var_0 = Struct_1(-vec2<i32>(-74767i, -(~28016i)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, -1312f, arg_0.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -3261f), -1000f)) * _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(536f)), -1142f, _wgslsmith_f_op_f32(f32(-1f) * -1218f)), vec3<f32>(_wgslsmith_f_op_f32(1000f - 239f), _wgslsmith_div_f32(807f, -868f), _wgslsmith_f_op_f32(func_2(1328f, Struct_1(vec2<i32>(u_input.b.x, u_input.b.x), vec3<f32>(1709f, 346f, 1761f), u_input.b.x), vec4<i32>(-2147483647i, 2147483647i, u_input.b.x, -2147483647i), u_input.c.x))))), -14414i | u_input.b.x);
    let var_1 = !((arg_0.x && arg_0.x) & arg_0.x);
    var_0 = Struct_1(vec2<i32>(-34545i, 0i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.b)), firstLeadingBit(abs(~(i32(-1i) * -20252i))));
    var_0 = Struct_1(vec2<i32>(u_input.b.x, i32(-1i) * -46386i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0.b.x), -295f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_0.b.x)), -834f))), -1i);
    var var_2 = Struct_1(~var_0.a, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)), -378f), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(f32(-1f) * -846f), -662f) * vec3<f32>(_wgslsmith_f_op_f32(floor(var_0.b.x)), _wgslsmith_f_op_f32(round(var_0.b.x)), var_0.b.x)))), ~(~(-2147483647i)));
    return var_2.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(-u_input.b.xy, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 184f, -1092f)), vec3<f32>(1977f, 438f, 1299f), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true)))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(881f, -1841f, 640f) * vec3<f32>(_wgslsmith_f_op_f32(sign(181f)), 1f, _wgslsmith_f_op_f32(func_1(vec2<bool>(false, false), vec3<u32>(37868u, u_input.c.x, u_input.a))))))), abs(-(~12982i)));
    let var_1 = _wgslsmith_div_vec3_u32(min(~firstLeadingBit(vec3<u32>(32730u, 0u, u_input.a)), max(vec3<u32>(2669u, 32246u, u_input.a), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c.x, 4294967295u, 27019u), vec3<u32>(22572u, 0u, u_input.a)))) & _wgslsmith_div_vec3_u32(firstLeadingBit(max(vec3<u32>(u_input.a, 37759u, 5773u), vec3<u32>(u_input.c.x, 1u, 25481u))), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.c.x, 1u, u_input.a) << (vec3<u32>(85143u, 1436u, u_input.c.x) % vec3<u32>(32u)), ~vec3<u32>(u_input.a, 6537u, u_input.a))), _wgslsmith_clamp_vec3_u32(~(vec3<u32>(u_input.c.x, 25485u, u_input.c.x) << (vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x) % vec3<u32>(32u))), _wgslsmith_sub_vec3_u32(vec3<u32>(12003u, 1u, u_input.a) >> (vec3<u32>(u_input.c.x, u_input.a, 47277u) % vec3<u32>(32u)), ~vec3<u32>(1u, u_input.c.x, 1u)), ~_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, u_input.a, u_input.a), vec3<u32>(4294967295u, 17398u, u_input.c.x))) | ~((vec3<u32>(u_input.a, 49426u, 51455u) >> (vec3<u32>(0u, u_input.a, 18811u) % vec3<u32>(32u))) & select(vec3<u32>(u_input.a, u_input.a, 56607u), vec3<u32>(1u, 53332u, 1507u), false)));
    var var_2 = true;
    let var_3 = Struct_1(_wgslsmith_mult_vec2_i32(u_input.b.zy, vec2<i32>(-(u_input.b.x | -48497i), -19094i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1494f, 848f, -422f)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1433f, 272f, -643f), var_0.b)))))), 2147483647i);
    var_0 = Struct_1(u_input.b.zz, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(536f, var_3.b.x, -119f))), vec3<f32>(973f, var_0.b.x, var_0.b.x), vec3<bool>(false, true, false))), vec3<f32>(_wgslsmith_f_op_f32(-var_3.b.x), _wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(186f - var_0.b.x)))), var_3.b, true)), 74835i);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b.x);
}

