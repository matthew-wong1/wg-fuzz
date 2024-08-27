struct Struct_1 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: i32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: Struct_1,
    d: vec2<bool>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 6> = array<bool, 6>(true, false, false, true, true, false);

var<private> global1: array<vec3<bool>, 2>;

var<private> global2: array<bool, 24> = array<bool, 24>(true, false, true, false, false, true, true, true, false, false, false, false, false, true, false, false, false, false, false, true, false, true, true, false);

var<private> global3: f32;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> u32 {
    global3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-634f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1f)))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-266f * -542f)))), -257f)));
    var var_0 = _wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.d << (_wgslsmith_mod_u32(u_input.d, u_input.b) % 32u), _wgslsmith_clamp_u32(3605u, reverseBits(51376u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, u_input.b), vec2<u32>(47696u, 88846u))), _wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.b, u_input.d), _wgslsmith_clamp_u32(0u, u_input.b, 1u)), _wgslsmith_mod_u32(~u_input.b, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.d), vec2<u32>(66982u, u_input.b)))), _wgslsmith_mod_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(26042u, u_input.b, u_input.d, 41187u), vec4<u32>(0u, u_input.b, 36851u, u_input.b)), min(_wgslsmith_mod_vec4_u32(vec4<u32>(17867u, u_input.b, 4294967295u, u_input.b), vec4<u32>(u_input.d, 97873u, u_input.b, 22053u)), abs(vec4<u32>(u_input.d, 42580u, 14873u, u_input.d))))), ~_wgslsmith_mult_vec4_u32(vec4<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(u_input.b, 4294967295u)), _wgslsmith_mod_u32(0u, 105385u), _wgslsmith_div_u32(u_input.b, 4294967295u)), reverseBits(vec4<u32>(17613u, u_input.d, u_input.d, 112373u))));
    global1 = array<vec3<bool>, 2>();
    global1 = array<vec3<bool>, 2>();
    let var_1 = Struct_2(vec3<bool>(!(true != global2[_wgslsmith_index_u32(~var_0.x, 24u)]), all(!select(vec2<bool>(global2[_wgslsmith_index_u32(0u, 24u)], global0[_wgslsmith_index_u32(1u, 6u)]), vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 6u)], global0[_wgslsmith_index_u32(var_0.x, 6u)]), vec2<bool>(false, true))), !(reverseBits(u_input.c.x) < _wgslsmith_sub_i32(1i, 2147483647i))), _wgslsmith_mult_vec3_u32(var_0.zyx, _wgslsmith_add_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.x, 16504u, var_0.x), vec3<u32>(var_0.x, var_0.x, 4294967295u)), ~select(var_0.ywx, vec3<u32>(var_0.x, var_0.x, u_input.b), vec3<bool>(global2[_wgslsmith_index_u32(var_0.x, 24u)], false, false)))), Struct_1(vec3<i32>(_wgslsmith_mult_i32(countOneBits(28183i), ~u_input.a.x), u_input.c.x, -2147483647i), u_input.c, -((u_input.a.x << (var_0.x % 32u)) | u_input.c.x), global1[_wgslsmith_index_u32(86039u, 2u)]), !select(select(!vec2<bool>(global2[_wgslsmith_index_u32(u_input.d, 24u)], global0[_wgslsmith_index_u32(var_0.x, 6u)]), select(vec2<bool>(true, global2[_wgslsmith_index_u32(u_input.d, 24u)]), vec2<bool>(false, false), vec2<bool>(false, global2[_wgslsmith_index_u32(var_0.x, 24u)])), true), !select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 6u)], true), vec2<bool>(global0[_wgslsmith_index_u32(0u, 6u)], true), true), select(vec2<bool>(true, true), vec2<bool>(global0[_wgslsmith_index_u32(var_0.x, 6u)], global2[_wgslsmith_index_u32(var_0.x, 24u)]), all(global1[_wgslsmith_index_u32(u_input.b, 2u)]))), abs(min(firstLeadingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(-5658i, u_input.a.x, 15556i, 0i), vec4<i32>(-31680i, 2147483647i, 18715i, 1977i))), -vec4<i32>(u_input.a.x, -20099i, u_input.a.x, u_input.a.x))));
    return reverseBits(_wgslsmith_dot_vec3_u32(var_0.zzx | var_1.b, var_0.wwz));
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    var var_0 = vec2<u32>(u_input.b, ~(~15521u));
    global1 = array<vec3<bool>, 2>();
    var var_1 = abs(~max(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.d, 4294967295u, var_0.x, var_0.x), ~vec4<u32>(var_0.x, 1u, 58325u, 4294967295u)), (vec4<u32>(var_0.x, u_input.d, 4294967295u, u_input.b) >> (vec4<u32>(1u, var_0.x, 0u, 60261u) % vec4<u32>(32u))) | _wgslsmith_div_vec4_u32(vec4<u32>(var_0.x, var_0.x, var_0.x, u_input.b), vec4<u32>(39380u, u_input.d, u_input.b, u_input.b))));
    let var_2 = arg_2;
    let var_3 = Struct_2(arg_2.d, vec3<u32>(1u & ~_wgslsmith_sub_u32(var_1.x, 1u), var_0.x, func_3()), Struct_1(firstTrailingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(var_2.b.x, u_input.a.x, 618i), _wgslsmith_sub_vec3_i32(u_input.a, arg_2.a))), vec2<i32>(_wgslsmith_mod_i32(~u_input.c.x, 1593i), _wgslsmith_clamp_i32(i32(-1i) * -31992i, ~(-2147483647i), _wgslsmith_div_i32(arg_2.b.x, -2147483647i))), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(firstLeadingBit(0i), var_2.c), ~var_2.b.x, 51777i), select(select(arg_2.d, select(var_2.d, vec3<bool>(false, global2[_wgslsmith_index_u32(23742u, 24u)], global0[_wgslsmith_index_u32(var_1.x, 6u)]), vec3<bool>(global0[_wgslsmith_index_u32(16321u, 6u)], false, arg_2.d.x)), select(arg_1.d, vec3<bool>(true, arg_1.d.x, true), var_2.d.x)), select(!vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 24u)], false, false), vec3<bool>(false, arg_1.d.x, false), select(arg_1.d.x, arg_2.d.x, arg_1.d.x)), select(!arg_2.d, global1[_wgslsmith_index_u32(~0u, 2u)], true))), vec2<bool>(arg_2.a.x >= arg_1.b.x, !((-2147483647i & arg_1.a.x) <= 0i)), _wgslsmith_div_vec4_i32(-(vec4<i32>(var_2.c, 0i, var_2.b.x, u_input.a.x) >> (min(vec4<u32>(u_input.b, 120428u, 1u, 49767u), vec4<u32>(0u, 32885u, 85439u, var_0.x)) % vec4<u32>(32u))), ~(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_1.b.x, arg_2.c, u_input.c.x, var_2.b.x), vec4<i32>(arg_2.a.x, arg_1.b.x, u_input.c.x, 2147483647i)) ^ ~vec4<i32>(u_input.c.x, u_input.c.x, -85i, var_2.a.x))));
    return any(!select(select(vec2<bool>(false, global0[_wgslsmith_index_u32(var_1.x, 6u)]), vec2<bool>(arg_2.d.x, var_3.a.x), arg_1.d.zx), select(vec2<bool>(false, true), vec2<bool>(true, var_3.c.d.x), var_3.c.d.x), var_3.a.x)) & false;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec3<i32>, arg_3: vec4<f32>) -> Struct_2 {
    var var_0 = false;
    global0 = array<bool, 6>();
    var var_1 = firstLeadingBit(arg_1.e.x);
    return Struct_2(vec3<bool>(arg_0.d.x, !any(select(arg_0.d, arg_1.a, vec3<bool>(arg_0.d.x, arg_1.d.x, false))), any(vec4<bool>(true, false, func_2(arg_3, Struct_1(arg_2, vec2<i32>(arg_2.x, -30900i), arg_1.c.c, arg_0.d), Struct_1(arg_2, vec2<i32>(arg_2.x, u_input.a.x), 0i, global1[_wgslsmith_index_u32(1u, 2u)])), global0[_wgslsmith_index_u32(max(0u, 0u), 6u)]))), arg_1.b, Struct_1((-vec3<i32>(42293i, u_input.c.x, 2147483647i) | ~arg_1.c.a) & ~(-vec3<i32>(u_input.a.x, -18484i, arg_2.x)), _wgslsmith_add_vec2_i32(vec2<i32>(~(-2147483647i), -2147483647i), firstLeadingBit(select(vec2<i32>(2147483647i, u_input.a.x), vec2<i32>(arg_1.c.a.x, -2147483647i), arg_0.d.yz))), arg_2.x, select(arg_0.d, arg_0.d, arg_0.d)), !arg_0.d.yz, countOneBits(vec4<i32>(u_input.c.x, ~0i ^ arg_1.c.a.x, _wgslsmith_dot_vec2_i32(u_input.a.xz, vec2<i32>(45577i, 0i)), 0i)));
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: Struct_2) -> vec2<u32> {
    let var_0 = ~(-arg_1) ^ select(_wgslsmith_dot_vec3_i32(arg_2.c.a, ~arg_2.e.wzy) & u_input.a.x, abs(0i), true);
    let var_1 = Struct_2(vec3<bool>(!arg_2.d.x, any(vec2<bool>(false, !arg_2.d.x)), any(global1[_wgslsmith_index_u32(~4294967295u, 2u)]) | true), arg_2.b, func_1(Struct_1(vec3<i32>(func_1(Struct_1(u_input.a, arg_2.c.b, arg_2.c.b.x, vec3<bool>(global2[_wgslsmith_index_u32(arg_2.b.x, 24u)], false, true)), Struct_2(vec3<bool>(global0[_wgslsmith_index_u32(70859u, 6u)], global0[_wgslsmith_index_u32(arg_0, 6u)], arg_2.c.d.x), arg_2.b, arg_2.c, vec2<bool>(arg_2.d.x, global0[_wgslsmith_index_u32(32716u, 6u)]), vec4<i32>(1i, 2147483647i, arg_1, -19716i)), vec3<i32>(arg_1, arg_1, arg_2.e.x), vec4<f32>(-1989f, 1084f, 142f, -211f)).c.c, func_1(arg_2.c, Struct_2(global1[_wgslsmith_index_u32(arg_0, 2u)], arg_2.b, Struct_1(u_input.a, vec2<i32>(10742i, arg_2.e.x), 2147483647i, arg_2.a), vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 6u)], true), arg_2.e), vec3<i32>(-8481i, 38059i, u_input.a.x), vec4<f32>(157f, -387f, 1245f, -653f)).e.x, arg_1 | 0i), firstTrailingBit(-arg_2.e.xx), 34903i, vec3<bool>(true, !global2[_wgslsmith_index_u32(0u, 24u)], select(true, arg_2.c.d.x, true))), arg_2, ~vec3<i32>(~1i, ~arg_1, _wgslsmith_dot_vec3_i32(u_input.a, arg_2.c.a)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-430f, 111f, 1314f, -833f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1525f, -846f, -1133f, 1759f) * vec4<f32>(902f, 527f, 225f, 1000f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1265f, 515f, 1772f, -1415f) + vec4<f32>(-2581f, -1211f, 199f, 934f))), false))).c, func_1(func_1(Struct_1(vec3<i32>(u_input.c.x, arg_2.e.x, -1i), arg_2.e.zx, _wgslsmith_add_i32(-1666i, -86543i), arg_2.a), func_1(arg_2.c, Struct_2(global1[_wgslsmith_index_u32(arg_0, 2u)], arg_2.b, arg_2.c, arg_2.d, vec4<i32>(arg_2.c.a.x, var_0, var_0, 1i)), _wgslsmith_sub_vec3_i32(arg_2.e.zzy, u_input.a), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, -467f, 1042f, 1551f), vec4<f32>(1668f, -1024f, 464f, 434f), global0[_wgslsmith_index_u32(u_input.d, 6u)]))), firstLeadingBit(vec3<i32>(u_input.a.x, -1i, 39594i)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1649f, 860f, 1879f, 2262f), vec4<f32>(124f, -1075f, 1097f, 1207f))) * vec4<f32>(-1238f, 261f, -1000f, -343f))).c, func_1(arg_2.c, func_1(Struct_1(u_input.a, vec2<i32>(55771i, 2147483647i), var_0, global1[_wgslsmith_index_u32(84637u, 2u)]), func_1(arg_2.c, Struct_2(vec3<bool>(false, global0[_wgslsmith_index_u32(1u, 6u)], global2[_wgslsmith_index_u32(0u, 24u)]), vec3<u32>(arg_2.b.x, 1u, 93785u), Struct_1(vec3<i32>(14955i, 11390i, var_0), u_input.c, arg_2.c.a.x, arg_2.a), arg_2.d, arg_2.e), vec3<i32>(-1i, 0i, -55731i), vec4<f32>(1000f, -1147f, 369f, 119f)), _wgslsmith_mod_vec3_i32(vec3<i32>(49130i, 1i, -27059i), u_input.a), _wgslsmith_f_op_vec4_f32(vec4<f32>(639f, -242f, 217f, -1320f) + vec4<f32>(-625f, 153f, 183f, -415f))), u_input.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1532f, 514f, 1036f, -1675f) * vec4<f32>(-394f, -999f, -585f, -1143f)) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1205f, 418f, -354f, -774f), vec4<f32>(-1790f, 313f, 1000f, 774f))))), _wgslsmith_add_vec3_i32(vec3<i32>(-12353i, -22973i, arg_1), reverseBits(~vec3<i32>(22584i, arg_2.c.c, var_0))), vec4<f32>(1000f, _wgslsmith_f_op_f32(f32(-1f) * -1590f), -693f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1396f * -461f), _wgslsmith_f_op_f32(trunc(1304f)))))).a.yx, arg_2.e);
    global0 = array<bool, 6>();
    var var_2 = arg_2;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -917f));
    return var_2.b.yy & var_2.b.yy;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.d, ~(~_wgslsmith_sub_u32(~4294967295u, _wgslsmith_div_u32(u_input.b, u_input.d)))), 6u)];
    global2 = array<bool, 24>();
    var var_1 = Struct_1(u_input.a, ~(-u_input.a.yz), _wgslsmith_mult_i32(u_input.a.x, _wgslsmith_div_i32(u_input.a.x, 2147483647i)), vec3<bool>(true, true, global2[_wgslsmith_index_u32(4294967295u, 24u)]));
    let var_2 = Struct_2(var_1.d, _wgslsmith_sub_vec3_u32(~vec3<u32>(select(u_input.b, 2943u, true), u_input.b, _wgslsmith_add_u32(1u, 61764u)), vec3<u32>(1u, 1u, _wgslsmith_add_u32(u_input.b, _wgslsmith_mod_u32(u_input.d, u_input.d)))), Struct_1(u_input.a, -var_1.a.zz >> (func_4(u_input.d & 24535u, max(u_input.c.x, 24963i), func_1(Struct_1(vec3<i32>(5188i, -66509i, u_input.a.x), vec2<i32>(29472i, -19561i), var_1.c, vec3<bool>(global2[_wgslsmith_index_u32(u_input.d, 24u)], true, var_1.d.x)), Struct_2(vec3<bool>(true, true, false), vec3<u32>(70559u, 36509u, 1u), Struct_1(var_1.a, vec2<i32>(u_input.a.x, 5419i), u_input.c.x, global1[_wgslsmith_index_u32(1398u, 2u)]), vec2<bool>(var_1.d.x, true), vec4<i32>(var_1.b.x, var_1.a.x, 0i, u_input.a.x)), u_input.a, vec4<f32>(-1331f, -404f, -314f, -1132f))) % vec2<u32>(32u)), -42055i, !global1[_wgslsmith_index_u32(~(~u_input.b), 2u)]), var_1.d.yx, countOneBits(-vec4<i32>(reverseBits(1i), var_1.a.x, -1i, var_1.b.x ^ 2147483647i)));
    var var_3 = Struct_2(vec3<bool>(min(reverseBits(var_2.c.c), ~var_2.e.x) <= ~reverseBits(-1i), global0[_wgslsmith_index_u32(10053u, 6u)], true), ~_wgslsmith_div_vec3_u32(func_1(func_1(Struct_1(vec3<i32>(var_1.a.x, var_1.b.x, var_2.c.c), vec2<i32>(-1i, var_1.b.x), 0i, vec3<bool>(false, false, var_2.a.x)), var_2, u_input.a, vec4<f32>(-719f, -406f, 129f, -412f)).c, var_2, -var_1.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1374f, -625f, 907f, -192f))).b, vec3<u32>(~u_input.b, _wgslsmith_add_u32(17453u, u_input.d), 1u)), func_1(Struct_1(u_input.a, min(vec2<i32>(-2147483647i, var_1.c), u_input.c), firstTrailingBit(firstTrailingBit(var_1.c)), global1[_wgslsmith_index_u32(~(var_2.b.x << (89591u % 32u)), 2u)]), func_1(var_2.c, Struct_2(func_1(Struct_1(vec3<i32>(var_1.c, var_1.c, var_2.e.x), var_1.b, 2147483647i, vec3<bool>(false, global0[_wgslsmith_index_u32(95943u, 6u)], false)), var_2, u_input.a, vec4<f32>(-270f, 791f, -781f, -790f)).a, vec3<u32>(1u, var_2.b.x, u_input.d) & vec3<u32>(u_input.b, 17043u, 22440u), var_2.c, vec2<bool>(var_2.c.d.x, var_2.a.x), var_2.e), abs(vec3<i32>(-1466i, 0i, var_1.b.x)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(531f, 1080f, 634f, -968f), vec4<f32>(-492f, 168f, -998f, -784f), vec4<bool>(false, false, true, var_2.d.x)))), -(~vec3<i32>(u_input.a.x, 0i, 2147483647i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 740f, -863f, 1561f) + vec4<f32>(-1000f, 612f, 812f, -736f)))).c, select(!(!(!vec2<bool>(var_2.c.d.x, false))), vec2<bool>(any(var_2.c.d), true), true), var_2.e);
    var var_4 = -1i;
    var_4 = 0i;
    global2 = array<bool, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(~func_3(), select(u_input.d | 52022u, var_2.b.x, true)), var_1.b);
}

