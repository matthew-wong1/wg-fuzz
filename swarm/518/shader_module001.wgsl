struct Struct_1 {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec4<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec3<f32>, 3>;

var<private> global2: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(vec4<i32>(-7694i, 1i, 13232i, i32(-2147483648)), vec4<i32>(i32(-2147483648), 1i, -1i, 2147483647i), vec2<u32>(12780u, 1u), 2147483647i), Struct_1(vec4<i32>(41057i, 2147483647i, 2147483647i, 2147483647i), vec4<i32>(-67733i, 15663i, 2147483647i, 2147483647i), vec2<u32>(36252u, 35647u), 0i), Struct_1(vec4<i32>(-6278i, 21648i, 0i, 1i), vec4<i32>(0i, 1i, 0i, -7776i), vec2<u32>(0u, 12678u), i32(-2147483648)));

var<private> global3: array<Struct_1, 13>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: u32, arg_1: vec4<bool>, arg_2: Struct_1) -> f32 {
    var var_0 = global0.b.yy;
    global1 = array<vec3<f32>, 3>();
    let var_1 = global2[_wgslsmith_index_u32(abs(arg_0), 3u)];
    global0 = global3[_wgslsmith_index_u32(firstTrailingBit(countOneBits(_wgslsmith_div_u32(u_input.a.x, 1u))) & 4294967295u, 13u)];
    let var_2 = vec4<u32>(arg_0, 0u, select(global0.c.x, ~(arg_0 >> (countOneBits(u_input.a.x) % 32u)), false), var_1.c.x);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(427f)) * _wgslsmith_div_f32(482f, 1831f))))) * -900f);
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: i32) -> f32 {
    var var_0 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(global0.c, _wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.a.zxy, vec3<u32>(4294967295u, global0.c.x, 0u)) >> (1u % 32u), 0u), u_input.a.yx)), 3u)];
    global1 = array<vec3<f32>, 3>();
    var var_1 = vec2<i32>(~arg_2, -2439i);
    var var_2 = true;
    var var_3 = Struct_1(global0.a, var_0.b, abs(global0.c), _wgslsmith_sub_i32(var_1.x, _wgslsmith_div_i32(firstTrailingBit(var_1.x) & _wgslsmith_sub_i32(-2147483647i, -6990i), reverseBits(46043i))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(156f - _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-106f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(u_input.a.x, vec4<bool>(true, true, true, true), global3[_wgslsmith_index_u32(4294967295u, 13u)])) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -631f)))));
}

fn func_4(arg_0: i32, arg_1: vec3<f32>) -> u32 {
    let var_0 = global0.b.zzx;
    return ~min(4294967295u, 40408u);
}

fn func_1() -> vec2<bool> {
    global1 = array<vec3<f32>, 3>();
    let var_0 = global2[_wgslsmith_index_u32(global0.c.x, 3u)];
    let var_1 = ~(~func_4(select(_wgslsmith_add_i32(37798i, global0.d), _wgslsmith_div_i32(var_0.b.x, 1i), true), vec3<f32>(_wgslsmith_div_f32(-1304f, -1125f), -588f, _wgslsmith_f_op_f32(func_2(vec2<i32>(17362i, -2147483647i), Struct_1(vec4<i32>(var_0.b.x, 44706i, 24955i, -36021i), vec4<i32>(global0.d, 21972i, global0.b.x, 1i), u_input.a.xy, var_0.d), global0.a.x)))));
    var var_2 = _wgslsmith_sub_vec4_i32(countOneBits(select(_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.d, 2147483647i, -2147483647i, var_0.a.x), abs(global0.b)), var_0.a, var_0.d == (global0.b.x << (0u % 32u)))), -_wgslsmith_mod_vec4_i32(var_0.a, select(-vec4<i32>(0i, 21567i, global0.b.x, -36625i), vec4<i32>(-21666i, 1i, var_0.d, global0.d) ^ vec4<i32>(var_0.b.x, var_0.b.x, -59762i, -2147483647i), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false)))));
    let var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(2175f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -451f) - -112f), 1326f, all(vec3<bool>(true, false, false)) & true))) * vec2<f32>(_wgslsmith_f_op_f32(func_3(var_1, !select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), false), Struct_1(_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, var_0.d, 0i, var_2.x), vec4<i32>(2147483647i, global0.b.x, var_0.b.x, 5252i)), -vec4<i32>(var_2.x, 8021i, 1i, global0.b.x), global0.c, min(global0.a.x, -38870i)))), _wgslsmith_f_op_f32(2054f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-782f - 1497f)))));
    return !vec2<bool>(all(vec4<bool>(true, true, true, true)), true);
}

