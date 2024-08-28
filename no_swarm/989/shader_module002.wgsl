struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: vec3<bool>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 23> = array<vec3<i32>, 23>(vec3<i32>(-4179i, i32(-2147483648), 8196i), vec3<i32>(66351i, 17717i, -1i), vec3<i32>(2147483647i, 2147483647i, 21715i), vec3<i32>(-36766i, -14389i, 22893i), vec3<i32>(i32(-2147483648), -29121i, -22997i), vec3<i32>(-2841i, 10238i, i32(-2147483648)), vec3<i32>(14668i, 0i, 2147483647i), vec3<i32>(12205i, 36121i, -64892i), vec3<i32>(2147483647i, 1i, 1i), vec3<i32>(0i, 26935i, 18752i), vec3<i32>(1i, 29158i, -42196i), vec3<i32>(50631i, 24887i, i32(-2147483648)), vec3<i32>(-58637i, 1i, 1i), vec3<i32>(2147483647i, 1i, 2941i), vec3<i32>(-40183i, 2147483647i, 1i), vec3<i32>(-5565i, 0i, i32(-2147483648)), vec3<i32>(-1i, -1i, 2147483647i), vec3<i32>(10782i, 2147483647i, 12490i), vec3<i32>(2147483647i, -1i, -9881i), vec3<i32>(i32(-2147483648), i32(-2147483648), i32(-2147483648)), vec3<i32>(2147483647i, -28445i, 30211i), vec3<i32>(i32(-2147483648), 985i, 0i), vec3<i32>(12697i, 0i, i32(-2147483648)));

var<private> global1: array<vec2<f32>, 17> = array<vec2<f32>, 17>(vec2<f32>(683f, 2208f), vec2<f32>(-1518f, 329f), vec2<f32>(-1000f, 1690f), vec2<f32>(338f, -1385f), vec2<f32>(1000f, -850f), vec2<f32>(-912f, 313f), vec2<f32>(120f, 1000f), vec2<f32>(814f, 212f), vec2<f32>(-1000f, -778f), vec2<f32>(-752f, -1000f), vec2<f32>(-581f, -897f), vec2<f32>(-769f, -266f), vec2<f32>(-791f, -550f), vec2<f32>(1344f, 1341f), vec2<f32>(1963f, 523f), vec2<f32>(180f, 1847f), vec2<f32>(-684f, -277f));

var<private> global2: vec2<bool> = vec2<bool>(false, true);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec4<i32>) -> u32 {
    var var_0 = abs(select(vec3<u32>(1824u, 4403u, 0u), select(vec3<u32>(3499u, 4294967295u, 9379u), vec3<u32>(4294967295u, 7501u, 30015u), global2.x), !global2.x) ^ vec3<u32>(1u, 1u, 1u)) & ~_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 1u, 1u), ~abs(vec3<u32>(57410u, 0u, 19844u)));
    global1 = array<vec2<f32>, 17>();
    let var_1 = _wgslsmith_div_i32(select(arg_0.x, -63386i, any(vec2<bool>(!global2.x, !global2.x))), ~(~0i));
    global0 = array<vec3<i32>, 23>();
    global2 = select(!(!vec2<bool>(global2.x & false, global2.x)), !select(select(!vec2<bool>(true, global2.x), !vec2<bool>(global2.x, true), true), !(!vec2<bool>(global2.x, global2.x)), any(select(vec3<bool>(false, true, global2.x), vec3<bool>(global2.x, true, global2.x), vec3<bool>(global2.x, global2.x, global2.x)))), all(select(select(vec2<bool>(global2.x, false), vec2<bool>(global2.x, false), vec2<bool>(global2.x, global2.x)), vec2<bool>(false, global2.x), vec2<bool>(global2.x, global2.x))) != !any(!vec4<bool>(global2.x, global2.x, global2.x, true)));
    return ~_wgslsmith_dot_vec3_u32(abs(reverseBits(vec3<u32>(var_0.x, var_0.x, 0u))) >> (~abs(vec3<u32>(4294967295u, 64563u, 1u)) % vec3<u32>(32u)), select(select(vec3<u32>(0u, 54467u, 33607u) ^ vec3<u32>(var_0.x, var_0.x, 21760u), vec3<u32>(83731u, var_0.x, 1u), !vec3<bool>(global2.x, global2.x, global2.x)), vec3<u32>(var_0.x, 1u, _wgslsmith_clamp_u32(7725u, 33327u, 0u)), vec3<bool>(true, true, false)));
}

