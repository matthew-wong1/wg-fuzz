struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<u32>,
    c: f32,
    d: vec3<f32>,
}

struct Struct_5 {
    a: Struct_2,
    b: i32,
    c: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -1i;

var<private> global1: array<Struct_2, 32>;

var<private> global2: array<Struct_4, 2>;

var<private> global3: array<bool, 16> = array<bool, 16>(false, false, false, false, false, false, false, false, false, true, false, true, false, true, false, true);

var<private> global4: Struct_3;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: Struct_3) -> vec2<i32> {
    var var_0 = min(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(u_input.a.x, 0u)), ~(~min(vec2<u32>(1u, 47693u), vec2<u32>(0u, 17368u)))), u_input.a.x);
    let var_1 = arg_2.b.x;
    global0 = _wgslsmith_mod_i32(2091i, -min(2147483647i, countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 17724i, 25663i, -1i), vec4<i32>(0i, 0i, 36023i, 29427i)))));
    var var_2 = _wgslsmith_mod_i32(-43890i, abs(-1i));
    var var_3 = vec2<f32>(var_1, arg_1.b.x);
    return ~(~(-(~(~vec2<i32>(-27540i, 6718i)))));
}

fn func_2(arg_0: vec2<f32>) -> i32 {
    let var_0 = 8072i;
    global3 = array<bool, 16>();
    var var_1 = true | (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2081f + _wgslsmith_f_op_f32(global4.b.x - 1000f))) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -582f))) * 1848f));
    var var_2 = select(vec3<bool>(global4.a.x, any(global4.a.wy), global4.a.x), !select(select(global4.a.xxw, vec3<bool>(global4.a.x, true, true), global4.c), global4.a.zxz, !global4.a.x), false);
    let var_3 = u_input.a.x;
    return ~_wgslsmith_dot_vec2_i32(func_3(global4.a.zw, Struct_3(vec4<bool>(true, false, true, true), global4.b, true || global4.c), Struct_3(vec4<bool>(true, true, global3[_wgslsmith_index_u32(1u, 16u)], true), vec3<f32>(303f, -426f, arg_0.x), true)), _wgslsmith_mod_vec2_i32(vec2<i32>(var_0, var_0), select(vec2<i32>(var_0, -15045i), vec2<i32>(var_0, var_0), global4.a.zz)) | (select(vec2<i32>(var_0, -10183i), vec2<i32>(var_0, var_0), vec2<bool>(false, var_2.x)) >> (vec2<u32>(var_3, u_input.a.x) % vec2<u32>(32u))));
}

fn func_4(arg_0: vec3<i32>, arg_1: vec3<i32>) -> Struct_5 {
    global2 = array<Struct_4, 2>();
    var var_0 = ~(vec2<i32>(-1i) * -_wgslsmith_mod_vec2_i32(firstLeadingBit(arg_0.xy), max(arg_1.zx, arg_1.zy)));
    global0 = _wgslsmith_dot_vec2_i32(-(~vec2<i32>(arg_0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(11987i, var_0.x, 56724i, arg_1.x), vec4<i32>(-41120i, var_0.x, 1i, 36037i)))), vec2<i32>(_wgslsmith_sub_i32(max(arg_0.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -25607i), vec2<i32>(var_0.x, arg_1.x))), func_2(_wgslsmith_f_op_vec2_f32(-global4.b.zy))), ~1i));
    var_0 = ~_wgslsmith_mult_vec2_i32(~arg_1.xz, arg_0.yz);
    var var_1 = 1u;
    return Struct_5(global1[_wgslsmith_index_u32(firstTrailingBit(~u_input.a.x ^ abs(u_input.a.x)), 32u)], _wgslsmith_mult_i32(-2147483647i, func_3(vec2<bool>(true, true), Struct_3(select(global4.a, vec4<bool>(global4.a.x, false, global4.c, false), vec4<bool>(false, true, false, global4.c)), global4.b, !global3[_wgslsmith_index_u32(101184u, 16u)]), Struct_3(select(vec4<bool>(false, global3[_wgslsmith_index_u32(11297u, 16u)], true, true), global4.a, vec4<bool>(global3[_wgslsmith_index_u32(4971u, 16u)], false, global3[_wgslsmith_index_u32(119731u, 16u)], false)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(2430f, 509f, global4.b.x)), true)).x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-2199f - -2168f))))));
}

