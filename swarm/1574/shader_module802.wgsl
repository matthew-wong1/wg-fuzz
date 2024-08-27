struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: vec3<i32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: bool,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_5 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<f32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<vec3<i32>, 22>;

var<private> global2: array<Struct_2, 19> = array<Struct_2, 19>(Struct_2(Struct_1(vec3<f32>(697f, 1563f, -155f), 0u, vec3<i32>(0i, -1i, -7454i), false), -509f, false), Struct_2(Struct_1(vec3<f32>(-912f, -207f, 1000f), 0u, vec3<i32>(-13635i, 29983i, -29188i), false), -384f, false), Struct_2(Struct_1(vec3<f32>(118f, 860f, -1000f), 4294967295u, vec3<i32>(-15304i, -26766i, 743i), false), 550f, true), Struct_2(Struct_1(vec3<f32>(1872f, 137f, -402f), 4294967295u, vec3<i32>(-3697i, 7695i, 39210i), false), 1087f, true), Struct_2(Struct_1(vec3<f32>(1755f, -371f, 401f), 75748u, vec3<i32>(-22278i, 0i, -7147i), false), -661f, false), Struct_2(Struct_1(vec3<f32>(532f, 109f, 214f), 4294967295u, vec3<i32>(2147483647i, 20794i, 1i), false), -749f, false), Struct_2(Struct_1(vec3<f32>(599f, -412f, 269f), 0u, vec3<i32>(0i, 0i, 7887i), false), -722f, true), Struct_2(Struct_1(vec3<f32>(190f, -1075f, 1270f), 1u, vec3<i32>(i32(-2147483648), -27546i, -17422i), false), -163f, false), Struct_2(Struct_1(vec3<f32>(2535f, -1867f, 670f), 1739u, vec3<i32>(0i, -1i, 0i), false), -1344f, false), Struct_2(Struct_1(vec3<f32>(835f, 366f, -473f), 51687u, vec3<i32>(-1556i, 2147483647i, 49927i), false), 811f, true), Struct_2(Struct_1(vec3<f32>(602f, -609f, -859f), 29474u, vec3<i32>(i32(-2147483648), -1i, 0i), true), 111f, true), Struct_2(Struct_1(vec3<f32>(-1000f, -1000f, -1387f), 1092u, vec3<i32>(-35312i, -1i, 1i), true), -1630f, true), Struct_2(Struct_1(vec3<f32>(-334f, 283f, 203f), 58897u, vec3<i32>(-34067i, 26302i, -30353i), false), -2003f, true), Struct_2(Struct_1(vec3<f32>(-472f, -165f, 624f), 41946u, vec3<i32>(-39669i, 2147483647i, -1i), true), -952f, true), Struct_2(Struct_1(vec3<f32>(-356f, -1003f, 1301f), 33038u, vec3<i32>(-33656i, -25609i, 1i), false), 243f, false), Struct_2(Struct_1(vec3<f32>(486f, -239f, 1564f), 8878u, vec3<i32>(0i, -53284i, 1i), true), -1000f, true), Struct_2(Struct_1(vec3<f32>(880f, -425f, -1210f), 4294967295u, vec3<i32>(2147483647i, 0i, -8588i), true), -219f, false), Struct_2(Struct_1(vec3<f32>(-1199f, -178f, -1697f), 23120u, vec3<i32>(i32(-2147483648), -48059i, 56369i), true), -531f, true), Struct_2(Struct_1(vec3<f32>(-495f, 639f, -454f), 1u, vec3<i32>(-86717i, i32(-2147483648), -1i), false), 1829f, true));

var<private> global3: array<f32, 13>;

