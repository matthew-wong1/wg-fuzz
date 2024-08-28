struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: i32,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: i32,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: u32,
    d: f32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_1 = Struct_1(vec3<u32>(29451u, 89521u, 0u), false, 1i, 1u, true);

var<private> global2: array<u32, 27> = array<u32, 27>(39527u, 1461u, 0u, 4294967295u, 91919u, 49319u, 73163u, 127763u, 0u, 1u, 4294967295u, 80747u, 0u, 84960u, 73966u, 52336u, 0u, 0u, 1u, 0u, 0u, 37669u, 98470u, 1u, 1u, 0u, 1u);

var<private> global3: array<f32, 32>;

var<private> global4: Struct_2 = Struct_2(-1i, vec3<bool>(true, true, true));

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: i32) -> i32 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(select(-883f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global3[_wgslsmith_index_u32(1u, 32u)], _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(32790u, 32u)]))) * global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.c, global1.a.x), u_input.d.x), 32u)]), true)), _wgslsmith_f_op_f32(-267f + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(countOneBits(~global1.d), 32u)]), _wgslsmith_f_op_f32(f32(-1f) * -1229f));
    let var_1 = var_0.wz;
    global2 = array<u32, 27>();
    let var_2 = vec2<u32>(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~_wgslsmith_mod_u32(48445u, 1u), ~(~global1.a.x)), 27u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~u_input.c, 27u)], 27u)]) >> ((~vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, 0u), vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c, 27u)], 27u)], u_input.c)), global2[_wgslsmith_index_u32(~u_input.c, 27u)]) ^ ~vec2<u32>(global1.d, global1.d)) % vec2<u32>(32u));
    let var_3 = -_wgslsmith_div_vec4_i32(vec4<i32>(-u_input.b.x, _wgslsmith_dot_vec2_i32(u_input.b.zx, vec2<i32>(9107i, global4.a)), ~u_input.b.x, u_input.b.x) | select(_wgslsmith_clamp_vec4_i32(vec4<i32>(global1.c, arg_0, u_input.b.x, global1.c), vec4<i32>(arg_0, arg_0, global4.a, 2147483647i), vec4<i32>(29143i, -8869i, u_input.b.x, -46295i)), -vec4<i32>(0i, global4.a, global1.c, global4.a), vec4<bool>(false, global1.e, true, global1.e)), -_wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(1i, u_input.b.x, arg_0, u_input.b.x), vec4<i32>(1i, global4.a, 1i, global4.a)), vec4<i32>(arg_0, -26650i, global4.a, global4.a)));
    return 1062i;
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: Struct_2) -> u32 {
    let var_0 = true;
    global3 = array<f32, 32>();
    var var_1 = vec3<u32>(global2[_wgslsmith_index_u32(~55563u & global1.a.x, 27u)], firstLeadingBit(global1.d << (min(reverseBits(u_input.d.x), _wgslsmith_sub_u32(4294967295u, 1u)) % 32u)), 30743u);
    let var_2 = Struct_2(_wgslsmith_add_i32(reverseBits(~(~global1.c)), select(-2147483647i, ~(~arg_0), all(vec4<bool>(global1.b, false, global1.e, global1.e)))), select(select(vec3<bool>(2719u <= global1.a.x, !global4.b.x, arg_2.a < 6609i), vec3<bool>(!global4.b.x, true, true), arg_2.b), vec3<bool>(any(vec2<bool>(global1.b, true)), any(select(vec2<bool>(global1.e, arg_2.b.x), global4.b.xy, arg_2.b.yy)), arg_2.b.x), arg_2.b));
    let var_3 = 531f;
    return ~(~(1u ^ _wgslsmith_sub_u32(4294967295u, min(50989u, var_1.x))));
}

fn func_1(arg_0: Struct_2) -> u32 {
    let var_0 = -vec4<i32>(1i, u_input.b.x, global1.c, min(-1i, _wgslsmith_dot_vec3_i32(u_input.b | vec3<i32>(-2147483647i, -53444i, 57681i), ~u_input.b)));
    let var_1 = _wgslsmith_mod_vec2_i32(vec2<i32>(-25610i, 28895i), vec2<i32>(1241i, -global4.a));
    global3 = array<f32, 32>();
    let var_2 = var_0;
    var var_3 = Struct_1(global1.a, global1.c < ~min(~10722i, _wgslsmith_sub_i32(-1i, arg_0.a)), abs(_wgslsmith_div_i32(~53899i, u_input.b.x)), u_input.c, true);
    return func_3(func_2(var_1.x), global3[_wgslsmith_index_u32(var_3.a.x, 32u)], arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 27>();
    var var_0 = 25893i;
    global3 = array<f32, 32>();
    var_0 = global1.c >> (~55681u % 32u);
    global0 = global1.c;
    let var_1 = Struct_1(vec3<u32>(16757u, ~(~func_1(Struct_2(-2147483647i, global4.b))), global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a, countOneBits(global1.d), global1.a.x), 27u)]), all(select(!vec3<bool>(global4.b.x, true, global1.e), select(vec3<bool>(global1.e, global4.b.x, global1.e), vec3<bool>(true, global4.b.x, false), global4.b), all(vec4<bool>(false, true, global4.b.x, global4.b.x)))) == false, 2147483647i, reverseBits(_wgslsmith_div_u32(global2[_wgslsmith_index_u32(~(~81922u), 27u)], 5534u ^ u_input.d.x)), !global4.b.x);
    global3 = array<f32, 32>();
    var var_2 = Struct_1(global1.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(537u, 32u)] - -1557f) * _wgslsmith_f_op_f32(f32(-1f) * -334f)), global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~1156u, 27u)], 32u)])) <= _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global3[_wgslsmith_index_u32(9666u, 32u)], global3[_wgslsmith_index_u32(~global1.a.x, 32u)]))), abs(firstTrailingBit(0i)), global2[_wgslsmith_index_u32(~11009u, 27u)], global1.e);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(var_1.a.xy, global1.a.xz) << (countOneBits(vec2<u32>(67830u, u_input.c)) % vec2<u32>(32u)), global1.a.xy), var_1.a.xy), ~max(~(~var_1.a.yy), vec2<u32>(_wgslsmith_mult_u32(34706u, 0u), countOneBits(42919u))), 5146u, _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(func_3(-var_1.c << (35461u % 32u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c, 27u)], 27u)], 32u)])) * 971f), Struct_2(u_input.b.x, vec3<bool>(true, false, true))), 32u)]), vec3<i32>(min(u_input.b.x, ~var_1.c), ~(~global4.a) << (1u % 32u), _wgslsmith_add_i32(var_1.c, 12974i)));
}

