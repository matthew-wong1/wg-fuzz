struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: i32,
    b: vec2<u32>,
    c: f32,
}

struct Struct_3 {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: vec3<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 15>;

var<private> global1: vec4<i32>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: f32) -> vec4<i32> {
    global0 = array<Struct_3, 15>();
    var var_0 = min(global1.zwz, global1.zzy);
    var var_1 = Struct_1(var_0.x, 1000f);
    let var_2 = !select(vec2<bool>(false, true), vec2<bool>(true, true), !any(select(vec2<bool>(false, false), vec2<bool>(true, false), true)));
    var var_3 = global0[_wgslsmith_index_u32(~(~(3343u << (1u % 32u))), 15u)];
    return vec4<i32>(~global1.x ^ var_3.e.a, _wgslsmith_div_i32(_wgslsmith_div_i32(~(-1575i), -18075i), abs(-1i)), firstTrailingBit(2147483647i), var_0.x);
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: Struct_3, arg_3: vec4<bool>) -> i32 {
    var var_0 = _wgslsmith_mult_i32(u_input.a.x << (arg_0 % 32u), global1.x);
    var_0 = _wgslsmith_add_i32(arg_2.c, _wgslsmith_add_i32(-(_wgslsmith_sub_i32(-16032i, arg_2.c) << (arg_0 % 32u)), _wgslsmith_div_i32(-(u_input.a.x & 0i), u_input.a.x)));
    global1 = _wgslsmith_clamp_vec4_i32(vec4<i32>(1i, arg_2.c, 14927i, -abs(2147483647i)), -_wgslsmith_sub_vec4_i32(vec4<i32>(~arg_2.e.a, -1i, abs(global1.x), reverseBits(u_input.a.x)), (vec4<i32>(arg_2.e.a, u_input.a.x, 36190i, 2147483647i) | vec4<i32>(-47400i, global1.x, 15854i, 26285i)) | ~vec4<i32>(40545i, 0i, -57239i, -37313i)), -countOneBits(vec4<i32>(-1i, reverseBits(arg_2.c), -96831i, abs(u_input.a.x))));
    var_0 = firstTrailingBit(u_input.a.x);
    let var_1 = Struct_3(u_input.a.x, _wgslsmith_mult_vec3_u32(~arg_2.b, u_input.b), arg_2.a, firstTrailingBit(arg_2.b), Struct_1(_wgslsmith_add_i32(2147483647i, _wgslsmith_add_i32(global1.x, 17197i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(1572f, -101f)), -774f, !arg_3.x)) + _wgslsmith_f_op_f32(-1060f * arg_2.e.b))));
    return ~countOneBits(-arg_2.e.a);
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> vec4<i32> {
    let var_0 = Struct_1(16034i & -_wgslsmith_clamp_i32(~global1.x, _wgslsmith_clamp_i32(-18176i, u_input.a.x, 3624i), _wgslsmith_mod_i32(u_input.a.x, arg_2)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_3.b * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-1576f, arg_3.b))))))));
    let var_1 = select(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), false)), vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(566f)) - _wgslsmith_div_f32(-418f, arg_1.b)) != arg_1.b, !select(false, arg_3.a >= arg_1.a, any(vec3<bool>(false, false, true))), any(vec4<bool>(true, false, false, false)) & (any(vec2<bool>(true, true)) | true), (arg_3.a != -2147483647i) && true), select(select(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), false), select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), false), vec4<bool>(true, true, true, true), select(false, true, true)), false), vec4<bool>(true, false, all(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false))), any(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), true))), vec4<bool>(true, true | (96032u <= u_input.b.x), true, any(vec2<bool>(true, true)))));
    let var_2 = countOneBits(~(min(u_input.b, u_input.b) & ~vec3<u32>(u_input.b.x, arg_0, 38308u)));
    global1 = ~(_wgslsmith_sub_vec4_i32(-(vec4<i32>(-1i, u_input.a.x, 20007i, 1i) >> (vec4<u32>(arg_0, arg_0, 40079u, 33784u) % vec4<u32>(32u))), max(abs(vec4<i32>(var_0.a, var_0.a, 59665i, -22764i)), _wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, -1i, global1.x, 14045i), vec4<i32>(arg_2, arg_1.a, var_0.a, global1.x)))) | abs(vec4<i32>(~(-48377i), 1i, func_1(-263f).x, firstLeadingBit(var_0.a))));
    let var_3 = _wgslsmith_add_vec4_u32(~(~vec4<u32>(~u_input.b.x, arg_0, 4294967295u, arg_0 | 28017u)), ~(~_wgslsmith_div_vec4_u32(~vec4<u32>(arg_0, u_input.b.x, arg_0, 0u), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, arg_0, 8424u, arg_0), vec4<u32>(0u, 14221u, var_2.x, 33895u)))));
    return min(firstTrailingBit(abs(vec4<i32>(-2147483647i, 7723i, var_0.a, global1.x)) << (_wgslsmith_mod_vec4_u32(var_3, vec4<u32>(0u, 11101u, arg_0, 0u)) % vec4<u32>(32u))), _wgslsmith_mult_vec4_i32(~(~vec4<i32>(23092i, -55244i, global1.x, 0i)), vec4<i32>(arg_1.a, 0i, _wgslsmith_dot_vec2_i32(vec2<i32>(-36575i, 1i), u_input.a), firstLeadingBit(-35233i)))) ^ -(~abs(-vec4<i32>(-32239i, 1161i, arg_1.a, 2147483647i)));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: Struct_2) -> vec4<bool> {
    var var_0 = ~(func_4(select(countOneBits(1u), u_input.b.x >> (0u % 32u), all(vec2<bool>(false, true))), Struct_1(abs(-2147483647i), _wgslsmith_f_op_f32(max(367f, arg_2.c))), global1.x, Struct_1(func_3(4294967295u, false, global0[_wgslsmith_index_u32(13605u, 15u)], vec4<bool>(false, false, false, true)), arg_0.c)) | (~abs(vec4<i32>(global1.x, -7787i, 19532i, global1.x)) | (vec4<i32>(-1i) * -arg_1)));
    let var_1 = global0[_wgslsmith_index_u32(19806u, 15u)];
    var var_2 = true;
    var var_3 = _wgslsmith_f_op_f32(sign(1744f));
    let var_4 = true;
    return select(vec4<bool>(any(vec4<bool>(false, !var_4, false, var_4 && var_4)), var_4, var_4, var_4), vec4<bool>(all(select(select(vec2<bool>(true, false), vec2<bool>(var_4, var_4), var_4), vec2<bool>(var_4, var_4), vec2<bool>(true, true))), var_4, var_4, all(vec4<bool>(true, all(vec2<bool>(false, var_4)), true, false))), var_1.e.b > _wgslsmith_f_op_f32(-809f - 1046f));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = select(-func_1(1917f), min(vec4<i32>(global1.x, -12426i, global1.x, _wgslsmith_mult_i32(-5694i, global1.x)) << (vec4<u32>(1u, abs(40684u), _wgslsmith_sub_u32(u_input.b.x, u_input.b.x), ~47438u) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_sub_i32(u_input.a.x, -4320i), i32(-1i) * -7848i, -6845i, countOneBits(73232i)) & min(-vec4<i32>(global1.x, -2147483647i, 41246i, global1.x), ~vec4<i32>(u_input.a.x, -2177i, global1.x, 5894i))), select(select(vec4<bool>(true, true, true, true), func_2(Struct_2(29602i, vec2<u32>(u_input.b.x, u_input.b.x), 1564f), vec4<i32>(20232i, 0i, global1.x, global1.x), Struct_2(-2147483647i, vec2<u32>(4294967295u, 61882u), 188f)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(false, u_input.b.x > 0u, false, true), any(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true)))), !select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), func_2(Struct_2(global1.x, u_input.b.xx, 738f), vec4<i32>(u_input.a.x, u_input.a.x, global1.x, -13858i), Struct_2(51944i, vec2<u32>(u_input.b.x, u_input.b.x), -1009f)))));
    global0 = array<Struct_3, 15>();
    global1 = func_4(u_input.b.x, Struct_1(-1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1049f - -2423f))))), _wgslsmith_dot_vec2_i32(vec2<i32>(-10248i, -52689i | global1.x), select(~u_input.a, -(global1.yw ^ u_input.a), all(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true))))), Struct_1(func_1(-486f).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(673f)))));
    global0 = array<Struct_3, 15>();
    let var_0 = global0[_wgslsmith_index_u32(4294967295u, 15u)];
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.e.b, var_0.e.b, -308f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.e.b, 306f, 1743f) - vec3<f32>(var_0.e.b, 1669f, var_0.e.b))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.e.b, 1019f, 1584f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -325f), 304f, 940f)))));
}

