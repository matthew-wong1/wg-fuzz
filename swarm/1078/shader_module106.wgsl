struct Struct_1 {
    a: i32,
    b: bool,
    c: u32,
    d: vec4<u32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: bool,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: bool,
    c: i32,
    d: Struct_2,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-25654i, true, 1u, vec4<u32>(1u, 4294967295u, 53584u, 9216u), vec2<f32>(-499f, -134f));

var<private> global1: i32 = 0i;

var<private> global2: array<f32, 32>;

var<private> global3: array<vec4<u32>, 7> = array<vec4<u32>, 7>(vec4<u32>(50278u, 1u, 90270u, 0u), vec4<u32>(4294967295u, 16363u, 1u, 1u), vec4<u32>(27777u, 1u, 54338u, 19127u), vec4<u32>(77899u, 0u, 4294967295u, 45295u), vec4<u32>(30568u, 1u, 41948u, 37526u), vec4<u32>(0u, 75037u, 50789u, 4294967295u), vec4<u32>(4294967295u, 1u, 1u, 69097u));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<i32>) -> f32 {
    var var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_vec2_f32(-global0.e);
    let var_2 = Struct_2(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(countOneBits(vec4<i32>(-1i, 0i, var_0.x, 2147483647i) >> (vec4<u32>(global0.d.x, u_input.a, u_input.c, 4294967295u) % vec4<u32>(32u))), -(~vec4<i32>(-18319i, 2147483647i, -138i, 0i))), reverseBits(firstTrailingBit(countOneBits(vec4<i32>(var_0.x, global0.a, 31105i, 1i))))), global0.c & u_input.e, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(657f - _wgslsmith_f_op_f32(global0.e.x + global0.e.x)), global0.e.x)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(395f))), u_input.b, global3[_wgslsmith_index_u32(~(~u_input.e), 7u)]);
    var var_3 = vec2<bool>(true, _wgslsmith_add_i32(44557i, _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(var_2.d.zy, vec2<i32>(global0.a, 0i)), -2147483647i, arg_0.x)) == max(~_wgslsmith_div_i32(80681i, u_input.b.x), 2147483647i));
    var var_4 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.e + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-global0.e)))) * var_1), true, 1i, var_2, ~(~firstLeadingBit(vec3<i32>(global0.a, arg_0.x, arg_0.x))));
    return var_1.x;
}

fn func_2() -> vec2<u32> {
    global0 = Struct_1(u_input.b.x, false, ~(0u << (min(u_input.d.x, global0.c) % 32u)) >> (global0.d.x % 32u), abs(~global0.d | select(global3[_wgslsmith_index_u32(~9445u, 7u)], vec4<u32>(global0.d.x, u_input.a, 17280u, 16713u), select(vec4<bool>(global0.b, global0.b, false, true), vec4<bool>(global0.b, global0.b, true, global0.b), true))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(global0.e.x, global2[_wgslsmith_index_u32(1u, 32u)]), global2[_wgslsmith_index_u32(~global0.d.x, 32u)]), vec2<f32>(global2[_wgslsmith_index_u32(countOneBits(u_input.c), 32u)], _wgslsmith_f_op_f32(-global0.e.x))))));
    let var_0 = vec4<f32>(-773f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.e.x - 1000f), _wgslsmith_div_f32(531f, -374f)) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(u_input.b)))))), global0.e.x, 188f);
    var var_1 = vec4<i32>(abs(global0.a), -global0.a, _wgslsmith_add_i32(0i | u_input.b.x, 0i), ~(~(-1i)));
    let var_2 = var_0;
    let var_3 = true;
    return vec2<u32>(u_input.d.x, u_input.e) >> (u_input.d.xy % vec2<u32>(32u));
}

