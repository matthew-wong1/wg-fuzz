struct Struct_1 {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec3<u32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: vec4<bool>,
    d: Struct_2,
    e: vec2<f32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec4<i32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(0u, 1u, 1u, 0u);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: bool) -> vec3<f32> {
    var var_0 = arg_0.b.d.zy;
    var var_1 = true;
    var var_2 = Struct_1(global0.ywy, arg_1.b, _wgslsmith_clamp_vec3_u32(global0.zyy, select(arg_1.c, ~(~u_input.d), !vec3<bool>(arg_2, false, false)), global0.xyw << (firstTrailingBit(firstLeadingBit(vec3<u32>(1u, u_input.b, u_input.a))) % vec3<u32>(32u))), arg_0.b.d);
    let var_3 = Struct_1(_wgslsmith_sub_vec3_u32(~min(u_input.d, vec3<u32>(arg_0.b.c.x, arg_0.c, arg_1.a.x)) << (u_input.d % vec3<u32>(32u)), abs(~(~u_input.d))), arg_1.b, firstTrailingBit(vec3<u32>(arg_1.c.x, arg_1.a.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, global0.x, arg_1.a.x, global0.x), vec4<u32>(0u, u_input.d.x, arg_0.c, 4294967295u)))), vec4<bool>(!all(arg_1.d), arg_0.a, true, any(arg_1.d.yy)));
    let var_4 = _wgslsmith_mult_i32(abs(1i), _wgslsmith_mod_i32(-12964i, ~1i));
    return var_2.b.zyz;
}

fn func_4(arg_0: u32, arg_1: vec3<f32>, arg_2: u32) -> bool {
    global0 = ~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.c, global0.yyw), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 19113u, arg_2, u_input.d.x), vec4<u32>(global0.x, arg_2, global0.x, 0u)), _wgslsmith_add_u32(54873u, 43502u), _wgslsmith_mod_u32(global0.x, 0u)), vec4<u32>(1u, 237u, u_input.d.x, _wgslsmith_add_u32(1u, arg_0))), u_input.d.x, 1u, 1u);
    global0 = ~(_wgslsmith_add_vec4_u32(vec4<u32>(arg_2, 1u, u_input.c.x, u_input.a), min(vec4<u32>(0u, 4294967295u, arg_0, arg_0), vec4<u32>(31833u, 1u, 21025u, 21999u))) | vec4<u32>(global0.x & arg_2, _wgslsmith_dot_vec3_u32(global0.xxy, u_input.d), 4294967295u << (arg_0 % 32u), select(0u, u_input.c.x, true))) & vec4<u32>(_wgslsmith_div_u32(arg_0, arg_2), countOneBits(4294967295u), abs(~firstTrailingBit(global0.x)), 4294967295u);
    var var_0 = Struct_2(true, Struct_1(countOneBits(u_input.d), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_1.x - 765f), 174f, arg_1.x, _wgslsmith_f_op_f32(-739f - 549f)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(220f, arg_1.x, arg_1.x, arg_1.x)))))), select(_wgslsmith_clamp_vec3_u32(reverseBits(u_input.c), ~u_input.c, vec3<u32>(92557u, 39279u, 4294967295u)), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, arg_2, 33052u), ~vec3<u32>(global0.x, global0.x, 0u)), vec3<bool>(true, true, all(vec3<bool>(true, false, true)))), vec4<bool>(true, all(vec3<bool>(true, true, true)), all(vec3<bool>(true, false, true)), select(true, true, true))), firstLeadingBit(~_wgslsmith_div_u32(arg_0, 0u)));
    let var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.b.b.x)) * -1466f)))));
    var var_2 = Struct_4(~(~global0.x) ^ _wgslsmith_mult_u32(select(9984u, u_input.a, any(vec2<bool>(var_0.b.d.x, var_0.b.d.x))), ~u_input.b), Struct_1(global0.www, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(var_0.b.b)), vec4<f32>(-1077f, arg_1.x, var_1, var_1), !var_0.a)), var_0.b.b), ~select(firstTrailingBit(vec3<u32>(89059u, u_input.a, 30524u)), _wgslsmith_add_vec3_u32(u_input.c, u_input.d), true), vec4<bool>(var_0.a, true, false, any(var_0.b.d.zwz))));
    return select(any(var_0.b.d), true, false);
}