fn func_2(arg_0: vec3<u32>, arg_1: f32, arg_2: Struct_2, arg_3: i32) -> Struct_1 {
    var var_0 = Struct_2(arg_2.b, Struct_1(_wgslsmith_mult_u32(firstLeadingBit(arg_2.c), ~arg_0.x) >> (arg_0.x % 32u), max(~(~arg_2.a.b), vec3<u32>(func_3(vec4<i32>(arg_2.d, arg_2.d, -1i, 33545i)), arg_2.a.a, _wgslsmith_mult_u32(arg_2.a.a, arg_0.x))), !(!vec3<bool>(global2.x, false, global2.x)), !any(!vec2<bool>(arg_2.a.c.x, true))), 0u, max(~_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 0i, arg_2.d, u_input.b.x) ^ vec4<i32>(arg_2.d, -13032i, 0i, arg_2.d), reverseBits(vec4<i32>(u_input.a.x, -2147483647i, -1i, -1i))), 32637i));
    var_0 = Struct_2(Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, ~4294967295u, 1u, _wgslsmith_sub_u32(4294967295u, arg_2.a.a)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(92125u, arg_0.x, var_0.a.b.x, var_0.c))), vec3<u32>(firstTrailingBit(abs(arg_2.c)), ~_wgslsmith_mult_u32(arg_2.c, arg_2.b.a), max(1u, firstTrailingBit(var_0.c))), select(select(vec3<bool>(true, true, arg_2.a.c.x), vec3<bool>(var_0.a.c.x, true, false), select(false, var_0.a.c.x, true)), !(!vec3<bool>(true, global2.x, true)), !all(var_0.a.c)), true), Struct_1(var_0.a.b.x, vec3<u32>(~_wgslsmith_mult_u32(26189u, 0u), abs(arg_0.x), arg_0.x), vec3<bool>(any(vec4<bool>(false, arg_2.a.c.x, false, arg_2.a.c.x)), any(vec4<bool>(false, global2.x, true, global2.x)), all(arg_2.a.c)), true), 4294967295u, _wgslsmith_mod_i32(~var_0.d, -2147483647i));
    global2 = vec2<bool>(any(vec2<bool>(!global2.x, all(select(arg_2.b.c.xz, vec2<bool>(true, false), false)))), true);
    var var_1 = 21542i;
    var var_2 = u_input.a;
    return var_0.a;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> Struct_2 {
    let var_0 = Struct_1(arg_1.b.x, select(arg_1.b, vec3<u32>(_wgslsmith_add_u32(~4294967295u, 1u), 32447u, 1u), !all(vec4<bool>(false, false, true, true))), vec3<bool>(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1187f, 350f)) + -465f) >= -2862f, true), false);
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(abs(var_0.b), vec3<u32>(arg_1.a, arg_1.b.x, ~9003u)), 17u)];
    var var_2 = var_1.x;
    var var_3 = Struct_2(Struct_1(arg_0.b.x, _wgslsmith_sub_vec3_u32(vec3<u32>(var_0.b.x, 32528u, var_0.b.x), _wgslsmith_mod_vec3_u32(vec3<u32>(0u, var_0.a, arg_1.a), vec3<u32>(4294967295u, 16377u, arg_0.b.x)) >> (_wgslsmith_add_vec3_u32(arg_0.b, vec3<u32>(10047u, 1u, var_0.a)) % vec3<u32>(32u))), !select(arg_0.c, arg_0.c, vec3<bool>(arg_1.d, arg_0.d, false)), var_0.c.x), func_2(firstLeadingBit(vec3<u32>(var_0.a, ~arg_1.a, 1u)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-2671f, 1000f, var_0.d))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-105f * var_1.x))), false)), Struct_2(var_0, func_2(var_0.b, _wgslsmith_div_f32(var_1.x, -502f), Struct_2(var_0, var_0, 1u, arg_2), u_input.b.x), select(_wgslsmith_add_u32(7373u, 1u), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.b.x, arg_0.a, 1u), var_0.b), any(vec3<bool>(arg_0.c.x, global2.x, arg_0.d))), _wgslsmith_div_i32(0i, 0i >> (var_0.a % 32u))), reverseBits(-1i)), 4294967295u, ~(-1i));
    let var_4 = Struct_2(func_2(_wgslsmith_mult_vec3_u32(~_wgslsmith_div_vec3_u32(var_3.b.b, vec3<u32>(0u, arg_0.a, arg_1.a)), vec3<u32>(~var_0.b.x, _wgslsmith_clamp_u32(13828u, arg_1.a, var_3.a.a), arg_1.b.x & 113194u)), _wgslsmith_f_op_f32(f32(-1f) * -1286f), Struct_2(Struct_1(1u, ~vec3<u32>(45738u, arg_1.b.x, var_3.c), !var_3.b.c, !var_0.c.x), var_0, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(arg_1.a, 29253u, 32771u, 2408u)), firstLeadingBit(vec4<u32>(1u, arg_1.b.x, 4294967295u, 0u))), _wgslsmith_sub_i32(-2147483647i, -1i)), arg_2), Struct_1(~_wgslsmith_sub_u32(var_0.b.x ^ var_0.b.x, arg_0.b.x), func_2(~(~var_0.b), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-766f, var_1.x)))), Struct_2(Struct_1(arg_0.a, vec3<u32>(arg_0.b.x, var_0.a, arg_1.a), arg_0.c, true), Struct_1(arg_1.a, vec3<u32>(var_3.a.a, arg_1.b.x, var_0.a), var_3.a.c, arg_1.d), var_3.a.b.x, min(var_3.d, 40883i)), arg_2).b, !var_3.a.c, true), _wgslsmith_div_u32(arg_0.a, 6089u), _wgslsmith_add_i32(firstTrailingBit(~9645i) | _wgslsmith_dot_vec3_i32(-vec3<i32>(-30216i, -5754i, -1602i), vec3<i32>(arg_2, 55499i, arg_2)), max(arg_2, -28907i)));
    return var_4;
}