var<private> global4: array<Struct_3, 15>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_4) -> vec4<f32> {
    let var_0 = arg_0.b.c.x;
    var var_1 = _wgslsmith_div_f32(_wgslsmith_div_f32(1061f, global3[_wgslsmith_index_u32(0u, 13u)]), 721f);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.a.x, _wgslsmith_f_op_f32(global0.x * 659f), _wgslsmith_f_op_f32(-113f - 1000f), _wgslsmith_f_op_f32(global0.x * arg_0.a.a.x)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-317f, arg_0.b.a.x, -2232f, -1184f))) + vec4<f32>(899f, arg_0.a.a.x, arg_0.b.a.x, 907f))))));
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(min(10919u, u_input.a.x), _wgslsmith_dot_vec3_u32(vec3<u32>(58182u, 45394u, u_input.a.x), vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x))), 13u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.a.x, 13u)])), _wgslsmith_f_op_f32(sign(global3[_wgslsmith_index_u32(firstTrailingBit(u_input.a.x), 13u)])), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.a.x, 13u)])) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_3(Struct_4(Struct_1(vec3<f32>(global0.x, global0.x, global0.x), 13292u, vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), false), Struct_1(vec3<f32>(-1579f, 1625f, 1558f), u_input.a.x, vec3<i32>(-1i, u_input.b.x, u_input.b.x), false)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-481f, global0.x, 804f, global3[_wgslsmith_index_u32(4294967295u, 13u)])), vec4<bool>(true, true, true, true))))));
    global4 = array<Struct_3, 15>();
    var var_1 = global4[_wgslsmith_index_u32(u_input.a.x, 15u)];
    global2 = array<Struct_2, 19>();
    let var_2 = var_1.a.x;
    return Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, 397f)) - var_0.yyw), _wgslsmith_div_u32(u_input.a.x, _wgslsmith_clamp_u32(_wgslsmith_mod_u32(u_input.a.x, 4294967295u), u_input.a.x | 1u, u_input.a.x) << (u_input.a.x % 32u)), vec3<i32>(u_input.b.x, firstLeadingBit(countOneBits(u_input.b.x) << (1u % 32u)), 1i), var_1.a.x);
}

fn func_1(arg_0: vec3<f32>, arg_1: vec2<bool>) -> f32 {
    var var_0 = Struct_4(Struct_1(_wgslsmith_f_op_vec3_f32(-arg_0), ~_wgslsmith_mult_u32(4294967295u, u_input.a.x) & 33748u, -select(vec3<i32>(-1i, u_input.b.x, u_input.b.x), -vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), all(vec4<bool>(false, arg_1.x, false, true))), arg_1.x), func_2());
    let var_1 = max(_wgslsmith_clamp_vec2_i32(countOneBits(-var_0.a.c.yz), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b.x, var_0.a.c.x) >> (vec2<u32>(0u, u_input.a.x) % vec2<u32>(32u)), vec2<i32>(u_input.b.x, -2147483647i) ^ u_input.b.xy), firstTrailingBit(select(u_input.b.xz, vec2<i32>(-2147483647i, var_0.b.c.x), arg_1))) ^ reverseBits(func_2().c.yx), u_input.b.zy);
    var var_2 = func_2();
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global0.x, -1800f, _wgslsmith_f_op_f32(-1121f + 474f)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(func_2().a - _wgslsmith_f_op_vec3_f32(max(var_2.a, var_0.b.a)))))));
    var var_3 = var_2.c.x;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2().a.x * _wgslsmith_f_op_f32(global0.x - global3[_wgslsmith_index_u32(5446u, 13u)]))) + var_0.a.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(805f, -519f, -936f) + vec3<f32>(1204f, 1420f, global3[_wgslsmith_index_u32(44719u, 13u)])), vec2<bool>(true, false))))), global3[_wgslsmith_index_u32(~(~reverseBits(abs(u_input.a.x))), 13u)], _wgslsmith_f_op_f32(f32(-1f) * -434f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -160f), global3[_wgslsmith_index_u32(~firstTrailingBit(21541u), 13u)])));
    var var_1 = Struct_4(Struct_1(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(global0.x - 1000f), 240f), firstTrailingBit(~1u), min(~vec3<i32>(u_input.b.x, 38528i, 22142i), vec3<i32>(-24506i, u_input.b.x, u_input.b.x)), select(true, true, true)), func_2());
    let var_2 = Struct_1(vec3<f32>(var_0.x, global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, 529f)))), max(_wgslsmith_dot_vec3_u32(~select(vec3<u32>(1u, 85948u, 16044u), vec3<u32>(var_1.b.b, u_input.a.x, var_1.b.b), vec3<bool>(false, true, var_1.a.d)), vec3<u32>(var_1.a.b, _wgslsmith_mod_u32(var_1.b.b, 66744u), _wgslsmith_clamp_u32(var_1.a.b, var_1.a.b, 0u))), _wgslsmith_mod_u32(firstTrailingBit(u_input.a.x), ~(u_input.a.x << (15875u % 32u)))), countOneBits(var_1.a.c), !var_1.a.d && !(!var_1.b.d));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(1000f)), 220f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(591f)), global3[_wgslsmith_index_u32(u_input.a.x >> (var_1.b.b % 32u), 13u)], _wgslsmith_div_f32(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(var_1.b.b, 0u), 13u)], var_2.a.x))), abs(7807i), abs(var_1.b.c.x));
}

