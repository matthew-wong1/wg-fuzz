struct Struct_1 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: u32,
    d: i32,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(77627u, 0u, 81548u);

var<private> global1: Struct_2;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_sub_i32(30159i ^ -firstTrailingBit(_wgslsmith_add_i32(0i, 2147483647i)), u_input.a);
    let var_1 = u_input.a;
    var var_2 = Struct_2(global1.a, Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-120f, _wgslsmith_f_op_f32(select(-171f, -1114f, global1.a)))), vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-798f)))), global1.b.b.x, -1781f), _wgslsmith_dot_vec4_i32(vec4<i32>(firstLeadingBit(u_input.a), 22970i, 1i, firstLeadingBit(var_1)), ~firstLeadingBit(vec4<i32>(-1i, -66658i, 0i, -4578i)))), _wgslsmith_sub_u32(select(firstTrailingBit(1u), _wgslsmith_mult_u32(global0.x, 0u), global1.a), min(countOneBits(global0.x), ~0u)) & global0.x, firstLeadingBit(reverseBits(~_wgslsmith_dot_vec3_i32(vec3<i32>(global1.d, u_input.c.x, var_1), vec3<i32>(global1.b.c, -1i, -29412i)))), countOneBits(global1.e & global0.x) & global0.x);
    var var_3 = Struct_2(global1.a, var_2.b, _wgslsmith_dot_vec2_u32(~_wgslsmith_clamp_vec2_u32(select(global0.yx, vec2<u32>(var_2.e, 18427u), vec2<bool>(false, true)), global0.yz << (vec2<u32>(0u, var_2.c) % vec2<u32>(32u)), global0.zx << (global0.yz % vec2<u32>(32u))), vec2<u32>(0u, _wgslsmith_mult_u32(firstTrailingBit(14139u), 1u))), var_1 & min(0i, -var_2.b.c), 93316u);
    var var_4 = _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(749f, var_3.b.b.x, var_2.b.b.x, var_3.b.b.x), vec4<f32>(874f, var_3.b.a.x, -849f, global1.b.b.x)) + vec4<f32>(611f, var_2.b.b.x, var_3.b.b.x, global1.b.b.x)) + vec4<f32>(-387f, 1f, 636f, 380f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(179f, -173f, 613f, var_3.b.a.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.b.b.x, -596f, var_3.b.a.x, 1505f) - vec4<f32>(var_2.b.a.x, var_2.b.b.x, 769f, 1102f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_3.b.b.x, var_3.b.a.x, 887f, var_2.b.a.x), vec4<f32>(190f, global1.b.a.x, global1.b.b.x, -716f))))))));
    return _wgslsmith_f_op_f32(trunc(global1.b.a.x));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec3<i32>, arg_3: vec3<i32>) -> Struct_2 {
    let var_0 = arg_0;
    let var_1 = firstLeadingBit(firstTrailingBit(i32(-1i) * -1i));
    var var_2 = arg_0.b.zz;
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3()))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3()))))), 159f);
    let var_4 = _wgslsmith_f_op_vec2_f32(round(var_3.zx));
    return Struct_2(!all(select(vec3<bool>(arg_1.x, true, global1.a), vec3<bool>(true, false, false), true)), var_0, 1u, 2147483647i & var_0.c, ~_wgslsmith_dot_vec2_u32(~(~global0.zz), vec2<u32>(_wgslsmith_add_u32(1u, global1.e), 12830u | global1.c)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1, arg_3: u32) -> vec4<bool> {
    var var_0 = 1290f;
    let var_1 = select(!vec3<bool>(func_2(global1.b, vec2<bool>(arg_1.a, arg_0.a), vec3<i32>(arg_2.c, -2147483647i, -2147483647i), vec3<i32>(arg_0.d, arg_1.b.c, 1i)).a, func_2(Struct_1(vec2<f32>(global1.b.b.x, -1000f), arg_2.b, u_input.a), vec2<bool>(true, true), vec3<i32>(1i, global1.d, -1i), ~vec3<i32>(u_input.c.x, arg_2.c, arg_1.b.c)).a, true), select(vec3<bool>(false, arg_1.a, true), vec3<bool>(true, arg_0.a, !global1.a), !(!vec3<bool>(global1.a, global1.a, arg_1.a))), !(!select(select(vec3<bool>(true, arg_0.a, arg_0.a), vec3<bool>(arg_0.a, false, arg_1.a), vec3<bool>(true, false, true)), select(vec3<bool>(arg_1.a, arg_0.a, false), vec3<bool>(false, false, false), arg_0.a), vec3<bool>(arg_0.a, arg_0.a, true))));
    global0 = vec3<u32>(global0.x, ~select(global1.c, 48881u >> (1u % 32u), all(vec2<bool>(global1.a, true))), ~arg_3) << (_wgslsmith_mod_vec3_u32(firstTrailingBit(vec3<u32>(global1.e, ~0u, 4294967295u)), ~_wgslsmith_mult_vec3_u32(select(vec3<u32>(arg_0.e, 1u, 72447u), vec3<u32>(12078u, 1u, global1.e), arg_1.a), ~vec3<u32>(0u, arg_0.c, global1.c))) % vec3<u32>(32u));
    var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.b.a.x, _wgslsmith_f_op_f32(sign(arg_2.b.x)), arg_0.a))) - _wgslsmith_f_op_f32(func_3()))));
    let var_2 = ~vec3<i32>(arg_1.b.c, _wgslsmith_dot_vec2_i32(u_input.c, vec2<i32>(-16225i, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.d, u_input.b, global1.d), vec3<i32>(-1i, 0i, -1i)))), arg_2.c);
    return vec4<bool>(all(select(vec3<bool>(global1.a, all(var_1.zx), any(var_1.xz)), !var_1, true || arg_0.a)), false, global1.a, !arg_0.a);
}

