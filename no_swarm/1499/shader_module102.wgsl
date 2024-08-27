struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: bool,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: f32,
    d: vec4<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 18> = array<vec4<u32>, 18>(vec4<u32>(4294967295u, 1u, 0u, 33167u), vec4<u32>(26258u, 1u, 22636u, 43407u), vec4<u32>(1u, 1u, 58721u, 23395u), vec4<u32>(1u, 45242u, 1u, 1u), vec4<u32>(1u, 0u, 4294967295u, 0u), vec4<u32>(55843u, 14871u, 0u, 1u), vec4<u32>(36119u, 157u, 0u, 67829u), vec4<u32>(11782u, 20869u, 1u, 4294967295u), vec4<u32>(0u, 4294967295u, 5719u, 25855u), vec4<u32>(1u, 0u, 1u, 3048u), vec4<u32>(42595u, 1u, 16965u, 1u), vec4<u32>(8076u, 0u, 4294967295u, 1u), vec4<u32>(51863u, 17425u, 4294967295u, 1u), vec4<u32>(39826u, 4294967295u, 53241u, 5910u), vec4<u32>(1u, 50077u, 45177u, 29206u), vec4<u32>(4506u, 1u, 20702u, 5975u), vec4<u32>(1u, 41100u, 70019u, 0u), vec4<u32>(21391u, 0u, 127738u, 38847u));

var<private> global1: vec2<bool>;

var<private> global2: array<vec4<i32>, 2> = array<vec4<i32>, 2>(vec4<i32>(20341i, 0i, -15869i, 16560i), vec4<i32>(i32(-2147483648), -6525i, -40596i, -1i));

var<private> global3: vec2<i32> = vec2<i32>(38119i, i32(-2147483648));

