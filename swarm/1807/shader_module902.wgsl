struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: vec4<bool>,
    d: i32,
}

struct Struct_2 {
    a: u32,
    b: vec2<f32>,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
    c: vec4<i32>,
    d: Struct_1,
}

struct Struct_4 {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: vec2<f32>,
}

struct Struct_5 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
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

var<private> global0: bool;

var<private> global1: array<Struct_1, 22>;

var<private> global2: array<u32, 6> = array<u32, 6>(13868u, 4294967295u, 14291u, 51622u, 15251u, 853u);

var<private> global3: array<f32, 14>;

var<private> global4: array<f32, 3> = array<f32, 3>(1015f, -1274f, -1365f);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_4) -> vec3<f32> {
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1304f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.d.x) * _wgslsmith_div_f32(global3[_wgslsmith_index_u32(u_input.a.x, 14u)], 1934f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(arg_1.d.x, global3[_wgslsmith_index_u32(u_input.a.x, 14u)])), _wgslsmith_div_f32(731f, global3[_wgslsmith_index_u32(13488u, 14u)])))))));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<i32>) -> Struct_2 {
    global3 = array<f32, 14>();
    global0 = true;
    global3 = array<f32, 14>();
    global1 = array<Struct_1, 22>();
    var var_0 = Struct_2(~u_input.a.x, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -629f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1000f - _wgslsmith_div_f32(418f, -141f))))), ~_wgslsmith_mod_u32(firstTrailingBit(1188u), u_input.a.x), Struct_1(_wgslsmith_f_op_vec3_f32(arg_0 - vec3<f32>(_wgslsmith_f_op_f32(max(arg_0.x, global4[_wgslsmith_index_u32(1u, 3u)])), -1099f, _wgslsmith_f_op_f32(min(global3[_wgslsmith_index_u32(6860u, 14u)], -1086f)))), global3[_wgslsmith_index_u32(_wgslsmith_div_u32(37838u, _wgslsmith_add_u32(u_input.a.x, _wgslsmith_add_u32(8485u, global2[_wgslsmith_index_u32(u_input.a.x, 6u)]))), 14u)], vec4<bool>(select(true, false, all(vec3<bool>(false, false, true))), all(vec3<bool>(true, true, true)), true, true), _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(arg_1, vec2<i32>(arg_1.x, -1i)), ~arg_1 >> (_wgslsmith_sub_vec2_u32(u_input.a.zw, u_input.a.yw) % vec2<u32>(32u)))));
    return Struct_2(_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(~(~u_input.a.x), 6u)], _wgslsmith_mult_u32(firstTrailingBit(~global2[_wgslsmith_index_u32(21142u, 6u)]), var_0.a)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(var_0.d.a.xx)), var_0.b, true)), 33590u, Struct_1(_wgslsmith_f_op_vec3_f32(func_3(select(!var_0.d.c.yx, var_0.d.c.xw, all(var_0.d.c)), Struct_4(max(vec4<i32>(1i, var_0.d.d, 0i, var_0.d.d), vec4<i32>(2147483647i, -19235i, -4046i, 15760i)), _wgslsmith_sub_u32(0u, var_0.a), _wgslsmith_clamp_i32(2147483647i, 14100i, var_0.d.d), _wgslsmith_f_op_vec2_f32(vec2<f32>(338f, arg_0.x) * arg_0.zy)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-636f, -382f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(min(-2338f, 1202f)))), select(var_0.d.c, vec4<bool>(!var_0.d.c.x, select(true, var_0.d.c.x, var_0.d.c.x), !var_0.d.c.x, all(vec3<bool>(var_0.d.c.x, var_0.d.c.x, false))), select(vec4<bool>(var_0.d.c.x, true, true, true), var_0.d.c, select(vec4<bool>(true, false, var_0.d.c.x, var_0.d.c.x), vec4<bool>(var_0.d.c.x, true, false, var_0.d.c.x), var_0.d.c.x))), ~(-29140i)));
}

