struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: vec3<f32>,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec3<u32>,
    d: Struct_1,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(false, vec4<u32>(4294967295u, 27838u, 2281u, 0u), vec3<f32>(-594f, -365f, -969f), vec3<i32>(-15345i, -50835i, 8901i), vec4<u32>(57718u, 0u, 4294967295u, 4294967295u)), Struct_1(false, vec4<u32>(83650u, 40460u, 4294967295u, 1u), vec3<f32>(1301f, 1226f, -109f), vec3<i32>(-12724i, 0i, i32(-2147483648)), vec4<u32>(23095u, 13741u, 1u, 4294967295u)), Struct_1(false, vec4<u32>(27462u, 1u, 4294967295u, 1u), vec3<f32>(1969f, 103f, -104f), vec3<i32>(51633i, 0i, -69078i), vec4<u32>(1u, 4294967295u, 46604u, 0u)), Struct_1(true, vec4<u32>(0u, 9337u, 5771u, 1u), vec3<f32>(253f, 970f, -303f), vec3<i32>(1i, -6139i, 16628i), vec4<u32>(0u, 4294967295u, 0u, 0u)), Struct_1(false, vec4<u32>(4294967295u, 4294967295u, 24293u, 17921u), vec3<f32>(2074f, -299f, 1596f), vec3<i32>(-1i, 12084i, 11036i), vec4<u32>(33416u, 1u, 1u, 4026u)), Struct_1(true, vec4<u32>(1u, 21086u, 0u, 251u), vec3<f32>(-660f, 406f, -101f), vec3<i32>(42850i, 0i, -33561i), vec4<u32>(41936u, 35372u, 7431u, 28483u)), Struct_1(false, vec4<u32>(4294967295u, 0u, 0u, 1u), vec3<f32>(-240f, 181f, -1096f), vec3<i32>(10069i, i32(-2147483648), 9964i), vec4<u32>(27663u, 17954u, 113803u, 3371u)), Struct_1(false, vec4<u32>(4294967295u, 68316u, 18976u, 1u), vec3<f32>(-1126f, -1331f, 855f), vec3<i32>(i32(-2147483648), 15617i, 14081i), vec4<u32>(20209u, 1u, 0u, 4294967295u)), Struct_1(true, vec4<u32>(3266u, 34342u, 1u, 4294967295u), vec3<f32>(431f, 217f, 216f), vec3<i32>(0i, 38159i, 27024i), vec4<u32>(49896u, 4294967295u, 10277u, 46957u)), Struct_1(false, vec4<u32>(4294967295u, 897u, 50856u, 13651u), vec3<f32>(-1000f, -687f, -741f), vec3<i32>(13690i, 2147483647i, 2147483647i), vec4<u32>(12085u, 65885u, 1u, 51602u)), Struct_1(false, vec4<u32>(27516u, 1u, 0u, 0u), vec3<f32>(-1466f, 899f, -1078f), vec3<i32>(-31029i, 14504i, -25806i), vec4<u32>(23548u, 38194u, 0u, 2912u)), Struct_1(true, vec4<u32>(1u, 4294967295u, 4294967295u, 89620u), vec3<f32>(-706f, 1262f, -782f), vec3<i32>(1i, -9075i, 0i), vec4<u32>(1u, 4294967295u, 0u, 3669u)), Struct_1(false, vec4<u32>(1u, 1u, 71087u, 6974u), vec3<f32>(836f, 1008f, -126f), vec3<i32>(1i, 2147483647i, -1i), vec4<u32>(1u, 1u, 10580u, 30911u)), Struct_1(true, vec4<u32>(1u, 12098u, 60182u, 8019u), vec3<f32>(-1238f, -2115f, -224f), vec3<i32>(-1i, 21608i, -4798i), vec4<u32>(0u, 22753u, 1u, 67358u)), Struct_1(true, vec4<u32>(13619u, 0u, 1u, 4294967295u), vec3<f32>(1165f, 453f, 835f), vec3<i32>(-30013i, 1i, 0i), vec4<u32>(4294967295u, 1u, 3102u, 0u)), Struct_1(true, vec4<u32>(7070u, 0u, 0u, 0u), vec3<f32>(152f, -1117f, 800f), vec3<i32>(33930i, -1i, 1i), vec4<u32>(20437u, 113782u, 47136u, 4294967295u)), Struct_1(false, vec4<u32>(4293u, 1u, 54624u, 0u), vec3<f32>(-487f, -368f, 1000f), vec3<i32>(22440i, -8999i, 2147483647i), vec4<u32>(141u, 26196u, 69u, 45254u)));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> vec3<i32> {
    global1 = array<Struct_1, 17>();
    global1 = array<Struct_1, 17>();
    global1 = array<Struct_1, 17>();
    global0 = Struct_1(false, ~_wgslsmith_add_vec4_u32(select(u_input.c, u_input.c, vec4<bool>(false, false, true, false)), ~vec4<u32>(global0.e.x, 4769u, 13720u, u_input.c.x) | vec4<u32>(0u, 10380u, u_input.c.x, 27072u)), global0.c, vec3<i32>(~_wgslsmith_clamp_i32(-5874i ^ u_input.a.x, _wgslsmith_mod_i32(u_input.b.x, global0.d.x), global0.d.x << (1u % 32u)), firstTrailingBit(-1i), global0.d.x), _wgslsmith_clamp_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(global0.b.x, global0.e.x, 41286u, 14111u) >> (u_input.c % vec4<u32>(32u)), firstTrailingBit(vec4<u32>(u_input.c.x, u_input.c.x, 14783u, u_input.c.x))), _wgslsmith_div_vec4_u32(global0.b, ~vec4<u32>(26530u, 0u, 1u, u_input.c.x)), ~global0.b));
    let var_0 = Struct_2(!vec4<bool>(any(select(vec3<bool>(false, true, false), vec3<bool>(false, global0.a, global0.a), false)), all(!vec4<bool>(false, global0.a, true, global0.a)), true, false), Struct_1(global0.a, firstTrailingBit(vec4<u32>(_wgslsmith_sub_u32(global0.e.x, global0.e.x), ~global0.b.x, u_input.c.x, 1u)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c.x, -1101f, -449f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.c.x, global0.c.x, global0.c.x) - vec3<f32>(1000f, -1175f, -837f)) - vec3<f32>(470f, global0.c.x, -1545f)), select(vec3<bool>(global0.a, true, false), !vec3<bool>(global0.a, true, global0.a), global0.a))), _wgslsmith_mult_vec3_i32(vec3<i32>(-1i, 0i, 0i), ~(global0.d << (u_input.c.zzy % vec3<u32>(32u)))), vec4<u32>(global0.b.x, max(4294967295u, 0u), _wgslsmith_mod_u32(30978u, ~global0.b.x), ~_wgslsmith_sub_u32(global0.e.x, global0.b.x))), vec3<u32>(~u_input.c.x, abs(u_input.c.x), global0.e.x), Struct_1(!global0.a, global0.b, vec3<f32>(global0.c.x, global0.c.x, global0.c.x), max(~global0.d, _wgslsmith_div_vec3_i32(vec3<i32>(-1342i, -50281i, global0.d.x), ~vec3<i32>(-6475i, u_input.a.x, u_input.a.x))), ~(~vec4<u32>(u_input.c.x, global0.b.x, u_input.c.x, 4294967295u))), firstTrailingBit(vec4<u32>(reverseBits(firstLeadingBit(u_input.c.x)), _wgslsmith_mod_u32(abs(global0.b.x), 1u), global0.b.x, 84622u)));
    return ~countOneBits(u_input.a);
}

