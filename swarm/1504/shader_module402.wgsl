struct Struct_1 {
    a: i32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<u32>,
    c: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec2<bool>, 11> = array<vec2<bool>, 11>(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> vec4<u32> {
    global1 = array<vec2<bool>, 11>();
    global1 = array<vec2<bool>, 11>();
    var var_0 = min(global0.b.x, firstTrailingBit(10231u));
    return _wgslsmith_mult_vec4_u32(global0.b, vec4<u32>(~(~_wgslsmith_add_u32(global0.b.x, 1u)), global0.b.x, firstTrailingBit(1u), min(1u, 0u)));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(abs(_wgslsmith_mod_i32(15847i, -487i)) ^ u_input.b, _wgslsmith_add_vec4_u32(func_3() ^ firstTrailingBit(global0.b << (global0.b % vec4<u32>(32u))), ~_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 15784u, 0u, 37185u), global0.b)));
    var var_1 = true;
    let var_2 = 4294967295u;
    let var_3 = vec2<u32>(global0.b.x | _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 64862u, var_0.b.x), vec3<u32>(var_2, var_0.b.x, 4294967295u)), var_0.b.zxw), func_3().x), _wgslsmith_add_u32(_wgslsmith_mod_u32(~global0.b.x, _wgslsmith_mult_u32(~var_0.b.x, reverseBits(u_input.e))), firstTrailingBit(_wgslsmith_clamp_u32(global0.b.x, var_2, u_input.e) << (_wgslsmith_sub_u32(4294967295u, 26095u) % 32u))));
    global0 = Struct_1(-69271i, ~var_0.b);
    return Struct_1(_wgslsmith_clamp_i32(-31864i, -abs(u_input.b), firstTrailingBit(_wgslsmith_div_i32(1i, -6178i))), ~select(vec4<u32>(38866u >> (1u % 32u), func_3().x, ~var_2, ~44619u), global0.b, _wgslsmith_f_op_f32(-235f * 194f) == _wgslsmith_f_op_f32(ceil(1556f))));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: vec3<i32>, arg_3: Struct_1) -> Struct_2 {
    var var_0 = ~_wgslsmith_div_vec2_u32(vec2<u32>(~(~arg_3.b.x), _wgslsmith_div_u32(~global0.b.x, ~arg_0.b.x)), _wgslsmith_mult_vec2_u32(vec2<u32>(abs(35294u), arg_1), vec2<u32>(arg_1, _wgslsmith_mult_u32(1u, global0.b.x))));
    let var_1 = vec4<u32>(_wgslsmith_div_u32(_wgslsmith_add_u32(47619u, _wgslsmith_mod_u32(5387u >> (arg_3.b.x % 32u), 1u)), ~(func_2().b.x & ~var_0.x)), arg_0.b.x, 96441u, ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(77454u, arg_3.b.x), vec2<u32>(1u, global0.b.x)) | (u_input.c & 1u)));
    var var_2 = select(~(~0u | global0.b.x), ~27313u, false) & 1u;
    var var_3 = _wgslsmith_clamp_vec4_i32(~vec4<i32>(_wgslsmith_sub_i32(1i >> (var_0.x % 32u), _wgslsmith_mod_i32(-2147483647i, 39811i)), ~arg_3.a, global0.a, _wgslsmith_mult_i32(28595i, arg_3.a)), vec4<i32>(~(firstTrailingBit(-15159i) | arg_2.x), 60562i, -13153i, _wgslsmith_dot_vec2_i32(firstLeadingBit(u_input.a) << (vec2<u32>(1u, arg_0.b.x) % vec2<u32>(32u)), vec2<i32>(arg_0.a ^ -1i, _wgslsmith_clamp_i32(-1i, -1i, arg_2.x)))), -vec4<i32>(-u_input.a.x, ~arg_3.a >> (_wgslsmith_add_u32(global0.b.x, var_0.x) % 32u), arg_2.x, _wgslsmith_sub_i32(global0.a, global0.a) & ~22224i));
    var_3 = min(vec4<i32>(arg_3.a, abs(-global0.a << (global0.b.x % 32u)), -8579i, arg_3.a), (countOneBits(min(vec4<i32>(arg_2.x, -1186i, global0.a, global0.a), vec4<i32>(16854i, 27165i, -2147483647i, arg_3.a))) | vec4<i32>(_wgslsmith_mult_i32(u_input.a.x, 2147483647i), -u_input.b, var_3.x << (arg_0.b.x % 32u), var_3.x)) ^ _wgslsmith_sub_vec4_i32(firstTrailingBit(~vec4<i32>(var_3.x, -1i, 2147483647i, global0.a)), vec4<i32>(_wgslsmith_mod_i32(arg_0.a, arg_0.a), _wgslsmith_clamp_i32(global0.a, -2147483647i, arg_0.a), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.x, -2147483647i, 1i, -2147483647i), vec4<i32>(global0.a, arg_3.a, -41432i, -50920i)), abs(43486i))));
    return Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1346f))), _wgslsmith_f_op_f32(min(-328f, _wgslsmith_f_op_f32(trunc(884f)))))) + 221f), arg_3.b.yx, true);
}

