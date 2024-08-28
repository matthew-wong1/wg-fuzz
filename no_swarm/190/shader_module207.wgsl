struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: f32,
    d: vec2<f32>,
    e: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_3,
    d: Struct_3,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: u32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3() -> f32 {
    var var_0 = false;
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -254f), 681f);
    var var_2 = Struct_2(_wgslsmith_clamp_vec2_u32(~vec2<u32>(~u_input.c, ~u_input.c), vec2<u32>(u_input.c, ~u_input.c ^ 11182u), reverseBits(abs(vec2<u32>(u_input.c, u_input.c)))), Struct_1(u_input.c, min((vec4<u32>(60257u, 1u, 90216u, 4294967295u) | vec4<u32>(70670u, 1u, u_input.c, 0u)) ^ _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 26060u, u_input.c, u_input.c), vec4<u32>(0u, 0u, u_input.c, u_input.c), vec4<u32>(u_input.c, u_input.c, 0u, u_input.c)), vec4<u32>(~u_input.c, max(u_input.c, u_input.c), ~u_input.c, ~u_input.c)), var_1.x), -401f, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -909f) * _wgslsmith_f_op_f32(-var_1.x)), -522f) - vec2<f32>(_wgslsmith_f_op_f32(sign(-1306f)), _wgslsmith_div_f32(337f, _wgslsmith_f_op_f32(select(var_1.x, var_1.x, false))))), vec4<bool>(all(vec3<bool>(true, true, true)), false, !(_wgslsmith_f_op_f32(step(var_1.x, -1000f)) != var_1.x), true));
    var_0 = !(var_2.e.x & select(!any(var_2.e), true, any(var_2.e)));
    let var_3 = 25966u;
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(119f))));
}

fn func_2(arg_0: vec4<u32>) -> Struct_3 {
    let var_0 = ~(~vec4<u32>(arg_0.x << (~33407u % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, u_input.c) >> (arg_0.zw % vec2<u32>(32u)), vec2<u32>(14208u, 29055u) | vec2<u32>(0u, u_input.c)), ~(arg_0.x | u_input.c), arg_0.x));
    var var_1 = Struct_3(Struct_1(26554u ^ u_input.c, vec4<u32>(u_input.c, ~u_input.c, ~(var_0.x & var_0.x), ~abs(var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -736f) + _wgslsmith_f_op_f32(func_3())) + -1007f)));
    var var_2 = Struct_2(var_1.a.b.wy, var_1.a, var_1.a.c, _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.a.c, 660f)), 1f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.c, var_1.a.c)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(480f, 1134f), vec2<f32>(800f, var_1.a.c))))), vec4<bool>(~u_input.c >= ~select(45801u, 37399u, false), true, all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), true))), !any(vec4<bool>(true, true, true, true))));
    let var_3 = Struct_2(min(var_1.a.b.wx, ~arg_0.xy), var_1.a, _wgslsmith_f_op_f32(round(-225f)), var_2.d, !vec4<bool>(var_2.e.x, var_2.e.x, any(vec2<bool>(true, var_2.e.x)), true));
    var var_4 = var_1.a;
    return Struct_3(Struct_1(12435u, firstTrailingBit(~var_4.b), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.d.x) + _wgslsmith_f_op_f32(trunc(var_3.d.x)))))));
}

fn func_4(arg_0: i32, arg_1: vec2<f32>, arg_2: Struct_4, arg_3: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_2.b.c, -846f, arg_1.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.c, 571f, 390f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.c.a.c, 2182f, arg_2.d.a.c) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_3.c, arg_2.c.a.c, 427f)))) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(524f, 822f, arg_3.c))))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(364f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.x * 921f), -900f), var_0.x) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.c, arg_3.c, 1799f)) - vec3<f32>(arg_2.d.a.c, _wgslsmith_f_op_f32(319f + -408f), _wgslsmith_f_op_f32(abs(1403f))))));
    return Struct_1(reverseBits(0u), arg_2.c.a.b, arg_3.c);
}

