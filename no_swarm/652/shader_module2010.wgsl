struct Struct_1 {
    a: i32,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 6> = array<bool, 6>(false, true, true, true, false, false);

var<private> global1: Struct_1;

var<private> global2: array<vec4<bool>, 27> = array<vec4<bool>, 27>(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false));

var<private> global3: i32;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1) -> bool {
    var var_0 = arg_0;
    var var_1 = Struct_1(1i, !select(select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.b, 6u)], arg_0.b.x, true), select(global1.b, global1.b, global0[_wgslsmith_index_u32(17491u, 6u)]), select(var_0.b, vec3<bool>(true, var_0.b.x, false), arg_0.b)), var_0.b, select(vec3<bool>(true, arg_0.b.x, global0[_wgslsmith_index_u32(4294967295u, 6u)]), !var_0.b, vec3<bool>(true, arg_0.b.x, global1.b.x))));
    var var_2 = Struct_1(select(2147483647i, ~var_0.a, false), select(!vec3<bool>(var_1.b.x, false, true), select(var_1.b, !(!vec3<bool>(false, var_0.b.x, true)), true & (u_input.b < 102357u)), select(select(arg_0.b.x, true, arg_0.b.x), select(global1.b.x, false, var_0.b.x), true) && all(select(vec2<bool>(global0[_wgslsmith_index_u32(0u, 6u)], arg_0.b.x), vec2<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 6u)]), vec2<bool>(true, true)))));
    global0 = array<bool, 6>();
    let var_3 = -957f;
    return !all(var_1.b.yz);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: bool) -> vec2<u32> {
    let var_0 = arg_0;
    var var_1 = Struct_1(abs(arg_2.x << (~1u % 32u)), !(!vec3<bool>(func_3(arg_0), false, true)));
    global3 = -1i;
    let var_2 = Struct_1(-select(arg_0.a, -_wgslsmith_dot_vec2_i32(arg_2.yz, vec2<i32>(arg_1.a, 4544i)), true & global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 31227u), vec2<u32>(u_input.b, 32114u)), 6u)]), select(vec3<bool>(any(!global2[_wgslsmith_index_u32(u_input.b, 27u)]), all(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.b, 1u, u_input.b), 27u)]), false), arg_1.b, var_1.b.x));
    let var_3 = var_2.a;
    return (~abs(_wgslsmith_add_vec2_u32(vec2<u32>(0u, u_input.b), vec2<u32>(1u, 7813u))) & ~abs(~vec2<u32>(0u, u_input.b))) << (vec2<u32>(~u_input.b, abs(1u)) % vec2<u32>(32u));
}

fn func_4(arg_0: vec3<f32>, arg_1: u32, arg_2: u32, arg_3: u32) -> Struct_1 {
    var var_0 = Struct_1(u_input.c, !vec3<bool>(global1.b.x, all(select(global1.b.xz, vec2<bool>(false, true), vec2<bool>(false, global1.b.x))), false));
    let var_1 = vec4<i32>(8555i, 1i, -1i, -2147483647i) & ~vec4<i32>(select(_wgslsmith_mult_i32(0i, u_input.c), max(u_input.c, u_input.c), true), global1.a, _wgslsmith_sub_i32(min(u_input.a, global1.a), _wgslsmith_div_i32(var_0.a, -48364i)), global1.a);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(arg_0.x)))));
    var var_3 = _wgslsmith_mult_vec3_i32(var_1.zzw, reverseBits(abs(_wgslsmith_mod_vec3_i32(max(vec3<i32>(var_1.x, -44519i, 0i), var_1.xwz), vec3<i32>(11273i, u_input.a, -33570i)))));
    let var_4 = func_3(Struct_1(var_3.x, vec3<bool>(var_0.b.x, abs(var_1.x) != _wgslsmith_add_i32(var_3.x, -43178i), all(select(global1.b.yz, vec2<bool>(false, global1.b.x), global1.b.x)))));
    return Struct_1(abs(-2147483647i | (_wgslsmith_dot_vec2_i32(var_3.yx, vec2<i32>(1i, -1i)) >> ((u_input.b | arg_1) % 32u))), vec3<bool>(true, true, any(select(vec2<bool>(true, false), vec2<bool>(true, true), !global0[_wgslsmith_index_u32(2393u, 6u)]))));
}

