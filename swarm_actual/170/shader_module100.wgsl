struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: i32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: bool,
    d: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<vec2<bool>, 2> = array<vec2<bool>, 2>(vec2<bool>(false, true), vec2<bool>(false, false));

var<private> global2: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(vec3<u32>(4294967295u, 0u, 4294967295u)), Struct_1(vec3<u32>(4294967295u, 100589u, 45288u)), Struct_1(vec3<u32>(1848u, 12049u, 28762u)), Struct_1(vec3<u32>(50977u, 11224u, 25265u)), Struct_1(vec3<u32>(0u, 4294967295u, 5646u)), Struct_1(vec3<u32>(80109u, 4294967295u, 58471u)), Struct_1(vec3<u32>(29193u, 741u, 0u)), Struct_1(vec3<u32>(61066u, 0u, 1u)), Struct_1(vec3<u32>(0u, 4294967295u, 4294967295u)), Struct_1(vec3<u32>(1u, 1u, 4294967295u)), Struct_1(vec3<u32>(78045u, 4294967295u, 26748u)), Struct_1(vec3<u32>(8619u, 0u, 0u)), Struct_1(vec3<u32>(4294967295u, 4294967295u, 23284u)), Struct_1(vec3<u32>(4294967295u, 1u, 4294967295u)), Struct_1(vec3<u32>(9939u, 0u, 25402u)), Struct_1(vec3<u32>(0u, 27338u, 55660u)), Struct_1(vec3<u32>(4294967295u, 1u, 1u)), Struct_1(vec3<u32>(27325u, 4294967295u, 63735u)));

var<private> global3: vec4<u32>;

var<private> global4: Struct_3 = Struct_3(vec4<i32>(35811i, 2147483647i, 2147483647i, -70934i), vec2<f32>(269f, -677f), true, -968f);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> f32 {
    global2 = array<Struct_1, 18>();
    let var_0 = Struct_2(global0.a, vec4<bool>(true, ~(-4703i) > firstTrailingBit(global0.a.x >> (0u % 32u)), any(vec3<bool>(true, 58425u <= global3.x, global4.c & global4.c)), !select(global0.c, all(vec3<bool>(global4.c, global0.c, global4.c)), u_input.a.x < global3.x)), _wgslsmith_clamp_i32(global0.a.x, 1i, ~(-global0.a.x << (1u % 32u))));
    let var_1 = Struct_3(vec4<i32>(global0.a.x, -1i, _wgslsmith_mod_i32(-34331i ^ (37235i | global4.a.x), global0.a.x), -1i), global0.b, global4.c, global0.d);
    global0 = Struct_3(var_0.a, vec2<f32>(526f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.x))), !global4.c, _wgslsmith_f_op_f32(-1f));
    var var_2 = global0.a.yxy;
    return _wgslsmith_f_op_f32(f32(-1f) * -614f);
}

fn func_2(arg_0: bool, arg_1: Struct_2, arg_2: vec4<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.x)));
    global4 = Struct_3(_wgslsmith_div_vec4_i32(~vec4<i32>(-global4.a.x, _wgslsmith_div_i32(global4.a.x, -2147483647i), global4.a.x, -1i), global4.a), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-620f, -1489f), global4.b)), vec2<f32>(global0.b.x, global0.d), select(arg_1.b.yx, vec2<bool>(global0.c, global0.c), 2147483647i <= global0.a.x))), global4.b)), arg_0, _wgslsmith_f_op_f32(min(global4.d, _wgslsmith_f_op_f32(select(global4.d, _wgslsmith_f_op_f32(sign(global0.b.x)), _wgslsmith_clamp_u32(32658u, 1u, 4294967295u) >= _wgslsmith_mod_u32(u_input.a.x, u_input.a.x))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-711f, -1000f, -1875f)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-827f, -490f, global4.b.x))), !global0.c)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1888f, global0.d, global4.d))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.b.x, global0.b.x, -1180f)))) * vec3<f32>(1000f, _wgslsmith_div_f32(global4.b.x, -308f), -737f)), global4.c)));
    let var_2 = -firstLeadingBit(_wgslsmith_sub_vec4_i32(reverseBits(~global4.a), vec4<i32>(i32(-1i) * -67005i, arg_1.c | 1i, global0.a.x, -global0.a.x)));
    var var_3 = vec3<u32>(u_input.a.x, ~(~max(~u_input.a.x, u_input.a.x >> (u_input.a.x % 32u))), arg_2.x);
    return global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(global3.xw, global3.yy) | min(_wgslsmith_div_u32(4294967295u, ~global3.x), ~countOneBits(~51153u)), 18u)];
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: f32, arg_3: bool) -> bool {
    global1 = array<vec2<bool>, 2>();
    global4 = Struct_3(firstTrailingBit(max(vec4<i32>(-54589i, 0i, arg_1.c, global0.a.x), max(vec4<i32>(1i, u_input.b, -34784i, -1i), global4.a))) >> (_wgslsmith_mod_vec4_u32(max(vec4<u32>(1u, arg_0.a.x, 4294967295u, 14541u), vec4<u32>(u_input.a.x, arg_0.a.x, 55242u, arg_0.a.x)), select(~vec4<u32>(global3.x, global3.x, 4294967295u, u_input.a.x), vec4<u32>(global3.x, global3.x, 1u, u_input.a.x), arg_1.b)) % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(floor(global4.b)), any(!arg_1.b), global0.d);
    var var_0 = arg_1;
    global0 = Struct_3(_wgslsmith_mod_vec4_i32(reverseBits(vec4<i32>(global4.a.x, 0i, var_0.a.x, u_input.b)), vec4<i32>(-u_input.b, -2147483647i, ~arg_1.c, 2147483647i)) << (_wgslsmith_mod_vec4_u32(~vec4<u32>(arg_0.a.x, 1633u, global3.x, arg_0.a.x), ~firstLeadingBit(vec4<u32>(1u, 18438u, arg_0.a.x, u_input.a.x))) % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(-global0.b), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global4.d, global4.d))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(-457f - 392f))))));
    let var_1 = min(~vec4<i32>(_wgslsmith_dot_vec3_i32(global4.a.yxw, global4.a.wzy) >> (25365u % 32u), abs(global0.a.x), ~var_0.a.x, -u_input.b), firstLeadingBit(global4.a));
    return false;
}

