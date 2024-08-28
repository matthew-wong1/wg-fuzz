struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: i32,
    d: vec2<f32>,
    e: u32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
    c: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<u32>,
    d: u32,
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

var<private> global0: vec4<f32>;

var<private> global1: array<vec4<i32>, 26> = array<vec4<i32>, 26>(vec4<i32>(i32(-2147483648), i32(-2147483648), 81811i, 0i), vec4<i32>(-58194i, i32(-2147483648), 0i, i32(-2147483648)), vec4<i32>(i32(-2147483648), 0i, i32(-2147483648), i32(-2147483648)), vec4<i32>(-88482i, i32(-2147483648), -4617i, 1i), vec4<i32>(-23693i, 34422i, -9628i, i32(-2147483648)), vec4<i32>(4000i, -28538i, 1i, -4123i), vec4<i32>(12685i, 2147483647i, 9118i, 1i), vec4<i32>(i32(-2147483648), -41375i, 2147483647i, 51295i), vec4<i32>(105196i, -48168i, 17218i, 44360i), vec4<i32>(6094i, 0i, -61892i, 0i), vec4<i32>(-41166i, 5248i, -3721i, -42196i), vec4<i32>(-26336i, 22526i, -13616i, -17707i), vec4<i32>(0i, -4210i, 0i, 2147483647i), vec4<i32>(70435i, -1416i, 2147483647i, 81982i), vec4<i32>(58423i, 0i, -1i, -20561i), vec4<i32>(1i, -34442i, 1i, 2147483647i), vec4<i32>(2147483647i, -1i, 53058i, 2147483647i), vec4<i32>(-4863i, -14067i, 1i, 41557i), vec4<i32>(1i, -46000i, -1i, 33875i), vec4<i32>(1i, 44696i, 56830i, i32(-2147483648)), vec4<i32>(-28161i, 38588i, i32(-2147483648), -51835i), vec4<i32>(5486i, 1i, 0i, 1i), vec4<i32>(2147483647i, -1i, -22329i, 0i), vec4<i32>(990i, 1i, -3184i, 0i), vec4<i32>(1i, -31827i, 1i, 65592i), vec4<i32>(-67634i, 0i, 2147483647i, -96531i));

