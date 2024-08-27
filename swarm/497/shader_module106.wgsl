struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: vec3<bool>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(vec3<i32>(1i, -66811i, i32(-2147483648)), -571f, vec3<bool>(false, false, false), vec2<f32>(-474f, 824f)), Struct_1(vec3<i32>(-33156i, 1i, 0i), 1355f, vec3<bool>(true, true, true), vec2<f32>(1605f, -1497f)), Struct_1(vec3<i32>(1i, -10538i, -16619i), 1000f, vec3<bool>(false, false, true), vec2<f32>(-1593f, -548f)), Struct_1(vec3<i32>(2147483647i, -1i, 34244i), 781f, vec3<bool>(false, true, false), vec2<f32>(-1163f, -536f)), Struct_1(vec3<i32>(-46159i, -15751i, 0i), 226f, vec3<bool>(true, true, false), vec2<f32>(-303f, -299f)), Struct_1(vec3<i32>(2147483647i, -44692i, 2147483647i), 258f, vec3<bool>(false, false, false), vec2<f32>(652f, -268f)), Struct_1(vec3<i32>(29244i, -14148i, -23340i), 138f, vec3<bool>(false, true, true), vec2<f32>(1313f, -1000f)), Struct_1(vec3<i32>(1i, 0i, -1i), 456f, vec3<bool>(false, false, false), vec2<f32>(-501f, 1169f)), Struct_1(vec3<i32>(0i, -4558i, -1i), 752f, vec3<bool>(false, true, false), vec2<f32>(1156f, -302f)), Struct_1(vec3<i32>(i32(-2147483648), -20190i, 30006i), -291f, vec3<bool>(false, false, true), vec2<f32>(1041f, -1088f)), Struct_1(vec3<i32>(-1i, 24698i, -20771i), 1378f, vec3<bool>(true, true, false), vec2<f32>(626f, 357f)), Struct_1(vec3<i32>(2147483647i, 30786i, 1i), -961f, vec3<bool>(true, true, false), vec2<f32>(1114f, -2313f)), Struct_1(vec3<i32>(42500i, 32953i, -42839i), 240f, vec3<bool>(false, true, false), vec2<f32>(-203f, -933f)), Struct_1(vec3<i32>(1i, 0i, -19142i), 320f, vec3<bool>(false, true, false), vec2<f32>(-1034f, -728f)), Struct_1(vec3<i32>(35723i, -1i, -27875i), -1023f, vec3<bool>(true, true, true), vec2<f32>(-531f, -2728f)), Struct_1(vec3<i32>(-8038i, -18610i, 2147483647i), -856f, vec3<bool>(true, false, false), vec2<f32>(1291f, -365f)), Struct_1(vec3<i32>(-1i, 2147483647i, 12316i), -553f, vec3<bool>(true, true, false), vec2<f32>(109f, 1790f)), Struct_1(vec3<i32>(2147483647i, 0i, -7675i), 301f, vec3<bool>(true, false, false), vec2<f32>(254f, 1217f)), Struct_1(vec3<i32>(1i, 57291i, i32(-2147483648)), 739f, vec3<bool>(false, false, false), vec2<f32>(1000f, -685f)), Struct_1(vec3<i32>(-79170i, 1i, -1i), -1000f, vec3<bool>(true, true, true), vec2<f32>(546f, -284f)));

var<private> global1: vec2<u32> = vec2<u32>(939u, 54680u);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec4<i32>, arg_2: Struct_1) -> vec3<f32> {
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -1000f, arg_2.d.x)) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, -1042f, arg_0.x) * vec3<f32>(907f, arg_0.x, arg_0.x))), vec3<f32>(2654f, 1196f, -747f))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), -661f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-762f - arg_0.x) * -372f), _wgslsmith_f_op_f32(f32(-1f) * -813f)))));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: Struct_1) -> vec2<u32> {
    var var_0 = arg_2;
    let var_1 = vec2<u32>(13350u, ~(~max(1u, 60633u) ^ ~global1.x));
    let var_2 = ~var_0.a.x;
    var_0 = Struct_1(vec3<i32>(-1i) * -var_0.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(839f, arg_0.x, var_0.c.x)), -1235f)) + _wgslsmith_f_op_f32(max(-806f, arg_3.d.x))), var_0.b)), select(var_0.c, vec3<bool>(true, !var_0.c.x, var_0.c.x), arg_3.c.x), _wgslsmith_f_op_vec2_f32(select(arg_3.d, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.x, -357f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-922f, var_0.d.x))))), !(!all(vec2<bool>(false, var_0.c.x))))));
    let var_3 = _wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(abs(firstLeadingBit(vec4<u32>(45886u, 1u, 22036u, global1.x))), vec4<u32>(61154u >> (u_input.c % 32u), abs(var_1.x), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, global1.x, 4294967295u), vec3<u32>(global1.x, global1.x, var_1.x)), var_1.x) ^ ~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 1756u, 0u, 54086u), vec4<u32>(global1.x, var_1.x, 67309u, 57210u))), _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(var_1, var_1), 48631u, ~(u_input.a >> (var_1.x % 32u)), 66939u), vec4<u32>(13227u, ~_wgslsmith_sub_u32(12663u, u_input.a), u_input.d, var_1.x)));
    return (var_1 & ~((vec2<u32>(global1.x, var_3.x) | var_3.zw) | vec2<u32>(global1.x, 43148u))) | select(_wgslsmith_clamp_vec2_u32(~(var_1 << (vec2<u32>(var_1.x, 14152u) % vec2<u32>(32u))), min(var_3.xy >> (var_1 % vec2<u32>(32u)), var_3.wx), abs(_wgslsmith_div_vec2_u32(vec2<u32>(0u, global1.x), vec2<u32>(0u, global1.x)))), vec2<u32>(0u, _wgslsmith_mult_u32(var_1.x, _wgslsmith_dot_vec3_u32(var_3.yyw, vec3<u32>(4294967295u, var_3.x, var_3.x)))), var_0.c.x);
}