fn func_5(arg_0: bool, arg_1: Struct_2, arg_2: vec2<bool>) -> vec4<bool> {
    global2 = vec2<bool>(global2.x, true);
    var var_0 = arg_1;
    let var_1 = func_4(arg_1.a, Struct_1(var_0.b.b.x, ~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_1.c, 73162u, arg_1.a.a), vec3<u32>(arg_1.b.b.x, arg_1.c, arg_1.a.a), vec3<u32>(27123u, 1u, 18717u))), !(!vec3<bool>(true, true, var_0.b.d)), true), func_4(arg_1.b, Struct_1(_wgslsmith_add_u32(~34318u, _wgslsmith_mod_u32(25918u, 15689u)), _wgslsmith_mod_vec3_u32(vec3<u32>(var_0.b.b.x, 0u, 61010u) & arg_1.a.b, ~vec3<u32>(16089u, arg_1.b.a, arg_1.b.a)), !func_2(arg_1.a.b, -432f, Struct_2(arg_1.a, Struct_1(1u, var_0.b.b, arg_1.b.c, arg_0), arg_1.c, var_0.d), -2147483647i).c, true), select(abs(-4636i << (var_0.b.a % 32u)), _wgslsmith_mod_i32(var_0.d, ~(-9628i)), true)).d).b.c.zz;
    global0 = array<vec3<i32>, 23>();
    var var_2 = func_2(vec3<u32>(func_4(Struct_1(func_3(vec4<i32>(2147483647i, -2563i, -38852i, 2147483647i)), vec3<u32>(arg_1.b.b.x, 9753u, 4294967295u), select(arg_1.b.c, vec3<bool>(true, true, true), var_0.b.c), !arg_1.b.d), var_0.a, _wgslsmith_div_i32(func_4(Struct_1(0u, vec3<u32>(var_0.b.b.x, arg_1.c, 82987u), vec3<bool>(false, true, true), false), Struct_1(19892u, vec3<u32>(arg_1.a.b.x, var_0.a.a, var_0.a.a), arg_1.b.c, arg_1.b.c.x), 0i).d, arg_1.d)).c, var_0.c, ~1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-736f - 1006f) - 678f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(406f + -658f) + -1011f))), arg_1, firstTrailingBit(i32(-1i) * -(~3087i))).b.x;
    return vec4<bool>(false, false, any(vec2<bool>(func_4(Struct_1(arg_1.b.b.x, arg_1.a.b, vec3<bool>(true, var_1.x, false), arg_2.x), func_2(arg_1.b.b, -516f, Struct_2(var_0.a, arg_1.a, var_0.a.a, 8664i), -2147483647i), _wgslsmith_mod_i32(arg_1.d, -33506i)).a.c.x, true)), var_0.a.c.x);
}