var<private> global2: array<vec2<bool>, 23> = array<vec2<bool>, 23>(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec2<u32> {
    let var_0 = Struct_3(vec3<bool>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.x))) < global0.x, ~(~u_input.b) < -47734i, any(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), any(vec3<bool>(true, true, true))))), Struct_2(_wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(2637i, -29316i, 0i), u_input.a), countOneBits(u_input.a), _wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, -1i, 0i), vec3<i32>(u_input.a.x, -64502i, -11132i))) << (u_input.c % vec3<u32>(32u)), u_input.a, firstLeadingBit(18586i >> ((u_input.d ^ u_input.d) % 32u)), global0.zx, ~u_input.d), ~7576i);
    global0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1213f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -372f)), -585f, -629f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, 781f, -1597f, 2374f), vec4<f32>(668f, -362f, global0.x, global0.x)) - vec4<f32>(var_0.b.d.x, global0.x, global0.x, -1646f))) - vec4<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.d.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.x + -782f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.d.x * -757f) - _wgslsmith_f_op_f32(-global0.x))))));
    var var_1 = var_0;
    let var_2 = var_0;
    var_1 = var_2;
    return vec2<u32>(_wgslsmith_dot_vec4_u32(reverseBits((vec4<u32>(1u, var_2.b.e, var_1.b.e, 17558u) | vec4<u32>(17595u, u_input.c.x, var_2.b.e, var_2.b.e)) >> (select(vec4<u32>(29438u, 44411u, 1u, 8694u), vec4<u32>(var_1.b.e, var_1.b.e, var_0.b.e, var_0.b.e), vec4<bool>(true, var_1.a.x, var_1.a.x, var_1.a.x)) % vec4<u32>(32u))), ~_wgslsmith_add_vec4_u32(vec4<u32>(1u, var_0.b.e, var_0.b.e, 0u), reverseBits(vec4<u32>(u_input.c.x, 4294967295u, 0u, 0u)))), ~(0u & _wgslsmith_sub_u32(abs(1u), var_0.b.e)));
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: f32, arg_3: f32) -> vec3<i32> {
    let var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(-arg_3)))))));
    var var_2 = Struct_1(-41056i ^ firstTrailingBit(-1i), ~reverseBits(max(_wgslsmith_add_vec2_u32(u_input.c.zz, vec2<u32>(15325u, 60200u)), arg_0.yz << (vec2<u32>(arg_0.x, u_input.c.x) % vec2<u32>(32u)))), var_0.a.x);
    var_2 = Struct_1(var_2.a << (arg_1.b.e % 32u), ~func_3(), ((u_input.d & ~4050u) | firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, 0u), vec2<u32>(var_0.b.e, var_2.b.x)))) != 118171u);
    global2 = array<vec2<bool>, 23>();
    return vec3<i32>(1i, var_2.a, ~_wgslsmith_clamp_i32(var_2.a, min(~(-2147483647i), 35319i), countOneBits(var_0.c)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1493f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.d.x + 628f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(179f, arg_0.d.x))) + _wgslsmith_f_op_f32(-global0.x))));
    let var_1 = 0u;
    global2 = array<vec2<bool>, 23>();
    global2 = array<vec2<bool>, 23>();
    global0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(172f, arg_1.d.x, global0.x, arg_0.d.x)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.x, arg_1.d.x, 1741f, -1000f), vec4<f32>(arg_0.d.x, global0.x, arg_1.d.x, -102f))))) + vec4<f32>(1119f, 695f, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(f32(-1f) * -544f)))));
    return u_input.a.x;
}

