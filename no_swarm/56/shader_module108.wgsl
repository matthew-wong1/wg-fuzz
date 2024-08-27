struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec3<i32>,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: vec2<i32>,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: vec3<i32>,
    c: Struct_3,
}

struct Struct_5 {
    a: Struct_4,
    b: u32,
    c: vec2<u32>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: u32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: vec4<f32>) -> i32 {
    var var_0 = Struct_1(u_input.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.x, _wgslsmith_f_op_f32(-arg_0.x))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0.x, arg_0.x, true)) + -904f))));
    let var_1 = _wgslsmith_dot_vec3_i32(vec3<i32>(max(var_0.a, var_0.a), i32(-1i) * -2147483647i, var_0.a), vec3<i32>(-24975i, u_input.b.x, ~28320i));
    var var_2 = select(vec4<bool>((all(vec3<bool>(false, false, true)) && true) || true, false, true, !(!select(true, false, false))), vec4<bool>(true, true, true, true), !vec4<bool>(all(vec4<bool>(true, false, false, true)), true, true, !any(vec2<bool>(true, true))));
    var_0 = Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, min(-1i, -u_input.b.x)), countOneBits(vec2<i32>(-1i) * -u_input.b.yw)), -1623f);
    var_2 = !select(select(select(!vec4<bool>(var_2.x, false, true, true), vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x), vec4<bool>(var_2.x, false, true, false)), !(!vec4<bool>(true, var_2.x, true, var_2.x)), any(vec2<bool>(true, true))), !vec4<bool>(!var_2.x, var_2.x, false, !var_2.x), !vec4<bool>(!var_2.x, false, true, var_2.x));
    return -2147483647i << (~(~select(_wgslsmith_div_u32(u_input.a, 37993u), 65286u ^ u_input.a, false)) % 32u);
}

fn func_4(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: vec2<bool>, arg_3: u32) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1060f, 677f), vec2<f32>(1142f, 1000f))))));
    let var_1 = Struct_4(0i, countOneBits(select(~_wgslsmith_mod_vec3_i32(vec3<i32>(arg_0.a.a, -1i, -26779i), u_input.b.wzw), abs(u_input.b.xww) ^ -vec3<i32>(2147483647i, -3885i, arg_0.d.a), vec3<bool>(true, any(vec2<bool>(false, false)), u_input.a < u_input.a))), Struct_3(Struct_1(u_input.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -269f) - _wgslsmith_f_op_f32(exp2(arg_0.d.b)))), -653f, u_input.b.xx, Struct_1(~_wgslsmith_dot_vec3_i32(u_input.b.zxz, vec3<i32>(arg_0.e, -1i, -24542i)), _wgslsmith_f_op_f32(-arg_0.a.b)), Struct_2(arg_0.a, _wgslsmith_div_u32(u_input.a, u_input.a) >= (arg_3 << (arg_3 % 32u)), u_input.b.wzx, Struct_1(_wgslsmith_div_i32(arg_0.a.a, 19725i), arg_0.d.b), 64476i)));
    let var_2 = Struct_1(u_input.b.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(198f * -531f))))));
    var var_3 = -1340f;
    let var_4 = Struct_3(var_2, _wgslsmith_f_op_f32(f32(-1f) * -1052f), vec2<i32>(arg_0.d.a, _wgslsmith_div_i32(~(i32(-1i) * -2147483647i), _wgslsmith_div_i32(_wgslsmith_clamp_i32(var_1.a, 36340i, var_2.a), var_2.a))), Struct_1(-(~(2147483647i ^ var_1.c.a.a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1000f - var_0.x))), 922f)), Struct_2(arg_0.d, arg_0.d.b <= -609f, _wgslsmith_div_vec3_i32(arg_0.c, abs(vec3<i32>(1i, arg_0.d.a, u_input.b.x))) & reverseBits(countOneBits(vec3<i32>(var_2.a, var_2.a, 2147483647i))), Struct_1(1i, -455f), max(abs(var_2.a) & -var_2.a, ~(15358i ^ var_1.a))));
    return -1169f;
}

