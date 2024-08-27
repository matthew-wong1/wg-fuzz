struct Struct_1 {
    a: f32,
    b: u32,
    c: vec3<f32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 13>;

var<private> global1: array<vec3<u32>, 27>;

var<private> global2: array<f32, 20> = array<f32, 20>(-976f, 191f, -2008f, -1532f, 1000f, 602f, -123f, -735f, 491f, 869f, 1001f, -1085f, -646f, -392f, -330f, -179f, 672f, 2257f, 414f, 1000f);

var<private> global3: bool = false;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: vec4<i32>, arg_1: u32, arg_2: Struct_1, arg_3: u32) -> u32 {
    global0 = array<f32, 13>();
    global1 = array<vec3<u32>, 27>();
    return ~u_input.b.x;
}

fn func_3() -> bool {
    let var_0 = Struct_1(global2[_wgslsmith_index_u32(func_1(~_wgslsmith_mult_vec4_i32(-vec4<i32>(1i, u_input.d.x, 41297i, 0i), vec4<i32>(-1i, 2147483647i, u_input.d.x, u_input.d.x)), u_input.b.x, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(182f)) + global0[_wgslsmith_index_u32(28940u, 13u)]), reverseBits(_wgslsmith_mod_u32(u_input.c.x, 1u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(u_input.b.x, 20u)], global0[_wgslsmith_index_u32(0u, 13u)], global0[_wgslsmith_index_u32(u_input.c.x, 13u)])), vec4<bool>(any(vec2<bool>(true, true)), true, true, true)), firstLeadingBit(u_input.b.x)), 20u)], u_input.c.x, vec3<f32>(_wgslsmith_f_op_f32(select(482f, 943f, true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(646f - global2[_wgslsmith_index_u32(4294967295u, 20u)]))), 802f), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32((u_input.b.x & u_input.c.x) & ~u_input.a.x, _wgslsmith_div_u32(u_input.b.x << (u_input.b.x % 32u), 1u)), 13u)]), select(vec4<bool>(false, false, false, false), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), false)), vec4<bool>(true, any(vec4<bool>(true, true, true, false)), true, true), vec4<bool>(false, true, true, true)), vec4<bool>(any(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true))), all(vec4<bool>(true, true, true, true)), true, select(true, true, true))));
    let var_1 = firstLeadingBit(select(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d.x, u_input.d.x), u_input.d.zx), ~(-1i), u_input.d.x, _wgslsmith_mult_i32(16375i, u_input.d.x)), -vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x) ^ vec4<i32>(225i, u_input.d.x, u_input.d.x, u_input.d.x), select(var_0.d, select(vec4<bool>(true, var_0.d.x, var_0.d.x, false), var_0.d, var_0.d), var_0.d.x & var_0.d.x)) & vec4<i32>(abs(firstTrailingBit(u_input.d.x)), i32(-1i) * -68826i, i32(-1i) * -46875i, 0i));
    var var_2 = 35689u;
    var var_3 = -201f;
    var var_4 = Struct_2(var_0, firstLeadingBit(u_input.b), select(max(~(u_input.d ^ vec3<i32>(u_input.d.x, 1i, u_input.d.x)), var_1.yxy), firstLeadingBit(vec3<i32>(u_input.d.x, var_1.x, 0i) | vec3<i32>(2147483647i, u_input.d.x, var_1.x)), var_0.d.zxx));
    return false;
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: bool) -> bool {
    global2 = array<f32, 20>();
    return func_3();
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: vec4<bool>, arg_3: Struct_1) -> Struct_1 {
    global3 = false;
    let var_0 = arg_3.d.x;
    global3 = select(~4294967295u >= ~_wgslsmith_add_u32(~arg_3.b, 4294967295u), any(!(!arg_3.d.xxx)), any(!vec2<bool>(false, false & arg_0.d.x)));
    global0 = array<f32, 13>();
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1223f), 1u & ~arg_0.b, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, arg_1, -1000f) - arg_0.c) * _wgslsmith_f_op_vec3_f32(select(arg_3.c, vec3<f32>(global0[_wgslsmith_index_u32(1u, 13u)], -445f, arg_3.c.x), true))), vec3<f32>(-1258f, _wgslsmith_f_op_f32(-arg_3.c.x), arg_1)), select(!(!vec4<bool>(true, arg_2.x, false, true)), !vec4<bool>(arg_2.x, true, false, false), arg_0.d)), reverseBits(u_input.b), vec3<i32>(firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, -1i, -39627i), u_input.d) ^ u_input.d.x), u_input.d.x, -17691i));
    return Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-590f))))), 25140u, arg_0.c, !vec4<bool>(false, func_2(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1719f, arg_0.a, -1067f, -1000f))), Struct_2(arg_0, u_input.b, u_input.d), var_1.a.a > var_1.a.a), false | arg_0.d.x, all(vec3<bool>(arg_0.d.x, true, false))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.c.x, 13u)] + -2509f);
    global1 = array<vec3<u32>, 27>();
    global0 = array<f32, 13>();
    var var_1 = func_4(Struct_1(_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(func_1(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.d.x, 18562i, -2147483647i, 57579i), vec4<i32>(u_input.d.x, 1i, -9523i, -2147483647i)), ~u_input.a.x, Struct_1(2359f, u_input.a.x, vec3<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 13u)], global0[_wgslsmith_index_u32(86701u, 13u)], global2[_wgslsmith_index_u32(u_input.a.x, 20u)]), vec4<bool>(true, true, true, false)), 53307u), 13u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-889f, global0[_wgslsmith_index_u32(0u, 13u)])) * 1448f))), u_input.a.x, vec3<f32>(global2[_wgslsmith_index_u32(abs(~u_input.c.x), 20u)], _wgslsmith_div_f32(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(24116u, 20u)], global2[_wgslsmith_index_u32(3647u, 20u)]), 1174f), 1105f), vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.b.x, 20u)] <= _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.b.x, 20u)]), false, func_2(vec4<f32>(-753f, global0[_wgslsmith_index_u32(u_input.c.x, 13u)], global0[_wgslsmith_index_u32(u_input.a.x, 13u)], 853f), Struct_2(Struct_1(464f, u_input.a.x, vec3<f32>(1053f, -447f, 637f), vec4<bool>(false, false, false, false)), vec4<u32>(1u, 0u, u_input.a.x, 27248u), u_input.d), true))), global2[_wgslsmith_index_u32(~(u_input.a.x ^ 5305u), 20u)], vec4<bool>(true, true, true, false), Struct_1(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(~u_input.b.x & _wgslsmith_dot_vec3_u32(u_input.a.xxw, u_input.a.zxy), 20u)] - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(239f))))), select(~(~4294967295u), u_input.c.x, true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(1u, 20u)], 860f, 727f) * vec3<f32>(global0[_wgslsmith_index_u32(19337u, 13u)], global2[_wgslsmith_index_u32(0u, 20u)], 622f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 13u)], -785f, -333f), vec3<f32>(global2[_wgslsmith_index_u32(44054u, 20u)], global0[_wgslsmith_index_u32(4294967295u, 13u)], global2[_wgslsmith_index_u32(u_input.b.x, 20u)]))))), vec4<bool>(!all(vec2<bool>(false, true)), select(false, false, true) | true, false, all(vec4<bool>(true, true, false, false)))));
    global0 = array<f32, 13>();
    let var_2 = Struct_2(Struct_1(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(32440u, 20u)], _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(var_1.a, -620f, var_1.d.x))))), 0u, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -838f)), var_1.c.x, _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(var_1.b, 13u)], _wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(var_1.b, 20u)]))))), var_1.d), ~(_wgslsmith_add_vec4_u32(u_input.b, abs(u_input.a)) >> (~(vec4<u32>(31013u, var_1.b, 1u, 38892u) | u_input.b) % vec4<u32>(32u))), u_input.d);
    global3 = all(func_4(var_2.a, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-254f - -141f))), !(!vec4<bool>(false, var_2.a.d.x, var_2.a.d.x, true)), Struct_1(_wgslsmith_f_op_f32(-var_1.c.x), _wgslsmith_clamp_u32(var_2.a.b, var_1.b, var_1.b), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.a, 1075f, 1057f), var_2.a.c, var_2.a.d.x)), select(var_2.a.d, vec4<bool>(false, var_1.d.x, var_2.a.d.x, var_1.d.x), true))).d) || true;
    let x = u_input.a;
    s_output = StorageBuffer(~(i32(-1i) * -2147483647i), u_input.d.x, _wgslsmith_f_op_f32(-var_1.c.x), var_2.b.x);
}

