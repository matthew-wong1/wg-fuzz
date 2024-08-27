struct Struct_1 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: vec2<f32>,
    d: u32,
    e: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<i32>(-1i, -56102i), vec2<f32>(-1727f, 570f), vec2<f32>(-1909f, -252f), 1u, i32(-2147483648));

var<private> global1: Struct_1 = Struct_1(vec2<i32>(-1i, -40i), vec2<f32>(-1405f, -173f), vec2<f32>(-183f, 845f), 3783u, 0i);

var<private> global2: array<f32, 10> = array<f32, 10>(663f, 1537f, -1750f, -1000f, -1672f, -318f, -991f, 302f, -312f, -1000f);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c.x, global1.c.x, global1.c.x)))))))));
    return 483f;
}

fn func_2(arg_0: vec2<f32>, arg_1: f32) -> Struct_1 {
    var var_0 = 1316f;
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-1265f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.b.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) + _wgslsmith_f_op_f32(func_3(vec2<bool>(true, true), Struct_1(global1.a, vec2<f32>(742f, -796f), vec2<f32>(global0.b.x, -909f), 11967u, u_input.c.x)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.x))), global1.c.x) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global1.d, 10u)]), _wgslsmith_f_op_f32(f32(-1f) * -420f), global0.b.x, arg_1))));
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), 2045f, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(reverseBits(0u), 10u)] - _wgslsmith_f_op_f32(ceil(global1.b.x))), _wgslsmith_f_op_f32(abs(-929f))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_1, arg_0.x, global1.b.x, -213f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, arg_0.x, -1000f, 847f) + vec4<f32>(arg_0.x, -1727f, -2018f, -880f))))));
    let var_2 = vec4<u32>(4294967295u, firstTrailingBit(~23511u), _wgslsmith_mod_u32(global1.d | global0.d, max(select(4294967295u, _wgslsmith_mod_u32(global0.d, u_input.a.x), true), _wgslsmith_dot_vec2_u32(~u_input.d, u_input.d | u_input.a.yz))), global0.d);
    global0 = Struct_1(select(select(-vec2<i32>(2147483647i, global1.e), global0.a, vec2<bool>(true, true)), max(_wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(global0.a, vec2<i32>(u_input.c.x, u_input.c.x)), u_input.c.xz, ~vec2<i32>(global0.e, 1i)), ~vec2<i32>(u_input.c.x, u_input.c.x) << (~vec2<u32>(global1.d, 9796u) % vec2<u32>(32u))), all(vec2<bool>(false, var_1.x > 1131f))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-2234f))), 576f), vec2<f32>(604f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~var_2.x, 10u)]))), _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(~6172u, firstLeadingBit(49286u), global0.d), ~global1.d, ~1u) & _wgslsmith_mult_u32(var_2.x, global1.d), -u_input.c.x);
    return Struct_1(_wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(firstLeadingBit(global0.a), abs(vec2<i32>(14250i, global1.a.x))), vec2<i32>(abs(27262i), global0.e)) << (firstLeadingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(global1.d, var_2.x), u_input.d, vec2<u32>(34850u, 1u))) % vec2<u32>(32u)), arg_0, vec2<f32>(_wgslsmith_f_op_f32(trunc(arg_1)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0.x)) * global0.b.x)), reverseBits(1u), 52565i);
}

fn func_1(arg_0: u32, arg_1: vec2<i32>) -> Struct_1 {
    var var_0 = select(vec3<bool>(true, ~4294967295u == global0.d, false), !(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false))), any(vec4<bool>(false, false, true, false)));
    var var_1 = _wgslsmith_div_i32(-global1.e, countOneBits(-arg_1.x));
    var var_2 = _wgslsmith_dot_vec2_u32(~u_input.a.zz, u_input.a.zz);
    var var_3 = func_2(_wgslsmith_f_op_vec2_f32(global0.c + vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global1.b.x * 116f))), _wgslsmith_div_f32(-1406f, global1.b.x))), _wgslsmith_div_f32(-270f, _wgslsmith_f_op_f32(global0.c.x - global2[_wgslsmith_index_u32(4294967295u, 10u)])));
    global2 = array<f32, 10>();
    return func_2(_wgslsmith_f_op_vec2_f32(var_3.c * var_3.b), 1616f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(~1u >> (min(~(~41022u), ~_wgslsmith_mult_u32(u_input.a.x, 4294967295u)) % 32u), vec2<i32>(u_input.c.x, _wgslsmith_add_i32(firstLeadingBit(-62037i), global1.e)));
    var_0 = func_2(var_0.c, _wgslsmith_f_op_f32(trunc(global0.b.x)));
    let var_1 = Struct_1(vec2<i32>(-1i) * -abs(vec2<i32>(-27144i, global0.e)), _wgslsmith_div_vec2_f32(global0.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global1.b.x), _wgslsmith_f_op_f32(-global0.c.x)))), global0.c, ~_wgslsmith_mod_u32(global1.d, countOneBits(~45773u)), firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, _wgslsmith_div_i32(-2147483647i, global0.e), -24777i << (global1.d % 32u)), max(-vec3<i32>(u_input.c.x, -2147483647i, var_0.a.x), vec3<i32>(var_0.a.x, global1.a.x, var_0.e)))));
    global2 = array<f32, 10>();
    var var_2 = vec4<i32>(~_wgslsmith_div_i32(global0.a.x, -1i), -3928i, global1.a.x, global1.e);
    let var_3 = Struct_1(vec2<i32>(select(1i, _wgslsmith_mod_i32(-var_2.x, 24190i), true), var_2.x & ~global0.a.x), func_1(var_0.d, _wgslsmith_clamp_vec2_i32((vec2<i32>(global0.a.x, -47009i) | vec2<i32>(u_input.c.x, var_0.e)) | select(vec2<i32>(var_1.e, var_0.a.x), vec2<i32>(-38682i, var_1.e), vec2<bool>(false, true)), ~(~vec2<i32>(-48493i, global0.e)), u_input.c.yx)).b, global0.b, ~global1.d, -var_1.e);
    let var_4 = func_1(26786u, var_3.a);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c.x);
}