fn func_5(arg_0: Struct_2) -> Struct_1 {
    let var_0 = Struct_2(-462f, arg_0.b, true);
    let var_1 = func_4(Struct_1(_wgslsmith_div_i32(79508i, -2147483647i), global0.b), arg_0.b.x, vec3<i32>(-1i, _wgslsmith_div_i32(_wgslsmith_mult_i32(-2147483647i, 0i), u_input.d | global0.a) | abs(~u_input.a.x), _wgslsmith_dot_vec2_i32(~u_input.a | vec2<i32>(36461i, u_input.a.x), _wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(u_input.a, u_input.a), -vec2<i32>(u_input.a.x, global0.a)))), Struct_1(global0.a, ~(~_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 4294967295u, arg_0.b.x), global0.b))));
    let var_2 = func_4(Struct_1(2147483647i, abs(abs(global0.b))), firstLeadingBit(u_input.c), (~(-vec3<i32>(global0.a, u_input.a.x, global0.a)) | (vec3<i32>(-1i) * -vec3<i32>(2147483647i, 0i, -60581i))) >> (select(vec3<u32>(~var_0.b.x, 45952u, u_input.e), vec3<u32>(42580u & u_input.e, max(var_1.b.x, 1u), arg_0.b.x), select(vec3<bool>(arg_0.c, false, var_0.c), vec3<bool>(true, arg_0.c, false), select(vec3<bool>(arg_0.c, true, var_1.c), vec3<bool>(var_0.c, false, arg_0.c), vec3<bool>(var_1.c, var_1.c, true)))) % vec3<u32>(32u)), Struct_1(~(~(i32(-1i) * -1i)), global0.b));
    global1 = array<vec2<bool>, 11>();
    global1 = array<vec2<bool>, 11>();
    return Struct_1(~(global0.a << (max(_wgslsmith_dot_vec4_u32(global0.b, global0.b), reverseBits(global0.b.x)) % 32u)), ~vec4<u32>(var_2.b.x, firstLeadingBit(func_4(Struct_1(2147483647i, vec4<u32>(var_2.b.x, 4294967295u, 1u, global0.b.x)), var_0.b.x, vec3<i32>(global0.a, -1i, 0i), Struct_1(global0.a, global0.b)).b.x), ~4294967295u | var_1.b.x, 1u));
}

