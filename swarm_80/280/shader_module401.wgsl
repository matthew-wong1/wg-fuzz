struct Struct_1 {
    a: vec3<f32>,
    b: vec4<bool>,
    c: vec4<bool>,
    d: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec4<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 10> = array<Struct_3, 10>(Struct_3(Struct_2(vec3<u32>(5908u, 34251u, 0u), Struct_1(vec3<f32>(-1099f, -142f, -602f), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), 19337u), vec4<bool>(true, false, false, true), Struct_1(vec3<f32>(-579f, 661f, 1000f), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), 41095u)), 0u), Struct_3(Struct_2(vec3<u32>(103467u, 3196u, 49222u), Struct_1(vec3<f32>(1277f, -1879f, 413f), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), 60199u), vec4<bool>(false, true, true, false), Struct_1(vec3<f32>(-334f, -946f, 378f), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), 4294967295u)), 1u), Struct_3(Struct_2(vec3<u32>(1u, 4294967295u, 1u), Struct_1(vec3<f32>(1000f, -1479f, 550f), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), 33322u), vec4<bool>(true, true, false, true), Struct_1(vec3<f32>(1090f, -769f, 696f), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), 4294967295u)), 65151u), Struct_3(Struct_2(vec3<u32>(1682u, 1u, 1u), Struct_1(vec3<f32>(1287f, 397f, -1213f), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), 0u), vec4<bool>(true, false, true, false), Struct_1(vec3<f32>(782f, 498f, -1173f), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), 4294967295u)), 1u), Struct_3(Struct_2(vec3<u32>(1u, 4294967295u, 1u), Struct_1(vec3<f32>(2212f, 800f, -444f), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), 0u), vec4<bool>(false, false, true, false), Struct_1(vec3<f32>(-370f, -705f, -1000f), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), 1u)), 4294967295u), Struct_3(Struct_2(vec3<u32>(100372u, 4733u, 0u), Struct_1(vec3<f32>(1186f, 1978f, 538f), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), 1u), vec4<bool>(false, true, false, false), Struct_1(vec3<f32>(1000f, -1000f, 874f), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), 36119u)), 12977u), Struct_3(Struct_2(vec3<u32>(5463u, 30179u, 59411u), Struct_1(vec3<f32>(579f, -688f, 1000f), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), 1u), vec4<bool>(false, false, true, false), Struct_1(vec3<f32>(-394f, -794f, -1000f), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), 0u)), 113702u), Struct_3(Struct_2(vec3<u32>(31240u, 4294967295u, 4294967295u), Struct_1(vec3<f32>(-1000f, -1921f, -2138f), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), 33765u), vec4<bool>(true, true, false, false), Struct_1(vec3<f32>(291f, 242f, -542f), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), 6515u)), 69326u), Struct_3(Struct_2(vec3<u32>(27710u, 1410u, 23708u), Struct_1(vec3<f32>(-1000f, 1404f, -846f), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), 4294967295u), vec4<bool>(true, true, true, true), Struct_1(vec3<f32>(-579f, 460f, -979f), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), 6936u)), 1u), Struct_3(Struct_2(vec3<u32>(76283u, 4294967295u, 3219u), Struct_1(vec3<f32>(1351f, 354f, 337f), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), 1u), vec4<bool>(true, true, true, false), Struct_1(vec3<f32>(915f, 287f, -683f), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), 4294967295u)), 43372u));

var<private> global1: array<u32, 28>;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: Struct_2, arg_3: Struct_2) -> u32 {
    var var_0 = -_wgslsmith_mod_vec2_i32(-vec2<i32>(-2147483647i, 33323i) << ((vec2<u32>(0u, u_input.c.x) & arg_2.a.xy) % vec2<u32>(32u)), -_wgslsmith_clamp_vec2_i32(vec2<i32>(44964i, 18764i), vec2<i32>(10233i, 0i), vec2<i32>(0i, -2147483647i))) | vec2<i32>(abs(~(-16326i)), i32(-1i) * -8190i);
    return firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_3.d.d, ~(~4294967295u), 6883u), ~vec3<u32>(global1[_wgslsmith_index_u32(19780u, 28u)], 4294967295u, 91468u) >> (~vec3<u32>(arg_3.d.d, 0u, 1u) % vec3<u32>(32u))));
}

