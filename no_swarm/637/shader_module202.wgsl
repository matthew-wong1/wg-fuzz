struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: vec3<f32>,
    d: vec3<u32>,
    e: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: f32,
    c: f32,
    d: vec4<i32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
    c: i32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: u32,
    d: Struct_3,
}

struct Struct_5 {
    a: i32,
    b: Struct_4,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec3<bool>(true, false, false), Struct_1(9429i, vec4<bool>(true, true, true, true), vec3<f32>(-485f, 178f, 2526f), vec3<u32>(4294967295u, 4294967295u, 54335u), 22752i), 0i);

var<private> global1: array<f32, 1>;

var<private> global2: Struct_5 = Struct_5(-26662i, Struct_4(vec4<i32>(16721i, -13827i, -1i, -11090i), vec4<u32>(0u, 0u, 1u, 64521u), 36154u, Struct_3(vec3<bool>(false, false, false), Struct_1(1i, vec4<bool>(false, true, false, true), vec3<f32>(-472f, -696f, -360f), vec3<u32>(4294967295u, 1u, 36827u), i32(-2147483648)), 33628i)));

var<private> global3: array<Struct_4, 13> = array<Struct_4, 13>(Struct_4(vec4<i32>(1i, 1i, -25231i, -40203i), vec4<u32>(0u, 4294967295u, 4294967295u, 85145u), 0u, Struct_3(vec3<bool>(false, false, false), Struct_1(2147483647i, vec4<bool>(true, false, true, false), vec3<f32>(-2087f, 590f, -1000f), vec3<u32>(1u, 18457u, 1u), 0i), 2147483647i)), Struct_4(vec4<i32>(1i, -23443i, 1i, i32(-2147483648)), vec4<u32>(1u, 0u, 1u, 1u), 95849u, Struct_3(vec3<bool>(true, false, true), Struct_1(-6913i, vec4<bool>(false, false, false, false), vec3<f32>(709f, 497f, 1531f), vec3<u32>(7544u, 0u, 0u), 15901i), -37809i)), Struct_4(vec4<i32>(7973i, 2147483647i, 1i, 6298i), vec4<u32>(4294967295u, 42164u, 1u, 22413u), 6102u, Struct_3(vec3<bool>(true, true, true), Struct_1(i32(-2147483648), vec4<bool>(true, false, true, true), vec3<f32>(433f, 816f, 854f), vec3<u32>(66828u, 4334u, 0u), 45464i), -1657i)), Struct_4(vec4<i32>(-20355i, 1i, i32(-2147483648), -1i), vec4<u32>(1u, 4294967295u, 74446u, 46350u), 0u, Struct_3(vec3<bool>(false, false, true), Struct_1(-76121i, vec4<bool>(true, true, true, false), vec3<f32>(647f, 1124f, -757f), vec3<u32>(0u, 36787u, 1u), -1718i), 9425i)), Struct_4(vec4<i32>(2147483647i, -19471i, -2259i, i32(-2147483648)), vec4<u32>(0u, 23462u, 0u, 1u), 0u, Struct_3(vec3<bool>(true, false, false), Struct_1(0i, vec4<bool>(false, true, true, true), vec3<f32>(-662f, -578f, -688f), vec3<u32>(4294967295u, 4294967295u, 32616u), -1i), -46811i)), Struct_4(vec4<i32>(i32(-2147483648), -25i, -853i, 30007i), vec4<u32>(86949u, 31578u, 0u, 112366u), 32408u, Struct_3(vec3<bool>(true, false, false), Struct_1(1i, vec4<bool>(true, true, false, true), vec3<f32>(303f, 1352f, 104f), vec3<u32>(15790u, 0u, 17681u), 13107i), 31435i)), Struct_4(vec4<i32>(0i, 1i, -19507i, 0i), vec4<u32>(0u, 1u, 64144u, 31347u), 1u, Struct_3(vec3<bool>(true, true, false), Struct_1(0i, vec4<bool>(false, false, false, true), vec3<f32>(472f, -736f, -662f), vec3<u32>(1u, 26151u, 11616u), -42428i), 56015i)), Struct_4(vec4<i32>(-10851i, 50996i, 17859i, 28854i), vec4<u32>(4294967295u, 25450u, 1u, 0u), 92352u, Struct_3(vec3<bool>(false, true, false), Struct_1(-42880i, vec4<bool>(false, true, true, false), vec3<f32>(1137f, -713f, 1252f), vec3<u32>(53824u, 13386u, 0u), -16555i), -1i)), Struct_4(vec4<i32>(1i, i32(-2147483648), 1i, -39224i), vec4<u32>(1u, 21317u, 28663u, 4294967295u), 66610u, Struct_3(vec3<bool>(true, false, false), Struct_1(119194i, vec4<bool>(false, true, true, false), vec3<f32>(2365f, -147f, -1037f), vec3<u32>(99590u, 4294967295u, 1u), 2147483647i), -17880i)), Struct_4(vec4<i32>(23207i, i32(-2147483648), -1i, 1i), vec4<u32>(33289u, 38012u, 0u, 20774u), 61511u, Struct_3(vec3<bool>(false, true, false), Struct_1(-30797i, vec4<bool>(false, true, false, true), vec3<f32>(-1085f, 1157f, -1000f), vec3<u32>(6761u, 1u, 1u), 1i), -18694i)), Struct_4(vec4<i32>(i32(-2147483648), -52320i, 1i, 0i), vec4<u32>(1u, 4294967295u, 1u, 8392u), 45733u, Struct_3(vec3<bool>(false, false, true), Struct_1(1i, vec4<bool>(true, false, true, true), vec3<f32>(-426f, 482f, -814f), vec3<u32>(1u, 4294967295u, 4294967295u), 25858i), 33578i)), Struct_4(vec4<i32>(-1i, -72852i, -28997i, -16426i), vec4<u32>(17933u, 4294967295u, 1874u, 4294967295u), 10328u, Struct_3(vec3<bool>(true, true, false), Struct_1(i32(-2147483648), vec4<bool>(false, true, false, true), vec3<f32>(-1279f, -759f, 1000f), vec3<u32>(1u, 4294967295u, 62023u), 55211i), i32(-2147483648))), Struct_4(vec4<i32>(2147483647i, 25708i, 0i, 22621i), vec4<u32>(4294967295u, 1u, 9212u, 11456u), 30000u, Struct_3(vec3<bool>(false, true, false), Struct_1(1i, vec4<bool>(true, true, false, true), vec3<f32>(1000f, -481f, 257f), vec3<u32>(1u, 25949u, 50105u), 3786i), -5934i)));

