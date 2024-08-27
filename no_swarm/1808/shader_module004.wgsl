struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_2, 32>;

var<private> global2: Struct_3;

var<private> global3: bool = false;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<u32>, arg_2: bool) -> vec4<bool> {
    var var_0 = all(select(!vec4<bool>(arg_2, true, arg_2, false), vec4<bool>(any(select(vec3<bool>(true, arg_2, true), vec3<bool>(arg_2, false, arg_2), vec3<bool>(arg_2, true, false))), false, true, !arg_2), vec4<bool>(true, !any(vec3<bool>(false, false, arg_2)), !any(vec4<bool>(arg_2, arg_2, false, true)), all(vec2<bool>(arg_2, arg_2)))));
    var var_1 = ~(19417u >> (~select(0u, 29245u << (arg_1.x % 32u), !arg_2) % 32u));
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-122f)) - _wgslsmith_f_op_f32(106f + -419f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 412f)), _wgslsmith_f_op_f32(step(-1320f, _wgslsmith_f_op_f32(select(865f, -221f, arg_2)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -468f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1963f, -1417f, 725f, -265f)) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(366f, -905f, -518f, -677f), vec4<f32>(-393f, -400f, -1212f, 127f), arg_2)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(515f, 1276f, -919f, -783f)))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-601f, -625f, -486f, 254f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1988f, 1985f, 937f, -1000f)))), false)));
    let var_3 = select(select(vec4<bool>(true, any(!vec2<bool>(arg_2, arg_2)), all(vec3<bool>(true, true, true)), arg_2), vec4<bool>(u_input.d > 1u, arg_2, true, arg_2), ~(global2.a.b.x ^ 1u) > u_input.e), select(vec4<bool>(all(vec3<bool>(arg_2, false, false)) | true, all(vec2<bool>(false, arg_2)), arg_2, arg_2), vec4<bool>(arg_2, arg_2 || all(vec3<bool>(false, arg_2, arg_2)), !any(vec3<bool>(false, true, false)), arg_2), !select(select(vec4<bool>(true, false, arg_2, arg_2), vec4<bool>(arg_2, true, false, false), true), vec4<bool>(arg_2, arg_2, arg_2, arg_2), !vec4<bool>(arg_2, true, arg_2, arg_2))), !(!arg_2 != any(vec3<bool>(arg_2, true, true))));
    let var_4 = var_2.x;
    return var_3;
}

fn func_2() -> vec4<bool> {
    var var_0 = Struct_3(global2.a);
    var var_1 = select(!select(vec4<bool>(true, true, false, false), select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), true), vec4<bool>(false, false, true, true), false), select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true))), select(func_3(reverseBits(~vec3<i32>(global2.a.a, -2147483647i, 70144i)), vec3<u32>(firstTrailingBit(0u), u_input.d, ~var_0.a.b.x), false), vec4<bool>((8491u << (global2.a.b.x % 32u)) >= _wgslsmith_div_u32(u_input.c.x, 4294967295u), (var_0.a.a >> (8803u % 32u)) < _wgslsmith_div_i32(global2.a.a, global2.a.a), func_3(vec3<i32>(global2.a.a, -13401i, 39620i), abs(vec3<u32>(global2.a.b.x, 63835u, 10576u)), 18286i >= var_0.a.a).x, true), !func_3(~vec3<i32>(1i, 4002i, -29039i), vec3<u32>(1u, u_input.a, 1u), true)), !vec4<bool>(~global2.a.b.x <= _wgslsmith_clamp_u32(var_0.a.b.x, global2.a.b.x, 4294967295u), true, true, true));
    var var_2 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(abs(reverseBits(~(~var_0.a.b.x))), 44087u), 32u)];
    let var_3 = vec4<u32>(_wgslsmith_sub_u32(var_0.a.b.x & abs(16794u | u_input.e), _wgslsmith_dot_vec2_u32(~(vec2<u32>(global2.a.c.x, 18779u) >> (var_0.a.c % vec2<u32>(32u))), firstLeadingBit(~var_0.a.c))), 4294967295u, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(~4294967295u, ~83045u, global2.a.c.x), global2.a.b.x), _wgslsmith_mod_u32(~(~0u) >> (1u % 32u), 4294967295u));
    let var_4 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1764f), _wgslsmith_f_op_f32(-1447f - -1000f), 2466f, -1554f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(212f, -1807f, 386f, -1536f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-602f, 1810f, -221f, 573f))))))));
    return select(vec4<bool>(all(vec4<bool>(var_1.x || var_2.a, var_1.x, var_1.x, !var_2.a)), true, true, any(!(!vec3<bool>(var_1.x, false, var_1.x)))), !(!select(vec4<bool>(var_1.x, false, var_2.a, var_1.x), vec4<bool>(true, true, true, true), var_2.a)), !vec4<bool>(!(!var_1.x), var_2.a, ~1i <= select(global2.a.a, 15529i, false), !(var_1.x && var_2.a)));
}

