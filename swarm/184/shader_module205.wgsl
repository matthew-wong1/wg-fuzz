struct Struct_1 {
    a: f32,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<f32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 6> = array<vec3<u32>, 6>(vec3<u32>(0u, 0u, 46220u), vec3<u32>(39677u, 98895u, 0u), vec3<u32>(20495u, 1u, 14183u), vec3<u32>(54549u, 4179u, 1u), vec3<u32>(4294967295u, 46436u, 42221u), vec3<u32>(1u, 22722u, 0u));

var<private> global1: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(1000f, vec2<i32>(0i, 1i)), Struct_1(-999f, vec2<i32>(i32(-2147483648), 0i)), Struct_1(-1538f, vec2<i32>(-1i, 2147483647i)), Struct_1(-540f, vec2<i32>(-11089i, 2147483647i)), Struct_1(-733f, vec2<i32>(2147483647i, 45744i)), Struct_1(506f, vec2<i32>(19364i, 1i)), Struct_1(1254f, vec2<i32>(0i, 0i)), Struct_1(1356f, vec2<i32>(1i, 3362i)), Struct_1(1317f, vec2<i32>(2147483647i, -1i)), Struct_1(1537f, vec2<i32>(21996i, -1i)), Struct_1(-914f, vec2<i32>(2147483647i, i32(-2147483648))), Struct_1(-951f, vec2<i32>(15767i, 26181i)), Struct_1(-995f, vec2<i32>(1i, 28289i)), Struct_1(650f, vec2<i32>(-16276i, -24679i)), Struct_1(180f, vec2<i32>(1i, 9399i)), Struct_1(397f, vec2<i32>(-1i, -11610i)), Struct_1(-531f, vec2<i32>(1i, -17439i)), Struct_1(-955f, vec2<i32>(-1i, -13343i)), Struct_1(-1211f, vec2<i32>(0i, -36976i)));

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec3<i32>) -> bool {
    global0 = array<vec3<u32>, 6>();
    var var_0 = select(!select(vec3<bool>(true, true, all(vec4<bool>(true, true, true, true))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), u_input.d.x != 26312i), true), select(!vec3<bool>(true, all(vec3<bool>(true, false, false)), all(vec4<bool>(false, false, true, true))), vec3<bool>((arg_0.x ^ u_input.b.x) < (2147483647i >> (u_input.c % 32u)), true, false), true), !select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)));
    global0 = array<vec3<u32>, 6>();
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(805f)))), vec2<i32>(1i, countOneBits(u_input.d.x << (u_input.c % 32u))));
    global1 = array<Struct_1, 19>();
    return true;
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec2<bool>) -> u32 {
    let var_0 = !select(vec4<bool>(!(!arg_2.x), true | (arg_2.x & false), arg_2.x, true), !vec4<bool>(func_3(vec3<i32>(arg_1.b.x, 12968i, -235i)), false, arg_2.x, true), select(select(select(vec4<bool>(false, arg_2.x, arg_2.x, arg_2.x), vec4<bool>(arg_2.x, true, arg_2.x, arg_2.x), vec4<bool>(arg_2.x, arg_2.x, arg_2.x, arg_2.x)), !vec4<bool>(arg_2.x, false, false, arg_2.x), select(vec4<bool>(false, false, false, arg_2.x), vec4<bool>(false, true, false, arg_2.x), vec4<bool>(true, arg_2.x, true, true))), vec4<bool>(any(vec4<bool>(true, false, arg_2.x, arg_2.x)), true, 58949u > u_input.a.x, arg_2.x), _wgslsmith_f_op_f32(arg_1.a * arg_1.a) == arg_1.a));
    var var_1 = arg_0.x;
    global0 = array<vec3<u32>, 6>();
    let var_2 = -vec2<i32>(countOneBits(0i), ~(~_wgslsmith_clamp_i32(arg_0.x, 0i, -1i)));
    var_1 = 0i;
    return ~(~(65423u & ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 46795u, 44508u), global0[_wgslsmith_index_u32(u_input.c, 6u)])));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = firstLeadingBit(u_input.a.x);
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_2.a))), arg_2.a, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a + arg_2.a)) * arg_2.a)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(1193f + arg_2.a), _wgslsmith_f_op_f32(-arg_2.a)))) * vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-243f)), _wgslsmith_f_op_f32(arg_2.a * -1160f)), _wgslsmith_f_op_f32(f32(-1f) * -336f))));
    var var_2 = ~abs(arg_1);
    global0 = array<vec3<u32>, 6>();
    var var_3 = select(vec2<u32>(4294967295u, 44461u), ~_wgslsmith_sub_vec2_u32(firstTrailingBit(arg_1.xy) << (min(vec2<u32>(0u, 0u), arg_1.xy) % vec2<u32>(32u)), vec2<u32>(~4294967295u, ~1u)), false);
    return Struct_1(arg_2.a, _wgslsmith_div_vec2_i32(vec2<i32>(arg_0.b.x ^ ~arg_0.b.x, -arg_0.b.x), max(vec2<i32>(arg_2.b.x, -2310i), ~vec2<i32>(-2147483647i, -5787i))));
}

