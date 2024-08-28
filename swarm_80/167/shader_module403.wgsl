struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec3<i32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 10>;

var<private> global1: array<Struct_2, 30> = array<Struct_2, 30>(Struct_2(vec3<bool>(true, false, false), vec2<u32>(1u, 0u), vec4<u32>(43092u, 1u, 2396u, 4665u), vec3<i32>(-34397i, i32(-2147483648), 23342i), vec4<bool>(false, true, true, true)), Struct_2(vec3<bool>(true, true, false), vec2<u32>(0u, 2186u), vec4<u32>(54585u, 4294967295u, 29969u, 12812u), vec3<i32>(2147483647i, -1i, -13915i), vec4<bool>(true, true, false, true)), Struct_2(vec3<bool>(true, true, true), vec2<u32>(0u, 53076u), vec4<u32>(1u, 4294967295u, 1u, 0u), vec3<i32>(7844i, 2147483647i, 0i), vec4<bool>(true, false, true, false)), Struct_2(vec3<bool>(true, false, true), vec2<u32>(33349u, 55208u), vec4<u32>(0u, 35944u, 0u, 4294967295u), vec3<i32>(1i, 19196i, -1i), vec4<bool>(true, true, true, true)), Struct_2(vec3<bool>(true, false, true), vec2<u32>(0u, 0u), vec4<u32>(4294967295u, 35338u, 3336u, 1u), vec3<i32>(2147483647i, 14479i, 2147483647i), vec4<bool>(true, false, false, false)), Struct_2(vec3<bool>(true, true, true), vec2<u32>(1u, 0u), vec4<u32>(40305u, 43855u, 4294967295u, 49857u), vec3<i32>(11894i, i32(-2147483648), 10881i), vec4<bool>(false, false, false, false)), Struct_2(vec3<bool>(true, false, true), vec2<u32>(1u, 4294967295u), vec4<u32>(0u, 4568u, 5315u, 4294967295u), vec3<i32>(6463i, 1i, 1i), vec4<bool>(false, true, false, true)), Struct_2(vec3<bool>(true, false, false), vec2<u32>(1u, 16970u), vec4<u32>(55732u, 49564u, 0u, 12393u), vec3<i32>(1i, 4092i, i32(-2147483648)), vec4<bool>(false, true, false, false)), Struct_2(vec3<bool>(true, true, true), vec2<u32>(99921u, 0u), vec4<u32>(35637u, 102605u, 4294967295u, 27000u), vec3<i32>(1i, i32(-2147483648), -71386i), vec4<bool>(false, true, true, false)), Struct_2(vec3<bool>(true, false, true), vec2<u32>(26100u, 36361u), vec4<u32>(4294967295u, 0u, 55322u, 0u), vec3<i32>(i32(-2147483648), -1i, 0i), vec4<bool>(false, false, false, true)), Struct_2(vec3<bool>(true, false, true), vec2<u32>(49797u, 0u), vec4<u32>(7931u, 0u, 4294967295u, 1681u), vec3<i32>(2147483647i, -11741i, 26318i), vec4<bool>(false, true, true, false)), Struct_2(vec3<bool>(true, true, true), vec2<u32>(43801u, 1u), vec4<u32>(1u, 0u, 81917u, 1u), vec3<i32>(-39318i, 1i, 1i), vec4<bool>(true, true, true, false)), Struct_2(vec3<bool>(true, false, false), vec2<u32>(47646u, 1u), vec4<u32>(4294967295u, 1u, 1u, 1u), vec3<i32>(-1i, 1i, 15482i), vec4<bool>(true, false, true, true)), Struct_2(vec3<bool>(false, true, false), vec2<u32>(0u, 6768u), vec4<u32>(20774u, 0u, 1u, 0u), vec3<i32>(2147483647i, 24361i, 20298i), vec4<bool>(false, false, true, false)), Struct_2(vec3<bool>(true, true, true), vec2<u32>(28157u, 0u), vec4<u32>(42503u, 1u, 18028u, 39871u), vec3<i32>(1i, 2147483647i, -20979i), vec4<bool>(true, false, false, true)), Struct_2(vec3<bool>(true, true, false), vec2<u32>(38133u, 1u), vec4<u32>(1u, 7556u, 18855u, 26762u), vec3<i32>(-74797i, 1i, -8996i), vec4<bool>(true, true, false, true)), Struct_2(vec3<bool>(false, false, false), vec2<u32>(4294967295u, 33558u), vec4<u32>(1u, 12780u, 0u, 89731u), vec3<i32>(-47541i, 2147483647i, 0i), vec4<bool>(true, true, false, false)), Struct_2(vec3<bool>(false, false, false), vec2<u32>(1u, 1u), vec4<u32>(17014u, 4294967295u, 0u, 0u), vec3<i32>(0i, 2147483647i, 35295i), vec4<bool>(false, false, false, true)), Struct_2(vec3<bool>(true, false, true), vec2<u32>(22223u, 4294967295u), vec4<u32>(77384u, 43365u, 1498u, 68524u), vec3<i32>(-9674i, -8494i, -49978i), vec4<bool>(false, false, true, true)), Struct_2(vec3<bool>(true, true, true), vec2<u32>(61658u, 0u), vec4<u32>(1u, 1u, 16753u, 31885u), vec3<i32>(1i, 939i, 10273i), vec4<bool>(false, true, false, true)), Struct_2(vec3<bool>(false, true, true), vec2<u32>(1u, 3135u), vec4<u32>(0u, 0u, 38044u, 4294967295u), vec3<i32>(1i, 7858i, 1i), vec4<bool>(true, false, true, false)), Struct_2(vec3<bool>(false, false, false), vec2<u32>(51234u, 0u), vec4<u32>(0u, 42039u, 55585u, 14692u), vec3<i32>(21974i, 18604i, 1i), vec4<bool>(true, true, true, false)), Struct_2(vec3<bool>(true, true, true), vec2<u32>(19136u, 12702u), vec4<u32>(77983u, 3326u, 4294967295u, 1u), vec3<i32>(0i, 41078i, 51291i), vec4<bool>(false, true, false, true)), Struct_2(vec3<bool>(false, true, true), vec2<u32>(1u, 1u), vec4<u32>(0u, 0u, 0u, 41902u), vec3<i32>(51223i, i32(-2147483648), 0i), vec4<bool>(true, true, false, true)), Struct_2(vec3<bool>(false, true, false), vec2<u32>(4294967295u, 712u), vec4<u32>(1u, 22776u, 4294967295u, 15727u), vec3<i32>(-16212i, i32(-2147483648), 0i), vec4<bool>(true, true, false, false)), Struct_2(vec3<bool>(false, false, false), vec2<u32>(1u, 4294967295u), vec4<u32>(1u, 0u, 4294967295u, 950u), vec3<i32>(1i, -14733i, i32(-2147483648)), vec4<bool>(false, true, true, false)), Struct_2(vec3<bool>(true, true, true), vec2<u32>(17200u, 42823u), vec4<u32>(4294967295u, 37260u, 44304u, 87532u), vec3<i32>(2147483647i, -1i, i32(-2147483648)), vec4<bool>(false, false, false, false)), Struct_2(vec3<bool>(true, false, true), vec2<u32>(137667u, 7579u), vec4<u32>(9708u, 36354u, 5952u, 70532u), vec3<i32>(305i, -35526i, -48135i), vec4<bool>(false, true, false, false)), Struct_2(vec3<bool>(true, true, false), vec2<u32>(65919u, 4294967295u), vec4<u32>(30476u, 0u, 0u, 67777u), vec3<i32>(1i, 2147483647i, -38216i), vec4<bool>(true, false, true, false)), Struct_2(vec3<bool>(false, true, false), vec2<u32>(4294967295u, 1u), vec4<u32>(4294967295u, 64770u, 1u, 57942u), vec3<i32>(1i, 24707i, 2147483647i), vec4<bool>(true, false, false, true)));

