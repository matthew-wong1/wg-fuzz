struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec3<u32>, 12> = array<vec3<u32>, 12>(vec3<u32>(1u, 0u, 1u), vec3<u32>(28268u, 29975u, 347u), vec3<u32>(76496u, 4294967295u, 4294967295u), vec3<u32>(0u, 4294967295u, 78740u), vec3<u32>(61264u, 93613u, 0u), vec3<u32>(0u, 2425u, 12962u), vec3<u32>(0u, 1u, 25056u), vec3<u32>(31277u, 62392u, 1u), vec3<u32>(4294967295u, 4294967295u, 15100u), vec3<u32>(4294967295u, 1u, 65177u), vec3<u32>(26227u, 1u, 51688u), vec3<u32>(1u, 1544u, 50912u));

var<private> global2: array<vec4<f32>, 32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_2) -> vec4<u32> {
    global2 = array<vec4<f32>, 32>();
    let var_0 = arg_0.d;
    global1 = array<vec3<u32>, 12>();
    let var_1 = Struct_2(var_0, Struct_1(all(vec4<bool>(!arg_0.d.a, arg_0.b.a, var_0.a, var_0.a == false)), ~select(_wgslsmith_div_vec4_u32(vec4<u32>(64467u, arg_0.d.b.x, arg_0.d.b.x, arg_0.e), vec4<u32>(arg_0.b.b.x, arg_0.d.d.x, 11705u, var_0.b.x)), select(var_0.b, vec4<u32>(50307u, var_0.d.x, var_0.b.x, arg_0.d.b.x), vec4<bool>(arg_0.d.a, var_0.a, false, false)), true), vec3<i32>(~(165i | var_0.c.x), _wgslsmith_dot_vec3_i32(var_0.c, arg_0.b.c), u_input.a), arg_0.b.d), _wgslsmith_f_op_f32(-arg_0.c), arg_0.a, 61210u);
    let var_2 = !vec2<bool>(!any(!vec4<bool>(var_0.a, false, var_0.a, true)), all(select(select(vec2<bool>(true, var_1.a.a), vec2<bool>(true, false), vec2<bool>(var_1.a.a, var_0.a)), vec2<bool>(var_1.d.a, false), !var_1.d.a)));
    return vec4<u32>(~(~select(~arg_0.a.b.x, _wgslsmith_mod_u32(var_0.b.x, 26107u), false)), countOneBits(var_0.b.x), var_0.d.x, min(~firstTrailingBit(0u), var_0.b.x));
}