var<private> global4: array<Struct_2, 19> = array<Struct_2, 19>(Struct_2(vec4<i32>(-14598i, 10207i, -41790i, -2689i), 1i, Struct_1(85570u, vec3<bool>(false, false, true), vec4<i32>(1i, 2147483647i, 14143i, 1i))), Struct_2(vec4<i32>(-1i, 57899i, i32(-2147483648), -3106i), 44041i, Struct_1(1907u, vec3<bool>(true, false, false), vec4<i32>(-25107i, i32(-2147483648), 0i, i32(-2147483648)))), Struct_2(vec4<i32>(2147483647i, 1i, i32(-2147483648), 1i), -1i, Struct_1(0u, vec3<bool>(true, false, false), vec4<i32>(-37886i, 2147483647i, -1i, i32(-2147483648)))), Struct_2(vec4<i32>(-1i, 39645i, -1i, -29159i), 11605i, Struct_1(0u, vec3<bool>(false, true, false), vec4<i32>(2147483647i, -1i, -24677i, 27403i))), Struct_2(vec4<i32>(i32(-2147483648), 1i, 39831i, -1i), -3467i, Struct_1(4294967295u, vec3<bool>(true, false, true), vec4<i32>(14994i, 1i, -1700i, 67914i))), Struct_2(vec4<i32>(-66852i, 33126i, -1i, 10315i), i32(-2147483648), Struct_1(1u, vec3<bool>(false, true, false), vec4<i32>(35099i, 2147483647i, -22894i, i32(-2147483648)))), Struct_2(vec4<i32>(-1i, 1i, i32(-2147483648), 1i), -20765i, Struct_1(0u, vec3<bool>(true, false, false), vec4<i32>(-1i, -16881i, 21913i, 0i))), Struct_2(vec4<i32>(-29654i, 7944i, -9944i, 31358i), -41677i, Struct_1(1601u, vec3<bool>(false, false, true), vec4<i32>(0i, 2147483647i, 44101i, 2147483647i))), Struct_2(vec4<i32>(1i, 0i, 2147483647i, -26083i), -544i, Struct_1(4294967295u, vec3<bool>(false, false, true), vec4<i32>(i32(-2147483648), 8973i, 54591i, 0i))), Struct_2(vec4<i32>(1i, 1i, 1i, 0i), i32(-2147483648), Struct_1(1u, vec3<bool>(true, false, true), vec4<i32>(17482i, i32(-2147483648), -21412i, 72476i))), Struct_2(vec4<i32>(1i, -11164i, 0i, -13725i), 2147483647i, Struct_1(1u, vec3<bool>(false, true, true), vec4<i32>(-1i, 1i, i32(-2147483648), i32(-2147483648)))), Struct_2(vec4<i32>(-29198i, 2147483647i, -54028i, -3831i), -28451i, Struct_1(35631u, vec3<bool>(true, true, false), vec4<i32>(-1i, 2147483647i, 6089i, i32(-2147483648)))), Struct_2(vec4<i32>(-47388i, 2147483647i, -1i, i32(-2147483648)), 8056i, Struct_1(49214u, vec3<bool>(false, false, true), vec4<i32>(i32(-2147483648), -62603i, 1i, 1i))), Struct_2(vec4<i32>(1i, 0i, 811i, 32518i), 2147483647i, Struct_1(4294967295u, vec3<bool>(false, true, true), vec4<i32>(2147483647i, -8532i, 1i, 33009i))), Struct_2(vec4<i32>(24458i, 0i, 0i, -52192i), -55268i, Struct_1(2116u, vec3<bool>(true, true, false), vec4<i32>(73112i, -14940i, 2147483647i, 0i))), Struct_2(vec4<i32>(i32(-2147483648), 1908i, 0i, 12903i), 0i, Struct_1(1472u, vec3<bool>(true, false, false), vec4<i32>(0i, 2147483647i, 0i, 1i))), Struct_2(vec4<i32>(1i, 2147483647i, -1i, 15487i), 0i, Struct_1(4294967295u, vec3<bool>(true, false, true), vec4<i32>(-2810i, 1i, 48388i, -7044i))), Struct_2(vec4<i32>(0i, -1i, 0i, -33956i), -4608i, Struct_1(4294967295u, vec3<bool>(true, false, false), vec4<i32>(21438i, -5592i, 8343i, 2147483647i))), Struct_2(vec4<i32>(1i, 17958i, -1i, 3202i), -44246i, Struct_1(49135u, vec3<bool>(true, true, true), vec4<i32>(0i, -27405i, 6840i, i32(-2147483648)))));

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> vec3<u32> {
    var var_0 = vec4<i32>(_wgslsmith_sub_i32(-25552i, 41580i), _wgslsmith_dot_vec2_i32(u_input.a, u_input.a), 3389i, ~(-29112i)) | vec4<i32>(~global3.x, abs(_wgslsmith_dot_vec3_i32(vec3<i32>(30686i, -2147483647i, u_input.a.x) & vec3<i32>(u_input.a.x, global3.x, -2147483647i), vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x) << (vec3<u32>(11333u, 4294967295u, 1u) % vec3<u32>(32u)))), 14241i ^ _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(55184i, u_input.a.x, -16900i), vec3<i32>(-2147483647i, 0i, 33324i)), vec3<i32>(-4251i, -1i, u_input.a.x)), ~u_input.a.x);
    var var_1 = !all(select(!vec4<bool>(global1.x, false, global1.x, global1.x), select(!vec4<bool>(false, global1.x, global1.x, global1.x), select(vec4<bool>(global1.x, global1.x, false, false), vec4<bool>(global1.x, true, global1.x, true), vec4<bool>(false, true, global1.x, true)), true), any(vec2<bool>(true, true))));
    var var_2 = 91557u;
    var var_3 = Struct_3(-_wgslsmith_add_vec4_i32(global2[_wgslsmith_index_u32(6819u, 2u)], ~(global2[_wgslsmith_index_u32(4294967295u, 2u)] >> (global0[_wgslsmith_index_u32(13767u, 18u)] % vec4<u32>(32u)))), global1.x, _wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(select(select(vec2<u32>(4294967295u, 39820u), vec2<u32>(63538u, 4294967295u), vec2<bool>(false, global1.x)), _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 54258u), vec2<u32>(0u, 15176u), vec2<u32>(4294967295u, 1u)), true), reverseBits(abs(vec2<u32>(4294967295u, 1u)))), ~_wgslsmith_sub_vec2_u32(~vec2<u32>(54592u, 0u), _wgslsmith_div_vec2_u32(vec2<u32>(41938u, 0u), vec2<u32>(1u, 9469u)))));
    var_1 = true;
    return _wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(reverseBits(1u), firstTrailingBit(0u), var_3.c.x) | _wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(1u, 0u, 6152u), vec3<u32>(16827u, 0u, var_3.c.x)), max(vec3<u32>(8035u, var_3.c.x, 0u), vec3<u32>(4294967295u, var_3.c.x, var_3.c.x))), vec3<u32>(4294967295u, _wgslsmith_mod_u32(var_3.c.x, var_3.c.x), var_3.c.x) << (vec3<u32>(var_3.c.x, _wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(var_3.c.x, 18u)], vec4<u32>(74681u, var_3.c.x, var_3.c.x, var_3.c.x)), var_3.c.x | var_3.c.x) % vec3<u32>(32u))), vec3<u32>(1u, abs(_wgslsmith_mult_u32(~var_3.c.x, _wgslsmith_div_u32(4294967295u, var_3.c.x))), abs(select(abs(23284u), var_3.c.x, any(vec3<bool>(var_3.b, false, true))))));
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_3) -> vec3<u32> {
    var var_0 = Struct_1(_wgslsmith_clamp_u32(_wgslsmith_div_u32(1u, arg_1.c.x), arg_0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.x, 12037u, arg_0.x), func_3())) ^ _wgslsmith_clamp_u32(max(arg_1.c.x, _wgslsmith_add_u32(0u, 4294967295u)), abs(max(21809u, 68268u)), arg_1.c.x), select(!vec3<bool>(true, true | global1.x, global1.x), !select(select(vec3<bool>(arg_1.b, false, false), vec3<bool>(false, arg_1.b, arg_1.b), arg_1.b), !vec3<bool>(true, false, arg_1.b), false), true || !(global1.x == global1.x)), _wgslsmith_mult_vec4_i32(vec4<i32>(~u_input.a.x << (arg_0.x % 32u), global3.x, ~(-606i), 1i << (_wgslsmith_mod_u32(4294967295u, 4294967295u) % 32u)), max(max(-global2[_wgslsmith_index_u32(arg_1.c.x, 2u)], ~arg_1.a), global2[_wgslsmith_index_u32(~(~arg_1.c.x), 2u)])));
    let var_1 = Struct_3(reverseBits(-vec4<i32>(max(arg_1.a.x, u_input.a.x), -2147483647i, -62476i, arg_1.a.x & var_0.c.x)), !var_0.b.x, arg_0);
    let var_2 = 1000f;
    var var_3 = !(!vec4<bool>(var_2 <= -1450f, false, !any(vec4<bool>(true, true, var_1.b, var_1.b)), var_0.b.x));
    var var_4 = Struct_1(firstLeadingBit(select(var_1.c.x, ~_wgslsmith_mod_u32(arg_1.c.x, 1u), select(true, var_0.b.x, any(vec2<bool>(var_0.b.x, true))))), select(var_3.yyx, select(vec3<bool>(any(vec2<bool>(true, var_1.b)), false, true & global1.x), select(var_0.b, select(var_3.zwx, vec3<bool>(true, var_0.b.x, true), var_3.yzz), true), false), vec3<bool>(false, all(!var_0.b.xx), true)), var_1.a);
    return vec3<u32>(1u, var_1.c.x, ~_wgslsmith_mod_u32(var_0.a, _wgslsmith_mult_u32(reverseBits(0u), ~4294967295u)));
}

