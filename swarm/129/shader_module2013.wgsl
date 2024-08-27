struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: vec4<f32>,
    d: u32,
    e: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: vec2<i32>,
}

struct Struct_5 {
    a: vec4<u32>,
    b: Struct_1,
    c: bool,
    d: f32,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 12> = array<vec4<f32>, 12>(vec4<f32>(-300f, 181f, -451f, -1397f), vec4<f32>(-786f, -689f, 491f, -1378f), vec4<f32>(-1304f, -1182f, -1163f, 470f), vec4<f32>(1480f, 1467f, 387f, 171f), vec4<f32>(-564f, 1000f, -529f, 723f), vec4<f32>(-1130f, 161f, -560f, -1373f), vec4<f32>(-1503f, 1000f, -1331f, 749f), vec4<f32>(2451f, 664f, 1203f, 986f), vec4<f32>(-326f, 1000f, -1000f, -608f), vec4<f32>(1027f, 161f, 150f, 352f), vec4<f32>(1067f, -1000f, -708f, 185f), vec4<f32>(-2663f, 543f, -1899f, 879f));

var<private> global1: array<f32, 26>;

var<private> global2: array<i32, 1> = array<i32, 1>(i32(-2147483648));

var<private> global3: f32 = -319f;

var<private> global4: array<Struct_3, 15>;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_5, arg_2: vec2<u32>, arg_3: f32) -> vec3<i32> {
    let var_0 = 1353f;
    return vec3<i32>(-1i) * -(~vec3<i32>(1i, countOneBits(-1i), global2[_wgslsmith_index_u32(arg_2.x, 1u)]));
}

fn func_2(arg_0: vec2<i32>, arg_1: i32) -> Struct_1 {
    global4 = array<Struct_3, 15>();
    var var_0 = firstTrailingBit(_wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(countOneBits(-vec3<i32>(18881i, 16524i, -53440i)), vec3<i32>(-2147483647i, _wgslsmith_mult_i32(arg_0.x, -12655i), -2147483647i), -vec3<i32>(-16213i, -2147483647i, 1i)), ((vec3<i32>(arg_0.x, global2[_wgslsmith_index_u32(85249u, 1u)], 2147483647i) >> (vec3<u32>(u_input.b.x, 1u, 65565u) % vec3<u32>(32u))) ^ func_3(vec2<i32>(global2[_wgslsmith_index_u32(39667u, 1u)], global2[_wgslsmith_index_u32(1u, 1u)]), Struct_5(vec4<u32>(u_input.d, 1u, u_input.d, u_input.b.x), Struct_1(global0[_wgslsmith_index_u32(u_input.d, 12u)]), false, global1[_wgslsmith_index_u32(u_input.b.x, 26u)], true), u_input.b, 111f)) ^ (_wgslsmith_mult_vec3_i32(vec3<i32>(arg_0.x, arg_1, arg_0.x), vec3<i32>(1i, arg_1, -12229i)) ^ ~vec3<i32>(global2[_wgslsmith_index_u32(u_input.d, 1u)], 0i, global2[_wgslsmith_index_u32(1u, 1u)]))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -216f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -355f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.b.x, 26u)] - global1[_wgslsmith_index_u32(4294967295u, 26u)]), -391f) * global1[_wgslsmith_index_u32(u_input.d, 26u)])));
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1853f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 26u)]) * _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.d, 26u)])), _wgslsmith_f_op_f32(select(-1529f, var_1.x, true)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-797f * var_1.x), var_1.x, all(vec2<bool>(true, true)))))));
    let var_3 = false;
    return var_2;
}

fn func_1() -> i32 {
    var var_0 = !select(vec2<bool>(true, true), select(vec2<bool>(1000f != global1[_wgslsmith_index_u32(u_input.b.x, 26u)], true), vec2<bool>(true, any(vec2<bool>(false, false))), _wgslsmith_sub_u32(u_input.d, 4294967295u) == (u_input.b.x & 0u)), select(select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), true)), !select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true))));
    let var_1 = func_2(vec2<i32>(1i, -1i), select(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), ~vec2<i32>(global2[_wgslsmith_index_u32(u_input.d, 1u)], 42654i)), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-17587i, 46860i, u_input.a), vec3<i32>(45195i, 1i, global2[_wgslsmith_index_u32(u_input.d, 1u)])), -2147483647i ^ global2[_wgslsmith_index_u32(0u, 1u)]), true) & u_input.c);
    global3 = 436f;
    return _wgslsmith_clamp_i32(i32(-1i) * -select(-1i, u_input.c, var_0.x), global2[_wgslsmith_index_u32(13778u, 1u)], 0i) << (u_input.b.x % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<Struct_3, 15>();
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1069f - _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(22928u, 26u)] - 118f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b.x, 26u)]))), _wgslsmith_div_f32(-236f, -709f)));
    let var_0 = Struct_3(1u, all(!select(vec2<bool>(true, true), vec2<bool>(false, false), true)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(-2057f, -1043f)), -933f, _wgslsmith_f_op_f32(-137f + -1152f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-471f - global1[_wgslsmith_index_u32(u_input.d, 26u)]))) + global0[_wgslsmith_index_u32(71745u, 12u)]), _wgslsmith_div_u32(4294967295u, ~(~(~66764u))), Struct_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(37061u, 12u)] * global0[_wgslsmith_index_u32(4294967295u, 12u)]) + vec4<f32>(global1[_wgslsmith_index_u32(u_input.d, 26u)], -1000f, -697f, -1099f))))));
    var var_1 = func_1();
    global3 = -1582f;
    var var_2 = true;
    global1 = array<f32, 26>();
    global3 = global1[_wgslsmith_index_u32(~(~_wgslsmith_mult_u32(54650u << (abs(u_input.d) % 32u), 1499u)), 26u)];
    let x = u_input.a;
    s_output = StorageBuffer(global2[_wgslsmith_index_u32(select(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 58484u, 0u), vec3<u32>(53812u, 60350u, var_0.a)), countOneBits(1u), all(select(vec4<bool>(var_0.b, false, false, true), vec4<bool>(var_0.b, true, var_0.b, true), false))), 1u)] ^ u_input.a);
}

