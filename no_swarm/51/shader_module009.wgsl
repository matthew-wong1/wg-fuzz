struct Struct_1 {
    a: i32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: i32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: f32,
    c: vec3<bool>,
    d: i32,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec4<i32>,
    d: vec2<i32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec3<bool>, arg_2: Struct_3) -> vec3<bool> {
    var var_0 = ~_wgslsmith_dot_vec2_i32(vec2<i32>(abs(~arg_2.d), 2147483647i), vec2<i32>(1i, arg_2.d));
    let var_1 = Struct_1(arg_2.d << (arg_2.e.x % 32u), select(arg_2.a.zz, vec2<bool>(arg_2.a.x, 76041u < _wgslsmith_add_u32(arg_2.e.x, u_input.a)), false));
    let var_2 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1740f, 549f))), 508f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(arg_2.b * arg_0.x))), _wgslsmith_f_op_f32(abs(arg_0.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-arg_0), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_2.b, -399f, -536f, arg_0.x), arg_0, arg_1.x)))))));
    var var_3 = countOneBits(arg_2.e.wxz);
    var_3 = ~(~(~firstTrailingBit(arg_2.e.zzz)));
    return vec3<bool>(~(~(~arg_2.e.x)) != _wgslsmith_dot_vec4_u32(abs(~vec4<u32>(u_input.a, 17696u, u_input.a, 1u)), vec4<u32>(0u, 4294967295u, max(1u, u_input.a), 1u)), !(_wgslsmith_f_op_f32(trunc(-188f)) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_2.b, -470f)))), arg_2.c.x);
}

fn func_4(arg_0: bool) -> vec4<i32> {
    global0 = 1u;
    return -countOneBits(abs(vec4<i32>(-1i, 5496i, 15641i, -2147483647i))) | countOneBits(-select(vec4<i32>(-33342i, -2147483647i, -8851i, -2147483647i), vec4<i32>(-16679i, 1270i, 2147483647i, 1i), arg_0) ^ reverseBits(reverseBits(vec4<i32>(2147483647i, 8086i, 25868i, -1i))));
}

fn func_5(arg_0: vec4<i32>, arg_1: vec3<i32>) -> u32 {
    let var_0 = Struct_1(max(-2147483647i, arg_1.x), vec2<bool>(true, true));
    var var_1 = ~(~(~(arg_0.xz ^ arg_0.zw)));
    var_1 = arg_0.xx;
    var var_2 = Struct_2(vec3<i32>(-2147483647i, -2147483647i, firstTrailingBit(_wgslsmith_dot_vec4_i32(~vec4<i32>(arg_0.x, var_1.x, -1i, -46038i), arg_0))), select(func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-504f, -532f, -1151f, -1000f), vec4<f32>(1153f, -663f, -1939f, -1921f))), select(select(vec3<bool>(var_0.b.x, true, var_0.b.x), vec3<bool>(var_0.b.x, true, false), var_0.b.x), !vec3<bool>(var_0.b.x, true, var_0.b.x), vec3<bool>(var_0.b.x, true, true)), Struct_3(select(vec4<bool>(var_0.b.x, var_0.b.x, true, var_0.b.x), vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, var_0.b.x), false), -122f, select(vec3<bool>(var_0.b.x, true, var_0.b.x), vec3<bool>(var_0.b.x, var_0.b.x, var_0.b.x), vec3<bool>(true, var_0.b.x, var_0.b.x)), 13210i | arg_1.x, vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a))), select(select(select(vec3<bool>(var_0.b.x, var_0.b.x, false), vec3<bool>(var_0.b.x, true, var_0.b.x), var_0.b.x), vec3<bool>(false, var_0.b.x, false), vec3<bool>(var_0.b.x, var_0.b.x, var_0.b.x)), select(!vec3<bool>(var_0.b.x, var_0.b.x, var_0.b.x), !vec3<bool>(var_0.b.x, false, var_0.b.x), false && var_0.b.x), !(!vec3<bool>(var_0.b.x, false, var_0.b.x))), false), var_1.x);
    var var_3 = Struct_3(!select(select(select(vec4<bool>(var_2.b.x, var_0.b.x, var_0.b.x, false), vec4<bool>(false, var_2.b.x, false, var_0.b.x), vec4<bool>(true, var_2.b.x, var_0.b.x, false)), select(vec4<bool>(false, var_0.b.x, var_0.b.x, var_2.b.x), vec4<bool>(false, true, var_2.b.x, var_2.b.x), var_2.b.x), !vec4<bool>(var_0.b.x, var_2.b.x, true, true)), select(select(vec4<bool>(var_2.b.x, var_2.b.x, var_2.b.x, var_0.b.x), vec4<bool>(true, var_0.b.x, true, false), vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, false)), !vec4<bool>(true, var_2.b.x, var_2.b.x, false), false), var_2.b.x & true), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -578f)))), select(vec3<bool>(var_0.b.x, false & var_0.b.x, var_2.b.x), var_2.b, any(select(select(vec4<bool>(var_2.b.x, true, true, true), vec4<bool>(false, var_2.b.x, false, false), var_2.b.x), vec4<bool>(var_2.b.x, var_2.b.x, false, false), false))), firstLeadingBit(var_2.c), ~(~vec4<u32>(~u_input.a, u_input.a, ~56793u, ~55374u)));
    return ~(~reverseBits(4294967295u));
}

