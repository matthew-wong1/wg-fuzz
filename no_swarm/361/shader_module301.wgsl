struct Struct_1 {
    a: vec4<f32>,
    b: vec4<bool>,
    c: u32,
    d: f32,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 21>;

var<private> global1: array<vec3<u32>, 20> = array<vec3<u32>, 20>(vec3<u32>(7461u, 41342u, 4294967295u), vec3<u32>(77493u, 33209u, 83817u), vec3<u32>(16099u, 56261u, 0u), vec3<u32>(4294967295u, 9407u, 61992u), vec3<u32>(4294967295u, 48707u, 47576u), vec3<u32>(49593u, 44278u, 0u), vec3<u32>(3795u, 1u, 4294967295u), vec3<u32>(78753u, 41539u, 13454u), vec3<u32>(31430u, 4294967295u, 0u), vec3<u32>(4294967295u, 0u, 58930u), vec3<u32>(4294967295u, 1u, 56800u), vec3<u32>(55858u, 95600u, 85680u), vec3<u32>(1u, 0u, 0u), vec3<u32>(4294967295u, 20654u, 1u), vec3<u32>(21992u, 0u, 1u), vec3<u32>(0u, 4294967295u, 50520u), vec3<u32>(26805u, 23099u, 13086u), vec3<u32>(29654u, 25762u, 55132u), vec3<u32>(81431u, 48207u, 26139u), vec3<u32>(0u, 0u, 43794u));

var<private> global2: Struct_1;

var<private> global3: u32;

var<private> global4: vec2<u32> = vec2<u32>(4294967295u, 4294967295u);

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: vec4<bool>) -> f32 {
    let var_0 = Struct_1(vec4<f32>(-1110f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.a.x), _wgslsmith_f_op_f32(step(global2.d, global2.d))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-256f, global2.d, false)))), _wgslsmith_f_op_f32(global2.d * 1510f)), !vec4<bool>(all(global2.b.xxy), any(vec2<bool>(global2.b.x, false)), arg_0.x, select(true, arg_0.x, global2.a.x < global2.a.x)), global2.e, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -651f), global2.a.x), _wgslsmith_div_u32(~_wgslsmith_clamp_u32(global4.x, global2.c, 8942u), global2.c));
    global4 = ~(vec2<u32>(reverseBits(4294967295u), _wgslsmith_clamp_u32(global2.e, 45458u, 1u)) & _wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, var_0.e), vec2<u32>(global2.e, 690u)), firstTrailingBit(vec2<u32>(17927u, global2.e)))) >> (countOneBits(_wgslsmith_div_vec2_u32(vec2<u32>(countOneBits(82163u), 70893u), ~firstTrailingBit(vec2<u32>(global4.x, 1u)))) % vec2<u32>(32u));
    var var_1 = Struct_1(vec4<f32>(967f, global2.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1551f)) * _wgslsmith_f_op_f32(f32(-1f) * -1101f)) + global2.d), _wgslsmith_f_op_f32(global2.a.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d)))), vec4<bool>(select(false, true, true), global2.b.x, arg_0.x, global2.b.x), _wgslsmith_sub_u32(max(u_input.a, var_0.c), _wgslsmith_mod_u32(~global2.c, 4294967295u)) ^ 0u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1709f)))))), u_input.b);
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-global2.a), select(vec4<bool>(all(!arg_0), all(!var_0.b.xz), !var_0.b.x && any(var_0.b.yyx), true), !var_1.b, global2.b.x), _wgslsmith_div_u32(_wgslsmith_div_u32(~18915u, 1u), abs(min(var_0.e, 736u) & var_1.c)), var_1.d, _wgslsmith_add_u32(~(4294967295u | global4.x), ~firstLeadingBit(global2.c)) | countOneBits(_wgslsmith_add_u32(~var_0.e, firstLeadingBit(var_1.c))));
    var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.a) + _wgslsmith_f_op_vec4_f32(-var_0.a)), var_0.b, 46551u, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global2.a.x)), _wgslsmith_f_op_f32(var_1.a.x + -1932f))))), 0u);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_2.a.x)) + _wgslsmith_f_op_f32(-var_2.a.x));
}