fn func_1() -> vec2<i32> {
    global1 = array<Struct_2, 32>();
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(global4.b.x * _wgslsmith_f_op_f32(-global4.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1745f, -795f)), _wgslsmith_f_op_f32(-global4.b.x)))) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-107f, -806f, global4.b.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global4.b)))));
    let var_1 = func_4(_wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(1i, 1i, 2147483647i) << (vec3<u32>(32686u, u_input.a.x, 14460u) % vec3<u32>(32u))), select(min(vec3<i32>(-1i, -1i, -62858i), vec3<i32>(1i, 2147483647i, -40229i)), vec3<i32>(1i, 1i, -34231i), global4.a.zyz)) >> (_wgslsmith_add_vec3_u32(u_input.a.yzw, vec3<u32>(~18250u, _wgslsmith_sub_u32(u_input.a.x, u_input.a.x), min(u_input.a.x, u_input.a.x))) % vec3<u32>(32u)), _wgslsmith_mod_vec3_i32(vec3<i32>(func_2(vec2<f32>(global4.b.x, var_0.x)), _wgslsmith_sub_i32(func_3(vec2<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 16u)], false), Struct_3(global4.a, vec3<f32>(var_0.x, global4.b.x, var_0.x), false), Struct_3(vec4<bool>(true, false, false, global4.c), vec3<f32>(var_0.x, 895f, 294f), global4.a.x)).x, 1i), 2147483647i), vec3<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(-21633i, 57350i, 2147483647i), vec3<i32>(-2147483647i, 1i, -46814i)), _wgslsmith_add_i32(func_3(vec2<bool>(global3[_wgslsmith_index_u32(61402u, 16u)], true), Struct_3(global4.a, global4.b, true), Struct_3(global4.a, vec3<f32>(-1401f, var_0.x, global4.b.x), global3[_wgslsmith_index_u32(74963u, 16u)])).x, min(80609i, 1i)), -1i)));
    global1 = array<Struct_2, 32>();
    let var_2 = Struct_1(~(~reverseBits(~var_1.a.a)));
    return max(func_3(!(!global4.a.xz), Struct_3(vec4<bool>(global4.c, true, !global3[_wgslsmith_index_u32(var_2.a, 16u)], true), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(floor(global4.b)))), _wgslsmith_f_op_f32(-var_1.c) > func_4(vec3<i32>(42663i, var_1.b, var_1.b), vec3<i32>(2147483647i, var_1.b, var_1.b)).c), Struct_3(vec4<bool>(any(global4.a.yzz), u_input.a.x >= u_input.a.x, false, global4.a.x), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c, var_0.x, -257f)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.x, 1063f, 1000f))))), any(vec3<bool>(true, true, global3[_wgslsmith_index_u32(31506u, 16u)])))), abs(((vec2<i32>(var_1.b, var_1.b) >> (vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u))) | vec2<i32>(-3161i, var_1.b)) | -vec2<i32>(var_1.b, var_1.b)));
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: vec4<f32>) -> Struct_3 {
    global0 = _wgslsmith_div_i32(arg_0.x, ~11737i);
    let var_0 = Struct_1(u_input.a.x << (_wgslsmith_div_u32(0u, ~34221u) % 32u));
    let var_1 = max(_wgslsmith_div_vec4_u32(vec4<u32>(var_0.a, max(countOneBits(u_input.a.x), ~var_0.a), 9060u, ~func_4(vec3<i32>(arg_0.x, arg_0.x, 10332i), vec3<i32>(11168i, -32096i, -31401i)).a.a), u_input.a), _wgslsmith_mult_vec4_u32(countOneBits(firstLeadingBit(vec4<u32>(u_input.a.x, 78458u, u_input.a.x, 43023u))), ~(~_wgslsmith_mod_vec4_u32(u_input.a, u_input.a))));
    var var_2 = u_input.a.wx;
    global3 = array<bool, 16>();
    return Struct_3(select(!(!(!vec4<bool>(global4.a.x, false, true, global4.a.x))), !select(vec4<bool>(false, global3[_wgslsmith_index_u32(var_0.a, 16u)], global3[_wgslsmith_index_u32(15936u, 16u)], true), arg_1.a, global4.a), !global3[_wgslsmith_index_u32(var_1.x, 16u)]), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(arg_2.zwx, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.x, arg_1.b.x, -367f) + arg_1.b) * arg_1.b))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.b.x))), 509f, global4.b.x)), true);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = func_5(func_1(), Struct_3(select(select(vec4<bool>(false, false, false, global3[_wgslsmith_index_u32(1u, 16u)]), !global4.a, global4.a), vec4<bool>(true, true, global4.a.x && true, any(global4.a)), select(global4.a, select(global4.a, vec4<bool>(true, true, global4.c, true), true), vec4<bool>(global4.c, global4.a.x, false, true))), vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global4.b.x - global4.b.x), 342f, true)), 575f, -860f), global3[_wgslsmith_index_u32(reverseBits(~u_input.a.x), 16u)]), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.b.x, -2336f, global4.b.x, global4.b.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1355f, -910f, -187f, 358f) * vec4<f32>(global4.b.x, 1739f, -1000f, -448f)) * vec4<f32>(global4.b.x, global4.b.x, global4.b.x, global4.b.x)), !select(vec4<bool>(false, false, true, true), global4.a, vec4<bool>(false, false, global3[_wgslsmith_index_u32(u_input.a.x, 16u)], true)))) - vec4<f32>(-578f, _wgslsmith_f_op_f32(-global4.b.x), global4.b.x, global4.b.x)));
    global2 = array<Struct_4, 2>();
    global2 = array<Struct_4, 2>();
    let var_0 = vec2<u32>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.a.zw, firstLeadingBit(u_input.a.xz)), vec2<u32>(~u_input.a.x, _wgslsmith_dot_vec2_u32(u_input.a.wz, vec2<u32>(u_input.a.x, 22932u)))), min(u_input.a.x, 1u), _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a.zy), u_input.a.yx)), ~_wgslsmith_add_u32(~20976u, ~u_input.a.x));
    global2 = array<Struct_4, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(-1i, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.x, 34032u << (u_input.a.x % 32u), u_input.a.x), _wgslsmith_mod_vec3_u32(u_input.a.zwy, vec3<u32>(33460u, var_0.x, 0u))), vec3<u32>(28871u, _wgslsmith_dot_vec2_u32(min(var_0, vec2<u32>(u_input.a.x, 0u)), reverseBits(u_input.a.yy)), 0u)));
}

