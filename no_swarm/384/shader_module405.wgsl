struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
    d: vec4<f32>,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 8> = array<Struct_2, 8>(Struct_2(-15268i), Struct_2(-45447i), Struct_2(-55240i), Struct_2(28493i), Struct_2(19562i), Struct_2(-23347i), Struct_2(-19596i), Struct_2(0i));

var<private> global1: array<bool, 3> = array<bool, 3>(false, false, true);

var<private> global2: array<vec2<i32>, 5> = array<vec2<i32>, 5>(vec2<i32>(-1i, 0i), vec2<i32>(-1i, -1i), vec2<i32>(32460i, 0i), vec2<i32>(33273i, -6161i), vec2<i32>(2147483647i, 67246i));

var<private> global3: Struct_2;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: bool, arg_1: bool) -> u32 {
    return 2346u;
}

fn func_3(arg_0: bool, arg_1: Struct_4) -> u32 {
    global0 = array<Struct_2, 8>();
    let var_0 = arg_1.c;
    let var_1 = arg_1.a;
    var var_2 = arg_1.b;
    global3 = global0[_wgslsmith_index_u32(90836u, 8u)];
    return u_input.a.x;
}

fn func_4(arg_0: u32, arg_1: vec4<f32>) -> vec3<i32> {
    global0 = array<Struct_2, 8>();
    var var_0 = global0[_wgslsmith_index_u32(u_input.d, 8u)];
    var_0 = Struct_2(global3.a);
    let var_1 = Struct_1(true);
    global3 = global0[_wgslsmith_index_u32(u_input.d, 8u)];
    return abs(countOneBits((_wgslsmith_mult_vec3_i32(vec3<i32>(0i, u_input.c, var_0.a), vec3<i32>(global3.a, var_0.a, 1i)) | -vec3<i32>(u_input.c, -8491i, 98i)) & -vec3<i32>(var_0.a, global3.a, -7916i)));
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_3) -> Struct_3 {
    global0 = array<Struct_2, 8>();
    global0 = array<Struct_2, 8>();
    var var_0 = Struct_4(Struct_1(_wgslsmith_div_f32(arg_1.d.x, 394f) < arg_1.d.x), arg_1.e, func_4(func_3(!global1[_wgslsmith_index_u32(1u, 3u)] | !arg_1.a.a, Struct_4(arg_1.a, Struct_1(false), vec3<i32>(u_input.c, -2147483647i, 1i), Struct_2(u_input.c))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-281f, _wgslsmith_f_op_f32(round(-495f)), _wgslsmith_f_op_f32(ceil(arg_1.d.x)), _wgslsmith_f_op_f32(floor(arg_1.d.x))))), global0[_wgslsmith_index_u32(~(~(1u >> (1u % 32u))), 8u)]);
    var var_1 = Struct_1(select(global1[_wgslsmith_index_u32(~(~u_input.d), 3u)], var_0.b.a, false));
    let var_2 = ~3813i;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 8>();
    var var_0 = _wgslsmith_f_op_f32(335f + _wgslsmith_f_op_f32(f32(-1f) * -1511f));
    let var_1 = func_2(vec3<u32>(1u, 4294967295u, _wgslsmith_mult_u32(~u_input.d, ~u_input.d)) & _wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.a.x, 24088u, 50589u), min(~vec3<u32>(24677u, 0u, 0u), ~vec3<u32>(u_input.a.x, 4294967295u, 0u))), Struct_3(Struct_1(false), global0[_wgslsmith_index_u32(~func_1(true, any(vec3<bool>(true, true, global1[_wgslsmith_index_u32(1u, 3u)]))), 8u)], Struct_2(u_input.c), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-225f, -3511f, 159f, -264f) - vec4<f32>(-308f, 1108f, 1153f, -256f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(132f, -524f, -120f, 708f) - vec4<f32>(-580f, 708f, 1000f, 805f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 1600f, 402f, 352f) + vec4<f32>(700f, -250f, -1622f, -795f)), _wgslsmith_div_vec4_f32(vec4<f32>(447f, -895f, -1472f, 753f), vec4<f32>(-430f, 222f, -776f, 620f)), !vec4<bool>(false, global1[_wgslsmith_index_u32(14969u, 3u)], false, global1[_wgslsmith_index_u32(u_input.d, 3u)]))))), Struct_1(all(!vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 3u)], false, global1[_wgslsmith_index_u32(u_input.d, 3u)], global1[_wgslsmith_index_u32(1171u, 3u)])))));
    var var_2 = true;
    var var_3 = _wgslsmith_f_op_f32(min(var_1.d.x, var_1.d.x));
    var var_4 = ~max(_wgslsmith_add_i32(_wgslsmith_mod_i32(reverseBits(u_input.b), -u_input.b), global3.a), global3.a);
    var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.d.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(557f, -1000f)) - -1136f)) - 555f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_1.d, var_1.d)))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.d.x, var_1.d.x, var_1.d.x, _wgslsmith_f_op_f32(max(1574f, var_1.d.x))))))), var_1.d.x, ~(u_input.c << (0u % 32u)));
}

