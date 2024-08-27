struct Struct_1 {
    a: vec4<bool>,
    b: vec4<f32>,
    c: vec3<u32>,
    d: f32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: i32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
    c: vec3<f32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 5> = array<i32, 5>(0i, 0i, -1i, -60738i, -1i);

var<private> global1: bool = false;

var<private> global2: array<Struct_4, 10>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: vec3<bool>) -> bool {
    global2 = array<Struct_4, 10>();
    var var_0 = u_input.a.xy;
    var_0 = ~max(_wgslsmith_mult_vec2_u32(u_input.a.xy, vec2<u32>(17916u, 62284u) >> ((vec2<u32>(var_0.x, 1u) << (u_input.a.yx % vec2<u32>(32u))) % vec2<u32>(32u))), select(abs(firstTrailingBit(vec2<u32>(0u, 1484u))), ~(~vec2<u32>(var_0.x, u_input.c)), true & !arg_0.x));
    let var_1 = Struct_1(!vec4<bool>(false, arg_0.x, arg_0.x, all(select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false), vec4<bool>(false, true, arg_0.x, arg_0.x), false))), vec4<f32>(1555f, -1631f, 800f, 205f), u_input.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -225f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1340f) - -1863f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-402f)), -1076f) - -1314f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(731f, _wgslsmith_f_op_f32(f32(-1f) * -1408f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1338f, -516f, false))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(463f * -1087f), _wgslsmith_f_op_f32(-401f - 219f)))) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -640f), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1140f, 3092f))), _wgslsmith_f_op_f32(f32(-1f) * -913f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -248f)))));
    var_0 = abs(u_input.a.zx) << (vec2<u32>(var_1.c.x, select(u_input.a.x, firstLeadingBit(u_input.c), false)) % vec2<u32>(32u));
    return _wgslsmith_f_op_f32(var_1.e.x - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.e.x)))) < 1f;
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: vec3<i32>, arg_3: f32) -> Struct_1 {
    var var_0 = !all(vec3<bool>(true, true, true));
    var var_1 = arg_0.a.xzx;
    let var_2 = 662f;
    global2 = array<Struct_4, 10>();
    var_0 = func_3(select(vec3<bool>(true, all(vec2<bool>(false, false)), _wgslsmith_f_op_f32(-753f * -1027f) <= _wgslsmith_f_op_f32(arg_0.d + arg_0.e.x)), !vec3<bool>(!arg_0.a.x, var_1.x, all(arg_0.a)), arg_0.a.yyw));
    return Struct_1(!(!(!vec4<bool>(var_1.x, var_1.x, arg_0.a.x, arg_0.a.x))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(arg_0.e + arg_0.b))), _wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(select(arg_0.c, ~vec3<u32>(arg_0.c.x, 32432u, u_input.c), !arg_0.a.xzw), ~vec3<u32>(1u, 1u, 0u)), ~(vec3<u32>(u_input.c, u_input.c, 1u) << (vec3<u32>(4294967295u, arg_0.c.x, 4294967295u) % vec3<u32>(32u))) >> (arg_0.c % vec3<u32>(32u))), arg_0.b.x, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-394f, 1000f, arg_0.b.x, arg_3)))), arg_0.b));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec4<i32>) -> f32 {
    var var_0 = global2[_wgslsmith_index_u32(arg_1.c.x, 10u)];
    var var_1 = _wgslsmith_f_op_f32(round(851f)) > var_0.a.x;
    var var_2 = vec3<i32>(14601i, _wgslsmith_dot_vec2_i32(vec2<i32>(reverseBits(var_0.b.x), _wgslsmith_dot_vec4_i32(arg_2, arg_2)), ~u_input.d.zz) ^ ~(min(2147483647i, var_0.b.x) & ~global0[_wgslsmith_index_u32(arg_1.c.x, 5u)]), _wgslsmith_mult_i32(_wgslsmith_mult_i32(_wgslsmith_div_i32(1i, -1i), -global0[_wgslsmith_index_u32(u_input.a.x, 5u)]), -15683i));
    let var_3 = _wgslsmith_f_op_vec4_f32(step(var_0.a, var_0.a));
    let var_4 = ~(1u << (_wgslsmith_mult_u32(u_input.c, ~select(1u, arg_1.c.x, arg_0.x)) % 32u));
    return _wgslsmith_f_op_f32(arg_1.d * 552f);
}

