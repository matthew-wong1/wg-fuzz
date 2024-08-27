struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: vec4<u32>,
    d: i32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: u32,
    c: bool,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<i32, 10> = array<i32, 10>(-59633i, 0i, -36850i, 0i, 24500i, 0i, 2154i, -9521i, 0i, 1i);

var<private> global2: vec2<i32>;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: vec3<f32>) -> Struct_5 {
    global0 = countOneBits(u_input.d);
    var var_0 = Struct_3(Struct_2(arg_0.x));
    var_0 = Struct_3(var_0.a);
    let var_1 = Struct_5(Struct_4(2765f, ~u_input.b.x, true));
    let var_2 = var_0.a;
    return Struct_5(var_1.a);
}

fn func_3() -> f32 {
    let var_0 = u_input.d ^ (vec2<i32>(-1i) * -_wgslsmith_div_vec2_i32(-vec2<i32>(-2147483647i, 15638i), vec2<i32>(global2.x, -2147483647i)));
    var var_1 = u_input.d;
    global2 = min(min(_wgslsmith_mod_vec2_i32(~reverseBits(vec2<i32>(global1[_wgslsmith_index_u32(u_input.c.x, 10u)], -21258i)), vec2<i32>(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, u_input.d.x, -224i, -21281i), vec4<i32>(-6312i, 52324i, -55i, 33924i)))), u_input.d), _wgslsmith_mult_vec2_i32(vec2<i32>(~(-15748i), var_0.x >> ((u_input.c.x | 4294967295u) % 32u)), vec2<i32>(firstTrailingBit(0i), var_0.x)));
    let var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1330f), func_2(_wgslsmith_div_vec3_f32(vec3<f32>(173f, 414f, 2006f), vec3<f32>(-1000f, -109f, -1000f))).a.a)), func_2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-622f, 982f, 672f), vec3<f32>(-804f, 149f, -579f), true)))))).a.a));
    var var_3 = abs(firstLeadingBit(vec4<u32>(~1u, u_input.c.x, 1u, ~u_input.b.x)) ^ vec4<u32>(u_input.b.x, u_input.b.x, ~u_input.b.x, _wgslsmith_div_u32(u_input.b.x, 64825u) & abs(u_input.c.x)));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-2353f, _wgslsmith_div_f32(var_2, -828f)) + var_2), -613f);
}

fn func_4(arg_0: Struct_2, arg_1: f32) -> bool {
    let var_0 = Struct_5(Struct_4(_wgslsmith_div_f32(1013f, -233f), abs(1u), (_wgslsmith_f_op_f32(select(-416f, -1000f, true)) >= arg_0.a) && any(vec2<bool>(true, true))));
    let var_1 = select(vec4<bool>(true, true, true, true), select(select(!select(vec4<bool>(var_0.a.c, var_0.a.c, true, var_0.a.c), vec4<bool>(true, var_0.a.c, var_0.a.c, var_0.a.c), vec4<bool>(var_0.a.c, var_0.a.c, true, var_0.a.c)), select(!vec4<bool>(var_0.a.c, var_0.a.c, var_0.a.c, var_0.a.c), vec4<bool>(var_0.a.c, false, false, false), all(vec3<bool>(var_0.a.c, false, true))), vec4<bool>(false, any(vec2<bool>(var_0.a.c, var_0.a.c)), true || var_0.a.c, true)), !select(!vec4<bool>(true, false, var_0.a.c, var_0.a.c), vec4<bool>(true, false, true, var_0.a.c), var_0.a.c), var_0.a.c), true);
    var var_2 = Struct_2(arg_0.a);
    let var_3 = firstLeadingBit(vec2<u32>(4294967295u, 1u | var_0.a.b) ^ min(vec2<u32>(var_0.a.b, 0u) | vec2<u32>(46308u, var_0.a.b), u_input.b));
    global0 = u_input.d;
    return false;
}

