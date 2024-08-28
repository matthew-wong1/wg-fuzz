struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: i32,
    d: vec3<u32>,
    e: u32,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_2,
    c: Struct_2,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: vec2<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 26> = array<bool, 26>(false, false, false, false, false, true, false, true, true, true, false, false, false, false, false, true, false, true, true, false, false, false, true, false, false, true);

var<private> global1: u32;

var<private> global2: array<f32, 20>;

var<private> global3: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(-17713i, vec3<bool>(true, true, true), -1i, vec3<u32>(42968u, 13611u, 1u), 22741u), Struct_1(1i, vec3<bool>(false, false, true), -40331i, vec3<u32>(1u, 69643u, 24806u), 4294967295u), Struct_1(-15017i, vec3<bool>(false, true, false), 10656i, vec3<u32>(1u, 34591u, 52858u), 25816u), Struct_1(-4132i, vec3<bool>(false, false, true), -1i, vec3<u32>(7832u, 5898u, 9915u), 0u), Struct_1(1i, vec3<bool>(true, false, true), 63632i, vec3<u32>(1u, 0u, 9964u), 11253u), Struct_1(1i, vec3<bool>(true, true, true), 0i, vec3<u32>(59285u, 15881u, 3588u), 4294967295u), Struct_1(30479i, vec3<bool>(true, false, false), 2147483647i, vec3<u32>(8428u, 24327u, 25342u), 4294967295u), Struct_1(-1i, vec3<bool>(true, true, false), -19154i, vec3<u32>(0u, 4294967295u, 123340u), 6074u), Struct_1(14545i, vec3<bool>(true, false, true), 1i, vec3<u32>(4294967295u, 4294967295u, 25101u), 0u), Struct_1(25652i, vec3<bool>(true, true, false), -5425i, vec3<u32>(1u, 60693u, 1u), 37963u), Struct_1(i32(-2147483648), vec3<bool>(false, true, true), 2147483647i, vec3<u32>(0u, 36010u, 4294967295u), 4294967295u), Struct_1(31241i, vec3<bool>(true, true, true), 32555i, vec3<u32>(0u, 2754u, 0u), 103634u), Struct_1(-24117i, vec3<bool>(true, true, false), -1i, vec3<u32>(4294967295u, 11447u, 4294967295u), 66769u), Struct_1(-9947i, vec3<bool>(false, true, false), -44783i, vec3<u32>(58368u, 0u, 14562u), 41956u));

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_1) -> u32 {
    global1 = 1u;
    let var_0 = select(vec4<bool>(true, true, firstTrailingBit(arg_0.b.e.c >> (u_input.c.x % 32u)) < (arg_1.a >> (7290u % 32u)), false && global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, 6408u, 1u), 26u)]), !vec4<bool>(arg_0.b.b, any(vec2<bool>(global0[_wgslsmith_index_u32(arg_0.c.d.d.x, 26u)], false)), select(false, any(arg_0.b.d.b), all(arg_1.b.xz)), false), vec4<bool>(false, all(select(!vec4<bool>(arg_0.b.e.b.x, true, arg_0.b.e.b.x, true), vec4<bool>(false, global0[_wgslsmith_index_u32(16276u, 26u)], true, false), arg_1.b.x)), !all(!vec3<bool>(false, true, arg_0.c.a)), arg_0.c.d.b.x));
    var var_1 = Struct_1(firstTrailingBit(_wgslsmith_mult_i32(-arg_1.a, _wgslsmith_mult_i32(~u_input.b, arg_0.b.e.a))), select(!select(!arg_0.b.d.b, vec3<bool>(false, false, arg_1.b.x), any(var_0)), vec3<bool>(!all(vec4<bool>(false, arg_1.b.x, arg_1.b.x, false)), true, arg_1.b.x), true), -9516i, arg_0.b.d.d, (u_input.c.x & arg_0.b.d.e) << (_wgslsmith_add_u32(1u, ~u_input.d.x) % 32u));
    let var_2 = -u_input.b & u_input.b;
    let var_3 = arg_0.c;
    return 12763u & select(7075u, _wgslsmith_mult_u32(u_input.d.x >> (_wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(var_3.e.e, 4294967295u, arg_0.c.c)) % 32u), 0u), !(!(true & arg_1.b.x)));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: Struct_1, arg_3: Struct_2) -> vec3<bool> {
    global1 = _wgslsmith_clamp_u32(~arg_2.d.x, 1u, ~0u & countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.a.c, u_input.d.x) << (arg_1.a.e.d.yx % vec2<u32>(32u)), arg_2.d.yy)));
    let var_0 = ~arg_3.c;
    global1 = abs(_wgslsmith_clamp_u32(1u, ~1u, 4294967295u));
    let var_1 = Struct_3(arg_3);
    let var_2 = ~arg_2.c;
    return vec3<bool>(!arg_0.x != true, u_input.a != 104175u, true);
}

