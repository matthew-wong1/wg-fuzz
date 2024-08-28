struct Struct_1 {
    a: i32,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: f32,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: u32,
}

struct Struct_4 {
    a: bool,
    b: bool,
    c: vec2<f32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 2147483647i;

var<private> global1: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(65953i, true, 34138u), Struct_1(-81824i, false, 4294967295u), Struct_1(14365i, true, 38754u), Struct_1(-11616i, true, 21641u), Struct_1(-3293i, true, 1u));

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: u32, arg_1: vec4<u32>, arg_2: f32, arg_3: i32) -> i32 {
    global1 = array<Struct_1, 5>();
    global0 = -2147483647i;
    global1 = array<Struct_1, 5>();
    global1 = array<Struct_1, 5>();
    var var_0 = arg_2;
    return u_input.a;
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: vec2<f32>) -> i32 {
    var var_0 = vec4<i32>(u_input.a, abs(~abs(_wgslsmith_add_i32(arg_1, arg_1))), ~_wgslsmith_clamp_i32(i32(-1i) * -arg_1, -arg_1, u_input.d.x), -20333i);
    var_0 = (~(vec4<i32>(u_input.d.x, arg_1, -1i, var_0.x) << (firstLeadingBit(vec4<u32>(38785u, u_input.b, u_input.b, u_input.b)) % vec4<u32>(32u))) << (abs(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c.x, u_input.b, 57168u, u_input.c.x), vec4<u32>(u_input.c.x, 21544u, u_input.b, u_input.c.x))) % vec4<u32>(32u))) << (select(~(~countOneBits(vec4<u32>(90561u, 0u, 4294967295u, 4294967295u))), vec4<u32>(~abs(0u), _wgslsmith_mod_u32(u_input.c.x, 737u) & 43771u, 1u, _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(0u, u_input.b)), 4294967295u, 1u)), !any(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false)))) % vec4<u32>(32u));
    let var_1 = all(vec2<bool>(true, -467f <= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(arg_0.b, arg_0.a))))));
    let var_2 = select(true, !var_1, true);
    global1 = array<Struct_1, 5>();
    return _wgslsmith_sub_i32(var_0.x, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(arg_1, ~arg_1), var_0.x, 67348i)) & -(var_0.x >> (11955u % 32u));
}

fn func_2() -> vec4<bool> {
    var var_0 = Struct_3(u_input.c.x, Struct_2(881f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-1000f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(884f))))))), 4294967295u);
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(((vec4<u32>(0u, var_0.a, u_input.b, 0u) << ((vec4<u32>(21435u, 1u, u_input.b, 1u) >> (vec4<u32>(u_input.b, 8107u, var_0.c, u_input.b) % vec4<u32>(32u))) % vec4<u32>(32u))) ^ vec4<u32>(select(1u, var_0.c, true), abs(3436u), ~u_input.b, 7760u)) & firstTrailingBit(countOneBits(vec4<u32>(u_input.b, u_input.c.x, 22929u, 93655u) & vec4<u32>(var_0.a, 1u, u_input.b, 7943u))), (~(~vec4<u32>(u_input.b, var_0.a, 39411u, u_input.b)) << (_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, var_0.a, u_input.c.x, var_0.c) & vec4<u32>(u_input.b, var_0.a, 5907u, var_0.a), vec4<u32>(var_0.a, u_input.c.x, 44741u, 0u)) % vec4<u32>(32u))) ^ vec4<u32>(~u_input.c.x, 1u, ~var_0.c, 0u)), 5u)];
    let var_2 = u_input.d.x;
    let var_3 = _wgslsmith_f_op_f32(var_0.b.b * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1197f - 1891f), -2005f));
    let var_4 = u_input.d ^ ~vec3<i32>(_wgslsmith_sub_i32(u_input.d.x, -29008i), firstLeadingBit(u_input.d.x | var_1.a), select(func_3(Struct_2(634f, var_0.b.c, var_0.b.a), -2147483647i, vec2<f32>(-333f, var_3)), func_1(var_1.c, vec4<u32>(16147u, 0u, u_input.c.x, var_0.a), var_0.b.b, -9623i), var_1.b));
    return vec4<bool>(any(vec2<bool>(true, true)) || var_1.b, var_1.b, true, !var_1.b);
}