fn func_4(arg_0: Struct_1, arg_1: i32) -> vec3<i32> {
    let var_0 = ~firstLeadingBit(vec4<u32>(~1u, ~global0.e.x, ~(~4294967295u), u_input.c.x));
    let var_1 = global1[_wgslsmith_index_u32(~10428u, 17u)];
    var var_2 = countOneBits(1u);
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0.c.x * global0.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1450f - var_1.c.x)) + _wgslsmith_f_op_f32(1f + -1000f)))), var_1.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1064f + global0.c.x), _wgslsmith_f_op_f32(-global0.c.x))) * _wgslsmith_f_op_f32(ceil(-455f))), 455f);
    var_2 = ~_wgslsmith_add_u32(abs(u_input.c.x), 0u);
    return vec3<i32>(global0.d.x, -14859i, _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(max(vec4<i32>(-2147483647i, -1i, u_input.b.x, -19145i), vec4<i32>(-20964i, 1i, arg_0.d.x, -1i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-23189i, 38933i, 0i, var_1.d.x), vec4<i32>(-1i, arg_0.d.x, u_input.a.x, 209i), vec4<i32>(var_1.d.x, global0.d.x, 19185i, global0.d.x))), -(~global0.d.x))) << (vec3<u32>(1u, 4294967295u | ~select(var_1.e.x, 126319u, arg_0.a), var_1.b.x) % vec3<u32>(32u));
}

