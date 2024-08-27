struct Struct_1 {
    a: vec3<u32>,
    b: vec4<i32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
    d: u32,
    e: vec2<bool>,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 2>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: Struct_3, arg_3: vec3<i32>) -> vec3<f32> {
    global0 = array<i32, 2>();
    var var_0 = vec2<f32>(arg_1, _wgslsmith_f_op_f32(trunc(-978f)));
    var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1599f, -416f))) + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(-1000f, 429f), vec2<f32>(var_0.x, 804f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, 1022f) + vec2<f32>(-461f, -1000f))))))), vec2<f32>(957f, 847f));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_1), arg_1), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-346f, -1758f) - vec2<f32>(var_0.x, arg_1)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_1, arg_1), vec2<f32>(var_0.x, -1500f))))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(803f, -235f) + vec2<f32>(955f, var_0.x))))) * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(min(1299f, 763f)), -387f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x))))));
    var var_1 = arg_0.b;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1849f, 896f, -636f) - vec3<f32>(248f, var_0.x, -2020f)))) * vec3<f32>(-164f, _wgslsmith_f_op_f32(select(501f, -519f, false)), _wgslsmith_f_op_f32(-var_0.x))), vec3<f32>(-1249f, _wgslsmith_f_op_f32(531f * _wgslsmith_f_op_f32(step(arg_1, -1811f))), _wgslsmith_f_op_f32(-arg_1)))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-611f, _wgslsmith_f_op_f32(-1010f * -289f), _wgslsmith_f_op_f32(-var_0.x)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -287f, 1716f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 204f, -1264f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, arg_1, 757f) * vec3<f32>(var_0.x, -434f, 955f))), vec3<bool>(any(vec3<bool>(true, arg_0.e.x, arg_0.e.x)), false, arg_0.e.x))), !select(select(vec3<bool>(arg_0.e.x, arg_0.e.x, false), vec3<bool>(true, arg_0.e.x, true), false), vec3<bool>(arg_0.e.x, true, arg_0.e.x), arg_0.e.x))));
}

fn func_2(arg_0: Struct_3, arg_1: vec4<u32>) -> vec3<u32> {
    global0 = array<i32, 2>();
    let var_0 = arg_0;
    var var_1 = Struct_1(vec3<u32>(8976u, _wgslsmith_clamp_u32(u_input.b, 1u, select(_wgslsmith_sub_u32(6216u, u_input.b), u_input.b, false)), _wgslsmith_mod_u32(~(~arg_1.x), 4294967295u)), vec4<i32>(~(-33646i) >> (0u % 32u), -var_0.a, -_wgslsmith_div_i32(arg_0.a >> (arg_1.x % 32u), select(var_0.a, var_0.a, true)), global0[_wgslsmith_index_u32(arg_1.x, 2u)]), -1i);
    var var_2 = _wgslsmith_f_op_vec3_f32(func_3(Struct_2(Struct_1(vec3<u32>(39583u, var_1.a.x, ~u_input.b), var_1.b, -6978i), Struct_1(var_1.a, firstTrailingBit(vec4<i32>(arg_0.a, 2147483647i, 27088i, var_1.b.x)), 23152i), select(vec4<i32>(countOneBits(8411i), ~global0[_wgslsmith_index_u32(4294967295u, 2u)], 33616i, ~2147483647i), firstLeadingBit(reverseBits(vec4<i32>(-1i, 0i, -52537i, global0[_wgslsmith_index_u32(arg_1.x, 2u)]))), select(true, true, false)), var_1.a.x, select(!select(vec2<bool>(true, false), vec2<bool>(true, true), true), vec2<bool>(true, true), select(any(vec2<bool>(false, true)), true, all(vec4<bool>(true, true, true, false))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-174f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))))), var_0, var_1.b.wyx));
    var var_3 = var_1.b.zzz;
    return ~firstLeadingBit(firstLeadingBit(abs(~var_1.a)));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: u32, arg_3: bool) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -552f), 1639f)), -146f)));
    var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-2982f, 260f, arg_1.e.x)) * 349f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-706f)) - -285f)), _wgslsmith_f_op_f32(round(-1000f)), all(select(vec4<bool>(false, false, arg_1.e.x, arg_1.e.x), vec4<bool>(arg_3, arg_3, arg_1.e.x, arg_1.e.x), vec4<bool>(arg_3, false, false, arg_3))) & arg_3))));
    global0 = array<i32, 2>();
    var var_1 = false;
    var_1 = true;
    return Struct_1(_wgslsmith_sub_vec3_u32(~arg_0, arg_1.a.a), abs(firstTrailingBit(_wgslsmith_mult_vec4_i32(arg_1.a.b, arg_1.a.b))) ^ select(select(min(arg_1.b.b, vec4<i32>(u_input.a, arg_1.c.x, u_input.a, u_input.a)), ~arg_1.b.b, !vec4<bool>(true, arg_1.e.x, arg_1.e.x, arg_3)), _wgslsmith_add_vec4_i32(~arg_1.b.b, -arg_1.a.b), !(arg_3 == true)), countOneBits(_wgslsmith_dot_vec4_i32(max(vec4<i32>(u_input.a, -2147483647i, arg_1.b.b.x, arg_1.c.x), arg_1.b.b), abs(vec4<i32>(801i, global0[_wgslsmith_index_u32(u_input.b, 2u)], -11847i, 56191i)))));
}