fn func_2(arg_0: f32, arg_1: Struct_4, arg_2: Struct_4, arg_3: Struct_3) -> u32 {
    var var_0 = abs(arg_2.b.a);
    var var_1 = u_input.b;
    let var_2 = Struct_1(abs(abs(vec3<u32>(u_input.b, 0u, var_0.x)) & max(vec3<u32>(4294967295u, var_0.x, 1u) & arg_3.d.b.c, ~vec3<u32>(6560u, arg_3.d.b.c.x, u_input.d.x))), arg_2.b.b, vec3<u32>(_wgslsmith_sub_u32(47199u, _wgslsmith_add_u32(arg_2.a, 4294967295u)), ~_wgslsmith_div_u32(62965u, arg_2.b.c.x), _wgslsmith_mult_u32(~4294967295u, 0u)) >> ((vec3<u32>(select(4294967295u, global0.x, false), _wgslsmith_sub_u32(0u, arg_2.b.a.x), 16797u) ^ u_input.d) % vec3<u32>(32u)), vec4<bool>(select(func_4(_wgslsmith_mult_u32(80547u, 0u), _wgslsmith_f_op_vec3_f32(func_3(Struct_2(true, Struct_1(arg_1.b.a, vec4<f32>(arg_0, arg_1.b.b.x, arg_2.b.b.x, 180f), arg_2.b.c, vec4<bool>(arg_3.d.a, arg_3.b.b.d.x, true, arg_2.b.d.x)), 0u), arg_1.b, arg_2.b.d.x)), abs(12474u)), arg_2.b.d.x, !all(arg_3.b.b.d.yz)), true, ~arg_1.a > 77488u, true));
    var_0 = ~(var_2.c | u_input.d);
    let var_3 = arg_3.b;
    return _wgslsmith_sub_u32(arg_2.b.c.x | _wgslsmith_add_u32(~min(50888u, 0u), 0u), abs(~_wgslsmith_div_u32(1u, 13285u) << (_wgslsmith_dot_vec3_u32(u_input.d << (vec3<u32>(var_3.b.c.x, arg_3.b.b.c.x, 0u) % vec3<u32>(32u)), vec3<u32>(1u, 1u, 1u)) % 32u)));
}

fn func_1(arg_0: i32, arg_1: i32) -> Struct_4 {
    var var_0 = ~vec3<u32>(firstTrailingBit(_wgslsmith_sub_u32(u_input.b, select(33418u, 79104u, true))), 52954u, ~max(38673u, func_2(-2426f, Struct_4(u_input.b, Struct_1(u_input.d, vec4<f32>(-595f, 314f, -352f, 1000f), global0.xzy, vec4<bool>(false, false, true, false))), Struct_4(38616u, Struct_1(vec3<u32>(27769u, 14038u, 23659u), vec4<f32>(1847f, 778f, -230f, 375f), vec3<u32>(45065u, global0.x, 52494u), vec4<bool>(false, false, true, true))), Struct_3(false, Struct_2(true, Struct_1(vec3<u32>(47081u, 49540u, u_input.a), vec4<f32>(604f, 417f, -1603f, -508f), global0.yxw, vec4<bool>(true, true, true, false)), 0u), vec4<bool>(false, false, false, false), Struct_2(false, Struct_1(vec3<u32>(6013u, 67028u, u_input.b), vec4<f32>(1292f, -126f, -1661f, 336f), global0.yxx, vec4<bool>(true, true, true, false)), 59718u), vec2<f32>(-454f, 160f)))));
    let var_1 = _wgslsmith_f_op_f32(-537f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -550f))))) > -837f;
    let var_2 = false;
    global0 = vec4<u32>(_wgslsmith_sub_u32(51845u, global0.x), abs(32173u), 2383u, ~_wgslsmith_add_u32(countOneBits(var_0.x), _wgslsmith_sub_u32(1u, _wgslsmith_clamp_u32(u_input.a, global0.x, 95316u))));
    var_0 = ~(~(~global0.xwx & global0.zzw) ^ ~(_wgslsmith_div_vec3_u32(u_input.d, global0.zyw) ^ max(global0.yzy, vec3<u32>(28991u, 8717u, 1u))));
    return Struct_4(~0u, Struct_1(_wgslsmith_div_vec3_u32(vec3<u32>(~20066u, ~global0.x, 1u), select(vec3<u32>(var_0.x, var_0.x, 1u), vec3<u32>(65579u, u_input.d.x, u_input.b), !var_2)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(237f, -216f, 1248f, -1068f), vec4<f32>(-1396f, -1746f, 147f, 408f), true))))), firstLeadingBit(~u_input.d), !select(!vec4<bool>(var_1, true, var_2, var_2), vec4<bool>(var_1, var_2, true, false), var_2)));
}

