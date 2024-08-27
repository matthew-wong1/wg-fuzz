struct Struct_1 {
    a: i32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: bool,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
}

struct Struct_5 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(vec3<u32>(0u, 18495u, 0u));

var<private> global1: vec2<i32>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3() -> f32 {
    global0 = Struct_5(~(vec3<u32>(firstTrailingBit(5317u), _wgslsmith_dot_vec3_u32(global0.a, global0.a), ~1u) << (select(_wgslsmith_add_vec3_u32(global0.a, vec3<u32>(u_input.a, 4294967295u, 1u)), global0.a, all(vec4<bool>(true, false, false, true))) % vec3<u32>(32u))));
    let var_0 = Struct_3(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), true & any(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), true))));
    var var_1 = vec3<i32>(-u_input.b.x << (_wgslsmith_mult_u32(38398u, (global0.a.x & 32018u) << (global0.a.x % 32u)) % 32u), u_input.b.x, u_input.b.x);
    var var_2 = _wgslsmith_mult_i32(var_1.x, _wgslsmith_sub_i32(u_input.b.x, 2147483647i));
    global0 = Struct_5(countOneBits(vec3<u32>(~(global0.a.x & u_input.c), 49625u, u_input.a)));
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-277f * _wgslsmith_f_op_f32(max(1158f, 1036f))))));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: vec4<bool>) -> vec4<u32> {
    var var_0 = Struct_2(vec2<i32>(_wgslsmith_mult_i32(arg_1.e.a, ~reverseBits(-1i)), -firstLeadingBit(-84640i)), all(!select(select(arg_1.e.b, vec2<bool>(false, arg_3.x), arg_1.d.b.x), vec2<bool>(arg_1.b, arg_1.e.b.x), vec2<bool>(true, true))), 11400u, Struct_1(~min(u_input.b.x, global1.x << (52711u % 32u)), !select(!arg_1.e.b, vec2<bool>(arg_1.b, arg_3.x), arg_3.wx)), Struct_1(arg_2.x, !arg_1.e.b));
    let var_1 = Struct_3(vec3<bool>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-1000f)))) >= arg_0.x, arg_3.x, 1936f >= _wgslsmith_f_op_f32(-arg_0.x)));
    var_0 = Struct_2(-_wgslsmith_add_vec2_i32(~arg_1.a, countOneBits(_wgslsmith_mult_vec2_i32(var_0.a, vec2<i32>(u_input.b.x, arg_2.x)))), arg_1.e.b.x, _wgslsmith_clamp_u32(u_input.c, 4294967295u, global0.a.x), Struct_1(-arg_1.a.x | var_0.a.x, var_1.a.xz), Struct_1(~arg_1.d.a, var_0.e.b));
    let var_2 = _wgslsmith_div_vec4_u32(vec4<u32>(~_wgslsmith_clamp_u32(~global0.a.x, 6548u, arg_1.c), countOneBits(~_wgslsmith_add_u32(var_0.c, 0u)), global0.a.x, _wgslsmith_clamp_u32(~abs(global0.a.x), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.c, arg_1.c) >> (vec3<u32>(var_0.c, 1u, 0u) % vec3<u32>(32u)), vec3<u32>(11578u, var_0.c, 4294967295u)), 4563u)), ~(~abs(reverseBits(vec4<u32>(global0.a.x, u_input.a, 41658u, 1u)))));
    global0 = Struct_5(_wgslsmith_add_vec3_u32(select(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 0u, 27589u), global0.a) << (firstLeadingBit(var_2.yxw) % vec3<u32>(32u)), max(vec3<u32>(69154u, 33347u, var_0.c), ~vec3<u32>(global0.a.x, 4294967295u, 61881u)), false), ~vec3<u32>(var_0.c, var_0.c, global0.a.x) | global0.a));
    return vec4<u32>(11981u, var_2.x, var_2.x, 48078u);
}