fn func_1(arg_0: Struct_3, arg_1: f32, arg_2: i32) -> i32 {
    var var_0 = Struct_2(global4.a, vec4<bool>(arg_0.c, all(!vec3<bool>(global0.c, true, false)), false, all(!(!vec3<bool>(true, true, arg_0.c)))), ~_wgslsmith_add_i32(1i, global4.a.x));
    global1 = array<vec2<bool>, 2>();
    let var_1 = Struct_2(max(max(select(-global4.a, _wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.c, -36005i, -1i, 1i), vec4<i32>(global0.a.x, 6069i, 8123i, 0i), arg_0.a), !vec4<bool>(global0.c, false, true, true)), -vec4<i32>(0i, var_0.a.x, 44370i, global0.a.x)), arg_0.a), select(var_0.b, select(vec4<bool>(true, global0.c | false, arg_0.c, global3.x == global3.x), !var_0.b, func_4(func_2(global0.c, Struct_2(vec4<i32>(-48277i, arg_0.a.x, 2147483647i, global0.a.x), var_0.b, global4.a.x), vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.a.x)), Struct_2(arg_0.a, var_0.b, -11249i), 425f, arg_2 <= arg_2)), !var_0.b), ~max(1i, i32(-1i) * -12902i));
    global0 = arg_0;
    global2 = array<Struct_1, 18>();
    return _wgslsmith_div_i32(~(~((-2147483647i & var_1.a.x) | 1i)), 24894i & arg_0.a.x);
}

fn func_5(arg_0: Struct_3, arg_1: i32, arg_2: vec2<i32>) -> f32 {
    return 264f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(func_5(Struct_3(vec4<i32>(_wgslsmith_clamp_i32(2147483647i, 1i, global4.a.x), _wgslsmith_mod_i32(1i, global0.a.x), u_input.b, -u_input.b), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.b.x, global0.d) * _wgslsmith_f_op_vec2_f32(floor(global0.b))), -global0.a.x >= u_input.b, -117f), -2147483647i, global4.a.yy ^ vec2<i32>(func_1(Struct_3(global4.a, global0.b, global4.c, global0.b.x), global0.b.x, u_input.b), 1i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-279f - _wgslsmith_f_op_f32(global0.d + -232f)), -417f))));
    var var_1 = Struct_3(-vec4<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(global4.a, vec4<i32>(-2147483647i, 7821i, global0.a.x, 1i)), -2147483647i), -global0.a.x, global4.a.x, -1i | u_input.b), global0.b, global0.c, var_0.x);
    var var_2 = any(select(vec2<bool>(var_1.c, false), !global1[_wgslsmith_index_u32(~1u, 2u)], select(select(global1[_wgslsmith_index_u32(u_input.a.x, 2u)], global1[_wgslsmith_index_u32(36998u, 2u)], true), vec2<bool>(true, global0.c), false))) | true;
    var_2 = !all(vec3<bool>(true, true, true));
    var_1 = Struct_3(vec4<i32>(-(i32(-1i) * -19077i), reverseBits(u_input.b), global4.a.x, select(u_input.b, 52891i << (abs(0u) % 32u), true | global0.c)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_1.b.x, 334f)))) * vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(var_1.b.x - _wgslsmith_f_op_f32(-global0.b.x)))), false, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(func_3()), var_1.b.x));
}

