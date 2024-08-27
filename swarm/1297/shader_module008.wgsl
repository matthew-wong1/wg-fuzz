struct Struct_1 {
    a: u32,
    b: bool,
    c: vec4<i32>,
    d: i32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: bool,
    d: bool,
}

struct Struct_4 {
    a: bool,
    b: u32,
    c: bool,
    d: Struct_1,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 16>;

var<private> global1: vec2<i32> = vec2<i32>(-1i, 15536i);

var<private> global2: array<f32, 23>;

var<private> global3: array<vec3<i32>, 28>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32) -> vec3<u32> {
    let var_0 = Struct_4(true, 0u, true & (_wgslsmith_f_op_f32(step(arg_0, 552f)) <= -1495f), Struct_1(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.a, 73593u, 1u, 1u), _wgslsmith_div_vec4_u32(vec4<u32>(1u, u_input.a, u_input.a, 4294967295u), vec4<u32>(u_input.a, u_input.a, 0u, 62592u)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(48524u, 1u, 4294967295u, u_input.a))), firstTrailingBit(vec4<u32>(4294967295u, 0u, 62382u, 4294967295u) << (vec4<u32>(0u, 0u, u_input.a, 65718u) % vec4<u32>(32u)))), true, vec4<i32>(44207i, global1.x, -global1.x, -firstTrailingBit(global1.x)), -1i), Struct_3(Struct_1(70211u, all(vec2<bool>(true, true)), vec4<i32>(_wgslsmith_add_i32(global1.x, global1.x), global1.x, 34561i << (u_input.a % 32u), 13329i), _wgslsmith_sub_i32(-50396i, -global1.x)), -1130f, all(vec4<bool>(true, true, true, true)), true));
    return vec3<u32>(_wgslsmith_sub_u32((32145u & var_0.e.a.a) ^ _wgslsmith_sub_u32(104561u, _wgslsmith_mod_u32(var_0.b, var_0.e.a.a)), _wgslsmith_mod_u32(abs(_wgslsmith_div_u32(0u, u_input.a)), u_input.a)), 0u, ~_wgslsmith_add_u32(1u, 46165u & _wgslsmith_div_u32(var_0.e.a.a, var_0.b)));
}