var<private> global2: array<Struct_2, 2>;

var<private> global3: array<Struct_2, 7> = array<Struct_2, 7>(Struct_2(vec3<bool>(true, true, false), vec2<u32>(53550u, 42854u), vec4<u32>(22337u, 0u, 4294967295u, 1u), vec3<i32>(16114i, -1i, 0i), vec4<bool>(false, true, false, false)), Struct_2(vec3<bool>(true, false, false), vec2<u32>(0u, 0u), vec4<u32>(1u, 41994u, 63574u, 0u), vec3<i32>(9831i, -41770i, -33161i), vec4<bool>(false, true, false, false)), Struct_2(vec3<bool>(true, true, false), vec2<u32>(1u, 1u), vec4<u32>(2987u, 4294967295u, 5213u, 74702u), vec3<i32>(-37793i, i32(-2147483648), -1i), vec4<bool>(false, true, true, false)), Struct_2(vec3<bool>(true, false, false), vec2<u32>(67611u, 4294967295u), vec4<u32>(75118u, 30371u, 1u, 0u), vec3<i32>(0i, 9594i, 2147483647i), vec4<bool>(false, false, true, false)), Struct_2(vec3<bool>(true, true, false), vec2<u32>(1u, 9832u), vec4<u32>(11703u, 0u, 11144u, 30379u), vec3<i32>(1i, 0i, -81427i), vec4<bool>(true, false, false, false)), Struct_2(vec3<bool>(true, false, true), vec2<u32>(1u, 22125u), vec4<u32>(4294967295u, 1u, 1u, 67194u), vec3<i32>(i32(-2147483648), -32459i, 2147483647i), vec4<bool>(false, false, false, false)), Struct_2(vec3<bool>(true, true, false), vec2<u32>(49180u, 1u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 0u), vec3<i32>(2147483647i, -59976i, -40925i), vec4<bool>(true, false, true, false)));