fn func_1(arg_0: u32, arg_1: vec4<i32>) -> vec3<bool> {
    var var_0 = select(!func_2(), func_2(), !all(vec4<bool>(true, false, true, any(vec2<bool>(true, false)))));
    global0 = -825f;
    let var_1 = global1[_wgslsmith_index_u32(~38391u, 32u)];
    let var_2 = global2.a;
    var var_3 = Struct_2(true, arg_1.xz);
    return var_0.wxy;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(vec3<bool>(any(vec3<bool>(false, false, false)), true, true), select(vec3<bool>(true, true, true), func_1(u_input.d, -vec4<i32>(global2.a.a, global2.a.a, 2594i, global2.a.a)), func_1(3056u >> (global2.a.c.x % 32u), vec4<i32>(global2.a.a, global2.a.a, -2147483647i, global2.a.a) ^ vec4<i32>(-63464i, -1338i, 22941i, global2.a.a)).x), false);
    var_0 = vec3<bool>(!(!any(!vec4<bool>(var_0.x, true, var_0.x, false))), true, var_0.x);
    let var_1 = false;
    var var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1323f), _wgslsmith_div_f32(1123f, 473f))) + _wgslsmith_f_op_f32(step(-231f, _wgslsmith_f_op_f32(261f * -1000f))))), 1495f, false));
    let var_3 = select(vec4<u32>(~(_wgslsmith_div_u32(u_input.d, global2.a.c.x) ^ 1u), max(15600u, reverseBits(4294967295u)) >> ((countOneBits(47513u) << (abs(global2.a.b.x) % 32u)) % 32u), ~abs(u_input.d), ~_wgslsmith_dot_vec4_u32(vec4<u32>(94881u, global2.a.c.x, global2.a.b.x, u_input.c.x), min(global2.a.b, vec4<u32>(1u, 22964u, u_input.c.x, 0u)))), firstLeadingBit(abs(~vec4<u32>(u_input.a, global2.a.c.x, 31764u, 4294967295u))), select(!vec4<bool>(true, global2.a.a <= -42824i, true, all(vec3<bool>(true, true, true))), vec4<bool>(func_1(~0u, firstLeadingBit(vec4<i32>(global2.a.a, global2.a.a, 43734i, 0i))).x, global2.a.a <= 1i, !var_0.x || true, any(select(vec3<bool>(true, var_1, true), vec3<bool>(var_0.x, var_0.x, true), var_0.x))), func_2()));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(786f - -748f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(954f, 454f), _wgslsmith_f_op_f32(2120f + 942f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-2034f, 1157f))))), any(vec4<bool>(var_1, var_0.x, func_3(vec3<i32>(20298i, global2.a.a, global2.a.a), vec3<u32>(u_input.c.x, u_input.b, u_input.d), var_1).x, var_1)))), _wgslsmith_div_vec3_i32(~vec3<i32>(13347i, global2.a.a << (global2.a.c.x % 32u), abs(global2.a.a)), vec3<i32>(10274i | global2.a.a, -1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -5749i, -1i, global2.a.a), vec4<i32>(-40555i, global2.a.a, global2.a.a, 5352i)))));
}

