struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: vec3<u32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<i32>,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 28> = array<f32, 28>(486f, 832f, -184f, 304f, -427f, 1823f, 1605f, 949f, -744f, -213f, -793f, 577f, -503f, -441f, -1207f, 697f, 1846f, -3048f, 295f, 1739f, 1381f, 2100f, -562f, -2190f, 589f, -794f, 439f, 888f);

var<private> global1: u32;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> f32 {
    global1 = ~(~1u);
    global1 = ~(~0u);
    let var_0 = Struct_3(-2147483647i, ~vec3<u32>(~u_input.a.x & 0u, 29639u, _wgslsmith_mult_u32(u_input.a.x, u_input.a.x)));
    global1 = var_0.b.x;
    global1 = firstTrailingBit(~(~14236u ^ _wgslsmith_div_u32(u_input.a.x, u_input.a.x))) & ~u_input.a.x;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(244f)));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0[_wgslsmith_index_u32(1u, 28u)], global0[_wgslsmith_index_u32(u_input.a.x, 28u)]), vec2<f32>(137f, global0[_wgslsmith_index_u32(24199u, 28u)]))) * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 28u)], global0[_wgslsmith_index_u32(6907u, 28u)]))))), global0[_wgslsmith_index_u32(~(~0u), 28u)], u_input.a.wzw, vec4<i32>(firstLeadingBit(i32(-1i) * -29143i), firstTrailingBit(-2147483647i | u_input.c.x), _wgslsmith_sub_i32(~(-2147483647i), abs(2147483647i)), 2147483647i)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3()))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(u_input.a.x, 28u)])))), _wgslsmith_f_op_f32(select(-1000f, -312f, all(vec4<bool>(false, false, true, true)))))), Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global0[_wgslsmith_index_u32(55767u, 28u)], 438f), vec2<f32>(461f, global0[_wgslsmith_index_u32(u_input.a.x, 28u)]))))), vec2<f32>(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a.x, u_input.a.x), 28u)], 734f), vec2<bool>(true, true))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-1087f)), 326f)), 215f), _wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(u_input.a.yww, ~vec3<u32>(u_input.a.x, 17790u, 4294967295u)), ~vec3<u32>(u_input.a.x, 42814u, 4294967295u)), select(_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, u_input.c.x, -1i, -23094i), u_input.c) & ~u_input.e, u_input.c & (u_input.e << (vec4<u32>(0u, u_input.a.x, 29677u, 1u) % vec4<u32>(32u))), vec4<bool>(true, true, true, true))));
    var var_1 = _wgslsmith_mult_vec3_u32(~(~abs(var_0.a.c)), var_0.c.c);
    global0 = array<f32, 28>();
    var var_2 = _wgslsmith_div_i32(~u_input.b, max(var_0.c.d.x, -var_0.a.d.x >> (21065u % 32u)));
    let var_3 = Struct_2(var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(1u, 28u)], _wgslsmith_div_f32(-1000f, global0[_wgslsmith_index_u32(u_input.a.x, 28u)])))) + -822f), var_0.a);
    return var_0.c;
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: Struct_3, arg_3: Struct_1) -> Struct_1 {
    var var_0 = func_2();
    return arg_1.c;
}

fn func_1() -> Struct_1 {
    return func_4(vec2<i32>(reverseBits(u_input.e.x), firstTrailingBit(u_input.c.x)) | vec2<i32>(u_input.c.x, countOneBits(u_input.d)), Struct_2(func_2(), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a.x, _wgslsmith_mod_u32(u_input.a.x, 13632u), abs(0u)), 28u)]), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 28u)], global0[_wgslsmith_index_u32(1u, 28u)])))), func_2().a.x, ~_wgslsmith_div_vec3_u32(vec3<u32>(1u, 31977u, u_input.a.x), u_input.a.ywx), firstLeadingBit(u_input.c << (u_input.a % vec4<u32>(32u))))), Struct_3(412i, _wgslsmith_div_vec3_u32(abs(~u_input.a.xzy), abs(reverseBits(vec3<u32>(u_input.a.x, 132u, 58052u))))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global0[_wgslsmith_index_u32(0u, 28u)], global0[_wgslsmith_index_u32(u_input.a.x, 28u)]))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(7162u, 28u)], -1113f) - vec2<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 28u)], 1060f)))) + vec2<f32>(198f, 1280f)), _wgslsmith_f_op_f32(-747f - _wgslsmith_div_f32(func_2().a.x, global0[_wgslsmith_index_u32(~4294967295u, 28u)])), _wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(1u, u_input.a.x, u_input.a.x), 1u, _wgslsmith_mod_u32(u_input.a.x, 4120u)), abs(u_input.a.xyw)), u_input.c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!vec3<bool>(!all(vec2<bool>(true, false)), any(vec2<bool>(true, true)) || true, all(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false)))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(any(vec2<bool>(true, true)), any(vec4<bool>(true, false, true, true)), false)), vec3<bool>(any(vec4<bool>(true, true, true, true)), true, 1u > u_input.a.x), vec3<bool>(true, true, true)), false);
    var var_1 = Struct_3(_wgslsmith_sub_i32(14497i, -16684i), _wgslsmith_mod_vec3_u32(vec3<u32>(0u, u_input.a.x, 50067u), vec3<u32>(~(~0u), 0u, u_input.a.x)));
    var var_2 = func_1();
    var var_3 = Struct_2(Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(var_2.a * vec2<f32>(var_2.b, var_2.b)), var_2.a, true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-209f, global0[_wgslsmith_index_u32(91535u, 28u)])) + _wgslsmith_f_op_vec2_f32(-var_2.a))), _wgslsmith_f_op_f32(abs(var_2.a.x)), vec3<u32>(u_input.a.x, u_input.a.x, _wgslsmith_dot_vec3_u32(firstTrailingBit(var_1.b), ~var_1.b)), vec4<i32>(u_input.d, max(i32(-1i) * -2147483647i, 2147483647i | var_1.a), max(0i, var_2.d.x) >> (~var_2.c.x % 32u), _wgslsmith_div_i32(var_2.d.x & 2147483647i, reverseBits(-1i)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(39242u, 28u)])) - 505f))), func_1().a.x, true)), func_2());
    var var_4 = firstTrailingBit(1u);
    var_2 = var_3.a;
    var var_5 = vec3<bool>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1892f))), 780f)) < -3065f, var_0.x & false, select(true, var_0.x || !(var_2.d.x == var_2.d.x), var_0.x && !var_0.x));
    var_4 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(451f, 1095f, var_3.a.a.x, -1208f) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(579f, var_3.a.a.x, var_2.a.x, var_2.b)))), vec4<f32>(612f, _wgslsmith_f_op_f32(sign(-1345f)), _wgslsmith_div_f32(913f, global0[_wgslsmith_index_u32(var_3.a.c.x, 28u)]), _wgslsmith_f_op_f32(-var_2.b)), select(select(vec4<bool>(var_5.x, false, var_5.x, var_5.x), vec4<bool>(true, var_5.x, true, true), var_0.x), !vec4<bool>(var_5.x, var_0.x, false, true), !vec4<bool>(var_5.x, var_0.x, true, true)))))), _wgslsmith_f_op_f32(-1104f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(2274f))))))));
}