fn func_1(arg_0: Struct_1) -> vec4<i32> {
    let var_0 = func_2(_wgslsmith_f_op_vec3_f32(select(arg_0.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.a)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-355f, -691f, global4[_wgslsmith_index_u32(4294967295u, 3u)])) * vec3<f32>(global3[_wgslsmith_index_u32(4294967295u, 14u)], 700f, arg_0.b))), all(!vec4<bool>(true, arg_0.c.x, arg_0.c.x, arg_0.c.x)) || (_wgslsmith_f_op_f32(trunc(arg_0.a.x)) >= _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.a.x, 14u)] - global4[_wgslsmith_index_u32(1u, 3u)])))), abs(vec2<i32>(firstTrailingBit(9157i) | 0i, -(~3058i))));
    var var_1 = func_2(arg_0.a, vec2<i32>(1i, 1i));
    var var_2 = _wgslsmith_div_vec2_i32(~vec2<i32>(52519i, -_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 2147483647i, arg_0.d, 36521i), vec4<i32>(var_1.d.d, arg_0.d, var_1.d.d, 1i))), _wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(13383i, var_0.d.d), firstLeadingBit(vec2<i32>(-29357i, var_0.d.d))), _wgslsmith_sub_vec2_i32(-vec2<i32>(arg_0.d, -50456i), _wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, arg_0.d), vec2<i32>(var_1.d.d, var_1.d.d), vec2<i32>(-35167i, arg_0.d)))), abs(~vec2<i32>(-1i, 1i)) >> (select(u_input.a.zz, ~u_input.a.zx, any(vec3<bool>(var_0.d.c.x, false, var_0.d.c.x))) % vec2<u32>(32u))));
    var var_3 = func_2(var_0.d.a, vec2<i32>(_wgslsmith_div_i32(~3099i, var_0.d.d), _wgslsmith_sub_i32(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, -14509i, 0i), vec3<i32>(-1i, -1i, var_2.x))), _wgslsmith_sub_i32(func_2(arg_0.a, vec2<i32>(-2147483647i, -1i)).d.d, var_2.x | 61375i)))).d;
    var_1 = Struct_2(~(~var_0.a), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global3[_wgslsmith_index_u32(4294967295u, 14u)], 590f) * _wgslsmith_f_op_vec2_f32(abs(var_0.d.a.yx))), vec2<f32>(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 6u)], 14u)] * 979f), _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(1u, 3u)] - -329f))) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(arg_0.a.zx - var_0.d.a.zy), var_1.b))), 27284u, Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(121f, 1021f, global4[_wgslsmith_index_u32(1u, 3u)]))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global4[_wgslsmith_index_u32(8004u, 3u)], 810f, 1773f))) * _wgslsmith_f_op_vec3_f32(func_3(var_1.d.c.yy, Struct_4(vec4<i32>(1i, -38316i, arg_0.d, arg_0.d), var_0.c, var_1.d.d, vec2<f32>(global4[_wgslsmith_index_u32(21810u, 3u)], 826f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(898f - var_1.b.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0.b, -740f)) + -206f)), vec4<bool>(any(!var_3.c), var_0.d.c.x, !(!arg_0.c.x), false), i32(-1i) * -(i32(-1i) * -1i)));
    return _wgslsmith_div_vec4_i32(-vec4<i32>(var_3.d, var_2.x, _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(-22172i, 0i, var_0.d.d)), -vec3<i32>(var_2.x, -1i, -2147483647i)), countOneBits(25640i)), _wgslsmith_sub_vec4_i32(firstLeadingBit(-vec4<i32>(var_1.d.d, -74539i, var_3.d, var_0.d.d)), _wgslsmith_add_vec4_i32(vec4<i32>(min(0i, var_2.x), _wgslsmith_dot_vec3_i32(vec3<i32>(1529i, arg_0.d, var_0.d.d), vec3<i32>(var_3.d, var_2.x, -32595i)), firstTrailingBit(var_1.d.d), 40694i), ~(-vec4<i32>(var_0.d.d, -36754i, 0i, 33448i)))));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec4<i32>) -> u32 {
    var var_0 = Struct_4(arg_1, firstTrailingBit(u_input.a.x), i32(-1i) * -54647i, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(40300u, 6u)], 14u)] - 167f), _wgslsmith_f_op_f32(min(-988f, 222f))), arg_0, any(vec4<bool>(true, true, true, true)))), vec2<f32>(global4[_wgslsmith_index_u32(u_input.a.x, 3u)], _wgslsmith_f_op_f32(644f * -1430f))));
    global1 = array<Struct_1, 22>();
    let var_1 = ~_wgslsmith_mult_vec4_i32(-firstTrailingBit(var_0.a), -vec4<i32>(arg_1.x, var_0.a.x ^ arg_1.x, var_0.a.x, _wgslsmith_div_i32(19914i, arg_1.x)));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1036f, -529f, -1051f, 863f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.d.x, global3[_wgslsmith_index_u32(u_input.a.x, 14u)], -966f, 155f), vec4<f32>(global4[_wgslsmith_index_u32(u_input.a.x, 3u)], arg_0.x, 1841f, -924f)) * vec4<f32>(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 6u)], 14u)], var_0.d.x, global3[_wgslsmith_index_u32(var_0.b, 14u)], 127f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(230f, global4[_wgslsmith_index_u32(var_0.b, 3u)], arg_0.x, global4[_wgslsmith_index_u32(0u, 3u)])) - _wgslsmith_div_vec4_f32(vec4<f32>(-620f, -382f, -1764f, 1093f), vec4<f32>(global3[_wgslsmith_index_u32(107967u, 14u)], global4[_wgslsmith_index_u32(0u, 3u)], var_0.d.x, global4[_wgslsmith_index_u32(0u, 3u)]))))));
    global0 = true;
    return global2[_wgslsmith_index_u32(u_input.a.x, 6u)];
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(17924u, 18282u), 6u)] << (select(_wgslsmith_div_u32(u_input.a.x, 0u), u_input.a.x, true) % 32u), u_input.a.x, firstTrailingBit(firstLeadingBit(~4294967295u))) <= func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(632f, -1522f) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(global3[_wgslsmith_index_u32(43857u, 14u)], 903f) * vec2<f32>(global4[_wgslsmith_index_u32(u_input.a.x, 3u)], global3[_wgslsmith_index_u32(u_input.a.x, 14u)]))))), ~func_1(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(firstLeadingBit(14386u), 6u)], 22u)]));
    var var_0 = -1i;
    var var_1 = Struct_3(Struct_2(0u, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, _wgslsmith_f_op_f32(select(-535f, 1128f, true)))), ~firstLeadingBit(global2[_wgslsmith_index_u32(u_input.a.x, 6u)]) | 23887u, global1[_wgslsmith_index_u32(u_input.a.x, 22u)]), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(0u, 14u)], -988f, 1587f))))), ~select(-(vec4<i32>(-16765i, -2147483647i, -11404i, 1i) >> (u_input.a % vec4<u32>(32u))), vec4<i32>(24347i, -2147483647i, -18091i, -14655i) << (firstTrailingBit(u_input.a) % vec4<u32>(32u)), true), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global3[_wgslsmith_index_u32(u_input.a.x, 14u)], 1328f, 414f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(700f, 172f, global4[_wgslsmith_index_u32(16648u, 3u)]))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1855f, global3[_wgslsmith_index_u32(40633u, 14u)], global4[_wgslsmith_index_u32(35976u, 3u)])) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(842f, -1882f, global3[_wgslsmith_index_u32(48085u, 14u)])))), global4[_wgslsmith_index_u32(~func_4(vec2<f32>(global3[_wgslsmith_index_u32(8718u, 14u)], global3[_wgslsmith_index_u32(u_input.a.x, 14u)]), -vec4<i32>(-2147483647i, -2147483647i, 2147483647i, -5638i)), 3u)], vec4<bool>(true, true, true, true), _wgslsmith_clamp_i32(-1i, 40078i, -2147483647i)));
    var var_2 = vec4<u32>(1u, _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(min(u_input.a.yy, _wgslsmith_div_vec2_u32(vec2<u32>(99758u, 4294967295u), u_input.a.wx)), ~u_input.a.zx), _wgslsmith_div_u32(~4294967295u, 4294967295u)), reverseBits(reverseBits(4294967295u)) >> (0u % 32u), _wgslsmith_mult_u32(0u, u_input.a.x));
    global1 = array<Struct_1, 22>();
    let var_3 = vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(abs(u_input.a), min(vec4<u32>(u_input.a.x, var_1.a.a, var_1.a.a, 26952u), vec4<u32>(u_input.a.x, var_2.x, 1u, global2[_wgslsmith_index_u32(1u, 6u)]))), _wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(0u, 8699u, 115955u, u_input.a.x), vec4<u32>(var_2.x, u_input.a.x, 5948u, var_1.a.a)), max(u_input.a, u_input.a))), vec4<u32>(34952u, ~var_2.x, ~(~u_input.a.x), func_2(_wgslsmith_f_op_vec3_f32(func_3(vec2<bool>(var_1.a.d.c.x, true), Struct_4(vec4<i32>(var_1.d.d, var_1.a.d.d, var_1.d.d, -2147483647i), 10874u, 67731i, vec2<f32>(global4[_wgslsmith_index_u32(0u, 3u)], 1239f)))), -vec2<i32>(1i, var_1.c.x)).c)), ~func_2(var_1.d.a, vec2<i32>(_wgslsmith_clamp_i32(2147483647i, var_1.d.d, var_1.a.d.d), -24452i)).c, u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(global3[_wgslsmith_index_u32(func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(1u, 14u)], global3[_wgslsmith_index_u32(23021u, 14u)], 436f)), select(_wgslsmith_add_vec2_i32(var_1.c.ww, vec2<i32>(var_1.d.d, -35869i)), -var_1.c.wx, true)).c << (0u % 32u), 14u)]);
}

