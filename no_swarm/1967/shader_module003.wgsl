struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: i32,
    d: f32,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<bool>,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_5 {
    a: vec4<i32>,
    b: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 3>;

var<private> global1: Struct_1 = Struct_1(vec3<u32>(1u, 1u, 4294967295u), -302f, vec4<bool>(false, false, false, true));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: vec4<bool>) -> vec4<u32> {
    var var_0 = arg_2.x;
    var var_1 = Struct_2(-41012i, Struct_1(vec3<u32>(arg_0.b.a.x, u_input.a, u_input.a), _wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(arg_0.b.b)), arg_0.b.b))), vec4<bool>(arg_0.a != arg_0.a, !all(global1.c.zw), all(global1.c), any(vec4<bool>(false, global1.c.x, false, false)))), _wgslsmith_sub_vec4_u32(arg_0.c, vec4<u32>(global1.a.x, firstLeadingBit(~1u), ~select(4294967295u, 4294967295u, true), reverseBits(max(global1.a.x, u_input.a)))), vec4<u32>(arg_0.b.a.x, ~(~(~47193u)), global1.a.x, reverseBits(1u)));
    let var_2 = (vec3<i32>(_wgslsmith_clamp_i32(-1i, ~0i, -21141i), _wgslsmith_mod_i32(var_1.a, _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.a, -41167i, -11652i), vec3<i32>(var_1.a, var_1.a, 2147483647i))), _wgslsmith_clamp_i32(70538i, _wgslsmith_dot_vec3_i32(vec3<i32>(8596i, 11138i, var_1.a), vec3<i32>(arg_0.a, var_1.a, -2147483647i)), 2147483647i)) >> (vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(0u, 4294967295u, global1.a.x), global1.a.x), abs(91196u), _wgslsmith_mult_u32(~arg_0.d.x, ~4294967295u)) % vec3<u32>(32u))) | ~(~abs(-vec3<i32>(11959i, 1i, -2147483647i)));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.b.b)));
    return _wgslsmith_sub_vec4_u32((select(~var_1.d, vec4<u32>(23942u, arg_0.b.a.x, u_input.a, 4294967295u), arg_2.x) << (~vec4<u32>(global1.a.x, 0u, u_input.a, 0u) % vec4<u32>(32u))) & min(~vec4<u32>(global1.a.x, global1.a.x, global1.a.x, 1u), ~vec4<u32>(27988u, arg_0.c.x, global1.a.x, arg_0.c.x)), vec4<u32>(~(~(~28596u)), ~4294967295u, 4294967295u, abs(_wgslsmith_mod_u32(reverseBits(1u), 9579u))));
}