fn func_1() -> Struct_1 {
    global1 = array<i32, 10>();
    var var_0 = u_input.c.x;
    var_0 = u_input.c.x;
    let var_1 = func_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1304f, 1385f, 412f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(2741f, 271f, 1000f) * vec3<f32>(-1374f, 1347f, -1749f))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1407f), _wgslsmith_f_op_f32(-661f * 798f), -1749f))), true)));
    let var_2 = vec2<bool>(all(vec2<bool>(!func_2(vec3<f32>(406f, var_1.a.a, var_1.a.a)).a.c, true)), func_4(Struct_2(-1263f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())))));
    return Struct_1(vec3<u32>(func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(932f, var_1.a.a, 346f) - vec3<f32>(var_1.a.a, var_1.a.a, var_1.a.a))).a.b, abs(firstLeadingBit(1156u)), u_input.b.x) | (u_input.c >> (~u_input.c % vec3<u32>(32u))), u_input.c.x <= ~(~56780u), select(~vec4<u32>(firstLeadingBit(93537u), var_1.a.b, _wgslsmith_dot_vec3_u32(u_input.c, u_input.c), ~u_input.b.x), vec4<u32>(~var_1.a.b, 43395u, u_input.c.x, ~var_1.a.b), var_1.a.c), -global1[_wgslsmith_index_u32(u_input.c.x, 10u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(-806f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(1023f)))) + 1358f)));
    var var_1 = func_1();
    let var_2 = global0.x;
    global1 = array<i32, 10>();
    var_1 = Struct_1(select(_wgslsmith_sub_vec3_u32(~min(vec3<u32>(1u, var_1.a.x, u_input.b.x), vec3<u32>(21196u, 4294967295u, 0u)), _wgslsmith_div_vec3_u32(vec3<u32>(57743u, u_input.c.x, 36673u), vec3<u32>(67060u, var_1.a.x, var_1.a.x))), countOneBits(vec3<u32>(var_1.c.x, 4294967295u, ~var_1.c.x)), select(!select(vec3<bool>(true, var_1.b, var_1.b), vec3<bool>(var_1.b, var_1.b, true), var_1.b), select(vec3<bool>(var_1.b, true, var_1.b), select(vec3<bool>(var_1.b, var_1.b, var_1.b), vec3<bool>(true, var_1.b, var_1.b), var_1.b), true), select(!vec3<bool>(true, true, var_1.b), vec3<bool>(var_1.b, var_1.b, var_1.b), select(vec3<bool>(var_1.b, true, true), vec3<bool>(var_1.b, false, false), true)))), true, ~(~(vec4<u32>(1u, u_input.c.x, 0u, 56454u) >> (var_1.c % vec4<u32>(32u)))) << (vec4<u32>(~u_input.c.x, u_input.c.x, _wgslsmith_sub_u32(abs(var_1.c.x), ~37692u), firstLeadingBit(~1u)) % vec4<u32>(32u)), ~(~(-global1[_wgslsmith_index_u32(28311u, 10u)])));
    var_1 = Struct_1(abs(abs(vec3<u32>(0u, min(27203u, u_input.c.x), _wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(var_1.c.x, 0u))))), false, _wgslsmith_div_vec4_u32(var_1.c, _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, var_1.c.x, 1u, var_1.c.x), ~var_1.c, min(var_1.c, vec4<u32>(101712u, var_1.a.x, u_input.c.x, u_input.c.x)))) ^ vec4<u32>(_wgslsmith_dot_vec3_u32(var_1.a, vec3<u32>(4294967295u, var_1.a.x, var_1.a.x) << (vec3<u32>(var_1.a.x, var_1.c.x, 1u) % vec3<u32>(32u))), 20958u, func_1().a.x, var_1.c.x), min(select(~(~global0.x), global2.x, false), ~(i32(-1i) * -global1[_wgslsmith_index_u32(4294967295u, 10u)])));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(20301u, ~(~(~0u))), var_1.a.xz, max(vec4<i32>(global2.x, 1i, global2.x, i32(-1i) * -2817i), vec4<i32>(global2.x, ~54199i, ~global1[_wgslsmith_index_u32(52868u, 10u)], u_input.d.x)) >> (vec4<u32>(0u, 1u, u_input.c.x, 0u) % vec4<u32>(32u)), _wgslsmith_mod_i32(-28190i, global0.x), var_1.d);
}

