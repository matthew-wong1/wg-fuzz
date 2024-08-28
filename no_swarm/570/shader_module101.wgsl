struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: i32,
    d: vec2<bool>,
    e: bool,
}

struct Struct_2 {
    a: i32,
    b: vec2<f32>,
    c: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct Struct_4 {
    a: u32,
    b: vec2<f32>,
    c: bool,
    d: vec4<u32>,
    e: bool,
}

struct Struct_5 {
    a: bool,
    b: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(1171f, -128f, -1587f);

var<private> global1: vec2<i32>;

var<private> global2: array<vec3<i32>, 25> = array<vec3<i32>, 25>(vec3<i32>(i32(-2147483648), -68874i, i32(-2147483648)), vec3<i32>(2147483647i, 0i, 0i), vec3<i32>(-8491i, -10518i, -44576i), vec3<i32>(-15195i, 0i, i32(-2147483648)), vec3<i32>(2147483647i, -27158i, 1i), vec3<i32>(-28305i, 2147483647i, 1i), vec3<i32>(6856i, i32(-2147483648), i32(-2147483648)), vec3<i32>(2147483647i, 1i, 29289i), vec3<i32>(2147483647i, -17661i, -65976i), vec3<i32>(2147483647i, i32(-2147483648), -1i), vec3<i32>(1i, -51959i, 34181i), vec3<i32>(2147483647i, 2147483647i, 1i), vec3<i32>(-38907i, -13087i, 1i), vec3<i32>(i32(-2147483648), i32(-2147483648), i32(-2147483648)), vec3<i32>(-1i, -1i, 45307i), vec3<i32>(-8030i, -56988i, -1i), vec3<i32>(0i, -18657i, -1i), vec3<i32>(0i, 1i, -23097i), vec3<i32>(-1i, -64134i, 1i), vec3<i32>(36896i, -29836i, 1i), vec3<i32>(2147483647i, 2147483647i, -14934i), vec3<i32>(-20054i, 0i, i32(-2147483648)), vec3<i32>(2147483647i, 0i, -38620i), vec3<i32>(16363i, 1i, -1i), vec3<i32>(2147483647i, 0i, -1i));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec3<u32>, arg_2: vec4<i32>) -> vec4<f32> {
    global2 = array<vec3<i32>, 25>();
    var var_0 = true;
    var_0 = true;
    var var_1 = Struct_3(Struct_1(_wgslsmith_div_u32(max(~1u, 4294967295u), abs(4294967295u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.yx + _wgslsmith_f_op_vec2_f32(sign(global0.yx))) + vec2<f32>(_wgslsmith_f_op_f32(global0.x - 168f), global0.x)), firstLeadingBit(~(i32(-1i) * -4952i)), !select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, true)), true), Struct_1(~(~arg_0.x) & 1u, vec2<f32>(_wgslsmith_div_f32(-967f, _wgslsmith_f_op_f32(-520f - global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1958f, 675f)))), 0i, select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), true), any(select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), true), vec4<bool>(false, false, true, true), true))), arg_0.x);
    let var_2 = select(vec2<bool>(!any(vec2<bool>(var_1.b.d.x, false)), true), var_1.b.d, select(select(var_1.b.d, vec2<bool>(var_1.a.e, true), select(!var_1.b.d, !var_1.b.d, var_1.a.d.x)), vec2<bool>(var_1.a.e, (u_input.a.x | u_input.a.x) == -1i), var_1.b.d.x));
    return _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(var_1.b.b.x * _wgslsmith_f_op_f32(f32(-1f) * -154f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.x))), _wgslsmith_f_op_f32(f32(-1f) * -1166f), var_1.a.b.x), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(var_1.b.b.x, var_1.a.b.x)))), _wgslsmith_f_op_f32(f32(-1f) * -807f), 2120f, -1361f), vec4<f32>(364f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x * global0.x), _wgslsmith_f_op_f32(1000f - var_1.b.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0.x)) * _wgslsmith_f_op_f32(-var_1.a.b.x)), -1062f), any(var_1.a.d)))));
}