fn func_2(arg_0: vec3<u32>) -> Struct_3 {
    let var_0 = (~_wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.a, 31693u, 47412u, u_input.c), vec4<u32>(0u, global0.a.x, arg_0.x, u_input.c) << (vec4<u32>(arg_0.x, global0.a.x, arg_0.x, u_input.c) % vec4<u32>(32u)), ~vec4<u32>(1u, arg_0.x, 73257u, 1u)) | vec4<u32>(u_input.c, ~_wgslsmith_add_u32(u_input.c, 0u), u_input.a, _wgslsmith_dot_vec4_u32(max(vec4<u32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec4<u32>(global0.a.x, 45108u, global0.a.x, 16459u)), vec4<u32>(4294967295u, u_input.a, 1u, global0.a.x) & vec4<u32>(global0.a.x, global0.a.x, 48802u, 6848u)))) & func_4(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_3()), 1410f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(994f, 666f), vec2<f32>(-854f, 1425f))))), Struct_2(vec2<i32>(max(global1.x, u_input.b.x), global1.x), true, global0.a.x, Struct_1(-u_input.b.x, vec2<bool>(true, true)), Struct_1(~global1.x, vec2<bool>(true, false))), _wgslsmith_div_vec4_i32(vec4<i32>(firstLeadingBit(2147483647i), u_input.b.x, global1.x | global1.x, global1.x), select(max(vec4<i32>(u_input.b.x, global1.x, u_input.b.x, u_input.b.x), vec4<i32>(-1i, u_input.b.x, 0i, -4588i)), -vec4<i32>(0i, -1i, -2147483647i, 2147483647i), vec4<bool>(true, true, true, true))), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), false));
    return Struct_3(vec3<bool>(false, ~0i <= global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1112f + -462f) + _wgslsmith_f_op_f32(1000f * 1652f)) == _wgslsmith_f_op_f32(floor(706f))));
}

fn func_1(arg_0: vec3<f32>) -> Struct_5 {
    global0 = Struct_5(max(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 1u, ~2574u), ~_wgslsmith_add_vec3_u32(vec3<u32>(global0.a.x, u_input.c, global0.a.x), global0.a)), ~(~vec3<u32>(u_input.c, 15015u, 4294967295u))));
    global0 = Struct_5(_wgslsmith_mult_vec3_u32(global0.a, vec3<u32>(~u_input.c, _wgslsmith_sub_u32(u_input.c << (global0.a.x % 32u), 0u), countOneBits(_wgslsmith_mod_u32(32058u, 4294967295u)))));
    var var_0 = ~reverseBits(vec2<u32>(reverseBits(52077u), _wgslsmith_mult_u32(4347u, u_input.a)) & global0.a.yz);
    var_0 = vec2<u32>(_wgslsmith_div_u32(~1u << (_wgslsmith_clamp_u32(16914u, global0.a.x, 61029u) % 32u), ~0u) >> (u_input.c % 32u), ~u_input.c);
    var var_1 = func_2(global0.a & (~countOneBits(global0.a) ^ global0.a));
    return Struct_5(countOneBits(~global0.a));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_add_i32(1i, _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, -35643i, u_input.b.x), vec3<i32>(u_input.b.x, -51446i, 7944i)), min(global1.x, u_input.b.x))), -19159i), -vec2<i32>(u_input.b.x, ~_wgslsmith_sub_i32(32476i, 2147483647i)));
    global0 = func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1615f, -117f, 1050f) * vec3<f32>(1946f, 440f, 444f))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(1208f, -1000f, -1826f), vec3<f32>(-739f, -312f, 531f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(815f, -800f, 1097f) + vec3<f32>(-553f, 1227f, 1232f)), vec3<bool>(true, false, false))))));
    let var_0 = 5982u;
    var var_1 = !(all(select(vec3<bool>(true, true, true), func_2(global0.a).a, false)) || func_2(~global0.a & ~vec3<u32>(24744u, global0.a.x, u_input.c)).a.x);
    let var_2 = abs(34579i);
    var var_3 = ~(~global0.a.zy);
    var var_4 = _wgslsmith_sub_u32(global0.a.x, ~global0.a.x);
    global0 = func_1(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1000f, 1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -914f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(778f, 1000f, true))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1610f, 734f, 383f), vec3<f32>(1088f, -415f, 1696f))) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1613f, 1471f, -1100f)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-896f, -1056f, 233f))))))));
    var var_5 = true;
    let x = u_input.a;
    s_output = StorageBuffer(~(~(global0.a.yx >> ((global0.a.xz ^ vec2<u32>(96875u, var_3.x)) % vec2<u32>(32u)))));
}