fn func_2(arg_0: bool, arg_1: i32) -> Struct_2 {
    var var_0 = Struct_1(u_input.e.x, select(func_4(select(select(vec2<bool>(false, false), vec2<bool>(false, arg_0), arg_0), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(arg_0, true), true)), Struct_3(Struct_2(arg_0, arg_0, 4294967295u, Struct_1(14968i, vec3<bool>(false, true, arg_0), -2147483647i, vec3<u32>(u_input.a, u_input.d.x, u_input.d.x), u_input.d.x), Struct_1(arg_1, vec3<bool>(global0[_wgslsmith_index_u32(4052u, 26u)], arg_0, arg_0), u_input.e.x, u_input.c, u_input.d.x))), global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 4294967295u, u_input.c.x), u_input.c), 14u)], Struct_2(true, true, _wgslsmith_dot_vec2_u32(vec2<u32>(9908u, u_input.c.x), u_input.d), global3[_wgslsmith_index_u32(~4294967295u, 14u)], global3[_wgslsmith_index_u32(func_3(Struct_4(vec3<i32>(arg_1, 1i, arg_1), Struct_2(true, false, u_input.c.x, global3[_wgslsmith_index_u32(1u, 14u)], Struct_1(37129i, vec3<bool>(global0[_wgslsmith_index_u32(68213u, 26u)], global0[_wgslsmith_index_u32(u_input.a, 26u)], arg_0), u_input.e.x, u_input.c, u_input.d.x)), Struct_2(global0[_wgslsmith_index_u32(21297u, 26u)], global0[_wgslsmith_index_u32(68034u, 26u)], u_input.a, Struct_1(u_input.b, vec3<bool>(false, arg_0, false), arg_1, u_input.c, u_input.a), Struct_1(1i, vec3<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 26u)], true, global0[_wgslsmith_index_u32(u_input.a, 26u)]), arg_1, u_input.c, 2012u)), arg_1), global3[_wgslsmith_index_u32(1u, 14u)]), 14u)])), !select(vec3<bool>(true, true, true), vec3<bool>(arg_0, arg_0, global0[_wgslsmith_index_u32(4294967295u, 26u)]), !global0[_wgslsmith_index_u32(u_input.a, 26u)]), !vec3<bool>(true, any(vec4<bool>(arg_0, arg_0, false, arg_0)), true)), -1i, vec3<u32>(u_input.c.x, ~abs(max(u_input.a, 4294967295u)), _wgslsmith_add_u32(47939u, min(1u >> (u_input.d.x % 32u), firstTrailingBit(u_input.a)))), 0u);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -637f)));
    let var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global2[_wgslsmith_index_u32(31887u, 20u)], var_1))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1200f, var_1))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(136f, global2[_wgslsmith_index_u32(var_0.e, 20u)]))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(f32(-1f) * -614f))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(631f, var_1))))));
    global2 = array<f32, 20>();
    let var_3 = -1217f;
    return Struct_2(true, true, 95153u >> (firstLeadingBit(_wgslsmith_dot_vec2_u32(reverseBits(u_input.c.xx), firstLeadingBit(var_0.d.yy))) % 32u), global3[_wgslsmith_index_u32(~u_input.a, 14u)], global3[_wgslsmith_index_u32(var_0.e, 14u)]);
}