fn func_2(arg_0: Struct_2) -> vec4<i32> {
    let var_0 = Struct_1(arg_0.b.a, _wgslsmith_clamp_vec4_u32(reverseBits(arg_0.d.b), vec4<u32>(~arg_0.d.d.x, 1u | arg_0.e, _wgslsmith_clamp_u32(0u, 30794u, arg_0.a.d.x), _wgslsmith_mult_u32(arg_0.e, 4294967295u)), select(reverseBits(arg_0.b.b), func_3(Struct_2(Struct_1(arg_0.a.a, arg_0.b.b, vec3<i32>(2147483647i, 12241i, arg_0.d.c.x), vec4<u32>(arg_0.b.d.x, arg_0.a.d.x, arg_0.b.b.x, arg_0.e)), Struct_1(true, arg_0.b.d, vec3<i32>(arg_0.d.c.x, -1i, arg_0.b.c.x), vec4<u32>(arg_0.d.b.x, arg_0.d.b.x, arg_0.e, 4294967295u)), arg_0.c, arg_0.d, arg_0.a.b.x)), select(true, true, false))) ^ arg_0.b.d, arg_0.b.c, arg_0.a.d);
    var var_1 = select(arg_0.b.d.x, func_3(arg_0).x, var_0.a);
    let var_2 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.c, _wgslsmith_f_op_f32(arg_0.c + arg_0.c))), _wgslsmith_f_op_f32(-arg_0.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1331f - 899f)) * _wgslsmith_f_op_f32(round(arg_0.c)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1163f, -984f, arg_0.c)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0.c, arg_0.c, arg_0.c))))))))));
    var_1 = select(min(_wgslsmith_dot_vec4_u32(abs(arg_0.d.d), select(arg_0.a.b, _wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.d.d.x, 4294967295u, var_0.b.x, 1u), vec4<u32>(var_0.d.x, var_0.b.x, 27435u, 64574u)), any(vec3<bool>(true, arg_0.d.a, var_0.a)))), var_0.d.x), ~(~4294967295u), any(!(!vec2<bool>(arg_0.a.a, true))) & all(!select(vec2<bool>(var_0.a, var_0.a), vec2<bool>(false, false), true)));
    var var_3 = _wgslsmith_div_u32(arg_0.a.b.x, ~arg_0.b.d.x);
    return min(vec4<i32>(var_0.c.x, abs(35739i), _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(var_0.c.zy & vec2<i32>(-70376i, var_0.c.x), reverseBits(vec2<i32>(-1i, 2147483647i)), vec2<i32>(var_0.c.x, arg_0.b.c.x)), vec2<i32>(17745i, var_0.c.x) >> (vec2<u32>(19194u, 17037u) % vec2<u32>(32u))), 0i), vec4<i32>(u_input.a, var_0.c.x, -var_0.c.x, reverseBits(_wgslsmith_mult_i32(1i, -u_input.a))));
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: i32, arg_3: Struct_2) -> Struct_1 {
    var var_0 = Struct_1(arg_1.a.a, firstLeadingBit(arg_1.b.d), arg_1.a.c, arg_1.a.d);
    global0 = 48224u;
    let var_1 = arg_3.b;
    global1 = array<vec3<u32>, 12>();
    let var_2 = vec4<bool>(false, _wgslsmith_dot_vec4_i32(~max(vec4<i32>(arg_1.b.c.x, u_input.a, arg_3.d.c.x, arg_1.b.c.x), vec4<i32>(0i, -1i, var_1.c.x, var_1.c.x)), _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(1i, arg_2, arg_0, -5442i), vec4<i32>(arg_3.b.c.x, arg_0, arg_3.d.c.x, arg_3.b.c.x)), -vec4<i32>(2147483647i, -15059i, -1i, var_0.c.x))) == 0i, any(vec4<bool>(select(true, !arg_1.a.a, true), true, arg_1.b.a, !(!arg_3.d.a))), var_0.a);
    return Struct_1(var_0.a, firstLeadingBit(vec4<u32>(_wgslsmith_clamp_u32(106381u, 4294967295u, ~var_0.d.x), arg_3.d.b.x, ~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.b.d.x, 4294967295u), vec2<u32>(11456u, arg_1.a.b.x)), arg_3.e)), firstLeadingBit(_wgslsmith_div_vec3_i32(firstLeadingBit(arg_3.b.c), var_1.c)), min(~_wgslsmith_mult_vec4_u32(vec4<u32>(var_1.d.x, var_0.b.x, 1866u, var_0.d.x), vec4<u32>(11856u, var_1.d.x, 25100u, 0u)), max(vec4<u32>(var_1.d.x, arg_1.d.d.x, 29561u, 46828u) & ~var_0.b, var_1.d)));
}