fn func_1(arg_0: u32, arg_1: vec3<u32>) -> Struct_2 {
    var var_0 = 10491i | firstTrailingBit(_wgslsmith_mult_i32(-2147483647i, abs(0i)));
    let var_1 = Struct_4(firstLeadingBit(~vec2<i32>(u_input.b, -24731i)) & abs(vec2<i32>(~(-12551i), -12833i)), func_4(u_input.a, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(560f, -1925f) - -112f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -319f))), Struct_4(vec2<i32>(~u_input.a, 1i), Struct_1(_wgslsmith_sub_u32(44189u, 1u), _wgslsmith_div_vec4_u32(vec4<u32>(arg_0, 0u, arg_1.x, 38777u), vec4<u32>(0u, arg_0, 47757u, arg_0)), _wgslsmith_f_op_f32(round(370f))), func_2(~vec4<u32>(1u, 31275u, 31777u, u_input.c)), Struct_3(Struct_1(arg_0, vec4<u32>(4294967295u, arg_1.x, arg_1.x, arg_0), -225f)), Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(11371u, 1u, 37250u, arg_1.x), vec4<u32>(62887u, 0u, 0u, 47314u)), vec4<u32>(arg_1.x, 0u, 55832u, arg_1.x), 733f)), Struct_1(func_2(~vec4<u32>(1u, 56186u, arg_1.x, arg_1.x)).a.b.x, vec4<u32>(0u, select(arg_0, 21618u, false), firstTrailingBit(u_input.c), arg_1.x << (4294967295u % 32u)), 579f)), Struct_3(Struct_1(func_2(_wgslsmith_sub_vec4_u32(vec4<u32>(24848u, 4294967295u, arg_1.x, 0u), vec4<u32>(u_input.c, 4294967295u, arg_0, arg_1.x))).a.b.x, vec4<u32>(abs(64615u), 88920u, u_input.c, 4294967295u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(199f))))), Struct_3(func_2(~(vec4<u32>(arg_0, 15257u, arg_1.x, u_input.c) | vec4<u32>(40846u, u_input.c, 1u, 22683u))).a), func_4(-(~(-25432i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-972f, 216f)))), Struct_4(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, 33614i), vec2<i32>(u_input.b, -45035i)) & -vec2<i32>(u_input.a, u_input.a), func_4(u_input.b, vec2<f32>(199f, -696f), Struct_4(vec2<i32>(-28548i, u_input.a), Struct_1(0u, vec4<u32>(63309u, u_input.c, arg_0, 4294967295u), 1974f), Struct_3(Struct_1(arg_0, vec4<u32>(arg_0, arg_0, u_input.c, 4294967295u), -324f)), Struct_3(Struct_1(u_input.c, vec4<u32>(u_input.c, 30793u, 0u, 0u), 1051f)), Struct_1(1u, vec4<u32>(0u, 17002u, 14791u, 1u), -526f)), func_2(vec4<u32>(u_input.c, arg_0, arg_0, arg_0)).a), func_2(~vec4<u32>(arg_0, arg_0, 2659u, 1u)), func_2(vec4<u32>(u_input.c, arg_0, 47673u, u_input.c)), Struct_1(1u, vec4<u32>(u_input.c, 56832u, 25843u, 100155u), _wgslsmith_f_op_f32(-827f * 1871f))), Struct_1(37512u, ~abs(vec4<u32>(1u, arg_0, u_input.c, 51799u)), -1106f)));
    var_0 = 1i;
    var var_2 = vec2<u32>(firstLeadingBit(_wgslsmith_add_u32(_wgslsmith_add_u32(var_1.b.a, arg_0), select(45020u, 23519u, false))), arg_0) >> (arg_1.zz % vec2<u32>(32u));
    let var_3 = func_2(vec4<u32>(arg_1.x ^ (_wgslsmith_sub_u32(var_1.d.a.a, 78420u) ^ _wgslsmith_mod_u32(4294967295u, u_input.c)), _wgslsmith_mod_u32(~34056u, 97421u), _wgslsmith_dot_vec2_u32(vec2<u32>(reverseBits(0u), abs(arg_0)), ~var_1.d.a.b.wx ^ var_1.b.b.wx), 4294967295u));
    return Struct_2(firstLeadingBit(~(var_3.a.b.wz ^ var_3.a.b.wx) >> (_wgslsmith_mult_vec2_u32(reverseBits(arg_1.xz), vec2<u32>(var_1.c.a.b.x, 45581u)) % vec2<u32>(32u))), func_4(countOneBits(-(~0i)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-609f, _wgslsmith_f_op_f32(sign(var_1.d.a.c))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_1.d.a.c, 1000f)))), select(true, true, true))), Struct_4(abs(-vec2<i32>(u_input.b, 2147483647i)), var_1.b, var_3, Struct_3(func_2(vec4<u32>(arg_0, arg_0, arg_1.x, arg_0)).a), func_4(-56043i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(428f, -1128f)), Struct_4(vec2<i32>(u_input.a, 2147483647i), var_1.b, Struct_3(var_3.a), var_3, Struct_1(627u, var_3.a.b, var_1.d.a.c)), Struct_1(u_input.c, vec4<u32>(var_1.d.a.b.x, 4294967295u, 1u, u_input.c), 1019f))), var_1.d.a), func_2(var_1.e.b).a.c, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(2310f, _wgslsmith_div_f32(-1097f, 472f)))), var_1.c.a.c), select(vec4<bool>(any(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), false)), _wgslsmith_f_op_f32(f32(-1f) * -629f) <= var_3.a.c, true, all(vec3<bool>(false, true, true))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(var_3.a.c <= 397f, true, -2147483647i < var_1.a.x, true), all(vec4<bool>(true, true, true, true))), vec4<bool>((var_3.a.a ^ 1u) > firstTrailingBit(4294967295u), !all(vec3<bool>(true, false, false)), true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(177f + _wgslsmith_f_op_f32(1f * 599f)) + -126f);
    var var_1 = func_1(~(~81574u), ~vec3<u32>(firstTrailingBit(u_input.c << (1u % 32u)), u_input.c | ~1u, u_input.c));
    let x = u_input.a;
    s_output = StorageBuffer(min(~vec4<u32>(func_1(u_input.c, var_1.b.b.xyw).b.a, 53921u, var_1.a.x, var_1.b.a), func_1(_wgslsmith_dot_vec3_u32(vec3<u32>(62055u, var_1.b.b.x, var_1.b.a), var_1.b.b.xwz), min(var_1.b.b.xyx, var_1.b.b.zxw)).b.b), ~vec2<i32>(_wgslsmith_clamp_i32(u_input.b, u_input.b, u_input.a), _wgslsmith_dot_vec2_i32(vec2<i32>(21598i, -65941i), vec2<i32>(0i, 1i))) | firstLeadingBit(_wgslsmith_clamp_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, -5479i), vec2<i32>(-12126i, u_input.a), vec2<i32>(u_input.b, -2147483647i)), firstLeadingBit(vec2<i32>(u_input.a, -8514i)), countOneBits(vec2<i32>(2147483647i, u_input.b)))), ~(~4294967295u), vec4<u32>(firstLeadingBit(~0u), var_1.b.b.x, var_1.a.x, u_input.c));
}

