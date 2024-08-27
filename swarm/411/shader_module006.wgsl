struct Struct_1 {
    a: f32,
    b: i32,
    c: f32,
    d: vec4<bool>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 11>;

var<private> global1: array<f32, 28> = array<f32, 28>(1284f, -538f, 2232f, 1882f, -690f, 1254f, -577f, -1000f, -442f, -714f, -392f, 1458f, -753f, -1298f, 1000f, 542f, 1717f, -1085f, -1495f, -116f, -2166f, 975f, 479f, -119f, -1000f, -1861f, 271f, -1238f);

var<private> global2: array<u32, 1>;

var<private> global3: array<u32, 29> = array<u32, 29>(20156u, 4294967295u, 4294967295u, 61227u, 1u, 16447u, 6203u, 844u, 0u, 1u, 4294967295u, 67512u, 37799u, 0u, 25262u, 27816u, 4294967295u, 66478u, 64143u, 0u, 4294967295u, 55650u, 1u, 0u, 0u, 1u, 4294967295u, 49362u, 4294967295u);

var<private> global4: u32;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1) -> f32 {
    global3 = array<u32, 29>();
    let var_0 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(2223f))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(19121u, 1u)], 28u)]), _wgslsmith_f_op_f32(arg_0.x + 1000f)))), arg_1.c)), u_input.a.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-369f - 1000f))), vec4<bool>(any(vec2<bool>(false, true)), true, any(select(!arg_1.d, !arg_1.d, !vec4<bool>(arg_1.d.x, false, arg_1.d.x, arg_1.d.x))), any(!arg_1.d.wzx)), arg_1.e);
    global2 = array<u32, 1>();
    global0 = array<vec2<f32>, 11>();
    let var_1 = false;
    return _wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1.c), -100f))));
}

fn func_2() -> Struct_1 {
    var var_0 = u_input.a.x;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -580f), ~_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_add_i32(0i, -26229i), min(u_input.a.x, -3776i), 2147483647i), ~vec3<i32>(0i, 1i, 1i)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(global0[_wgslsmith_index_u32(1u, 11u)], Struct_1(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b.x, 1u)], 28u)], ~532i, -451f, vec4<bool>(true, true, true, true), select(vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, 21451u), vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(54084u, 29u)], 29u)], global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(10961u, 29u)], 1u)], u_input.b.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b.x, 1u)], 1u)]), vec4<bool>(false, false, false, true))))))), vec4<bool>(false, select(false, u_input.b.x <= firstTrailingBit(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(81774u, 1u)], 29u)], 1u)]), true), !(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b.x, 28u)]) != _wgslsmith_div_f32(1560f, -170f)), any(select(vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(true, true), true), true))), vec4<u32>(_wgslsmith_mod_u32(36939u, ~_wgslsmith_add_u32(global2[_wgslsmith_index_u32(58381u, 1u)], 27673u)), _wgslsmith_add_u32(abs(global3[_wgslsmith_index_u32(4294967295u, 29u)] ^ global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(65310u, 29u)], 1u)]), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 29u)], 29u)]), vec4<u32>(global3[_wgslsmith_index_u32(5854u, 29u)], 4294967295u, u_input.b.x, 110132u)), ~vec4<u32>(39395u, 25328u, global3[_wgslsmith_index_u32(u_input.b.x, 29u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b.x, 1u)], 1u)]))), 15348u, ~global3[_wgslsmith_index_u32(~u_input.b.x, 29u)]));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~34879u, 29u)], 28u)])));
    var var_3 = var_1;
    global0 = array<vec2<f32>, 11>();
    return Struct_1(-229f, -(~_wgslsmith_sub_i32(abs(-13408i), select(-2147483647i, u_input.a.x, false))), _wgslsmith_f_op_f32(f32(-1f) * -501f), var_1.d, var_1.e);
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: Struct_1) -> u32 {
    let var_0 = func_2();
    let var_1 = var_0;
    var var_2 = arg_2;
    global2 = array<u32, 1>();
    let var_3 = func_2();
    return _wgslsmith_add_u32(4294967295u, 0u);
}

