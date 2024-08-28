struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(0u, Struct_1(0i), vec3<i32>(i32(-2147483648), -2386i, 50331i));

var<private> global1: array<vec4<bool>, 10>;

var<private> global2: array<vec4<bool>, 22>;

var<private> global3: array<bool, 28> = array<bool, 28>(true, false, true, true, false, true, true, false, false, true, true, true, false, false, false, true, false, false, false, false, true, false, false, true, true, true, false, true);

var<private> global4: vec3<u32>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool) -> u32 {
    global2 = array<vec4<bool>, 22>();
    var var_0 = global0.b;
    let var_1 = select(vec2<bool>(true, true), select(vec2<bool>(!arg_0, false && global3[_wgslsmith_index_u32(~4294967295u, 28u)]), select(vec2<bool>(arg_0 & true, !global3[_wgslsmith_index_u32(4294967295u, 28u)]), !(!vec2<bool>(arg_0, true)), vec2<bool>(false, true)), !select(select(vec2<bool>(arg_0, false), vec2<bool>(global3[_wgslsmith_index_u32(27543u, 28u)], true), vec2<bool>(global3[_wgslsmith_index_u32(global4.x, 28u)], false)), vec2<bool>(global3[_wgslsmith_index_u32(1u, 28u)], true), select(vec2<bool>(arg_0, false), vec2<bool>(global3[_wgslsmith_index_u32(4294967295u, 28u)], arg_0), vec2<bool>(true, global3[_wgslsmith_index_u32(4294967295u, 28u)])))), !vec2<bool>(true, any(!vec3<bool>(global3[_wgslsmith_index_u32(3030u, 28u)], global3[_wgslsmith_index_u32(2295u, 28u)], false))));
    var var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-504f, -1556f) + 1351f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -490f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1809f, -877f)))), _wgslsmith_f_op_f32(372f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(trunc(751f)))), true))));
    let var_3 = vec3<f32>(1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1740f), -264f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-301f))));
    return global0.a;
}

fn func_2(arg_0: vec4<u32>) -> Struct_2 {
    let var_0 = Struct_1(-u_input.a.x);
    var var_1 = Struct_1(var_0.a);
    var var_2 = -2147483647i;
    let var_3 = vec2<f32>(-320f, _wgslsmith_f_op_f32(-1000f + 1396f));
    let var_4 = Struct_1(abs(-31918i & ((global0.c.x >> (u_input.b.x % 32u)) ^ var_0.a)));
    return Struct_2(select(_wgslsmith_div_u32(func_3(!global3[_wgslsmith_index_u32(1u, 28u)]), global4.x), ~(global4.x >> (arg_0.x % 32u)), true), var_4, vec3<i32>(-(~(~global0.c.x)), var_0.a, 4698i));
}

fn func_1() -> i32 {
    var var_0 = !vec2<bool>(select(global3[_wgslsmith_index_u32(global4.x | global4.x, 28u)], true, !global3[_wgslsmith_index_u32(30341u, 28u)]) || ((-11542i << (1u % 32u)) >= _wgslsmith_dot_vec3_i32(u_input.d, vec3<i32>(-2147483647i, global0.c.x, 44732i))), !(!global3[_wgslsmith_index_u32(firstLeadingBit(63311u), 28u)]));
    global0 = func_2(vec4<u32>(u_input.c.x, abs(4294967295u), global0.a, 1u) >> (~countOneBits(u_input.c) % vec4<u32>(32u)));
    let var_1 = 137f;
    global4 = max(reverseBits(u_input.c.xzw), vec3<u32>(global0.a, ~(~(~global4.x)), _wgslsmith_dot_vec2_u32(~vec2<u32>(36391u, global0.a), countOneBits(vec2<u32>(u_input.b.x, 4294967295u)))));
    let var_2 = Struct_1(-39161i);
    return -2147483647i;
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: vec4<i32>, arg_3: vec4<u32>) -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_1, 1117f, -1122f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-308f, -381f, 394f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_1, 129f, 785f), vec3<f32>(arg_1, 701f, arg_1)) + vec3<f32>(1662f, -688f, arg_1))))));
    global3 = array<bool, 28>();
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-284f)), -731f);
    global0 = func_2(vec4<u32>(_wgslsmith_mod_u32(60543u, _wgslsmith_add_u32(2774u, global0.a)), arg_3.x, global0.a ^ (_wgslsmith_clamp_u32(global0.a, arg_3.x, 1u) & 687u), _wgslsmith_dot_vec3_u32(select(~vec3<u32>(67894u, 13317u, 18563u), arg_3.yww, !vec3<bool>(true, global3[_wgslsmith_index_u32(67267u, 28u)], true)), u_input.c.yxw)));
    let var_2 = _wgslsmith_mod_u32(abs(~reverseBits(arg_3.x)), ~(4294967295u << (arg_3.x % 32u)) | ~func_2(arg_3).a);
    return !global3[_wgslsmith_index_u32(~global4.x, 28u)];
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<bool>, 10>();
    var var_0 = func_4(Struct_2(~27529u, Struct_1(-4602i), select(-global0.c, u_input.d & max(vec3<i32>(u_input.d.x, u_input.d.x, u_input.d.x), vec3<i32>(u_input.a.x, 2147483647i, 1i)), !global3[_wgslsmith_index_u32(~global4.x, 28u)])), _wgslsmith_div_f32(-890f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(455f - -1877f))))), vec4<i32>(global0.b.a, firstTrailingBit(2147483647i), func_1(), _wgslsmith_dot_vec4_i32(select(vec4<i32>(-1i, 11833i, -12037i, u_input.d.x), vec4<i32>(global0.c.x, global0.c.x, -2147483647i, u_input.a.x), global1[_wgslsmith_index_u32(1u, 10u)]), firstTrailingBit(vec4<i32>(global0.c.x, global0.c.x, global0.b.a, u_input.d.x)))) ^ firstLeadingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(-47817i, u_input.d.x, 1i, u_input.a.x) >> (u_input.c % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, global0.c.x, global0.c.x, global0.b.a), vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, -2147483647i), vec4<i32>(global0.b.a, u_input.a.x, global0.b.a, -32921i)))), ~u_input.c);
    let var_1 = global4.x;
    var var_2 = global0.a;
    let var_3 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-258f - -341f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(776f + -332f)) * _wgslsmith_div_f32(-1092f, -765f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -215f)))), 1872f)));
    var_0 = global3[_wgslsmith_index_u32(global0.a, 28u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(var_3.x, var_3.x), u_input.c.x, -1i, 0u);
}