fn func_5(arg_0: Struct_4, arg_1: Struct_1) -> vec4<f32> {
    var var_0 = Struct_3(func_4(4294967295u & max(_wgslsmith_add_u32(arg_0.a, arg_1.c.x), ~4294967295u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.b.wwz)), 1u), Struct_2(any(vec4<bool>(true, !arg_0.b.d.x, !arg_1.d.x, true)), func_1(-(~(-11105i)), 59276i).b, ~arg_1.c.x), arg_1.d, Struct_2(any(vec2<bool>(arg_0.b.d.x && false, arg_0.b.d.x)), Struct_1(vec3<u32>(~u_input.c.x, ~arg_0.b.a.x, global0.x), _wgslsmith_f_op_vec4_f32(-arg_1.b), ~u_input.d, vec4<bool>(true, true, arg_1.d.x, true)), 1u), _wgslsmith_f_op_vec2_f32(round(arg_1.b.zz)));
    let var_1 = arg_1.b.x;
    let var_2 = var_1;
    let var_3 = i32(-1i) * -2147483647i;
    var_0 = Struct_3(false, var_0.d, arg_1.d, var_0.d, _wgslsmith_f_op_vec2_f32(arg_0.b.b.wz * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(arg_0.b.b.yz, _wgslsmith_f_op_vec2_f32(sign(arg_1.b.zz)), !vec2<bool>(false, var_0.c.x))))));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(arg_0.b.b, vec4<f32>(-529f, var_1, var_0.b.b.b.x, arg_0.b.b.x), var_0.b.b.d))))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0.b.b.x, var_2, -2217f, -730f), vec4<f32>(-2061f, var_1, arg_1.b.x, 703f))), _wgslsmith_f_op_vec4_f32(var_0.d.b.b + vec4<f32>(var_1, var_2, var_2, arg_0.b.b.x))), var_0.d.b.b))));
}