fn func_4(arg_0: vec3<u32>, arg_1: vec4<u32>) -> Struct_1 {
    var var_0 = all(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true));
    var_0 = false;
    let var_1 = _wgslsmith_div_vec3_u32(abs(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 21493u, global3[_wgslsmith_index_u32(36284u, 29u)]), vec3<u32>(arg_0.x, 0u, 4294967295u))), vec3<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(global2[_wgslsmith_index_u32(u_input.b.x, 1u)], u_input.b.x), ~arg_1.zx), abs(_wgslsmith_mult_u32(0u, arg_1.x)), 29282u)) << (_wgslsmith_clamp_vec3_u32(max(~min(arg_1.zyx, arg_0), vec3<u32>(arg_0.x, abs(global2[_wgslsmith_index_u32(45114u, 1u)]), global3[_wgslsmith_index_u32(0u, 29u)])), abs(arg_1.yzx), ~arg_0) % vec3<u32>(32u));
    var var_2 = _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(abs(_wgslsmith_div_u32(_wgslsmith_mod_u32(~26570u, u_input.b.x), var_1.x)), 28u)] + _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~4294967295u, func_1(1935f, _wgslsmith_sub_u32(var_1.x, 4294967295u), func_2())), 28u)]));
    global3 = array<u32, 29>();
    return Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1662f * _wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(var_1.x, 28u)], global1[_wgslsmith_index_u32(1u, 28u)]))))), func_2().c), abs(_wgslsmith_div_i32(_wgslsmith_sub_i32(u_input.a.x, max(u_input.a.x, u_input.a.x)), 2147483647i)), global1[_wgslsmith_index_u32(arg_0.x, 28u)], vec4<bool>(false, false, 401f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(40334u, 28u)])), true), vec4<u32>(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(32218u, firstTrailingBit(u_input.b.x)), ~(u_input.b.xz & vec2<u32>(1u, global3[_wgslsmith_index_u32(1u, 29u)]))), var_1.x, var_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3[_wgslsmith_index_u32(~(~u_input.b.x), 29u)];
    var var_1 = func_4(u_input.b, countOneBits(~vec4<u32>(global2[_wgslsmith_index_u32(14598u, 1u)] << (0u % 32u), 11313u, func_1(global1[_wgslsmith_index_u32(2432u, 28u)], 0u, Struct_1(-271f, u_input.a.x, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(95781u, 29u)], 29u)], 28u)], vec4<bool>(true, false, true, false), vec4<u32>(4294967295u, u_input.b.x, 4294967295u, global2[_wgslsmith_index_u32(16991u, 1u)]))), 1u)));
    let var_2 = func_4(~(~vec3<u32>(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(63933u, 1u)] ^ global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(56413u, 1u)], 29u)], 29u)], 29u)], 1u)], firstTrailingBit(u_input.b.x), 1u)), select(firstLeadingBit(~(~vec4<u32>(1u, 0u, var_1.e.x, 4294967295u))), abs(~abs(vec4<u32>(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(8188u, 1u)], 29u)], 39845u, 4294967295u, 1u))), func_2().d.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~1u, var_1.e.x, ~firstTrailingBit(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_1.e.x, 1u)], 29u)]) | 0u, func_4(var_1.e.yzx, ~(~vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(76709u, 1u)], 1u)], 72021u, global3[_wgslsmith_index_u32(4294967295u, 29u)], global2[_wgslsmith_index_u32(var_1.e.x, 1u)]))).e.x), _wgslsmith_f_op_vec2_f32(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(abs(~4294967295u), 29u)] & var_1.e.x, 11u)] - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-113f, global1[_wgslsmith_index_u32(var_2.e.x, 28u)]), _wgslsmith_f_op_vec2_f32(vec2<f32>(777f, -770f) - vec2<f32>(-1218f, -717f)))))), u_input.a);
}

