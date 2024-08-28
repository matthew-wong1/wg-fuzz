struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_mod_vec4_i32(u_input.b, ~(min(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d.x, 45599i, u_input.e, u_input.b.x), u_input.b), u_input.b) << (max(~vec4<u32>(0u, 4294967295u, 1u, u_input.c.x), ~vec4<u32>(17255u, 0u, 4294967295u, 1u)) % vec4<u32>(32u))));
    var var_1 = ~var_0;
    var var_2 = Struct_1(abs(~vec2<i32>(~var_0.x, -21793i)), 0u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2006f * _wgslsmith_f_op_f32(862f + _wgslsmith_f_op_f32(f32(-1f) * -760f))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-405f - 1000f) - -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1782f), all(vec4<bool>(false, true, true, true))))));
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.c * var_2.c), _wgslsmith_f_op_f32(f32(-1f) * -624f));
    var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_2.c, 973f))));
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> vec4<bool> {
    let var_0 = arg_1.c;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-933f, _wgslsmith_f_op_f32(197f * var_0), _wgslsmith_f_op_f32(round(-1104f)), _wgslsmith_f_op_f32(select(450f, var_0, false))))));
    var var_2 = max(~(~_wgslsmith_mult_vec4_u32(~vec4<u32>(21811u, 22200u, u_input.c.x, 4294967295u), ~vec4<u32>(102272u, arg_1.b, 19292u, 1697u))), ~(~(~(vec4<u32>(u_input.a.x, 0u, 618u, arg_1.b) & vec4<u32>(30253u, 13275u, arg_1.b, 4294967295u)))));
    var var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.x))))) * 1000f)));
    var_3 = arg_1.c;
    return select(vec4<bool>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3()), arg_0)) >= var_0, true, select(false, any(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true))), true), select(select(true, true, true), true, true) & true), vec4<bool>(false, true, select(false, false, true) & !any(vec3<bool>(false, false, true)), any(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true))) | true), true);
}

fn func_1(arg_0: u32, arg_1: vec4<u32>, arg_2: vec2<f32>, arg_3: Struct_1) -> vec4<bool> {
    let var_0 = arg_3.a.x;
    return !select(!func_2(598f, arg_3), !func_2(_wgslsmith_f_op_f32(-arg_2.x), arg_3), vec4<bool>(true, true, true, true));
}

fn func_4(arg_0: vec4<bool>) -> Struct_1 {
    let var_0 = -(u_input.b.wyz << (abs(~vec3<u32>(1u, u_input.c.x, 11796u)) % vec3<u32>(32u)));
    var var_1 = vec4<bool>(any(func_1(1u, select(vec4<u32>(121502u, u_input.c.x, u_input.a.x, 18107u), vec4<u32>(u_input.a.x, u_input.a.x, 15858u, u_input.a.x), arg_0) ^ ~vec4<u32>(51850u, 18159u, u_input.c.x, 72658u), vec2<f32>(-2583f, -301f), Struct_1(~vec2<i32>(u_input.e, 10539i), ~u_input.c.x, _wgslsmith_f_op_f32(349f * -2104f))).xyy), _wgslsmith_f_op_f32(floor(-523f)) != -520f, arg_0.x, true);
    var var_2 = i32(-1i) * -35114i;
    var_2 = select(_wgslsmith_dot_vec3_i32(var_0, -vec3<i32>(var_0.x, u_input.e ^ u_input.b.x, max(var_0.x, 2147483647i))), u_input.e, !(~(1i | u_input.e) < _wgslsmith_clamp_i32(1i, abs(-2996i), 31513i)));
    let var_3 = Struct_1(var_0.xx, reverseBits(u_input.a.x), -512f);
    return Struct_1((_wgslsmith_clamp_vec2_i32(vec2<i32>(var_3.a.x, 34895i), u_input.d, -vec2<i32>(25788i, -33248i)) >> (firstTrailingBit(countOneBits(vec2<u32>(1u, 54048u))) % vec2<u32>(32u))) & (-min(var_0.yz, vec2<i32>(21480i, var_0.x)) << (abs(u_input.c.zy) % vec2<u32>(32u))), 4294967295u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-367f + var_3.c), _wgslsmith_f_op_f32(f32(-1f) * -190f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(-834f, _wgslsmith_f_op_f32(f32(-1f) * -1068f), -295f);
    var var_1 = func_4(select(vec4<bool>(all(func_1(u_input.a.x, vec4<u32>(107624u, 0u, 0u, 45075u), vec2<f32>(928f, -606f), Struct_1(vec2<i32>(u_input.b.x, u_input.d.x), u_input.a.x, var_0.x))), true, u_input.c.x > u_input.c.x, ~u_input.a.x < countOneBits(u_input.a.x)), !select(vec4<bool>(true, true, false, false), func_1(u_input.c.x, vec4<u32>(u_input.c.x, 1798u, u_input.c.x, u_input.a.x), vec2<f32>(297f, 1548f), Struct_1(vec2<i32>(20678i, u_input.e), u_input.a.x, 770f)), 2147483647i == u_input.e), !select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, true, true), u_input.b.x >= u_input.b.x)));
    let var_2 = func_4(!func_1(var_1.b, ~(~vec4<u32>(0u, 4294967295u, var_1.b, var_1.b)), vec2<f32>(-889f, -104f), Struct_1(var_1.a & u_input.b.yz, ~54971u, _wgslsmith_div_f32(var_1.c, -806f))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1287f, _wgslsmith_f_op_f32(246f - _wgslsmith_div_f32(var_2.c, var_2.c))))));
    var_1 = func_4(func_1(u_input.c.x, countOneBits(reverseBits(vec4<u32>(var_1.b, 4294967295u, var_1.b, u_input.c.x))) | abs(countOneBits(vec4<u32>(u_input.c.x, u_input.a.x, var_2.b, u_input.c.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(var_0.zy, vec2<f32>(var_3, 803f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_3, -197f) - var_0.xx))), func_4(vec4<bool>(var_1.b > var_1.b, true, any(vec2<bool>(true, true)), u_input.d.x >= 22054i))));
    var_1 = func_4(vec4<bool>(func_1(1u, vec4<u32>(_wgslsmith_sub_u32(u_input.c.x, 4042u), var_1.b, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, var_2.b, 84024u), vec3<u32>(1u, var_1.b, var_2.b)), var_1.b), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.yy + vec2<f32>(var_1.c, var_1.c)) * _wgslsmith_f_op_vec2_f32(trunc(var_0.xz))), Struct_1(vec2<i32>(-49725i, var_1.a.x) ^ vec2<i32>(var_1.a.x, 0i), var_2.b, _wgslsmith_f_op_f32(max(var_1.c, 119f)))).x, true, all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), all(vec4<bool>(false, false, false, false)))), ~0u > countOneBits(~var_1.b)));
    let x = u_input.a;
    s_output = StorageBuffer(1i);
}

