struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: vec4<f32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: vec2<bool>,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 14> = array<vec2<i32>, 14>(vec2<i32>(i32(-2147483648), 85706i), vec2<i32>(70875i, 14538i), vec2<i32>(-35640i, 10886i), vec2<i32>(2147483647i, 64750i), vec2<i32>(31528i, -15605i), vec2<i32>(-5589i, 20060i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(0i, 1i), vec2<i32>(-94950i, 2147483647i), vec2<i32>(14863i, -1i), vec2<i32>(i32(-2147483648), -71999i), vec2<i32>(-53777i, 2147483647i), vec2<i32>(-60639i, 35718i));

var<private> global1: i32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<f32> {
    var var_0 = Struct_3(true, Struct_1(1u, firstLeadingBit(vec4<u32>(1u, 1u, 1u, 1u) ^ _wgslsmith_clamp_vec4_u32(vec4<u32>(40072u, 9408u, 14532u, 4294967295u), vec4<u32>(14271u, 0u, 4294967295u, 10210u), vec4<u32>(113156u, 6687u, 4294967295u, 70779u))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 136f, 503f, -317f) + vec4<f32>(862f, -1000f, -1477f, -1186f)), _wgslsmith_div_vec4_f32(vec4<f32>(261f, -824f, 717f, -448f), vec4<f32>(-370f, 2536f, -1971f, -461f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(445f, -1464f, 1516f, -597f) * vec4<f32>(1271f, 287f, 552f, -1636f)))), _wgslsmith_clamp_i32(firstTrailingBit(0i), 0i, _wgslsmith_add_i32(-1i, 73600i)) << (18325u % 32u)));
    global1 = -1i;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.b.c.x, var_0.b.c.x, _wgslsmith_f_op_f32(2451f * var_0.b.c.x)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(var_0.b.c.wzy, var_0.b.c.zxy, vec3<bool>(var_0.a, false, true))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.c.x, var_0.b.c.x, var_0.b.c.x) - var_0.b.c.wwy))) - var_0.b.c.wwz)));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -383f) * 344f) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1392f - var_1.x) * -869f)));
    var_0 = Struct_3(any(!select(!vec3<bool>(false, false, var_0.a), select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), false), !var_0.a)), Struct_1(_wgslsmith_add_u32(reverseBits(var_0.b.b.x), 82127u ^ firstTrailingBit(var_0.b.b.x)), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.b.b.x, var_0.b.a, 4294967295u), vec3<u32>(116349u, 63280u, var_0.b.b.x)) ^ 0u, _wgslsmith_dot_vec2_u32(var_0.b.b.wz, ~vec2<u32>(var_0.b.b.x, var_0.b.a)), ~1u, var_0.b.a), var_0.b.c, abs(countOneBits(708i))));
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -252f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(var_1.x)), _wgslsmith_f_op_f32(f32(-1f) * -191f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x * var_0.b.c.x) - var_0.b.c.x)), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-var_1.x))));
}

fn func_2() -> vec4<u32> {
    let var_0 = Struct_2(Struct_1(0u, vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(func_3()))), abs(-2147483647i)), vec3<i32>(_wgslsmith_dot_vec3_i32(~firstTrailingBit(vec3<i32>(-1i, -2147483647i, u_input.b.x)), _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, u_input.a, 2147483647i), vec3<i32>(0i, u_input.b.x, u_input.b.x)), vec3<i32>(u_input.a, u_input.a, -2147483647i))), -1i, abs(_wgslsmith_mod_i32(7962i, -22190i) >> (1u % 32u))));
    var var_1 = var_0;
    global1 = -(~(-_wgslsmith_dot_vec3_i32(-var_0.b, var_1.b)));
    return ~vec4<u32>(0u, ~_wgslsmith_mod_u32(select(1u, 1u, false), ~var_1.a.b.x), ~(~(~4294967295u)), 0u);
}