fn func_1() -> vec2<u32> {
    var var_0 = func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, -2504f, -1616f), vec3<f32>(-637f, 914f, 1158f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-265f, -158f, 1364f)))))), ~_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b, u_input.b), func_2(Struct_1(u_input.c, global1.b), Struct_1(u_input.c, vec3<bool>(true, true, false)), reverseBits(vec4<i32>(global1.a, -1166i, -12467i, -2147483647i)), !global1.b.x)), u_input.b, 4294967295u);
    let var_1 = vec4<i32>(10021i, -2147483647i << (~(~0u) % 32u), ~(-2147483647i), select(_wgslsmith_add_i32(var_0.a, -1i), _wgslsmith_div_i32(~(i32(-1i) * -814i), _wgslsmith_clamp_i32(-2184i, 1i, abs(u_input.c))), any(!(!global2[_wgslsmith_index_u32(u_input.b, 27u)]))));
    let var_2 = firstLeadingBit(var_0.a);
    var var_3 = 2147483647i >> (1u % 32u);
    let var_4 = _wgslsmith_mod_u32(4294967295u, _wgslsmith_div_u32(select(u_input.b, ~u_input.b, all(vec3<bool>(var_0.b.x, true, global0[_wgslsmith_index_u32(u_input.b, 6u)]))), u_input.b)) < min(u_input.b, ~reverseBits(u_input.b));
    return reverseBits(select(_wgslsmith_div_vec2_u32(func_2(Struct_1(global1.a, vec3<bool>(global0[_wgslsmith_index_u32(61470u, 6u)], global1.b.x, global1.b.x)), Struct_1(-21822i, vec3<bool>(var_4, true, false)), _wgslsmith_mod_vec4_i32(vec4<i32>(-1i, var_0.a, u_input.a, var_2), vec4<i32>(global1.a, -2147483647i, var_1.x, 12015i)), var_4), (vec2<u32>(1u, 3045u) & vec2<u32>(u_input.b, u_input.b)) & (vec2<u32>(u_input.b, u_input.b) >> (vec2<u32>(u_input.b, 4294967295u) % vec2<u32>(32u)))), vec2<u32>(~_wgslsmith_add_u32(69959u, u_input.b), 24887u), true & any(func_4(vec3<f32>(438f, -1001f, -839f), u_input.b, u_input.b, 0u).b)));
}

fn func_5(arg_0: vec2<u32>) -> f32 {
    var var_0 = Struct_1(-30345i, global1.b);
    var var_1 = Struct_1(-_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, -2147483647i, -2782i), vec3<i32>(1i, 21627i, 1i)), var_0.b);
    var var_2 = Struct_1(func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1832f, 252f, 477f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1327f, 630f, 899f))), _wgslsmith_dot_vec2_u32(~(~arg_0), vec2<u32>(countOneBits(u_input.b), arg_0.x ^ 0u)), 4294967295u, arg_0.x).a, vec3<bool>(!all(!var_1.b), true, var_0.b.x));
    let var_3 = func_4(vec3<f32>(737f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(414f - -276f) * _wgslsmith_f_op_f32(sign(-132f))), 2722f, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-498f, -528f)))), 0u, select(u_input.b, 1u, 14425i < max(-19228i, var_0.a)) << (1u % 32u), func_1().x);
    global1 = func_4(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-787f)))), -1969f, -363f), countOneBits(0u), max(arg_0.x, ~_wgslsmith_add_u32(0u, u_input.b)) ^ 31089u, ~max(~abs(79780u), arg_0.x));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(571f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1947f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1655f) * _wgslsmith_f_op_f32(sign(1f))));
    let var_1 = _wgslsmith_f_op_f32(func_5(max(func_1(), ~(vec2<u32>(4294967295u, u_input.b) ^ vec2<u32>(u_input.b, 19165u)) | vec2<u32>(~4294967295u, u_input.b))));
    let var_2 = vec2<i32>(firstTrailingBit(~firstTrailingBit(7241i)), global1.a);
    let var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, var_1, var_1), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, var_1, var_1)))), vec3<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + var_0.x)), _wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(var_1 + var_0.x))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1169f, _wgslsmith_f_op_f32(f32(-1f) * -944f), _wgslsmith_f_op_f32(297f - _wgslsmith_f_op_f32(-var_1)))));
    var var_4 = Struct_1(_wgslsmith_dot_vec2_i32(countOneBits(-vec2<i32>(32404i, u_input.a) ^ vec2<i32>(var_2.x, var_2.x)), abs(_wgslsmith_add_vec2_i32(var_2, vec2<i32>(0i, -12576i)))), global1.b);
    global3 = _wgslsmith_clamp_i32(var_2.x, -1i, 555i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, var_2.x, var_4.a), vec3<i32>(-1i) * -min(vec3<i32>(global1.a, -1i, u_input.a), vec3<i32>(-1i, 0i, var_2.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-756f + var_3.x)), var_1, _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(select(-492f, var_3.x, false)))), _wgslsmith_f_op_f32(f32(-1f) * -1181f))));
}