fn func_6(arg_0: Struct_1, arg_1: u32, arg_2: f32) -> Struct_2 {
    let var_0 = 25716u;
    global0 = vec4<u32>(~max(_wgslsmith_add_u32(reverseBits(30235u), _wgslsmith_dot_vec2_u32(u_input.c.xx, vec2<u32>(1u, 1u))), _wgslsmith_add_u32(~var_0, var_0)), firstLeadingBit(_wgslsmith_dot_vec2_u32(u_input.c.zz, arg_0.a.yy) << (reverseBits(arg_0.a.x) % 32u)) | (~7322u & ~u_input.a), reverseBits(~(~4294967295u) ^ u_input.d.x), firstTrailingBit(arg_0.a.x));
    global0 = ~(vec4<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1, 11898u), arg_0.c.yy), arg_0.a.x, ~u_input.c.x, ~45452u) << (abs(~_wgslsmith_div_vec4_u32(vec4<u32>(global0.x, 32587u, arg_1, 1u), vec4<u32>(1u, 1u, arg_1, 0u))) % vec4<u32>(32u)));
    global0 = reverseBits(vec4<u32>(abs(~global0.x), u_input.d.x, min(~4294967295u, 3911u), select(min(max(arg_0.c.x, global0.x), arg_0.a.x), _wgslsmith_sub_u32(1u, abs(arg_0.c.x)), !arg_0.d.x)));
    let var_1 = false;
    return Struct_2(all(arg_0.d.xw), arg_0, reverseBits(4294967295u ^ var_0));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(true, func_6(Struct_1(~_wgslsmith_clamp_vec3_u32(global0.wwx, vec3<u32>(global0.x, global0.x, 1u), vec3<u32>(50427u, u_input.c.x, global0.x)), _wgslsmith_f_op_vec4_f32(func_5(func_1(25759i, 2147483647i), Struct_1(vec3<u32>(u_input.c.x, global0.x, u_input.c.x), vec4<f32>(-611f, 889f, -283f, 274f), vec3<u32>(0u, 41177u, u_input.c.x), vec4<bool>(false, false, false, true)))), ~u_input.d, !select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false))), ~reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.d.x, 4294967295u, u_input.c.x), vec4<u32>(72567u, u_input.c.x, u_input.b, 21927u))), _wgslsmith_f_op_f32(233f + _wgslsmith_f_op_f32(-114f - _wgslsmith_f_op_f32(947f - 245f)))), vec4<bool>(any(vec2<bool>(true, true)), any(vec4<bool>(true, true, true, true)) & false, true, any(func_1(1i, 1i).b.d)), Struct_2(true, Struct_1(select(vec3<u32>(global0.x, u_input.c.x, global0.x), ~vec3<u32>(1u, global0.x, 68492u), true), vec4<f32>(-1150f, 185f, -642f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), ~vec3<u32>(global0.x, 1u, 76917u), func_1(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 0i, -2147483647i, 11324i), vec4<i32>(0i, -1i, -5506i, -64597i))).b.d), ~global0.x), _wgslsmith_f_op_vec3_f32(func_3(Struct_2(true, func_1(max(1i, -23043i), _wgslsmith_add_i32(26690i, -1i)).b, global0.x), Struct_1(vec3<u32>(u_input.a, ~9977u, u_input.c.x), _wgslsmith_f_op_vec4_f32(func_5(func_1(1i, 14051i), Struct_1(u_input.d, vec4<f32>(-2010f, 686f, -571f, -548f), u_input.c, vec4<bool>(false, true, true, true)))), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 4294967295u, global0.x), vec3<u32>(u_input.b, global0.x, u_input.d.x), vec3<u32>(103565u, global0.x, global0.x)), vec4<bool>(true, true, true, true)), true)).zz);
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(var_0.d.b.b.x - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(868f, var_0.b.b.b.x) + 592f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1710f * -912f) * _wgslsmith_div_f32(1526f, var_0.b.b.b.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(658f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.e.x))), 1000f, -286f);
    var_1 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-191f + _wgslsmith_f_op_f32(-1f)), 271f, _wgslsmith_f_op_f32(-135f - 1834f), var_1.x)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-596f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.b.b.b.x)))));
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(2681f * var_0.d.b.b.x), _wgslsmith_div_f32(var_0.e.x, var_0.b.b.b.x)) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1009f, var_1.x), var_1.xy, any(vec4<bool>(true, var_0.a, var_0.b.a, true))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.d.b.b.xx)), var_1.yy, !(6199u < var_0.d.c))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.d.b.b.wy - var_1.yw)));
    var var_4 = func_6(func_6(var_0.d.b, func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(966f, var_3.x)) - _wgslsmith_f_op_f32(1654f + var_0.e.x)), Struct_4(~4294967295u, var_0.b.b), func_1(i32(-1i) * -1i, ~1i), Struct_3(true, var_0.b, var_0.c, var_0.d, vec2<f32>(-1000f, -894f))), 429f).b, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.b.b.c.x, u_input.d.x | global0.x) | vec2<u32>(4294967295u, 0u), select(_wgslsmith_sub_vec2_u32(abs(u_input.c.yy), _wgslsmith_add_vec2_u32(vec2<u32>(27719u, global0.x), vec2<u32>(var_0.b.b.a.x, global0.x))), u_input.d.yx << ((global0.wy >> (vec2<u32>(global0.x, var_0.b.b.a.x) % vec2<u32>(32u))) % vec2<u32>(32u)), !select(vec2<bool>(false, false), var_0.c.yw, var_0.d.a))), func_6(var_0.b.b, ~_wgslsmith_dot_vec3_u32(u_input.c, min(var_0.b.b.a, u_input.c)), -731f).b.b.x).a;
    var var_5 = !func_1(-2147483647i, _wgslsmith_mod_i32(_wgslsmith_clamp_i32(i32(-1i) * -21748i, i32(-1i) * -1i, _wgslsmith_mod_i32(-50403i, 20007i)), -48594i << (~global0.x % 32u))).b.d.yx;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -386f)), vec3<f32>(-1735f, _wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x * var_1.x)))), ~abs(vec4<i32>(-29042i, abs(-1i), i32(-1i) * -12430i, ~(-36538i))), _wgslsmith_clamp_vec4_u32(~vec4<u32>(50740u, u_input.a, 90962u, 1u) >> (_wgslsmith_clamp_vec4_u32(~vec4<u32>(global0.x, 33928u, 4294967295u, global0.x), vec4<u32>(40310u, 75291u, global0.x, 0u), ~vec4<u32>(4294967295u, u_input.a, 0u, 44786u)) % vec4<u32>(32u)), ~firstTrailingBit(abs(vec4<u32>(u_input.c.x, global0.x, 4294967295u, var_0.b.c))), vec4<u32>(u_input.a, ~14248u, var_0.b.b.c.x, 25209u)));
}

