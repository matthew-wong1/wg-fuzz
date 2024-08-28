struct Struct_1 {
    a: vec2<i32>,
    b: vec3<bool>,
    c: i32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec4<i32>,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 0i;

var<private> global1: array<Struct_3, 9>;

var<private> global2: array<vec4<f32>, 20>;

var<private> global3: Struct_2 = Struct_2(false, Struct_1(vec2<i32>(-18696i, i32(-2147483648)), vec3<bool>(false, true, false), -1i, vec3<bool>(true, true, true)), vec4<i32>(-1i, -1i, 1i, 25512i), Struct_1(vec2<i32>(-42788i, i32(-2147483648)), vec3<bool>(false, true, false), -20170i, vec3<bool>(false, true, true)), 4294967295u);

var<private> global4: array<vec4<bool>, 9> = array<vec4<bool>, 9>(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
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

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
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

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec4<f32>, arg_2: f32, arg_3: vec4<i32>) -> i32 {
    var var_0 = arg_1.x;
    let var_1 = global3.d;
    global2 = array<vec4<f32>, 20>();
    global1 = array<Struct_3, 9>();
    var var_2 = vec2<bool>(global3.a, !all(global3.d.d));
    return arg_3.x;
}

fn func_2(arg_0: bool) -> Struct_1 {
    let var_0 = Struct_3(Struct_2((any(vec2<bool>(false, arg_0)) || all(vec2<bool>(true, true))) || (!arg_0 | !global3.a), global3.d, _wgslsmith_mult_vec4_i32(vec4<i32>(func_3(vec2<u32>(u_input.c, u_input.b), global2[_wgslsmith_index_u32(23452u, 20u)], 594f, global3.c), 1i, _wgslsmith_mult_i32(0i, u_input.d.x), global3.b.c | -2147483647i), _wgslsmith_add_vec4_i32(vec4<i32>(13501i, u_input.a, 0i, u_input.d.x), _wgslsmith_sub_vec4_i32(global3.c, global3.c))), global3.b, _wgslsmith_dot_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(1u, u_input.c, global3.e, 4294967295u), vec4<u32>(46614u, u_input.c, global3.e, 1u)), ~(~vec4<u32>(22063u, u_input.c, 4294967295u, 28832u)))), Struct_2(any(select(select(vec3<bool>(arg_0, false, true), vec3<bool>(arg_0, false, global3.a), vec3<bool>(true, arg_0, true)), vec3<bool>(false, true, true), all(vec3<bool>(true, arg_0, true)))), Struct_1(u_input.d.yx, select(!global3.d.b, select(vec3<bool>(true, arg_0, true), vec3<bool>(global3.d.d.x, false, global3.b.b.x), true), any(vec2<bool>(true, global3.a))), global3.d.a.x, global3.b.d), _wgslsmith_mod_vec4_i32(vec4<i32>(global3.d.c ^ global3.c.x, firstTrailingBit(-20787i), u_input.d.x, 2147483647i & global3.d.a.x), _wgslsmith_mult_vec4_i32(global3.c, vec4<i32>(-1i, u_input.a, u_input.d.x, u_input.a))), Struct_1(vec2<i32>(max(-1i, 0i), abs(global3.c.x)), global3.d.b, ~(-1i) | u_input.a, vec3<bool>(false, true, global3.b.d.x)), firstLeadingBit((10109u | u_input.c) << (global3.e % 32u))));
    let var_1 = Struct_1(-select(vec2<i32>(var_0.a.b.c, 30993i) << (_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, var_0.a.e), vec2<u32>(global3.e, global3.e)) % vec2<u32>(32u)), vec2<i32>(u_input.a, -global3.b.a.x), global3.b.d.xy), select(select(!vec3<bool>(false, arg_0, true), select(var_0.a.d.d, global3.b.b, vec3<bool>(true, true, false)), all(global3.b.d.zy)), global3.b.b, select(var_0.a.d.b, vec3<bool>(true, true, true), !(!global3.b.d))), -1i, var_0.b.d.d);
    var var_2 = _wgslsmith_clamp_vec3_u32(abs(min(~vec3<u32>(global3.e, 61758u, u_input.b), _wgslsmith_clamp_vec3_u32(vec3<u32>(global3.e, var_0.b.e, 4294967295u), vec3<u32>(32340u, var_0.b.e, global3.e), vec3<u32>(u_input.c, var_0.a.e, var_0.b.e))) ^ ~(~vec3<u32>(36222u, var_0.b.e, 4294967295u))), _wgslsmith_mult_vec3_u32(~(vec3<u32>(var_0.b.e, global3.e, 1u) ^ vec3<u32>(0u, 0u, u_input.b)), ~vec3<u32>(1u, 4294967295u, global3.e)), vec3<u32>(min(select(_wgslsmith_sub_u32(44591u, global3.e), var_0.a.e >> (global3.e % 32u), arg_0 | false), 1u), 30202u, 4294967295u));
    var var_3 = _wgslsmith_add_vec4_i32(firstLeadingBit(-(~var_0.b.c)), firstLeadingBit(global3.c));
    global4 = array<vec4<bool>, 9>();
    return Struct_1(-_wgslsmith_clamp_vec2_i32(-(~vec2<i32>(var_0.b.b.c, u_input.a)), vec2<i32>(~0i, _wgslsmith_mult_i32(var_3.x, -20055i)), u_input.d.xx), vec3<bool>(!(var_0.b.a && true), true, any(global4[_wgslsmith_index_u32(u_input.c, 9u)])), max(_wgslsmith_sub_i32(1i, firstLeadingBit(var_3.x)), _wgslsmith_dot_vec4_i32(global3.c, var_0.b.c)) << (abs(0u) % 32u), !vec3<bool>(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, global3.d.c, u_input.d.x), var_3.xyz) <= (-15946i >> (0u % 32u)), true, var_1.d.x));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: u32, arg_3: vec3<i32>) -> Struct_2 {
    var var_0 = global1[_wgslsmith_index_u32(~(~0u), 9u)];
    var var_1 = func_2(any(var_0.a.d.b));
    var_1 = Struct_1(vec2<i32>(_wgslsmith_add_i32(global3.b.c, abs(arg_1.a.c.x) >> (11510u % 32u)), _wgslsmith_add_i32(min(_wgslsmith_dot_vec2_i32(vec2<i32>(global3.c.x, global3.b.a.x), vec2<i32>(-1i, -1i)), ~global3.c.x), 1i ^ global3.d.a.x)), !vec3<bool>(global3.a, true, any(select(global4[_wgslsmith_index_u32(arg_2, 9u)], vec4<bool>(global3.a, false, false, arg_1.a.b.b.x), false))), -(~u_input.a), select(select(select(vec3<bool>(global3.d.b.x, true, var_1.d.x), !global3.b.b, arg_1.b.b.d), select(arg_1.b.d.d, arg_1.a.b.b, select(vec3<bool>(arg_0.b.b.x, false, false), vec3<bool>(true, false, var_0.b.d.d.x), arg_1.b.a)), func_2(true).b), vec3<bool>(false, true, false), !((i32(-1i) * -2147483647i) == _wgslsmith_mod_i32(u_input.a, u_input.a))));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(790f, -268f), vec2<f32>(518f, -108f)))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-370f, 846f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-154f, -383f)))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-390f, -838f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-464f, 148f)))) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-395f, -1992f) * vec2<f32>(-2357f, -188f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(902f, -2690f), vec2<f32>(-152f, -644f))))))));
    let var_3 = select(!select(arg_1.a.b.b, !vec3<bool>(arg_0.b.b.x, global3.d.d.x, arg_1.a.a), -var_1.a.x == arg_1.a.b.a.x), arg_0.b.d, arg_1.a.d.d.x);
    return Struct_2(any(!var_0.a.b.d) & !(1000f != _wgslsmith_div_f32(var_2.x, var_2.x)), arg_0.d, abs(var_0.a.c), func_2(false), arg_0.e);
}