fn func_1() -> u32 {
    var var_0 = global2[_wgslsmith_index_u32(1u >> (u_input.d % 32u), 23u)];
    var var_1 = firstTrailingBit((vec4<u32>(u_input.c.x, 4294967295u, ~u_input.d, _wgslsmith_sub_u32(u_input.c.x, u_input.d)) & max(_wgslsmith_mod_vec4_u32(vec4<u32>(33364u, u_input.d, 1u, 62479u), vec4<u32>(u_input.d, 70794u, 9236u, u_input.c.x)), vec4<u32>(u_input.d, 37385u, 1u, u_input.c.x))) >> (vec4<u32>(countOneBits(~0u), 27397u, u_input.d & _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, 1u, 30641u), vec4<u32>(9722u, u_input.c.x, 48442u, u_input.d)), ~min(u_input.c.x, 46749u)) % vec4<u32>(32u)));
    let var_2 = Struct_2(vec3<i32>(abs(u_input.b), 2147483647i, u_input.b) >> (vec3<u32>(~_wgslsmith_dot_vec2_u32(u_input.c.zy, u_input.c.xz), u_input.c.x, 4294967295u) % vec3<u32>(32u)), select(vec3<i32>(~abs(u_input.a.x), (u_input.b & u_input.a.x) ^ (2147483647i << (u_input.c.x % 32u)), 0i), abs(vec3<i32>(max(-27323i, -2147483647i), 30224i, -27891i)), !vec3<bool>(true, var_0.x, true)), firstLeadingBit(u_input.b) | func_4(Struct_2(~vec3<i32>(u_input.a.x, 1i, u_input.b), func_2(vec4<u32>(var_1.x, 0u, var_1.x, 1u), Struct_3(vec3<bool>(false, true, var_0.x), Struct_2(vec3<i32>(0i, 2147483647i, u_input.a.x), u_input.a, 22164i, global0.yw, 1u), 2147483647i), global0.x, global0.x), 27957i, global0.ww, 1u >> (u_input.c.x % 32u)), Struct_2(-vec3<i32>(u_input.a.x, u_input.b, -23055i), abs(vec3<i32>(u_input.b, 1i, u_input.a.x)), -22093i, global0.xw, 1u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(global0.wx, global0.yx, false)))) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + 502f)), global0.x)), abs(4294967295u));
    var var_3 = Struct_3(!(!select(select(vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(false, false, var_0.x), vec3<bool>(true, true, true)), select(vec3<bool>(false, false, var_0.x), vec3<bool>(true, false, var_0.x), vec3<bool>(true, true, false)), true)), var_2, abs(-8361i));
    var var_4 = Struct_1(-25718i, ~vec2<u32>(_wgslsmith_add_u32(~var_2.e, 4294967295u), 53615u), false);
    return var_4.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_clamp_u32(26850u, _wgslsmith_div_u32(u_input.c.x, ~_wgslsmith_add_u32(u_input.c.x, u_input.c.x)), _wgslsmith_mod_u32(func_1() & u_input.d, 1u));
    let var_1 = !(1592f >= global0.x);
    var var_2 = _wgslsmith_f_op_vec2_f32(select(global0.wx, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x * global0.x) - -1496f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f + global0.x) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.x))))), var_1));
    var var_3 = _wgslsmith_clamp_vec2_u32(u_input.c.xx, _wgslsmith_clamp_vec2_u32(max(reverseBits(countOneBits(vec2<u32>(80082u, u_input.d))), u_input.c.xz), u_input.c.xx, ((u_input.c.yx >> (u_input.c.yz % vec2<u32>(32u))) << (vec2<u32>(23003u, var_0) % vec2<u32>(32u))) << (~(~u_input.c.zy) % vec2<u32>(32u))), ~(~u_input.c.yy));
    var var_4 = ~max(countOneBits(min(select(vec2<u32>(50164u, 4294967295u), u_input.c.zz, vec2<bool>(false, var_1)), vec2<u32>(38604u, u_input.d))), u_input.c.xy);
    let var_5 = Struct_2(abs(func_2(vec4<u32>(var_3.x >> (0u % 32u), ~4294967295u, u_input.c.x, 56344u >> (1u % 32u)), Struct_3(!vec3<bool>(var_1, var_1, var_1), Struct_2(vec3<i32>(-20357i, u_input.b, -2147483647i), u_input.a, u_input.a.x, global0.wx, var_3.x), min(u_input.a.x, -1i)), -771f, _wgslsmith_f_op_f32(-global0.x))), ~(vec3<i32>(~u_input.a.x, ~(-2147483647i), select(-2147483647i, u_input.a.x, var_1)) & -(~vec3<i32>(u_input.b, u_input.b, u_input.b))), 0i, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(553f * -485f), var_1)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-598f + var_2.x), global0.x))), vec2<f32>(global0.x, 160f), global2[_wgslsmith_index_u32(~100330u, 23u)])), _wgslsmith_div_u32(var_4.x, ~u_input.c.x));
    let var_6 = Struct_3(vec3<bool>(-510f >= global0.x, all(!vec4<bool>(true, true, true, var_1)), var_1), Struct_2(vec3<i32>(u_input.a.x, _wgslsmith_mod_i32(func_2(vec4<u32>(var_5.e, var_4.x, 4294967295u, var_3.x), Struct_3(vec3<bool>(false, true, var_1), Struct_2(var_5.a, vec3<i32>(var_5.c, 1882i, u_input.b), u_input.b, vec2<f32>(var_2.x, global0.x), 44892u), -22497i), 1575f, 1672f).x, var_5.c), var_5.a.x), _wgslsmith_clamp_vec3_i32(var_5.b, vec3<i32>(u_input.a.x, max(-33061i, var_5.b.x), 38659i & u_input.a.x), u_input.a), var_5.b.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, var_5.d.x) - vec2<f32>(global0.x, var_5.d.x)) + _wgslsmith_f_op_vec2_f32(-var_5.d))), var_0), 1i);
    var_2 = global0.xw;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b);
}

