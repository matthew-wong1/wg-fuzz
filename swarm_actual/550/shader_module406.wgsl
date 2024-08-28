struct Struct_1 {
    a: bool,
    b: u32,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(true, 60439u, 61830u, 18352u);

var<private> global1: u32;

var<private> global2: array<vec4<u32>, 15> = array<vec4<u32>, 15>(vec4<u32>(52523u, 1u, 0u, 15426u), vec4<u32>(21949u, 4294967295u, 1u, 0u), vec4<u32>(1u, 38552u, 4294967295u, 46796u), vec4<u32>(1u, 4294967295u, 4206u, 1u), vec4<u32>(0u, 1u, 163u, 1u), vec4<u32>(0u, 46488u, 79700u, 1u), vec4<u32>(40215u, 20218u, 4294967295u, 4294967295u), vec4<u32>(0u, 1u, 0u, 63010u), vec4<u32>(14614u, 17327u, 0u, 35856u), vec4<u32>(0u, 30817u, 109u, 0u), vec4<u32>(1u, 1u, 11111u, 83192u), vec4<u32>(6998u, 25903u, 23371u, 1u), vec4<u32>(0u, 14554u, 9324u, 4294967295u), vec4<u32>(4294967295u, 36241u, 4294967295u, 61755u), vec4<u32>(1u, 85362u, 6406u, 0u));

var<private> global3: array<vec4<bool>, 24>;

var<private> global4: u32 = 4286u;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: bool) -> vec3<u32> {
    global1 = global0.b;
    global3 = array<vec4<bool>, 24>();
    let var_0 = vec2<i32>(1i, 2147483647i);
    var var_1 = Struct_4(383f, Struct_3(all(!select(vec2<bool>(false, global0.a), vec2<bool>(true, arg_0), vec2<bool>(true, true)))), Struct_3(any(!vec2<bool>(true, global0.a))));
    let var_2 = u_input.c;
    return vec3<u32>(0u, global0.b, ~0u);
}

fn func_3(arg_0: vec4<bool>, arg_1: vec2<u32>, arg_2: vec2<i32>, arg_3: vec2<i32>) -> i32 {
    let var_0 = _wgslsmith_dot_vec2_i32(arg_2, vec2<i32>(0i, ~1i));
    let var_1 = true;
    global4 = ~countOneBits(_wgslsmith_div_u32(1u, abs(~global0.b)));
    let var_2 = ~(~countOneBits(~global2[_wgslsmith_index_u32(0u, 15u)]));
    let var_3 = Struct_3(var_1);
    return (~var_0 & _wgslsmith_dot_vec3_i32(vec3<i32>(abs(1322i), u_input.b << (1u % 32u), _wgslsmith_add_i32(0i, var_0)), vec3<i32>(~arg_2.x, ~arg_2.x, ~13165i))) | u_input.a;
}

fn func_1(arg_0: Struct_4, arg_1: vec2<i32>) -> vec4<u32> {
    var var_0 = func_2(true);
    global3 = array<vec4<bool>, 24>();
    var var_1 = Struct_3(-1696i <= func_3(!(!global3[_wgslsmith_index_u32(global0.c, 24u)]), vec2<u32>(abs(1u), var_0.x), -vec2<i32>(u_input.b, -1i) | vec2<i32>(2147483647i, u_input.d), (vec2<i32>(-1i, u_input.c.x) >> (vec2<u32>(var_0.x, 0u) % vec2<u32>(32u))) & u_input.c.zx));
    let var_2 = abs(reverseBits(max(~0u, firstTrailingBit(43991u))));
    var_0 = countOneBits(max(~vec3<u32>(0u, reverseBits(74874u), 1u), _wgslsmith_mult_vec3_u32(~vec3<u32>(var_2, 69940u, global0.c), firstTrailingBit(vec3<u32>(var_0.x, 0u, 19051u)) | (vec3<u32>(4294967295u, 26909u, var_2) ^ vec3<u32>(0u, var_2, var_0.x)))));
    return firstLeadingBit(vec4<u32>(~26888u, 0u, ~1u, _wgslsmith_dot_vec4_u32(min(vec4<u32>(80165u, var_2, 0u, 51033u) ^ global2[_wgslsmith_index_u32(global0.d, 15u)], countOneBits(vec4<u32>(var_0.x, var_2, 0u, var_2))), ~vec4<u32>(var_2, var_2, 39860u, 46605u) << (_wgslsmith_sub_vec4_u32(global2[_wgslsmith_index_u32(66248u, 15u)], global2[_wgslsmith_index_u32(var_0.x, 15u)]) % vec4<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec4<bool>, 24>();
    global2 = array<vec4<u32>, 15>();
    global4 = 1u;
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -227f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-637f, 602f))))));
    var_0 = -1518f;
    var var_1 = Struct_2(_wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(global0.d, global0.c)), vec2<u32>(30356u, global0.b) ^ vec2<u32>(global0.b, 29171u)), 1u, ~4294967295u, select(1u, global0.d >> (1u % 32u), select(global0.a, global0.a, true))), _wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_div_u32(global0.b, 85938u), ~global0.c, 1u, abs(4294967295u)), global2[_wgslsmith_index_u32(global0.d, 15u)] ^ firstLeadingBit(vec4<u32>(global0.b, 4294967295u, global0.d, global0.b)), func_1(Struct_4(-1000f, Struct_3(global0.a), Struct_3(global0.a)), u_input.c.xy))), ~vec4<i32>(-u_input.b, ~(-18689i), 34210i, firstTrailingBit(_wgslsmith_dot_vec2_i32(u_input.c.xz, u_input.c.zx))), Struct_1(true, ~global0.c, 4294967295u, ~global0.b));
    var var_2 = var_1.c.a;
    let var_3 = -2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -974f) - _wgslsmith_f_op_f32(f32(-1f) * -787f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1048f) + 613f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(286f, 409f), -2055f))))), max(_wgslsmith_div_i32(u_input.b, -u_input.a), var_3), abs(var_3));
}

