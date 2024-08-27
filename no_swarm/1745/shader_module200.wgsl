struct Struct_1 {
    a: vec3<u32>,
    b: u32,
}

struct Struct_2 {
    a: bool,
    b: vec3<u32>,
    c: Struct_1,
    d: bool,
    e: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(24756u, 71309u, 95196u, 571u);

var<private> global1: array<Struct_2, 5> = array<Struct_2, 5>(Struct_2(false, vec3<u32>(0u, 1u, 4294967295u), Struct_1(vec3<u32>(4294967295u, 1u, 41448u), 0u), false, 1u), Struct_2(false, vec3<u32>(102346u, 1u, 4294967295u), Struct_1(vec3<u32>(18251u, 0u, 1u), 1u), true, 4294967295u), Struct_2(true, vec3<u32>(48068u, 9191u, 55753u), Struct_1(vec3<u32>(48109u, 4294967295u, 0u), 6824u), true, 4294967295u), Struct_2(false, vec3<u32>(4294967295u, 1u, 2643u), Struct_1(vec3<u32>(1u, 5321u, 11076u), 0u), true, 94885u), Struct_2(true, vec3<u32>(4294967295u, 0u, 1u), Struct_1(vec3<u32>(4294967295u, 27775u, 32814u), 1u), true, 31568u));

var<private> global2: array<vec3<f32>, 3> = array<vec3<f32>, 3>(vec3<f32>(-1179f, -2162f, -515f), vec3<f32>(1499f, -257f, -331f), vec3<f32>(-923f, 1411f, -1075f));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<bool>) -> vec4<u32> {
    let var_0 = Struct_2(arg_0.x, global0.zxz, Struct_1(global0.zww, 1u), any(vec2<bool>(true, true)) || all(vec4<bool>(select(false, arg_0.x, false), true != arg_0.x, true, all(vec2<bool>(arg_0.x, arg_0.x)))), 0u);
    let var_1 = select(vec4<i32>(71702i, _wgslsmith_add_i32(_wgslsmith_clamp_i32(1i ^ u_input.b, -u_input.b, -u_input.c.x), -1i), -40503i, u_input.c.x), firstTrailingBit(vec4<i32>(u_input.b, -41480i, i32(-1i) * -59128i, u_input.b)), select(select(vec4<bool>(false, arg_0.x, var_0.a, any(arg_0.wx)), !vec4<bool>(false, var_0.d, true, true), !arg_0), select(!select(arg_0, vec4<bool>(arg_0.x, true, true, false), var_0.a), select(!arg_0, vec4<bool>(true, arg_0.x, var_0.a, true), true), false), vec4<bool>(!(!var_0.a), all(select(vec3<bool>(false, var_0.d, arg_0.x), vec3<bool>(arg_0.x, false, arg_0.x), var_0.a)), arg_0.x, true)));
    var var_2 = _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(~(~u_input.a >> (~global0.xx % vec2<u32>(32u))), ~(~_wgslsmith_mult_vec2_u32(global0.yy, vec2<u32>(33856u, var_0.c.a.x)))), u_input.a);
    global2 = array<vec3<f32>, 3>();
    let var_3 = Struct_1(~((~global0.ywz | (vec3<u32>(0u, u_input.a.x, 4294967295u) & vec3<u32>(4294967295u, global0.x, 4294967295u))) << (vec3<u32>(1u, 105882u >> (global0.x % 32u), u_input.a.x) % vec3<u32>(32u))), reverseBits(~_wgslsmith_div_u32(~u_input.a.x, ~0u)));
    return vec4<u32>(~21871u, 48980u, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(abs(_wgslsmith_sub_vec4_u32(vec4<u32>(68811u, global0.x, var_3.b, u_input.a.x), vec4<u32>(var_3.a.x, 4294967295u, u_input.a.x, 4294967295u))), vec4<u32>(15284u, global0.x, 4294967295u, _wgslsmith_mod_u32(4294967295u, var_0.e))), countOneBits(vec4<u32>(_wgslsmith_dot_vec2_u32(global0.yw, vec2<u32>(var_3.a.x, 54642u)), _wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, 0u, 6725u, u_input.a.x), vec4<u32>(65956u, 0u, 5137u, global0.x)), 1u, abs(48340u)))), _wgslsmith_mult_u32(~_wgslsmith_div_u32(u_input.a.x, abs(global0.x)), var_3.b));
}

