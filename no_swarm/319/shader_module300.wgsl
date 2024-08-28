struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: u32,
    c: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: vec4<bool>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: i32,
    c: vec4<bool>,
}

struct Struct_5 {
    a: vec2<i32>,
    b: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 17>;

var<private> global1: vec3<i32> = vec3<i32>(70978i, -1i, 1i);

var<private> global2: array<vec2<f32>, 30>;

var<private> global3: i32 = 1i;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_4, arg_2: f32, arg_3: bool) -> i32 {
    return ~global1.x;
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>) -> u32 {
    var var_0 = true;
    var var_1 = true;
    global1 = _wgslsmith_div_vec3_i32(~vec3<i32>(-global1.x, global1.x, _wgslsmith_clamp_i32(global1.x, countOneBits(arg_0.a), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(42388u, arg_1.x, arg_1.x), vec3<u32>(0u, 51814u, 1u)), 17u)])), vec3<i32>(global0[_wgslsmith_index_u32(abs(countOneBits(abs(0u))), 17u)], ~arg_0.d, 1i));
    var var_2 = select(!vec2<bool>(-907f <= arg_0.b.x, !(arg_0.c | arg_0.c)), vec2<bool>(!arg_0.c, true), vec2<bool>(any(select(vec2<bool>(true, true), !vec2<bool>(arg_0.c, true), vec2<bool>(true, true))), arg_0.c));
    var var_3 = select(min(~(-vec3<i32>(-2147483647i, -7434i, arg_0.a)) << (select(_wgslsmith_mod_vec3_u32(arg_1.wzw, arg_1.zyw), vec3<u32>(u_input.a.x, u_input.b, 0u), select(vec3<bool>(var_2.x, arg_0.c, arg_0.c), vec3<bool>(var_2.x, arg_0.c, arg_0.c), vec3<bool>(arg_0.c, var_2.x, arg_0.c))) % vec3<u32>(32u)), vec3<i32>(reverseBits(global0[_wgslsmith_index_u32(arg_1.x, 17u)]), ~arg_0.a, 8574i >> (arg_1.x % 32u)) | _wgslsmith_sub_vec3_i32(vec3<i32>(arg_0.d, global0[_wgslsmith_index_u32(u_input.a.x, 17u)], 5517i) & vec3<i32>(-2147483647i, 1i, global1.x), -vec3<i32>(global0[_wgslsmith_index_u32(1u, 17u)], global0[_wgslsmith_index_u32(26311u, 17u)], 1i))), ~vec3<i32>(_wgslsmith_clamp_i32(select(-9067i, 0i, true), 1i, -14020i), -2147483647i, global0[_wgslsmith_index_u32(0u, 17u)]), any(!vec4<bool>(false, any(vec4<bool>(false, arg_0.c, arg_0.c, false)), true, all(vec3<bool>(false, false, var_2.x)))));
    return 0u;
}

fn func_1(arg_0: Struct_3) -> Struct_3 {
    global1 = min(vec3<i32>(arg_0.b, -1i, arg_0.b), vec3<i32>(_wgslsmith_clamp_i32(-global0[_wgslsmith_index_u32(arg_0.a.b, 17u)], 0i, ~24582i), global1.x, -19230i) & vec3<i32>(_wgslsmith_sub_i32(-50559i, func_2(global1.zx, Struct_4(arg_0.c.yxz, -1i, vec4<bool>(arg_0.c.x, true, true, arg_0.a.a.x)), 1077f, arg_0.a.a.x)), ~global0[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, u_input.b), 17u)], global0[_wgslsmith_index_u32(4294967295u, 17u)]));
    var var_0 = Struct_2(vec3<bool>(arg_0.c.x && true, -2147483647i >= _wgslsmith_dot_vec2_i32(vec2<i32>(global1.x, global1.x), global1.yx), true), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(min(select(vec4<u32>(258u, u_input.a.x, arg_0.a.b, arg_0.a.b), vec4<u32>(arg_0.a.b, 0u, 42169u, 1714u), false), _wgslsmith_add_vec4_u32(vec4<u32>(63271u, arg_0.a.b, 46476u, 0u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.b))), abs(~vec4<u32>(arg_0.a.b, 4294967295u, 1u, u_input.b))), vec4<u32>((arg_0.a.b & 554u) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 30813u, 4294967295u, 0u), vec4<u32>(4294967295u, 9443u, 25164u, 4294967295u)) % 32u), ~(~1u), 0u, 2696u)), _wgslsmith_f_op_f32(arg_0.a.c * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-306f)))));
    return Struct_3(Struct_2(vec3<bool>(!(!arg_0.c.x), true, arg_0.a.a.x), _wgslsmith_sub_u32(12692u, func_3(Struct_1(13991i, vec2<f32>(2129f, -237f), var_0.a.x, arg_0.b), vec4<u32>(u_input.a.x, 0u, var_0.b, 1u) & vec4<u32>(1u, 0u, 37890u, 1u))), _wgslsmith_f_op_f32(104f * _wgslsmith_f_op_f32(round(arg_0.a.c)))), -1i, select(!arg_0.c, !arg_0.c, vec4<bool>((false && arg_0.a.a.x) & true, true, any(vec3<bool>(var_0.a.x, arg_0.a.a.x, false)), true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec3<bool>((global0[_wgslsmith_index_u32(u_input.b | 9742u, 17u)] >= -global1.x) | (_wgslsmith_f_op_f32(-162f + -388f) < _wgslsmith_f_op_f32(ceil(1170f))), any(!select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true))), !select(true, false, true));
    global3 = i32(-1i) * -global0[_wgslsmith_index_u32(min(5416u, 65231u), 17u)];
    global3 = -(~(-42674i));
    let var_1 = func_1(Struct_3(Struct_2(var_0, _wgslsmith_dot_vec3_u32(select(vec3<u32>(u_input.a.x, 0u, 4294967295u), vec3<u32>(u_input.a.x, u_input.a.x, 1u), vec3<bool>(var_0.x, var_0.x, false)), ~vec3<u32>(23617u, u_input.b, 1u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-153f + -839f) + -953f)), -2147483647i, !(!(!vec4<bool>(var_0.x, true, true, true)))));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-623f, -1171f, var_1.a.c)))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.c, var_1.a.c, _wgslsmith_div_f32(-478f, var_1.a.c))));
    let var_3 = func_1(var_1).b;
    global0 = array<i32, 17>();
    var var_4 = ~0i;
    var var_5 = _wgslsmith_dot_vec4_i32(max(firstTrailingBit(_wgslsmith_div_vec4_i32(~vec4<i32>(-2147483647i, -8301i, -2147483647i, 2147483647i), abs(vec4<i32>(1i, global1.x, -87464i, -2147483647i)))), vec4<i32>(countOneBits(var_3), _wgslsmith_dot_vec4_i32(abs(vec4<i32>(global0[_wgslsmith_index_u32(1u, 17u)], global0[_wgslsmith_index_u32(var_1.a.b, 17u)], -2147483647i, global0[_wgslsmith_index_u32(0u, 17u)])), -vec4<i32>(global1.x, global0[_wgslsmith_index_u32(u_input.b, 17u)], var_1.b, var_3)), -1i >> (1u % 32u), global0[_wgslsmith_index_u32(1u, 17u)])), abs(vec4<i32>(var_1.b, min(var_3 ^ var_3, 1i), -1i, _wgslsmith_mult_i32(abs(0i), global1.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_1.a.c - _wgslsmith_f_op_f32(abs(-1213f))), ~(-1i));
}

