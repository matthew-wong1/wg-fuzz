struct Struct_1 {
    a: vec2<bool>,
    b: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
    c: Struct_2,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
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

var<private> global0: array<u32, 7> = array<u32, 7>(4294967295u, 0u, 15852u, 25281u, 21053u, 4294967295u, 0u);

var<private> global1: array<vec4<bool>, 7> = array<vec4<bool>, 7>(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false));

var<private> global2: Struct_1 = Struct_1(vec2<bool>(false, false), -1747f);

var<private> global3: vec3<u32>;

var<private> global4: Struct_1;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec4<f32>) -> vec2<bool> {
    let var_0 = Struct_2(vec3<f32>(453f, -225f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global4.b)))), Struct_1(select(select(select(vec2<bool>(true, global4.a.x), vec2<bool>(true, global4.a.x), vec2<bool>(global4.a.x, true)), global4.a, vec2<bool>(global4.a.x, global4.a.x)), vec2<bool>(-37483i <= u_input.a, global2.a.x && global2.a.x), true), _wgslsmith_f_op_f32(-global4.b)));
    return global2.a;
}

fn func_2(arg_0: f32) -> f32 {
    let var_0 = -1000f;
    var var_1 = Struct_1(!(!(!func_3(vec4<f32>(635f, -1000f, -279f, global4.b)))), -1073f);
    var var_2 = vec2<i32>(9465i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a << (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 7u)], 7u)] % 32u), -u_input.a, _wgslsmith_div_i32(u_input.a, -191i), select(u_input.a, u_input.a, var_1.a.x)), vec4<i32>(u_input.a, abs(u_input.a), reverseBits(0i), abs(1i)))) << (global3.xx % vec2<u32>(32u));
    var_2 = _wgslsmith_mult_vec2_i32(vec2<i32>(countOneBits(_wgslsmith_clamp_i32(~2147483647i, _wgslsmith_mod_i32(6096i, -1i), abs(10908i))), i32(-1i) * -62948i), vec2<i32>(countOneBits(select(u_input.a, u_input.a, global4.a.x)) << (firstTrailingBit(global0[_wgslsmith_index_u32(global3.x, 7u)]) % 32u), max(countOneBits(min(var_2.x, 14099i)), _wgslsmith_div_i32(-var_2.x, -3365i))));
    var var_3 = ~(~global0[_wgslsmith_index_u32(40141u, 7u)] ^ ~(~countOneBits(global0[_wgslsmith_index_u32(global3.x, 7u)])));
    return -1025f;
}

fn func_1() -> Struct_2 {
    global3 = _wgslsmith_div_vec3_u32(vec3<u32>(min(~global3.x, abs(global3.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(41546u, 18794u, 4294967295u), vec3<u32>(1u, global0[_wgslsmith_index_u32(10427u, 7u)], 54587u)) ^ 14023u, ~global0[_wgslsmith_index_u32(4294967295u, 7u)]) & (vec3<u32>(_wgslsmith_dot_vec2_u32(global3.xz, global3.zy), _wgslsmith_mult_u32(0u, 28990u), abs(1u)) | _wgslsmith_sub_vec3_u32(~vec3<u32>(global0[_wgslsmith_index_u32(0u, 7u)], 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global3.x, 7u)], 7u)]), vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 7u)], global3.x, 48787u) ^ vec3<u32>(36916u, 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global3.x, 7u)], 7u)]))), abs(~(~vec3<u32>(global3.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 7u)], 7u)], 10732u))));
    let var_0 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1901f))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global2.b)), _wgslsmith_div_f32(global2.b, global4.b)), global4.b, true)), _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(trunc(global4.b))))), Struct_1(global4.a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-820f, _wgslsmith_f_op_f32(f32(-1f) * -1229f)))))));
    var var_1 = vec2<i32>(u_input.a, u_input.a);
    global1 = array<vec4<bool>, 7>();
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1213f, global2.b, _wgslsmith_f_op_f32(global4.b + _wgslsmith_f_op_f32(floor(var_0.b.b)))))), Struct_1(var_0.b.a, -1052f));
    return Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(560f)), _wgslsmith_div_f32(561f, 985f), -1000f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_2.a)))), Struct_1(global4.a, _wgslsmith_f_op_f32(global2.b + 1179f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(~(~(~vec2<u32>(global0[_wgslsmith_index_u32(1u, 7u)], 1u))), func_1(), Struct_2(vec3<f32>(global4.b, _wgslsmith_f_op_f32(-global4.b), global4.b), Struct_1(!global2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.b + 2054f)))), ~(~_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, global0[_wgslsmith_index_u32(global3.x, 7u)], global3.x, global3.x), vec4<u32>(global0[_wgslsmith_index_u32(36852u, 7u)], 4294967295u, global3.x, global3.x)), vec4<u32>(global3.x, global0[_wgslsmith_index_u32(global3.x, 7u)], 1u, 23326u))));
    global0 = array<u32, 7>();
    global4 = Struct_1(global2.a, global4.b);
    let var_1 = u_input.a;
    global1 = array<vec4<bool>, 7>();
    var var_2 = _wgslsmith_f_op_f32(-global2.b);
    let var_3 = abs(reverseBits(select(abs(firstLeadingBit(vec2<i32>(u_input.a, 1i))), vec2<i32>(i32(-1i) * -12564i, ~2147483647i), true)));
    let var_4 = _wgslsmith_clamp_vec4_u32(vec4<u32>(18802u, 33304u, global3.x, (1u >> (0u % 32u)) & ~global0[_wgslsmith_index_u32(1u, 7u)]), firstLeadingBit(vec4<u32>(~(~var_0.d.x), global3.x | ~84295u, ~global0[_wgslsmith_index_u32(0u, 7u)] << (42046u % 32u), var_0.d.x)), countOneBits(_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, global3.x, 1u, 4294967295u), var_0.d), vec4<u32>(var_0.a.x, var_0.a.x, 46032u, 4394u))) >> (firstTrailingBit(countOneBits(reverseBits(vec4<u32>(var_0.d.x, var_0.d.x, var_0.a.x, var_0.d.x)))) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global2.b * _wgslsmith_f_op_f32(f32(-1f) * -920f)))), _wgslsmith_f_op_f32(-1150f + global4.b)));
}

