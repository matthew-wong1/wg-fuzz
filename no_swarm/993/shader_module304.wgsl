struct Struct_1 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: u32,
    d: i32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 28>;

var<private> global1: Struct_2 = Struct_2(120736u, vec3<f32>(2132f, -487f, 768f), Struct_1(vec4<i32>(0i, 2147483647i, 2147483647i, 2147483647i), vec2<i32>(-14069i, 0i), 0u, 2147483647i, vec4<i32>(i32(-2147483648), 18032i, -43533i, -35161i)));

var<private> global2: i32;

var<private> global3: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(vec4<i32>(-15075i, 2147483647i, 1i, 44031i), vec2<i32>(-1i, 1i), 1u, 43783i, vec4<i32>(0i, 2147483647i, -63265i, 0i)), Struct_1(vec4<i32>(4993i, 2147483647i, 3472i, 1i), vec2<i32>(1i, 0i), 1u, -6486i, vec4<i32>(-1i, 2147483647i, 42883i, 2147483647i)), Struct_1(vec4<i32>(2147483647i, 32844i, -25310i, 17720i), vec2<i32>(-54289i, 0i), 15564u, i32(-2147483648), vec4<i32>(550i, 1i, 6325i, 26820i)), Struct_1(vec4<i32>(39197i, -46316i, 58201i, -53704i), vec2<i32>(34974i, i32(-2147483648)), 13454u, i32(-2147483648), vec4<i32>(-1i, 28560i, 2147483647i, 21853i)), Struct_1(vec4<i32>(63789i, -32291i, -27883i, 0i), vec2<i32>(2147483647i, 2147483647i), 4294967295u, i32(-2147483648), vec4<i32>(i32(-2147483648), 1i, -5776i, 2147483647i)), Struct_1(vec4<i32>(1i, 0i, 50234i, 0i), vec2<i32>(-21474i, -29600i), 1u, -1i, vec4<i32>(5723i, 2147483647i, 2147483647i, 2147483647i)), Struct_1(vec4<i32>(2147483647i, 2147483647i, -1i, 4277i), vec2<i32>(0i, -37250i), 1u, 45367i, vec4<i32>(-7812i, -64224i, -33075i, 2147483647i)), Struct_1(vec4<i32>(51508i, 11955i, i32(-2147483648), -1890i), vec2<i32>(-1i, 18770i), 28157u, 2147483647i, vec4<i32>(1i, 0i, 0i, -1i)), Struct_1(vec4<i32>(-1i, 1i, 21638i, -44761i), vec2<i32>(1i, 0i), 84544u, -29391i, vec4<i32>(0i, -6256i, i32(-2147483648), -21473i)), Struct_1(vec4<i32>(0i, 2718i, -1i, 19828i), vec2<i32>(83898i, 0i), 31543u, 11611i, vec4<i32>(1i, i32(-2147483648), -22098i, -37599i)), Struct_1(vec4<i32>(-1i, 2147483647i, 1i, 15549i), vec2<i32>(-27580i, 1i), 4266u, 2147483647i, vec4<i32>(0i, 0i, 13038i, 12559i)), Struct_1(vec4<i32>(2147483647i, 2147483647i, 2147483647i, -52245i), vec2<i32>(-1i, -26209i), 0u, i32(-2147483648), vec4<i32>(i32(-2147483648), 2147483647i, 25437i, -23448i)), Struct_1(vec4<i32>(0i, 0i, 23762i, 24834i), vec2<i32>(-1i, 1i), 12067u, -10720i, vec4<i32>(19965i, i32(-2147483648), i32(-2147483648), -36807i)), Struct_1(vec4<i32>(15304i, 11452i, -34272i, 2147483647i), vec2<i32>(63667i, 1i), 4294967295u, i32(-2147483648), vec4<i32>(6021i, i32(-2147483648), 21256i, 68556i)), Struct_1(vec4<i32>(1i, 66225i, 517i, 26087i), vec2<i32>(-11526i, 62281i), 0u, 2147483647i, vec4<i32>(54283i, 11552i, 21717i, -25916i)), Struct_1(vec4<i32>(-1i, 2147483647i, -7779i, -1i), vec2<i32>(-42196i, -9383i), 25738u, -24924i, vec4<i32>(2147483647i, 45037i, 0i, -17252i)));

