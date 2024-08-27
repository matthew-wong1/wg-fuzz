struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 20>;

var<private> global1: array<vec2<u32>, 25> = array<vec2<u32>, 25>(vec2<u32>(29163u, 45568u), vec2<u32>(4802u, 4294967295u), vec2<u32>(4294967295u, 1u), vec2<u32>(10242u, 1u), vec2<u32>(15371u, 54762u), vec2<u32>(54104u, 1u), vec2<u32>(4294967295u, 83314u), vec2<u32>(63927u, 0u), vec2<u32>(0u, 0u), vec2<u32>(35458u, 54187u), vec2<u32>(1u, 45171u), vec2<u32>(38498u, 4740u), vec2<u32>(16894u, 16477u), vec2<u32>(1u, 13312u), vec2<u32>(0u, 4294967295u), vec2<u32>(45147u, 63723u), vec2<u32>(4294967295u, 3247u), vec2<u32>(0u, 4294967295u), vec2<u32>(4294967295u, 1u), vec2<u32>(0u, 0u), vec2<u32>(22311u, 1u), vec2<u32>(22275u, 11056u), vec2<u32>(66369u, 0u), vec2<u32>(44426u, 411u), vec2<u32>(16758u, 23457u));

var<private> global2: array<Struct_1, 1>;

var<private> global3: array<Struct_1, 8>;

var<private> global4: vec4<i32> = vec4<i32>(72701i, 41495i, 0i, 0i);

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec3<bool>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = arg_2;
    global1 = array<vec2<u32>, 25>();
    global3 = array<Struct_1, 8>();
    global2 = array<Struct_1, 1>();
    return Struct_1(!(!arg_2.a), arg_0.x, vec3<bool>(all(vec4<bool>(arg_2.a.x, arg_1.x, arg_2.c.x, false)) && false, true, false != !all(vec2<bool>(var_0.a.x, true))));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: bool, arg_3: f32) -> i32 {
    global4 = -(~vec4<i32>(~(i32(-1i) * -1i), i32(-1i) * -38776i, -1i | arg_0.b, select(2147483647i, -31080i, arg_0.a.x) << (1u % 32u)));
    global3 = array<Struct_1, 8>();
    let var_0 = ~(vec2<i32>(-1i) * -countOneBits(firstTrailingBit(global4.ww)));
    global2 = array<Struct_1, 1>();
    var var_1 = _wgslsmith_div_f32(arg_3, -763f);
    return var_0.x;
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: f32) -> i32 {
    let var_0 = vec4<i32>(0i, -2147483647i, -_wgslsmith_sub_i32((u_input.d.x << (21106u % 32u)) << (~57671u % 32u), firstTrailingBit(1i >> (u_input.b % 32u))), reverseBits(min(func_1(vec2<i32>(25434i, arg_1), func_1(vec2<i32>(32740i, 19555i), vec3<bool>(true, false, true), global3[_wgslsmith_index_u32(12706u, 8u)]).a, Struct_1(vec3<bool>(true, true, false), global4.x, vec3<bool>(false, false, false))).b, arg_1)));
    let var_1 = _wgslsmith_f_op_f32(-910f * _wgslsmith_f_op_f32(step(arg_2, -189f)));
    var var_2 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(830f, 2046f, -328f, 174f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, _wgslsmith_f_op_f32(min(-616f, 644f)), var_1, -1103f)) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-103f, 991f, arg_2, arg_2) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-590f, -753f, arg_2, -952f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1, 964f, var_1, 1883f))) - vec4<f32>(arg_2, 373f, var_1, 938f)), !all(vec2<bool>(true, false)))))));
    let var_3 = Struct_1(!(!(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), false))), -30592i, select(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), !all(vec2<bool>(true, true))));
    global0 = array<vec3<f32>, 20>();
    return _wgslsmith_mult_i32(func_1(_wgslsmith_mod_vec2_i32(u_input.d >> (select(u_input.e.xy, vec2<u32>(4294967295u, 26218u), var_3.c.x) % vec2<u32>(32u)), firstLeadingBit(vec2<i32>(global4.x, global4.x))), !var_3.c, Struct_1(select(vec3<bool>(var_3.a.x, var_3.a.x, var_3.a.x), var_3.c, var_3.c), func_2(global2[_wgslsmith_index_u32(~0u, 1u)], _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, arg_2, 2675f, 540f)), var_3.c.x, _wgslsmith_f_op_f32(select(301f, var_2.x, var_3.c.x))), func_1(-vec2<i32>(var_0.x, 11819i), !var_3.c, func_1(vec2<i32>(-22542i, 0i), var_3.c, var_3)).a)).b, _wgslsmith_mod_i32(var_3.b, countOneBits(var_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = true;
    let var_2 = func_1(global4.yz, select(vec3<bool>(true, true, true), vec3<bool>(!any(vec4<bool>(false, true, true, false)), true, true), true), Struct_1(vec3<bool>(true, true, true), global4.x, vec3<bool>(12396u < u_input.e.x, true, (u_input.d.x <= 1i) == true)));
    let var_3 = _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, firstLeadingBit(u_input.a), reverseBits(u_input.b) >> (~11094u % 32u), _wgslsmith_sub_u32(_wgslsmith_sub_u32(0u, u_input.e.x), abs(u_input.a))), firstTrailingBit(~vec4<u32>(u_input.a, u_input.a, u_input.b, 1u)) & _wgslsmith_clamp_vec4_u32(~vec4<u32>(5583u, 1u, 10027u, 0u), vec4<u32>(36680u, 18186u, u_input.b, u_input.e.x) ^ vec4<u32>(4294967295u, u_input.e.x, u_input.e.x, 68195u), ~vec4<u32>(u_input.a, u_input.b, 17449u, u_input.a))), _wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(~abs(vec4<u32>(20324u, u_input.e.x, 30649u, 0u)), (vec4<u32>(u_input.a, u_input.a, 19823u, u_input.a) >> (vec4<u32>(1u, u_input.e.x, 25736u, u_input.b) % vec4<u32>(32u))) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, 4294967295u, 46887u, u_input.e.x), vec4<u32>(858u, u_input.a, 1u, 32825u)) % vec4<u32>(32u))), vec4<u32>(1u, _wgslsmith_div_u32(46636u, 1u), 49738u, u_input.e.x)));
    global2 = array<Struct_1, 1>();
    let var_4 = global3[_wgslsmith_index_u32(select(~firstTrailingBit(countOneBits(reverseBits(u_input.e.x))), ~var_3.x, var_2.a.x || var_2.a.x), 8u)];
    let var_5 = max(_wgslsmith_mod_i32(u_input.d.x, func_3(var_3.x, func_2(var_2, vec4<f32>(734f, 930f, 306f, 214f), true, 286f) << (73239u % 32u), _wgslsmith_f_op_f32(f32(-1f) * -581f))), func_3(~u_input.a, 15052i, -853f));
    let x = u_input.a;
    s_output = StorageBuffer(~(_wgslsmith_add_vec4_u32(var_3, vec4<u32>(51224u, 4294967295u, 0u, 1u)) << (~_wgslsmith_add_vec4_u32(var_3, vec4<u32>(0u, var_3.x, 46183u, 16516u)) % vec4<u32>(32u))), vec4<i32>(-411i, abs(-47654i), 1i, min(var_5, _wgslsmith_mod_i32(firstLeadingBit(var_4.b), u_input.d.x))), ~reverseBits(~(~4294967295u)));
}

