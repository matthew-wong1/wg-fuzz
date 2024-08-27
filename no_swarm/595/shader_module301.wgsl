struct Struct_1 {
    a: vec4<u32>,
    b: vec4<bool>,
    c: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: Struct_2,
    d: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 20> = array<Struct_3, 20>(Struct_3(Struct_2(vec3<i32>(-11128i, 0i, -1i), vec4<bool>(false, false, false, true)), 47469u, Struct_2(vec3<i32>(i32(-2147483648), 15471i, 0i), vec4<bool>(false, true, true, true)), false), Struct_3(Struct_2(vec3<i32>(15942i, 2147483647i, -1i), vec4<bool>(true, false, false, false)), 1u, Struct_2(vec3<i32>(0i, 107484i, 34525i), vec4<bool>(true, false, false, true)), false), Struct_3(Struct_2(vec3<i32>(2147483647i, -1i, 2147483647i), vec4<bool>(false, false, true, false)), 32131u, Struct_2(vec3<i32>(0i, -1i, -11964i), vec4<bool>(true, false, false, true)), false), Struct_3(Struct_2(vec3<i32>(-18738i, 66548i, -2757i), vec4<bool>(true, false, false, true)), 84619u, Struct_2(vec3<i32>(-14445i, -25818i, -7645i), vec4<bool>(true, false, false, true)), true), Struct_3(Struct_2(vec3<i32>(1i, -1i, 19121i), vec4<bool>(false, true, true, false)), 61467u, Struct_2(vec3<i32>(1i, i32(-2147483648), -1i), vec4<bool>(false, true, false, false)), true), Struct_3(Struct_2(vec3<i32>(i32(-2147483648), -8379i, -7598i), vec4<bool>(true, false, false, true)), 1u, Struct_2(vec3<i32>(-1i, -1i, 43903i), vec4<bool>(true, true, false, true)), false), Struct_3(Struct_2(vec3<i32>(0i, 42009i, 2407i), vec4<bool>(true, true, true, false)), 0u, Struct_2(vec3<i32>(i32(-2147483648), -23549i, 37925i), vec4<bool>(true, false, true, true)), false), Struct_3(Struct_2(vec3<i32>(1i, 1i, -1i), vec4<bool>(false, true, false, false)), 92228u, Struct_2(vec3<i32>(-43502i, -5756i, 68938i), vec4<bool>(false, false, false, false)), true), Struct_3(Struct_2(vec3<i32>(-59656i, -31015i, 2147483647i), vec4<bool>(true, true, true, false)), 68365u, Struct_2(vec3<i32>(0i, 16664i, 2147483647i), vec4<bool>(false, true, false, false)), false), Struct_3(Struct_2(vec3<i32>(8623i, 1114i, 15611i), vec4<bool>(true, true, true, false)), 4294967295u, Struct_2(vec3<i32>(1i, 34041i, 35320i), vec4<bool>(true, false, false, false)), false), Struct_3(Struct_2(vec3<i32>(34006i, -20587i, -48340i), vec4<bool>(true, false, true, false)), 0u, Struct_2(vec3<i32>(i32(-2147483648), 46600i, -21401i), vec4<bool>(true, true, false, false)), true), Struct_3(Struct_2(vec3<i32>(-33042i, -64820i, i32(-2147483648)), vec4<bool>(true, false, false, true)), 0u, Struct_2(vec3<i32>(-30491i, 1i, i32(-2147483648)), vec4<bool>(true, false, false, true)), false), Struct_3(Struct_2(vec3<i32>(1i, 49340i, -42987i), vec4<bool>(true, true, false, true)), 0u, Struct_2(vec3<i32>(43648i, 2147483647i, i32(-2147483648)), vec4<bool>(true, false, false, false)), false), Struct_3(Struct_2(vec3<i32>(-23680i, 1i, 663i), vec4<bool>(false, false, false, true)), 4294967295u, Struct_2(vec3<i32>(-34614i, -7240i, -22637i), vec4<bool>(false, false, true, true)), false), Struct_3(Struct_2(vec3<i32>(-5795i, 0i, -1i), vec4<bool>(true, true, false, true)), 1u, Struct_2(vec3<i32>(-4215i, -38717i, 29460i), vec4<bool>(true, false, false, true)), true), Struct_3(Struct_2(vec3<i32>(-15657i, -19519i, 0i), vec4<bool>(false, false, false, false)), 25209u, Struct_2(vec3<i32>(-75781i, -3554i, -4473i), vec4<bool>(false, true, false, false)), false), Struct_3(Struct_2(vec3<i32>(i32(-2147483648), -22182i, i32(-2147483648)), vec4<bool>(false, false, true, false)), 16272u, Struct_2(vec3<i32>(47599i, 0i, 25931i), vec4<bool>(false, true, true, true)), false), Struct_3(Struct_2(vec3<i32>(-9727i, 11534i, 2147483647i), vec4<bool>(false, true, false, false)), 63389u, Struct_2(vec3<i32>(i32(-2147483648), i32(-2147483648), 1i), vec4<bool>(true, true, false, true)), false), Struct_3(Struct_2(vec3<i32>(-23512i, 0i, i32(-2147483648)), vec4<bool>(false, true, true, false)), 18046u, Struct_2(vec3<i32>(i32(-2147483648), 4742i, 2147483647i), vec4<bool>(false, false, true, true)), false), Struct_3(Struct_2(vec3<i32>(-18482i, i32(-2147483648), 0i), vec4<bool>(false, false, true, false)), 1u, Struct_2(vec3<i32>(-23215i, 9339i, 30495i), vec4<bool>(false, true, true, false)), true));

var<private> global1: vec3<f32> = vec3<f32>(1238f, -1896f, 470f);

var<private> global2: array<vec4<f32>, 6>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec3<i32>, arg_1: f32) -> f32 {
    global0 = array<Struct_3, 20>();
    let var_0 = arg_1;
    var var_1 = -13005i;
    var var_2 = Struct_2(-vec3<i32>(1i, u_input.c, abs(~4895i)), vec4<bool>(true, true, false, (~u_input.c & ~arg_0.x) > u_input.c));
    let var_3 = u_input.c | u_input.c;
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1424f * -523f))))));
}