fn func_2() -> Struct_5 {
    let var_0 = firstLeadingBit(1u);
    let var_1 = ~countOneBits(~_wgslsmith_add_vec2_u32(firstLeadingBit(vec2<u32>(7517u, 35028u)), abs(vec2<u32>(93618u, u_input.a))));
    var var_2 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-355f, 235f, -509f, 614f)))))));
    var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_2(Struct_1(u_input.b.x, var_2.x), false, vec3<i32>(12331i, u_input.b.x, u_input.b.x), Struct_1(u_input.b.x, -884f), func_3(vec4<f32>(219f, 109f, var_2.x, 1409f))), vec2<bool>(var_2.x > -1077f, true), vec2<bool>(true, true), ~abs(23325u)))), var_2.x, var_2.x, var_2.x);
    var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(var_2.x, -1434f, 693f, var_2.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, 1157f, var_2.x, var_2.x) - vec4<f32>(var_2.x, 704f, var_2.x, var_2.x)))))) + vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(var_2.x)), 160f)), var_2.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -622f), _wgslsmith_f_op_f32(f32(-1f) * -468f)), -692f));
    return Struct_5(Struct_4(u_input.b.x, vec3<i32>(_wgslsmith_add_i32(1i, 2147483647i >> (1u % 32u)), u_input.b.x, u_input.b.x), Struct_3(Struct_1(u_input.b.x, _wgslsmith_f_op_f32(max(-349f, var_2.x))), var_2.x, u_input.b.yz, Struct_1(u_input.b.x, _wgslsmith_f_op_f32(ceil(703f))), Struct_2(Struct_1(32613i, var_2.x), true, ~vec3<i32>(u_input.b.x, -38275i, 0i), Struct_1(u_input.b.x, 1256f), _wgslsmith_div_i32(4332i, u_input.b.x)))), 33173u, reverseBits(var_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_2.x))));
}

fn func_5(arg_0: Struct_5, arg_1: Struct_4) -> Struct_1 {
    var var_0 = select(vec4<bool>(all(select(select(vec3<bool>(arg_1.c.e.b, true, arg_0.a.c.e.b), vec3<bool>(arg_0.a.c.e.b, arg_0.a.c.e.b, arg_1.c.e.b), arg_0.a.c.e.b), select(vec3<bool>(false, arg_1.c.e.b, arg_0.a.c.e.b), vec3<bool>(arg_0.a.c.e.b, arg_1.c.e.b, arg_1.c.e.b), vec3<bool>(arg_1.c.e.b, arg_0.a.c.e.b, false)), select(vec3<bool>(true, false, false), vec3<bool>(arg_1.c.e.b, true, false), true))), arg_0.a.c.e.b, func_2().a.c.e.b, func_2().a.c.e.b), vec4<bool>(arg_0.a.c.e.b, arg_0.a.c.a.b <= -1000f, all(select(vec3<bool>(arg_0.a.c.e.b, true, true), vec3<bool>(arg_1.c.e.b, false, arg_1.c.e.b), false)), true), vec4<bool>(arg_1.c.e.b, arg_1.c.e.b, arg_1.c.e.b, select(false, all(vec3<bool>(arg_1.c.e.b, arg_1.c.e.b, arg_0.a.c.e.b)), true | (arg_1.c.e.b && arg_0.a.c.e.b))));
    var var_1 = var_0.wyz;
    let var_2 = u_input.b.wz;
    let var_3 = -u_input.b;
    var_0 = !vec4<bool>(true, arg_0.a.c.e.b, !all(select(var_0.zy, var_0.xy, true)), select(func_2().a.c.e.b, all(vec4<bool>(true, true, false, false)), arg_1.c.e.b));
    return func_2().a.c.d;
}