fn func_2(arg_0: vec2<f32>, arg_1: u32) -> i32 {
    let var_0 = -global1.x;
    let var_1 = Struct_3(Struct_1(select(arg_1, ~2329u, false), false, abs(vec4<i32>(_wgslsmith_sub_i32(var_0, global1.x), ~var_0, ~var_0, var_0 >> (u_input.a % 32u))), var_0), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(4294967295u, 23u)], _wgslsmith_f_op_f32(sign(-1347f))))), -244f)), _wgslsmith_dot_vec2_u32(vec2<u32>(firstLeadingBit(0u), u_input.a), vec2<u32>(1u, 51561u)) > 38516u, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1318f, _wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(u_input.a, 23u)])))) < -1049f);
    let var_2 = _wgslsmith_div_vec3_u32(func_3(1140f), ~func_3(-615f));
    var var_3 = _wgslsmith_div_vec2_i32(-_wgslsmith_mult_vec2_i32(~vec2<i32>(-1i, var_0), select(abs(vec2<i32>(var_0, global1.x)), max(vec2<i32>(global1.x, -2147483647i), vec2<i32>(var_0, var_1.a.d)), !vec2<bool>(false, var_1.a.b))), vec2<i32>(global1.x, -2147483647i));
    var var_4 = var_1.a;
    return -37505i;
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: u32) -> vec3<f32> {
    let var_0 = !vec2<bool>(false, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1148f, global2[_wgslsmith_index_u32(u_input.a, 23u)])) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - -679f)));
    global1 = ~vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(-vec3<i32>(43734i, 1i, arg_0), vec3<i32>(global1.x, -11908i, arg_0) ^ vec3<i32>(-14149i, -2147483647i, -33949i)), -func_2(vec2<f32>(-753f, -733f), 31611u)), global1.x | -1i);
    var var_1 = Struct_4((_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(u_input.a, 23u)], global2[_wgslsmith_index_u32(arg_2, 23u)], arg_1))) > 162f) & false, ~_wgslsmith_add_u32(u_input.a, firstTrailingBit(u_input.a)), !var_0.x, Struct_1(u_input.a, all(vec3<bool>(false, true, arg_2 != 0u)), _wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(arg_0, -11349i, 0i, global1.x), vec4<i32>(1i, arg_0, global1.x, 19115i)), -_wgslsmith_mult_vec4_i32(vec4<i32>(-32862i, arg_0, arg_0, -64212i), vec4<i32>(35471i, 3968i, -1i, global1.x))), global1.x), Struct_3(Struct_1(~17369u, true & !arg_1, vec4<i32>(-1i, countOneBits(arg_0), -8802i, arg_0), arg_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(u_input.a, 23u)], global2[_wgslsmith_index_u32(arg_2, 23u)])))) + _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(arg_2, 23u)])), any(select(!vec3<bool>(var_0.x, true, true), !vec3<bool>(true, false, var_0.x), vec3<bool>(arg_1, false, true))), false));
    var var_2 = Struct_1(var_1.e.a.a, all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(arg_1, true, arg_1, var_0.x), select(vec4<bool>(var_0.x, var_1.c, true, false), vec4<bool>(var_0.x, true, arg_1, var_0.x), var_0.x), true), var_1.e.d)), _wgslsmith_mult_vec4_i32(vec4<i32>(51038i, -4358i, i32(-1i) * -var_1.e.a.c.x, global1.x), var_1.d.c), ~countOneBits(var_1.d.c.x));
    global2 = array<f32, 23>();
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(1u, 23u)] * var_1.e.b)), -440f, 2081f) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global2[_wgslsmith_index_u32(var_1.d.a, 23u)], global2[_wgslsmith_index_u32(arg_2, 23u)], global2[_wgslsmith_index_u32(u_input.a, 23u)])))) + vec3<f32>(_wgslsmith_f_op_f32(floor(var_1.e.b)), 926f, -265f))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<f32, 23>();
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) - _wgslsmith_f_op_vec3_f32(func_1(-3462i, true, u_input.a)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global2[_wgslsmith_index_u32(4294967295u, 23u)], global2[_wgslsmith_index_u32(4294967295u, 23u)], -1734f))), vec3<f32>(global2[_wgslsmith_index_u32(1u, 23u)], -989f, global2[_wgslsmith_index_u32(u_input.a, 23u)]), u_input.a == 9840u)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(602f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1375f))), 406f)));
    global1 = vec2<i32>(_wgslsmith_mult_i32(-(~0i), _wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(1i, 0i)), _wgslsmith_mod_vec2_i32(vec2<i32>(global1.x, -2147483647i), vec2<i32>(-19495i, global1.x)))), ~(-2147483647i)) & _wgslsmith_sub_vec2_i32(-(~(~vec2<i32>(53789i, global1.x))), _wgslsmith_clamp_vec2_i32(~vec2<i32>(1i, 1i), vec2<i32>(countOneBits(0i), max(-23647i, global1.x)), ~(vec2<i32>(global1.x, global1.x) >> (vec2<u32>(94576u, u_input.a) % vec2<u32>(32u)))));
    global3 = array<vec3<i32>, 28>();
    global0 = array<Struct_2, 16>();
    var var_1 = ~_wgslsmith_mod_u32(~u_input.a, _wgslsmith_div_u32(countOneBits(u_input.a), 86809u)) <= max(firstTrailingBit(1u) ^ ~u_input.a, u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(1000f, _wgslsmith_add_u32(28541u, ~(~u_input.a)) ^ firstTrailingBit(_wgslsmith_div_u32(~u_input.a, u_input.a)), global3[_wgslsmith_index_u32(u_input.a, 28u)]);
}