fn func_3(arg_0: u32, arg_1: Struct_3, arg_2: vec4<f32>) -> vec3<bool> {
    var var_0 = Struct_3(arg_1.c, abs(arg_1.b), arg_1.c, arg_1.d);
    let var_1 = Struct_2(~vec3<i32>(-9120i, ~(var_0.a.a.x | arg_1.c.a.x), (0i ^ var_0.a.a.x) >> (var_0.b % 32u)), select(vec4<bool>(true, true, true | (0u < arg_0), arg_1.c.b.x), var_0.a.b, var_0.c.b.x));
    global1 = _wgslsmith_f_op_vec3_f32(arg_2.zxw + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(arg_2.wyx)) + _wgslsmith_f_op_vec3_f32(-arg_2.wxy)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1584f, -263f, 154f)))))));
    var var_2 = _wgslsmith_add_vec2_u32(vec2<u32>(~u_input.b.x, ~abs(4294967295u)) ^ ~max(~vec2<u32>(22772u, var_0.b), ~vec2<u32>(u_input.a.x, var_0.b)), u_input.b);
    let var_3 = ~u_input.a.yx;
    return vec3<bool>(!(var_0.c.b.x && (var_0.c.a.x != -44008i)), arg_1.d, true & any(vec4<bool>(var_1.b.x, arg_1.c.b.x == var_1.b.x, !var_0.a.b.x, arg_1.c.b.x)));
}