fn func_2(arg_0: i32, arg_1: vec3<i32>) -> Struct_1 {
    var var_0 = global2.b.x;
    global0 = array<vec4<i32>, 21>();
    global4 = select(~_wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(45358u, 1u)), ~vec2<u32>(32865u, u_input.b)) ^ vec2<u32>(~firstLeadingBit(u_input.b), firstTrailingBit(u_input.a)), ~vec2<u32>(select(global4.x, u_input.a, global2.b.x) | _wgslsmith_dot_vec3_u32(global1[_wgslsmith_index_u32(u_input.b, 20u)], vec3<u32>(6556u, 19385u, u_input.a)), ~25263u), select(vec2<bool>(true, global2.b.x), select(select(global2.b.zw, global2.b.zz, select(true, true, global2.b.x)), global2.b.xy, _wgslsmith_f_op_f32(func_3(global2.b)) <= _wgslsmith_f_op_f32(floor(global2.d))), global2.b.wy));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global2.a)), global2.b, 67612u, _wgslsmith_f_op_f32(func_3(vec4<bool>(all(global2.b.yxy), all(vec2<bool>(false, false)), global2.b.x, all(vec4<bool>(true, false, global2.b.x, global2.b.x))))), global2.c);
    var var_2 = _wgslsmith_dot_vec3_u32(max(~max(vec3<u32>(14221u, 57995u, 1u) & vec3<u32>(global4.x, u_input.a, 15140u), ~global1[_wgslsmith_index_u32(global2.e, 20u)]), global1[_wgslsmith_index_u32(firstLeadingBit(max(60387u, var_1.e)) | ~u_input.b, 20u)]), ~vec3<u32>(var_1.e | 0u, _wgslsmith_mod_u32(10025u, var_1.e), global4.x) ^ vec3<u32>(u_input.a, select(1u, var_1.c, true), ~max(u_input.b, var_1.e)));
    return var_1;
}

fn func_1(arg_0: vec2<bool>) -> f32 {
    var var_0 = func_2(24116i, vec3<i32>(u_input.c, _wgslsmith_clamp_i32(6846i, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, -1i), ~vec2<i32>(1i, -1i)), u_input.c), ~u_input.c ^ ~_wgslsmith_div_i32(-1i, u_input.c)));
    var var_1 = func_2(~(~1i), -(~(~vec3<i32>(u_input.c, u_input.c, u_input.c))) << (~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, var_0.c, var_0.c), ~global1[_wgslsmith_index_u32(var_0.c, 20u)]) % vec3<u32>(32u)));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1000f, var_0.a.x, 280f, 993f)))))));
    var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_1.d - _wgslsmith_f_op_f32(-742f - -1155f)), -817f, _wgslsmith_f_op_f32(step(1082f, _wgslsmith_f_op_f32(f32(-1f) * -1074f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-295f - 1108f)) * _wgslsmith_f_op_f32(step(var_2.x, _wgslsmith_f_op_f32(trunc(149f)))))));
    var var_3 = vec2<u32>(firstTrailingBit(_wgslsmith_clamp_u32(var_1.e, u_input.b, max(var_1.c, var_0.e))) | 21242u, 41047u);
    return -512f;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_1(vec4<f32>(-587f, 615f, -569f, global2.d), vec4<bool>(false, ~(-2147483647i) <= u_input.c, true, true), ~(~(~global4.x)), _wgslsmith_f_op_f32(-1318f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -125f))), -1498f)), global2.e);
    var var_0 = reverseBits(~abs(_wgslsmith_add_u32(0u, 1u)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.d) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.d))));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1868f));
    var var_2 = global2.b.yy;
    global1 = array<vec3<u32>, 20>();
    global1 = array<vec3<u32>, 20>();
    let var_3 = global1[_wgslsmith_index_u32(~0u, 20u)];
    let var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global2.d, -710f))), _wgslsmith_f_op_f32(func_1(global2.b.zy)), _wgslsmith_f_op_f32(-111f - func_2(1i, vec3<i32>(u_input.c, u_input.c, -7971i)).d), global2.d)), vec4<bool>(4294967295u >= _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(var_3.zx, vec2<u32>(4294967295u, global2.c)), var_3.yy), !select(!var_2.x, any(global2.b.xyy), true), var_2.x, ~(u_input.c | 17696i) != _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, 77265i, -26401i), vec3<i32>(-2147483647i, u_input.c, 29592i)), max(vec3<i32>(25081i, u_input.c, -18529i), vec3<i32>(u_input.c, -2147483647i, u_input.c)))), _wgslsmith_mod_u32(_wgslsmith_mult_u32(countOneBits(1u), countOneBits(firstTrailingBit(global2.c))), global2.c), global2.a.x, 1u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_i32(~(-firstTrailingBit(vec3<i32>(0i, u_input.c, 1i))), max(vec3<i32>(-2147483647i, ~u_input.c, u_input.c), vec3<i32>(i32(-1i) * -7212i, u_input.c >> (81227u % 32u), abs(-8691i))), _wgslsmith_sub_vec3_i32((vec3<i32>(u_input.c, u_input.c, 2147483647i) & vec3<i32>(-44293i, u_input.c, 27383i)) ^ vec3<i32>(u_input.c, u_input.c, 2147483647i), min(vec3<i32>(2147483647i, u_input.c, u_input.c), vec3<i32>(53014i, u_input.c, u_input.c)))));
}