fn func_2(arg_0: vec3<bool>) -> vec2<f32> {
    let var_0 = Struct_4(Struct_2(firstTrailingBit(0i), Struct_1(countOneBits(vec3<u32>(25090u, u_input.a, u_input.a)), 541f, global1.c), _wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(7546u, u_input.a, global1.a.x, 0u) & vec4<u32>(0u, global1.a.x, 0u, global1.a.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(global1.a.x, u_input.a, 1u, u_input.a), vec4<u32>(u_input.a, global1.a.x, 21293u, 0u), vec4<u32>(global1.a.x, global1.a.x, global1.a.x, global1.a.x))), vec4<u32>(1u, 14146u, min(global1.a.x, u_input.a), _wgslsmith_mod_u32(0u, 25796u)), ~func_3(Struct_2(-1i, Struct_1(global1.a, global1.b, global1.c), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(global1.a.x, 1298u, 4294967295u, 29907u)), global1.b, global1.c)), _wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(global1.a.x, 6339u, 35971u, 1u)) << (vec4<u32>(1u, 13524u, 29101u, 54634u) % vec4<u32>(32u)), ~vec4<u32>(u_input.a, global1.a.x, u_input.a, global1.a.x))), global1.c.xz, Struct_1(global1.a, _wgslsmith_f_op_f32(abs(-551f)), vec4<bool>(global1.c.x, true, any(vec3<bool>(arg_0.x, false, false)), 5755i < select(-36591i, 1i, arg_0.x))), Struct_2(firstLeadingBit(9363i), Struct_1(~global1.a, global1.b, select(vec4<bool>(arg_0.x, arg_0.x, global1.c.x, false), !global1.c, global1.c)), firstLeadingBit(vec4<u32>(0u >> (global1.a.x % 32u), firstLeadingBit(global1.a.x), ~20799u, ~0u)), ~_wgslsmith_sub_vec4_u32(~vec4<u32>(4294967295u, global1.a.x, 29158u, global1.a.x), func_3(Struct_2(-1i, Struct_1(vec3<u32>(u_input.a, u_input.a, 39826u), 128f, vec4<bool>(global1.c.x, true, arg_0.x, arg_0.x)), vec4<u32>(1u, 15189u, global1.a.x, global1.a.x), vec4<u32>(1u, global1.a.x, global1.a.x, 4294967295u)), -954f, vec4<bool>(arg_0.x, arg_0.x, false, true)))));
    global1 = var_0.a.b;
    global1 = Struct_1(var_0.d.d.yxy, _wgslsmith_f_op_f32(1167f * -460f), global1.c);
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(643f, global1.b, var_0.a.b.b)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-235f, var_0.d.b.b, -546f))), vec3<f32>(global1.b, global1.b, var_0.c.b)))))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.b.b, var_0.a.b.b, var_0.c.b)), vec3<f32>(var_0.c.b, global1.b, var_0.c.b))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.b, -392f, var_0.d.b.b) - vec3<f32>(global1.b, global1.b, var_0.a.b.b)))))));
    let var_2 = Struct_5(vec4<i32>(reverseBits(var_0.d.a), 1i, select(var_0.d.a, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.d.a, var_0.a.a), abs(vec2<i32>(-29456i, var_0.d.a))), true), -(-var_0.d.a | -1i)), true || global1.c.x);
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-399f, var_1.x) - vec2<f32>(670f, 104f))) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(global1.b, -1000f), _wgslsmith_f_op_vec2_f32(-var_1.zx)))))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b, var_0.c.b)) * vec2<f32>(var_0.d.b.b, var_1.x)))));
}

fn func_1() -> Struct_3 {
    global1 = Struct_1(~global1.a << (abs(~(vec3<u32>(6746u, u_input.a, global1.a.x) >> (vec3<u32>(1u, 4294967295u, 25822u) % vec3<u32>(32u)))) % vec3<u32>(32u)), _wgslsmith_f_op_f32(-global1.b), vec4<bool>(true, false, global1.c.x, global1.c.x));
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b, _wgslsmith_f_op_f32(global1.b + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global1.b + 1235f), _wgslsmith_f_op_f32(-global1.b)))), 1f));
    var var_1 = ~(~(-(~(~vec2<i32>(-18548i, 0i)))));
    var var_2 = _wgslsmith_f_op_vec2_f32(func_2(!vec3<bool>(global1.c.x, true, global1.c.x & (global1.c.x && global1.c.x))));
    return Struct_3(max(var_1.x, _wgslsmith_mod_i32(var_1.x, ~(~0i))), _wgslsmith_f_op_f32(336f * -1499f), -_wgslsmith_add_i32(abs(~var_1.x), _wgslsmith_add_i32(max(var_1.x, var_1.x), var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-622f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1267f))), Struct_2(-_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(2147483647i, var_1.x, var_1.x, -29172i)), min(vec4<i32>(96480i, -1i, -12990i, 33413i), vec4<i32>(var_1.x, -2147483647i, var_1.x, var_1.x))), Struct_1(~(vec3<u32>(u_input.a, 4294967295u, global1.a.x) & vec3<u32>(88268u, 37682u, u_input.a)), var_0.x, vec4<bool>(true, global1.b == var_0.x, global1.c.x, true)), ~_wgslsmith_sub_vec4_u32(select(vec4<u32>(15936u, 111537u, global1.a.x, u_input.a), vec4<u32>(19408u, 0u, 22049u, 69493u), vec4<bool>(false, false, false, global1.c.x)), func_3(Struct_2(-48093i, Struct_1(vec3<u32>(4294967295u, 25891u, 4903u), global1.b, global1.c), vec4<u32>(global1.a.x, 14073u, u_input.a, u_input.a), vec4<u32>(u_input.a, global1.a.x, u_input.a, global1.a.x)), global1.b, vec4<bool>(global1.c.x, true, true, global1.c.x))), abs(~(vec4<u32>(u_input.a, 39283u, u_input.a, u_input.a) | vec4<u32>(u_input.a, global1.a.x, u_input.a, 59874u)))));
}