fn func_1(arg_0: bool, arg_1: vec4<f32>, arg_2: f32, arg_3: vec4<u32>) -> vec4<bool> {
    let var_0 = all(func_3(29198u, global0[_wgslsmith_index_u32(~(~u_input.a.x), 20u)], vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec3<i32>(-23163i, 1i, -5128i), 653f))), _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2336f) - -199f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_2, 1367f))))));
    global1 = arg_1.zxy;
    var var_1 = vec4<i32>(_wgslsmith_div_i32(_wgslsmith_sub_i32(14083i, -u_input.c), u_input.c), i32(-1i) * -u_input.c, reverseBits(-firstTrailingBit(max(-1i, u_input.c))), _wgslsmith_dot_vec3_i32(abs(~max(vec3<i32>(-2147483647i, u_input.c, 44857i), vec3<i32>(u_input.c, u_input.c, u_input.c))), _wgslsmith_add_vec3_i32(abs(vec3<i32>(2147483647i, u_input.c, -12741i)), ~(vec3<i32>(u_input.c, 40117i, -4171i) ^ vec3<i32>(u_input.c, u_input.c, u_input.c)))));
    var var_2 = ~((var_1.xw << (vec2<u32>(~4294967295u, arg_3.x) % vec2<u32>(32u))) ^ ~vec2<i32>(_wgslsmith_clamp_i32(u_input.c, 26768i, u_input.c), firstTrailingBit(-28299i)));
    var var_3 = global0[_wgslsmith_index_u32(u_input.a.x, 20u)];
    return select(select(!select(vec4<bool>(var_0, var_0, arg_0, false), select(var_3.c.b, vec4<bool>(var_3.c.b.x, false, false, false), var_3.a.b), select(var_3.a.b, vec4<bool>(false, false, arg_0, arg_0), false)), var_3.c.b, var_3.c.b.x), var_3.c.b, select(vec4<bool>(true, false, any(var_3.c.b), true || !arg_0), var_3.a.b, !all(select(vec3<bool>(false, var_0, var_3.d), var_3.a.b.wxy, var_3.a.b.yyx))));
}

fn func_4(arg_0: Struct_2) -> StorageBuffer {
    var var_0 = Struct_3(Struct_2(_wgslsmith_clamp_vec3_i32(abs(vec3<i32>(44422i, 0i, arg_0.a.x)) << (abs(u_input.a) % vec3<u32>(32u)), select(arg_0.a, _wgslsmith_sub_vec3_i32(vec3<i32>(1i, arg_0.a.x, u_input.c), vec3<i32>(arg_0.a.x, 2147483647i, arg_0.a.x)), arg_0.b.wzw), vec3<i32>(32816i, u_input.c, arg_0.a.x)), vec4<bool>(true, any(vec4<bool>(arg_0.b.x, false, false, arg_0.b.x)), true, true)), ~1u, arg_0, any(arg_0.b));
    let var_1 = vec3<f32>(552f, _wgslsmith_f_op_f32(-851f - global1.x), -527f);
    var var_2 = vec2<i32>(_wgslsmith_div_i32(_wgslsmith_add_i32(2147483647i, u_input.c), _wgslsmith_dot_vec4_i32(max(vec4<i32>(u_input.c, 2078i, var_0.a.a.x, 64591i), _wgslsmith_mod_vec4_i32(vec4<i32>(-1i, var_0.a.a.x, u_input.c, 2147483647i), vec4<i32>(-2147483647i, arg_0.a.x, 30319i, 1i))), firstLeadingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.a.x, var_0.a.a.x, u_input.c, -3537i), vec4<i32>(arg_0.a.x, var_0.a.a.x, u_input.c, arg_0.a.x))))), _wgslsmith_sub_i32(abs(~u_input.c) & max(~var_0.a.a.x, -48481i), arg_0.a.x));
    var var_3 = Struct_1(vec4<u32>(~40349u, select(58927u | _wgslsmith_add_u32(var_0.b, 4294967295u), firstLeadingBit(var_0.b), true), _wgslsmith_clamp_u32(_wgslsmith_add_u32(~u_input.a.x, firstTrailingBit(u_input.b.x)), 86327u, ~17473u), ~4294967295u), vec4<bool>(!var_0.d, arg_0.b.x, all(!(!var_0.c.b.yy)), true), _wgslsmith_dot_vec3_u32(u_input.a, ~u_input.a));
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-352f, global1.x)) + global1.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1.x))));
    return StorageBuffer(_wgslsmith_f_op_f32(-global1.x));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(Struct_2(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c, -u_input.c, u_input.c), countOneBits(vec3<i32>(u_input.c, u_input.c, u_input.c))), select(vec4<bool>(0i > u_input.c, all(vec3<bool>(true, true, true)), false, any(vec3<bool>(true, false, true))), !func_1(false, vec4<f32>(global1.x, global1.x, -728f, global1.x), -1085f, vec4<u32>(u_input.b.x, 1u, 1u, 31372u)), u_input.c > firstLeadingBit(1i))));
}

