struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: vec4<i32>,
    d: vec4<i32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: bool,
    b: vec3<i32>,
    c: u32,
    d: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: vec4<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(vec2<i32>(35498i, -1i), true, vec4<i32>(1i, -36202i, 2147483647i, -36357i), vec4<i32>(2147483647i, 1655i, -1i, 8419i), -1000f), Struct_1(vec2<i32>(0i, -6645i), false, vec4<i32>(2147483647i, -2033i, 0i, 1i), vec4<i32>(-1i, -1i, i32(-2147483648), 0i), -812f), Struct_1(vec2<i32>(-39497i, -4142i), true, vec4<i32>(0i, 4970i, -85293i, 18859i), vec4<i32>(24532i, 10905i, 1i, -1i), 629f), Struct_1(vec2<i32>(26318i, 1i), true, vec4<i32>(28441i, 33216i, 36244i, 12950i), vec4<i32>(0i, -22117i, 21680i, -11432i), 752f));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_mod_vec2_i32(vec2<i32>(max(2053i, 2147483647i), 0i & _wgslsmith_mult_i32(~u_input.a, countOneBits(u_input.a))), max(-_wgslsmith_mult_vec2_i32(reverseBits(vec2<i32>(-12992i, u_input.a)), -vec2<i32>(u_input.a, u_input.a)), ~(~vec2<i32>(-1i, u_input.a) | -vec2<i32>(0i, -11656i))));
    let var_1 = 197f;
    global0 = array<Struct_1, 4>();
    var var_2 = var_0.x;
    global0 = array<Struct_1, 4>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1372f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1606f))))) * -725f);
}

fn func_2(arg_0: vec2<i32>) -> Struct_1 {
    let var_0 = Struct_4(~1i, _wgslsmith_mod_i32((~(-63868i) | _wgslsmith_dot_vec2_i32(arg_0, vec2<i32>(arg_0.x, -41930i))) & -2201i, u_input.a), Struct_1(arg_0, !all(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true)), vec4<i32>(u_input.a, countOneBits(u_input.a & u_input.a), select(0i, -2147483647i ^ u_input.a, arg_0.x <= -1i), u_input.a), select(vec4<i32>(2147483647i, firstLeadingBit(-1i), -18886i, u_input.a), max(vec4<i32>(arg_0.x, -1i, 46100i, arg_0.x), -vec4<i32>(-29603i, u_input.a, 2147483647i, 0i)), any(vec2<bool>(true, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -608f) - _wgslsmith_f_op_f32(max(-1343f, -236f))))));
    let var_1 = Struct_2(global0[_wgslsmith_index_u32(min(u_input.c, _wgslsmith_mod_u32(~_wgslsmith_add_u32(33824u, 1u), u_input.b ^ u_input.b)), 4u)], 6489u ^ u_input.c);
    var var_2 = _wgslsmith_div_vec3_i32(vec3<i32>(45042i, var_0.a, 47640i), var_1.a.d.xzz);
    var var_3 = !(!select(vec3<bool>(var_1.a.b, false, var_0.c.b), vec3<bool>(all(vec3<bool>(var_0.c.b, var_1.a.b, var_1.a.b)), 605f == var_1.a.e, !var_1.a.b), !(!vec3<bool>(var_0.c.b, false, true))));
    let var_4 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.e, -972f, var_1.a.e, 159f) + vec4<f32>(-1845f, var_0.c.e, var_0.c.e, -201f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1112f, var_0.c.e, _wgslsmith_f_op_f32(-var_0.c.e), _wgslsmith_f_op_f32(func_3()))))));
    return Struct_1(arg_0, var_0.c.b, vec4<i32>(_wgslsmith_mult_i32(1i, _wgslsmith_mult_i32(-1i, u_input.a)), -34957i, -arg_0.x, _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(-17684i, 0i, -44831i, 0i)), vec4<i32>(-2147483647i, 2147483647i, -1i, u_input.a)) & 10539i), _wgslsmith_div_vec4_i32(~(-(vec4<i32>(-29004i, var_0.a, var_2.x, u_input.a) & vec4<i32>(0i, 0i, arg_0.x, 0i))), ~(vec4<i32>(-1i) * -var_0.c.d)), -1940f);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: Struct_4) -> vec4<i32> {
    global0 = array<Struct_1, 4>();
    global0 = array<Struct_1, 4>();
    global0 = array<Struct_1, 4>();
    global0 = array<Struct_1, 4>();
    let var_0 = arg_0;
    return vec4<i32>(~_wgslsmith_sub_i32(-32858i, select(arg_1.a.a.x, 25357i, var_0.a.b) & -15544i), _wgslsmith_div_i32((i32(-1i) * -1i) ^ reverseBits(_wgslsmith_mult_i32(-38162i, arg_1.a.d.x)), -(_wgslsmith_sub_i32(-1i, -2147483647i) ^ var_0.a.d.x)), var_0.a.a.x, u_input.a);
}