fn func_1() -> Struct_1 {
    var var_0 = func_4(func_2(Struct_3(-(~u_input.a)), _wgslsmith_div_vec4_u32(reverseBits(vec4<u32>(15882u, u_input.b, 0u, u_input.b) << (vec4<u32>(u_input.b, u_input.b, 1u, u_input.b) % vec4<u32>(32u))), vec4<u32>(15740u, 1u, ~35794u, u_input.b))), Struct_2(Struct_1(vec3<u32>(0u, reverseBits(u_input.b), u_input.b), abs(~vec4<i32>(global0[_wgslsmith_index_u32(0u, 2u)], global0[_wgslsmith_index_u32(u_input.b, 2u)], 1i, global0[_wgslsmith_index_u32(4294967295u, 2u)])), 6144i), Struct_1(select(~vec3<u32>(u_input.b, u_input.b, 1u), vec3<u32>(u_input.b, u_input.b, u_input.b) | vec3<u32>(1u, u_input.b, 1u), vec3<bool>(true, true, true)), min(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, u_input.a, -9295i, 2147483647i), vec4<i32>(global0[_wgslsmith_index_u32(u_input.b, 2u)], 2147483647i, global0[_wgslsmith_index_u32(u_input.b, 2u)], u_input.a)), vec4<i32>(global0[_wgslsmith_index_u32(u_input.b, 2u)], -1i, global0[_wgslsmith_index_u32(26849u, 2u)], -1i)), 1i), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(31783u, 2u)], -33798i), vec2<i32>(global0[_wgslsmith_index_u32(4294967295u, 2u)], -35493i)), countOneBits(global0[_wgslsmith_index_u32(4294967295u, 2u)]), _wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(u_input.b, 2u)], global0[_wgslsmith_index_u32(u_input.b, 2u)] | u_input.a, min(global0[_wgslsmith_index_u32(1u, 2u)], global0[_wgslsmith_index_u32(u_input.b, 2u)])), firstTrailingBit(-1211i)), countOneBits(_wgslsmith_clamp_u32(firstLeadingBit(77594u), ~1u, 16842u)), vec2<bool>(true, true)), abs(66277u ^ u_input.b), any(vec4<bool>(true, true, true, true)));
    var var_1 = func_4(~vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a.x, 4294967295u), vec2<u32>(var_0.a.x, 1u)) << (~var_0.a.x % 32u), _wgslsmith_clamp_u32(var_0.a.x, ~4294967295u, 4294967295u), func_2(Struct_3(global0[_wgslsmith_index_u32(u_input.b, 2u)]), vec4<u32>(u_input.b, 62636u, 93938u, 12299u)).x << (var_0.a.x % 32u)), Struct_2(func_4(var_0.a, Struct_2(func_4(vec3<u32>(3558u, var_0.a.x, u_input.b), Struct_2(Struct_1(var_0.a, vec4<i32>(global0[_wgslsmith_index_u32(24776u, 2u)], -1i, var_0.c, 90508i), u_input.a), Struct_1(var_0.a, var_0.b, var_0.b.x), var_0.b, u_input.b, vec2<bool>(true, false)), 10970u, false), Struct_1(vec3<u32>(0u, 1u, var_0.a.x), var_0.b, var_0.b.x), vec4<i32>(var_0.c, 1i, global0[_wgslsmith_index_u32(0u, 2u)], u_input.a), var_0.a.x, select(vec2<bool>(true, true), vec2<bool>(false, false), true)), ~u_input.b, true & all(vec2<bool>(false, false))), Struct_1(abs(var_0.a) << (var_0.a % vec3<u32>(32u)), vec4<i32>(1i, global0[_wgslsmith_index_u32(var_0.a.x, 2u)] >> (u_input.b % 32u), -6574i, reverseBits(global0[_wgslsmith_index_u32(81080u, 2u)])), ~_wgslsmith_add_i32(-27134i, 0i)), max(var_0.b, abs(~vec4<i32>(var_0.b.x, 3085i, 15631i, global0[_wgslsmith_index_u32(u_input.b, 2u)]))), ~_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(var_0.a.x, u_input.b, u_input.b)), vec3<u32>(54660u, 0u, 4294967295u)), !select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(true, false), true)), 944u, all(vec2<bool>(any(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false))), any(vec2<bool>(true, true)))));
    let var_2 = true;
    var var_3 = func_4(_wgslsmith_clamp_vec3_u32(var_1.a, var_1.a, abs(func_2(Struct_3(u_input.a), vec4<u32>(var_1.a.x, 0u, u_input.b, var_0.a.x)))), Struct_2(func_4(select(vec3<u32>(var_1.a.x, u_input.b, 0u) ^ var_0.a, vec3<u32>(var_0.a.x, 1u, 99770u), var_2), Struct_2(Struct_1(var_0.a, vec4<i32>(var_1.b.x, 2562i, var_1.b.x, u_input.a), -99460i), func_4(vec3<u32>(u_input.b, 59848u, 1u), Struct_2(Struct_1(vec3<u32>(0u, u_input.b, var_0.a.x), vec4<i32>(var_1.c, 29406i, var_1.c, var_1.b.x), global0[_wgslsmith_index_u32(u_input.b, 2u)]), Struct_1(var_1.a, vec4<i32>(0i, global0[_wgslsmith_index_u32(48419u, 2u)], -33070i, var_0.b.x), var_1.b.x), vec4<i32>(0i, 6032i, 10725i, var_1.b.x), 0u, vec2<bool>(true, false)), 0u, var_2), -var_1.b, ~0u, vec2<bool>(false, true)), reverseBits(firstLeadingBit(4294967295u)), true), Struct_1(vec3<u32>(4294967295u, var_1.a.x, u_input.b), -(var_0.b & var_0.b), u_input.a), _wgslsmith_add_vec4_i32(vec4<i32>(1i, var_0.b.x, _wgslsmith_div_i32(var_1.c, 3992i), 1i), _wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(var_1.b.x, global0[_wgslsmith_index_u32(15209u, 2u)], -2147483647i, -13782i), vec4<i32>(0i, var_0.c, var_0.c, var_0.c)), var_1.b & vec4<i32>(0i, u_input.a, var_0.b.x, 1i))), ~(~4294967295u), vec2<bool>(var_2 == var_2, var_2)), max(var_1.a.x, var_1.a.x), !(!var_2));
    var var_4 = 8143i;
    return Struct_1(_wgslsmith_add_vec3_u32(vec3<u32>(min(~9835u, 4294967295u & u_input.b), _wgslsmith_div_u32(_wgslsmith_sub_u32(8700u, var_0.a.x), var_1.a.x), ~(~u_input.b)), _wgslsmith_mult_vec3_u32(var_1.a, var_0.a)), _wgslsmith_sub_vec4_i32(~_wgslsmith_mod_vec4_i32(vec4<i32>(0i, var_1.c, 38957i, 0i), firstTrailingBit(vec4<i32>(-17278i, var_3.c, var_1.b.x, -2147483647i))), -select(var_3.b, vec4<i32>(global0[_wgslsmith_index_u32(var_0.a.x, 2u)], 2147483647i, var_1.b.x, u_input.a), var_2)), i32(-1i) * -2147483647i);
}

