struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1429f;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec4<i32>) -> vec2<bool> {
    global0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1672f)), _wgslsmith_f_op_f32(1f * -1429f)))));
    var var_0 = Struct_1(vec3<i32>(-2147483647i, ~_wgslsmith_clamp_i32(_wgslsmith_mod_i32(u_input.a, 2147483647i), abs(arg_0.x), -2147483647i ^ arg_0.x), firstTrailingBit(-9969i ^ _wgslsmith_dot_vec3_i32(arg_0.wzz, vec3<i32>(-25737i, 38371i, 5111i)))), true, vec4<u32>(countOneBits(firstLeadingBit(~24270u)), u_input.b.x | ~u_input.b.x, u_input.b.x, ~_wgslsmith_add_u32(1u, ~u_input.c)), vec3<u32>(u_input.c, _wgslsmith_dot_vec2_u32(vec2<u32>(min(u_input.b.x, 7560u), u_input.b.x | u_input.c), u_input.b), select(~u_input.c, u_input.b.x, _wgslsmith_f_op_f32(104f * 1758f) <= _wgslsmith_f_op_f32(trunc(660f)))));
    var var_1 = -2864f;
    var var_2 = reverseBits(arg_0.zxy) & -firstTrailingBit(vec3<i32>(select(-9059i, arg_0.x, var_0.b), abs(2147483647i), 1i));
    var_0 = Struct_1(_wgslsmith_add_vec3_i32(~(~_wgslsmith_add_vec3_i32(vec3<i32>(-26446i, -33899i, -39210i), var_0.a)), firstLeadingBit(vec3<i32>(_wgslsmith_dot_vec2_i32(var_0.a.yx, vec2<i32>(u_input.a, -19774i)), arg_0.x, var_2.x))), any(!(!(!vec2<bool>(true, var_0.b)))), firstLeadingBit(vec4<u32>(0u, u_input.b.x, ~(~var_0.d.x), ~4294967295u)), vec3<u32>(u_input.b.x, _wgslsmith_add_u32(~(35305u ^ u_input.c), u_input.b.x), u_input.b.x));
    return select(vec2<bool>(true, !var_0.b), vec2<bool>(true || all(!vec3<bool>(false, true, var_0.b)), any(select(select(vec3<bool>(false, var_0.b, true), vec3<bool>(false, false, true), var_0.b), vec3<bool>(true, true, true), true))), select(!select(vec2<bool>(var_0.b, true), vec2<bool>(true, true), select(vec2<bool>(false, var_0.b), vec2<bool>(false, var_0.b), true)), vec2<bool>(any(vec2<bool>(true, true)), var_0.b), true));
}

fn func_2(arg_0: i32, arg_1: vec2<i32>, arg_2: vec3<i32>, arg_3: bool) -> u32 {
    var var_0 = ~_wgslsmith_div_u32(~firstTrailingBit(u_input.c), 4294967295u);
    let var_1 = Struct_1(~vec3<i32>(arg_0, u_input.a ^ -1i, arg_0), all(select(vec2<bool>(!arg_3, arg_3), !select(vec2<bool>(false, true), vec2<bool>(arg_3, true), vec2<bool>(arg_3, arg_3)), !func_3(vec4<i32>(arg_2.x, arg_0, u_input.a, arg_2.x)))), ~(vec4<u32>(u_input.b.x, u_input.b.x, 55740u, 0u) ^ vec4<u32>(6965u, u_input.c, u_input.b.x, 4294967295u)) >> (vec4<u32>(1u, u_input.b.x, firstLeadingBit(u_input.b.x >> (22150u % 32u)), _wgslsmith_add_u32(select(u_input.b.x, 4294967295u, arg_3), 98521u)) % vec4<u32>(32u)), min(min(~select(vec3<u32>(4294967295u, u_input.c, 4294967295u), vec3<u32>(u_input.c, 1u, 11334u), arg_3), vec3<u32>(~1u, countOneBits(u_input.c), 37666u)), ~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b.x, u_input.c, u_input.b.x), vec3<u32>(u_input.c, u_input.b.x, u_input.b.x))));
    let var_2 = var_1.b;
    var_0 = var_1.d.x;
    var var_3 = Struct_1(vec3<i32>(20363i, select(_wgslsmith_mod_i32(-1i, -arg_2.x), arg_1.x << ((27797u << (1u % 32u)) % 32u), true), ~var_1.a.x), (1i >= u_input.a) | true, vec4<u32>(4294967295u, _wgslsmith_dot_vec2_u32(~var_1.d.xx, vec2<u32>(u_input.b.x, 4294967295u)), ~27572u & (var_1.d.x | var_1.d.x), u_input.b.x) >> (_wgslsmith_add_vec4_u32(countOneBits(firstTrailingBit(vec4<u32>(1u, 413u, 29321u, u_input.b.x))), countOneBits(vec4<u32>(0u, u_input.c, var_1.d.x, 0u))) % vec4<u32>(32u)), abs(var_1.d >> (~var_1.c.zxx % vec3<u32>(32u))));
    return var_3.d.x;
}