var<private> global4: vec2<u32> = vec2<u32>(28708u, 70681u);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec4<bool>) -> i32 {
    var var_0 = 382f;
    return 368i;
}

fn func_2(arg_0: vec3<bool>, arg_1: i32) -> Struct_3 {
    let var_0 = vec4<i32>(global0.c | global0.b.a, global2.b.d.c, ~(-_wgslsmith_add_i32(-16082i, global2.a)), 2147483647i) ^ -vec4<i32>(min(func_3(global2.b.d.b.b), countOneBits(-17495i)), ~(-1i), 1i, -(~(-2147483647i)));
    var var_1 = Struct_4(vec4<i32>(9441i, 2147483647i, ~(~2147483647i) & _wgslsmith_div_i32(u_input.b.x, global0.b.a), var_0.x), vec4<u32>(_wgslsmith_mult_u32(global0.b.d.x << (select(global4.x, 25508u, arg_0.x) % 32u), _wgslsmith_mult_u32(~1u, 0u)), 1u, min(9906u, _wgslsmith_add_u32(_wgslsmith_mod_u32(global0.b.d.x, global4.x), countOneBits(global4.x))), abs(global2.b.b.x)), _wgslsmith_div_u32(_wgslsmith_clamp_u32(~_wgslsmith_sub_u32(1u, global2.b.b.x), ~global0.b.d.x, 2310u), (_wgslsmith_clamp_u32(global0.b.d.x, 44618u, global4.x) >> (~4294967295u % 32u)) >> (min(global4.x, 1u) % 32u)), global2.b.d);
    let var_2 = (~(abs(global0.b.d) & _wgslsmith_div_vec3_u32(vec3<u32>(27178u, 18743u, global4.x), vec3<u32>(global2.b.d.b.d.x, global0.b.d.x, 0u))) & ~abs(~var_1.d.b.d)) << (~(~(~(vec3<u32>(3648u, global2.b.d.b.d.x, 4294967295u) | vec3<u32>(global4.x, global0.b.d.x, 21626u)))) % vec3<u32>(32u));
    var_1 = Struct_4(global2.b.a, var_1.b, ~57993u, var_1.d);
    global4 = ~(~vec2<u32>(var_2.x | 1u, ~(~global2.b.b.x)));
    return Struct_3(var_1.d.a, global0.b, ~(var_1.d.b.e >> (~1u % 32u)));
}