fn func_5(arg_0: Struct_4, arg_1: vec3<u32>, arg_2: vec3<i32>) -> Struct_3 {
    var var_0 = _wgslsmith_clamp_vec4_i32(select(_wgslsmith_sub_vec4_i32(select(vec4<i32>(-2984i, -14826i, arg_2.x, arg_2.x), vec4<i32>(arg_2.x, arg_2.x, -58764i, -57957i), vec4<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 26u)], true, arg_0.b.b)) & vec4<i32>(arg_0.d, 0i, -15860i, arg_0.b.e.a), -vec4<i32>(-1i, u_input.e.x, arg_0.d, arg_2.x)), -vec4<i32>(u_input.e.x | arg_2.x, _wgslsmith_dot_vec3_i32(arg_2, arg_0.a), countOneBits(9472i), _wgslsmith_div_i32(2147483647i, arg_0.a.x)), arg_0.b.a), ~_wgslsmith_sub_vec4_i32(~vec4<i32>(arg_2.x, 0i, -1i, 2147483647i), vec4<i32>(19440i, 14328i, -2147483647i, 1i) | vec4<i32>(arg_2.x, arg_2.x, arg_2.x, 53583i)) | -(~vec4<i32>(-1i, -20186i, arg_0.a.x, -36157i)), vec4<i32>(-(~_wgslsmith_clamp_i32(u_input.b, 2147483647i, u_input.b)), ~_wgslsmith_div_i32(firstTrailingBit(arg_2.x), _wgslsmith_add_i32(arg_2.x, 0i)), _wgslsmith_add_i32(max(arg_0.a.x, 2147483647i), max(30323i, arg_2.x)), 1i));
    let var_1 = func_2(false, _wgslsmith_div_i32(24189i << (arg_1.x % 32u), -arg_0.d)).d.b;
    return Struct_3(arg_0.c);
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: vec2<f32>) -> vec3<bool> {
    var var_0 = func_5(Struct_4(max(vec3<i32>(u_input.e.x, u_input.b, u_input.e.x) ^ vec3<i32>(u_input.b, 2147483647i, -16108i), vec3<i32>(u_input.e.x, u_input.e.x, 1i) >> (vec3<u32>(u_input.a, u_input.a, 7445u) % vec3<u32>(32u))) << (~_wgslsmith_mod_vec3_u32(u_input.c, vec3<u32>(1u, 1u, u_input.d.x)) % vec3<u32>(32u)), func_2(global0[_wgslsmith_index_u32(~4294967295u << (_wgslsmith_add_u32(u_input.d.x, u_input.d.x) % 32u), 26u)], u_input.e.x), Struct_2(!(!arg_1), any(select(vec4<bool>(arg_0, true, arg_0, false), vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 26u)], arg_1, true, global0[_wgslsmith_index_u32(40464u, 26u)]), vec4<bool>(false, false, false, arg_1))), _wgslsmith_div_u32(firstTrailingBit(u_input.c.x), 22255u), func_2(true, u_input.e.x).d, global3[_wgslsmith_index_u32(u_input.d.x, 14u)]), -18645i), u_input.c, _wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(~vec3<i32>(u_input.e.x, -27721i, u_input.b), countOneBits(vec3<i32>(u_input.e.x, u_input.e.x, u_input.e.x)), vec3<i32>(u_input.b, u_input.e.x, 21350i) & vec3<i32>(22761i, u_input.e.x, 2147483647i)) >> (~vec3<u32>(37313u, u_input.a, u_input.c.x) % vec3<u32>(32u)), vec3<i32>(reverseBits(_wgslsmith_dot_vec2_i32(u_input.e, vec2<i32>(u_input.e.x, u_input.b))), -1i, u_input.e.x)));
    let var_1 = -967f;
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(firstLeadingBit(~(~(~31317u))), u_input.d.x), 26u)];
    var var_3 = func_5(Struct_4(~reverseBits(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.e.x, -2147483647i, u_input.b), vec3<i32>(var_0.a.e.a, 71539i, u_input.e.x))), func_5(Struct_4(abs(vec3<i32>(var_0.a.e.c, u_input.b, 0i)), func_2(arg_1, u_input.e.x), Struct_2(false, true, u_input.c.x, global3[_wgslsmith_index_u32(var_0.a.d.e, 14u)], global3[_wgslsmith_index_u32(0u, 14u)]), -1i), ~u_input.c, ~(~vec3<i32>(1i, 1i, 17889i))).a, func_5(Struct_4(firstLeadingBit(vec3<i32>(u_input.b, 18812i, u_input.b)), var_0.a, var_0.a, u_input.e.x), _wgslsmith_sub_vec3_u32(vec3<u32>(var_0.a.e.d.x, 1u, 1u), var_0.a.e.d), (vec3<i32>(1i, 11927i, -1i) & vec3<i32>(2147483647i, var_0.a.e.c, var_0.a.e.c)) ^ vec3<i32>(0i, u_input.e.x, u_input.b)).a, _wgslsmith_sub_i32(0i | var_0.a.d.a, _wgslsmith_dot_vec2_i32(u_input.e, -vec2<i32>(-2147483647i, 2147483647i)))), vec3<u32>(u_input.c.x, max(~var_0.a.c, 0u), var_0.a.e.e) ^ vec3<u32>(~(var_0.a.c << (854u % 32u)), u_input.d.x, var_0.a.d.d.x), _wgslsmith_add_vec3_i32(firstLeadingBit(vec3<i32>(u_input.e.x, var_0.a.e.c, 15078i) >> (max(var_0.a.e.d, vec3<u32>(65262u, u_input.d.x, 74267u)) % vec3<u32>(32u))), _wgslsmith_mod_vec3_i32(vec3<i32>(-6914i, var_0.a.e.a, var_0.a.d.a) & vec3<i32>(1i, -1i, var_0.a.d.c), firstTrailingBit(~vec3<i32>(-2147483647i, 1i, var_0.a.d.a)))));
    let var_4 = var_0.a.b || (var_1 < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_2.x)) - _wgslsmith_div_f32(global2[_wgslsmith_index_u32(u_input.c.x, 20u)], arg_2.x))));
    return select(func_2(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, var_0.a.c), vec2<u32>(var_0.a.e.e, var_3.a.c)), vec2<u32>(var_0.a.d.d.x, var_3.a.d.e)), var_3.a.e.d.zz), 26u)], var_0.a.d.c).e.b, !(!(!var_0.a.d.b)), var_0.a.d.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 26>();
    global2 = array<f32, 20>();
    let var_0 = any(!select(vec3<bool>(true, true, true), !(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 26u)], global0[_wgslsmith_index_u32(u_input.d.x, 26u)], global0[_wgslsmith_index_u32(u_input.a, 26u)])), !func_1(true, true, vec2<f32>(-215f, global2[_wgslsmith_index_u32(1u, 20u)]))));
    var var_1 = true;
    let var_2 = Struct_1(u_input.e.x, vec3<bool>(all(select(vec4<bool>(global0[_wgslsmith_index_u32(0u, 26u)], global0[_wgslsmith_index_u32(u_input.d.x, 26u)], true, false), vec4<bool>(true, var_0, true, true), vec4<bool>(var_0, global0[_wgslsmith_index_u32(1u, 26u)], var_0, false))) & false, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, _wgslsmith_add_u32(~u_input.a, 1u)), 26u)], !(true == var_0)), ~func_2(true, u_input.b << (~1u % 32u)).d.c, func_5(Struct_4(_wgslsmith_mod_vec3_i32(abs(vec3<i32>(0i, 1i, u_input.e.x)), _wgslsmith_add_vec3_i32(vec3<i32>(41217i, 2147483647i, 2147483647i), vec3<i32>(u_input.b, 40930i, u_input.b))), Struct_2(true, true, _wgslsmith_dot_vec2_u32(u_input.c.zy, u_input.c.yx), global3[_wgslsmith_index_u32(1u, 14u)], global3[_wgslsmith_index_u32(u_input.c.x, 14u)]), func_2(true, _wgslsmith_mod_i32(64126i, u_input.b)), u_input.b), ~u_input.c, _wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(~vec3<i32>(u_input.e.x, u_input.e.x, -1i), vec3<i32>(-2147483647i, -2147483647i, 35132i)), -vec3<i32>(u_input.e.x, 15546i, u_input.e.x) ^ vec3<i32>(0i, 5714i, -6844i))).a.e.d, u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(-(var_2.a | (2147483647i & ~var_2.a)), global2[_wgslsmith_index_u32(abs(select(0u, ~max(82622u, var_2.e), true)), 20u)]);
}

