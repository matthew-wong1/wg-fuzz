struct Struct_1 {
    a: vec2<bool>,
    b: vec2<bool>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: bool,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
    d: vec2<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 20>;

var<private> global1: f32;

var<private> global2: array<Struct_1, 14>;

var<private> global3: bool;

var<private> global4: array<vec3<f32>, 7> = array<vec3<f32>, 7>(vec3<f32>(-658f, 1023f, -1873f), vec3<f32>(-1000f, -416f, -715f), vec3<f32>(-1805f, -758f, 341f), vec3<f32>(1974f, 1470f, 1839f), vec3<f32>(1426f, -1253f, -1004f), vec3<f32>(273f, 789f, -874f), vec3<f32>(-1423f, -1678f, -279f));

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
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

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: bool) -> u32 {
    let var_0 = global2[_wgslsmith_index_u32(1u | (_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(64183u, 23983u, 4294967295u), abs(50290u)), vec2<u32>(1u, 1u)) | 1u), 14u)];
    global1 = _wgslsmith_f_op_f32(-1090f + _wgslsmith_f_op_f32(-1148f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -177f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1683f + -1000f))))));
    var var_1 = Struct_2(Struct_1(select(var_0.a, vec2<bool>(true, true), select(vec2<bool>(arg_0, true), !var_0.b, false)), select(!(!vec2<bool>(arg_0, false)), var_0.a, vec2<bool>(!var_0.b.x, var_0.a.x)), _wgslsmith_mod_i32(~min(var_0.c, 0i), ~(~(-2147483647i)))), firstTrailingBit(~max(vec2<i32>(22073i, u_input.a.x), _wgslsmith_div_vec2_i32(vec2<i32>(0i, 47936i), u_input.a))), false, global2[_wgslsmith_index_u32(~4294967295u, 14u)], global2[_wgslsmith_index_u32(10950u, 14u)]);
    let var_2 = var_1.d.b.x;
    var var_3 = global2[_wgslsmith_index_u32(139436u, 14u)];
    return _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(min(58943u, 0u) >> (0u % 32u), _wgslsmith_dot_vec3_u32(~vec3<u32>(50677u, 40413u, 28351u), ~vec3<u32>(0u, 0u, 4294967295u))), max(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u))), 1u & ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 12051u, 37357u), ~vec3<u32>(1u, 3973u, 0u)));
}

fn func_2() -> vec3<bool> {
    var var_0 = ((vec4<u32>(~35381u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, 0u)), min(1u, 1u), 1u) | firstLeadingBit(vec4<u32>(1u, 1u, 1u, 1u))) & firstTrailingBit(firstTrailingBit(max(vec4<u32>(34750u, 1u, 0u, 73340u), vec4<u32>(1u, 0u, 5368u, 30401u))))) >> (~(~vec4<u32>(~76408u, func_3(false), 1311u, min(25100u, 1u))) % vec4<u32>(32u));
    global3 = false;
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(559f + _wgslsmith_f_op_f32(f32(-1f) * -152f)), _wgslsmith_f_op_f32(floor(1f)))))), _wgslsmith_f_op_f32(f32(-1f) * -540f), _wgslsmith_f_op_f32(trunc(478f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1050f))), 1011f));
    global0 = array<vec2<f32>, 20>();
    let var_2 = global2[_wgslsmith_index_u32(23300u, 14u)];
    return !vec3<bool>(var_2.a.x, false, any(select(select(vec4<bool>(var_2.b.x, true, var_2.b.x, true), vec4<bool>(var_2.b.x, false, true, false), var_2.b.x), vec4<bool>(false, var_2.a.x, var_2.a.x, var_2.b.x), !vec4<bool>(var_2.a.x, false, true, true))));
}

fn func_1() -> f32 {
    let var_0 = abs(20526i);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-750f)) * -800f) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000f)) + -1000f))));
    var var_2 = Struct_3(global2[_wgslsmith_index_u32(countOneBits(84269u >> (abs(select(1u, 1u, true)) % 32u)), 14u)], !func_2());
    var var_3 = false;
    var var_4 = Struct_3(var_2.a, vec3<bool>(true, true, true));
    return _wgslsmith_f_op_f32(round(-104f));
}