fn func_5(arg_0: vec4<u32>, arg_1: u32, arg_2: Struct_1, arg_3: vec4<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_2.a, 105f), vec2<f32>(arg_2.a, arg_2.a), vec2<bool>(false, true))))), vec2<f32>(-141f, 720f))));
    global0 = array<vec3<u32>, 6>();
    var var_1 = Struct_1(_wgslsmith_f_op_f32(floor(-731f)), vec2<i32>(~u_input.d.x, _wgslsmith_clamp_i32(~_wgslsmith_mult_i32(arg_2.b.x, 1i), arg_2.b.x, arg_3.x)));
    global1 = array<Struct_1, 19>();
    var var_2 = _wgslsmith_mod_i32(reverseBits((-2147483647i | arg_3.x) & ~u_input.b.x) | -1i, var_1.b.x);
    return Struct_1(_wgslsmith_f_op_f32(floor(1f)), u_input.b);
}

fn func_1(arg_0: vec4<u32>, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: vec4<i32>) -> vec4<u32> {
    let var_0 = Struct_1(-1014f, _wgslsmith_mult_vec2_i32(vec2<i32>(0i, -20420i), vec2<i32>(firstLeadingBit(-45547i), 0i)));
    global0 = array<vec3<u32>, 6>();
    var var_1 = func_5(_wgslsmith_add_vec4_u32(~_wgslsmith_sub_vec4_u32(arg_0, vec4<u32>(u_input.a.x, 29306u, u_input.a.x, 9894u)), arg_0), 32937u, func_4(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.a, var_0.a)) + _wgslsmith_f_op_f32(f32(-1f) * -919f)), _wgslsmith_add_vec2_i32(vec2<i32>(23837i, -1i) ^ u_input.b, -vec2<i32>(arg_3.x, -14307i))), global0[_wgslsmith_index_u32(func_2(vec3<i32>(-19732i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.b.x, var_0.b.x), u_input.d.xz), u_input.b.x), arg_2, vec2<bool>(false, u_input.d.x >= var_0.b.x)), 6u)], var_0), arg_3);
    let var_2 = Struct_1(var_0.a, _wgslsmith_sub_vec2_i32(var_0.b, arg_3.zx) | _wgslsmith_mod_vec2_i32(var_0.b, ~var_0.b));
    var var_3 = arg_0.x;
    return reverseBits(arg_0 | vec4<u32>(reverseBits(arg_1.x), 22857u, 1u, ~(~u_input.c)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.d.zz;
    let var_1 = ~(~(vec4<u32>(12543u, u_input.a.x, 4294967295u, 3681u) << (_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 1u, 1u), vec4<u32>(1u, 4294967295u, u_input.c, u_input.c)) % vec4<u32>(32u)))) << (func_1(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, 1u, ~18963u, u_input.a.x), _wgslsmith_div_vec4_u32(firstTrailingBit(vec4<u32>(0u, 77637u, u_input.a.x, u_input.c)), vec4<u32>(1u, u_input.c, u_input.a.x, u_input.c))), global0[_wgslsmith_index_u32(u_input.c >> (4294967295u % 32u), 6u)], global1[_wgslsmith_index_u32(1u, 19u)], firstLeadingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d.x, 2147483647i, 2147483647i, var_0.x), firstLeadingBit(vec4<i32>(3635i, 1i, var_0.x, u_input.d.x))))) % vec4<u32>(32u));
    var_0 = vec2<i32>(~0i, -2147483647i);
    var var_2 = func_5(var_1, _wgslsmith_div_u32(0u, 15997u), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - -1000f)), vec2<i32>(-11988i, var_0.x)), firstTrailingBit(~_wgslsmith_add_vec4_i32(-vec4<i32>(u_input.b.x, u_input.d.x, u_input.d.x, u_input.d.x), vec4<i32>(u_input.b.x, -49050i, var_0.x, var_0.x))));
    global1 = array<Struct_1, 19>();
    let var_3 = _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(-(vec3<i32>(-1i) * -vec3<i32>(u_input.d.x, 1i, u_input.d.x)), _wgslsmith_add_vec3_i32(vec3<i32>(abs(u_input.b.x), 39689i, max(-33357i, var_0.x)), max(-vec3<i32>(33405i, var_2.b.x, var_0.x), select(vec3<i32>(u_input.b.x, var_0.x, var_2.b.x), vec3<i32>(var_2.b.x, u_input.d.x, -7986i), vec3<bool>(false, true, false))))), u_input.d);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, (select(~u_input.d, u_input.d, true) & u_input.d) | vec3<i32>(var_3, -58659i, _wgslsmith_sub_i32(var_2.b.x, 1i)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-952f, 2121f))) - vec2<f32>(var_2.a, var_2.a)) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.a, var_2.a) * vec2<f32>(-510f, -601f))))))), vec4<f32>(-2065f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a * -553f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(global1[_wgslsmith_index_u32(u_input.c, 19u)], global0[_wgslsmith_index_u32(64058u, 6u)], global1[_wgslsmith_index_u32(4294967295u, 19u)]).a * var_2.a) - _wgslsmith_f_op_f32(round(var_2.a))), var_2.a));
}