fn func_4(arg_0: Struct_3) -> f32 {
    var var_0 = _wgslsmith_clamp_u32(52311u, global1.a.x, ~u_input.a);
    var var_1 = vec3<i32>(arg_0.e.a, reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.a, -24708i, arg_0.a), ~(-vec3<i32>(70323i, arg_0.c, arg_0.a)))), _wgslsmith_add_i32(15333i << (arg_0.e.d.x % 32u), -2820i));
    global0 = array<Struct_4, 3>();
    var var_2 = ~(~abs(_wgslsmith_sub_vec4_i32(~vec4<i32>(var_1.x, var_1.x, arg_0.c, var_1.x), -vec4<i32>(33838i, 0i, arg_0.c, -1i))));
    let var_3 = abs(var_2.zy);
    return _wgslsmith_f_op_f32(-func_1().e.b.b);
}

fn func_5(arg_0: vec3<bool>, arg_1: f32, arg_2: Struct_3, arg_3: Struct_3) -> Struct_1 {
    global0 = array<Struct_4, 3>();
    var var_0 = !func_1().e.b.c.zyz;
    var_0 = select(arg_3.e.b.c.xzx, vec3<bool>(false, true, arg_2.e.b.c.x), any(select(!func_1().e.b.c.zz, !func_1().e.b.c.zz, !select(vec2<bool>(false, true), vec2<bool>(var_0.x, true), arg_2.e.b.c.x))));
    let var_1 = arg_2.e.a;
    let var_2 = arg_0.x;
    return func_1().e.b;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_5(vec3<bool>(true, false, global1.c.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(func_1()))))), Struct_3(-_wgslsmith_sub_i32(11076i, -78225i) >> (max(global1.a.x, 0u) % 32u), global1.b, func_1().c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b + _wgslsmith_f_op_f32(global1.b + 141f))), Struct_2(~1i, func_1().e.b, ~abs(vec4<u32>(global1.a.x, global1.a.x, 32332u, u_input.a)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 40205u, u_input.a, u_input.a) & vec4<u32>(1u, 52500u, u_input.a, u_input.a), max(vec4<u32>(u_input.a, 0u, u_input.a, 67692u), vec4<u32>(global1.a.x, 26968u, global1.a.x, 30611u))))), Struct_3(~firstLeadingBit(firstTrailingBit(-2147483647i)), -278f, _wgslsmith_dot_vec3_i32(abs(_wgslsmith_clamp_vec3_i32(vec3<i32>(2342i, 55593i, -17075i), vec3<i32>(2147483647i, -1i, -1i), vec3<i32>(-1i, 30714i, 14034i))), ~abs(vec3<i32>(0i, -1874i, -26348i))), _wgslsmith_f_op_f32(global1.b + 748f), func_1().e));
    let var_0 = func_5(select(!vec3<bool>(global1.c.x, !global1.c.x, global1.c.x), !func_5(global1.c.wyx, _wgslsmith_f_op_f32(global1.b + global1.b), func_1(), Struct_3(-29141i, 606f, 2147483647i, global1.b, Struct_2(1i, Struct_1(global1.a, global1.b, vec4<bool>(global1.c.x, global1.c.x, false, false)), vec4<u32>(global1.a.x, 1u, u_input.a, global1.a.x), vec4<u32>(u_input.a, 0u, global1.a.x, 1u)))).c.wwx, 97170u < _wgslsmith_clamp_u32(_wgslsmith_mod_u32(u_input.a, 1u), u_input.a & u_input.a, global1.a.x)), global1.b, Struct_3(_wgslsmith_dot_vec2_i32(reverseBits(_wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, -1i), vec2<i32>(0i, 15327i), vec2<i32>(0i, 1i))), vec2<i32>(-1i, 21086i) << (global1.a.yy % vec2<u32>(32u))), 1348f, -(_wgslsmith_div_i32(-2147483647i, -1i) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 2147483647i, 1659i), vec3<i32>(-2147483647i, 91117i, 25806i))), global1.b, Struct_2(abs(1i), func_5(select(vec3<bool>(global1.c.x, true, global1.c.x), vec3<bool>(global1.c.x, global1.c.x, global1.c.x), global1.c.x), global1.b, Struct_3(-49077i, 465f, 70846i, -1000f, Struct_2(-50497i, Struct_1(vec3<u32>(global1.a.x, global1.a.x, global1.a.x), global1.b, vec4<bool>(global1.c.x, global1.c.x, global1.c.x, true)), vec4<u32>(global1.a.x, 0u, 41381u, global1.a.x), vec4<u32>(1u, 22718u, 4294967295u, global1.a.x))), Struct_3(2147483647i, global1.b, 2147483647i, global1.b, Struct_2(58106i, Struct_1(global1.a, global1.b, global1.c), vec4<u32>(0u, 38241u, 4294967295u, global1.a.x), vec4<u32>(4294967295u, 1u, global1.a.x, 0u)))), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, global1.a.x, 85260u, 12619u), ~vec4<u32>(u_input.a, u_input.a, global1.a.x, 0u)), ~(vec4<u32>(u_input.a, global1.a.x, global1.a.x, 1u) | vec4<u32>(23573u, global1.a.x, 4294967295u, 4294967295u)))), func_1()).c.x;
    var var_1 = vec2<bool>(global1.c.x, all(vec2<bool>(true, !select(var_0, false, false))));
    var_1 = vec2<bool>(var_1.x, all(global1.c.xz));
    let var_2 = vec3<u32>(global1.a.x, global1.a.x, u_input.a);
    var_1 = func_5(global1.c.yxx, global1.b, func_1(), Struct_3(34351i << (~func_5(global1.c.zwx, global1.b, Struct_3(1i, global1.b, 0i, 180f, Struct_2(6094i, Struct_1(global1.a, global1.b, global1.c), vec4<u32>(35508u, global1.a.x, var_2.x, u_input.a), vec4<u32>(41777u, var_2.x, var_2.x, 1u))), Struct_3(-1i, 642f, 45504i, 1000f, Struct_2(-20422i, Struct_1(vec3<u32>(0u, 0u, var_2.x), global1.b, global1.c), vec4<u32>(4294967295u, 1u, 4294967295u, u_input.a), vec4<u32>(global1.a.x, 61113u, 28643u, u_input.a)))).a.x % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(340f)))), -2147483647i, global1.b, Struct_2(_wgslsmith_mult_i32(1i, max(0i, 17919i)), Struct_1(~vec3<u32>(0u, 3771u, 22360u), _wgslsmith_f_op_f32(-global1.b), select(global1.c, vec4<bool>(false, true, true, false), var_1.x)), vec4<u32>(var_2.x, reverseBits(4294967295u), ~u_input.a, _wgslsmith_add_u32(24524u, var_2.x)), vec4<u32>(~0u, abs(0u), ~1u, _wgslsmith_dot_vec2_u32(vec2<u32>(global1.a.x, 4294967295u), var_2.xx))))).c.wx;
    global1 = Struct_1(select((firstLeadingBit(var_2) >> (~var_2 % vec3<u32>(32u))) >> (vec3<u32>(8551u, max(98649u, 0u), var_2.x) % vec3<u32>(32u)), vec3<u32>(0u, var_2.x, firstTrailingBit(var_2.x)), true), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000f - -246f))), !global1.c);
    var var_3 = max(vec2<u32>(~_wgslsmith_add_u32(59454u, global1.a.x) >> (0u % 32u), 1u), vec2<u32>(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.a.x, u_input.a, global1.a.x, var_2.x), vec4<u32>(21691u, var_2.x, 1u, global1.a.x))), 47496u) | select(global1.a.zy, var_2.yy, any(!global1.c)));
    let var_4 = Struct_2(_wgslsmith_mod_i32(_wgslsmith_add_i32(~2147483647i, 2147483647i << (var_2.x % 32u)), -2147483647i) | (i32(-1i) * -abs(22045i)), Struct_1(global1.a, 1830f, !(!(!global1.c))), firstLeadingBit(reverseBits(max(vec4<u32>(var_3.x, 1u, var_3.x, 58496u), vec4<u32>(0u, var_2.x, 4294967295u, u_input.a))) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 1u, u_input.a, 39993u), firstLeadingBit(vec4<u32>(var_2.x, 4294967295u, 46083u, 1u)), vec4<u32>(u_input.a, 24107u, var_3.x, 0u) ^ vec4<u32>(33283u, var_2.x, var_2.x, var_3.x)) % vec4<u32>(32u))), _wgslsmith_sub_vec4_u32(func_1().e.c, vec4<u32>(~31470u, var_2.x, ~var_3.x << (min(4294967295u, 3606u) % 32u), _wgslsmith_mult_u32(u_input.a & global1.a.x, select(39663u, 0u, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(0u);
}