fn func_1(arg_0: vec3<i32>) -> u32 {
    let var_0 = vec4<u32>(firstTrailingBit(4294967295u), ~_wgslsmith_dot_vec3_u32(global0.b.zyw, vec3<u32>(0u, 3809u, firstTrailingBit(global0.b.x))), ~(~reverseBits(u_input.c << (global0.b.x % 32u))), 9902u);
    global0 = func_5(func_4(Struct_1(global0.a, firstTrailingBit(firstLeadingBit(var_0))), var_0.x, max(_wgslsmith_mod_vec3_i32(~vec3<i32>(76228i, 49242i, u_input.a.x), arg_0), arg_0), func_2()));
    global1 = array<vec2<bool>, 11>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-322f, 652f) - _wgslsmith_f_op_f32(2222f + 667f)) + _wgslsmith_div_f32(-980f, _wgslsmith_f_op_f32(trunc(-489f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(327f * -1607f)))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1054f * _wgslsmith_div_f32(796f, -1181f))))));
    let var_2 = ~(~vec3<u32>(var_0.x, global0.b.x, ~1u));
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(u_input.a.x, global0.b);
    global0 = Struct_1(u_input.b, vec4<u32>(~96109u, ~_wgslsmith_mult_u32(global0.b.x, func_1(vec3<i32>(-1i, 2147483647i, u_input.a.x))), select(1u, ~31088u, global0.b.x < 29245u) ^ _wgslsmith_add_u32(u_input.c, func_4(Struct_1(-6241i, global0.b), 1u, vec3<i32>(12576i, -30923i, -1i), Struct_1(0i, global0.b)).b.x), _wgslsmith_mult_u32(func_3().x, _wgslsmith_dot_vec3_u32(~global0.b.xxy, ~vec3<u32>(u_input.e, global0.b.x, u_input.e)))));
    var var_0 = abs(firstTrailingBit(-u_input.a.x));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(376f * 919f)) + 1588f))), global0.b.wy, select(func_4(Struct_1(global0.a, ~vec4<u32>(4294967295u, u_input.e, global0.b.x, u_input.c)), ~firstLeadingBit(u_input.e), vec3<i32>(~2453i, -2147483647i, u_input.d ^ global0.a), Struct_1(global0.a, vec4<u32>(u_input.c, 0u, 4294967295u, global0.b.x))).c, true, any(!global1[_wgslsmith_index_u32(7037u, 11u)]) | true));
    let var_2 = !select(!vec2<bool>(var_1.c, any(vec4<bool>(false, false, true, var_1.c))), vec2<bool>(true, var_1.c), vec2<bool>(select(true, var_1.c, var_1.c) == false, false));
    let var_3 = Struct_2(223f, ~vec2<u32>(~_wgslsmith_mod_u32(11363u, u_input.c), _wgslsmith_mult_u32(reverseBits(u_input.e), 48755u)), u_input.c >= _wgslsmith_sub_u32(1u, ~func_2().b.x));
    var var_4 = select(vec3<bool>(any(vec4<bool>(any(var_2), true, any(vec3<bool>(var_2.x, var_1.c, true)), any(var_2))), false, !(!(var_1.c && true))), select(!vec3<bool>(false, !var_3.c, false), select(vec3<bool>(!var_2.x, any(vec3<bool>(true, var_1.c, var_3.c)), var_3.c), select(!vec3<bool>(var_3.c, var_1.c, true), !vec3<bool>(var_3.c, false, var_3.c), !var_1.c), select(vec3<bool>(var_3.c, true, true), !vec3<bool>(false, false, var_1.c), var_3.c)), !select(vec3<bool>(var_2.x, var_2.x, true), select(vec3<bool>(false, true, var_3.c), vec3<bool>(var_3.c, false, var_3.c), false), !vec3<bool>(var_2.x, var_1.c, var_2.x))), select(vec3<bool>(var_2.x, var_3.a > 903f, select(var_1.b.x <= var_1.b.x, true, true)), !vec3<bool>(true, all(vec3<bool>(true, true, var_1.c)), var_2.x), select(vec3<bool>(true, true, true), select(vec3<bool>(var_1.c, true, var_1.c), vec3<bool>(var_2.x, var_2.x, false), vec3<bool>(false, var_2.x, var_1.c)), !(!vec3<bool>(true, true, var_2.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1327f, var_1.a)) * 851f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_3.a))))), func_4(func_2(), 4294967295u, -vec3<i32>(global0.a, global0.a, global0.a), func_5(var_3)).a), ~(reverseBits(~vec2<i32>(2147483647i, global0.a)) ^ ~countOneBits(vec2<i32>(global0.a, -9713i))), vec3<i32>(firstTrailingBit(abs(_wgslsmith_mult_i32(global0.a, global0.a))), global0.a, -(min(global0.a, u_input.b) << (abs(4294967295u) % 32u))));
}