fn func_2(arg_0: vec2<f32>) -> u32 {
    global0 = 35553u;
    let var_0 = false;
    global0 = func_5(reverseBits(func_4(any(func_3(vec4<f32>(arg_0.x, -1536f, arg_0.x, -789f), vec3<bool>(var_0, false, var_0), Struct_3(vec4<bool>(false, var_0, var_0, false), 943f, vec3<bool>(true, var_0, true), 0i, vec4<u32>(u_input.a, 45893u, u_input.a, 4294967295u)))))), vec3<i32>(~(-1i), ~_wgslsmith_clamp_i32(1i, 1i, 2147483647i), i32(-1i) * -2147483647i));
    var var_1 = 29859i;
    let var_2 = -1i;
    return _wgslsmith_div_u32(~(~countOneBits(u_input.a)), _wgslsmith_mult_u32(min(4294967295u, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(42496u, 17462u), vec2<u32>(4841u, 31787u)), _wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, u_input.a), vec2<u32>(u_input.a, u_input.a)))), u_input.a));
}

fn func_1(arg_0: Struct_3) -> vec4<u32> {
    global0 = countOneBits(~arg_0.e.x);
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.b, -829f)), arg_0.b, 1000f)));
    var var_1 = arg_0.d;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-118f, var_0.x))), arg_0.b));
    var var_3 = 39572i;
    return ~max(~select(arg_0.e, vec4<u32>(u_input.a, 1u, 54371u, arg_0.e.x), !arg_0.c.x), vec4<u32>(arg_0.e.x, arg_0.e.x, u_input.a, _wgslsmith_clamp_u32(func_2(vec2<f32>(arg_0.b, arg_0.b)), u_input.a, arg_0.e.x)));
}

fn func_6(arg_0: Struct_2, arg_1: f32, arg_2: Struct_3, arg_3: vec4<u32>) -> Struct_1 {
    let var_0 = arg_0;
    global0 = firstLeadingBit(arg_2.e.x);
    let var_1 = arg_2;
    global0 = ~min(_wgslsmith_mod_u32(arg_2.e.x, arg_3.x), ~select(arg_3.x, u_input.a, true));
    return Struct_1(~(~var_1.d), select(vec2<bool>(1285f > arg_2.b, false), !arg_2.a.zy, arg_2.c.xx));
}