fn func_2() -> vec4<u32> {
    var var_0 = global1[_wgslsmith_index_u32(~max(1u, ~1u) << (_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(~(~global0.wx), abs(vec2<u32>(u_input.a.x, global0.x))), vec2<u32>(~global0.x, global0.x)) % 32u), 5u)];
    var var_1 = select(vec2<bool>(select(true, false, !any(vec3<bool>(false, false, true))), !var_0.d), select(vec2<bool>(var_0.a, !any(vec2<bool>(true, false))), select(vec2<bool>(true, var_0.a), vec2<bool>(true, true), (var_0.d && true) | any(vec2<bool>(var_0.d, false))), true), true);
    let var_2 = vec3<bool>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(723f - 338f)), -1000f)) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(602f, -260f))))), false, !(!var_0.a));
    global0 = _wgslsmith_clamp_vec4_u32(vec4<u32>(~3433u, 4294967295u >> (~_wgslsmith_add_u32(0u, var_0.b.x) % 32u), 1u, _wgslsmith_add_u32(firstTrailingBit(firstTrailingBit(var_0.b.x)), ~44770u)), ~abs(~(~vec4<u32>(4294967295u, global0.x, u_input.a.x, 58261u))), _wgslsmith_sub_vec4_u32(vec4<u32>(firstLeadingBit(countOneBits(39310u)), ~(~global0.x), ~select(var_0.b.x, 10978u, var_1.x), 4294967295u), ~func_3(select(vec4<bool>(false, true, true, true), vec4<bool>(var_2.x, true, true, var_0.d), vec4<bool>(var_0.a, var_0.a, true, var_0.a)))));
    let var_3 = select(var_2.x & false, var_0.d, true);
    return select(vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(~21071u, _wgslsmith_add_u32(0u, u_input.a.x), global0.x << (u_input.a.x % 32u)), u_input.a.x), 52625u, ~var_0.b.x, u_input.a.x), ~reverseBits(vec4<u32>(global0.x, ~47364u, ~43208u, 12644u)), !select(vec4<bool>(select(true, var_0.d, var_1.x), any(vec4<bool>(false, var_2.x, true, var_3)), !var_1.x, !var_1.x), vec4<bool>(select(var_1.x, var_0.a, var_0.a), all(vec4<bool>(var_0.d, false, false, true)), all(vec4<bool>(var_1.x, var_0.a, false, var_1.x)), any(vec2<bool>(var_2.x, true))), true));
}

fn func_1() -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, _wgslsmith_f_op_f32(ceil(-160f)), _wgslsmith_f_op_f32(f32(-1f) * -2004f), _wgslsmith_f_op_f32(f32(-1f) * -1321f))) - vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1780f), _wgslsmith_f_op_f32(abs(1346f))), _wgslsmith_f_op_f32(-686f * 1000f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(1809f)))), 391f)));
    let var_1 = !(!any(vec3<bool>(true, true, true)) | true);
    global0 = _wgslsmith_div_vec4_u32(func_2(), countOneBits(~vec4<u32>(~1u, global0.x, ~55319u, 13511u)));
    var var_2 = global1[_wgslsmith_index_u32(global0.x >> (u_input.a.x % 32u), 5u)];
    var_2 = Struct_2(all(select(select(select(vec3<bool>(true, var_1, var_2.a), vec3<bool>(var_2.d, var_1, var_1), vec3<bool>(var_2.a, false, var_1)), select(vec3<bool>(true, true, var_2.a), vec3<bool>(true, var_1, var_2.a), vec3<bool>(true, var_1, false)), var_1), vec3<bool>(all(vec3<bool>(var_2.d, false, var_1)), false, var_1 & var_2.a), !select(vec3<bool>(false, var_1, false), vec3<bool>(false, var_2.a, false), vec3<bool>(true, true, true)))), global0.yyw, var_2.c, var_0.x != -1020f, _wgslsmith_mod_u32(1u, 1u) ^ _wgslsmith_div_u32(_wgslsmith_sub_u32(max(global0.x, global0.x), 6885u), firstTrailingBit(global0.x) ^ global0.x));
    return max(_wgslsmith_sub_i32(0i, countOneBits(abs(8806i))), 0i) & u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1012f, 207f))), -1847f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -119f) * _wgslsmith_f_op_f32(floor(-974f)))), -1387f));
    let var_1 = reverseBits(62274u);
    var var_2 = abs(i32(-1i) * -1i) > func_1();
    var_0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(var_0.x, 1772f)), 399f, var_0.x) * _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(global2[_wgslsmith_index_u32(global0.x, 3u)], vec3<f32>(var_0.x, var_0.x, var_0.x)), _wgslsmith_f_op_vec3_f32(sign(global2[_wgslsmith_index_u32(u_input.a.x, 3u)]))))))));
    global1 = array<Struct_2, 5>();
    global2 = array<vec3<f32>, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(u_input.b, 1i), ~u_input.a.x, ~countOneBits(func_2()));
}

