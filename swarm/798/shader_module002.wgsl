struct Struct_1 {
    a: i32,
    b: bool,
    c: vec4<i32>,
    d: vec4<u32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: vec4<i32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 5> = array<Struct_2, 5>(Struct_2(vec2<i32>(-23507i, -1i), Struct_1(i32(-2147483648), true, vec4<i32>(-1i, -1i, 1i, 1i), vec4<u32>(13115u, 4294967295u, 44561u, 22397u), vec2<f32>(-284f, -1288f))), Struct_2(vec2<i32>(26529i, 17492i), Struct_1(15430i, false, vec4<i32>(0i, 14308i, 4966i, i32(-2147483648)), vec4<u32>(0u, 0u, 13719u, 51266u), vec2<f32>(374f, -1131f))), Struct_2(vec2<i32>(0i, 0i), Struct_1(-26215i, true, vec4<i32>(1i, 2147483647i, i32(-2147483648), 1i), vec4<u32>(44245u, 43780u, 25307u, 16534u), vec2<f32>(-1102f, -358f))), Struct_2(vec2<i32>(1i, -37841i), Struct_1(i32(-2147483648), false, vec4<i32>(17095i, 2147483647i, -1i, 2147483647i), vec4<u32>(16793u, 4294967295u, 5130u, 62008u), vec2<f32>(-1398f, 1041f))), Struct_2(vec2<i32>(0i, 2147483647i), Struct_1(2147483647i, false, vec4<i32>(-15626i, -16940i, -2348i, 2147483647i), vec4<u32>(75538u, 1u, 4294967295u, 4294967295u), vec2<f32>(730f, -459f))));

var<private> global1: array<u32, 32> = array<u32, 32>(1u, 28464u, 91694u, 26645u, 98721u, 0u, 4294967295u, 0u, 14620u, 0u, 12313u, 0u, 58742u, 0u, 13995u, 24670u, 9164u, 0u, 1u, 4294967295u, 4294967295u, 1u, 1u, 1u, 66512u, 112659u, 60104u, 1u, 4294967295u, 4294967295u, 27576u, 44651u);

var<private> global2: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(-1902i, true, vec4<i32>(-1i, -19259i, 38251i, 1i), vec4<u32>(4294967295u, 23032u, 6604u, 47260u), vec2<f32>(1000f, -653f)), Struct_1(-14007i, false, vec4<i32>(-8600i, -1i, -29252i, -14114i), vec4<u32>(18820u, 4294967295u, 0u, 4294967295u), vec2<f32>(-280f, -270f)), Struct_1(7350i, false, vec4<i32>(i32(-2147483648), 32482i, 1i, -13970i), vec4<u32>(47366u, 4294967295u, 1u, 4294967295u), vec2<f32>(-1000f, -398f)), Struct_1(-2846i, true, vec4<i32>(i32(-2147483648), i32(-2147483648), i32(-2147483648), 1i), vec4<u32>(0u, 39106u, 0u, 4294967295u), vec2<f32>(-216f, 1443f)), Struct_1(i32(-2147483648), false, vec4<i32>(-1i, i32(-2147483648), i32(-2147483648), i32(-2147483648)), vec4<u32>(27485u, 30513u, 47134u, 0u), vec2<f32>(757f, 797f)), Struct_1(-12333i, true, vec4<i32>(1i, -1i, 46523i, 22781i), vec4<u32>(7514u, 4294967295u, 27007u, 4294967295u), vec2<f32>(-2005f, -456f)), Struct_1(39596i, false, vec4<i32>(23904i, 29164i, 0i, 766i), vec4<u32>(45099u, 1u, 12708u, 49721u), vec2<f32>(1000f, -134f)), Struct_1(-7432i, false, vec4<i32>(i32(-2147483648), 1i, 5644i, -2099i), vec4<u32>(0u, 0u, 4294967295u, 1u), vec2<f32>(265f, 1000f)), Struct_1(i32(-2147483648), false, vec4<i32>(-7342i, 0i, 3640i, 17537i), vec4<u32>(3470u, 54904u, 1u, 26545u), vec2<f32>(113f, 1004f)), Struct_1(-13706i, false, vec4<i32>(0i, 5372i, -21332i, 2147483647i), vec4<u32>(4294967295u, 31334u, 102368u, 1u), vec2<f32>(536f, 1602f)), Struct_1(0i, false, vec4<i32>(-1i, -12826i, -10217i, 53648i), vec4<u32>(4294967295u, 14656u, 69071u, 22768u), vec2<f32>(-1065f, -379f)), Struct_1(1i, true, vec4<i32>(10877i, -41589i, -1i, -7891i), vec4<u32>(40631u, 0u, 58138u, 73639u), vec2<f32>(740f, 165f)), Struct_1(38755i, true, vec4<i32>(0i, 1324i, 4880i, -29100i), vec4<u32>(27480u, 62150u, 23674u, 1u), vec2<f32>(-907f, 1413f)), Struct_1(-1i, false, vec4<i32>(i32(-2147483648), -13259i, -1i, 38270i), vec4<u32>(4294967295u, 44691u, 1u, 38800u), vec2<f32>(1138f, -615f)), Struct_1(1i, false, vec4<i32>(67760i, 0i, 12113i, 1i), vec4<u32>(3098u, 1u, 49237u, 30986u), vec2<f32>(1000f, -400f)));