fn func_2(arg_0: Struct_4) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(~_wgslsmith_mult_vec4_u32(~arg_0.d, arg_0.d), arg_0.d.wyy, -u_input.a)) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.x + global0.x)) - _wgslsmith_f_op_f32(-arg_0.b.x)), arg_0.b.x, _wgslsmith_f_op_f32(arg_0.b.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1202f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.b.x)))));
    global2 = array<vec3<i32>, 25>();
    var var_1 = vec2<i32>(global1.x, -65728i);
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))), -543f);
    global1 = vec2<i32>(_wgslsmith_add_i32(var_1.x, u_input.a.x), ~(-2147483647i));
    return Struct_1(_wgslsmith_dot_vec3_u32(arg_0.d.zzx, abs(~vec3<u32>(4294967295u, arg_0.d.x, 1u))), var_0.zz, -u_input.a.x, select(!vec2<bool>(arg_0.c, arg_0.e), select(!(!vec2<bool>(arg_0.e, arg_0.c)), select(select(vec2<bool>(arg_0.e, arg_0.c), vec2<bool>(arg_0.e, false), vec2<bool>(arg_0.e, arg_0.e)), !vec2<bool>(true, arg_0.e), !vec2<bool>(arg_0.e, arg_0.e)), vec2<bool>(true, true)), vec2<bool>(true, arg_0.c)), arg_0.e);
}

fn func_4(arg_0: Struct_4, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    let var_0 = 900f;
    return arg_1;
}

fn func_5(arg_0: Struct_1) -> Struct_5 {
    global1 = (min(-vec2<i32>(1i, -14800i) >> (vec2<u32>(arg_0.a, arg_0.a) % vec2<u32>(32u)), firstTrailingBit(vec2<i32>(1i, 1i))) >> ((_wgslsmith_div_vec2_u32(vec2<u32>(9268u, 54337u) & vec2<u32>(62007u, arg_0.a), select(vec2<u32>(0u, arg_0.a), vec2<u32>(arg_0.a, arg_0.a), arg_0.d)) << (abs(vec2<u32>(arg_0.a, 12787u)) % vec2<u32>(32u))) % vec2<u32>(32u))) >> (vec2<u32>(0u ^ _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 0u), vec2<u32>(arg_0.a, 0u) << (vec2<u32>(arg_0.a, 0u) % vec2<u32>(32u))), ~_wgslsmith_add_u32(arg_0.a >> (arg_0.a % 32u), arg_0.a)) % vec2<u32>(32u));
    var var_0 = false;
    let var_1 = -(i32(-1i) * -2147483647i);
    var var_2 = Struct_4(abs(arg_0.a), vec2<f32>(580f, _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-230f)))))), false, ~_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.a, arg_0.a, 6871u, arg_0.a), select(vec4<u32>(1u, arg_0.a, arg_0.a, 6118u), vec4<u32>(29498u, 0u, arg_0.a, 82453u), vec4<bool>(false, false, arg_0.d.x, arg_0.d.x)), abs(vec4<u32>(arg_0.a, arg_0.a, 33886u, arg_0.a))) ^ _wgslsmith_mod_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 0u, 4294967295u, 67923u), vec4<u32>(19856u, 12421u, 15195u, arg_0.a)), _wgslsmith_add_vec4_u32(~vec4<u32>(0u, 4294967295u, arg_0.a, 0u), select(vec4<u32>(arg_0.a, 26410u, arg_0.a, arg_0.a), vec4<u32>(arg_0.a, arg_0.a, 1u, 0u), true))), !(!arg_0.e));
    var var_3 = arg_0;
    return Struct_5(var_2.c, u_input.a.x);
}