fn func_5(arg_0: Struct_2) -> Struct_1 {
    let var_0 = vec2<i32>(global3.b.c, arg_0.c.x);
    var var_1 = global3.b.b.x;
    var var_2 = Struct_2(!all(arg_0.d.d.xx), Struct_1(arg_0.d.a, arg_0.b.d, func_4(func_4(func_4(Struct_2(true, arg_0.d, vec4<i32>(var_0.x, u_input.a, u_input.a, 6993i), global3.b, global3.e), global1[_wgslsmith_index_u32(40235u, 9u)], 1u, vec3<i32>(2271i, -2147483647i, -2147483647i)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, global3.e, 29127u), vec3<u32>(0u, global3.e, 4294967295u)), 9u)], _wgslsmith_mult_u32(u_input.c, global3.e), _wgslsmith_add_vec3_i32(global3.c.xyz, arg_0.c.zyx)), global1[_wgslsmith_index_u32(~(arg_0.e >> (1u % 32u)), 9u)], 53665u, _wgslsmith_mod_vec3_i32(vec3<i32>(36959i, u_input.d.x, var_0.x), ~global3.c.zyx)).d.a.x, vec3<bool>(any(vec4<bool>(true, false, false, global3.d.b.x)), true, ~u_input.a > _wgslsmith_sub_i32(u_input.d.x, -2147483647i))), vec4<i32>(1i, ~(-52504i), 2147483647i, _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-37043i, -2147483647i, global3.b.a.x), ~vec3<i32>(-2147483647i, 2147483647i, global3.b.a.x)), -22287i >> ((4294967295u >> (u_input.c % 32u)) % 32u))), func_4(func_4(Struct_2(func_4(Struct_2(false, Struct_1(vec2<i32>(2147483647i, -11425i), vec3<bool>(arg_0.a, true, global3.b.b.x), 1i, global3.b.b), vec4<i32>(2147483647i, global3.b.a.x, global3.c.x, 131i), Struct_1(vec2<i32>(2500i, 6355i), vec3<bool>(false, false, arg_0.b.b.x), u_input.a, arg_0.d.d), 68095u), Struct_3(arg_0, Struct_2(arg_0.a, Struct_1(var_0, arg_0.d.d, -1i, vec3<bool>(false, global3.b.b.x, true)), global3.c, Struct_1(vec2<i32>(u_input.d.x, u_input.a), arg_0.d.d, -2147483647i, global3.d.b), 12460u)), 1u, arg_0.c.wxx).b.d.x, func_2(arg_0.b.d.x), _wgslsmith_sub_vec4_i32(arg_0.c, arg_0.c), func_2(arg_0.a), 4294967295u), global1[_wgslsmith_index_u32(arg_0.e >> (_wgslsmith_sub_u32(global3.e, u_input.b) % 32u), 9u)], min(global3.e, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.e, 1u), vec2<u32>(global3.e, global3.e))), arg_0.c.wyy), Struct_3(arg_0, Struct_2(false, Struct_1(u_input.d.yx, vec3<bool>(arg_0.a, true, false), -19050i, arg_0.b.d), vec4<i32>(var_0.x, global3.d.c, u_input.a, 1i), func_2(false), ~u_input.c)), 0u, vec3<i32>(-1i) * -arg_0.c.zxy).d, arg_0.e);
    global3 = func_4(Struct_2(func_2(func_4(Struct_2(false, global3.b, vec4<i32>(u_input.a, arg_0.c.x, -35238i, 2147483647i), var_2.d, 86550u), Struct_3(Struct_2(global3.b.d.x, global3.b, vec4<i32>(-22072i, u_input.d.x, var_0.x, u_input.d.x), Struct_1(var_0, arg_0.d.d, var_2.c.x, vec3<bool>(arg_0.a, arg_0.b.b.x, false)), 1u), arg_0), _wgslsmith_add_u32(18801u, 994u), arg_0.c.wzy).a).d.x, Struct_1(vec2<i32>(1i, arg_0.b.a.x), !var_2.b.d, reverseBits(1i), arg_0.b.b), -min(vec4<i32>(var_0.x, global3.c.x, u_input.d.x, 2147483647i) & vec4<i32>(-62635i, var_2.c.x, u_input.d.x, var_2.d.a.x), vec4<i32>(var_0.x, var_2.d.a.x, 14919i, 5532i) << (vec4<u32>(arg_0.e, 4294967295u, 6356u, arg_0.e) % vec4<u32>(32u))), Struct_1(_wgslsmith_mod_vec2_i32(select(u_input.d.yx, arg_0.c.xw, true), var_0), arg_0.d.d, -arg_0.c.x, select(!vec3<bool>(false, global3.d.d.x, false), !vec3<bool>(false, global3.d.d.x, false), var_2.d.b.x)), _wgslsmith_mod_u32(~_wgslsmith_clamp_u32(4294967295u, var_2.e, global3.e), _wgslsmith_mult_u32(~17707u, _wgslsmith_mult_u32(arg_0.e, 41222u)))), Struct_3(Struct_2(false, Struct_1(abs(vec2<i32>(global3.c.x, global3.c.x)), select(vec3<bool>(true, global3.d.b.x, global3.b.d.x), arg_0.b.b, vec3<bool>(arg_0.a, arg_0.a, true)), 1i, var_2.b.b), vec4<i32>(func_4(Struct_2(false, Struct_1(vec2<i32>(u_input.a, 0i), var_2.b.d, u_input.a, var_2.b.d), arg_0.c, arg_0.d, 31254u), Struct_3(Struct_2(true, Struct_1(vec2<i32>(-8700i, 35898i), vec3<bool>(false, false, var_2.b.b.x), -3620i, vec3<bool>(false, global3.b.b.x, global3.a)), arg_0.c, Struct_1(var_0, global3.b.d, 43119i, arg_0.d.d), var_2.e), arg_0), u_input.b, vec3<i32>(arg_0.b.a.x, var_2.d.c, var_2.d.c)).c.x, 12688i, u_input.d.x, -50177i), global3.d, global3.e), arg_0), 4294967295u, ~var_2.c.zzx);
    let var_3 = Struct_1(vec2<i32>(~(-2147483647i), var_2.d.c), vec3<bool>(true, true, true), -max(-_wgslsmith_mult_i32(1i, 0i), _wgslsmith_dot_vec2_i32(vec2<i32>(-43704i, -41915i), var_0)), func_2(arg_0.b.b.x).b);
    return var_2.b;
}