fn func_1() -> Struct_2 {
    let var_0 = !func_5(global2.x, func_4(func_2(vec3<u32>(4294967295u, 40598u, 4294967295u), 736f, Struct_2(Struct_1(78384u, vec3<u32>(1u, 87474u, 4294967295u), vec3<bool>(true, true, false), true), Struct_1(4294967295u, vec3<u32>(30131u, 1u, 42219u), vec3<bool>(global2.x, true, global2.x), true), 3235u, 14788i), _wgslsmith_clamp_i32(u_input.a.x, -2147483647i, u_input.a.x)), Struct_1(abs(1u), vec3<u32>(0u, 46821u, 2981u), select(vec3<bool>(global2.x, global2.x, global2.x), vec3<bool>(global2.x, global2.x, true), vec3<bool>(global2.x, global2.x, false)), global2.x), -4090i), func_2(select(vec3<u32>(44361u, 16843u, 0u), vec3<u32>(1u, 1u, 1u), select(vec3<bool>(false, global2.x, global2.x), vec3<bool>(global2.x, global2.x, false), global2.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-530f, -1798f))), Struct_2(func_4(Struct_1(1u, vec3<u32>(21954u, 1u, 1373u), vec3<bool>(global2.x, global2.x, false), false), Struct_1(1u, vec3<u32>(1u, 35137u, 46445u), vec3<bool>(global2.x, true, false), global2.x), 40628i).b, Struct_1(1u, vec3<u32>(0u, 14244u, 4294967295u), vec3<bool>(false, false, true), false), _wgslsmith_mult_u32(65175u, 31731u), max(u_input.a.x, u_input.b.x)), ~firstTrailingBit(u_input.b.x)).c.yz);
    var var_1 = !select(select(select(func_5(var_0.x, Struct_2(Struct_1(70540u, vec3<u32>(4294967295u, 110477u, 0u), var_0.wxy, true), Struct_1(1u, vec3<u32>(56383u, 4294967295u, 0u), var_0.yyz, true), 1u, -2147483647i), var_0.xy), var_0, true), !(!var_0), true), func_5(global2.x, Struct_2(func_4(Struct_1(0u, vec3<u32>(4294967295u, 1u, 0u), vec3<bool>(var_0.x, var_0.x, var_0.x), false), Struct_1(1u, vec3<u32>(45241u, 4294967295u, 67151u), var_0.yyw, global2.x), -2147483647i).a, Struct_1(18498u, vec3<u32>(69272u, 4294967295u, 1u), var_0.wyw, true), max(42711u, 1u), -u_input.a.x), func_5(true, func_4(Struct_1(16783u, vec3<u32>(4294967295u, 1u, 52083u), vec3<bool>(var_0.x, var_0.x, true), false), Struct_1(28518u, vec3<u32>(4294967295u, 4294967295u, 61868u), vec3<bool>(true, var_0.x, true), global2.x), u_input.a.x), vec2<bool>(global2.x, var_0.x)).yy), vec4<bool>(!(global2.x & global2.x), all(!vec4<bool>(var_0.x, global2.x, true, false)), global2.x, !(u_input.b.x < -35173i)));
    var var_2 = Struct_2(Struct_1(1u, func_2(max(~vec3<u32>(10300u, 29194u, 40266u), ~vec3<u32>(0u, 4294967295u, 32632u)), -918f, Struct_2(Struct_1(81947u, vec3<u32>(0u, 1u, 4294967295u), var_1.zyx, var_1.x), Struct_1(28111u, vec3<u32>(48886u, 1u, 4294967295u), vec3<bool>(var_1.x, true, var_1.x), var_1.x), ~4294967295u, -u_input.b.x), u_input.b.x).b, !var_1.wxx, true), Struct_1(reverseBits(1u), func_2(func_2(vec3<u32>(1u, 1u, 1u), -1048f, Struct_2(Struct_1(32735u, vec3<u32>(1u, 0u, 4294967295u), var_0.yzx, false), Struct_1(0u, vec3<u32>(10954u, 1u, 8306u), vec3<bool>(false, true, false), var_1.x), 31777u, u_input.a.x), 2147483647i).b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1603f))), func_4(func_4(Struct_1(77420u, vec3<u32>(39421u, 4294967295u, 33939u), vec3<bool>(var_1.x, global2.x, false), true), Struct_1(88606u, vec3<u32>(122641u, 1u, 90596u), var_0.yyz, var_1.x), 29880i).a, Struct_1(3558u, vec3<u32>(0u, 4294967295u, 9479u), vec3<bool>(var_0.x, true, var_0.x), true), ~u_input.b.x), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.a.x), vec2<i32>(u_input.b.x, u_input.a.x))).b, var_1.wwz, !(firstLeadingBit(u_input.b.x) > ~u_input.a.x)), 58502u, select(1i, u_input.b.x, true || (!var_1.x && any(var_0.xxz))));
    var_1 = !var_0;
    var var_3 = func_4(func_4(Struct_1(~4294967295u, ~vec3<u32>(var_2.a.b.x, 29925u, 112971u), !vec3<bool>(var_1.x, true, var_0.x), var_1.x), func_4(Struct_1(var_2.a.b.x, vec3<u32>(42445u, 10889u, var_2.c), vec3<bool>(var_0.x, true, false), true), Struct_1(15997u, var_2.a.b, vec3<bool>(var_1.x, var_2.a.c.x, var_1.x), global2.x), u_input.a.x).a, 0i).a, var_2.b, _wgslsmith_mod_i32(var_2.d, func_4(var_2.a, var_2.b, u_input.b.x).d)).a.c.x == (true && all(var_0));
    return func_4(var_2.b, Struct_1(~6449u, ~reverseBits(vec3<u32>(0u, var_2.c, 0u)), var_2.a.c, true), 25570i << (abs(_wgslsmith_mult_u32(~41465u, var_2.b.b.x)) % 32u));
}

