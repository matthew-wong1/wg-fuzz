struct Struct_1 {
    a: u32,
    b: bool,
    c: vec2<i32>,
    d: f32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec3<u32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_2, 28>;

var<private> global2: array<Struct_2, 16> = array<Struct_2, 16>(Struct_2(vec3<i32>(1i, 0i, 0i), Struct_1(57086u, true, vec2<i32>(81171i, 23164i), 1934f, vec3<bool>(true, true, false)), -42103i), Struct_2(vec3<i32>(-3242i, -28011i, i32(-2147483648)), Struct_1(55373u, true, vec2<i32>(-24941i, 0i), 297f, vec3<bool>(true, true, false)), 0i), Struct_2(vec3<i32>(33386i, -21943i, 5884i), Struct_1(0u, false, vec2<i32>(i32(-2147483648), -1i), -1405f, vec3<bool>(false, true, false)), -1i), Struct_2(vec3<i32>(-1i, -12348i, 3353i), Struct_1(21246u, false, vec2<i32>(i32(-2147483648), 1i), 1359f, vec3<bool>(false, true, false)), 0i), Struct_2(vec3<i32>(46006i, i32(-2147483648), i32(-2147483648)), Struct_1(4294967295u, false, vec2<i32>(1i, 35481i), -1186f, vec3<bool>(true, true, false)), 0i), Struct_2(vec3<i32>(-11620i, -1i, 26236i), Struct_1(10483u, false, vec2<i32>(0i, -1i), -261f, vec3<bool>(false, true, false)), -1i), Struct_2(vec3<i32>(0i, 28395i, 0i), Struct_1(3165u, false, vec2<i32>(33297i, i32(-2147483648)), 1032f, vec3<bool>(true, false, false)), -35949i), Struct_2(vec3<i32>(-6031i, -1i, -1i), Struct_1(67555u, false, vec2<i32>(0i, -16530i), 1604f, vec3<bool>(true, true, true)), -48971i), Struct_2(vec3<i32>(6478i, 53732i, 1593i), Struct_1(0u, true, vec2<i32>(2147483647i, 57452i), 253f, vec3<bool>(false, false, true)), i32(-2147483648)), Struct_2(vec3<i32>(0i, -1i, 0i), Struct_1(91081u, true, vec2<i32>(25473i, -14849i), 2043f, vec3<bool>(false, false, true)), 2147483647i), Struct_2(vec3<i32>(2147483647i, 48079i, i32(-2147483648)), Struct_1(0u, true, vec2<i32>(-26175i, 7751i), -339f, vec3<bool>(true, true, true)), 2147483647i), Struct_2(vec3<i32>(-1i, i32(-2147483648), 1i), Struct_1(27058u, true, vec2<i32>(34441i, -17716i), -838f, vec3<bool>(false, false, false)), 27144i), Struct_2(vec3<i32>(-28934i, 575i, 1i), Struct_1(1u, false, vec2<i32>(i32(-2147483648), 30980i), -436f, vec3<bool>(false, true, true)), -12473i), Struct_2(vec3<i32>(22451i, 0i, 0i), Struct_1(4294967295u, false, vec2<i32>(-1i, 1i), -487f, vec3<bool>(true, true, false)), i32(-2147483648)), Struct_2(vec3<i32>(36610i, 0i, 29016i), Struct_1(1u, false, vec2<i32>(-20856i, -14344i), -2160f, vec3<bool>(true, false, true)), 1i), Struct_2(vec3<i32>(52622i, 109852i, -1i), Struct_1(39827u, true, vec2<i32>(-1i, -33436i), -187f, vec3<bool>(false, false, false)), -33255i));

var<private> global3: i32 = -17240i;

var<private> global4: array<Struct_2, 18>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: vec4<u32>) -> u32 {
    global2 = array<Struct_2, 16>();
    let var_0 = arg_1;
    global2 = array<Struct_2, 16>();
    global3 = u_input.b.x;
    var var_1 = global2[_wgslsmith_index_u32(abs(_wgslsmith_div_u32(~4294967295u, arg_2.x)), 16u)];
    return 41980u;
}