var<private> global3: array<Struct_1, 15>;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3() -> vec2<bool> {
    global0 = array<Struct_2, 5>();
    global3 = array<Struct_1, 15>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(111f, 1000f) + _wgslsmith_f_op_f32(717f * -390f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(1481f)), 207f)), !all(vec4<bool>(false, false, true, false)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -238f)) + 1195f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2763f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1560f)))));
    var var_1 = Struct_1(-19456i, all(vec2<bool>(true, any(select(vec2<bool>(false, false), vec2<bool>(false, false), true)))), countOneBits(firstTrailingBit(abs(vec4<i32>(u_input.b.x, u_input.b.x, -1i, u_input.b.x)))) ^ max(-(~vec4<i32>(-2526i, -1i, 1i, u_input.b.x)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x, 9378i, -2147483647i, 47259i), vec4<i32>(24503i, 2147483647i, u_input.b.x, 20339i))), vec4<u32>(22042u, _wgslsmith_mod_u32(u_input.a.x, global1[_wgslsmith_index_u32(~u_input.a.x, 32u)]), global1[_wgslsmith_index_u32(0u, 32u)], ~4294967295u), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1196f, -1646f))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(-452f, -165f), vec2<f32>(961f, 193f))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-572f, -1000f)))));
    var var_2 = !(!(!(!select(vec3<bool>(false, false, var_1.b), vec3<bool>(true, false, var_1.b), vec3<bool>(false, var_1.b, false)))));
    return vec2<bool>(false, true);
}

fn func_4(arg_0: vec2<bool>, arg_1: f32, arg_2: vec3<i32>, arg_3: f32) -> vec4<u32> {
    let var_0 = select(vec2<bool>(true, true), select(vec2<bool>((arg_3 <= arg_3) & arg_0.x, false), vec2<bool>(!arg_0.x, true), all(select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, arg_0.x, arg_0.x, true)), vec4<bool>(true, true, true, true), select(vec4<bool>(arg_0.x, false, true, arg_0.x), vec4<bool>(false, true, arg_0.x, arg_0.x), true)))), !select(arg_0, arg_0, func_3()));
    var var_1 = vec3<bool>(!(-1508f >= arg_3), arg_0.x, func_3().x == (_wgslsmith_f_op_f32(-arg_1) < -860f));
    var_1 = vec3<bool>(!var_1.x, any(vec2<bool>(var_1.x, false)), !(!(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_2.x, 0i), arg_2.xy) <= (2147483647i << (u_input.a.x % 32u)))));
    let var_2 = 16031i;
    let var_3 = !var_1.zx;
    return _wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(8343u, global1[_wgslsmith_index_u32(63246u, 32u)], 20920u, 31720u), vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(18903u, 32u)], 32u)], 32u)] | u_input.d, 1u, 4294967295u, _wgslsmith_div_u32(u_input.c, global1[_wgslsmith_index_u32(u_input.d, 32u)]))), vec4<u32>(_wgslsmith_sub_u32(4294967295u, 0u) | _wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(35424u, 32u)], 4294967295u, 8858u), u_input.a.x, firstTrailingBit(abs(global1[_wgslsmith_index_u32(u_input.a.x, 32u)])), 25101u)), vec4<u32>(0u, _wgslsmith_dot_vec2_u32(abs(_wgslsmith_mod_vec2_u32(u_input.a.zz, vec2<u32>(19969u, 4294967295u))), countOneBits(vec2<u32>(u_input.c, 0u))), firstLeadingBit(global1[_wgslsmith_index_u32(u_input.d << (~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.d, 32u)], 32u)], 32u)] % 32u), 32u)]), 0u));
}

