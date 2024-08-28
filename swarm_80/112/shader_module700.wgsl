struct Struct_1 {
    a: f32,
    b: u32,
    c: vec2<i32>,
    d: bool,
}

struct Struct_2 {
    a: i32,
    b: vec4<f32>,
    c: i32,
    d: vec3<u32>,
    e: vec2<i32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
    c: vec2<u32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct Struct_5 {
    a: f32,
    b: f32,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 13> = array<bool, 13>(true, false, false, true, true, false, false, true, true, true, true, false, true);

var<private> global1: bool = true;

var<private> global2: vec3<bool>;

var<private> global3: array<vec4<bool>, 23> = array<vec4<bool>, 23>(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true));

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    global1 = true;
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x)) + 108f), 0u, (_wgslsmith_mod_vec2_i32(u_input.c & arg_0.e, vec2<i32>(u_input.d, 7576i)) ^ (_wgslsmith_mod_vec2_i32(arg_0.e, arg_0.e) >> (~vec2<u32>(arg_0.d.x, 0u) % vec2<u32>(32u)))) | (~(u_input.c >> (vec2<u32>(arg_0.d.x, 440u) % vec2<u32>(32u))) << (firstLeadingBit(arg_0.d.xx) % vec2<u32>(32u))), !select(true, all(global3[_wgslsmith_index_u32(~1u, 23u)]), !global2.x));
}

fn func_1(arg_0: vec3<f32>, arg_1: bool, arg_2: Struct_2) -> vec2<u32> {
    global0 = array<bool, 13>();
    global0 = array<bool, 13>();
    let var_0 = all(!(!vec2<bool>(select(arg_1, false, global0[_wgslsmith_index_u32(u_input.a.x, 13u)]), 0i == arg_2.c)));
    var var_1 = func_2(Struct_2(-2147483647i, arg_2.b, u_input.d, u_input.a, -(~(-arg_2.e))));
    let var_2 = ~4294967295u << ((var_1.b << (u_input.a.x % 32u)) % 32u);
    return arg_2.d.yz;
}

fn func_3(arg_0: vec4<bool>, arg_1: i32, arg_2: bool, arg_3: Struct_2) -> vec3<u32> {
    let var_0 = Struct_5(1161f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_3.b.x - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_3.b.x)))))), Struct_3(vec2<u32>(u_input.a.x, u_input.a.x), arg_3, vec2<u32>(min(arg_3.d.x, ~arg_3.d.x), arg_3.d.x)));
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(1235f, 539f) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_0.c.b.b.x), -342f) + _wgslsmith_f_op_vec2_f32(-arg_3.b.wz)), _wgslsmith_f_op_vec2_f32(max(arg_3.b.zw, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1220f, var_0.a) - arg_3.b.yx))))));
    var var_2 = Struct_3(vec2<u32>(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(160372u, arg_3.d.x, arg_3.d.x, 1u)), min(~vec4<u32>(u_input.a.x, 36466u, arg_3.d.x, var_0.c.c.x), abs(vec4<u32>(41694u, 0u, 1u, arg_3.d.x)))), ~(~select(u_input.a.x, arg_3.d.x, true))), Struct_2(-27084i, var_0.c.b.b, arg_1, ~(~firstTrailingBit(var_0.c.b.d)), -reverseBits(_wgslsmith_sub_vec2_i32(u_input.c, vec2<i32>(arg_1, arg_1)))), ~arg_3.d.xz);
    global3 = array<vec4<bool>, 23>();
    let var_3 = arg_1 <= _wgslsmith_div_i32(abs(var_2.b.c), -5759i);
    return vec3<u32>(28434u, arg_3.d.x, 41887u);
}

