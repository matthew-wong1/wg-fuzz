struct Struct_1 {
    a: bool,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: u32,
    d: f32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 2352u;

var<private> global1: vec3<bool> = vec3<bool>(true, false, false);

var<private> global2: Struct_1 = Struct_1(true, 46837u);

var<private> global3: array<f32, 23> = array<f32, 23>(2257f, -495f, -1629f, -272f, 1401f, 959f, 509f, 1242f, -464f, -1994f, -1000f, 963f, -663f, -1485f, 756f, 218f, 495f, 614f, 539f, -1430f, -634f, -1059f, 1350f);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: i32) -> vec4<i32> {
    var var_0 = arg_1;
    global3 = array<f32, 23>();
    global1 = select(!(!vec3<bool>(arg_1.a & arg_1.a, true, false)), vec3<bool>(global1.x, true, any(vec3<bool>(select(true, false, arg_1.a), !global2.a, false))), vec3<bool>(any(!vec4<bool>(false, false, true, global1.x)), true, !all(select(vec3<bool>(false, false, false), vec3<bool>(arg_1.a, arg_1.a, global2.a), global2.a))));
    var var_1 = any(vec4<bool>(global2.a, global2.a, true, true));
    var var_2 = !(!(global3[_wgslsmith_index_u32(global2.b, 23u)] < _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(arg_1.b, 23u)] - global3[_wgslsmith_index_u32(3043u, 23u)]), _wgslsmith_div_f32(-1591f, 660f)))));
    return vec4<i32>(0i, countOneBits(-32350i & arg_2), firstTrailingBit(_wgslsmith_dot_vec2_i32(reverseBits(-arg_0.xz), arg_0.zx)), 0i);
}