fn func_1(arg_0: u32, arg_1: u32) -> Struct_1 {
    let var_0 = ~vec2<u32>(5586u, 4294967295u);
    var var_1 = !global3.b.d.x;
    global4 = array<vec4<bool>, 9>();
    var var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -770f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-566f, -681f)))))));
    var_2 = -422f;
    return func_5(func_4(Struct_2(true, global3.d, ~vec4<i32>(-2147483647i, u_input.d.x, -2147483647i, 26900i), func_2(true), 0u), Struct_3(Struct_2(global3.a, func_2(false), global3.c, func_2(global3.a), firstLeadingBit(u_input.c)), Struct_2(true, func_2(true), vec4<i32>(global3.b.a.x, 2147483647i, 36039i, u_input.d.x), global3.d, 1u)), firstTrailingBit(firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1, 0u, u_input.b, 0u), vec4<u32>(arg_1, global3.e, u_input.b, global3.e)))), _wgslsmith_add_vec3_i32(u_input.d & vec3<i32>(global3.b.a.x, global3.d.c, u_input.d.x), ~u_input.d)));
}

fn func_6(arg_0: Struct_1) -> vec4<i32> {
    var var_0 = Struct_1(u_input.d.xx, select(global3.d.b, select(func_1(1u << (global3.e % 32u), ~u_input.b).d, select(select(vec3<bool>(true, global3.a, true), global3.b.d, true), !vec3<bool>(global3.b.d.x, global3.b.d.x, false), global3.b.b.x), global3.d.b), select(func_1(0u >> (u_input.b % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 3274u), vec2<u32>(51106u, 1u))).d, func_4(func_4(Struct_2(false, arg_0, vec4<i32>(2147483647i, arg_0.a.x, arg_0.c, u_input.a), Struct_1(vec2<i32>(-37460i, u_input.a), vec3<bool>(true, true, true), 0i, global3.b.b), 0u), Struct_3(Struct_2(true, global3.d, global3.c, Struct_1(global3.b.a, arg_0.d, u_input.d.x, vec3<bool>(global3.b.d.x, global3.a, arg_0.d.x)), 16054u), Struct_2(arg_0.b.x, global3.b, global3.c, Struct_1(u_input.d.yy, vec3<bool>(false, global3.a, false), arg_0.c, vec3<bool>(global3.b.d.x, global3.d.d.x, arg_0.b.x)), 4294967295u)), global3.e, u_input.d), global1[_wgslsmith_index_u32(1u, 9u)], 1u >> (u_input.c % 32u), reverseBits(vec3<i32>(-2147483647i, arg_0.a.x, u_input.d.x))).b.d, vec3<bool>(true, func_1(19572u, 10832u).b.x, func_5(Struct_2(global3.b.b.x, arg_0, vec4<i32>(arg_0.a.x, arg_0.a.x, u_input.a, -1i), arg_0, 0u)).b.x))), _wgslsmith_div_i32(u_input.d.x, ~global3.c.x), func_2(all(global3.b.b)).d);
    let var_1 = !var_0.b.xz;
    global4 = array<vec4<bool>, 9>();
    let var_2 = vec2<bool>(true, func_4(func_4(Struct_2(global3.b.a.x <= 2147483647i, func_5(Struct_2(global3.a, global3.b, vec4<i32>(arg_0.c, -2351i, 33058i, 2147483647i), Struct_1(global3.d.a, vec3<bool>(true, true, false), 2147483647i, arg_0.d), 1u)), func_4(Struct_2(false, global3.b, vec4<i32>(var_0.a.x, arg_0.c, global3.d.a.x, u_input.a), Struct_1(arg_0.a, vec3<bool>(false, var_0.b.x, arg_0.d.x), 45777i, vec3<bool>(var_0.d.x, true, false)), global3.e), Struct_3(Struct_2(true, arg_0, global3.c, Struct_1(arg_0.a, global3.b.b, 1i, vec3<bool>(false, false, false)), 69614u), Struct_2(true, global3.d, global3.c, global3.b, 46173u)), u_input.b, vec3<i32>(arg_0.c, 2147483647i, global3.d.c)).c, func_1(global3.e, 31859u), firstLeadingBit(4294967295u)), Struct_3(func_4(Struct_2(var_0.d.x, arg_0, vec4<i32>(u_input.a, arg_0.a.x, 21215i, global3.b.a.x), Struct_1(vec2<i32>(u_input.a, -38035i), vec3<bool>(var_0.d.x, true, false), u_input.a, vec3<bool>(false, false, true)), 76265u), global1[_wgslsmith_index_u32(u_input.b, 9u)], 96324u, global3.c.yww), Struct_2(var_1.x, Struct_1(vec2<i32>(global3.b.c, global3.b.c), var_0.b, arg_0.a.x, vec3<bool>(true, true, false)), vec4<i32>(1i, -33689i, var_0.c, var_0.c), Struct_1(vec2<i32>(0i, -42836i), var_0.d, 1i, vec3<bool>(var_0.b.x, true, arg_0.d.x)), u_input.b)), global3.e, ~vec3<i32>(-10940i, arg_0.c, global3.d.c)), Struct_3(Struct_2(any(vec4<bool>(false, var_0.d.x, var_0.d.x, false)), Struct_1(global3.c.yy, var_0.d, -9822i, vec3<bool>(var_0.b.x, false, var_1.x)), _wgslsmith_mult_vec4_i32(vec4<i32>(var_0.c, arg_0.c, -54611i, -75090i), vec4<i32>(1i, u_input.d.x, 0i, global3.c.x)), func_2(global3.a), global3.e), func_4(func_4(Struct_2(true, global3.b, vec4<i32>(u_input.a, u_input.d.x, -54218i, arg_0.c), Struct_1(global3.d.a, vec3<bool>(global3.d.b.x, false, var_0.d.x), global3.d.c, vec3<bool>(var_0.b.x, global3.d.d.x, true)), 45377u), global1[_wgslsmith_index_u32(1u, 9u)], 13286u, u_input.d), Struct_3(Struct_2(true, global3.d, global3.c, arg_0, global3.e), Struct_2(arg_0.d.x, arg_0, global3.c, Struct_1(vec2<i32>(-18596i, u_input.d.x), arg_0.b, -2147483647i, vec3<bool>(global3.b.b.x, true, true)), 0u)), ~u_input.b, _wgslsmith_sub_vec3_i32(global3.c.yxw, global3.c.yzz))), _wgslsmith_add_u32(global3.e, ~_wgslsmith_div_u32(282u, global3.e)), global3.c.xzz).a);
    global0 = _wgslsmith_dot_vec2_i32(global3.c.wx, select(u_input.d.yy, vec2<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a.x, var_0.c, 3844i), vec3<i32>(u_input.a, global3.c.x, -2147483647i)), func_4(func_4(Struct_2(false, global3.b, vec4<i32>(global3.b.c, arg_0.a.x, u_input.d.x, arg_0.c), global3.b, 1u), global1[_wgslsmith_index_u32(4294967295u, 9u)], u_input.c, global3.c.wyz), Struct_3(Struct_2(true, Struct_1(arg_0.a, var_0.b, global3.c.x, var_0.b), global3.c, Struct_1(vec2<i32>(1i, 0i), vec3<bool>(arg_0.b.x, var_1.x, false), arg_0.c, vec3<bool>(var_2.x, var_1.x, global3.b.d.x)), u_input.b), Struct_2(true, global3.d, vec4<i32>(-2147483647i, arg_0.a.x, arg_0.c, 0i), global3.b, 0u)), _wgslsmith_div_u32(2474u, global3.e), firstLeadingBit(global3.c.yww)).d.a.x), !(!func_4(Struct_2(false, Struct_1(vec2<i32>(13180i, 1i), vec3<bool>(global3.d.d.x, true, false), var_0.a.x, arg_0.d), vec4<i32>(u_input.d.x, -1i, u_input.d.x, global3.c.x), global3.b, 0u), Struct_3(Struct_2(var_1.x, arg_0, global3.c, arg_0, 4294967295u), Struct_2(true, Struct_1(global3.d.a, arg_0.d, global3.c.x, vec3<bool>(arg_0.b.x, global3.a, var_2.x)), vec4<i32>(-1i, global3.b.c, u_input.a, var_0.a.x), Struct_1(vec2<i32>(global3.c.x, arg_0.c), arg_0.d, -1i, vec3<bool>(true, var_0.d.x, var_1.x)), u_input.b)), global3.e, vec3<i32>(var_0.c, u_input.d.x, -2147483647i)).b.d.zz)));
    return -_wgslsmith_add_vec4_i32(global3.c, global3.c);
}