fn func_1(arg_0: Struct_4) -> Struct_1 {
    return Struct_1(select(vec4<bool>(all(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), false)), false, true, true), !vec4<bool>(true, u_input.c >= u_input.c, false, true), global0[_wgslsmith_index_u32(98550u, 5u)] <= firstLeadingBit(1i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-113f, arg_0.a.x, 1958f, -769f) + arg_0.a) * arg_0.a) - _wgslsmith_f_op_vec4_f32(-arg_0.a))), vec3<u32>(1u, u_input.a.x, u_input.c), _wgslsmith_f_op_f32(func_4(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), false), true), func_2(Struct_1(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), true), _wgslsmith_f_op_vec4_f32(arg_0.a * vec4<f32>(-397f, arg_0.a.x, -727f, -160f)), u_input.a, _wgslsmith_f_op_f32(round(-457f)), vec4<f32>(1556f, 882f, -1000f, -386f)), arg_0.b.x, ~(vec3<i32>(global0[_wgslsmith_index_u32(3160u, 5u)], u_input.d.x, global0[_wgslsmith_index_u32(u_input.c, 5u)]) & vec3<i32>(global0[_wgslsmith_index_u32(u_input.c, 5u)], -2147483647i, arg_0.b.x)), -465f), _wgslsmith_mod_vec4_i32(~vec4<i32>(-2877i, -35715i, -1i, arg_0.b.x), vec4<i32>(~global0[_wgslsmith_index_u32(57716u, 5u)], global0[_wgslsmith_index_u32(select(u_input.a.x, u_input.c, true), 5u)], 40196i, ~0i)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.x, 645f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(453f, arg_0.a.x)) - _wgslsmith_f_op_f32(arg_0.a.x * arg_0.a.x)), -591f) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-arg_0.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.x, -212f, 708f, arg_0.a.x)))))));
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_1) -> Struct_2 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-385f - func_1(global2[_wgslsmith_index_u32(75354u, 10u)]).e.x), -713f);
    let var_1 = -(~(-vec3<i32>(global0[_wgslsmith_index_u32(arg_1.c.x, 5u)] & -1i, u_input.b, arg_0.x)));
    global1 = !select(abs(~u_input.a.x) < countOneBits(select(0u, arg_1.c.x, arg_1.a.x)), all(select(select(arg_1.a.yx, arg_1.a.zx, arg_1.a.x), arg_1.a.yz, select(vec2<bool>(false, arg_1.a.x), arg_1.a.yw, arg_1.a.yz))), arg_1.a.x);
    global2 = array<Struct_4, 10>();
    return Struct_2(arg_1, vec2<i32>(firstLeadingBit(_wgslsmith_dot_vec4_i32(~vec4<i32>(6840i, arg_0.x, 0i, var_1.x), _wgslsmith_add_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(u_input.c, 5u)], 16866i, arg_0.x, global0[_wgslsmith_index_u32(56522u, 5u)]), vec4<i32>(-4610i, global0[_wgslsmith_index_u32(0u, 5u)], u_input.b, var_1.x)))), _wgslsmith_dot_vec3_i32(~(-u_input.d), vec3<i32>(0i, u_input.b, -var_1.x))), func_2(arg_1, firstLeadingBit(var_1.x), ~abs(firstTrailingBit(vec3<i32>(var_1.x, -13978i, var_1.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(696f - 732f))))), Struct_1(arg_1.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(arg_1.e, arg_1.e, func_1(Struct_4(vec4<f32>(-661f, -664f, var_0.x, arg_1.d), vec4<i32>(var_1.x, var_1.x, 0i, global0[_wgslsmith_index_u32(1u, 5u)]))).a)) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_1.e), vec4<f32>(-138f, arg_1.e.x, 293f, var_0.x))), _wgslsmith_sub_vec3_u32(arg_1.c >> (u_input.a % vec3<u32>(32u)), arg_1.c ^ arg_1.c) & _wgslsmith_mult_vec3_u32(u_input.a, ~vec3<u32>(arg_1.c.x, 0u, u_input.a.x)), var_0.x, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(652f, 1081f, arg_1.d, 113f)) - _wgslsmith_div_vec4_f32(vec4<f32>(arg_1.d, 405f, 243f, arg_1.e.x), arg_1.b)), arg_1.e)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(!any(select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false)), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false)), true)), true);
    let var_1 = func_5(vec3<i32>(~(global0[_wgslsmith_index_u32(u_input.c, 5u)] ^ -3435i) ^ 2147483647i, global0[_wgslsmith_index_u32(34864u, 5u)], ~min(u_input.d.x & 50351i, _wgslsmith_add_i32(u_input.d.x, u_input.b))), func_1(Struct_4(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(1624f, 593f, -774f, -1015f) - vec4<f32>(1000f, -1000f, -279f, -1634f)), _wgslsmith_div_vec4_f32(vec4<f32>(241f, 240f, 689f, -1239f), vec4<f32>(1045f, 1000f, 1292f, -771f)))), abs(vec4<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 5u)], global0[_wgslsmith_index_u32(0u, 5u)], u_input.b, 1i)))));
    var var_2 = Struct_3(Struct_1(select(func_5(vec3<i32>(u_input.d.x, global0[_wgslsmith_index_u32(1u, 5u)], u_input.d.x) | vec3<i32>(global0[_wgslsmith_index_u32(var_1.d.c.x, 5u)], global0[_wgslsmith_index_u32(u_input.c, 5u)], var_1.b.x), Struct_1(vec4<bool>(false, var_0.x, var_1.d.a.x, var_0.x), vec4<f32>(var_1.a.e.x, 1989f, var_1.a.b.x, var_1.d.d), vec3<u32>(u_input.c, u_input.c, 1u), 663f, vec4<f32>(var_1.a.e.x, 547f, -542f, var_1.a.e.x))).d.a, vec4<bool>(all(var_1.a.a.www), var_1.a.a.x | false, !var_1.a.a.x, true), var_0.x), _wgslsmith_f_op_vec4_f32(-var_1.a.e), u_input.a, 471f, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.a.e) - vec4<f32>(1893f, var_1.a.b.x, var_1.a.e.x, var_1.d.d)), func_2(Struct_1(vec4<bool>(var_0.x, false, var_1.d.a.x, false), vec4<f32>(-479f, -1189f, var_1.d.b.x, 657f), vec3<u32>(17644u, var_1.d.c.x, 8290u), var_1.a.d, vec4<f32>(1000f, var_1.a.e.x, var_1.a.d, var_1.d.b.x)), ~(-21545i), vec3<i32>(global0[_wgslsmith_index_u32(76u, 5u)], global0[_wgslsmith_index_u32(var_1.a.c.x, 5u)], u_input.d.x), _wgslsmith_f_op_f32(250f + 173f)).e)), 18465i << (_wgslsmith_mult_u32(~0u, min(u_input.c, 1u) | _wgslsmith_dot_vec2_u32(vec2<u32>(106170u, u_input.c), var_1.d.c.xy)) % 32u), global0[_wgslsmith_index_u32(~(~_wgslsmith_mod_u32(4294967295u, var_1.a.c.x) ^ u_input.c), 5u)]);
    let var_3 = ~_wgslsmith_clamp_vec2_u32(u_input.a.xy ^ abs(vec2<u32>(72250u, var_1.a.c.x)), _wgslsmith_div_vec2_u32(vec2<u32>(20337u, u_input.c), vec2<u32>(u_input.a.x, var_2.a.c.x)), func_1(Struct_4(var_2.a.b, vec4<i32>(global0[_wgslsmith_index_u32(var_1.c.c.x, 5u)], global0[_wgslsmith_index_u32(17651u, 5u)], var_2.c, 87331i))).c.yy) | abs(vec2<u32>(_wgslsmith_mult_u32(4294967295u, var_1.d.c.x) | _wgslsmith_sub_u32(var_1.d.c.x, var_1.d.c.x), 4294967295u));
    var var_4 = Struct_3(var_2.a, var_1.b.x, _wgslsmith_sub_i32(-_wgslsmith_dot_vec4_i32(-vec4<i32>(-1i, 51452i, 2343i, 28246i), ~vec4<i32>(global0[_wgslsmith_index_u32(var_3.x, 5u)], global0[_wgslsmith_index_u32(var_2.a.c.x, 5u)], -2147483647i, -13475i)), var_1.b.x));
    global1 = all(vec4<bool>(true, true, func_3(!vec3<bool>(var_2.a.a.x, var_0.x, var_4.a.a.x)) != true, true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(var_4.a.d - 1311f), var_2.a.b.x, _wgslsmith_div_f32(-1014f, 1438f), var_4.a.b.x))))), _wgslsmith_f_op_vec4_f32(var_4.a.b + vec4<f32>(_wgslsmith_f_op_f32(-var_1.d.b.x), -994f, var_1.d.d, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.c.e.x), _wgslsmith_f_op_f32(-var_2.a.d))))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(331f, var_1.d.d, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(var_4.a.b.x)), _wgslsmith_f_op_f32(-var_2.a.e.x)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_4.a.e.yxx + vec3<f32>(var_1.c.b.x, var_2.a.e.x, -1000f)) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1.a.b.x, 546f, var_1.d.e.x), vec3<f32>(-678f, var_2.a.d, -433f)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(var_1.a.b.xww - var_4.a.e.xxw), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a.e.x, var_1.c.e.x, 395f)))))))), ~(~func_2(func_1(Struct_4(var_1.c.b, vec4<i32>(u_input.b, u_input.d.x, var_2.c, var_4.b))), var_4.c & -5627i, vec3<i32>(-490i, u_input.d.x, global0[_wgslsmith_index_u32(0u, 5u)]), _wgslsmith_f_op_f32(-var_1.d.b.x)).c.yz));
}