var<private> global4: vec4<i32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_2) -> u32 {
    var var_0 = arg_0.c.x;
    let var_1 = all(arg_0.a.xy);
    global2 = array<Struct_2, 2>();
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1000f, -1000f), _wgslsmith_f_op_f32(f32(-1f) * -2353f)))), 876f));
    var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(707f)), -804f));
    return _wgslsmith_mult_u32(_wgslsmith_clamp_u32(arg_0.b.x, _wgslsmith_add_u32(arg_0.c.x, 1u), _wgslsmith_clamp_u32(10211u, 1u, _wgslsmith_mult_u32(arg_0.c.x, 4294967295u))) >> (4294967295u % 32u), 0u);
}

fn func_2(arg_0: vec3<i32>, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: vec4<u32>) -> Struct_1 {
    var var_0 = global1[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_mod_u32(~arg_2.b.x | func_3(global1[_wgslsmith_index_u32(4294967295u, 30u)]), arg_3.x) | ~_wgslsmith_dot_vec4_u32(arg_2.c, vec4<u32>(0u, arg_3.x, 1u, arg_2.b.x))), 30u)];
    let var_1 = !arg_1.zx;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-778f)), -805f))))) + -544f);
    global4 = -firstLeadingBit(_wgslsmith_div_vec4_i32(~select(vec4<i32>(11067i, arg_0.x, global4.x, -76442i), vec4<i32>(var_0.d.x, var_0.d.x, arg_0.x, arg_0.x), var_0.e), vec4<i32>(_wgslsmith_div_i32(29077i, -1i), min(u_input.a.x, -1i), 38769i, reverseBits(u_input.a.x))));
    var var_3 = arg_1.x;
    return global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(44021u, _wgslsmith_add_u32(42808u >> (arg_2.c.x % 32u), var_0.c.x), var_0.b.x, _wgslsmith_sub_u32(firstTrailingBit(arg_2.c.x), arg_3.x)), max(vec4<u32>(1u ^ (arg_3.x ^ arg_2.c.x), arg_3.x, var_0.b.x, max(81216u, 1u)), arg_2.c)), 10u)];
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> vec3<u32> {
    global1 = array<Struct_2, 30>();
    global1 = array<Struct_2, 30>();
    let var_0 = 1u;
    let var_1 = Struct_2(select(!vec3<bool>(any(vec4<bool>(true, false, true, true)), true, true), !vec3<bool>(true, any(vec2<bool>(true, false)), true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), all(vec2<bool>(true, true))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), false), vec3<bool>(false, true, true), vec3<bool>(true, true, true)))), ~(~(~vec2<u32>(var_0, var_0) << (max(vec2<u32>(var_0, var_0), vec2<u32>(var_0, var_0)) % vec2<u32>(32u)))), select(abs(select(vec4<u32>(var_0, var_0, var_0, var_0) >> (vec4<u32>(1960u, 1u, var_0, 0u) % vec4<u32>(32u)), vec4<u32>(34881u, var_0, 34725u, 4294967295u), true)), reverseBits(abs(~vec4<u32>(4294967295u, 0u, var_0, var_0))), false), global4.xxz, vec4<bool>(true, any(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), any(vec4<bool>(false, false, true, true)))), !any(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), true)), select(true, !all(vec2<bool>(false, true)), false != all(vec4<bool>(false, false, true, true)))));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1080f, _wgslsmith_f_op_f32(879f + arg_1.a))))));
    return vec3<u32>(reverseBits(var_1.b.x), 0u, var_0);
}

