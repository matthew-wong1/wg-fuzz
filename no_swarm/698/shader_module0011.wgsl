struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: vec2<f32>,
    d: vec3<f32>,
    e: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: f32,
    e: vec2<f32>,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 38796u;

var<private> global1: array<vec4<i32>, 8> = array<vec4<i32>, 8>(vec4<i32>(1i, 2147483647i, 28995i, -27636i), vec4<i32>(-12697i, 0i, 1i, 1i), vec4<i32>(-1i, 1i, 24092i, 1i), vec4<i32>(21443i, -1i, 0i, -18098i), vec4<i32>(-48125i, -14216i, 17336i, -7812i), vec4<i32>(23695i, 0i, 32692i, -38475i), vec4<i32>(1i, 0i, i32(-2147483648), 4818i), vec4<i32>(-1i, 0i, i32(-2147483648), -1i));

var<private> global2: array<Struct_3, 3>;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<f32>) -> vec4<i32> {
    var var_0 = vec3<u32>(abs(1u | _wgslsmith_mult_u32(u_input.a, u_input.a)), ~(u_input.a & 0u), _wgslsmith_clamp_u32(~min(_wgslsmith_div_u32(5609u, u_input.a), ~0u), ~u_input.a, ~(~(~u_input.a))));
    let var_1 = select(min(var_0.xz, var_0.zx), ~firstTrailingBit(vec2<u32>(var_0.x << (var_0.x % 32u), max(var_0.x, u_input.a))), !vec2<bool>(var_0.x <= (u_input.a ^ 38155u), ~79405u > ~u_input.a));
    var_0 = _wgslsmith_mult_vec3_u32(firstLeadingBit(vec3<u32>(_wgslsmith_add_u32(4294967295u, 0u) ^ (var_0.x | var_1.x), _wgslsmith_dot_vec2_u32(var_1, vec2<u32>(var_0.x, var_1.x)), 1u)), vec3<u32>(firstLeadingBit(u_input.a), 32555u, _wgslsmith_add_u32(1u, 66558u)));
    let var_2 = firstTrailingBit(-20206i);
    let var_3 = 4294967295u;
    return _wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(global1[_wgslsmith_index_u32(var_0.x, 8u)] | vec4<i32>(-1i, 2147483647i, -4915i, 1i), vec4<i32>(var_2, 27806i, var_2, var_2)), ~global1[_wgslsmith_index_u32(4294967295u, 8u)]), global1[_wgslsmith_index_u32(~abs(~96079u), 8u)]) >> (vec4<u32>(_wgslsmith_dot_vec2_u32(~(~var_0.zz), vec2<u32>(~18110u, u_input.a)), abs(firstLeadingBit(var_1.x)), 4294967295u, var_1.x) % vec4<u32>(32u));
}

fn func_2() -> Struct_3 {
    let var_0 = countOneBits(firstLeadingBit(_wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, 0i), vec2<i32>(1i, 1i))));
    let var_1 = (_wgslsmith_clamp_vec4_i32(global1[_wgslsmith_index_u32(1u, 8u)], func_3(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-554f, -952f, -152f)))), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, u_input.a), 8u)]) << (vec4<u32>(reverseBits(min(u_input.a, 10242u)), 54791u, 0u, _wgslsmith_mult_u32(59774u, u_input.a) ^ ~4294967295u) % vec4<u32>(32u))) & global1[_wgslsmith_index_u32(7681u << (_wgslsmith_mod_u32(~52546u, u_input.a) % 32u), 8u)];
    global2 = array<Struct_3, 3>();
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-618f, -317f, -719f, 2405f)) + vec4<f32>(-827f, 987f, 1440f, 1798f)) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-796f, -1518f, -486f, -117f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(569f, 193f, -735f, 936f)), true)))), true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, 1723f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 299f)), vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(-750f, 1000f) - vec2<f32>(922f, 461f)))), !select(vec2<bool>(false, true), vec2<bool>(false, true), true)))), vec3<f32>(_wgslsmith_f_op_f32(724f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-129f * 1000f) + _wgslsmith_f_op_f32(-628f + -1018f))), 249f, -197f), ~(1u & (29598u << (~u_input.a % 32u))));
    let var_3 = global2[_wgslsmith_index_u32(abs(~_wgslsmith_dot_vec4_u32(~(~vec4<u32>(var_2.e, u_input.a, var_2.e, 16207u)), firstLeadingBit(vec4<u32>(u_input.a, 1u, 4294967295u, u_input.a)))), 3u)];
    return global2[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.a, var_3.a.x), _wgslsmith_dot_vec2_u32(~var_3.a.zz, _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a >> (4294967295u % 32u), _wgslsmith_dot_vec2_u32(var_3.a.xx, vec2<u32>(u_input.a, var_2.e))), abs(var_3.a.xy), vec2<u32>(4294967295u, 11922u) | vec2<u32>(var_3.a.x, 71152u)))), 3u)];
}

fn func_4(arg_0: Struct_3) -> i32 {
    return -81046i;
}

