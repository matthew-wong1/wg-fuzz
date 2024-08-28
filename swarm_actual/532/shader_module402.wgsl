struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: bool,
    b: vec2<bool>,
    c: f32,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<i32, 17>;

var<private> global2: array<Struct_3, 12>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec4<i32>) -> vec2<u32> {
    let var_0 = Struct_1(~(~u_input.a.x));
    var var_1 = global1[_wgslsmith_index_u32(~(u_input.a.x & var_0.a), 17u)];
    global0 = abs(arg_0.x);
    let var_2 = u_input.e;
    var var_3 = Struct_2(vec2<bool>(false, true));
    return u_input.a;
}

fn func_4(arg_0: vec2<u32>, arg_1: i32) -> i32 {
    var var_0 = any(vec4<bool>(true, true, true, true));
    let var_1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1498f * 119f), _wgslsmith_f_op_f32(trunc(1000f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1288f), _wgslsmith_f_op_f32(sign(-1000f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -516f), _wgslsmith_f_op_f32(f32(-1f) * -366f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-110f, _wgslsmith_f_op_f32(278f - -1530f), 167f, -249f), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(116f, 880f, 652f, -362f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1584f, -255f, -717f, -839f) + vec4<f32>(-2417f, 819f, -470f, 994f))))))));
    let var_2 = Struct_2(vec2<bool>(true, false));
    return 39238i;
}

fn func_2() -> vec3<i32> {
    let var_0 = reverseBits(func_4(func_3(vec4<i32>(u_input.e, u_input.b.x, 1i, 18760i) >> ((vec4<u32>(u_input.a.x, u_input.a.x, 15253u, 0u) ^ vec4<u32>(1u, u_input.a.x, u_input.a.x, 96207u)) % vec4<u32>(32u))), 2577i));
    global0 = reverseBits(abs(0i ^ max(~global1[_wgslsmith_index_u32(1u, 17u)], _wgslsmith_dot_vec2_i32(vec2<i32>(0i, var_0), u_input.c))));
    return vec3<i32>(firstTrailingBit(abs(firstTrailingBit(-2147483647i)) << (0u % 32u)), min(_wgslsmith_mod_i32(-1i, 60897i), max(-_wgslsmith_mult_i32(u_input.e, u_input.c.x), _wgslsmith_dot_vec2_i32(~u_input.c, select(vec2<i32>(-1i, -2147483647i), u_input.b, true)))), -global1[_wgslsmith_index_u32(~(~(u_input.a.x >> (63040u % 32u))), 17u)]);
}

fn func_1(arg_0: i32) -> vec2<i32> {
    var var_0 = 521f;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1424f * -137f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -125f))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(909f))))));
    var var_2 = select(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x), 17u)], -_wgslsmith_dot_vec3_i32(select(func_2(), vec3<i32>(1i, global1[_wgslsmith_index_u32(1u, 17u)], u_input.d) & vec3<i32>(36180i, 12841i, -21629i), vec3<bool>(true, true, true)), vec3<i32>(-32083i, -1i & arg_0, -global1[_wgslsmith_index_u32(u_input.a.x, 17u)])), false);
    let var_3 = select(vec4<bool>(any(select(vec2<bool>(true, true), vec2<bool>(true, true), true)), true, !(all(vec3<bool>(true, false, true)) | false), any(!select(vec2<bool>(true, false), vec2<bool>(true, true), false))), vec4<bool>(!any(select(vec2<bool>(false, true), vec2<bool>(false, true), true)), u_input.e != abs(0i), all(select(vec2<bool>(true, true), vec2<bool>(true, true), true)), !any(vec2<bool>(true, true))), !any(vec2<bool>(true, true)));
    var var_4 = Struct_3(((firstTrailingBit(-2147483647i) & countOneBits(-1075i)) ^ arg_0) < (-37039i << (u_input.a.x % 32u)), vec2<bool>(true, var_3.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(912f - _wgslsmith_f_op_f32(2255f * -1000f)) - _wgslsmith_f_op_f32(-1000f - -609f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -230f), -919f))), Struct_2(select(!(!vec2<bool>(var_3.x, true)), select(var_3.yx, vec2<bool>(true, false), !var_3.xy), var_3.wy)), Struct_1(_wgslsmith_add_u32(abs(u_input.a.x) & min(u_input.a.x, 1u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 9922u), ~vec4<u32>(4294967295u, 4294967295u, u_input.a.x, 3899u)))));
    return _wgslsmith_sub_vec2_i32(abs(abs(_wgslsmith_mult_vec2_i32(~u_input.b, u_input.c))), _wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(select(vec2<i32>(global1[_wgslsmith_index_u32(4294967295u, 17u)], -9456i) & u_input.c, u_input.b, !var_4.b), -vec2<i32>(2147483647i, 0i)), vec2<i32>(abs(_wgslsmith_div_i32(2147483647i, u_input.e)), _wgslsmith_sub_i32(40050i, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0, 1i, arg_0), vec3<i32>(global1[_wgslsmith_index_u32(0u, 17u)], arg_0, global1[_wgslsmith_index_u32(55160u, 17u)])))), vec2<i32>(1i, -_wgslsmith_dot_vec4_i32(vec4<i32>(-19953i, 0i, global1[_wgslsmith_index_u32(u_input.a.x, 17u)], -35437i), vec4<i32>(u_input.b.x, -76419i, arg_0, -8841i)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~max(~(15709u ^ u_input.a.x) & reverseBits(u_input.a.x), abs(~_wgslsmith_dot_vec3_u32(vec3<u32>(65986u, u_input.a.x, u_input.a.x), vec3<u32>(46366u, 4294967295u, 12855u))));
    let var_1 = Struct_2(select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec3<bool>(true, true, true))));
    var var_2 = 1i & u_input.e;
    global0 = _wgslsmith_dot_vec2_i32(func_1(countOneBits(0i)), u_input.b);
    var var_3 = u_input.b << (u_input.a % vec2<u32>(32u));
    global2 = array<Struct_3, 12>();
    var_2 = countOneBits(~u_input.d) >> (_wgslsmith_div_u32(u_input.a.x, _wgslsmith_sub_u32(var_0, _wgslsmith_mult_u32(~u_input.a.x, countOneBits(u_input.a.x)))) % 32u);
    var_2 = reverseBits(countOneBits(var_3.x));
    global0 = global1[_wgslsmith_index_u32(~firstLeadingBit(var_0), 17u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1707f, 175f, -201f, -835f))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-765f, 1734f, -1286f, 1126f), vec4<f32>(-1745f, 865f, 228f, 111f))), vec4<f32>(1305f, -250f, -252f, -504f), !vec4<bool>(var_1.a.x, false, false, var_1.a.x))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1284f, -1000f, -609f, -1244f))))), var_0, var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1179f, 284f))))));
}