fn func_2(arg_0: vec3<f32>, arg_1: bool) -> vec4<bool> {
    var var_0 = Struct_1(-1i, arg_1, (countOneBits(~vec4<i32>(0i, 30676i, u_input.b.x, u_input.b.x)) & (vec4<i32>(-50153i, u_input.b.x, 2147483647i, u_input.b.x) >> (vec4<u32>(global1[_wgslsmith_index_u32(54802u, 32u)], 0u, u_input.c, global1[_wgslsmith_index_u32(0u, 32u)]) % vec4<u32>(32u)))) >> (func_4(func_3(), -148f, vec3<i32>(-1i) * -u_input.b, _wgslsmith_f_op_f32(-arg_0.x)) % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(reverseBits(~vec4<u32>(5583u, 0u, 99227u, 57195u)), ~(~abs(vec4<u32>(u_input.d, u_input.c, 4294967295u, 44478u)))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.zz)), vec2<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-584f - arg_0.x)))), _wgslsmith_f_op_vec2_f32(arg_0.yy - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(arg_0.xx, arg_0.zz) + _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(216f, arg_0.x))))))));
    var var_1 = ~_wgslsmith_add_u32(select(37144u, var_0.d.x, !any(vec4<bool>(arg_1, arg_1, arg_1, true))), u_input.d);
    global2 = array<Struct_1, 15>();
    var var_2 = _wgslsmith_add_vec3_u32((_wgslsmith_add_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(8574u, 32u)], 1424u, 1u) ^ u_input.a, vec3<u32>(0u, var_0.d.x, global1[_wgslsmith_index_u32(var_0.d.x, 32u)])) | u_input.a) ^ vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 32u)], reverseBits(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(u_input.a.x, 32u)], u_input.c)), _wgslsmith_sub_u32(~70014u, u_input.a.x)), ~vec3<u32>(countOneBits(1u), var_0.d.x, ~77560u));
    var_1 = global1[_wgslsmith_index_u32(~0u, 32u)];
    return select(!(!select(vec4<bool>(var_0.b, var_0.b, arg_1, false), !vec4<bool>(false, arg_1, true, var_0.b), vec4<bool>(true, arg_1, var_0.b, arg_1))), vec4<bool>(all(func_3()), true, arg_1, any(vec2<bool>(arg_1, true))), true);
}

fn func_1() -> f32 {
    let var_0 = vec3<bool>(true, all(vec3<bool>(true, true, true)), true);
    global3 = array<Struct_1, 15>();
    var var_1 = func_2(vec3<f32>(110f, _wgslsmith_f_op_f32(floor(2622f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(923f, _wgslsmith_f_op_f32(-984f - 898f)))), true);
    let var_2 = u_input.b >> (u_input.a % vec3<u32>(32u));
    global3 = array<Struct_1, 15>();
    return -253f;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 15>();
    var var_0 = vec4<u32>(min(countOneBits(u_input.a.x), ~(~(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(43284u, 32u)], 32u)]))), global1[_wgslsmith_index_u32(55262u, 32u)], select(firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(79206u, 4294967295u, 1u, global1[_wgslsmith_index_u32(u_input.c, 32u)]), vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(40284u, 32u)], u_input.a.x, 21557u))) ^ global1[_wgslsmith_index_u32(~(~28488u), 32u)], ~(~_wgslsmith_dot_vec3_u32(u_input.a, u_input.a)), all(select(vec2<bool>(true, true), vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(false, true), true)))), _wgslsmith_dot_vec4_u32(vec4<u32>(53041u, 0u, 10652u, _wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(1u, 32u)], 0u, select(4294967295u, u_input.d, false))), abs(vec4<u32>(u_input.c >> (0u % 32u), global1[_wgslsmith_index_u32(0u, 32u)] >> (42694u % 32u), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.d, 32u)], 32u)] >> (37716u % 32u), u_input.a.x >> (u_input.d % 32u)))));
    let var_1 = true;
    let var_2 = max(var_0.x, _wgslsmith_div_u32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(global1[_wgslsmith_index_u32(u_input.c, 32u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.x, 32u)], 32u)]), max(~u_input.a.zz, _wgslsmith_clamp_vec2_u32(var_0.xz, u_input.a.zx, vec2<u32>(68734u, 0u)))), 32u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(select(var_0.x, 0u, var_1), var_0.x), u_input.a.x), 32u)], 32u)]));
    let var_3 = true;
    var var_4 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_1())));
    var var_5 = u_input.b.x;
    var var_6 = global3[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32(_wgslsmith_add_u32(53310u, _wgslsmith_dot_vec2_u32(~var_0.ww, var_0.xy)), _wgslsmith_add_u32(36485u, ~4294967295u)), 78633u), 15u)];
    let var_7 = var_0.yx;
    let x = u_input.a;
    s_output = StorageBuffer(func_4(!vec2<bool>(all(vec3<bool>(true, var_3, var_6.b)), true), _wgslsmith_f_op_f32(-var_6.e.x), u_input.b, var_6.e.x).yw, ~countOneBits(~(~7943i)), ~(-var_6.a) << (abs(4915u) % 32u), _wgslsmith_sub_vec4_i32(min(~var_6.c, abs(_wgslsmith_mod_vec4_i32(var_6.c, vec4<i32>(-1i, var_6.c.x, 2147483647i, -9364i)))), ~var_6.c), var_6.c.zwy);
}