fn func_1(arg_0: u32) -> Struct_2 {
    let var_0 = -(vec3<i32>(-1i) * -vec3<i32>(abs(u_input.a), i32(-1i) * -28284i, ~(-45774i)));
    var var_1 = ~vec2<u32>(max(42375u & ~u_input.c, firstLeadingBit(abs(5185u))), arg_0);
    var var_2 = countOneBits(-select(-vec4<i32>(u_input.a, 1i, u_input.a, 2147483647i), vec4<i32>(var_0.x, -1i, 24113i, -2147483647i), true)) ^ (vec4<i32>(i32(-1i) * -44033i, select(-17444i, -30594i, select(true, true, false)), u_input.a, u_input.a) << (~vec4<u32>(arg_0, _wgslsmith_mod_u32(var_1.x, 102908u), var_1.x & 4294967295u, ~53828u) % vec4<u32>(32u)));
    var_2 = -_wgslsmith_clamp_vec4_i32(func_4(Struct_2(func_2(vec2<i32>(var_2.x, -46803i)), _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.x, arg_0), vec2<u32>(4294967295u, var_1.x))), Struct_2(func_2(var_0.yy), 1875u), vec4<u32>(~var_1.x, ~u_input.c, select(66689u, 4294967295u, true), ~u_input.c), Struct_4(-2334i, ~var_2.x, global0[_wgslsmith_index_u32(var_1.x ^ var_1.x, 4u)])), select(~vec4<i32>(-5172i, u_input.a, u_input.a, 36841i), vec4<i32>(-1i) * -vec4<i32>(7270i, u_input.a, 2147483647i, u_input.a), vec4<bool>(any(vec2<bool>(false, false)), true, true, false)), vec4<i32>(-3662i, _wgslsmith_dot_vec3_i32(var_0, firstTrailingBit(vec3<i32>(0i, -15188i, var_0.x))), _wgslsmith_div_i32(max(-81752i, -26844i), _wgslsmith_div_i32(var_2.x, var_2.x)), -13857i));
    var_1 = vec2<u32>(firstLeadingBit(~countOneBits(countOneBits(1u))), 4294967295u);
    return Struct_2(func_2(var_0.xz), abs(0u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~0u;
    var var_1 = func_1(_wgslsmith_div_u32(firstTrailingBit(var_0 | u_input.c), _wgslsmith_div_u32(1625u, abs(var_0))) ^ _wgslsmith_dot_vec4_u32(max(select(vec4<u32>(4294967295u, 4294967295u, 525u, 4294967295u), vec4<u32>(47574u, 3805u, 5581u, var_0), vec4<bool>(false, false, true, true)), vec4<u32>(u_input.b, 14499u, 28047u, 1u)), ~(~vec4<u32>(var_0, 61209u, 0u, 1u))));
    global0 = array<Struct_1, 4>();
    var var_2 = _wgslsmith_div_vec2_u32(countOneBits(firstTrailingBit(vec2<u32>(u_input.b, var_1.b) << (vec2<u32>(var_0, u_input.c) % vec2<u32>(32u)))) << (vec2<u32>(1u, 1u) % vec2<u32>(32u)), firstLeadingBit(vec2<u32>(var_0 >> (var_0 % 32u), 0u >> (var_1.b % 32u))) >> ((vec2<u32>(1u, ~var_0) | firstLeadingBit(vec2<u32>(u_input.b, 4294967295u))) % vec2<u32>(32u)));
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-407f, var_1.a.e, false))))), var_1.a.e, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.e)), var_1.a.e)));
    let var_4 = _wgslsmith_sub_u32(1u, 4294967295u | var_0);
    var var_5 = var_1.a.e;
    let x = u_input.a;
    s_output = StorageBuffer(~var_1.a.a.x, var_0, _wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(firstTrailingBit(select(vec4<u32>(var_4, 1u, var_4, 84866u), vec4<u32>(var_1.b, var_0, 63736u, 69281u), vec4<bool>(var_1.a.b, true, var_1.a.b, true))), vec4<u32>(u_input.c, ~4294967295u, var_1.b, 1u)), ~min(vec4<u32>(var_2.x, 0u, 30726u, 4294967295u), vec4<u32>(var_4, u_input.b, 4294967295u, var_0)) | vec4<u32>(var_4, ~var_1.b, ~49393u, u_input.c)), vec4<f32>(_wgslsmith_f_op_f32(var_3.x * _wgslsmith_f_op_f32(1399f - var_3.x)), -479f, 1252f, var_1.a.e), vec3<u32>(var_2.x, var_2.x, _wgslsmith_dot_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(var_1.b, 0u, 39860u, 1u), vec4<u32>(var_1.b, var_0, 0u, 4294967295u)), ~(~vec4<u32>(var_1.b, 0u, var_0, var_4)))));
}