fn func_5(arg_0: vec2<bool>, arg_1: vec4<bool>, arg_2: bool) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(243f)))))));
    let var_1 = Struct_1(-(~(~(~global0.b))), ~global0.a, min(~(~_wgslsmith_mod_vec2_u32(vec2<u32>(global0.c.x, u_input.a.x), vec2<u32>(4294967295u, 11698u))), vec2<u32>(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(global0.c.x, 4294967295u), _wgslsmith_clamp_u32(u_input.a.x, global0.c.x, 4294967295u), 4294967295u), 30538u)), ~global0.a.x);
    var_0 = 310f;
    global0 = global2[_wgslsmith_index_u32(global0.c.x, 3u)];
    global3 = array<Struct_1, 13>();
    return var_1;
}

fn func_6(arg_0: Struct_1, arg_1: f32, arg_2: bool, arg_3: Struct_1) -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -788f));
    let var_1 = vec4<f32>(var_0, _wgslsmith_f_op_f32(max(-805f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(10102u, vec4<bool>(arg_2, arg_2, arg_2, false), arg_0))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -553f) - _wgslsmith_f_op_f32(1298f + _wgslsmith_f_op_f32(arg_1 - 1810f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)) + var_0)));
    global1 = array<vec3<f32>, 3>();
    let var_2 = -2147483647i;
    var var_3 = func_5(vec2<bool>(select(!(var_2 < arg_0.b.x), true, arg_2), all(vec2<bool>(any(vec4<bool>(true, arg_2, arg_2, false)), true))), select(select(select(!vec4<bool>(arg_2, arg_2, arg_2, arg_2), vec4<bool>(arg_2, arg_2, false, true), true != arg_2), select(!vec4<bool>(arg_2, false, true, arg_2), !vec4<bool>(arg_2, false, arg_2, false), vec4<bool>(arg_2, false, arg_2, false)), vec4<bool>(!arg_2, any(vec2<bool>(arg_2, arg_2)), arg_2 || true, true)), !select(!vec4<bool>(false, false, false, arg_2), !vec4<bool>(true, arg_2, arg_2, false), !vec4<bool>(arg_2, arg_2, arg_2, false)), false), true);
    return StorageBuffer(var_2, countOneBits(1u), -select(-61265i, -29806i, _wgslsmith_f_op_f32(-var_0) == _wgslsmith_f_op_f32(var_0 - -260f)), vec4<f32>(1146f, 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0, -821f) - -1903f)), _wgslsmith_f_op_f32(-655f + _wgslsmith_f_op_f32(791f + arg_1))), ~1u);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_6(func_5(select(vec2<bool>(global0.a.x <= 2147483647i, true), func_1(), !(42461u >= global0.c.x)), select(vec4<bool>(true, true, u_input.a.x <= u_input.a.x, true), vec4<bool>(any(vec3<bool>(true, true, true)), func_1().x, any(vec2<bool>(false, true)), all(vec4<bool>(false, true, false, true))), vec4<bool>(true, true, true, true)), select(~u_input.a.x, _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(1u, 4294967295u, 4294967295u, u_input.a.x)), true) != ~(~32494u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(sign(657f)))) - -1156f), true, func_5(!select(vec2<bool>(true, true), func_1(), vec2<bool>(false, true)), !select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true)), all(select(vec3<bool>(false, false, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), false), all(vec3<bool>(false, true, true))))));
}