fn func_1() -> i32 {
    global2 = array<Struct_2, 16>();
    let var_0 = reverseBits(0u);
    global4 = array<Struct_2, 18>();
    var var_1 = vec4<bool>(true && !select(false, true, any(vec3<bool>(false, false, true))), (_wgslsmith_sub_i32(9097i, u_input.c) | 2147483647i) == _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_add_i32(u_input.a.x, u_input.a.x), reverseBits(-39561i), _wgslsmith_mod_i32(17556i, u_input.a.x), i32(-1i) * -27873i), -vec4<i32>(u_input.b.x, u_input.a.x, -1i, u_input.c) & vec4<i32>(1i, u_input.b.x, u_input.b.x, u_input.c)), true & (select(any(vec4<bool>(false, true, false, true)), false, u_input.a.x > -19893i) | (4294967295u <= _wgslsmith_div_u32(var_0, var_0))), any(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true)))));
    var var_2 = var_1.x;
    return _wgslsmith_dot_vec3_i32(u_input.a, -u_input.b) >> (_wgslsmith_dot_vec2_u32(~(~vec2<u32>(var_0, var_0)) << (vec2<u32>(_wgslsmith_div_u32(90754u, 24483u), func_2(2147483647i, true, vec4<u32>(var_0, 30625u, var_0, var_0))) % vec2<u32>(32u)), vec2<u32>(60485u, var_0)) % 32u);
}