fn func_3(arg_0: vec2<bool>, arg_1: bool) -> u32 {
    let var_0 = all(select(!select(select(vec3<bool>(arg_1, true, arg_0.x), vec3<bool>(true, false, arg_1), vec3<bool>(arg_0.x, arg_1, arg_0.x)), !vec3<bool>(true, false, arg_1), !vec3<bool>(arg_1, arg_0.x, false)), vec3<bool>(arg_1, true, arg_1), arg_0.x));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(636f * 707f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(767f * -1682f) - _wgslsmith_f_op_f32(floor(408f))))));
    var var_2 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1395f) + _wgslsmith_f_op_f32(-2358f + 1613f)))), -101f, 670f), select(!select(select(vec4<bool>(true, var_0, true, true), vec4<bool>(arg_0.x, false, true, false), true), vec4<bool>(false, true, arg_1, true), arg_0.x), !vec4<bool>(arg_0.x && var_0, true, any(arg_0), false == var_0), !select(select(vec4<bool>(arg_0.x, var_0, false, true), vec4<bool>(arg_0.x, var_0, var_0, arg_0.x), vec4<bool>(false, arg_1, true, true)), vec4<bool>(false, arg_0.x, false, true), false)), !select(select(!vec4<bool>(arg_0.x, false, true, arg_0.x), !vec4<bool>(arg_0.x, true, true, arg_1), !vec4<bool>(var_0, var_0, true, true)), select(vec4<bool>(arg_1, false, var_0, arg_0.x), select(vec4<bool>(arg_0.x, true, arg_0.x, var_0), vec4<bool>(arg_0.x, true, var_0, true), false), true), !(!vec4<bool>(true, var_0, var_0, arg_1))), firstLeadingBit(_wgslsmith_dot_vec2_u32(firstTrailingBit(u_input.a.xy), u_input.a.yy) & _wgslsmith_mod_u32(~60934u, ~u_input.c.x)));
    let var_3 = ~(~global1[_wgslsmith_index_u32(firstLeadingBit(~global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(141716u, 28u)], global1[_wgslsmith_index_u32(var_2.d, 28u)]), vec2<u32>(14951u, 11835u)), 28u)]), 28u)]);
    return 4294967295u;
}

