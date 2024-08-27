struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: vec2<f32>,
    e: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: i32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 3>;

var<private> global1: u32 = 4294967295u;

var<private> global2: array<f32, 3>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<u32>) -> vec3<bool> {
    global0 = array<Struct_1, 3>();
    let var_0 = -2147483647i;
    global2 = array<f32, 3>();
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -873f);
    var var_2 = Struct_1(-1i, _wgslsmith_div_vec3_i32(arg_0.b, ~arg_0.b), 56899u, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_div_f32(arg_0.d.x, -540f), arg_0.d.x))), arg_0.d)), u_input.d);
    return vec3<bool>(true, true, true);
}

fn func_3() -> vec4<u32> {
    let var_0 = Struct_1(-2147483647i, vec3<i32>(countOneBits(i32(-1i) * -17342i), u_input.c ^ u_input.c, u_input.d), u_input.b.x, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 3u)], global2[_wgslsmith_index_u32(37547u, 3u)])) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-315f, global2[_wgslsmith_index_u32(61204u, 3u)]))))))), u_input.d);
    global1 = ~u_input.a.x;
    global1 = _wgslsmith_mult_u32(var_0.c, ~(~(4294967295u & var_0.c)) ^ 14967u);
    var var_1 = Struct_1(_wgslsmith_div_i32(var_0.a, ~_wgslsmith_mult_i32(i32(-1i) * -42072i, -var_0.e)), -var_0.b, 59957u, _wgslsmith_f_op_vec2_f32(var_0.d + var_0.d), var_0.b.x);
    var var_2 = abs(0u);
    return u_input.b;
}

fn func_2(arg_0: f32, arg_1: vec2<bool>, arg_2: vec3<u32>) -> vec4<bool> {
    global1 = reverseBits(firstLeadingBit(~u_input.e.x));
    let var_0 = func_3();
    global0 = array<Struct_1, 3>();
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -152f);
    let var_2 = global0[_wgslsmith_index_u32(u_input.a.x, 3u)];
    return select(select(!(!select(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, true), vec4<bool>(arg_1.x, false, arg_1.x, false), vec4<bool>(false, true, true, false))), !vec4<bool>(true, arg_1.x, any(vec3<bool>(true, arg_1.x, false)), !arg_1.x), arg_1.x || func_1(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_0.x, 4294967295u), 3u)], ~vec4<u32>(var_2.c, arg_2.x, 32300u, 1u)).x), !vec4<bool>(true, func_1(global0[_wgslsmith_index_u32(1u, 3u)], ~vec4<u32>(4294967295u, 4294967295u, u_input.e.x, var_0.x)).x, true, !func_1(Struct_1(-39709i, vec3<i32>(-1i, 0i, var_2.a), 4294967295u, vec2<f32>(-1980f, global2[_wgslsmith_index_u32(1u, 3u)]), u_input.c), vec4<u32>(var_2.c, 8615u, 28615u, var_2.c)).x), select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, arg_1.x, true, true), false), !select(vec4<bool>(false, false, arg_1.x, arg_1.x), !vec4<bool>(true, arg_1.x, true, true), select(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, false), vec4<bool>(arg_1.x, true, arg_1.x, arg_1.x), vec4<bool>(arg_1.x, true, arg_1.x, arg_1.x))), select(vec4<bool>(arg_1.x, var_2.b.x < var_2.e, all(vec4<bool>(false, false, arg_1.x, arg_1.x)), false), vec4<bool>(true, true, arg_1.x != true, false), !vec4<bool>(true, true, arg_1.x, arg_1.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>((-421f < global2[_wgslsmith_index_u32(select(u_input.b.x, 58204u, false) | (u_input.a.x >> (u_input.b.x % 32u)), 3u)]) & true, true, true);
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(u_input.a.x, _wgslsmith_div_u32(~18388u, countOneBits(u_input.a.x)), ~u_input.e.x)), u_input.b.xwx), 3u)];
    var_0 = vec3<bool>(false, all(select(vec3<bool>(var_0.x, true, true), func_1(global0[_wgslsmith_index_u32(var_1.c, 3u)], u_input.b), false)) & var_0.x, var_0.x);
    global0 = array<Struct_1, 3>();
    var var_2 = true;
    let var_3 = select(select(vec4<bool>(-1552f >= _wgslsmith_f_op_f32(step(883f, var_1.d.x)), all(vec4<bool>(false, true, false, var_0.x)), !var_0.x, !var_0.x), !(!(!vec4<bool>(var_0.x, false, var_0.x, true))), func_2(_wgslsmith_f_op_f32(-816f * _wgslsmith_f_op_f32(-474f - -1086f)), vec2<bool>(true, true), u_input.b.www)), vec4<bool>(var_0.x | var_0.x, !(var_1.a >= min(-2147483647i, -1i)), any(func_2(-516f, func_2(222f, vec2<bool>(true, false), u_input.b.zyz).wx, _wgslsmith_sub_vec3_u32(vec3<u32>(0u, u_input.b.x, var_1.c), u_input.b.wyy))), ~(~var_1.c) < abs(u_input.a.x)), vec4<bool>(func_2(-368f, var_0.xx, vec3<u32>(1u, _wgslsmith_mult_u32(59149u, u_input.b.x), u_input.e.x)).x, true, (_wgslsmith_f_op_f32(-698f + var_1.d.x) <= _wgslsmith_f_op_f32(abs(var_1.d.x))) & any(!vec2<bool>(true, var_0.x)), var_0.x));
    var var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(1118f, -1306f), _wgslsmith_f_op_f32(abs(-471f))))) + vec2<f32>(_wgslsmith_f_op_f32(var_1.d.x + _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(select(1u, var_1.c, false), 3u)] - global2[_wgslsmith_index_u32(func_3().x, 3u)])), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(var_1.d.x))))));
    var var_5 = reverseBits(-countOneBits(max(var_1.e, 53246i)));
    var_2 = !select(true, func_2(var_1.d.x, func_2(2203f, select(vec2<bool>(false, var_0.x), var_0.xy, vec2<bool>(true, false)), reverseBits(u_input.b.yyw)).wx, ~vec3<u32>(32103u, 4294967295u, var_1.c) ^ max(vec3<u32>(1u, 61721u, var_1.c), u_input.b.wxx)).x, !(all(vec4<bool>(var_3.x, false, false, var_3.x)) || false));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.e, _wgslsmith_div_vec4_i32(~vec4<i32>(-36i, min(u_input.d, u_input.d), u_input.d, _wgslsmith_add_i32(-66270i, 14695i)), -_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, var_1.e, 48971i, u_input.c), vec4<i32>(51690i, 10195i, u_input.c, 1i))));
}