fn func_1(arg_0: Struct_1) -> f32 {
    var var_0 = select(!vec2<bool>(false, arg_0.b), select(!select(!vec2<bool>(arg_0.b, arg_0.b), select(vec2<bool>(arg_0.b, arg_0.b), vec2<bool>(arg_0.b, false), vec2<bool>(false, true)), !arg_0.b), !select(select(vec2<bool>(false, false), vec2<bool>(false, false), true), vec2<bool>(true, true), vec2<bool>(arg_0.b, arg_0.b)), !(!any(vec2<bool>(true, false)))), true);
    var var_1 = arg_0;
    var var_2 = vec2<i32>(13750i ^ (reverseBits(max(arg_0.a.x, 1078i)) >> (func_2(~u_input.a, _wgslsmith_mod_vec2_i32(var_1.a.zy, arg_0.a.yy), vec3<i32>(-41201i, 2147483647i, u_input.a), true) % 32u)), _wgslsmith_sub_i32(arg_0.a.x, 2147483647i));
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -798f) - -947f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -590f))))), -2028f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * _wgslsmith_f_op_f32(325f - _wgslsmith_f_op_f32(517f * -997f))));
    let var_4 = var_2.x;
    return _wgslsmith_f_op_f32(-1404f * _wgslsmith_f_op_f32(abs(var_3.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b;
    let var_1 = false;
    let var_2 = var_1;
    let var_3 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(383f * 1371f), -647f, _wgslsmith_f_op_f32(715f * -164f), _wgslsmith_f_op_f32(func_1(Struct_1(vec3<i32>(-1i, u_input.a, 1i), var_1, vec4<u32>(69225u, u_input.b.x, 4294967295u, 4294967295u), vec3<u32>(11634u, 1u, 4294967295u))))))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-603f, 928f, 643f, 2762f), vec4<f32>(1954f, 761f, -1115f, 1000f), vec4<bool>(false, var_1, var_2, var_1))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-632f, 1000f, -727f, -187f), vec4<f32>(995f, -703f, 1780f, 564f), vec4<bool>(var_2, true, true, var_2))), _wgslsmith_f_op_vec4_f32(vec4<f32>(2516f, -888f, -893f, -733f) - vec4<f32>(1000f, -1512f, -426f, -110f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + vec4<f32>(1741f, -400f, 1000f, 665f)))))));
    var var_4 = Struct_1(vec3<i32>(u_input.a, _wgslsmith_add_i32(-(u_input.a << (var_0.x % 32u)), -u_input.a >> (~65081u % 32u)), _wgslsmith_add_i32(u_input.a | (24848i & u_input.a), max(u_input.a, ~29043i))), !var_1, ~_wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(u_input.c, u_input.b.x), min(var_0.x, u_input.c), ~u_input.b.x, 0u), vec4<u32>(u_input.c, _wgslsmith_mult_u32(u_input.c, u_input.b.x), _wgslsmith_mod_u32(u_input.b.x, var_0.x), 1u)), vec3<u32>(_wgslsmith_div_u32(u_input.c, abs(4294967295u)), 43877u, 4294967295u) >> (vec3<u32>(u_input.c, (28884u ^ u_input.b.x) ^ (53427u >> (u_input.c % 32u)), ~var_0.x) % vec3<u32>(32u)));
    var var_5 = ~(~_wgslsmith_sub_vec2_u32(vec2<u32>(var_0.x, u_input.c) ^ vec2<u32>(4294967295u, var_0.x), u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(u_input.a, _wgslsmith_add_i32(reverseBits(-4364i), -u_input.a)) | _wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(abs(vec2<i32>(1i, u_input.a)), vec2<i32>(15566i, 2147483647i)), _wgslsmith_div_vec2_i32(firstTrailingBit(var_4.a.yz), -var_4.a.zy)));
}