fn func_4(arg_0: vec4<i32>, arg_1: u32, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = u_input.a;
    global0 = array<Struct_3, 10>();
    global1 = array<u32, 28>();
    var var_1 = Struct_1(vec3<f32>(arg_2, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -586f)), -166f)), 717f), select(!(!vec4<bool>(false, true, arg_3.b.x, arg_3.b.x)), !arg_3.c, vec4<bool>(!arg_3.b.x, false, true, true)), select(select(!vec4<bool>(arg_3.c.x, false, arg_3.c.x, false), arg_3.b, !(true & arg_3.c.x)), vec4<bool>(firstLeadingBit(112347u) > (1u & arg_1), all(!arg_3.b.yxx), arg_3.b.x, true), true), 34819u);
    global1 = array<u32, 28>();
    return arg_3;
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: f32, arg_3: vec4<f32>) -> Struct_2 {
    var var_0 = arg_0.c.x;
    let var_1 = Struct_2(_wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(max(select(u_input.a, vec3<u32>(arg_0.d, 35410u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(79561u, 28u)], 28u)]), arg_0.b.x), _wgslsmith_clamp_vec3_u32(u_input.a, vec3<u32>(global1[_wgslsmith_index_u32(u_input.b, 28u)], arg_0.d, arg_0.d), u_input.a)), ~vec3<u32>(41534u, arg_0.d, arg_0.d)), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, u_input.c.x, global1[_wgslsmith_index_u32(4294967295u, 28u)] ^ 1u), ~u_input.a)), func_4(vec4<i32>(30110i, i32(-1i) * -37118i, 23732i, _wgslsmith_dot_vec3_i32(~vec3<i32>(1i, -2147483647i, -38336i), vec3<i32>(1i, 1i, 1i))), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c.x, 28u)], 28u)], arg_1, Struct_1(vec3<f32>(_wgslsmith_f_op_f32(max(arg_1, arg_1)), _wgslsmith_f_op_f32(-arg_3.x), _wgslsmith_f_op_f32(f32(-1f) * -242f)), select(vec4<bool>(arg_0.c.x, arg_0.c.x, true, true), arg_0.c, arg_0.c), !(!arg_0.c), ~global1[_wgslsmith_index_u32(~1u, 28u)])), arg_0.b, func_4(vec4<i32>(select(-24627i, ~(-41474i), true), firstTrailingBit(11465i), 2147483647i << (_wgslsmith_add_u32(0u, arg_0.d) % 32u), -(~(-2147483647i))), _wgslsmith_dot_vec3_u32(~(~vec3<u32>(u_input.a.x, 14707u, 0u)), _wgslsmith_div_vec3_u32(vec3<u32>(44802u, 1u, 125937u), vec3<u32>(u_input.b, 1u, 4294967295u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1189f)) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_3.x * arg_3.x), _wgslsmith_f_op_f32(f32(-1f) * -1375f)))), Struct_1(arg_0.a, vec4<bool>(true, false, arg_0.c.x, arg_0.b.x), !(!arg_0.c), u_input.a.x)));
    var var_2 = var_1.b;
    var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-237f, _wgslsmith_div_f32(arg_3.x, -1961f), _wgslsmith_f_op_f32(f32(-1f) * -194f)))) - arg_3.zwz), var_2.c, func_4(countOneBits(vec4<i32>(_wgslsmith_add_i32(26623i, 54387i), 29494i, ~0i, 0i)), u_input.a.x, 1285f, Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.a.x, arg_2, 501f)), vec3<f32>(var_1.b.a.x, arg_3.x, arg_3.x), var_2.b.x)), var_1.c, !select(vec4<bool>(arg_0.c.x, var_1.b.b.x, var_2.b.x, true), vec4<bool>(false, false, true, arg_0.c.x), var_1.d.b.x), firstTrailingBit(func_2(arg_3, Struct_3(var_1, 50234u), Struct_2(var_1.a, Struct_1(vec3<f32>(-661f, arg_1, arg_3.x), vec4<bool>(var_1.d.c.x, var_1.c.x, var_1.b.b.x, arg_0.c.x), arg_0.b, u_input.b), vec4<bool>(true, true, var_2.b.x, false), arg_0), Struct_2(vec3<u32>(4294967295u, 1u, 1u), arg_0, var_2.b, arg_0))))).b, 0u);
    let var_3 = var_1.b;
    return Struct_2(~firstLeadingBit(select(_wgslsmith_mod_vec3_u32(vec3<u32>(57597u, 42856u, global1[_wgslsmith_index_u32(var_1.d.d, 28u)]), vec3<u32>(58306u, 0u, var_1.d.d)), _wgslsmith_sub_vec3_u32(vec3<u32>(24080u, var_1.d.d, 52593u), vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c.x, 28u)], 28u)], u_input.b, 4294967295u)), !var_2.b.x)), func_4(vec4<i32>(min(0i >> (var_1.b.d % 32u), 0i), -1i, _wgslsmith_dot_vec2_i32(~vec2<i32>(22378i, 2147483647i), vec2<i32>(1i, 1i)), 1i), 13270u, _wgslsmith_f_op_f32(-arg_3.x), var_1.b), !(!var_1.c), var_3);
}