fn func_2(arg_0: bool) -> vec3<i32> {
    global1 = array<Struct_1, 17>();
    let var_0 = Struct_2(select(vec4<bool>(false, any(select(vec4<bool>(global0.a, true, true, global0.a), vec4<bool>(true, arg_0, false, false), vec4<bool>(arg_0, false, global0.a, arg_0))), any(select(vec2<bool>(false, global0.a), vec2<bool>(true, arg_0), vec2<bool>(true, global0.a))), all(vec3<bool>(global0.a, global0.a, true)) & (global0.d.x > 24613i)), select(vec4<bool>(u_input.c.x == 175566u, global0.a == false, false, 97581u < u_input.c.x), !(!vec4<bool>(global0.a, arg_0, true, true)), !(!vec4<bool>(arg_0, global0.a, false, true))), false), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 90302u, u_input.c.x), _wgslsmith_mod_vec3_u32(u_input.c.zxz, max(global0.b.wzy, vec3<u32>(u_input.c.x, global0.b.x, 92598u)))), u_input.c.zyx), 17u)], ~global0.b.zyx, Struct_1(false, select(vec4<u32>(u_input.c.x, u_input.c.x, global0.b.x, global0.e.x), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c.x, global0.b.x, 12493u, global0.e.x), vec4<u32>(4294967295u, 0u, u_input.c.x, 52720u)), vec4<bool>(global0.a, arg_0, false, true)), vec3<f32>(-139f, global0.c.x, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(global0.c.x, 1783f)))), func_4(Struct_1(true, global0.e, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1000f, global0.c.x, global0.c.x), vec3<f32>(global0.c.x, -880f, global0.c.x))), func_3(), vec4<u32>(global0.b.x, 0u, 25443u, u_input.c.x)), -(-10332i & global0.d.x)), vec4<u32>(abs(~32230u), u_input.c.x, 4294967295u >> (1u % 32u), global0.b.x)), ~vec4<u32>(36870u, u_input.c.x, reverseBits(~u_input.c.x), u_input.c.x));
    let var_1 = Struct_1(true, ~select(u_input.c, vec4<u32>(396u, var_0.e.x, global0.e.x, ~1u), true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(var_0.b.c)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c.x, 1f, _wgslsmith_f_op_f32(min(var_0.d.c.x, -328f))))), abs(select(_wgslsmith_mult_vec3_i32(~var_0.d.d, abs(global0.d)), ~u_input.a, vec3<bool>(539f >= global0.c.x, global0.a, true))), vec4<u32>(global0.b.x, 4294967295u, 42057u, _wgslsmith_sub_u32(4294967295u, u_input.c.x)));
    global0 = global1[_wgslsmith_index_u32(~min(max(4294967295u, _wgslsmith_mult_u32(countOneBits(4294967295u), ~4294967295u)), ~6607u), 17u)];
    global0 = var_1;
    return var_1.d;
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: vec2<f32>) -> Struct_1 {
    global1 = array<Struct_1, 17>();
    let var_0 = _wgslsmith_mult_i32(-20831i, ~(max(~2147483647i, arg_1.d.x & u_input.a.x) | global0.d.x));
    global1 = array<Struct_1, 17>();
    global0 = arg_1;
    let var_1 = arg_1;
    return Struct_1(!all(vec3<bool>(all(vec4<bool>(true, var_1.a, true, arg_1.a)), arg_1.a, true)), arg_1.e, var_1.c, global0.d, ~firstTrailingBit(var_1.b));
}