var<private> global4: vec4<i32>;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: Struct_2, arg_3: bool) -> f32 {
    global1 = Struct_2(countOneBits(21940u), arg_2.b, arg_2.c);
    return 857f;
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: f32, arg_3: bool) -> vec4<i32> {
    global2 = ~abs(-_wgslsmith_mult_i32(arg_0, global1.c.e.x));
    var var_0 = (~(~(~global4.x)) >= ~arg_0) | (u_input.a.x >= ~23880u);
    var_0 = arg_3;
    var var_1 = -max(arg_0, _wgslsmith_dot_vec2_i32(global1.c.b, _wgslsmith_mult_vec2_i32(vec2<i32>(0i, global1.c.e.x), select(global4.xw, vec2<i32>(global4.x, arg_0), vec2<bool>(arg_3, arg_3)))));
    let var_2 = vec2<u32>(51121u, _wgslsmith_add_u32(global1.a, ~min(9040u, 0u)) >> (0u % 32u));
    return _wgslsmith_clamp_vec4_i32(-vec4<i32>(global1.c.a.x << (0u % 32u), firstTrailingBit(-2147483647i), countOneBits(-72403i), arg_0), global1.c.a, (_wgslsmith_clamp_vec4_i32(~global1.c.e, vec4<i32>(-13851i, global1.c.e.x, 0i, global1.c.d), vec4<i32>(-1851i, -2147483647i, -5131i, arg_0) >> (global0[_wgslsmith_index_u32(u_input.a.x, 28u)] % vec4<u32>(32u))) >> (vec4<u32>(var_2.x, 0u, _wgslsmith_mult_u32(0u, 4294967295u), ~85204u) % vec4<u32>(32u))) | global1.c.a);
}

fn func_1(arg_0: vec2<u32>, arg_1: f32, arg_2: vec3<f32>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_2(Struct_1(vec4<i32>(global4.x, 2147483647i, global4.x, 0i), global1.c.e.wy, 1u, -2147483647i, global1.c.e), _wgslsmith_f_op_f32(step(arg_1, -493f)), Struct_2(4294967295u, global1.b, global1.c), all(vec3<bool>(true, true, false)))), -647f, 1000f) - vec3<f32>(2196f, _wgslsmith_f_op_f32(exp2(global1.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x * -935f) + _wgslsmith_f_op_f32(ceil(global1.b.x))))));
    global0 = array<vec4<u32>, 28>();
    global2 = global1.c.b.x;
    global1 = Struct_2(1u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(var_0.x, arg_1), _wgslsmith_f_op_f32(ceil(var_0.x)), global1.b.x) * vec3<f32>(_wgslsmith_f_op_f32(-357f + var_0.x), _wgslsmith_f_op_f32(arg_1 - -596f), _wgslsmith_f_op_f32(global1.b.x + arg_1)))), Struct_1(_wgslsmith_mult_vec4_i32(~_wgslsmith_mult_vec4_i32(global1.c.e, vec4<i32>(-20520i, global1.c.b.x, global4.x, global4.x)), min(func_3(global4.x, arg_1, -467f, true), ~global1.c.e)), global1.c.b, 4294967295u, min(_wgslsmith_dot_vec4_i32(-vec4<i32>(global1.c.a.x, global1.c.b.x, global4.x, global1.c.a.x), abs(vec4<i32>(global1.c.d, -2147483647i, global1.c.d, 2147483647i))), -40577i), -vec4<i32>(select(global4.x, global1.c.a.x, true), global4.x, global1.c.a.x, global1.c.b.x)));
    var var_1 = u_input.a;
    return countOneBits(_wgslsmith_mod_u32(~1u, ~_wgslsmith_mult_u32(36063u, _wgslsmith_add_u32(var_1.x, var_1.x))));
}