fn func_1(arg_0: bool, arg_1: vec3<i32>) -> vec3<bool> {
    let var_0 = Struct_2(Struct_1(firstLeadingBit(reverseBits(-2147483647i)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-745f))))), arg_0, arg_1, func_5(func_2(), Struct_4(_wgslsmith_mod_i32(countOneBits(u_input.b.x), -13007i), arg_1 & _wgslsmith_add_vec3_i32(u_input.b.yxx, vec3<i32>(arg_1.x, u_input.b.x, -1i)), Struct_3(func_2().a.c.d, _wgslsmith_div_f32(-267f, 1326f), -vec2<i32>(6436i, 13283i), Struct_1(u_input.b.x, -1000f), Struct_2(Struct_1(u_input.b.x, 135f), arg_0, vec3<i32>(u_input.b.x, arg_1.x, u_input.b.x), Struct_1(-24870i, -638f), 2147483647i)))), ~(-(u_input.b.x << (reverseBits(u_input.a) % 32u))));
    var var_1 = _wgslsmith_dot_vec3_u32(~vec3<u32>(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a, u_input.a, 9770u), vec4<u32>(4951u, u_input.a, u_input.a, u_input.a))), ~(u_input.a ^ 1u), ~_wgslsmith_mult_u32(67434u, 53681u)), abs(_wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.a, 66129u, u_input.a), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, 0u))), abs(vec3<u32>(u_input.a, u_input.a, 0u)), ~(~vec3<u32>(u_input.a, u_input.a, 0u)))));
    var_1 = 22841u;
    var var_2 = func_2();
    var_1 = _wgslsmith_clamp_u32(abs(10433u), countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a, u_input.a, 0u), ~vec4<u32>(u_input.a, var_2.c.x, 74511u, var_2.c.x)) >> (_wgslsmith_sub_u32(min(u_input.a, u_input.a), 9449u) % 32u)), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, _wgslsmith_sub_u32(11771u, var_2.b | 17379u), 51347u), countOneBits(vec4<u32>(var_2.b, 1u, u_input.a, 89747u)) << (countOneBits(min(vec4<u32>(54559u, 4294967295u, 17728u, 35812u), vec4<u32>(4294967295u, 5819u, u_input.a, 96895u))) % vec4<u32>(32u))));
    return select(vec3<bool>(arg_0, !(!arg_0), var_0.b), select(!vec3<bool>(true, true, var_0.b == true), select(!select(vec3<bool>(false, var_2.a.c.e.b, true), vec3<bool>(var_0.b, arg_0, arg_0), true), select(select(vec3<bool>(true, false, false), vec3<bool>(false, arg_0, arg_0), vec3<bool>(var_0.b, arg_0, var_0.b)), select(vec3<bool>(var_2.a.c.e.b, var_2.a.c.e.b, var_2.a.c.e.b), vec3<bool>(var_2.a.c.e.b, false, var_0.b), true), select(false, arg_0, var_2.a.c.e.b)), vec3<bool>(true, all(vec2<bool>(var_2.a.c.e.b, arg_0)), true)), vec3<bool>(select(any(vec2<bool>(arg_0, true)), var_2.a.c.e.b, false | var_0.b), var_0.b & !var_2.a.c.e.b, true)), !(!(!vec3<bool>(var_0.b, true, false))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(select(!vec3<bool>(true, any(vec2<bool>(true, true)), true), vec3<bool>(true, any(func_1(false, u_input.b.yxy)), countOneBits(-2147483647i) > ~u_input.b.x), select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), any(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false))))));
    var_0 = false;
    var var_1 = -(~abs(vec3<i32>(u_input.b.x, -u_input.b.x, u_input.b.x)));
    let var_2 = Struct_1(min(~u_input.b.x, -1i) & max(firstTrailingBit(-21523i), _wgslsmith_mult_i32(var_1.x, 0i)), 1155f);
    let var_3 = Struct_3(Struct_1(var_2.a, _wgslsmith_f_op_f32(func_4(Struct_2(var_2, false, u_input.b.yyw | vec3<i32>(var_1.x, 1i, var_1.x), var_2, i32(-1i) * -1i), vec2<bool>(true, false), !select(vec2<bool>(true, true), vec2<bool>(false, false), false), 0u))), -171f, -((vec2<i32>(u_input.b.x, u_input.b.x) << (vec2<u32>(u_input.a, 67820u) % vec2<u32>(32u))) & _wgslsmith_mult_vec2_i32(-var_1.xy, vec2<i32>(var_1.x, -2147483647i) >> (vec2<u32>(1u, u_input.a) % vec2<u32>(32u)))), var_2, Struct_2(Struct_1(_wgslsmith_mult_i32(firstLeadingBit(-2147483647i), _wgslsmith_sub_i32(0i, -77328i)), -329f), true, -(~u_input.b.zxz), Struct_1(u_input.b.x, var_2.b), ~(-5869i)));
    var var_4 = all(vec2<bool>(any(vec2<bool>(false, true)), !(var_3.e.b && false)));
    let x = u_input.a;
    s_output = StorageBuffer(0i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(-310f, var_2.b), vec2<f32>(var_2.b, -774f)))))), ~1u, vec4<u32>(u_input.a, _wgslsmith_add_u32(_wgslsmith_mult_u32(firstTrailingBit(u_input.a), _wgslsmith_add_u32(u_input.a, 1u)), u_input.a), 0u, ~_wgslsmith_sub_u32(_wgslsmith_mult_u32(1u, u_input.a), 89423u)));
}

