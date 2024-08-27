struct Struct_1 {
    a: vec2<u32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<i32>,
    c: vec3<i32>,
    d: Struct_1,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: f32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: u32 = 4294967295u;

var<private> global2: array<Struct_2, 23>;

var<private> global3: array<f32, 13> = array<f32, 13>(104f, -568f, 403f, 705f, -1451f, -341f, -1304f, 1326f, 758f, 716f, -1071f, 1000f, -183f);

var<private> global4: Struct_2;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3() -> i32 {
    return firstLeadingBit(u_input.d.x);
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: i32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(4294967295u, 13u)], -1674f, global3[_wgslsmith_index_u32(global0.b.x, 13u)]) + vec3<f32>(global3[_wgslsmith_index_u32(6754u, 13u)], global3[_wgslsmith_index_u32(global4.d.a.x, 13u)], -306f)), vec3<f32>(391f, 1726f, global3[_wgslsmith_index_u32(4294967295u, 13u)]))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1234f, global3[_wgslsmith_index_u32(37768u, 13u)], -1084f))))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(0u ^ global0.b.x, 13u)], _wgslsmith_f_op_f32(abs(1077f)), global3[_wgslsmith_index_u32(arg_1, 13u)]))));
    let var_1 = Struct_1(global4.e.yx, vec2<u32>(~global4.d.b.x, ~_wgslsmith_clamp_u32(~4294967295u, 0u, global0.b.x >> (global4.e.x % 32u))));
    let var_2 = Struct_2(!global4.a, vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(13256i, 7316i, arg_2, 22769i), ~u_input.a), global4.b.x), func_3()), global4.c, Struct_1(var_1.b, reverseBits(firstLeadingBit(min(u_input.c.xz, vec2<u32>(4294967295u, 4294967295u))))), global4.e);
    let var_3 = var_2;
    var var_4 = global3[_wgslsmith_index_u32(global4.e.x, 13u)];
    return Struct_2(false & var_2.a, abs(~vec2<i32>(_wgslsmith_clamp_i32(global4.c.x, -2147483647i, global4.b.x), -1i)), select(u_input.d.ywz, select(var_2.c, firstLeadingBit(~global4.c), all(select(vec4<bool>(var_3.a, false, global4.a, global4.a), vec4<bool>(false, true, var_2.a, true), false))), any(vec3<bool>(var_3.a, -915f <= global3[_wgslsmith_index_u32(27577u, 13u)], true))), Struct_1(abs(var_2.d.b | var_2.e.zy), _wgslsmith_sub_vec2_u32(var_2.e.ww, var_3.e.yw)), _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(83856u, 1u), _wgslsmith_div_u32(8528u, u_input.c.x), 25476u, 4294967295u) & vec4<u32>(global0.a.x, 50701u, 0u >> (arg_1 % 32u), 3008u), max(firstTrailingBit(u_input.c), firstTrailingBit(u_input.c) << (~vec4<u32>(var_1.a.x, var_3.d.b.x, global4.e.x, global4.e.x) % vec4<u32>(32u)))));
}

fn func_1() -> vec2<f32> {
    var var_0 = select(abs(firstTrailingBit(u_input.c.xz >> (max(vec2<u32>(65429u, global4.d.a.x), vec2<u32>(global0.b.x, global0.a.x)) % vec2<u32>(32u)))), vec2<u32>(8923u, ~(global4.e.x | _wgslsmith_dot_vec2_u32(vec2<u32>(18878u, 0u), vec2<u32>(global0.a.x, global0.b.x)))), vec2<bool>(true, true));
    var var_1 = func_2(global4.b.x, u_input.c.x, _wgslsmith_dot_vec2_i32(select(_wgslsmith_clamp_vec2_i32(vec2<i32>(global4.c.x, 52441i), vec2<i32>(40558i, 20372i), global4.c.zz), global4.c.yy, !global4.a) ^ (~vec2<i32>(global4.c.x, 1i) << (vec2<u32>(var_0.x, 4294967295u) % vec2<u32>(32u))), -vec2<i32>(-2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 2147483647i, 17763i), global4.c))));
    var var_2 = global2[_wgslsmith_index_u32(u_input.c.x, 23u)];
    var var_3 = func_2(_wgslsmith_sub_i32(~(var_1.b.x ^ -2147483647i), _wgslsmith_clamp_i32(var_1.c.x, func_3(), _wgslsmith_mod_i32(49013i, global4.b.x))) | var_1.b.x, global4.d.a.x, firstLeadingBit(0i));
    let var_4 = func_2(countOneBits(-2147483647i >> ((1u >> (~u_input.c.x % 32u)) % 32u)), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(75291u | global4.e.x, max(var_1.d.b.x, 0u), reverseBits(global4.e.x), 19607u << (0u % 32u))), var_3.e), ~_wgslsmith_clamp_i32(var_3.b.x | u_input.d.x, u_input.b.x, -var_2.c.x)).d;
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-642f, global3[_wgslsmith_index_u32(1u, 13u)])), _wgslsmith_f_op_vec2_f32(vec2<f32>(610f, global3[_wgslsmith_index_u32(16223u, 13u)]) - vec2<f32>(580f, -1555f))) + vec2<f32>(-1000f, global3[_wgslsmith_index_u32(4294967295u, 13u)])))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-194f, 590f), vec2<f32>(global3[_wgslsmith_index_u32(u_input.c.x, 13u)], global3[_wgslsmith_index_u32(var_2.e.x, 13u)]), vec2<bool>(true, false)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-673f, 1000f), vec2<f32>(global3[_wgslsmith_index_u32(global0.a.x, 13u)], -445f), vec2<bool>(var_1.a, true))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-361f, 1191f) - vec2<f32>(-1000f, -1375f)))), !vec2<bool>(var_2.a | true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -vec2<i32>(_wgslsmith_mod_i32(-global4.b.x, global4.c.x), u_input.e | ~select(-33988i, 9432i, global4.a));
    global2 = array<Struct_2, 23>();
    var var_1 = _wgslsmith_f_op_vec2_f32(func_1());
    let var_2 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(global0.a.x, u_input.c.x), 13u)], -1096f)));
    var var_3 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, var_1.x, -144f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(global4.d.b.x, 13u)], -497f, var_1.x) * vec3<f32>(-562f, 286f, global3[_wgslsmith_index_u32(global4.d.a.x, 13u)]))))))));
    var var_4 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -218f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1161f))), _wgslsmith_f_op_f32(1000f - 554f));
    var var_5 = _wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(select(-(~global4.b), ~(~u_input.b), select(select(vec2<bool>(true, true), vec2<bool>(true, global4.a), global4.a), !vec2<bool>(global4.a, true), vec2<bool>(global4.a, global4.a))), firstTrailingBit(_wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(var_0, u_input.b), u_input.a.zx))), var_0);
    var var_6 = Struct_1(~global0.b, global0.a);
    let var_7 = func_2(var_0.x, ~(~countOneBits(global0.b.x)), _wgslsmith_mult_i32(var_0.x << (_wgslsmith_div_u32(~0u, var_6.a.x) % 32u), var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer(9117i, ~reverseBits(vec3<u32>(_wgslsmith_add_u32(2315u, var_7.e.x), ~global0.a.x, 27624u)), _wgslsmith_clamp_i32(16002i, global4.c.x, 17748i), _wgslsmith_f_op_f32(abs(316f)), ~vec4<i32>(_wgslsmith_dot_vec3_i32(-u_input.a.yww, u_input.a.yzy), var_5.x, ~global4.c.x, reverseBits(abs(9655i))));
}

