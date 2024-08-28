struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: u32,
}

struct Struct_4 {
    a: f32,
    b: vec3<bool>,
    c: Struct_2,
    d: vec3<i32>,
    e: f32,
}

struct Struct_5 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec4<u32>,
    d: vec4<i32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, false);

var<private> global1: array<i32, 5> = array<i32, 5>(2147483647i, -6578i, 0i, -1i, 2147483647i);

var<private> global2: array<Struct_5, 32>;

var<private> global3: Struct_3 = Struct_3(vec3<i32>(i32(-2147483648), 1i, 20875i), 51507u);

var<private> global4: bool;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: i32, arg_3: Struct_3) -> bool {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(919f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-111f - _wgslsmith_div_f32(1133f, 1845f)) * -246f)));
    let var_1 = Struct_2(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -187f), -2343f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 - var_0) * _wgslsmith_f_op_f32(f32(-1f) * -618f)))), 50402u | ~(_wgslsmith_mult_u32(global3.b, 30889u) >> (1u % 32u)));
    var var_2 = _wgslsmith_sub_i32(global3.a.x, -20832i);
    let var_3 = any(select(select(select(!vec4<bool>(arg_1, true, true, arg_1), vec4<bool>(true, true, true, true), all(vec3<bool>(arg_1, false, arg_1))), vec4<bool>(true, var_1.b < 4294967295u, false && arg_1, any(vec2<bool>(true, global0.x))), vec4<bool>(true, !global0.x, all(vec2<bool>(arg_1, true)), arg_1)), !vec4<bool>(false, any(vec4<bool>(global0.x, false, true, arg_1)), true, false), global0.x));
    global1 = array<i32, 5>();
    return true;
}

fn func_2(arg_0: Struct_5) -> u32 {
    global0 = select(vec2<bool>(!global0.x, !func_3(global3.b, false, _wgslsmith_dot_vec4_i32(u_input.a, u_input.a), Struct_3(u_input.a.xzz, global3.b))), !select(vec2<bool>(true, true), !vec2<bool>(true, global0.x), global0.x), !select(select(!vec2<bool>(false, global0.x), !vec2<bool>(global0.x, global0.x), !vec2<bool>(global0.x, global0.x)), !select(vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, global0.x), false), true));
    let var_0 = Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(1112f, arg_0.a.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0.a.x - arg_0.a.x))) + arg_0.a.x)), select(vec3<bool>(true, true, true), vec3<bool>(global0.x, global0.x, !select(global0.x, global0.x, true)), vec3<bool>(all(!vec4<bool>(true, false, global0.x, true)), arg_0.a.x < 1269f, false && (global0.x || true))), Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1064f, arg_0.a.x, -2279f))))), reverseBits(_wgslsmith_mult_u32(select(global3.b, global3.b, false), 89144u))), _wgslsmith_div_vec3_i32(global3.a, u_input.a.wyw), -1482f);
    var var_1 = var_0.a;
    let var_2 = abs(select(_wgslsmith_add_vec2_u32(abs(vec2<u32>(global3.b, global3.b)), vec2<u32>(30654u, 18180u)) >> ((~vec2<u32>(global3.b, 4294967295u) ^ (vec2<u32>(var_0.c.b, var_0.c.b) << (vec2<u32>(global3.b, 4294967295u) % vec2<u32>(32u)))) % vec2<u32>(32u)), _wgslsmith_mod_vec2_u32(vec2<u32>(max(0u, var_0.c.b), global3.b), max(vec2<u32>(1u, 1u), max(vec2<u32>(1u, var_0.c.b), vec2<u32>(global3.b, global3.b)))), any(!vec4<bool>(false, var_0.b.x, true, true))));
    global0 = var_0.b.xz;
    return (_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(abs(vec3<u32>(43724u, var_2.x, var_0.c.b)), ~vec3<u32>(4294967295u, var_2.x, global3.b)), vec3<u32>(var_0.c.b, 4294967295u, var_2.x)) | _wgslsmith_mod_u32(~0u, 1u)) | 28372u;
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: vec2<i32>, arg_3: vec4<bool>) -> i32 {
    var var_0 = global1[_wgslsmith_index_u32(global3.b, 5u)];
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(34007u, 0u) ^ (func_2(Struct_5(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1375f, -1346f)))) | ~(~1u)), 32u)];
    var var_2 = Struct_4(_wgslsmith_f_op_f32(trunc(-490f)), select(!select(arg_3.xwy, !arg_3.xyw, vec3<bool>(global0.x, true, arg_3.x)), arg_3.ywz, any(arg_3.yyx) | true), Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1, var_1.a.x, var_1.a.x), vec3<f32>(1512f, 545f, 1655f), arg_3.yxx))))), 44423u), vec3<i32>(u_input.a.x, global1[_wgslsmith_index_u32(~global3.b, 5u)], 2147483647i), _wgslsmith_f_op_f32(max(-1425f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.a.x, arg_1)))))));
    var_1 = Struct_5(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(var_2.c.a.a.x, arg_1), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_1.a.x, 370f))) - _wgslsmith_f_op_vec2_f32(floor(var_2.c.a.a.yx)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(ceil(-1304f)))))));
    let var_3 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-411f, _wgslsmith_f_op_f32(var_1.a.x + -937f))))), select(!arg_3.wzx, !(!select(vec3<bool>(false, true, true), vec3<bool>(global0.x, arg_3.x, var_2.b.x), vec3<bool>(arg_0, true, arg_0))), var_2.b.x || false), var_2.c, _wgslsmith_clamp_vec3_i32(vec3<i32>(~(~(-7784i)), _wgslsmith_clamp_i32(abs(var_2.d.x), -18457i, countOneBits(global3.a.x)), 2771i), u_input.a.xwz, global3.a), -1706f);
    return var_2.d.x >> (70608u % 32u);
}