fn func_1(arg_0: vec3<f32>, arg_1: f32, arg_2: vec4<i32>) -> u32 {
    var var_0 = !func_4(Struct_2(any(vec3<bool>(global1.a, global1.a, false)), global1.b, ~(~global1.c), i32(-1i) * -21738i, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, global0.x, global0.x), abs(vec4<u32>(17713u, 1u, 1u, global1.e)))), func_2(Struct_1(vec2<f32>(-1037f, arg_0.x), _wgslsmith_f_op_vec3_f32(arg_0 + arg_0), arg_2.x), vec2<bool>(true, true == global1.a), -_wgslsmith_clamp_vec3_i32(vec3<i32>(5011i, 1i, 1i), vec3<i32>(-559i, 0i, 1i), arg_2.xxy), vec3<i32>(u_input.c.x, 2147483647i, 25631i)), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1, arg_1), global1.b.b.zy, global1.a))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1, 1000f, global1.b.b.x), _wgslsmith_f_op_vec3_f32(arg_0 - global1.b.b), true)), abs(i32(-1i) * -38298i)), 0u);
    let var_1 = ~u_input.a;
    global0 = _wgslsmith_mod_vec3_u32(select(firstLeadingBit(vec3<u32>(8919u, 8337u, global1.e)) << (~vec3<u32>(83620u, global1.e, global1.c) % vec3<u32>(32u)), vec3<u32>(~49360u, global0.x, 26181u << (0u % 32u)), any(!vec3<bool>(global1.a, true, true))), ~vec3<u32>(2806u, global0.x << (34774u % 32u), 4294967295u << (global0.x % 32u))) << ((~_wgslsmith_mult_vec3_u32(~vec3<u32>(30659u, 1u, 4294967295u), select(vec3<u32>(global1.c, global0.x, global0.x), vec3<u32>(0u, 0u, 0u), true)) << (min(~_wgslsmith_add_vec3_u32(vec3<u32>(0u, global1.e, global0.x), vec3<u32>(global1.e, 4294967295u, global1.e)), vec3<u32>(_wgslsmith_mod_u32(global1.c, 1u), _wgslsmith_mod_u32(global0.x, global1.e), ~global1.e)) % vec3<u32>(32u))) % vec3<u32>(32u));
    global1 = Struct_2(true, Struct_1(arg_0.yz, arg_0, _wgslsmith_div_i32(i32(-1i) * -1i, select(47072i, u_input.c.x, true)) & -_wgslsmith_clamp_i32(2147483647i, global1.b.c, 2147483647i)), global0.x, _wgslsmith_dot_vec2_i32(u_input.c, u_input.c), _wgslsmith_dot_vec3_u32(~firstTrailingBit(vec3<u32>(40753u, 1u, 4294967295u)), ~(~vec3<u32>(global1.e, 13414u, global1.e))));
    let var_2 = firstLeadingBit(global0.xz);
    return global0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = max(vec3<u32>(_wgslsmith_div_u32(func_1(global1.b.b, global1.b.a.x, vec4<i32>(u_input.a, -1i, u_input.b, -12036i)) >> (0u % 32u), ~10762u), _wgslsmith_mod_u32(global0.x, ~global0.x & global1.c), global0.x), _wgslsmith_clamp_vec3_u32(~(~vec3<u32>(4294967295u, global1.c, 29726u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(5342u, global0.x, global1.e), vec3<u32>(5304u, global1.c, global0.x), vec3<u32>(global0.x, 1u, global1.e)) >> (vec3<u32>(22791u, 51291u, global0.x) % vec3<u32>(32u)), vec3<u32>(global0.x & global0.x, reverseBits(0u), global1.c)) >> (vec3<u32>(~global1.c, 4294967295u, global0.x) % vec3<u32>(32u)));
    let var_0 = ~(~(~global0.x << ((global1.c ^ 6256u) % 32u)) >> (_wgslsmith_dot_vec4_u32(countOneBits(_wgslsmith_sub_vec4_u32(vec4<u32>(global0.x, 16231u, 0u, global1.e), vec4<u32>(global1.c, global1.e, 17822u, global1.c))), ~(~vec4<u32>(global0.x, global0.x, 17713u, 4294967295u))) % 32u));
    let var_1 = 858f;
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global1.b.a.x)) - _wgslsmith_f_op_f32(global1.b.b.x - -255f)), var_1, global1.b.a.x, _wgslsmith_f_op_f32(floor(global1.b.b.x))))) + vec4<f32>(var_1, _wgslsmith_f_op_f32(-491f + _wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global1.b.b.x - var_1)))), _wgslsmith_f_op_f32(f32(-1f) * -1165f)));
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-637f, -201f))))), vec3<f32>(-867f, var_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-217f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1081f))))), u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_add_u32(max(25752u, global0.x), func_2(Struct_1(global1.b.a, vec3<f32>(-240f, global1.b.a.x, -237f), -1i), vec2<bool>(global1.a, true), vec3<i32>(-51316i, var_3.c, global1.d), vec3<i32>(35956i, var_3.c, -2147483647i)).e)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_3.b - vec3<f32>(-682f, var_2.x, -632f)))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(global1.b, vec2<bool>(global1.a, global1.a), vec3<i32>(-12608i, 0i, -2295i), vec3<i32>(-8143i, var_3.c, var_3.c)).b.b - global1.b.b), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_1, var_2.x, 179f))))), -firstTrailingBit(~u_input.a) << (8604u % 32u), _wgslsmith_clamp_vec3_i32(~_wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, 1i, -24034i), vec3<i32>(var_3.c, 1i, u_input.a), vec3<i32>(0i, 39354i, u_input.c.x)), vec3<i32>(var_3.c, -28154i, 33041i) | vec3<i32>(u_input.a, -46315i, var_3.c), vec3<i32>(var_3.c, u_input.c.x, u_input.a)), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, global1.d, global1.b.c, u_input.b), vec4<i32>(u_input.a, var_3.c, global1.b.c, var_3.c)), _wgslsmith_mod_i32(-73852i, 1i), ~(-82742i)) >> (vec3<u32>(~22870u, global1.c | 11642u, global0.x) % vec3<u32>(32u)), vec3<i32>(_wgslsmith_clamp_i32(~2147483647i, firstTrailingBit(-2147483647i), -u_input.a), ~var_3.c, 1i)));
}