fn func_1(arg_0: bool, arg_1: vec3<i32>, arg_2: vec3<f32>, arg_3: bool) -> Struct_1 {
    let var_0 = Struct_3(func_5(func_4(-(vec4<i32>(0i, 12316i, arg_1.x, 0i) & vec4<i32>(arg_1.x, 0i, arg_1.x, 0i)), _wgslsmith_clamp_u32(u_input.b ^ 4294967295u, 26069u, func_2(vec4<f32>(650f, arg_2.x, -548f, arg_2.x), global0[_wgslsmith_index_u32(4294967295u, 10u)], Struct_2(u_input.a, Struct_1(vec3<f32>(arg_2.x, -411f, arg_2.x), vec4<bool>(true, true, true, arg_3), vec4<bool>(arg_3, arg_0, false, arg_0), 7396u), vec4<bool>(arg_3, true, true, true), Struct_1(vec3<f32>(-1960f, 611f, 737f), vec4<bool>(arg_0, false, arg_3, true), vec4<bool>(false, arg_0, true, false), 47429u)), Struct_2(u_input.a, Struct_1(arg_2, vec4<bool>(true, arg_0, false, false), vec4<bool>(arg_0, true, arg_3, arg_3), u_input.c.x), vec4<bool>(arg_3, arg_0, true, false), Struct_1(arg_2, vec4<bool>(false, true, false, arg_3), vec4<bool>(arg_3, true, true, false), 0u)))), -644f, Struct_1(arg_2, !vec4<bool>(arg_3, arg_0, arg_0, arg_3), vec4<bool>(true, true, arg_0, true), func_3(vec2<bool>(true, true), arg_3))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_2.x), -1000f)), _wgslsmith_f_op_f32(-arg_2.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-613f + 1732f), _wgslsmith_f_op_f32(-arg_2.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_2.x, -1855f, arg_2.x, arg_2.x))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, arg_2.x, arg_2.x, arg_2.x))))), firstLeadingBit(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(~(~23270u), 28u)], 28u)]));
    var var_1 = func_4(-_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-29388i, 5192i, 1i, 58535i) ^ vec4<i32>(19346i, arg_1.x, arg_1.x, arg_1.x), vec4<i32>(-1316i, 7511i, 0i, arg_1.x) ^ vec4<i32>(12585i, arg_1.x, 0i, arg_1.x)), -(vec4<i32>(-13000i, arg_1.x, -2147483647i, -2147483647i) << (vec4<u32>(global1[_wgslsmith_index_u32(u_input.a.x, 28u)], 53754u, global1[_wgslsmith_index_u32(0u, 28u)], global1[_wgslsmith_index_u32(1u, 28u)]) % vec4<u32>(32u)))), var_0.a.b.d, -515f, var_0.a.b).b.x;
    let var_2 = _wgslsmith_clamp_vec4_u32(countOneBits(~(vec4<u32>(2348u, var_0.a.d.d, 31569u, 0u) ^ vec4<u32>(u_input.b, 5695u, var_0.a.b.d, 4294967295u))), vec4<u32>(1u, ~global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_0.b, 1u), 28u)], ~(~9240u), 1u), vec4<u32>(abs(~var_0.a.a.x), _wgslsmith_dot_vec4_u32(~vec4<u32>(4072u, global1[_wgslsmith_index_u32(5094u, 28u)], 0u, 3537u), vec4<u32>(u_input.a.x, 45370u, u_input.a.x, var_0.b)), func_5(func_4(vec4<i32>(1i, 1i, arg_1.x, -1i), u_input.c.x, var_0.a.d.a.x, Struct_1(vec3<f32>(var_0.a.d.a.x, -598f, -1531f), vec4<bool>(false, var_0.a.c.x, var_0.a.c.x, false), var_0.a.d.c, u_input.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), var_0.a.b.a.x, _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_2.x, -673f, arg_2.x, arg_2.x), vec4<f32>(var_0.a.b.a.x, var_0.a.d.a.x, arg_2.x, arg_2.x)))).b.d, _wgslsmith_mult_u32(global1[_wgslsmith_index_u32(u_input.b, 28u)], _wgslsmith_mult_u32(1u, 42949u)))) | ~_wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(global1[_wgslsmith_index_u32(u_input.c.x, 28u)], 0u, global1[_wgslsmith_index_u32(u_input.a.x, 28u)], var_0.b)), ~(vec4<u32>(1u, 1u, 0u, 1u) << (vec4<u32>(global1[_wgslsmith_index_u32(0u, 28u)], 0u, 4294967295u, u_input.c.x) % vec4<u32>(32u))));
    let var_3 = Struct_3(Struct_2(abs(reverseBits(vec3<u32>(var_2.x, u_input.a.x, var_0.b))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_2 + var_0.a.b.a)), !vec4<bool>(false, true, false, arg_0), var_0.a.b.c, _wgslsmith_clamp_u32(~80511u, ~var_2.x, var_0.b | 27019u)), var_0.a.c, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_2)), var_0.a.b.b, vec4<bool>(arg_3, true, any(var_0.a.d.c), var_0.a.c.x), ~1u)), countOneBits(func_4(_wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, arg_1.x, 17163i, -2147483647i), vec4<i32>(2147483647i, arg_1.x, -2147483647i, -2147483647i), vec4<i32>(53674i, arg_1.x, arg_1.x, arg_1.x)), _wgslsmith_sub_vec4_i32(vec4<i32>(arg_1.x, 19838i, -2147483647i, arg_1.x), vec4<i32>(arg_1.x, arg_1.x, 0i, arg_1.x))), 26713u, -532f, var_0.a.d).d));
    var var_4 = Struct_2(max(vec3<u32>(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~29868u, var_2.x), 28u)], ~_wgslsmith_mod_u32(28581u, var_3.a.d.d), u_input.a.x), ~max(~u_input.a, vec3<u32>(10380u, 4294967295u, var_0.a.d.d))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.x, var_3.a.d.a.x, 750f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.d.a.x, -2433f, arg_2.x) + var_3.a.d.a)) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(var_0.a.b.a, vec3<f32>(481f, var_3.a.d.a.x, arg_2.x))))), var_0.a.d.b, var_0.a.c, func_4(countOneBits(vec4<i32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x) << (var_2 % vec4<u32>(32u))), 5925u, _wgslsmith_f_op_f32(152f - _wgslsmith_f_op_f32(-var_0.a.d.a.x)), var_3.a.b).d), func_5(var_3.a.b, _wgslsmith_f_op_f32(trunc(-1699f)), _wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-259f, var_0.a.d.a.x, var_0.a.d.a.x, 952f) * vec4<f32>(var_3.a.d.a.x, arg_2.x, 1000f, var_3.a.b.a.x))) * vec4<f32>(-1048f, _wgslsmith_f_op_f32(trunc(1516f)), _wgslsmith_f_op_f32(1075f - 1196f), _wgslsmith_f_op_f32(sign(-1000f))))).d.c, var_3.a.b);
    return var_3.a.d;
}