fn func_3(arg_0: vec2<bool>) -> i32 {
    var var_0 = reverseBits(vec2<i32>(max(~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, 2147483647i, 1i), u_input.a), -2147483647i), max(_wgslsmith_add_i32(u_input.b.x >> (0u % 32u), -u_input.c), i32(-1i) * -12460i)));
    let var_1 = Struct_3(Struct_2(~vec3<i32>(96326i, -1i, -47653i), Struct_1(1u, any(select(vec3<bool>(true, arg_0.x, false), vec3<bool>(arg_0.x, false, arg_0.x), vec3<bool>(true, true, true))), reverseBits(vec2<i32>(-12818i, var_0.x)), _wgslsmith_f_op_f32(min(-875f, _wgslsmith_f_op_f32(sign(-1150f)))), !select(vec3<bool>(arg_0.x, true, arg_0.x), vec3<bool>(true, false, false), false)), _wgslsmith_sub_i32(_wgslsmith_mod_i32(3278i, -u_input.c), ~(var_0.x << (0u % 32u)))), -vec3<i32>(0i, func_1(), -var_0.x), Struct_1(func_2(select(var_0.x, var_0.x, false) | -44871i, true, vec4<u32>(1u, 1u, 1u, 1u)), !(_wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(-20788i, -14883i, u_input.a.x)) >= (var_0.x >> (0u % 32u))), vec2<i32>(var_0.x, -8772i), 1f, vec3<bool>(false, true, true)));
    var var_2 = reverseBits(_wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(countOneBits(vec4<i32>(-52i, u_input.a.x, 2147483647i, u_input.c) << (vec4<u32>(var_1.c.a, 0u, 4294967295u, var_1.c.a) % vec4<u32>(32u))), ~vec4<i32>(-6937i, u_input.a.x, u_input.c, u_input.b.x) << (abs(vec4<u32>(0u, var_1.a.b.a, var_1.a.b.a, var_1.a.b.a)) % vec4<u32>(32u)), vec4<i32>(-1i) * -vec4<i32>(-19996i, 1i, var_1.b.x, var_0.x)), _wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(-vec4<i32>(var_1.c.c.x, u_input.c, u_input.b.x, u_input.b.x), -vec4<i32>(-2147483647i, -1i, u_input.a.x, u_input.c), ~vec4<i32>(var_0.x, var_1.c.c.x, 28761i, var_1.c.c.x)), ~_wgslsmith_mod_vec4_i32(vec4<i32>(-6029i, 1i, 12296i, -1i), vec4<i32>(var_0.x, 37747i, 0i, var_1.c.c.x)))));
    let var_3 = _wgslsmith_mult_vec3_i32(var_1.b, -vec3<i32>(~var_2.x, u_input.a.x, var_0.x));
    let var_4 = -777f;
    return var_2.x;
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: vec4<bool>) -> StorageBuffer {
    var var_0 = Struct_2(~select(-countOneBits(vec3<i32>(1i, -26161i, 55662i)), u_input.b, vec3<bool>(true, true, true)), arg_1, 64965i);
    var_0 = global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.b.a, 0u) | vec2<u32>(var_0.b.a, var_0.b.a), _wgslsmith_clamp_vec2_u32(vec2<u32>(48196u, arg_1.a), vec2<u32>(4294967295u, 14147u), vec2<u32>(var_0.b.a, 9574u))), arg_1.a, arg_1.a), min(_wgslsmith_clamp_vec3_u32(firstLeadingBit(~vec3<u32>(arg_1.a, var_0.b.a, arg_1.a)), ~(vec3<u32>(30849u, 1u, var_0.b.a) & vec3<u32>(83433u, var_0.b.a, 0u)), ~_wgslsmith_mult_vec3_u32(vec3<u32>(7321u, var_0.b.a, arg_1.a), vec3<u32>(arg_1.a, arg_1.a, arg_1.a))), vec3<u32>(~45816u, arg_1.a, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.a, 0u), vec2<u32>(arg_1.a, var_0.b.a))) << (~select(vec3<u32>(0u, var_0.b.a, var_0.b.a), vec3<u32>(1u, arg_1.a, 70513u), arg_3.x) % vec3<u32>(32u)))), 18u)];
    global2 = array<Struct_2, 16>();
    let var_1 = Struct_2(abs(var_0.a), arg_1, -(~2147483647i));
    var var_2 = Struct_2(vec3<i32>(u_input.b.x, 2147483647i, var_1.a.x & _wgslsmith_dot_vec2_i32(arg_0, -var_0.a.xy)), var_1.b, arg_2.x);
    return StorageBuffer(_wgslsmith_f_op_f32(arg_1.d - -446f), _wgslsmith_clamp_vec4_u32(~vec4<u32>(0u, 0u, var_0.b.a, var_2.b.a), select(abs(vec4<u32>(58393u, arg_1.a, 4294967295u, var_0.b.a)), ~vec4<u32>(4294967295u, var_2.b.a, arg_1.a, var_0.b.a), all(vec2<bool>(var_1.b.e.x, false))), vec4<u32>(var_0.b.a, var_2.b.a, 29441u, 36732u) << ((vec4<u32>(var_2.b.a, 4294967295u, 0u, 57616u) & vec4<u32>(var_2.b.a, var_2.b.a, var_1.b.a, var_1.b.a)) % vec4<u32>(32u))) ^ ~(~(vec4<u32>(4294967295u, 1983u, var_0.b.a, 9042u) & vec4<u32>(227u, var_1.b.a, var_1.b.a, 52492u))), vec3<i32>(firstTrailingBit(-(~(-36767i))), _wgslsmith_dot_vec2_i32(-abs(vec2<i32>(arg_1.c.x, 15145i)), vec2<i32>(0i, -arg_1.c.x)), _wgslsmith_clamp_i32(select(_wgslsmith_clamp_i32(arg_0.x, 52918i, var_0.b.c.x), var_2.b.c.x & arg_0.x, true), var_2.b.c.x, ~arg_0.x ^ -u_input.a.x)), ~vec3<u32>(24462u, ~14126u, reverseBits(~1u)), vec3<i32>(firstTrailingBit((2147483647i ^ var_2.a.x) >> (1u % 32u)), abs(var_1.a.x), func_3(arg_3.xy)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = ~u_input.c;
    global2 = array<Struct_2, 16>();
    let x = u_input.a;
    s_output = func_4(-vec2<i32>(~func_1(), _wgslsmith_mod_i32(-u_input.b.x, func_3(vec2<bool>(false, false)))), Struct_1(_wgslsmith_mod_u32(~abs(1u), 1u), true, _wgslsmith_mod_vec2_i32(-u_input.a.yz ^ -vec2<i32>(u_input.a.x, 16079i), -vec2<i32>(0i, -1i) ^ vec2<i32>(u_input.c, -2147483647i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1065f)) + _wgslsmith_f_op_f32(f32(-1f) * -591f)), !select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true))), vec2<i32>(~1i, -u_input.c), vec4<bool>(true, true, all(vec3<bool>(true, true, true)), true));
}

