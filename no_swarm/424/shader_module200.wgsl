struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 7>;

var<private> global1: f32 = -1144f;

var<private> global2: Struct_2 = Struct_2(0i, 23346u, vec2<i32>(32678i, 1i));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_2(arg_0: vec4<i32>) -> Struct_2 {
    global0 = array<vec4<i32>, 7>();
    return Struct_2(-firstLeadingBit(_wgslsmith_clamp_i32(u_input.c, arg_0.x & 0i, u_input.a)), ~_wgslsmith_mod_u32(4967u, global2.b), ~vec2<i32>(-1i, 16983i));
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: Struct_2, arg_3: u32) -> Struct_2 {
    global2 = Struct_2(u_input.c, _wgslsmith_sub_u32(u_input.b, 9098u), _wgslsmith_clamp_vec2_i32(arg_2.c, firstTrailingBit(vec2<i32>(u_input.a, 42385i)) ^ (vec2<i32>(arg_0.a, 0i) >> (vec2<u32>(87859u, u_input.b) % vec2<u32>(32u))), firstTrailingBit(_wgslsmith_div_vec2_i32(vec2<i32>(1i, global2.c.x) ^ arg_2.c, arg_2.c ^ arg_0.c))));
    global0 = array<vec4<i32>, 7>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1f, 1f, 1f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-406f, _wgslsmith_f_op_f32(select(337f, -2950f, false))))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -450f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(2722f)))))), vec4<u32>(13650u, ~22250u, ~12543u, 15307u));
    let var_1 = var_0;
    var var_2 = func_2(~max(global0[_wgslsmith_index_u32(global2.b, 7u)], vec4<i32>(~arg_2.a, ~u_input.a, -4350i, 0i)));
    return Struct_2(max(arg_2.a, arg_2.c.x), ~var_1.c.x, arg_2.c);
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: u32) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(679f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1542f * arg_2.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + 696f)))));
    global0 = array<vec4<i32>, 7>();
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_2.x, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(244f, arg_2.x), _wgslsmith_f_op_f32(-arg_2.x))), arg_2.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_2.wyx)))), 558f, _wgslsmith_mult_vec4_u32(~vec4<u32>(~global2.b, arg_1.b & 1u, ~arg_0, 0u), max(max(vec4<u32>(4294967295u, arg_1.b, 4294967295u, arg_1.b), ~vec4<u32>(arg_0, 4294967295u, arg_0, 1u)), abs(min(vec4<u32>(4294967295u, 4294967295u, 1u, arg_3), vec4<u32>(arg_1.b, arg_0, 0u, 4294967295u))))));
    var_0 = var_1.b;
    let var_2 = func_3(Struct_2(23459i, _wgslsmith_dot_vec4_u32(var_1.c ^ reverseBits(vec4<u32>(35104u, 4294967295u, 0u, 4294967295u)), vec4<u32>(_wgslsmith_sub_u32(6149u, global2.b), 1u, 10447u, global2.b)), ~firstLeadingBit(~arg_1.c)), select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(777f, var_1.a.x))) < -1181f, true, var_1.c.x >= _wgslsmith_mod_u32(var_1.c.x | var_1.c.x, 4294967295u)), func_2(vec4<i32>(countOneBits(global2.a), global2.c.x, max(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 4580i, u_input.a), vec3<i32>(arg_1.a, 0i, arg_1.a)), arg_1.c.x), -30528i)), _wgslsmith_mod_u32(~(~var_1.c.x), arg_3));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(146f, arg_2.x, var_1.b < _wgslsmith_f_op_f32(-1225f - _wgslsmith_f_op_f32(-513f - arg_2.x)))));
}

fn func_1(arg_0: i32, arg_1: vec3<i32>) -> u32 {
    var var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -699f), _wgslsmith_f_op_f32(func_4(~max(1783u, u_input.b), func_3(func_2(global0[_wgslsmith_index_u32(global2.b, 7u)]), true, func_2(vec4<i32>(-2147483647i, arg_1.x, global2.c.x, 9274i)), u_input.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1068f, -1531f, -305f, -1773f))), global2.b)), 1f), _wgslsmith_f_op_f32(f32(-1f) * -1928f), firstLeadingBit(~vec4<u32>(u_input.b, u_input.b, 4294967295u, u_input.b) << ((min(vec4<u32>(global2.b, 4294967295u, u_input.b, 1u), vec4<u32>(global2.b, 1u, global2.b, global2.b)) | _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, u_input.b, 1u, u_input.b), vec4<u32>(global2.b, 31213u, u_input.b, u_input.b))) % vec4<u32>(32u))));
    let var_1 = var_0.c.xw;
    global0 = array<vec4<i32>, 7>();
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1026f, 432f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -398f), -1285f)))), var_0.b, _wgslsmith_mult_vec4_u32(~(~(~vec4<u32>(0u, 1u, 4294967295u, 50216u))), vec4<u32>(select(61995u, ~18466u, all(vec4<bool>(true, false, false, true))), ~global2.b ^ (global2.b << (9772u % 32u)), 0u, global2.b >> (1u % 32u))));
    global0 = array<vec4<i32>, 7>();
    return var_2.c.x;
}

