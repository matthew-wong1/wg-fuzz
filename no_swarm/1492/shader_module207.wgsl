struct Struct_1 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
    c: i32,
    d: vec2<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 32>;

var<private> global1: f32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec2<f32> {
    let var_0 = Struct_1(140f, all(vec4<bool>(true, select(true, true, true), true, all(vec2<bool>(false, true)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(310f, var_0.a, _wgslsmith_f_op_f32(var_0.a * 207f), _wgslsmith_f_op_f32(f32(-1f) * -838f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, var_0.a, var_0.a, 1573f)), var_0.b)) * vec4<f32>(var_0.a, var_0.a, _wgslsmith_f_op_f32(step(var_0.a, _wgslsmith_f_op_f32(-var_0.a))), 914f)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, var_0.a, -222f, -1689f))))))))));
    var var_2 = var_0;
    var var_3 = -1107f;
    let var_4 = global0[_wgslsmith_index_u32(~21771u, 32u)];
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_1.zw), _wgslsmith_f_op_vec2_f32(var_1.ww - vec2<f32>(700f, _wgslsmith_f_op_f32(832f - 158f))), vec2<bool>(~11638u >= u_input.b.x, true))));
}

fn func_2() -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(func_3());
    let var_1 = vec2<u32>(reverseBits(u_input.b.x), countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x ^ u_input.b.x, u_input.b.x), u_input.b.zx)));
    global0 = array<Struct_1, 32>();
    var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, _wgslsmith_f_op_f32(max(var_0.x, var_0.x))) + vec2<f32>(_wgslsmith_div_f32(778f, var_0.x), _wgslsmith_f_op_f32(floor(var_0.x)))))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(114f - -281f))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 208f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1178f, 955f) - vec2<f32>(912f, var_0.x))))), any(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), true), true))))));
    return !select(vec2<bool>(true, true), vec2<bool>(select(true, true, true) && select(true, false, true), all(vec2<bool>(true, true))), select(select(vec2<bool>(true, false), vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(false, false), false)), select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, true)));
}

fn func_1() -> vec4<f32> {
    var var_0 = !(false && all(func_2()));
    let var_1 = countOneBits(_wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32((vec4<i32>(9286i, 4099i, u_input.a.x, u_input.a.x) | vec4<i32>(u_input.a.x, -39102i, -10104i, 0i)) >> (vec4<u32>(u_input.b.x, u_input.b.x, 1u, u_input.b.x) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, -29992i, 29262i, 2147483647i), abs(vec4<i32>(u_input.a.x, 2147483647i, u_input.a.x, u_input.a.x)))), _wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(countOneBits(vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, u_input.a.x)), vec4<i32>(u_input.a.x, -56275i, u_input.a.x, u_input.a.x)), _wgslsmith_mult_vec4_i32(min(vec4<i32>(u_input.a.x, -30627i, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, -1i, -32035i, u_input.a.x)), vec4<i32>(2147483647i, 2147483647i, 25032i, -28651i) & vec4<i32>(u_input.a.x, u_input.a.x, -1i, -1i)))));
    global1 = 1189f;
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.b.xz & vec2<u32>(u_input.b.x, ~min(1u, u_input.b.x)), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(max(u_input.b.x, u_input.b.x), _wgslsmith_dot_vec4_u32(vec4<u32>(35076u, u_input.b.x, 4294967295u, 88050u), vec4<u32>(0u, u_input.b.x, 4294967295u, 19929u))), u_input.b.zy), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(33921u, 4294967295u, 20481u, 58946u), vec4<u32>(u_input.b.x, 1u, 15030u, 1u) ^ vec4<u32>(16786u, u_input.b.x, u_input.b.x, 0u)), ~abs(vec4<u32>(74344u, 37316u, u_input.b.x, 4294967295u))))), 32u)];
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_2.a)))), var_2.b);
    return _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_3.a, var_3.a, -1890f, var_2.a), vec4<f32>(var_3.a, var_3.a, var_3.a, 2600f)))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a, 676f, 1076f, 823f) - vec4<f32>(var_3.a, var_3.a, 398f, -1238f))))))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-834f - _wgslsmith_f_op_f32(abs(var_2.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_3.a)) * _wgslsmith_f_op_f32(1193f + var_2.a)), _wgslsmith_f_op_f32(f32(-1f) * -178f), -517f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-633f, -855f, var_2.a, var_3.a))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.a, 1964f, var_3.a, var_3.a))))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-392f - _wgslsmith_div_f32(824f, -2017f)));
    let var_0 = _wgslsmith_sub_vec4_u32(vec4<u32>(reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 4294967295u, 1u), vec4<u32>(9518u, u_input.b.x, u_input.b.x, u_input.b.x))), 76564u, u_input.b.x, _wgslsmith_mult_u32(select(10854u, u_input.b.x, false), 41038u << (u_input.b.x % 32u))), select(max(firstTrailingBit(vec4<u32>(u_input.b.x, 1u, 39580u, u_input.b.x)), firstTrailingBit(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x))), min(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(u_input.b.x, u_input.b.x, 17919u, u_input.b.x)), vec4<u32>(9000u, 1u, u_input.b.x, 0u) << (vec4<u32>(85745u, 23990u, u_input.b.x, 63691u) % vec4<u32>(32u))), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true)))) | _wgslsmith_mult_vec4_u32(vec4<u32>(0u, reverseBits(1u), 1u & select(u_input.b.x, 46854u, false), u_input.b.x), select(countOneBits(vec4<u32>(u_input.b.x, 69097u, u_input.b.x, 4294967295u) & vec4<u32>(u_input.b.x, 8415u, 33606u, 82342u)), vec4<u32>(u_input.b.x >> (u_input.b.x % 32u), 1u & u_input.b.x, 0u << (0u % 32u), 1u), false));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(164f, 634f, -280f, 1193f) * vec4<f32>(918f, -120f, -107f, -1000f))))))) + _wgslsmith_f_op_vec4_f32(func_1()));
    var var_2 = Struct_1(var_1.x, !(!all(vec4<bool>(true, true, true, true))));
    var var_3 = firstLeadingBit(u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec4_f32(func_1()).xzw, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.a, var_2.a, -587f) * var_1.xzx)), true)))), _wgslsmith_mult_vec4_u32(min(var_0, var_0), firstLeadingBit(var_0)), -var_3.x, -(~(~vec2<i32>(u_input.a.x, -12941i))), firstLeadingBit(7660u));
}