fn func_2(arg_0: vec3<f32>) -> bool {
    global1 = ~(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c & global1.x, u_input.c), func_3(vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), arg_0.xx, Struct_1(vec3<i32>(u_input.b, u_input.b, 0i), 228f, vec3<bool>(true, false, true), arg_0.yx), Struct_1(vec3<i32>(-26767i, u_input.e, -1i), -886f, vec3<bool>(true, false, false), arg_0.yy))) ^ ~min(func_3(vec4<f32>(arg_0.x, -868f, arg_0.x, -1967f), vec2<f32>(-1258f, arg_0.x), global0[_wgslsmith_index_u32(3296u, 20u)], Struct_1(vec3<i32>(16682i, 16546i, u_input.e), 247f, vec3<bool>(false, true, true), arg_0.zx)), vec2<u32>(1u, 27004u) ^ vec2<u32>(u_input.a, 1u)));
    var var_0 = global0[_wgslsmith_index_u32(22479u << (~(4294967295u >> (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, u_input.d), vec2<u32>(u_input.a, u_input.d)) % 32u)) % 32u), 20u)];
    global1 = max(select(~(~vec2<u32>(u_input.d, 1u)) | ~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, 26866u), vec2<u32>(19331u, 0u)), vec2<u32>(_wgslsmith_mult_u32(global1.x, firstTrailingBit(u_input.a)), 29631u), any(select(vec4<bool>(var_0.c.x, false, var_0.c.x, false), vec4<bool>(var_0.c.x, false, var_0.c.x, false), true))), _wgslsmith_mod_vec2_u32(min(_wgslsmith_add_vec2_u32(~vec2<u32>(47665u, u_input.d), reverseBits(vec2<u32>(global1.x, global1.x))), _wgslsmith_mult_vec2_u32(vec2<u32>(1u, global1.x), ~vec2<u32>(9648u, u_input.a))), vec2<u32>(99750u, 2442u << (global1.x % 32u)) ^ _wgslsmith_mod_vec2_u32(select(vec2<u32>(10119u, global1.x), vec2<u32>(global1.x, 94112u), false), vec2<u32>(1u, 4294967295u))));
    let var_1 = Struct_1(var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + arg_0.x)) + _wgslsmith_f_op_f32(floor(arg_0.x))), vec3<bool>(var_0.c.x, !all(var_0.c.yx), !var_0.c.x), arg_0.xx);
    var var_2 = Struct_1(-vec3<i32>(25577i, var_0.a.x, ~(-2147483647i)) >> ((max(vec3<u32>(1u, 23157u, global1.x), vec3<u32>(4294967295u, global1.x, u_input.d) << (vec3<u32>(u_input.d, global1.x, 30492u) % vec3<u32>(32u))) ^ (~vec3<u32>(64880u, 75304u, u_input.c) | min(vec3<u32>(u_input.d, 0u, global1.x), vec3<u32>(1u, 4294967295u, 1u)))) % vec3<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1125f))))), var_1.c, _wgslsmith_f_op_vec2_f32(-var_0.d));
    return true;
}