fn func_5(arg_0: vec4<u32>) -> Struct_2 {
    var var_0 = !(!(!select(vec2<bool>(false, true), vec2<bool>(false, false), select(false, false, false))));
    let var_1 = var_0.x;
    global1 = _wgslsmith_f_op_f32(func_4(arg_0.x, Struct_2(global2.c.x, func_1(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -1i, global2.c.x), vec3<i32>(u_input.a, 23861i, global2.c.x)), 17959i), _wgslsmith_mult_vec3_i32(reverseBits(vec3<i32>(u_input.c, global2.c.x, 2147483647i)), select(vec3<i32>(-28141i, u_input.c, u_input.c), vec3<i32>(global2.a, global2.c.x, global2.a), var_0.x))), vec2<i32>(-firstLeadingBit(-1i), func_2(vec4<i32>(global2.c.x, -8753i, global2.c.x, -1i)).c.x)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(532f, 908f, -1999f, 1000f), vec4<f32>(1282f, -689f, 1000f, -884f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-794f, 859f, 226f, -210f)), vec4<f32>(639f, -1000f, 491f, 2124f), vec4<bool>(var_0.x, var_0.x, var_0.x, true))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-238f, 782f, -562f, -876f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-432f, 400f, -170f, -781f)))), select(!(!vec4<bool>(true, var_0.x, false, true)), select(!vec4<bool>(false, false, var_0.x, false), select(vec4<bool>(true, var_0.x, true, false), vec4<bool>(var_0.x, true, false, var_0.x), var_0.x), vec4<bool>(true, true, true, true)), all(!vec3<bool>(var_0.x, false, false))))), _wgslsmith_sub_u32(arg_0.x >> (~u_input.b % 32u), global2.b) ^ 1u));
    var_0 = !(!(!(!select(vec2<bool>(var_0.x, true), vec2<bool>(true, false), vec2<bool>(true, var_0.x)))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(313f)), -989f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -477f)))))) - _wgslsmith_f_op_f32(max(-202f, -137f)));
    return func_3(func_2(vec4<i32>(_wgslsmith_clamp_i32(-5080i, ~u_input.a, u_input.a), -global2.c.x, u_input.a ^ ~global2.a, -2147483647i)), all(select(!vec3<bool>(true, false, var_0.x), select(vec3<bool>(var_0.x, false, var_0.x), !vec3<bool>(false, var_0.x, true), all(vec3<bool>(var_0.x, false, true))), false)), func_2(-vec4<i32>(-2147483647i, ~9479i, -40577i, u_input.a)), select(global2.b, arg_0.x, false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(vec4<u32>((_wgslsmith_mod_u32(u_input.b, global2.b) << (_wgslsmith_add_u32(22344u, global2.b) % 32u)) >> (func_1(25289i, abs(vec3<i32>(u_input.c, 65132i, -12253i))) % 32u), 62376u, _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(38126u, 36338u, 28826u, global2.b), vec4<u32>(0u, global2.b, u_input.b, 63448u)) | _wgslsmith_clamp_u32(0u, u_input.b, global2.b), u_input.b, firstLeadingBit(_wgslsmith_add_u32(u_input.b, global2.b))), _wgslsmith_dot_vec2_u32(~(~vec2<u32>(u_input.b, 27963u)), vec2<u32>(global2.b, 0u >> (global2.b % 32u)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 301f, 1000f))))));
    let var_2 = all(select(vec3<bool>(true, true, true), vec3<bool>(min(global2.b, u_input.b) <= (global2.b << (var_0.b % 32u)), true, all(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true)))), select(select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), !select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false)), true)));
    var var_3 = 0i;
    let var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, 1225f, _wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + -273f)), vec4<u32>(~(_wgslsmith_sub_u32(u_input.b, 4294967295u) | 2527u), countOneBits(1u), var_0.b, global2.b));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, ~9566u, countOneBits(global2.c.x));
}