fn func_6(arg_0: i32, arg_1: Struct_2) -> Struct_2 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1601f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(448f + _wgslsmith_f_op_f32(trunc(1000f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-289f - -168f)))), 2034f);
    let var_1 = func_4(Struct_1(reverseBits(16310u), vec3<u32>(abs(0u), reverseBits(_wgslsmith_sub_u32(4294967295u, arg_1.b.b.x)), func_3(-vec4<i32>(arg_0, -1i, u_input.b.x, -17386i))), func_1().a.c, _wgslsmith_mod_i32(arg_1.d | 33501i, i32(-1i) * -8680i) < (min(1i, arg_0) | arg_0)), Struct_1(func_1().c, vec3<u32>(3630u, arg_1.c, max(arg_1.b.a, arg_1.a.b.x)) ^ ~(~arg_1.a.b), !(!func_4(Struct_1(arg_1.c, arg_1.b.b, vec3<bool>(true, global2.x, true), true), Struct_1(arg_1.a.b.x, vec3<u32>(25787u, 51437u, arg_1.a.a), arg_1.b.c, global2.x), 7040i).b.c), all(vec3<bool>(func_2(vec3<u32>(arg_1.c, 8788u, 84502u), 813f, arg_1, u_input.b.x).d, arg_1.c < arg_1.c, true))), u_input.b.x).a.b.x;
    global2 = func_5(!global2.x, Struct_2(Struct_1(1u, ~firstTrailingBit(arg_1.b.b), !(!arg_1.b.c), global2.x), func_2(min(select(arg_1.a.b, vec3<u32>(arg_1.a.a, var_1, arg_1.c), true), arg_1.a.b), -1400f, arg_1, ~(-u_input.a.x)), _wgslsmith_mult_u32(func_4(Struct_1(var_1, arg_1.b.b, arg_1.a.c, arg_1.a.c.x), Struct_1(1u, vec3<u32>(var_1, 10437u, 23163u), vec3<bool>(false, false, true), arg_1.a.c.x), arg_0).b.a, ~arg_1.c) ^ abs(arg_1.c), arg_1.d), arg_1.b.c.xz).xy;
    var var_2 = ~_wgslsmith_dot_vec2_u32(arg_1.b.b.yz, abs(arg_1.b.b.zx));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(640f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-569f, _wgslsmith_f_op_f32(floor(493f)), arg_1.a.d)), 1698f)), false)));
    return func_4(Struct_1(arg_1.c, arg_1.a.b, !vec3<bool>(true, func_4(Struct_1(var_1, vec3<u32>(arg_1.b.b.x, var_1, 35710u), arg_1.a.c, true), arg_1.b, -2147483647i).a.c.x, false), true), arg_1.a, arg_0 ^ reverseBits(-2893i));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = !(!vec2<bool>(any(select(vec3<bool>(false, global2.x, global2.x), vec3<bool>(false, global2.x, true), global2.x)), select(true, all(vec4<bool>(global2.x, global2.x, false, global2.x)), !global2.x)));
    var var_0 = func_6(~u_input.a.x, func_1());
    let var_1 = !var_0.a.c.x;
    let var_2 = func_1();
    let var_3 = select(func_5(var_0.a.d, var_2, func_6(1i, Struct_2(func_2(var_0.b.b, 718f, Struct_2(Struct_1(69558u, var_0.b.b, vec3<bool>(var_2.b.d, var_2.b.d, true), true), var_0.a, 1u, u_input.b.x), var_0.d), Struct_1(var_0.c, var_2.b.b, var_2.a.c, var_1), _wgslsmith_add_u32(var_2.b.a, 0u), var_0.d)).a.c.zy), !select(vec4<bool>(false | var_2.b.c.x, !var_0.b.c.x, var_2.a.d, var_0.b.d), !vec4<bool>(var_0.a.c.x, var_1, true, true), vec4<bool>(var_0.b.d | var_1, var_1, false, true)), vec4<bool>(!all(select(vec4<bool>(true, false, false, var_1), vec4<bool>(true, var_2.a.c.x, var_0.a.c.x, false), vec4<bool>(var_2.b.c.x, global2.x, false, var_0.b.d))), select(false, !func_4(var_0.a, var_0.a, u_input.a.x).a.d, true), true, reverseBits(_wgslsmith_dot_vec3_i32(global0[_wgslsmith_index_u32(16081u, 23u)], global0[_wgslsmith_index_u32(var_0.b.a, 23u)])) >= var_0.d));
    var var_4 = Struct_1(_wgslsmith_sub_u32(func_1().b.a, 92171u), var_0.a.b, select(func_2(_wgslsmith_add_vec3_u32(var_2.a.b, var_2.b.b | vec3<u32>(0u, 4294967295u, var_0.b.b.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(2054f, 980f) - _wgslsmith_f_op_f32(floor(465f))), var_2, -27660i).c, var_2.a.c, func_4(Struct_1(var_0.a.b.x, _wgslsmith_add_vec3_u32(vec3<u32>(var_0.a.b.x, 4294967295u, 17985u), vec3<u32>(49256u, 4294967295u, 34577u)), select(vec3<bool>(var_0.a.d, var_0.b.d, false), vec3<bool>(var_3.x, false, var_3.x), global2.x), func_1().b.d), var_2.b, _wgslsmith_sub_i32(var_0.d, ~var_2.d)).a.c), false);
    global0 = array<vec3<i32>, 23>();
    let var_5 = vec3<bool>(true, var_3.x, var_4.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(1f, 1f));
}