fn func_4(arg_0: vec3<f32>, arg_1: bool) -> u32 {
    var var_0 = ~reverseBits(_wgslsmith_mult_i32(u_input.b, u_input.b));
    let var_1 = select(select(select(!select(vec4<bool>(false, true, arg_1, true), vec4<bool>(false, false, arg_1, arg_1), vec4<bool>(arg_1, arg_1, true, true)), !select(vec4<bool>(false, true, true, arg_1), vec4<bool>(false, true, arg_1, arg_1), false), any(vec2<bool>(arg_1, arg_1))), vec4<bool>(func_2(arg_0), ~u_input.b > -u_input.b, all(select(vec4<bool>(false, arg_1, false, arg_1), vec4<bool>(arg_1, arg_1, false, arg_1), vec4<bool>(true, arg_1, true, arg_1))), u_input.e >= 0i), vec4<bool>(true, arg_1, !arg_1, true)), select(!vec4<bool>(any(vec4<bool>(arg_1, arg_1, arg_1, arg_1)), true, !arg_1, all(vec3<bool>(arg_1, true, arg_1))), select(vec4<bool>(arg_1 && false, 47968i != u_input.e, arg_1, func_2(vec3<f32>(-536f, -166f, arg_0.x))), select(select(vec4<bool>(arg_1, arg_1, true, arg_1), vec4<bool>(false, true, true, arg_1), vec4<bool>(false, arg_1, false, false)), !vec4<bool>(false, false, false, arg_1), vec4<bool>(false, false, false, arg_1)), select(select(vec4<bool>(true, false, false, false), vec4<bool>(arg_1, true, true, arg_1), arg_1), vec4<bool>(arg_1, arg_1, false, arg_1), select(arg_1, arg_1, false))), arg_1), !(!select(select(vec4<bool>(true, arg_1, true, arg_1), vec4<bool>(true, arg_1, false, arg_1), arg_1), !vec4<bool>(arg_1, false, arg_1, false), select(vec4<bool>(arg_1, arg_1, arg_1, false), vec4<bool>(arg_1, arg_1, true, true), vec4<bool>(arg_1, false, false, true)))));
    let var_2 = global0[_wgslsmith_index_u32(13312u, 20u)];
    global1 = vec2<u32>(min((~u_input.c >> (~4294967295u % 32u)) & (0u << (global1.x % 32u)), _wgslsmith_dot_vec3_u32(abs(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, global1.x, u_input.a), vec3<u32>(2212u, global1.x, global1.x))), ~(~vec3<u32>(34236u, 1u, u_input.a)))), (_wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, 0u, u_input.a, 34326u) | vec4<u32>(global1.x, 0u, global1.x, u_input.a), ~vec4<u32>(22241u, u_input.a, 4294967295u, 0u)) ^ u_input.a) & 44514u);
    let var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(arg_0.x)), arg_0.x))));
    return select(~((~u_input.d << (~3667u % 32u)) >> (global1.x % 32u)), 40588u, false);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 20>();
    var var_0 = global0[_wgslsmith_index_u32(1u, 20u)];
    var var_1 = _wgslsmith_add_vec2_u32(vec2<u32>(func_4(_wgslsmith_f_op_vec3_f32(func_1(vec2<f32>(1090f, 3241f), vec4<i32>(2147483647i, -1931i, 2147483647i, u_input.b), Struct_1(vec3<i32>(var_0.a.x, u_input.e, var_0.a.x), 1000f, var_0.c, vec2<f32>(var_0.d.x, var_0.b)))), func_2(vec3<f32>(-1959f, var_0.d.x, var_0.d.x)) & var_0.c.x), u_input.c), countOneBits(_wgslsmith_mod_vec2_u32(reverseBits(~vec2<u32>(global1.x, 4294967295u)), firstLeadingBit(~vec2<u32>(global1.x, 1u)))));
    global0 = array<Struct_1, 20>();
    var var_2 = vec2<u32>(_wgslsmith_mod_u32((~u_input.d << (_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 37333u, 47462u, 1u), vec4<u32>(47466u, 0u, global1.x, 27711u)) % 32u)) ^ u_input.c, _wgslsmith_div_u32(select(20493u, 1u, false), u_input.a)), ~_wgslsmith_mult_u32(_wgslsmith_clamp_u32(1u, var_1.x, _wgslsmith_dot_vec2_u32(vec2<u32>(global1.x, global1.x), vec2<u32>(78937u, 23129u))), _wgslsmith_add_u32(~u_input.a, abs(u_input.c))));
    var_2 = vec2<u32>(~(~_wgslsmith_mod_u32(4294967295u, global1.x)), var_2.x) & (~(~(~vec2<u32>(global1.x, 33698u))) >> (~(~select(vec2<u32>(52869u, 31814u), vec2<u32>(63583u, u_input.c), var_0.c.x)) % vec2<u32>(32u)));
    var_1 = vec2<u32>(var_1.x, var_1.x);
    let var_3 = 4294967295u;
    let var_4 = -(vec2<i32>(_wgslsmith_mod_i32(var_0.a.x, ~26741i), 0i) & _wgslsmith_add_vec2_i32(-(~vec2<i32>(u_input.b, 2147483647i)), _wgslsmith_mod_vec2_i32(var_0.a.zz >> (vec2<u32>(76395u, 8244u) % vec2<u32>(32u)), ~var_0.a.xz)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.x);
}