fn func_1() -> Struct_2 {
    global0 = func_5(false, Struct_1(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(global0.b, vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, global0.b.x)), global0.e.x) < ~(global0.b.x ^ 1u), vec4<u32>(u_input.c.x, global0.b.x, 0u, 1u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 571f, global0.c.x))), func_2(true), ~u_input.c), vec2<f32>(global0.c.x, _wgslsmith_f_op_f32(max(160f, 1277f))));
    let var_0 = vec2<i32>(func_5(all(!(!vec3<bool>(true, true, global0.a))), global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(_wgslsmith_sub_u32(4294967295u, 67174u), global0.e.x), 17u)], vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-458f, -757f) * 889f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c.x * -248f)))).d.x, global0.d.x);
    global1 = array<Struct_1, 17>();
    let var_1 = Struct_2(!select(!(!vec4<bool>(global0.a, global0.a, global0.a, true)), !select(vec4<bool>(global0.a, global0.a, false, false), vec4<bool>(global0.a, false, global0.a, global0.a), vec4<bool>(false, true, global0.a, global0.a)), any(select(vec2<bool>(true, global0.a), vec2<bool>(false, global0.a), global0.a))), global1[_wgslsmith_index_u32(countOneBits(_wgslsmith_add_u32(~_wgslsmith_sub_u32(global0.e.x, 35033u), max(22410u, _wgslsmith_sub_u32(global0.b.x, 3475u)))), 17u)], global0.e.zwz, Struct_1(!global0.a, vec4<u32>(35536u, _wgslsmith_dot_vec4_u32(u_input.c, global0.b << (vec4<u32>(global0.b.x, global0.b.x, global0.e.x, 73662u) % vec4<u32>(32u))), reverseBits(4294967295u), _wgslsmith_sub_u32(~global0.e.x, 1u)), vec3<f32>(_wgslsmith_div_f32(global0.c.x, _wgslsmith_div_f32(global0.c.x, -2256f)), _wgslsmith_f_op_f32(ceil(-1767f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.x))), max(u_input.b, vec3<i32>(var_0.x, _wgslsmith_mod_i32(var_0.x, u_input.b.x), -u_input.b.x)), _wgslsmith_add_vec4_u32(~vec4<u32>(42579u, 0u, 1u, 43597u), ~_wgslsmith_add_vec4_u32(global0.e, u_input.c))), global0.b);
    var var_2 = vec3<bool>(_wgslsmith_add_i32(global0.d.x ^ ~global0.d.x, _wgslsmith_div_i32(u_input.a.x << (u_input.c.x % 32u), i32(-1i) * -2147483647i)) > u_input.b.x, false, false);
    return Struct_2(!select(vec4<bool>(true, false, var_1.d.a, var_2.x & true), vec4<bool>(true, var_2.x, !global0.a, !var_2.x), false), func_5(true, Struct_1(all(!var_1.a), ~_wgslsmith_mult_vec4_u32(vec4<u32>(38736u, 0u, 0u, 56153u), vec4<u32>(1u, 91288u, 8647u, 0u)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0.c.x, var_1.d.c.x, 1729f))), func_3(), _wgslsmith_clamp_vec4_u32(~vec4<u32>(12414u, 7416u, global0.e.x, var_1.c.x), global0.e, vec4<u32>(global0.e.x, global0.e.x, global0.e.x, u_input.c.x))), vec2<f32>(570f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1687f)) * _wgslsmith_f_op_f32(-1488f + -1287f)))), vec3<u32>(~abs(select(4294967295u, 4294967295u, false)), var_1.e.x, var_1.c.x), global1[_wgslsmith_index_u32(~(max(max(var_1.d.b.x, 36121u), var_1.e.x) | _wgslsmith_mod_u32(u_input.c.x, ~4294967295u)), 17u)], _wgslsmith_mult_vec4_u32((~vec4<u32>(global0.b.x, var_1.b.b.x, 4294967295u, 58338u) | ~u_input.c) << (_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(u_input.c, vec4<u32>(17876u, global0.b.x, global0.e.x, u_input.c.x)), vec4<u32>(u_input.c.x, var_1.e.x, var_1.e.x, u_input.c.x)) % vec4<u32>(32u)), vec4<u32>(61309u, func_5(var_2.x | false, func_5(var_2.x, Struct_1(true, u_input.c, global0.c, u_input.a, global0.b), global0.c.zx), _wgslsmith_div_vec2_f32(vec2<f32>(global0.c.x, 313f), var_1.d.c.zy)).e.x, select(1u, 94344u, any(vec3<bool>(var_2.x, var_2.x, true))), ~(~global0.e.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.x;
    var var_1 = vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.c.xzx, firstLeadingBit(global0.b.zxz)) ^ _wgslsmith_mod_u32(u_input.c.x, _wgslsmith_mult_u32(u_input.c.x, global0.b.x & 49572u)), u_input.c.x, 0u, 11131u);
    var var_2 = func_1();
    var_0 = abs(-global0.d.x);
    var_2 = func_1();
    var var_3 = -11837i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.c.x, var_2.d.c.x, var_2.d.c.x), func_5(global0.a, Struct_1(true, vec4<u32>(var_1.x, global0.b.x, 1u, 49914u), vec3<f32>(var_2.b.c.x, -914f, global0.c.x), vec3<i32>(-22481i, -14119i, -14830i), global0.e), vec2<f32>(global0.c.x, var_2.b.c.x)).c, vec3<bool>(true, false, var_2.d.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.d.c.x, 628f, var_2.b.c.x))))) * global0.c));
}