fn func_6(arg_0: vec2<i32>, arg_1: Struct_5, arg_2: i32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1504f, global0.x, 1707f, 1007f), vec4<f32>(global0.x, global0.x, global0.x, 910f))) * vec4<f32>(_wgslsmith_f_op_f32(global0.x + 243f), _wgslsmith_f_op_vec4_f32(func_3(vec4<u32>(8352u, 7739u, 0u, 1u), vec3<u32>(14026u, 8386u, 1u), vec4<i32>(-2147483647i, -1i, arg_1.b, arg_2))).x, global0.x, _wgslsmith_f_op_f32(-global0.x))))));
    var var_1 = select(global2[_wgslsmith_index_u32(8563u, 25u)], u_input.a.xwx, arg_1.a);
    var var_2 = vec4<bool>(!arg_1.a, true | any(!func_2(Struct_4(4045u, vec2<f32>(-375f, 367f), arg_1.a, vec4<u32>(0u, 1u, 1u, 1u), arg_1.a)).d), func_5(func_2(Struct_4(1u, _wgslsmith_f_op_vec2_f32(floor(global0.xz)), func_2(Struct_4(4294967295u, global0.xx, false, vec4<u32>(4294967295u, 51517u, 4294967295u, 39771u), true)).e, vec4<u32>(33383u, 27302u, 4294967295u, 110311u), false))).a, true);
    let var_3 = global0.xy;
    var var_4 = ~(~_wgslsmith_clamp_vec2_u32(vec2<u32>(23387u, 1u), vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 0u))) | vec2<u32>(1u, _wgslsmith_sub_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(46968u, 5536u, 34378u, 39706u), vec4<u32>(0u, 70256u, 4294967295u, 1u)), 8153u));
    return Struct_2(-30096i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global0.x), 872f)), vec3<i32>(-1i, 1i, _wgslsmith_sub_i32(-2147483647i, ~0i | -arg_1.b)));
}

fn func_1() -> Struct_2 {
    var var_0 = Struct_1(1u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.xy) - global0.xy), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(global0.yx, vec2<f32>(global0.x, -238f))))))), ~_wgslsmith_mult_i32(abs(11991i), -global1.x), select(select(!select(vec2<bool>(false, true), vec2<bool>(false, false), false), vec2<bool>(false, select(true, true, true)), !all(vec4<bool>(true, false, true, false))), select(vec2<bool>(true, true), !select(vec2<bool>(true, false), vec2<bool>(false, true), true), !select(vec2<bool>(true, false), vec2<bool>(false, true), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -137f)) == _wgslsmith_f_op_f32(-global0.x)), true);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x));
    global0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.b.x)) - _wgslsmith_f_op_f32(-1047f * 1354f)))), var_0.b.x, 627f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -126f), global0.x)))));
    global1 = firstTrailingBit(max(countOneBits(vec2<i32>(0i | u_input.a.x, ~global1.x)), u_input.a.yw ^ vec2<i32>(var_0.c, countOneBits(u_input.a.x))));
    var var_2 = Struct_2(_wgslsmith_clamp_i32(global1.x, var_0.c, 2147483647i), global0.zy, global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_div_u32(0u, _wgslsmith_dot_vec2_u32(~vec2<u32>(var_0.a, 16797u), vec2<u32>(var_0.a, var_0.a))), var_0.a), 25u)]);
    return func_6(var_2.c.xz ^ firstTrailingBit(u_input.a.zy), func_5(func_4(Struct_4(var_0.a, vec2<f32>(var_2.b.x, var_0.b.x), global1.x < var_2.c.x, ~vec4<u32>(var_0.a, 4294967295u, 0u, var_0.a), var_0.e), Struct_1(_wgslsmith_clamp_u32(var_0.a, 31952u, var_0.a), _wgslsmith_f_op_vec2_f32(-var_2.b), ~var_2.c.x, select(var_0.d, var_0.d, var_0.d), false), func_2(Struct_4(var_0.a, vec2<f32>(-481f, -1319f), var_0.e, vec4<u32>(45989u, var_0.a, 27549u, var_0.a), var_0.d.x)), var_0.a)), min(-26270i, var_2.a));
}