fn func_6(arg_0: u32, arg_1: u32, arg_2: Struct_1, arg_3: vec3<i32>) -> vec2<i32> {
    let var_0 = abs(u_input.a.yz);
    var var_1 = func_5(arg_2, arg_2.a.x, arg_2.a.x, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(111f, -1070f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1070f + arg_2.a.x))), _wgslsmith_f_op_f32(sign(1f)), func_4(_wgslsmith_sub_vec4_i32(min(vec4<i32>(arg_3.x, -8202i, arg_3.x, -12909i), vec4<i32>(arg_3.x, 0i, arg_3.x, 1i)), ~vec4<i32>(arg_3.x, 9922i, 1i, arg_3.x)), ~0u, _wgslsmith_f_op_f32(-arg_2.a.x), arg_2).a.x, func_4(~(-vec4<i32>(arg_3.x, arg_3.x, 39344i, arg_3.x)), ~arg_2.d | abs(4294967295u), _wgslsmith_f_op_f32(select(arg_2.a.x, func_4(vec4<i32>(arg_3.x, -1923i, arg_3.x, arg_3.x), 1u, arg_2.a.x, arg_2).a.x, true)), func_1(select(true, false, arg_2.c.x), abs(arg_3), func_5(Struct_1(arg_2.a, arg_2.c, vec4<bool>(true, true, arg_2.c.x, true), global1[_wgslsmith_index_u32(u_input.a.x, 28u)]), arg_2.a.x, arg_2.a.x, vec4<f32>(289f, 128f, arg_2.a.x, -946f)).d.a, arg_2.b.x)).a.x)).d.a.zy;
    var var_2 = ~_wgslsmith_mult_i32(-2147483647i, ~select(abs(arg_3.x), 2147483647i, arg_2.c.x));
    var var_3 = func_5(arg_2, func_1(func_1(true, abs(arg_3), func_5(arg_2, _wgslsmith_f_op_f32(497f * -583f), var_1.x, vec4<f32>(-2008f, -161f, 254f, var_1.x)).b.a, ~arg_0 < func_4(vec4<i32>(arg_3.x, arg_3.x, arg_3.x, arg_3.x), 7957u, arg_2.a.x, arg_2).d).c.x, abs(vec3<i32>(2147483647i, 0i, arg_3.x) >> (firstTrailingBit(vec3<u32>(1u, global1[_wgslsmith_index_u32(75092u, 28u)], u_input.a.x)) % vec3<u32>(32u))), arg_2.a, (true && all(arg_2.c.xx)) && true).a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-398f - var_1.x))), func_4(select(vec4<i32>(-1i, arg_3.x, -1i, -10849i), vec4<i32>(2147483647i, arg_3.x, arg_3.x, -11043i), vec4<bool>(false, arg_2.c.x, arg_2.b.x, arg_2.b.x)), ~4294967295u, _wgslsmith_f_op_f32(-648f - var_1.x), arg_2).a.x))), vec4<f32>(_wgslsmith_f_op_f32(-904f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(113f - -1244f), var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.a.x + arg_2.a.x) - _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(685f, arg_2.a.x), 549f))), _wgslsmith_f_op_f32(select(arg_2.a.x, _wgslsmith_f_op_f32(-var_1.x), !(!arg_2.c.x))), _wgslsmith_f_op_f32(func_1(false, select(vec3<i32>(arg_3.x, -17184i, arg_3.x), arg_3, arg_2.b.xwy), vec3<f32>(1661f, var_1.x, var_1.x), arg_2.c.x).a.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + 1027f))))).c.yx;
    global0 = array<Struct_3, 10>();
    return arg_3.zy;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1171f);
    let var_1 = global0[_wgslsmith_index_u32(~(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(u_input.c.x, 0u), global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(1u, 28u)], 28u)], _wgslsmith_add_u32(u_input.c.x, 4294967295u)), ~4294967295u >> (global1[_wgslsmith_index_u32(1u, 28u)] % 32u)) >> (abs(global1[_wgslsmith_index_u32(max(0u, ~u_input.c.x), 28u)]) % 32u)), 10u)];
    global0 = array<Struct_3, 10>();
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(var_1.a.a.x, 4294967295u), 4294967295u, 1u), reverseBits(vec3<u32>(40993u, ~43799u, var_1.a.a.x))), ~_wgslsmith_mod_vec3_u32(vec3<u32>(~var_1.b, ~global1[_wgslsmith_index_u32(u_input.c.x, 28u)], 4294967295u), ~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, 20640u, 4294967295u), vec3<u32>(global1[_wgslsmith_index_u32(0u, 28u)], 77311u, global1[_wgslsmith_index_u32(var_1.b, 28u)])))), 10u)];
    var var_3 = _wgslsmith_mod_i32(~(-1i), 2147483647i);
    global0 = array<Struct_3, 10>();
    var var_4 = var_1.a;
    global1 = array<u32, 28>();
    let var_5 = 0i | _wgslsmith_mult_i32(-firstLeadingBit(2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), func_6(29110u, var_4.d.d, func_1(false, vec3<i32>(0i, -41738i, -2147483647i), var_2.a.d.a, var_4.c.x), select(vec3<i32>(41363i, 20707i, 1i), vec3<i32>(-1i, 1i, -40323i), var_1.a.d.c.zyy))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x, abs(~(_wgslsmith_add_u32(6804u, var_4.b.d) | 4294967295u)), var_5, var_1.a.a.x, ~min(max(max(var_5, -2147483647i), 0i), var_5));
}