fn func_4(arg_0: bool, arg_1: vec2<i32>) -> Struct_1 {
    var var_0 = Struct_1(-arg_1.x, global0.b, _wgslsmith_div_u32(_wgslsmith_add_u32(_wgslsmith_sub_u32(u_input.d.x, u_input.c), 1u) << ((83642u >> ((8005u & u_input.d.x) % 32u)) % 32u), ~(~1u)), global0.d, _wgslsmith_f_op_vec2_f32(global0.e * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1411f, -1056f)) + vec2<f32>(_wgslsmith_f_op_f32(sign(1000f)), 688f))));
    var var_1 = !vec3<bool>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -740f))) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.e.x + global2[_wgslsmith_index_u32(global0.c, 32u)]) - _wgslsmith_f_op_f32(min(global0.e.x, global0.e.x))), func_2().x != ~0u, any(select(vec2<bool>(false, arg_0), vec2<bool>(global0.b, false), vec2<bool>(global0.b, false))));
    let var_2 = Struct_1(countOneBits(_wgslsmith_sub_i32(-6202i, _wgslsmith_add_i32(u_input.b.x, u_input.b.x)) << (~1u % 32u)), select(true, !arg_0, any(vec3<bool>(var_0.b, false, var_0.b))), func_2().x, max(global0.d | global0.d, var_0.d), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-709f)) * _wgslsmith_f_op_f32(156f - -436f)) + 802f), global0.e.x));
    var var_3 = var_2.d;
    var var_4 = vec3<f32>(var_0.e.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(156f - var_2.e.x), -1186f)), _wgslsmith_f_op_f32(step(-1880f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-177f))), _wgslsmith_f_op_f32(var_0.e.x + _wgslsmith_div_f32(661f, var_2.e.x)))))));
    return Struct_1(-_wgslsmith_clamp_i32(_wgslsmith_div_i32(global0.a, i32(-1i) * -13610i), -(i32(-1i) * -2147483647i), -2147483647i), true, 67718u, vec4<u32>(~1u, 4294967295u, var_2.c, 1u), var_0.e);
}

fn func_1() -> vec4<bool> {
    global1 = u_input.b.x;
    global1 = global0.a;
    var var_0 = func_4(true, _wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32((vec2<i32>(global0.a, 61630i) << (global0.d.yy % vec2<u32>(32u))) & u_input.b.xy, u_input.b.yx & min(vec2<i32>(global0.a, u_input.b.x), u_input.b.xz)), -(~u_input.b.yx) >> (~func_2() % vec2<u32>(32u))));
    var_0 = func_4(true, u_input.b.yy);
    let var_1 = ~var_0.d.x;
    return vec4<bool>(~(~var_0.a) != _wgslsmith_add_i32(select(_wgslsmith_sub_i32(var_0.a, u_input.b.x), _wgslsmith_add_i32(global0.a, 6503i), any(vec4<bool>(true, var_0.b, false, global0.b))), func_4(all(vec2<bool>(true, var_0.b)), -vec2<i32>(5411i, u_input.b.x)).a), !global0.b, var_0.b, all(!(!vec3<bool>(false, true, global0.b))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -928f)));
    let var_1 = func_1();
    var var_2 = func_4(func_1().x, ~(u_input.b.yz | u_input.b.zz)).b;
    global1 = _wgslsmith_add_i32(global0.a, firstTrailingBit(_wgslsmith_mod_i32(0i, global0.a)));
    var var_3 = Struct_2(select(global0.a, ~(func_4(false, vec2<i32>(-2147483647i, global0.a)).a >> (81488u % 32u)), _wgslsmith_f_op_f32(max(global0.e.x, _wgslsmith_f_op_f32(-var_0))) < _wgslsmith_f_op_f32(abs(-718f))), _wgslsmith_sub_u32(u_input.d.x, 1u), _wgslsmith_add_u32(~global0.c, u_input.a) <= (~u_input.d.x << (8174u % 32u)), u_input.b, vec4<u32>(~758u, _wgslsmith_clamp_u32(0u, _wgslsmith_div_u32(u_input.d.x, 4294967295u), global0.c | 1u) ^ ((4294967295u >> (0u % 32u)) & reverseBits(global0.d.x)), ~func_4(true, ~vec2<i32>(u_input.b.x, 2147483647i)).d.x, 12949u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.d.x, 4294967295u), vec2<u32>(var_3.e.x, u_input.e) & vec2<u32>(88353u, u_input.d.x)) | _wgslsmith_div_u32(global0.c, u_input.c), global0.d.x), vec3<u32>(var_3.b, 11537u, ~(90706u | u_input.a)) ^ vec3<u32>(global0.c, var_3.b, 123341u), var_3.d.x, ~var_3.e.x, 23692u & _wgslsmith_dot_vec4_u32(firstLeadingBit(var_3.e), global3[_wgslsmith_index_u32(global0.c, 7u)]));
}