fn func_5(arg_0: vec4<i32>) -> Struct_2 {
    var var_0 = 1u;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-546f, -277f, 274f) + vec3<f32>(1175f, 441f, -371f)))))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1905f, -561f, 1110f))))))));
    let var_2 = var_1.x;
    var var_3 = Struct_2(~(-vec2<i32>(_wgslsmith_div_i32(arg_0.x, -33769i), arg_0.x & arg_0.x)), ~_wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.x, arg_0.x), vec2<i32>(arg_0.x, 2215i)), arg_0.x, i32(-1i) * -29095i, func_4(global2[_wgslsmith_index_u32(9950u, 3u)])), arg_0 & -vec4<i32>(arg_0.x, -2147483647i, -1i, 1i)), _wgslsmith_add_vec3_i32(select(~(~vec3<i32>(arg_0.x, 26115i, arg_0.x)), vec3<i32>(-arg_0.x, 0i, -6715i), select(false, true, true)), vec3<i32>(~42317i, arg_0.x, -362i | arg_0.x)), var_1.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(ceil(var_1.xz)))) + vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(1419f)))), -188f)));
    let var_4 = _wgslsmith_f_op_f32(var_3.e.x + _wgslsmith_f_op_f32(-var_3.e.x));
    return Struct_2(vec2<i32>(_wgslsmith_add_i32(~1i, abs(var_3.a.x)), ~arg_0.x), -global1[_wgslsmith_index_u32(4294967295u, 8u)] ^ var_3.b, arg_0.zwx, _wgslsmith_div_f32(-1579f, 1036f), _wgslsmith_f_op_vec2_f32(-var_3.e));
}

fn func_1() -> i32 {
    let var_0 = vec2<i32>(1i, -2147483647i);
    global1 = array<vec4<i32>, 8>();
    let var_1 = ~_wgslsmith_div_vec4_u32(firstTrailingBit(vec4<u32>(0u, 0u, 12685u, 24431u)) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 4294967295u, 3974u, 1u), vec4<u32>(12987u, u_input.a, u_input.a, 4294967295u)), ~vec4<u32>(u_input.a, 16786u, u_input.a, 67653u) ^ ~vec4<u32>(1u, 0u, 13722u, u_input.a)) | ~abs(~(vec4<u32>(4294967295u, u_input.a, 9911u, u_input.a) | vec4<u32>(u_input.a, 0u, u_input.a, u_input.a)));
    var var_2 = func_5(vec4<i32>(var_0.x, abs(func_4(func_2())), -22554i, _wgslsmith_mod_i32(var_0.x | ~var_0.x, _wgslsmith_mod_i32(51286i, _wgslsmith_mult_i32(-10878i, var_0.x)))));
    var var_3 = func_5(var_2.b);
    return _wgslsmith_dot_vec4_i32(vec4<i32>(-25634i, 1i, var_0.x, 1i), firstLeadingBit(func_5(-select(global1[_wgslsmith_index_u32(var_1.x, 8u)], global1[_wgslsmith_index_u32(48930u, 8u)], true)).b));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<i32>, 8>();
    global0 = ~28131u;
    global1 = array<vec4<i32>, 8>();
    var var_0 = Struct_2(vec2<i32>(~(-1i), ~select(-2147483647i, -1i, true)), _wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(0i, -1i, 27326i, -2147483647i), vec4<i32>(14382i, 1i, -1i, 0i)), vec4<i32>(49577i, 3538i, 33131i, 44797i)), -(global1[_wgslsmith_index_u32(1u, 8u)] >> (vec4<u32>(0u, 4294967295u, u_input.a, 50287u) % vec4<u32>(32u))), vec4<i32>(-1i, func_1(), _wgslsmith_dot_vec2_i32(vec2<i32>(-5083i, 20313i), vec2<i32>(7849i, 1i)), ~0i)), ~(vec4<i32>(1i, 1i, 1i, 1i) ^ _wgslsmith_sub_vec4_i32(global1[_wgslsmith_index_u32(3222u, 8u)], vec4<i32>(-2147483647i, 28158i, -30190i, -1310i)))), -reverseBits(reverseBits(max(vec3<i32>(1i, 29137i, -5572i), vec3<i32>(-16622i, 2147483647i, -2147483647i)))), 782f, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-810f, 605f), vec2<f32>(897f, 509f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 910f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1471f, -1000f), vec2<f32>(-463f, -577f)))), false)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1133f, -357f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-131f, 1803f) - vec2<f32>(1000f, 831f))) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-370f, 2425f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1524f, 901f) + vec2<f32>(777f, 771f))))), vec2<bool>(true, true))));
    global2 = array<Struct_3, 3>();
    global0 = u_input.a;
    global1 = array<vec4<i32>, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(var_0.e.x, vec3<u32>(0u, 44219u, _wgslsmith_dot_vec2_u32(select(~vec2<u32>(u_input.a, u_input.a), _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 2309u), vec2<u32>(u_input.a, 1u)), vec2<bool>(true, true)), ~(vec2<u32>(100630u, 0u) ^ vec2<u32>(15761u, u_input.a)))), var_0.e.x);
}