fn func_7(arg_0: Struct_2, arg_1: u32, arg_2: vec4<f32>, arg_3: bool) -> StorageBuffer {
    let var_0 = firstTrailingBit(_wgslsmith_sub_vec3_i32(arg_0.c.www, vec3<i32>(-32758i >> (1u % 32u), -15614i, -1i)));
    var var_1 = Struct_1(arg_0.b.a, global3.d.d, ~54360i ^ func_4(arg_0, global1[_wgslsmith_index_u32(~(~17936u), 9u)], 55966u, -(~vec3<i32>(0i, global3.b.c, var_0.x))).b.a.x, arg_0.b.d);
    let var_2 = u_input.d.x;
    var var_3 = 595f;
    var_3 = arg_2.x;
    return StorageBuffer(global3.e, var_0);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_mod_i32(global3.b.a.x, ~_wgslsmith_clamp_i32(global3.b.a.x, ~(i32(-1i) * -2147483647i), i32(-1i) * -u_input.d.x));
    let var_0 = Struct_1(global3.d.a, select(!global3.d.d, select(global3.d.d, vec3<bool>(all(vec3<bool>(true, true, true)), all(vec2<bool>(false, global3.b.d.x)), true), vec3<bool>(true, global3.b.d.x, any(global3.b.b))), !select(!vec3<bool>(true, false, global3.b.b.x), select(global3.b.d, global3.d.d, vec3<bool>(false, false, global3.b.b.x)), u_input.b == 28948u)), -abs(_wgslsmith_dot_vec3_i32(vec3<i32>(76099i, -1i, -2147483647i), reverseBits(vec3<i32>(-1i, 0i, -40351i)))), select(!vec3<bool>(true, true, all(global4[_wgslsmith_index_u32(global3.e, 9u)])), global3.d.b, !select(!global3.d.d.x, true, false)));
    let var_1 = _wgslsmith_f_op_f32(floor(853f));
    let x = u_input.a;
    s_output = func_7(Struct_2(var_0.d.x, global3.d, func_6(func_1(~70877u, global3.e ^ u_input.b)), func_1(u_input.b | u_input.b, ~48954u), _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, u_input.c, 1u) | vec3<u32>(0u, 1u, 0u), vec3<u32>(global3.e, 0u, 72268u) ^ vec3<u32>(global3.e, 1u, 1u), abs(vec3<u32>(global3.e, 4294967295u, global3.e))), countOneBits(vec3<u32>(0u, global3.e, u_input.b) ^ vec3<u32>(u_input.c, global3.e, global3.e)))), 1u, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(global3.e, 20u)]), vec4<f32>(-852f, var_1, 221f, -1698f), select(global4[_wgslsmith_index_u32(global3.e, 9u)], global4[_wgslsmith_index_u32(u_input.b, 9u)], vec4<bool>(var_0.b.x, true, var_0.b.x, var_0.b.x)))))))), global3.b.d.x);
}