fn func_1(arg_0: vec2<i32>, arg_1: f32, arg_2: vec3<bool>) -> i32 {
    var var_0 = Struct_1(~_wgslsmith_dot_vec2_u32(vec2<u32>(45748u, 16341u), firstTrailingBit(vec2<u32>(1u, 1880u))) & 1u, firstTrailingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), select(~vec4<u32>(4294967295u, 68205u, 29042u, 0u), abs(vec4<u32>(1u, 114338u, 4294967295u, 4294967295u)), false))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_1, 550f, -1433f, 1394f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1428f, arg_1, arg_1, -1265f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(449f, arg_1, 348f, arg_1)))), true))), 36956i & (select(firstLeadingBit(u_input.b.x), -2147483647i, false) & (_wgslsmith_mult_i32(21901i, -1952i) & _wgslsmith_add_i32(-2147483647i, arg_0.x))));
    global0 = array<vec2<i32>, 14>();
    var var_1 = _wgslsmith_mult_vec4_u32(~func_2() >> (vec4<u32>(~var_0.a, var_0.a, ~var_0.b.x, func_2().x) % vec4<u32>(32u)), vec4<u32>(0u, ~0u, _wgslsmith_add_u32(var_0.b.x, var_0.b.x), _wgslsmith_div_u32(var_0.a, var_0.b.x)) >> (_wgslsmith_sub_vec4_u32(var_0.b, var_0.b) % vec4<u32>(32u))) << (var_0.b % vec4<u32>(32u));
    global1 = countOneBits(0i);
    global0 = array<vec2<i32>, 14>();
    return var_0.d;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<i32>, 14>();
    global0 = array<vec2<i32>, 14>();
    global1 = _wgslsmith_dot_vec4_i32(vec4<i32>(~1i, u_input.a, func_1(countOneBits(~global0[_wgslsmith_index_u32(52633u, 14u)]), 790f, select(vec3<bool>(true, false, true), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), true), true)), 1i), _wgslsmith_mult_vec4_i32(~vec4<i32>(0i, u_input.b.x, 1i, u_input.b.x) ^ reverseBits(vec4<i32>(38387i, 35494i, u_input.b.x, u_input.b.x)), reverseBits(firstLeadingBit(vec4<i32>(29267i, 32742i, 1i, u_input.b.x)))) & ~(~firstLeadingBit(vec4<i32>(u_input.b.x, u_input.b.x, u_input.a, 0i))));
    var var_0 = !(!vec2<bool>(all(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), true)), true));
    var_0 = select(select(select(vec2<bool>(false, any(vec2<bool>(var_0.x, var_0.x))), select(select(vec2<bool>(var_0.x, true), vec2<bool>(var_0.x, true), vec2<bool>(var_0.x, false)), vec2<bool>(false, true), vec2<bool>(false, true)), !vec2<bool>(false, var_0.x)), vec2<bool>(true, !(var_0.x && var_0.x)), any(select(select(vec3<bool>(true, var_0.x, true), vec3<bool>(true, false, true), false), vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(false, false, false)))), vec2<bool>(!var_0.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-968f)), _wgslsmith_f_op_f32(floor(925f)))) == _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(2320f))))), vec2<bool>(false || !var_0.x, var_0.x));
    var_0 = vec2<bool>(any(vec3<bool>(any(select(vec3<bool>(true, var_0.x, true), vec3<bool>(var_0.x, false, false), var_0.x)), any(select(vec2<bool>(var_0.x, false), vec2<bool>(false, true), false)), (2147483647i > u_input.a) || true)), any(vec3<bool>(select(true, true, true), var_0.x, u_input.b.x != _wgslsmith_sub_i32(u_input.a, -22043i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-466f, -1607f, var_0.x)) - _wgslsmith_f_op_f32(round(1000f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -241f) + 522f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-1189f)), -257f)) + _wgslsmith_f_op_f32(-266f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(718f * -294f))))), -_wgslsmith_add_vec2_i32(~vec2<i32>(u_input.b.x, u_input.a), vec2<i32>(-1i, ~2147483647i)));
}