fn func_5(arg_0: Struct_1, arg_1: vec4<f32>) -> vec2<f32> {
    let var_0 = true;
    var var_1 = -vec2<i32>(-global0[_wgslsmith_index_u32(~abs(16908u), 2u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(arg_0.a, select(arg_0.a, vec3<u32>(0u, 0u, arg_0.a.x), vec3<bool>(var_0, false, false))) << ((func_1().a.x ^ arg_0.a.x) % 32u), 2u)]);
    var_1 = _wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(arg_0.b.yx, func_1().b.wz), -vec2<i32>(_wgslsmith_div_i32(countOneBits(-2147483647i), u_input.a), arg_0.b.x));
    let var_2 = Struct_3(-u_input.a);
    let var_3 = _wgslsmith_div_vec4_u32(reverseBits(vec4<u32>(19790u, _wgslsmith_sub_u32(10951u, _wgslsmith_div_u32(72469u, 23037u)), reverseBits(~1u), u_input.b)), _wgslsmith_mod_vec4_u32(countOneBits(~(vec4<u32>(0u, u_input.b, 1u, arg_0.a.x) ^ vec4<u32>(0u, 8353u, 4294967295u, 23215u))), ~select(~vec4<u32>(arg_0.a.x, arg_0.a.x, arg_0.a.x, u_input.b), ~vec4<u32>(1u, 63042u, u_input.b, 1u), true)));
    return _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_vec3_f32(func_3(Struct_2(Struct_1(var_3.wzw, arg_0.b, 8616i), Struct_1(arg_0.a, vec4<i32>(global0[_wgslsmith_index_u32(u_input.b, 2u)], var_2.a, global0[_wgslsmith_index_u32(1u, 2u)], global0[_wgslsmith_index_u32(9403u, 2u)]), 1i), vec4<i32>(-10516i, u_input.a, 25154i, 0i), 1u, vec2<bool>(var_0, true)), arg_1.x, Struct_3(0i), arg_0.b.wxz)).x)))), _wgslsmith_div_f32(arg_1.x, -245f)), _wgslsmith_f_op_vec2_f32(-arg_1.zy)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(func_5(func_1(), _wgslsmith_f_op_vec4_f32(vec4<f32>(128f, 412f, 835f, 1558f) + _wgslsmith_div_vec4_f32(vec4<f32>(-2436f, -118f, 949f, 1646f), vec4<f32>(451f, -608f, 2146f, -498f))))))));
    global0 = array<i32, 2>();
    global0 = array<i32, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(select(u_input.b | u_input.b, ~u_input.b, true), 4294967295u), min(vec4<u32>(0u, ~u_input.b, _wgslsmith_mod_u32(u_input.b, u_input.b), u_input.b) >> (_wgslsmith_add_vec4_u32(~vec4<u32>(112u, 3324u, u_input.b, u_input.b), ~vec4<u32>(u_input.b, u_input.b, u_input.b, 0u)) % vec4<u32>(32u)), firstLeadingBit(~vec4<u32>(1u, 27901u, u_input.b, u_input.b) | (vec4<u32>(4294967295u, 1u, u_input.b, 1u) | vec4<u32>(9525u, u_input.b, 86155u, 0u)))));
}