fn func_4(arg_0: f32, arg_1: vec4<bool>) -> f32 {
    return _wgslsmith_f_op_f32(f32(-1f) * -1253f);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_4) -> Struct_1 {
    var var_0 = _wgslsmith_mult_vec2_i32(abs(arg_1.d.yy), select(arg_1.d.yx, ~_wgslsmith_clamp_vec2_i32(u_input.d.zz, u_input.d.zz, vec2<i32>(arg_1.d.x, 24600i)) | -reverseBits(vec2<i32>(2147483647i, u_input.d.x)), func_2().x));
    global0 = var_0.x;
    let var_1 = firstLeadingBit(u_input.d);
    var_0 = vec2<i32>(0i, _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.d.x, 25436i), _wgslsmith_div_vec2_i32(vec2<i32>(14251i, var_1.x), arg_1.d.yz)), _wgslsmith_dot_vec3_i32(-(~vec3<i32>(arg_1.d.x, 23301i, 74800i)), vec3<i32>(-2147483647i << (0u % 32u), 2147483647i, -var_0.x))));
    let var_2 = arg_1.d.zz;
    return Struct_1(u_input.a, ~(~(~4294967295u)) == u_input.c.x, 68666u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = vec2<u32>(~(~min(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 1u), vec4<u32>(u_input.b, u_input.c.x, 1u, u_input.b)), select(u_input.c.x, 4341u, false))), abs(0u | ~(~u_input.c.x)));
    let var_2 = vec4<i32>(_wgslsmith_mult_i32(-1i, ~func_1(~u_input.b, _wgslsmith_add_vec4_u32(vec4<u32>(0u, var_1.x, u_input.c.x, 4294967295u), vec4<u32>(u_input.c.x, 1u, u_input.c.x, var_1.x)), _wgslsmith_f_op_f32(f32(-1f) * -467f), _wgslsmith_add_i32(u_input.d.x, -10155i))), 0i, _wgslsmith_sub_i32(-1i, u_input.a), ~((func_1(543u, vec4<u32>(3502u, var_1.x, 1164u, 1u), -1000f, u_input.d.x) << (u_input.b % 32u)) | ~(~(-1i))));
    let var_3 = func_5(Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1341f))), _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(min(-486f, -1102f)), func_2()))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-505f)))), 118f), -671f), Struct_4(all(vec2<bool>(func_2().x, true)), true, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-416f, 1476f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -426f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-820f, 1000f)), select(select(vec2<bool>(true, true), vec2<bool>(false, true), false), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), any(vec2<bool>(true, true))))), var_2.xzy >> (select(~vec3<u32>(76852u, 23074u, u_input.b), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, var_1.x, 27825u), vec3<u32>(0u, 0u, 19945u)), -1i < u_input.a) % vec3<u32>(32u))));
    global0 = -u_input.d.x;
    var var_4 = Struct_2(_wgslsmith_f_op_f32(367f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * 1103f)), 553f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-262f))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))) - _wgslsmith_f_op_f32(min(964f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1000f, 645f)) * -678f)))));
    var var_5 = Struct_2(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_4.a - 146f), -1680f), _wgslsmith_f_op_f32(890f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_4.c - -223f))))), 205f, var_4.c);
    let x = u_input.a;
    s_output = StorageBuffer(min((var_2.x & u_input.a) & -34314i, func_3(Struct_2(var_4.c, _wgslsmith_f_op_f32(var_4.b * -1050f), _wgslsmith_f_op_f32(f32(-1f) * -887f)), select(~var_2.x, min(-2147483647i, 23008i), func_2().x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_4.a, var_4.c) + vec2<f32>(693f, 887f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.a, _wgslsmith_f_op_f32(step(1458f, _wgslsmith_f_op_f32(-var_5.b))), _wgslsmith_f_op_f32(var_5.b + -753f), _wgslsmith_f_op_f32(-var_5.b))));
}