fn func_4(arg_0: Struct_2) -> vec2<bool> {
    var var_0 = ~(select(vec2<u32>(0u, 1u), vec2<u32>(1u, 4294967295u), arg_0.d.a.x) | abs(vec2<u32>(4294967295u, abs(0u))));
    var var_1 = _wgslsmith_dot_vec3_i32(vec3<i32>(-(~u_input.a.x), _wgslsmith_mod_i32(min(u_input.a.x, 1i), 1i), ~4573i), _wgslsmith_add_vec3_i32(reverseBits(-vec3<i32>(1i, 95206i, arg_0.d.c)), select(_wgslsmith_add_vec3_i32(vec3<i32>(arg_0.e.c, arg_0.e.c, 0i), vec3<i32>(arg_0.b.x, 2147483647i, arg_0.b.x)), ~vec3<i32>(arg_0.a.c, 2147483647i, 0i), any(vec2<bool>(arg_0.c, false))))) | abs(u_input.a.x);
    var var_2 = Struct_1(!vec2<bool>(true, arg_0.d.a.x), vec2<bool>(all(select(vec3<bool>(true, true, false), vec3<bool>(true, arg_0.a.b.x, arg_0.a.a.x), !vec3<bool>(true, arg_0.c, false))), arg_0.a.a.x), 2147483647i);
    var var_3 = global2[_wgslsmith_index_u32(reverseBits(34017u), 14u)];
    let var_4 = reverseBits(vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(0u, 27426u, var_0.x, 6510u), vec4<u32>(var_0.x, var_0.x, 5293u, var_0.x) ^ vec4<u32>(var_0.x, 1u, 31817u, var_0.x)), ~(~vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x))), var_0.x, _wgslsmith_div_u32(~1u, reverseBits(~var_0.x)), reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 0u, 1u), vec3<u32>(0u, 42424u, 17467u))) << (max(var_0.x, var_0.x >> (4294967295u % 32u)) % 32u)));
    return var_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    global0 = array<vec2<f32>, 20>();
    var var_1 = Struct_1(func_4(Struct_2(Struct_1(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(false, true), false), u_input.a.x), u_input.a, _wgslsmith_f_op_f32(func_1()) >= 537f, global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 27526u), vec3<u32>(4294967295u, 0u, 1u)), 1u), 14u)], global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(56063u, 11318u), vec2<u32>(1u, 1u)), 14u)])), !select(select(vec2<bool>(true, true), vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(true, false), true)), vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, false), vec2<bool>(true, true))), u_input.a.x);
    let var_2 = max(_wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(-vec4<i32>(var_1.c, -2143i, var_0.x, -20136i) >> (~vec4<u32>(4294967295u, 1u, 32189u, 4372u) % vec4<u32>(32u)), -reverseBits(vec4<i32>(7276i, -12700i, u_input.a.x, var_1.c))), reverseBits(_wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(44196i, -2147483647i, var_1.c, var_1.c), vec4<i32>(-2147483647i, 0i, 2147483647i, 1127i)), vec4<i32>(2147483647i, var_0.x, var_1.c, var_0.x)))), vec4<i32>(var_1.c, -2147483647i & ~u_input.a.x, firstTrailingBit(-var_1.c), abs(_wgslsmith_sub_i32(var_1.c, 66902i))) >> (~(~max(vec4<u32>(1u, 40273u, 1u, 0u), vec4<u32>(53574u, 2418u, 51580u, 1u))) % vec4<u32>(32u)));
    global2 = array<Struct_1, 14>();
    let var_3 = _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(1u, 1u, 1u), vec3<u32>(~4294967295u, countOneBits(0u), _wgslsmith_clamp_u32(0u, 1u, 2215u))), _wgslsmith_div_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u))) >= ~(1u << (0u % 32u));
    var var_4 = select(vec2<bool>(any(vec3<bool>(select(false, var_1.b.x, var_3), any(vec3<bool>(var_3, false, false)), false)), abs(_wgslsmith_add_u32(84519u, 0u)) == _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 26775u, 53798u), vec3<u32>(1u, 3928u, 10091u)), ~46322u)), var_1.a, !vec2<bool>(all(select(vec3<bool>(false, false, false), vec3<bool>(var_1.a.x, var_3, var_3), vec3<bool>(false, false, false))), true));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(41867u), ~(firstLeadingBit(0u) << (1u % 32u)), _wgslsmith_div_f32(997f, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1000f, -312f)))), _wgslsmith_f_op_vec2_f32(select(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(0u, 60628u), ~1u), 48403u, ~_wgslsmith_mult_u32(1u, 4315u)), 20u)], vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - -822f)), 254f), vec2<bool>(false, _wgslsmith_f_op_f32(func_1()) < -950f))), -u_input.a.x);
}

