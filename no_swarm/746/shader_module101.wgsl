struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec3<bool>,
    c: u32,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec3<f32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(4294967295u, 0u, 25079u);

var<private> global1: f32;

var<private> global2: array<bool, 18>;

var<private> global3: array<vec4<u32>, 28> = array<vec4<u32>, 28>(vec4<u32>(0u, 4294967295u, 0u, 60752u), vec4<u32>(1u, 9248u, 0u, 6622u), vec4<u32>(95552u, 0u, 0u, 4892u), vec4<u32>(4294967295u, 0u, 15579u, 0u), vec4<u32>(62527u, 4294967295u, 1u, 18259u), vec4<u32>(27861u, 4294967295u, 4294967295u, 0u), vec4<u32>(73564u, 1u, 0u, 37402u), vec4<u32>(0u, 25946u, 0u, 11802u), vec4<u32>(4294967295u, 1u, 6987u, 4294967295u), vec4<u32>(2281u, 8327u, 31303u, 1u), vec4<u32>(0u, 26491u, 37859u, 0u), vec4<u32>(1u, 121766u, 41408u, 0u), vec4<u32>(36900u, 4294967295u, 1u, 45287u), vec4<u32>(42157u, 0u, 1u, 31234u), vec4<u32>(3510u, 4294967295u, 4294967295u, 101388u), vec4<u32>(0u, 80108u, 1u, 8942u), vec4<u32>(1u, 0u, 0u, 47645u), vec4<u32>(1u, 1u, 4294967295u, 54833u), vec4<u32>(0u, 0u, 1u, 4294967295u), vec4<u32>(82862u, 0u, 46877u, 26422u), vec4<u32>(28373u, 35166u, 66027u, 19835u), vec4<u32>(40901u, 16496u, 10623u, 38757u), vec4<u32>(46844u, 1u, 4294967295u, 0u), vec4<u32>(9530u, 1u, 42303u, 28088u), vec4<u32>(13499u, 668u, 48069u, 4294967295u), vec4<u32>(35568u, 22043u, 1u, 21491u), vec4<u32>(12534u, 4294967295u, 4294967295u, 1u), vec4<u32>(4294967295u, 1u, 22746u, 0u));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3() -> f32 {
    global3 = array<vec4<u32>, 28>();
    global3 = array<vec4<u32>, 28>();
    let var_0 = 1f;
    let var_1 = all(vec3<bool>(global2[_wgslsmith_index_u32(68526u >> (firstLeadingBit(18471u) % 32u), 18u)], global2[_wgslsmith_index_u32(u_input.b, 18u)], any(vec3<bool>(true, false, !global2[_wgslsmith_index_u32(44812u, 18u)]))));
    let var_2 = vec2<i32>(reverseBits(u_input.a), 2147483647i);
    return 1000f;
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_1) -> bool {
    let var_0 = select(!arg_1.b.wx, arg_1.b.xx, any(select(select(arg_1.b.wxw, select(vec3<bool>(false, false, false), vec3<bool>(false, arg_1.b.x, true), arg_1.b.x), !arg_1.b.yxx), select(!vec3<bool>(global2[_wgslsmith_index_u32(1u, 18u)], arg_1.b.x, true), !vec3<bool>(arg_1.b.x, global2[_wgslsmith_index_u32(0u, 18u)], global2[_wgslsmith_index_u32(11748u, 18u)]), arg_1.b.yzy), !(!arg_1.b.wzy))));
    var var_1 = vec4<i32>(arg_0.x, ~u_input.d, ~0i, min(arg_1.c.x, -32549i));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    var var_3 = Struct_3(-_wgslsmith_dot_vec3_i32(var_1.wzz, ~_wgslsmith_mod_vec3_i32(arg_1.c, vec3<i32>(u_input.a, 9834i, 1i))), arg_1.b.ywx, _wgslsmith_mod_u32(_wgslsmith_mod_u32(1u, 1u), ~1u), _wgslsmith_f_op_f32(func_3()));
    var_3 = Struct_3(-_wgslsmith_div_i32(var_1.x, firstTrailingBit(-2147483647i) | (var_3.a << (49867u % 32u))), vec3<bool>(arg_1.b.x, !arg_1.b.x, true), 21350u, _wgslsmith_f_op_f32(func_3()));
    return any(select(!(!vec3<bool>(global2[_wgslsmith_index_u32(5936u, 18u)], global2[_wgslsmith_index_u32(var_3.c, 18u)], var_3.b.x)), vec3<bool>(var_0.x, any(!vec3<bool>(var_3.b.x, global2[_wgslsmith_index_u32(global0.x, 18u)], true)), any(arg_1.b.wxw)), var_3.b));
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: vec2<f32>, arg_3: bool) -> f32 {
    let var_0 = !(!select(!(!vec3<bool>(false, global2[_wgslsmith_index_u32(132603u, 18u)], true)), vec3<bool>(any(vec4<bool>(true, arg_3, true, arg_3)), all(vec2<bool>(true, global2[_wgslsmith_index_u32(global0.x, 18u)])), any(vec2<bool>(false, true))), vec3<bool>(false, all(vec4<bool>(global2[_wgslsmith_index_u32(41747u, 18u)], arg_3, false, true)), func_2(vec4<i32>(u_input.c, 14733i, arg_1, u_input.e.x), Struct_1(2147483647i, vec4<bool>(global2[_wgslsmith_index_u32(0u, 18u)], global2[_wgslsmith_index_u32(4294967295u, 18u)], true, true), vec3<i32>(arg_1, u_input.a, -2147483647i))))));
    var var_1 = vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_mult_u32(65315u, _wgslsmith_div_u32(_wgslsmith_mult_u32(33990u, 1u), abs(3715u))), reverseBits(u_input.b << (abs(13748u) % 32u))), _wgslsmith_add_u32(_wgslsmith_mult_u32(arg_0, 1u), global0.x), ~_wgslsmith_clamp_u32(~global0.x, u_input.b, arg_0), _wgslsmith_sub_u32(global0.x, ~u_input.b));
    var var_2 = arg_1;
    let var_3 = Struct_2(Struct_1(arg_1, vec4<bool>(true, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(global0.zx ^ global0.yx, _wgslsmith_mod_vec2_u32(global0.yy, vec2<u32>(50502u, arg_0))), 18u)], !arg_3 & arg_3, false), u_input.e.yww));
    var var_4 = var_3;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + _wgslsmith_f_op_f32(-arg_2.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(~(~17614u), -6949i, vec2<f32>(_wgslsmith_f_op_f32(max(-1000f, 1133f)), _wgslsmith_f_op_f32(f32(-1f) * -1396f)), !global2[_wgslsmith_index_u32(~global0.x, 18u)]))));
    var_0 = -475f;
    var_0 = -1036f;
    var var_1 = Struct_3(1791i, vec3<bool>(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b ^ 33453u, global0.x), 18u)], true, u_input.c <= u_input.d), ~firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(71348u, global0.x, global0.x), _wgslsmith_add_vec3_u32(vec3<u32>(global0.x, 4294967295u, 0u), vec3<u32>(21450u, global0.x, 61148u)))), _wgslsmith_f_op_f32(f32(-1f) * -162f));
    var var_2 = _wgslsmith_dot_vec3_u32(firstTrailingBit(_wgslsmith_add_vec3_u32(min(vec3<u32>(150302u, var_1.c, global0.x), max(vec3<u32>(81408u, 1968u, 1u), vec3<u32>(var_1.c, 4294967295u, var_1.c))), ~(vec3<u32>(1u, 0u, u_input.b) ^ vec3<u32>(global0.x, var_1.c, 29712u)))), vec3<u32>(~global0.x, (global0.x >> ((global0.x << (25490u % 32u)) % 32u)) & 38117u, ~var_1.c));
    global0 = _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(~global0.yz, firstLeadingBit(global0.zy)), var_1.c, 48395u) << (_wgslsmith_add_vec3_u32(~vec3<u32>(global0.x, 19004u, u_input.b), ~(~vec3<u32>(1u, 29046u, u_input.b))) % vec3<u32>(32u)), vec3<u32>(~u_input.b, select(73033u, 81567u, true), global0.x));
    global0 = _wgslsmith_mult_vec3_u32(~vec3<u32>(4294967295u, var_1.c, 0u), ~vec3<u32>(global0.x, ~(~var_1.c), firstTrailingBit(~var_1.c)));
    var_2 = global0.x;
    var var_3 = Struct_2(Struct_1(~u_input.a, vec4<bool>(global2[_wgslsmith_index_u32(~u_input.b, 18u)], var_1.b.x, _wgslsmith_f_op_f32(-var_1.d) > var_1.d, true || var_1.b.x), u_input.e.zyy));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-108f, 341f, 358f), vec3<f32>(-745f, var_1.d, -151f))), vec3<f32>(1283f, var_1.d, var_1.d)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(222f, var_1.d, var_1.d), vec3<f32>(var_1.d, 639f, var_1.d), var_1.b)))), vec3<f32>(-1176f, 1000f, -917f))), ~(-vec2<i32>(u_input.a, _wgslsmith_dot_vec2_i32(var_3.a.c.zx, u_input.e.yy))));
}

