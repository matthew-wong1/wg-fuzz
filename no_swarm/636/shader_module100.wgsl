struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: u32,
    d: i32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec2<i32>,
    d: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 14> = array<Struct_3, 14>(Struct_3(vec2<i32>(-78459i, 0i), Struct_1(1u, 42149u), vec2<i32>(1i, -1i), false), Struct_3(vec2<i32>(-1i, 24577i), Struct_1(4294967295u, 1u), vec2<i32>(45470i, 1i), false), Struct_3(vec2<i32>(i32(-2147483648), 22894i), Struct_1(0u, 4294967295u), vec2<i32>(-56138i, -1i), false), Struct_3(vec2<i32>(5129i, -1i), Struct_1(69671u, 26096u), vec2<i32>(i32(-2147483648), 28447i), false), Struct_3(vec2<i32>(18886i, 12702i), Struct_1(0u, 0u), vec2<i32>(-27556i, -21498i), false), Struct_3(vec2<i32>(i32(-2147483648), 2147483647i), Struct_1(4294967295u, 44983u), vec2<i32>(2863i, 19011i), true), Struct_3(vec2<i32>(-893i, -57580i), Struct_1(1u, 10134u), vec2<i32>(-1i, -2454i), true), Struct_3(vec2<i32>(1i, -26379i), Struct_1(6402u, 0u), vec2<i32>(5056i, i32(-2147483648)), false), Struct_3(vec2<i32>(29711i, -1i), Struct_1(0u, 15472u), vec2<i32>(-13551i, -33690i), true), Struct_3(vec2<i32>(2298i, -9235i), Struct_1(4294967295u, 23219u), vec2<i32>(74078i, i32(-2147483648)), false), Struct_3(vec2<i32>(-1i, 2147483647i), Struct_1(21649u, 1u), vec2<i32>(16425i, 0i), true), Struct_3(vec2<i32>(27931i, 13604i), Struct_1(4294967295u, 0u), vec2<i32>(0i, 1i), false), Struct_3(vec2<i32>(i32(-2147483648), -1i), Struct_1(23902u, 4294967295u), vec2<i32>(15133i, 1i), true), Struct_3(vec2<i32>(8867i, 1i), Struct_1(20644u, 12422u), vec2<i32>(2147483647i, -39574i), true));

var<private> global1: vec3<u32>;

var<private> global2: array<vec3<u32>, 17> = array<vec3<u32>, 17>(vec3<u32>(64605u, 4294967295u, 4294967295u), vec3<u32>(679u, 0u, 46636u), vec3<u32>(0u, 66949u, 54111u), vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(15943u, 14686u, 4294967295u), vec3<u32>(4294967295u, 1085u, 17439u), vec3<u32>(73362u, 15191u, 39437u), vec3<u32>(15226u, 0u, 0u), vec3<u32>(8159u, 0u, 4294967295u), vec3<u32>(12062u, 4294967295u, 0u), vec3<u32>(0u, 0u, 29938u), vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(36944u, 0u, 0u), vec3<u32>(0u, 1u, 22203u), vec3<u32>(0u, 1606u, 4294967295u), vec3<u32>(20964u, 0u, 65959u), vec3<u32>(4294967295u, 4294967295u, 40087u));

var<private> global3: array<Struct_1, 9>;

var<private> global4: array<Struct_1, 12>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: Struct_2) -> vec3<f32> {
    let var_0 = 63023u;
    let var_1 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-731f, _wgslsmith_f_op_f32(774f * _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(-1021f * arg_0))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0 - -142f), -1244f) + _wgslsmith_f_op_f32(sign(-599f))), arg_0), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0))), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(min(472f, arg_0))), arg_2.a)), _wgslsmith_f_op_f32(718f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(615f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - arg_0) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1660f)) * -807f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0, arg_0, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * 1418f)))));
    var var_2 = arg_2.c;
    let var_3 = ~reverseBits(~_wgslsmith_add_vec4_u32(~vec4<u32>(4671u, 27246u, var_0, u_input.b.x), u_input.b));
    var var_4 = arg_1;
    return _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.x))), 1000f)));
}

fn func_2(arg_0: vec4<i32>) -> vec3<f32> {
    let var_0 = -_wgslsmith_div_vec3_i32(vec3<i32>(min(u_input.c | 2147483647i, ~arg_0.x), ~_wgslsmith_clamp_i32(8867i, u_input.a.x, 59485i), arg_0.x >> (_wgslsmith_sub_u32(4294967295u, 4294967295u) % 32u)), firstTrailingBit(select(arg_0.ywx, arg_0.xxy, vec3<bool>(true, true, true))) ^ (~vec3<i32>(-1i, 37975i, arg_0.x) << (firstTrailingBit(global2[_wgslsmith_index_u32(33687u, 17u)]) % vec3<u32>(32u))));
    var var_1 = select(!(!vec4<bool>(any(vec3<bool>(true, false, false)), false, all(vec4<bool>(false, false, false, false)), true)), vec4<bool>(true, any(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false)))), true, _wgslsmith_mod_u32(~u_input.b.x, u_input.b.x) > ~1u), !vec4<bool>(any(vec4<bool>(true, true, true, true)), true, true, true));
    var_1 = vec4<bool>(!var_1.x, false, all(vec3<bool>(select(u_input.b.x >= 1u, var_1.x & var_1.x, var_1.x), all(!var_1.wyw), var_1.x || false)), var_1.x);
    global3 = array<Struct_1, 9>();
    let var_2 = vec4<bool>(!var_1.x, var_1.x, (22114u ^ global1.x) > _wgslsmith_mod_u32(1u, 1u), !var_1.x);
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-151f, -1000f, -514f) + vec3<f32>(1784f, -414f, -1000f)))))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1065f, 1277f, -849f) - vec3<f32>(-616f, -641f, 141f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(2209f, Struct_2(false, Struct_1(69210u, 1u), global1.x, -2318i), Struct_2(var_2.x, global4[_wgslsmith_index_u32(u_input.b.x, 12u)], u_input.b.x, 12296i))))));
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> StorageBuffer {
    global4 = array<Struct_1, 12>();
    var var_0 = _wgslsmith_f_op_vec3_f32(func_2(vec4<i32>(1i, u_input.a.x, 0i, ~3859i)));
    let var_1 = Struct_2(false | all(vec4<bool>(true, true, true, false)), Struct_1(u_input.b.x, _wgslsmith_mult_u32(u_input.b.x, 1u)), ~(2699u | u_input.b.x), u_input.a.x);
    var var_2 = -u_input.a.xx;
    global1 = ~u_input.b.zxw & u_input.b.ywy;
    return StorageBuffer(_wgslsmith_mult_i32(0i, -(u_input.a.x & 0i)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-2345f - _wgslsmith_f_op_f32(f32(-1f) * -1534f)), var_0.x)), var_0.x), 4973u, u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(1000f, global3[_wgslsmith_index_u32(global1.x, 9u)]);
}