fn func_4(arg_0: Struct_3, arg_1: bool) -> Struct_3 {
    var var_0 = ~global0.c;
    var_0 = 18602i & _wgslsmith_clamp_i32(-max(0i, -u_input.a.x), global2.a, -1i);
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.b.c.xz));
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, arg_0.b.c.x, -538f, 723f))) - vec4<f32>(global0.b.c.x, _wgslsmith_f_op_f32(-973f * -1158f), arg_0.b.c.x, _wgslsmith_f_op_f32(-global0.b.c.x)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(336f)))), global2.b.d.b.c.x) - 871f), _wgslsmith_f_op_f32(round(arg_0.b.c.x)), abs(-(-vec4<i32>(-87173i, u_input.b.x, -2147483647i, global2.a) & ~global2.b.a)));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-141f, var_2.a.x, -2562f, arg_0.b.c.x), vec4<f32>(var_2.c, 486f, -124f, 1278f)))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_2.a)));
    return arg_0;
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> u32 {
    var var_0 = _wgslsmith_add_i32(-2147483647i, max(1i, ~global0.c));
    global0 = func_4(func_2(select(select(global2.b.d.a, vec3<bool>(global0.b.b.x, arg_0, global2.b.d.b.b.x), select(vec3<bool>(false, true, arg_1.b.x), global0.a, global0.a)), !arg_1.b.www, global2.b.d.b.b.wyz), ~_wgslsmith_mult_i32(-arg_1.a, 2147483647i)), false);
    var var_1 = Struct_5(_wgslsmith_add_i32(_wgslsmith_add_i32(~(arg_1.a & -1i), -24084i), 81381i), Struct_4(countOneBits(_wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-12837i, global2.b.d.c, global0.c, 46443i), vec4<i32>(global2.b.a.x, u_input.a.x, -2147483647i, 1i), global2.b.a), countOneBits(global2.b.a))), ~global2.b.b, ~(~_wgslsmith_dot_vec3_u32(global0.b.d, vec3<u32>(global0.b.d.x, arg_1.d.x, 4294967295u))), Struct_3(select(global0.a, global2.b.d.a, !global2.b.d.a), Struct_1(_wgslsmith_mod_i32(global2.a, arg_1.a), vec4<bool>(global2.b.d.b.b.x, true, global2.b.d.a.x, false), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.c.x, global0.b.c.x, global2.b.d.b.c.x)), global2.b.b.wxx, global0.b.a), -1i)));
    let var_2 = vec3<i32>(_wgslsmith_dot_vec3_i32(abs(firstLeadingBit(reverseBits(vec3<i32>(1i, 0i, var_1.a)))), _wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(global0.b.a, -15339i, -1i), -var_1.a, arg_1.a >> (var_1.b.c % 32u)), firstTrailingBit(~vec3<i32>(8913i, var_1.a, var_1.a)))), global2.b.d.c, max(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x | arg_1.e, global2.b.d.b.e, 1i, func_3(global2.b.d.b.b)), global2.b.a), _wgslsmith_mult_i32(func_4(func_4(Struct_3(vec3<bool>(false, global2.b.d.a.x, arg_1.b.x), var_1.b.d.b, -2147483647i), false), true).b.e, select(~2147483647i, 26024i, true))));
    var var_3 = ~var_1.b.c;
    return abs(~firstLeadingBit(~arg_1.d.x));
}

fn func_5(arg_0: u32, arg_1: f32) -> StorageBuffer {
    global2 = Struct_5(1i, Struct_4(_wgslsmith_add_vec4_i32(-(vec4<i32>(global0.b.a, -1i, global2.a, 1i) << (global2.b.b % vec4<u32>(32u))), ~(global2.b.a >> (vec4<u32>(global2.b.c, 1u, global0.b.d.x, 4294967295u) % vec4<u32>(32u)))), countOneBits(~_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 77378u, 17644u, 52635u), global2.b.b)), 8632u, func_4(func_2(vec3<bool>(true, false, global0.b.b.x), 15076i), true)));
    let var_0 = _wgslsmith_clamp_u32(~0u, global0.b.d.x, ~(~global0.b.d.x));
    global0 = Struct_3(func_4(global2.b.d, false).b.b.wyz, Struct_1(global2.a, !(!select(global2.b.d.b.b, vec4<bool>(true, false, global0.b.b.x, global0.a.x), true)), vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.b.c.x))), _wgslsmith_f_op_f32(abs(arg_1)), _wgslsmith_f_op_f32(-490f + _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(arg_0, 1u)] * -827f))), ~(~reverseBits(vec3<u32>(global2.b.d.b.d.x, global2.b.d.b.d.x, 43180u))), u_input.b.x | _wgslsmith_mult_i32(func_4(global2.b.d, true).c, ~(-10572i))), _wgslsmith_div_i32(1i, 41941i));
    let var_1 = abs(abs(global2.b.a << (~(~global2.b.b) % vec4<u32>(32u))));
    global1 = array<f32, 1>();
    return StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(select(4294967295u, global4.x, false) | 1u, 1u)]), -757f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1, 700f))) + 709f), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_add_u32(max(var_0, 26139u), _wgslsmith_sub_u32(var_0, 0u)), ~global0.b.d.x), 1u)]), global2.b.d.b.c);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5((1u ^ _wgslsmith_mult_u32(func_1(true, Struct_1(global0.c, vec4<bool>(true, true, global2.b.d.a.x, true), vec3<f32>(global1[_wgslsmith_index_u32(37324u, 1u)], -703f, global0.b.c.x), global0.b.d, 0i)), ~global4.x)) & func_4(func_2(!global0.b.b.xwx, firstLeadingBit(global0.b.e)), true).b.d.x, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.b.d.b.c.x), 480f))));
}