fn func_7(arg_0: vec4<f32>, arg_1: bool, arg_2: i32, arg_3: Struct_2) -> vec3<f32> {
    global1 = -reverseBits(~(-u_input.a.xy | reverseBits(arg_3.c.xz)));
    var var_0 = max(~(~_wgslsmith_div_i32(-2147483647i, arg_3.c.x)) | _wgslsmith_mult_i32(arg_2 << (1u % 32u), -(-13859i & arg_3.c.x)), 37138i);
    let var_1 = _wgslsmith_clamp_u32(~20225u, 1u, select(1u << ((1u >> (1u % 32u)) % 32u), 5220u, func_2(Struct_4(1u, vec2<f32>(-1000f, arg_3.b.x), arg_1, vec4<u32>(4494u, 1u, 26666u, 1u), arg_1)).e)) >> (~func_4(Struct_4(firstLeadingBit(1u), _wgslsmith_f_op_vec2_f32(abs(global0.yy)), true, abs(vec4<u32>(1u, 21394u, 14443u, 31237u)), arg_1), func_4(Struct_4(20794u, arg_3.b, arg_1, vec4<u32>(0u, 74685u, 1u, 7569u), arg_1), func_2(Struct_4(12193u, vec2<f32>(1101f, -803f), true, vec4<u32>(4294967295u, 0u, 8505u, 19903u), arg_1)), Struct_1(80874u, vec2<f32>(-1000f, 2535f), global1.x, vec2<bool>(arg_1, arg_1), arg_1), ~1u), func_4(Struct_4(1u, arg_3.b, arg_1, vec4<u32>(17208u, 0u, 4294967295u, 5563u), arg_1), func_4(Struct_4(2534u, arg_0.yy, arg_1, vec4<u32>(23688u, 41345u, 26717u, 63243u), false), Struct_1(0u, global0.xx, u_input.a.x, vec2<bool>(false, false), arg_1), Struct_1(197u, vec2<f32>(arg_0.x, arg_0.x), u_input.a.x, vec2<bool>(false, arg_1), arg_1), 4294967295u), Struct_1(4294967295u, vec2<f32>(-1107f, -2153f), 0i, vec2<bool>(true, false), arg_1), ~275u), ~_wgslsmith_add_u32(1u, 156234u)).a % 32u);
    var_0 = abs(-22700i);
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(arg_0.yxw, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-343f, _wgslsmith_f_op_f32(-910f * 1967f), _wgslsmith_div_f32(278f, arg_3.b.x)))), func_4(Struct_4(firstTrailingBit(1u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.b.x, global0.x)), true, vec4<u32>(0u, var_1, 48701u, 0u), true), func_2(Struct_4(3363u, arg_3.b, false, vec4<u32>(29100u, 1u, 70466u, 0u), false)), func_2(Struct_4(var_1, arg_3.b, arg_1, vec4<u32>(9426u, var_1, var_1, 19737u), arg_1)), 62542u).d.x)));
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_1, 1u, var_1, var_1), vec4<u32>(var_1, 53659u, var_1, 0u), vec4<u32>(var_1, 1u, var_1, 58786u)), vec3<u32>(var_1, var_1, 4294967295u), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, arg_3.c.x, -19992i), vec4<i32>(arg_3.c.x, -1i, 0i, 38289i)))).x, _wgslsmith_f_op_f32(abs(1f)))), -2851f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.x, _wgslsmith_div_f32(-576f, _wgslsmith_f_op_f32(1385f - global0.x)))) - 337f));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global0.x, global0.x, -1553f), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, 150f, -807f) - vec3<f32>(global0.x, global0.x, global0.x)))))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.x))), _wgslsmith_f_op_f32(-1966f * _wgslsmith_f_op_f32(-global0.x)), -226f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(448f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * 287f)), global0.x) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1332f, 362f, global0.x) * vec3<f32>(global0.x, global0.x, 1665f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(242f, 1824f, global0.x), vec3<f32>(1223f, global0.x, global0.x))))))));
    global0 = _wgslsmith_f_op_vec3_f32(func_7(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, -169f, global0.x)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(222f, global0.x, 1584f, global0.x) * vec4<f32>(global0.x, -427f, global0.x, 823f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, 344f, -856f) - vec4<f32>(-705f, -233f, 1000f, global0.x))))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(-888f)), global0.x, 962f, -105f), vec4<f32>(_wgslsmith_f_op_f32(sign(global0.x)), -177f, 173f, _wgslsmith_f_op_f32(round(2876f))))), any(!select(vec2<bool>(true, false), vec2<bool>(true, true), any(vec4<bool>(true, true, true, true)))), -1i, func_1()));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.ywy);
}