fn func_4(arg_0: vec3<f32>, arg_1: i32) -> bool {
    global0 = select(select(select(vec2<bool>(global0.x, true), select(!vec2<bool>(false, global0.x), vec2<bool>(global0.x, global0.x), vec2<bool>(true, false)), (global0.x && true) || false), select(!(!vec2<bool>(global0.x, global0.x)), vec2<bool>(!global0.x, !global0.x), vec2<bool>(all(vec4<bool>(global0.x, global0.x, global0.x, global0.x)), global0.x)), !vec2<bool>(any(vec3<bool>(true, false, global0.x)), true)), !vec2<bool>(all(vec2<bool>(true, true)), any(vec3<bool>(false, false, false)) != true), 240f == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(561f - -1907f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))));
    let var_0 = -abs(firstLeadingBit(~28354i));
    var var_1 = true;
    let var_2 = select(~(~vec3<u32>(global3.b, global3.b, global3.b) & _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, global3.b, 22460u), firstTrailingBit(vec3<u32>(global3.b, global3.b, 4294967295u)))), ~(~(~(~vec3<u32>(4294967295u, 4294967295u, global3.b)))), !func_3(4294967295u, global0.x, -max(u_input.a.x, -39830i), Struct_3(vec3<i32>(-2147483647i, arg_1, -1i), 1u)));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(419f, arg_0.x, arg_0.x, -829f) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(404f, -706f, -1559f, -224f), vec4<f32>(1695f, -1089f, -840f, -645f)))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(157f, -781f, arg_0.x, 228f), vec4<f32>(-277f, arg_0.x, arg_0.x, arg_0.x))))))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-609f, 1291f, 205f), vec3<f32>(2057f, 722f, -665f))) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(426f, 936f, 436f))))), func_1(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + -1019f)), global3.a.xy >> (_wgslsmith_sub_vec2_u32(vec2<u32>(109293u, global3.b), vec2<u32>(global3.b, 1u)) % vec2<u32>(32u)), vec4<bool>(select(global0.x, global0.x, global0.x), global0.x | global0.x, any(vec4<bool>(global0.x, true, true, global0.x)), !global0.x))) & global0.x;
    let var_0 = false;
    var var_1 = global3.b;
    let var_2 = vec2<bool>(!global0.x, global0.x);
    var var_3 = abs(_wgslsmith_mult_vec2_i32(~global3.a.xy, vec2<i32>(-2147483647i, u_input.a.x & _wgslsmith_sub_i32(u_input.a.x, 0i))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.x, vec3<f32>(439f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(104f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, -814f) - 989f))), (reverseBits(vec4<u32>(global3.b, global3.b, 11664u, global3.b)) | _wgslsmith_add_vec4_u32(~vec4<u32>(40979u, 4294967295u, global3.b, 41493u), vec4<u32>(58182u, 24052u, global3.b, global3.b) >> (vec4<u32>(global3.b, 1u, 52827u, global3.b) % vec4<u32>(32u)))) | _wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(93579u, global3.b, 1u, global3.b) ^ vec4<u32>(global3.b, global3.b, global3.b, 58298u), vec4<u32>(0u, 4294967295u, global3.b, global3.b)), ~vec4<u32>(78222u, global3.b, 74541u, global3.b) << (firstTrailingBit(vec4<u32>(global3.b, 4294967295u, 1962u, global3.b)) % vec4<u32>(32u))), u_input.a, ~vec4<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(116716u, global3.b), vec2<u32>(1u, 115483u)), _wgslsmith_mult_u32(global3.b & 4294967295u, max(0u, 1u)), _wgslsmith_mult_u32(2259u, ~4294967295u), global3.b & 47099u));
}