fn func_1() -> vec3<u32> {
    let var_0 = ~func_4(func_2(vec3<i32>(0i, global4.x, 2147483647i), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true)), global2[_wgslsmith_index_u32(1u << (1u % 32u), 2u)], vec4<u32>(38389u, 23248u, 4294967295u, 45550u)), Struct_1(_wgslsmith_f_op_f32(round(-250f)))) ^ ~vec3<u32>(1u, 1u, 1u);
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-422f, func_2(vec3<i32>(u_input.a.x, 1i, u_input.a.x) ^ global4.zxx, select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), false), global1[_wgslsmith_index_u32(0u, 30u)], ~vec4<u32>(15970u, var_0.x, var_0.x, var_0.x)).a) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -327f)), _wgslsmith_f_op_f32(f32(-1f) * -525f))));
    let var_2 = func_2(_wgslsmith_add_vec3_i32(firstTrailingBit(global4.wxw), reverseBits(vec3<i32>(i32(-1i) * -2147483647i, 2147483647i, global4.x << (var_0.x % 32u)))), select(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), true), true), vec3<bool>(true, true, true), true), Struct_2(select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), false), vec3<bool>(true, true, true)), vec3<bool>(true, true, false), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), max(var_0.yz, ~vec2<u32>(var_0.x, 84969u)), _wgslsmith_div_vec4_u32(min(~vec4<u32>(var_0.x, var_0.x, var_0.x, 4044u), max(vec4<u32>(0u, var_0.x, var_0.x, var_0.x), vec4<u32>(38902u, 40900u, 51827u, var_0.x))), firstTrailingBit(~vec4<u32>(var_0.x, 74931u, 4294967295u, 0u))), _wgslsmith_mult_vec3_i32(global4.zwy, select(global4.xyx, _wgslsmith_sub_vec3_i32(global4.zxz, vec3<i32>(7467i, global4.x, u_input.a.x)), vec3<bool>(true, true, true))), vec4<bool>(true, true, true, true)), vec4<u32>(1u, var_0.x, 35449u, min(~9791u, ~var_0.x)));
    global4 = select(_wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(abs(vec4<i32>(2147483647i, 23177i, 2147483647i, -41470i)), abs(vec4<i32>(global4.x, 39592i, 0i, -1i)), countOneBits(vec4<i32>(global4.x, global4.x, 8264i, u_input.a.x))), vec4<i32>(1i, 25488i, global4.x, global4.x) >> ((vec4<u32>(1u, var_0.x, 6786u, var_0.x) ^ vec4<u32>(0u, 4294967295u, var_0.x, 4294967295u)) % vec4<u32>(32u))), _wgslsmith_mod_vec4_i32(abs(vec4<i32>(19006i, global4.x, -47650i, u_input.a.x)), _wgslsmith_add_vec4_i32(firstLeadingBit(vec4<i32>(1i, global4.x, global4.x, u_input.a.x)), max(vec4<i32>(global4.x, global4.x, 7862i, u_input.a.x), vec4<i32>(14096i, global4.x, 45160i, u_input.a.x))))), _wgslsmith_mod_vec4_i32(-max(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, -70528i, u_input.a.x, global4.x), vec4<i32>(-2147483647i, 1i, u_input.a.x, u_input.a.x)), -vec4<i32>(u_input.a.x, -30324i, u_input.a.x, -18818i)), select(firstLeadingBit(vec4<i32>(-1i, 22813i, u_input.a.x, global4.x)), vec4<i32>(_wgslsmith_mod_i32(u_input.a.x, u_input.a.x), ~(-61729i), global4.x, ~u_input.a.x), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true)))), all(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false)), true)));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(var_2.a * 1f))));
    return ~(~func_4(func_2(~vec3<i32>(-1i, global4.x, global4.x), vec3<bool>(false, true, false), Struct_2(vec3<bool>(false, true, false), var_0.xx, vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x), global4.xxw, vec4<bool>(false, false, false, false)), _wgslsmith_add_vec4_u32(vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<u32>(73689u, var_0.x, var_0.x, var_0.x))), func_2(abs(global4.wzy), vec3<bool>(true, true, false), global1[_wgslsmith_index_u32(~var_0.x, 30u)], select(vec4<u32>(1u, 4294967295u, var_0.x, 1u), vec4<u32>(30762u, 67145u, 1u, var_0.x), vec4<bool>(true, false, false, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -2147483647i >= u_input.a.x;
    let var_1 = max(_wgslsmith_div_vec3_u32(func_1(), func_4(func_2(~global4.xyx, vec3<bool>(true, true, true), Struct_2(vec3<bool>(true, false, true), vec2<u32>(47423u, 61749u), vec4<u32>(0u, 0u, 69856u, 0u), vec3<i32>(u_input.a.x, global4.x, global4.x), vec4<bool>(true, true, false, false)), abs(vec4<u32>(24164u, 4294967295u, 28430u, 4294967295u))), Struct_1(295f))), ~firstLeadingBit(_wgslsmith_add_vec3_u32(~vec3<u32>(1u, 60608u, 4294967295u), vec3<u32>(1u, 1u, 1u))));
    var var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(1111f, -1778f), -471f, _wgslsmith_f_op_f32(max(1223f, -1523f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-417f, -421f, -818f), vec3<f32>(-127f, -1258f, 1525f), false)) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-167f, -1898f, 1627f))))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(448f, 1800f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -236f), _wgslsmith_f_op_f32(956f - 1538f))))), select(select(!select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), true)));
    var var_3 = global4.zx;
    var_0 = var_2.x < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1032f) + 1000f));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, global4.wzz, var_1.x);
}