fn func_3() -> vec4<i32> {
    let var_0 = u_input.a;
    global0 = global2.b;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(step(1f, global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.b), vec2<u32>(4294967295u, 8025u)), 23u)])) <= _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1176f, _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(23235u, 23u)])), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(global2.b, 23u)] * 1497f)))), u_input.c);
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(global2.b, 23u)], global3[_wgslsmith_index_u32(0u, 23u)], -3259f, 401f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(var_1.b, 23u)], 1000f, global3[_wgslsmith_index_u32(u_input.b, 23u)], global3[_wgslsmith_index_u32(42451u, 23u)]) - vec4<f32>(1000f, global3[_wgslsmith_index_u32(var_1.b, 23u)], global3[_wgslsmith_index_u32(global2.b, 23u)], global3[_wgslsmith_index_u32(1u, 23u)])))))));
    let var_3 = vec2<i32>(var_0, ~_wgslsmith_mult_i32(abs(select(var_0, u_input.a, global2.a)), reverseBits(countOneBits(34987i))));
    return -(firstLeadingBit(vec4<i32>(_wgslsmith_sub_i32(u_input.a, var_0), ~var_0, 0i, func_2(vec3<i32>(u_input.a, 2147483647i, var_3.x), Struct_1(false, 23616u), -1i).x)) ^ vec4<i32>(_wgslsmith_clamp_i32(var_3.x, var_3.x, 1i), ~firstLeadingBit(u_input.a), ~(-1i), -u_input.a));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec3<i32>) -> vec4<i32> {
    let var_0 = Struct_1(~(~reverseBits(u_input.c)) < reverseBits(u_input.c), u_input.b);
    global0 = _wgslsmith_mult_u32(_wgslsmith_mod_u32(4294967295u, _wgslsmith_sub_u32(u_input.c, (53814u << (0u % 32u)) | var_0.b)), var_0.b);
    var var_1 = vec4<f32>(-1000f, _wgslsmith_f_op_f32(-1070f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1135f * global3[_wgslsmith_index_u32(u_input.b, 23u)]), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(global2.b, 23u)])) + -695f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.x))), _wgslsmith_f_op_f32(select(255f, 547f, (all(vec3<bool>(var_0.a, false, var_0.a)) && !global1.x) != ((global1.x && var_0.a) | var_0.a))));
    global2 = var_0;
    let var_2 = ~(_wgslsmith_clamp_i32(arg_1.x, arg_1.x, 57953i) | firstTrailingBit(arg_1.x));
    return _wgslsmith_clamp_vec4_i32(select(~(vec4<i32>(-1i) * -vec4<i32>(var_2, -2147483647i, arg_1.x, var_2)), func_2(_wgslsmith_mult_vec3_i32(arg_1, arg_1) >> (~vec3<u32>(global2.b, global2.b, 0u) % vec3<u32>(32u)), Struct_1(arg_0.x > 235f, _wgslsmith_div_u32(0u, 24931u)), -_wgslsmith_dot_vec4_i32(vec4<i32>(-21743i, -17774i, 2147483647i, var_2), vec4<i32>(-1i, var_2, arg_1.x, -2147483647i))), vec4<bool>(true, global1.x, false && any(vec4<bool>(false, true, global2.a, false)), true)), (_wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, 2657i, 2147483647i, -25855i), vec4<i32>(-2147483647i, arg_1.x, 16364i, 2147483647i)), countOneBits(vec4<i32>(2147483647i, arg_1.x, arg_1.x, 2147483647i)), min(vec4<i32>(var_2, var_2, -7592i, var_2), vec4<i32>(1i, 1i, 1i, var_2))) ^ -func_3()) & firstLeadingBit(_wgslsmith_add_vec4_i32(vec4<i32>(1i, u_input.a, 14680i, u_input.a) >> (vec4<u32>(1u, 1u, global2.b, 51149u) % vec4<u32>(32u)), vec4<i32>(var_2, -23197i, arg_1.x, u_input.a))), vec4<i32>(-1i) * -((vec4<i32>(var_2, -2147483647i, -16918i, 64303i) >> (vec4<u32>(global2.b, var_0.b, global2.b, 17155u) % vec4<u32>(32u))) << (_wgslsmith_mult_vec4_u32(vec4<u32>(0u, var_0.b, u_input.c, 49796u), vec4<u32>(var_0.b, 54004u, var_0.b, u_input.b)) % vec4<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(countOneBits(_wgslsmith_mult_vec2_u32(select(vec2<u32>(4294967295u, 0u), vec2<u32>(2687u, u_input.b), true), firstLeadingBit(vec2<u32>(global2.b, u_input.c)))), ~_wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.c, global2.b), vec2<u32>(54879u, 26563u))), vec2<u32>(~u_input.b, ~(~_wgslsmith_div_u32(65714u, 13113u))));
    let var_1 = Struct_1(false, var_0.x);
    var var_2 = vec3<i32>(~u_input.a, u_input.a, u_input.a);
    var var_3 = _wgslsmith_dot_vec4_i32(~(func_1(vec3<f32>(-992f, global3[_wgslsmith_index_u32(4294967295u, 23u)], global3[_wgslsmith_index_u32(var_0.x, 23u)]), _wgslsmith_add_vec3_i32(vec3<i32>(-32743i, u_input.a, u_input.a), vec3<i32>(u_input.a, u_input.a, u_input.a))) | firstLeadingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(0i, 19580i, u_input.a, u_input.a), vec4<i32>(46373i, u_input.a, var_2.x, var_2.x)))), vec4<i32>(_wgslsmith_sub_i32(-(~17217i), _wgslsmith_dot_vec2_i32(var_2.zz, var_2.zx)), -(~max(-20076i, u_input.a)), reverseBits(~2147483647i), var_2.x));
    var var_4 = var_1;
    var var_5 = _wgslsmith_div_vec2_i32(vec2<i32>(~0i, _wgslsmith_add_i32(u_input.a, _wgslsmith_add_i32(0i, 1i))), vec2<i32>(-(i32(-1i) * -2147483647i), -2147483647i | ~u_input.a)) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(~var_2.yy, global3[_wgslsmith_index_u32(var_1.b, 23u)], _wgslsmith_mult_u32(max(13775u, var_0.x), u_input.b), 776f, vec3<i32>(max(_wgslsmith_mod_i32(-67850i, var_2.x) >> (var_4.b % 32u), _wgslsmith_clamp_i32(0i, func_1(vec3<f32>(1069f, 764f, 1000f), vec3<i32>(var_2.x, -2147483647i, -1i)).x, _wgslsmith_add_i32(var_2.x, var_5.x))), 2147483647i, var_5.x));
}