fn func_1(arg_0: vec3<f32>, arg_1: u32) -> vec4<u32> {
    var var_0 = func_4(firstTrailingBit(~_wgslsmith_dot_vec4_i32(~vec4<i32>(2147483647i, u_input.a, u_input.a, u_input.a), func_2(Struct_2(Struct_1(false, vec4<u32>(arg_1, 34178u, arg_1, 0u), vec3<i32>(u_input.a, u_input.a, u_input.a), vec4<u32>(8326u, 14537u, arg_1, 32759u)), Struct_1(false, vec4<u32>(1u, 16955u, 20757u, arg_1), vec3<i32>(u_input.a, 15755i, -2147483647i), vec4<u32>(18731u, arg_1, arg_1, arg_1)), arg_0.x, Struct_1(true, vec4<u32>(arg_1, arg_1, 43874u, arg_1), vec3<i32>(-10693i, u_input.a, 0i), vec4<u32>(45844u, 20356u, arg_1, 46271u)), 37210u)))), Struct_2(Struct_1(true, max(vec4<u32>(4294967295u, 31748u, 51612u, 16054u), ~vec4<u32>(50567u, arg_1, 83485u, 4294967295u)), vec3<i32>(-1i) * -vec3<i32>(3662i, u_input.a, 21028i), vec4<u32>(1u, arg_1, arg_1, 1u)), Struct_1((1u != arg_1) & true, _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_1, arg_1, 0u, 4294967295u), vec4<u32>(arg_1, 50173u, arg_1, 0u)), vec4<u32>(arg_1, 1u, arg_1, arg_1)), countOneBits(-vec3<i32>(u_input.a, 0i, u_input.a)), abs(~vec4<u32>(135836u, 71307u, arg_1, arg_1))), 705f, Struct_1(-48707i <= -u_input.a, vec4<u32>(arg_1 >> (28882u % 32u), 1u, 4294967295u, ~23233u), vec3<i32>(u_input.a, u_input.a, u_input.a), (vec4<u32>(1u, arg_1, 4294967295u, 1u) & vec4<u32>(arg_1, arg_1, 0u, 19033u)) | ~vec4<u32>(103358u, 66161u, arg_1, 22684u)), (17808u & arg_1) ^ reverseBits(~arg_1)), u_input.a, Struct_2(Struct_1(false, vec4<u32>(_wgslsmith_div_u32(arg_1, 59400u), arg_1, ~arg_1, arg_1 | arg_1), min(vec3<i32>(u_input.a, 0i, 2147483647i), select(vec3<i32>(18256i, -42008i, -18061i), vec3<i32>(2147483647i, u_input.a, u_input.a), vec3<bool>(true, false, true))), ~_wgslsmith_mult_vec4_u32(vec4<u32>(arg_1, arg_1, arg_1, arg_1), vec4<u32>(arg_1, arg_1, 40044u, 16842u))), Struct_1(all(vec3<bool>(false, false, false)), select(~vec4<u32>(arg_1, arg_1, arg_1, 0u), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_1, arg_1, 4294967295u, 0u), vec4<u32>(arg_1, 1u, arg_1, 36282u)), vec4<bool>(true, true, true, true)), ~_wgslsmith_sub_vec3_i32(vec3<i32>(56504i, -12114i, u_input.a), vec3<i32>(u_input.a, u_input.a, u_input.a)), ~(vec4<u32>(1u, 31214u, arg_1, arg_1) >> (vec4<u32>(4294967295u, arg_1, arg_1, arg_1) % vec4<u32>(32u)))), arg_0.x, Struct_1(_wgslsmith_f_op_f32(arg_0.x * -1314f) < arg_0.x, vec4<u32>(firstLeadingBit(arg_1), _wgslsmith_sub_u32(32342u, arg_1), 50014u, 60431u), vec3<i32>(u_input.a, u_input.a, -u_input.a), vec4<u32>(arg_1, 950u, 1u, arg_1) >> (~vec4<u32>(arg_1, 44181u, arg_1, arg_1) % vec4<u32>(32u))), ~1u));
    var var_1 = arg_0;
    var var_2 = global2[_wgslsmith_index_u32(arg_1, 32u)];
    var var_3 = func_4(func_4(firstTrailingBit(func_4(-16971i, Struct_2(Struct_1(false, vec4<u32>(4294967295u, arg_1, 56194u, var_0.d.x), vec3<i32>(-13096i, 2147483647i, 1i), vec4<u32>(4294967295u, 19715u, var_0.b.x, 8007u)), Struct_1(var_0.a, var_0.b, vec3<i32>(var_0.c.x, 6835i, 0i), vec4<u32>(21688u, var_0.b.x, 4294967295u, 91613u)), var_2.x, Struct_1(var_0.a, vec4<u32>(arg_1, var_0.b.x, arg_1, 55585u), vec3<i32>(0i, 1i, -2147483647i), vec4<u32>(70159u, 18674u, var_0.b.x, arg_1)), var_0.d.x), -7379i, Struct_2(Struct_1(false, var_0.b, var_0.c, var_0.b), Struct_1(false, var_0.d, vec3<i32>(u_input.a, 22021i, u_input.a), vec4<u32>(var_0.b.x, arg_1, arg_1, var_0.d.x)), 899f, Struct_1(false, vec4<u32>(arg_1, 31803u, 101503u, 17046u), vec3<i32>(u_input.a, u_input.a, 1i), vec4<u32>(33747u, var_0.b.x, var_0.b.x, 26097u)), var_0.d.x)).c.x) | var_0.c.x, Struct_2(Struct_1(true, countOneBits(vec4<u32>(var_0.b.x, 0u, arg_1, arg_1)), vec3<i32>(u_input.a, var_0.c.x, var_0.c.x), ~vec4<u32>(var_0.b.x, 26232u, 4294967295u, arg_1)), func_4(-24127i, Struct_2(Struct_1(false, vec4<u32>(0u, var_0.b.x, 49162u, 43105u), vec3<i32>(0i, 4234i, 586i), vec4<u32>(89615u, 8424u, 0u, 5313u)), Struct_1(true, vec4<u32>(18862u, 4294967295u, var_0.b.x, var_0.b.x), vec3<i32>(-34384i, var_0.c.x, var_0.c.x), vec4<u32>(43164u, arg_1, var_0.d.x, var_0.d.x)), var_2.x, Struct_1(false, vec4<u32>(arg_1, arg_1, arg_1, var_0.b.x), vec3<i32>(var_0.c.x, 0i, 42090i), var_0.d), 4294967295u), -41424i, Struct_2(Struct_1(true, var_0.d, vec3<i32>(0i, -26130i, var_0.c.x), var_0.d), Struct_1(var_0.a, vec4<u32>(arg_1, 3746u, arg_1, arg_1), var_0.c, vec4<u32>(var_0.d.x, arg_1, 0u, 4294967295u)), -1642f, Struct_1(var_0.a, vec4<u32>(var_0.b.x, arg_1, var_0.b.x, 1u), var_0.c, vec4<u32>(0u, 1u, arg_1, 31998u)), var_0.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.x)) + _wgslsmith_f_op_f32(-599f + var_1.x)), func_4(var_0.c.x, Struct_2(Struct_1(false, var_0.b, var_0.c, vec4<u32>(arg_1, 18563u, arg_1, 33727u)), Struct_1(var_0.a, var_0.d, vec3<i32>(1i, var_0.c.x, var_0.c.x), vec4<u32>(1u, var_0.d.x, 0u, 4294967295u)), -979f, Struct_1(false, vec4<u32>(arg_1, var_0.d.x, 4294967295u, arg_1), var_0.c, vec4<u32>(arg_1, arg_1, var_0.b.x, arg_1)), arg_1), u_input.a | u_input.a, Struct_2(Struct_1(true, vec4<u32>(arg_1, 0u, 39029u, 37568u), vec3<i32>(1i, 21758i, var_0.c.x), var_0.d), Struct_1(true, var_0.d, var_0.c, var_0.b), arg_0.x, Struct_1(false, vec4<u32>(23957u, arg_1, arg_1, arg_1), var_0.c, var_0.b), var_0.d.x)), var_0.b.x & _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 67331u, 0u, 0u), vec4<u32>(1u, 1u, var_0.b.x, 71340u))), _wgslsmith_mult_i32(~(-1i), -17034i), Struct_2(func_4(u_input.a, Struct_2(Struct_1(false, vec4<u32>(5460u, var_0.d.x, arg_1, arg_1), vec3<i32>(var_0.c.x, -27508i, u_input.a), vec4<u32>(var_0.b.x, arg_1, var_0.b.x, var_0.d.x)), Struct_1(var_0.a, var_0.b, var_0.c, var_0.d), 1463f, Struct_1(var_0.a, vec4<u32>(arg_1, var_0.d.x, arg_1, arg_1), var_0.c, var_0.d), 4294967295u), reverseBits(var_0.c.x), Struct_2(Struct_1(true, vec4<u32>(var_0.b.x, arg_1, 29282u, 0u), var_0.c, vec4<u32>(arg_1, var_0.d.x, arg_1, arg_1)), Struct_1(false, vec4<u32>(arg_1, 0u, 13749u, var_0.b.x), vec3<i32>(17612i, 34895i, 54075i), var_0.b), var_1.x, Struct_1(var_0.a, var_0.d, vec3<i32>(11829i, u_input.a, -24901i), vec4<u32>(0u, arg_1, 0u, var_0.d.x)), arg_1)), Struct_1(16u < arg_1, ~vec4<u32>(arg_1, var_0.d.x, arg_1, 18672u), var_0.c, abs(vec4<u32>(4294967295u, 0u, arg_1, 1u))), _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(sign(1000f))), Struct_1(var_0.c.x != var_0.c.x, vec4<u32>(21869u, 51929u, 6621u, var_0.b.x), ~vec3<i32>(0i, u_input.a, -21958i), vec4<u32>(var_0.b.x, var_0.d.x, 0u, var_0.d.x)), abs(~0u))).c.x, Struct_2(Struct_1(!all(vec2<bool>(var_0.a, var_0.a)), ~_wgslsmith_mod_vec4_u32(var_0.d, vec4<u32>(0u, 2496u, 0u, 19883u)), var_0.c, var_0.d), Struct_1(var_0.a, var_0.b, _wgslsmith_div_vec3_i32(min(vec3<i32>(2147483647i, -2897i, 1i), vec3<i32>(-72229i, -16578i, 32205i)), _wgslsmith_sub_vec3_i32(var_0.c, var_0.c)), vec4<u32>(~arg_1, 4294967295u, countOneBits(arg_1), 0u)), 909f, func_4(abs(abs(var_0.c.x)), Struct_2(Struct_1(var_0.a, vec4<u32>(var_0.b.x, 1u, var_0.d.x, arg_1), vec3<i32>(2147483647i, -1i, u_input.a), vec4<u32>(1u, 38419u, 4294967295u, var_0.d.x)), func_4(-9257i, Struct_2(Struct_1(true, var_0.b, vec3<i32>(1i, var_0.c.x, 37368i), var_0.d), Struct_1(var_0.a, vec4<u32>(arg_1, var_0.b.x, var_0.b.x, 13567u), var_0.c, var_0.b), var_2.x, Struct_1(var_0.a, var_0.b, var_0.c, vec4<u32>(arg_1, 1u, var_0.d.x, 59011u)), arg_1), -7767i, Struct_2(Struct_1(var_0.a, vec4<u32>(62348u, var_0.b.x, 71408u, 1u), var_0.c, var_0.d), Struct_1(var_0.a, var_0.d, var_0.c, var_0.b), var_2.x, Struct_1(false, vec4<u32>(var_0.d.x, var_0.d.x, var_0.b.x, 6240u), var_0.c, var_0.b), 1u)), _wgslsmith_div_f32(arg_0.x, arg_0.x), Struct_1(false, var_0.b, var_0.c, vec4<u32>(arg_1, var_0.d.x, arg_1, arg_1)), arg_1), u_input.a >> (~4294967295u % 32u), Struct_2(Struct_1(var_0.a, var_0.d, vec3<i32>(u_input.a, var_0.c.x, 17943i), var_0.b), func_4(var_0.c.x, Struct_2(Struct_1(var_0.a, vec4<u32>(arg_1, 1u, arg_1, var_0.d.x), var_0.c, var_0.d), Struct_1(false, vec4<u32>(arg_1, 91058u, arg_1, 63836u), vec3<i32>(var_0.c.x, u_input.a, u_input.a), vec4<u32>(var_0.b.x, arg_1, arg_1, 44466u)), var_1.x, Struct_1(var_0.a, vec4<u32>(var_0.d.x, 4294967295u, 1574u, 38171u), var_0.c, vec4<u32>(20321u, arg_1, 82594u, 1u)), arg_1), -50831i, Struct_2(Struct_1(false, var_0.b, var_0.c, var_0.b), Struct_1(var_0.a, var_0.d, vec3<i32>(-106208i, var_0.c.x, 48803i), vec4<u32>(66946u, 0u, arg_1, arg_1)), var_1.x, Struct_1(var_0.a, vec4<u32>(arg_1, 116503u, 116586u, 1u), var_0.c, var_0.d), 4294967295u)), _wgslsmith_f_op_f32(-arg_0.x), Struct_1(var_0.a, vec4<u32>(0u, var_0.b.x, var_0.b.x, 0u), var_0.c, vec4<u32>(var_0.d.x, 57395u, arg_1, var_0.d.x)), 49445u)), ~30864u), -1i & _wgslsmith_add_i32(-abs(-27485i), ~var_0.c.x), Struct_2(func_4(var_0.c.x ^ func_2(Struct_2(Struct_1(true, var_0.d, var_0.c, vec4<u32>(0u, 19671u, arg_1, arg_1)), Struct_1(false, vec4<u32>(arg_1, 0u, arg_1, 48891u), vec3<i32>(-1i, 1i, var_0.c.x), vec4<u32>(0u, arg_1, arg_1, 4294967295u)), var_1.x, Struct_1(false, vec4<u32>(1u, 0u, 4294967295u, 0u), var_0.c, var_0.b), var_0.b.x)).x, Struct_2(Struct_1(var_0.a, var_0.d, vec3<i32>(var_0.c.x, 18354i, u_input.a), var_0.d), func_4(-1i, Struct_2(Struct_1(var_0.a, var_0.d, var_0.c, var_0.b), Struct_1(var_0.a, vec4<u32>(var_0.d.x, var_0.d.x, 6134u, arg_1), vec3<i32>(u_input.a, u_input.a, 2147483647i), vec4<u32>(9460u, 1u, arg_1, 0u)), var_2.x, Struct_1(var_0.a, vec4<u32>(var_0.b.x, arg_1, 19690u, 4294967295u), vec3<i32>(var_0.c.x, u_input.a, var_0.c.x), var_0.d), 33387u), 0i, Struct_2(Struct_1(var_0.a, vec4<u32>(1u, arg_1, arg_1, arg_1), var_0.c, var_0.d), Struct_1(var_0.a, vec4<u32>(var_0.d.x, arg_1, arg_1, 14139u), var_0.c, var_0.b), var_1.x, Struct_1(var_0.a, var_0.b, vec3<i32>(u_input.a, 52312i, var_0.c.x), vec4<u32>(0u, 121532u, arg_1, arg_1)), 27001u)), _wgslsmith_f_op_f32(floor(var_1.x)), func_4(-67651i, Struct_2(Struct_1(var_0.a, var_0.b, vec3<i32>(1i, u_input.a, u_input.a), var_0.d), Struct_1(var_0.a, var_0.d, var_0.c, vec4<u32>(arg_1, 6041u, 36404u, 69061u)), var_1.x, Struct_1(var_0.a, vec4<u32>(1u, 4294967295u, 0u, 103258u), var_0.c, vec4<u32>(var_0.d.x, 0u, 12406u, 4294967295u)), 0u), var_0.c.x, Struct_2(Struct_1(false, var_0.b, var_0.c, var_0.b), Struct_1(var_0.a, var_0.b, var_0.c, var_0.d), var_1.x, Struct_1(false, vec4<u32>(6495u, var_0.d.x, 42970u, var_0.d.x), var_0.c, var_0.d), var_0.b.x)), arg_1 & var_0.b.x), abs(~u_input.a), Struct_2(func_4(0i, Struct_2(Struct_1(true, var_0.d, vec3<i32>(-2147483647i, -1i, -25495i), var_0.d), Struct_1(var_0.a, vec4<u32>(arg_1, arg_1, var_0.d.x, 63629u), vec3<i32>(-2147483647i, var_0.c.x, 1241i), var_0.b), -500f, Struct_1(true, var_0.b, var_0.c, vec4<u32>(0u, 44345u, 0u, 0u)), 4294967295u), 0i, Struct_2(Struct_1(var_0.a, var_0.b, vec3<i32>(u_input.a, 2147483647i, -51825i), var_0.d), Struct_1(false, var_0.d, var_0.c, vec4<u32>(arg_1, arg_1, 0u, 1u)), -199f, Struct_1(false, var_0.d, var_0.c, var_0.b), 15941u)), func_4(var_0.c.x, Struct_2(Struct_1(true, var_0.d, vec3<i32>(-51806i, -1i, u_input.a), var_0.d), Struct_1(true, var_0.b, vec3<i32>(var_0.c.x, 20472i, var_0.c.x), var_0.d), -253f, Struct_1(var_0.a, var_0.d, vec3<i32>(0i, var_0.c.x, u_input.a), vec4<u32>(var_0.d.x, 57563u, 26990u, 15177u)), 15330u), -2147483647i, Struct_2(Struct_1(false, var_0.d, var_0.c, var_0.b), Struct_1(false, vec4<u32>(11491u, var_0.d.x, 138858u, var_0.d.x), vec3<i32>(-1i, 16190i, var_0.c.x), vec4<u32>(61595u, arg_1, 0u, 10961u)), -259f, Struct_1(false, vec4<u32>(arg_1, var_0.d.x, 0u, var_0.b.x), vec3<i32>(-1i, -1i, -2109i), var_0.d), 25611u)), _wgslsmith_f_op_f32(arg_0.x - 2476f), func_4(-2147483647i, Struct_2(Struct_1(var_0.a, var_0.b, vec3<i32>(u_input.a, u_input.a, var_0.c.x), var_0.d), Struct_1(true, vec4<u32>(0u, 18220u, var_0.b.x, 23220u), vec3<i32>(u_input.a, 8782i, 40175i), var_0.b), -508f, Struct_1(false, vec4<u32>(var_0.b.x, var_0.b.x, arg_1, 0u), vec3<i32>(2147483647i, u_input.a, u_input.a), var_0.b), 1u), var_0.c.x, Struct_2(Struct_1(false, vec4<u32>(18698u, 14592u, 27568u, 1u), var_0.c, var_0.b), Struct_1(true, vec4<u32>(0u, var_0.b.x, 4294967295u, var_0.b.x), vec3<i32>(var_0.c.x, 1i, var_0.c.x), var_0.b), -1000f, Struct_1(false, vec4<u32>(0u, 32992u, var_0.b.x, 21371u), var_0.c, vec4<u32>(52365u, 25757u, 4294967295u, 0u)), 50626u)), ~arg_1)), func_4(-35363i, Struct_2(Struct_1(true, var_0.b, vec3<i32>(-20744i, var_0.c.x, 1i), var_0.d), Struct_1(true, var_0.b, var_0.c, vec4<u32>(1u, arg_1, var_0.b.x, var_0.b.x)), 1596f, Struct_1(var_0.a, var_0.d, vec3<i32>(var_0.c.x, -32566i, var_0.c.x), vec4<u32>(0u, 13305u, var_0.d.x, arg_1)), ~arg_1), -u_input.a, Struct_2(Struct_1(var_0.a, vec4<u32>(var_0.d.x, var_0.d.x, 1u, var_0.b.x), var_0.c, var_0.d), Struct_1(true, var_0.d, var_0.c, vec4<u32>(var_0.d.x, var_0.b.x, 21407u, 33147u)), _wgslsmith_f_op_f32(f32(-1f) * -267f), func_4(2147483647i, Struct_2(Struct_1(var_0.a, var_0.b, var_0.c, var_0.d), Struct_1(false, var_0.d, var_0.c, vec4<u32>(3797u, var_0.b.x, arg_1, arg_1)), 408f, Struct_1(true, vec4<u32>(arg_1, 24163u, var_0.d.x, 56491u), vec3<i32>(var_0.c.x, -37249i, 1i), vec4<u32>(arg_1, 42278u, var_0.b.x, arg_1)), 4294967295u), u_input.a, Struct_2(Struct_1(var_0.a, vec4<u32>(arg_1, arg_1, arg_1, 3029u), vec3<i32>(-11576i, u_input.a, -1i), var_0.b), Struct_1(false, vec4<u32>(1u, 0u, 4294967295u, var_0.b.x), vec3<i32>(u_input.a, u_input.a, u_input.a), var_0.b), arg_0.x, Struct_1(false, var_0.b, var_0.c, var_0.d), arg_1)), var_0.b.x >> (90155u % 32u))), _wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2249f))), func_4(-13923i, Struct_2(func_4(-1i, Struct_2(Struct_1(false, var_0.b, var_0.c, vec4<u32>(78009u, 1u, 0u, 4294967295u)), Struct_1(var_0.a, vec4<u32>(arg_1, arg_1, arg_1, var_0.b.x), var_0.c, var_0.b), arg_0.x, Struct_1(var_0.a, vec4<u32>(9491u, var_0.d.x, 15586u, 0u), vec3<i32>(-9797i, -53101i, var_0.c.x), vec4<u32>(arg_1, var_0.b.x, 0u, var_0.b.x)), var_0.d.x), u_input.a, Struct_2(Struct_1(var_0.a, var_0.d, vec3<i32>(-2147483647i, 42905i, var_0.c.x), vec4<u32>(var_0.b.x, 26088u, 32505u, 4294967295u)), Struct_1(false, var_0.b, vec3<i32>(var_0.c.x, 10539i, var_0.c.x), var_0.d), -249f, Struct_1(true, vec4<u32>(arg_1, var_0.b.x, 1u, arg_1), vec3<i32>(0i, -1i, -14400i), var_0.b), var_0.d.x)), Struct_1(var_0.a, vec4<u32>(var_0.b.x, 6678u, 78511u, 78914u), vec3<i32>(u_input.a, u_input.a, -743i), var_0.b), var_1.x, Struct_1(true, var_0.d, vec3<i32>(24477i, u_input.a, u_input.a), vec4<u32>(var_0.d.x, 1u, 61859u, 4294967295u)), var_0.b.x), ~u_input.a ^ var_0.c.x, Struct_2(func_4(u_input.a, Struct_2(Struct_1(var_0.a, var_0.b, var_0.c, var_0.b), Struct_1(false, var_0.b, var_0.c, vec4<u32>(0u, var_0.b.x, 49378u, arg_1)), var_1.x, Struct_1(false, var_0.b, vec3<i32>(var_0.c.x, var_0.c.x, -2663i), var_0.b), arg_1), 0i, Struct_2(Struct_1(var_0.a, var_0.b, vec3<i32>(u_input.a, var_0.c.x, 0i), vec4<u32>(var_0.d.x, arg_1, 0u, var_0.d.x)), Struct_1(true, var_0.b, var_0.c, var_0.b), var_2.x, Struct_1(false, vec4<u32>(22879u, var_0.b.x, 4294967295u, 2685u), vec3<i32>(-3046i, 6411i, -64344i), vec4<u32>(var_0.d.x, 1u, var_0.d.x, arg_1)), 0u)), Struct_1(var_0.a, vec4<u32>(4294967295u, arg_1, var_0.b.x, 28560u), var_0.c, var_0.d), _wgslsmith_div_f32(-119f, arg_0.x), Struct_1(false, var_0.b, var_0.c, var_0.d), 4294967295u)), 24773u));
    let var_4 = _wgslsmith_mod_u32(0u, firstLeadingBit(firstTrailingBit(var_3.d.x)));
    return ~vec4<u32>(_wgslsmith_mod_u32(~reverseBits(96827u), countOneBits(~var_4)), 4294967295u, abs(~func_4(33933i, Struct_2(Struct_1(true, vec4<u32>(4294967295u, var_4, arg_1, arg_1), var_3.c, var_0.b), Struct_1(true, var_0.d, vec3<i32>(var_0.c.x, -27255i, -6110i), vec4<u32>(var_3.b.x, var_0.b.x, 0u, 15047u)), arg_0.x, Struct_1(var_3.a, var_3.d, var_0.c, vec4<u32>(arg_1, 61831u, 4294967295u, 800u)), 87513u), var_0.c.x, Struct_2(Struct_1(false, var_3.b, var_3.c, vec4<u32>(var_3.b.x, 1u, 4294967295u, 1u)), Struct_1(var_0.a, vec4<u32>(27615u, var_0.b.x, var_4, arg_1), vec3<i32>(-9848i, var_3.c.x, u_input.a), var_3.b), 1024f, Struct_1(true, var_3.d, var_0.c, var_3.b), 1u)).b.x), 1u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(_wgslsmith_div_u32(4294967295u, abs(23580u)));
    let var_1 = Struct_1((abs(1i ^ u_input.a) >= -2147483647i) && false, _wgslsmith_clamp_vec4_u32(~func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-382f, -1325f, 451f)), 1u), select(_wgslsmith_mult_vec4_u32(func_4(-31247i, Struct_2(Struct_1(true, vec4<u32>(4294967295u, 20617u, 5559u, 28824u), vec3<i32>(u_input.a, 32165i, u_input.a), vec4<u32>(0u, 2676u, 4294967295u, 26308u)), Struct_1(true, vec4<u32>(86827u, 14347u, 4294967295u, 4294967295u), vec3<i32>(39607i, -1i, u_input.a), vec4<u32>(4294967295u, 115045u, 46762u, 6232u)), 456f, Struct_1(true, vec4<u32>(1976u, 4294967295u, 1u, 0u), vec3<i32>(-1i, 1i, 1i), vec4<u32>(4294967295u, 1u, 4989u, 87871u)), 75434u), 48450i, Struct_2(Struct_1(true, vec4<u32>(56950u, 1u, 0u, 1u), vec3<i32>(2147483647i, -47335i, u_input.a), vec4<u32>(1u, 0u, 1u, 0u)), Struct_1(false, vec4<u32>(1u, 0u, 0u, 4294967295u), vec3<i32>(u_input.a, -5942i, 0i), vec4<u32>(4294967295u, 34802u, 48728u, 0u)), 1093f, Struct_1(true, vec4<u32>(1u, 8301u, 71075u, 10704u), vec3<i32>(-16488i, 2147483647i, u_input.a), vec4<u32>(29826u, 4294967295u, 19138u, 4294967295u)), 9923u)).b, select(vec4<u32>(1u, 4294967295u, 1u, 4991u), vec4<u32>(23421u, 52195u, 4423u, 0u), true)), ~(~vec4<u32>(20157u, 23812u, 1u, 3182u)), !any(vec3<bool>(true, true, false))), vec4<u32>(1u, 2716u, 43281u, 1u) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))), ~_wgslsmith_add_vec3_i32(vec3<i32>(-40372i, 2147483647i, abs(u_input.a)), ~_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, -2147483647i, u_input.a), vec3<i32>(u_input.a, -55809i, u_input.a))), ~(~min(vec4<u32>(20709u, 0u, 0u, 46140u), ~vec4<u32>(7950u, 4294967295u, 34628u, 1675u))));
    var_0 = var_1.d.x;
    let var_2 = vec2<i32>(u_input.a, -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -u_input.a, 2231i, u_input.a << (1u % 32u)), -firstLeadingBit(vec4<i32>(u_input.a, 920i, 1i, var_1.c.x))));
    global1 = array<vec3<u32>, 12>();
    global0 = var_1.b.x;
    var_0 = _wgslsmith_div_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(countOneBits(19836u | var_1.d.x), func_4(-1i, Struct_2(var_1, Struct_1(var_1.a, vec4<u32>(43490u, var_1.d.x, var_1.d.x, 1u), vec3<i32>(var_1.c.x, u_input.a, 0i), vec4<u32>(19847u, var_1.b.x, 4294967295u, var_1.b.x)), -758f, Struct_1(var_1.a, vec4<u32>(var_1.d.x, var_1.d.x, var_1.d.x, 4294967295u), vec3<i32>(var_2.x, -2147483647i, u_input.a), var_1.d), 0u), u_input.a << (var_1.d.x % 32u), Struct_2(Struct_1(true, var_1.b, var_1.c, vec4<u32>(4294967295u, var_1.d.x, 1u, var_1.b.x)), Struct_1(var_1.a, var_1.d, var_1.c, vec4<u32>(55443u, 1u, 39625u, var_1.d.x)), 424f, var_1, var_1.d.x)).b.x), 5157u), var_1.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(0i, 1i, _wgslsmith_div_i32(var_2.x, -7178i), -u_input.a));
}