fn func_4(arg_0: vec2<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(min(-497f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global1.b.x - global1.b.x))), 707f)));
    let var_1 = vec4<bool>(select(true, -firstLeadingBit(global4.x) > reverseBits(i32(-1i) * -2147483647i), true), any(vec3<bool>(true, true, true)), !(~max(u_input.a.x, 23228u) > ~abs(arg_0.x)), !(!any(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), false))));
    let var_2 = global1.c.a.xwz;
    var var_3 = _wgslsmith_sub_u32(firstLeadingBit(u_input.a.x), u_input.a.x) >> (1u % 32u);
    var_3 = _wgslsmith_mod_u32(~(~89691u), abs(abs(11484u) ^ _wgslsmith_mult_u32(~4294967295u, _wgslsmith_clamp_u32(u_input.a.x, arg_0.x, global1.a))));
    return Struct_1(vec4<i32>(-1i) * -countOneBits(~global1.c.a), vec2<i32>(-(~min(-1i, 1i)), _wgslsmith_mod_i32(~(-19149i), 2147483647i << (u_input.a.x % 32u)) ^ (reverseBits(global4.x) << (~global1.a % 32u))), 4294967295u, max(_wgslsmith_sub_i32(-12417i, _wgslsmith_dot_vec3_i32(func_3(16853i, global1.b.x, 261f, var_1.x).zzx, vec3<i32>(global4.x, global1.c.a.x, var_2.x))), -countOneBits(global4.x << (arg_0.x % 32u))), vec4<i32>(-global1.c.b.x, _wgslsmith_sub_i32(var_2.x, -global1.c.a.x), global4.x, _wgslsmith_mult_i32(var_2.x, 25935i | global1.c.e.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -firstLeadingBit(firstLeadingBit(global1.c.e.yy));
    var var_1 = func_4(vec2<u32>(_wgslsmith_mult_u32(global1.a, 1u), reverseBits(~4294967295u << (func_1(u_input.a.yy, 1104f, vec3<f32>(global1.b.x, -550f, -264f)) % 32u))));
    var_0 = _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(var_0.x, -_wgslsmith_sub_i32(var_1.b.x, 18081i)), var_0.x), (min(max(vec2<i32>(0i, -2147483647i), vec2<i32>(-1i, 9999i)), vec2<i32>(21342i, var_0.x)) ^ vec2<i32>(_wgslsmith_mult_i32(global1.c.a.x, var_0.x), select(5126i, var_1.a.x, true))) | _wgslsmith_mod_vec2_i32(global4.xw, vec2<i32>(-var_0.x, 17618i)));
    global3 = array<Struct_1, 16>();
    var var_2 = Struct_2(~var_1.c << (u_input.a.x % 32u), _wgslsmith_f_op_vec3_f32(-global1.b), Struct_1(var_1.e, _wgslsmith_mult_vec2_i32(~vec2<i32>(1i, 0i), vec2<i32>(-12807i, -30824i) >> (u_input.a.yy % vec2<u32>(32u))) & func_4(~u_input.a.yx).a.ww, 67901u >> (_wgslsmith_mult_u32(~4294967295u, countOneBits(0u)) % 32u), select(-20773i, 2147483647i, all(vec4<bool>(true, false, false, true))), vec4<i32>(global1.c.e.x, global1.c.d, -2147483647i, _wgslsmith_mult_i32(~(-1i), -73116i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(select(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(global4.ww, vec2<i32>(59565i, -106168i)), _wgslsmith_dot_vec4_i32(vec4<i32>(31176i, var_2.c.e.x, var_2.c.e.x, 13944i), global1.c.a)), var_1.a.x >> (13548u % 32u), var_2.b.x >= var_2.b.x), ~(-var_1.e.x << (global1.a % 32u))), _wgslsmith_mult_i32(func_4(~vec2<u32>(0u, 4294967295u) ^ u_input.a.yx).a.x, var_2.c.b.x), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.b.x, -210f) - _wgslsmith_f_op_f32(abs(251f))) + global1.b.x), _wgslsmith_f_op_f32(trunc(var_2.b.x)), -1066f));
}