fn func_7(arg_0: Struct_1, arg_1: Struct_3) -> Struct_2 {
    let var_0 = vec2<u32>(32834u, u_input.a << (_wgslsmith_clamp_u32(30921u, 4294967295u, 4294967295u) % 32u));
    global0 = min(_wgslsmith_div_u32(1u, var_0.x) << (u_input.a % 32u), _wgslsmith_mod_u32(countOneBits(var_0.x), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(select(u_input.a, arg_1.e.x, arg_1.a.x), 0u & arg_1.e.x), firstTrailingBit(_wgslsmith_sub_u32(arg_1.e.x, 0u)), 1396u)));
    let var_1 = any(!arg_1.a) & true;
    global0 = 32203u;
    return Struct_2(vec3<i32>(func_4(true).x, arg_1.d, abs(2147483647i)), arg_1.c, ~34825i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(func_6(Struct_2(vec3<i32>(28598i, ~(-20792i), _wgslsmith_add_i32(1i, 2850i)), vec3<bool>(false, true, true), -1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -619f)), Struct_3(vec4<bool>(select(true, false, true), all(vec2<bool>(false, true)), true, true), _wgslsmith_f_op_f32(-306f * -1225f), vec3<bool>(true, true, true), min(_wgslsmith_mult_i32(0i, 1i), 1i), _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, u_input.a, 4294967295u, u_input.a), vec4<u32>(10709u, 1u, u_input.a, u_input.a)), func_1(Struct_3(vec4<bool>(true, true, true, true), 465f, vec3<bool>(false, true, false), -44180i, vec4<u32>(482u, u_input.a, 0u, u_input.a))))), ~_wgslsmith_div_vec4_u32(~vec4<u32>(6301u, 0u, u_input.a, 27490u), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 4294967295u, 1u, u_input.a), vec4<u32>(4294967295u, 4294967295u, 0u, u_input.a)))), Struct_3(select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false)), vec4<bool>(true, true, true, true), true), vec4<bool>(true, false, true, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -882f))) * _wgslsmith_f_op_f32(-197f - _wgslsmith_div_f32(1223f, 1427f))), vec3<bool>(true, true, true), 43328i, ~vec4<u32>(u_input.a >> (u_input.a % 32u), 0u, u_input.a, firstTrailingBit(73336u))));
    var var_1 = Struct_1(func_4(func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(875f, 1005f, -581f, 1528f) * vec4<f32>(-2053f, -717f, -670f, 405f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-529f, -684f, -739f, 1204f))), var_0.b, Struct_3(!vec4<bool>(var_0.b.x, true, var_0.b.x, var_0.b.x), _wgslsmith_f_op_f32(step(425f, 884f)), func_3(vec4<f32>(125f, -322f, -765f, -996f), vec3<bool>(var_0.b.x, true, true), Struct_3(vec4<bool>(var_0.b.x, var_0.b.x, true, false), -482f, vec3<bool>(var_0.b.x, var_0.b.x, var_0.b.x), var_0.a.x, vec4<u32>(4294967295u, u_input.a, 707u, 107176u))), 4786i, vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a))).x).x, var_0.b.yy);
    var_1 = Struct_1(~var_1.a ^ (var_0.a.x ^ _wgslsmith_dot_vec3_i32(~vec3<i32>(2147483647i, -7785i, var_1.a), -var_0.a)), func_7(Struct_1(var_1.a, !(!var_0.b.yz)), Struct_3(!select(vec4<bool>(true, true, var_1.b.x, var_1.b.x), vec4<bool>(var_1.b.x, var_1.b.x, false, var_0.b.x), vec4<bool>(var_1.b.x, var_0.b.x, true, var_0.b.x)), 953f, var_0.b, -5885i, _wgslsmith_mult_vec4_u32(~vec4<u32>(11983u, u_input.a, 76561u, u_input.a), ~vec4<u32>(u_input.a, 37721u, u_input.a, u_input.a)))).b.xz);
    let var_2 = -var_0.a;
    global0 = reverseBits(4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(2020f, -1032f))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-917f, -397f))), vec2<f32>(1f, 1f)))), u_input.a >> (4294967295u % 32u), select(vec4<i32>(~(-48171i), 2147483647i, 23533i, _wgslsmith_mult_i32(var_2.x, ~(-26150i))), max(firstLeadingBit(vec4<i32>(var_1.a, 5402i, 0i, var_2.x)), ~reverseBits(vec4<i32>(2147483647i, var_1.a, -1i, var_2.x))), func_6(func_7(func_6(Struct_2(var_2, var_0.b, var_0.c), -1000f, Struct_3(vec4<bool>(var_1.b.x, true, var_1.b.x, var_0.b.x), 973f, var_0.b, 5949i, vec4<u32>(51937u, 0u, 0u, u_input.a)), vec4<u32>(4294967295u, u_input.a, 9871u, 31810u)), Struct_3(vec4<bool>(false, var_1.b.x, var_1.b.x, var_0.b.x), -858f, var_0.b, 2894i, vec4<u32>(u_input.a, u_input.a, u_input.a, 60878u))), -159f, Struct_3(select(vec4<bool>(true, var_1.b.x, var_1.b.x, true), vec4<bool>(true, true, false, var_0.b.x), vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, var_0.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -1025f), var_0.b, _wgslsmith_mod_i32(var_2.x, -1i), vec4<u32>(0u, u_input.a, 75183u, u_input.a)), ~(~vec4<u32>(u_input.a, u_input.a, 53174u, u_input.a))).b.x), var_0.a.xy, firstTrailingBit(vec4<i32>(var_2.x, 32945i, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(1i, var_2.x, -2147483647i, 28151i)), vec4<i32>(var_2.x, var_0.a.x, var_2.x, var_1.a) >> (vec4<u32>(0u, u_input.a, u_input.a, u_input.a) % vec4<u32>(32u))), 1i)));
}