fn func_1(arg_0: vec3<u32>, arg_1: f32, arg_2: vec4<f32>) -> Struct_3 {
    return Struct_3(firstTrailingBit(vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_mod_i32(u_input.a.x, -7728i), global3.x), 0i, global3.x, (u_input.a.x & u_input.a.x) ^ -global3.x)), false, vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.x, 4294967295u, 4294967295u), func_2(arg_0.zy, Struct_3(vec4<i32>(19141i, 88881i, global3.x, global3.x), global1.x, vec2<u32>(95347u, 4294967295u)))), 0u) | ~_wgslsmith_clamp_vec2_u32(~vec2<u32>(4294967295u, arg_0.x), arg_0.zy >> (vec2<u32>(76039u, arg_0.x) % vec2<u32>(32u)), ~vec2<u32>(arg_0.x, arg_0.x)));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: f32, arg_3: u32) -> vec2<f32> {
    global2 = array<vec4<i32>, 2>();
    let var_0 = !(!select(all(arg_0), arg_1.b, any(select(arg_0, vec3<bool>(true, false, arg_0.x), vec3<bool>(arg_1.b, true, arg_0.x)))));
    let var_1 = global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(abs(~_wgslsmith_div_vec4_u32(global0[_wgslsmith_index_u32(0u, 18u)], min(vec4<u32>(9831u, 13385u, 0u, 49519u), vec4<u32>(arg_1.c.x, 36447u, 3797u, arg_3)))), abs(vec4<u32>(arg_1.c.x, arg_1.c.x, arg_1.c.x, arg_3))), 19u)];
    global1 = select(select(!vec2<bool>(var_1.c.b.x, true), !(!arg_0.yx), (arg_1.b && var_1.c.b.x) | (var_1.c.a < _wgslsmith_dot_vec3_u32(vec3<u32>(71001u, arg_1.c.x, arg_3), vec3<u32>(73962u, 943u, var_1.c.a)))), select(select(vec2<bool>(false, global1.x), vec2<bool>(true, true), var_0), vec2<bool>(!arg_0.x || any(vec4<bool>(false, false, true, arg_0.x)), all(!var_1.c.b.zz)), select(vec2<bool>(arg_1.a.x <= 24375i, !arg_1.b), select(vec2<bool>(arg_1.b, var_0), select(var_1.c.b.yy, vec2<bool>(global1.x, true), var_1.c.b.x), arg_0.x), arg_0.xy)), var_1.c.b.yx);
    let var_2 = Struct_3(_wgslsmith_mod_vec4_i32(var_1.c.c, _wgslsmith_clamp_vec4_i32(abs(vec4<i32>(var_1.c.c.x, global3.x, u_input.a.x, -2147483647i)), firstTrailingBit(vec4<i32>(77514i, 0i, u_input.a.x, -29817i)) & vec4<i32>(var_1.c.c.x, u_input.a.x, -2147483647i, 23128i), -_wgslsmith_clamp_vec4_i32(vec4<i32>(global3.x, global3.x, arg_1.a.x, arg_1.a.x), vec4<i32>(global3.x, arg_1.a.x, -16306i, -2147483647i), global2[_wgslsmith_index_u32(arg_1.c.x, 2u)]))), true, arg_1.c);
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_2 - _wgslsmith_f_op_f32(f32(-1f) * -578f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !((global1.x && false) && global1.x);
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(-114f, -663f), vec2<f32>(837f, 465f))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2082f, 166f)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-565f, 213f)))))) + _wgslsmith_f_op_vec2_f32(func_4(!select(!vec3<bool>(true, var_0, var_0), !vec3<bool>(var_0, var_0, false), all(vec2<bool>(global1.x, global1.x))), func_1(vec3<u32>(1u, 1u, 1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(539f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1237f, -692f, 170f, -289f)))), 1f, ~4212u)));
    let var_2 = select(select(select(select(vec2<bool>(false, false), vec2<bool>(global1.x, true), select(vec2<bool>(false, true), vec2<bool>(global1.x, false), vec2<bool>(var_0, false))), vec2<bool>(var_0, !global1.x), !select(vec2<bool>(true, global1.x), vec2<bool>(false, true), vec2<bool>(false, false))), select(select(vec2<bool>(true, false), select(vec2<bool>(var_0, true), vec2<bool>(false, global1.x), var_0), vec2<bool>(false, var_0)), !select(vec2<bool>(var_0, false), vec2<bool>(var_0, global1.x), true), vec2<bool>(all(vec3<bool>(true, false, var_0)), global1.x && false)), !vec2<bool>(true, -211f >= var_1.x)), select(!select(!vec2<bool>(var_0, false), vec2<bool>(global1.x, var_0), vec2<bool>(true, true)), !vec2<bool>(select(true, global1.x, false), any(vec2<bool>(global1.x, true))), true), !vec2<bool>(all(select(vec2<bool>(true, true), vec2<bool>(true, global1.x), vec2<bool>(true, global1.x))), true));
    let var_3 = _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(-var_1.x));
    let var_4 = !vec4<bool>(true & select(any(vec3<bool>(var_2.x, true, var_0)), false, var_2.x | true), -(~1672i) >= select(select(41137i, global3.x, true), u_input.a.x, all(vec3<bool>(var_2.x, global1.x, var_2.x))), true, any(select(vec2<bool>(true, true), var_2, var_2)));
    global1 = vec2<bool>(true, all(var_2));
    global3 = vec2<i32>(_wgslsmith_add_i32(-5296i ^ _wgslsmith_dot_vec4_i32(global2[_wgslsmith_index_u32(56171u, 2u)] >> (global0[_wgslsmith_index_u32(74355u, 18u)] % vec4<u32>(32u)), ~vec4<i32>(0i, global3.x, global3.x, global3.x)), -(-15229i ^ _wgslsmith_div_i32(u_input.a.x, global3.x))), -(~(~2147483647i)) >> (1u % 32u));
    let var_5 = reverseBits(-5315i);
    let var_6 = countOneBits(select(reverseBits(u_input.a), _wgslsmith_sub_vec2_i32(u_input.a, max(~u_input.a, ~vec2<i32>(33051i, global3.x))), var_2.x));
    let x = u_input.a;
    s_output = StorageBuffer(30862i, _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(var_1.x, -1087f), _wgslsmith_f_op_f32(round(var_1.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(217f, var_1.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(361f + -249f), _wgslsmith_f_op_f32(-var_1.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_4(var_4.wxx, Struct_3(vec4<i32>(-48146i, var_6.x, 1i, var_5), var_2.x, vec2<u32>(1u, 17028u)), -153f, 32343u)).x - _wgslsmith_f_op_f32(-var_1.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 404f, 736f, var_1.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, var_3, -1319f, var_3)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3, -1286f, 2440f, var_3) - vec4<f32>(1000f, var_3, -789f, var_3)) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.x, var_1.x, var_1.x, -2395f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_3))));
}