fn func_4(arg_0: Struct_4, arg_1: Struct_3, arg_2: Struct_2, arg_3: Struct_4) -> Struct_3 {
    global2 = vec3<bool>(true, false, any(!(!select(vec3<bool>(true, global2.x, global0[_wgslsmith_index_u32(4294967295u, 13u)]), vec3<bool>(global0[_wgslsmith_index_u32(26122u, 13u)], true, true), global0[_wgslsmith_index_u32(0u, 13u)]))));
    global3 = array<vec4<bool>, 23>();
    global3 = array<vec4<bool>, 23>();
    global1 = true;
    global2 = select(vec3<bool>(true, global2.x, select(!func_2(Struct_2(-5985i, arg_1.b.b, 10755i, vec3<u32>(0u, 15253u, arg_1.a.x), arg_3.a)).d, true, func_2(arg_1.b).b < arg_2.d.x)), !vec3<bool>(true, all(select(vec3<bool>(global0[_wgslsmith_index_u32(arg_1.b.d.x, 13u)], global2.x, global2.x), vec3<bool>(false, false, false), vec3<bool>(false, false, global2.x))), false), vec3<bool>(all(!vec2<bool>(global0[_wgslsmith_index_u32(arg_2.d.x, 13u)], false)), true, any(vec3<bool>(!global2.x, true, true))));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 13>();
    global2 = select(!(!vec3<bool>(any(vec2<bool>(false, false)), true, true)), !vec3<bool>(true, global2.x, all(global2.yy)), vec3<bool>(true, any(select(vec2<bool>(false, global2.x), global2.zz, true)), !(_wgslsmith_mod_u32(u_input.a.x, 4294967295u) < _wgslsmith_div_u32(u_input.a.x, u_input.a.x))));
    var var_0 = func_4(Struct_4(~_wgslsmith_div_vec2_i32(vec2<i32>(u_input.d, u_input.d) >> (vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u)), u_input.c), max(vec3<i32>(_wgslsmith_mod_i32(u_input.c.x, 9078i), i32(-1i) * -16839i, _wgslsmith_clamp_i32(-13505i, 1i, 0i)), -countOneBits(vec3<i32>(2147483647i, u_input.c.x, u_input.b)))), Struct_3(func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(383f, 274f, 168f)))), false, Struct_2(u_input.c.x, _wgslsmith_div_vec4_f32(vec4<f32>(-351f, -163f, -890f, -1078f), vec4<f32>(-132f, 966f, -2039f, -1119f)), _wgslsmith_mod_i32(46759i, u_input.b), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), firstTrailingBit(u_input.c))), Struct_2(u_input.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-113f, 2176f, -270f, 1076f), vec4<f32>(-1000f, -1883f, -1083f, 388f), global0[_wgslsmith_index_u32(84402u, 13u)])) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1322f, -1824f, 269f, -1058f))), u_input.d, func_3(select(global3[_wgslsmith_index_u32(u_input.a.x, 23u)], vec4<bool>(global2.x, false, global0[_wgslsmith_index_u32(u_input.a.x, 13u)], global0[_wgslsmith_index_u32(u_input.a.x, 13u)]), true), -u_input.c.x, u_input.c.x <= u_input.d, Struct_2(0i, vec4<f32>(-283f, 423f, -2036f, -569f), u_input.c.x, u_input.a, u_input.c)), min(select(u_input.c, u_input.c, true), -vec2<i32>(-18564i, -2147483647i))), reverseBits(u_input.a.xz)), Struct_2(countOneBits(_wgslsmith_mod_i32(~(-2147483647i), max(-1i, -2147483647i))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -239f), -179f, _wgslsmith_f_op_f32(step(-520f, -157f)), _wgslsmith_f_op_f32(trunc(-150f))), 0i, _wgslsmith_div_vec3_u32(u_input.a, u_input.a), abs(abs(vec2<i32>(-19583i, u_input.c.x)))), Struct_4(u_input.c, ~(-vec3<i32>(-11552i, 0i, u_input.c.x)) << (vec3<u32>(_wgslsmith_add_u32(u_input.a.x, 4294967295u), ~1u, ~4294967295u) % vec3<u32>(32u))));
    global0 = array<bool, 13>();
    global3 = array<vec4<bool>, 23>();
    var var_1 = var_0.b;
    global2 = !vec3<bool>(global2.x, true, any(global3[_wgslsmith_index_u32(1u, 23u)]));
    let var_2 = -1175f;
    var_1 = var_0.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(var_0.b.b.x, _wgslsmith_f_op_f32(-var_2)), var_2)), _wgslsmith_f_op_f32(-var_2), 0u, -var_0.b.e.x);
}

