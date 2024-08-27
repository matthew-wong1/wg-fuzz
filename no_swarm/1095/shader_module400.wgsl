struct Struct_1 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: i32,
    d: u32,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: f32,
    d: vec4<i32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<u32, 12>;

var<private> global2: array<f32, 30>;

var<private> global3: i32 = 0i;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec2<u32>, arg_2: i32, arg_3: Struct_1) -> vec2<bool> {
    let var_0 = abs(_wgslsmith_mult_vec2_u32(~firstLeadingBit(~vec2<u32>(arg_3.d, global1[_wgslsmith_index_u32(1u, 12u)])), arg_3.e.zy | select(_wgslsmith_add_vec2_u32(vec2<u32>(36243u, 0u), vec2<u32>(36627u, arg_3.d)), arg_3.e.wx, any(vec2<bool>(true, arg_3.a.x)))));
    global2 = array<f32, 30>();
    let var_1 = arg_3.e.zy;
    global0 = 0i;
    let var_2 = u_input.b;
    return vec2<bool>(!(!(arg_3.a.x && true)), true == arg_3.a.x);
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: u32, arg_3: bool) -> bool {
    return true;
}

fn func_2() -> u32 {
    global1 = array<u32, 12>();
    global1 = array<u32, 12>();
    let var_0 = Struct_1(vec3<bool>(true & (func_3(global1[_wgslsmith_index_u32(44977u, 12u)], 0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(57664u, 12u)], 12u)], false) | true), true, false), -u_input.a.ywx, u_input.b, 33648u, vec4<u32>(global1[_wgslsmith_index_u32(52591u, 12u)], countOneBits(~max(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(28840u, 12u)], 12u)], 12u)], 12u)], global1[_wgslsmith_index_u32(18933u, 12u)])), _wgslsmith_mod_u32(reverseBits(min(85741u, 8071u)), ~(97523u | global1[_wgslsmith_index_u32(128041u, 12u)])), abs(_wgslsmith_sub_u32(_wgslsmith_add_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(44416u, 12u)], 12u)], global1[_wgslsmith_index_u32(4294967295u, 12u)]), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 12u)], 12u)], 12u)], 12u)]), 12u)]))));
    global2 = array<f32, 30>();
    let var_1 = Struct_1(vec3<bool>(var_0.a.x, var_0.a.x, true), abs(vec3<i32>(_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(u_input.a.x, 2147483647i, -1i, 1i)), -20978i, firstTrailingBit(2147483647i))), ~_wgslsmith_dot_vec2_i32(var_0.b.yz, vec2<i32>(abs(-8271i), u_input.c)), 35282u, var_0.e);
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_sub_i32(-(~0i), _wgslsmith_dot_vec4_i32(u_input.a, -(_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, u_input.a.x, 1i, u_input.c), vec4<i32>(u_input.b, u_input.b, 25937i, u_input.c)) >> (~vec4<u32>(17908u, global1[_wgslsmith_index_u32(0u, 12u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 12u)], 12u)], 18238u) % vec4<u32>(32u)))));
    let var_0 = !(!select(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false)), select(vec2<bool>(false, false), vec2<bool>(true, false), false)), !select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)), func_1(abs(vec2<u32>(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 12u)], 12u)], 12u)], 12u)], 12u)])), ~vec2<u32>(0u, 42437u), -2147483647i, Struct_1(vec3<bool>(false, false, true), vec3<i32>(34078i, 0i, 0i), -1i, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(9712u, 12u)], 12u)], 12u)], vec4<u32>(global1[_wgslsmith_index_u32(1u, 12u)], 8066u, 50065u, 2943u)))));
    let var_1 = Struct_1(select(vec3<bool>(any(vec4<bool>(false, var_0.x, true, var_0.x)), var_0.x, true), select(vec3<bool>(u_input.b <= u_input.b, false == var_0.x, var_0.x), vec3<bool>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(49390u, 12u)], 12u)], 30u)] < global2[_wgslsmith_index_u32(1u, 30u)], any(var_0), true), vec3<bool>(any(vec3<bool>(false, true, true)), true, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(40437u, 12u)], 30u)] <= 499f)), (true && var_0.x) | select(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 12u)], 12u)], 12u)], 12u)] <= 3736u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(45863u, 12u)], 12u)] > 45974u, false)), vec3<i32>(-_wgslsmith_sub_i32(u_input.c << (36150u % 32u), select(u_input.b, u_input.b, true)), u_input.c, _wgslsmith_add_i32(~0i, -57807i)), -u_input.c, global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(36824u, 12u)], 12u)] >> (func_2() % 32u), firstTrailingBit(max(~vec4<u32>(63083u, global1[_wgslsmith_index_u32(4294967295u, 12u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(18562u, 12u)], 12u)], 12u)], 0u), ~vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(0u, 12u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(39026u, 12u)], 12u)], 12u)], 4294967295u)) | _wgslsmith_clamp_vec4_u32(select(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(31747u, 12u)], 12u)], 12u)], 12u)], 12u)], 12u)], 12u)], 12u)], 12u)], 12u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 12u)], 12u)], 12u)], 12u)], 12u)], 12u)], 12u)], 28902u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 12u)], 12u)], 12u)], 12u)]), vec4<u32>(8178u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 12u)], 12u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 12u)], 12u)], 12u)], 12u)], global1[_wgslsmith_index_u32(56885u, 12u)]), var_0.x), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(4294967295u, 12u)], 0u, global1[_wgslsmith_index_u32(33783u, 12u)]), vec4<u32>(global1[_wgslsmith_index_u32(22063u, 12u)], 42075u, global1[_wgslsmith_index_u32(25498u, 12u)], 1u)), min(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 12u)], 12u)], global1[_wgslsmith_index_u32(4294967295u, 12u)], 4294967295u, 36935u), vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 12u)], 12u)], 65172u, 4294967295u, 0u)))));
    let var_2 = Struct_1(select(var_1.a, !vec3<bool>(true, !var_0.x, any(var_1.a)), var_1.a), -vec3<i32>(~(-2147483647i), -var_1.b.x & ~var_1.c, var_1.b.x), 37121i, 1u, var_1.e);
    let var_3 = ~_wgslsmith_add_vec2_u32(vec2<u32>(firstTrailingBit(~676u), 47325u), ~vec2<u32>(global1[_wgslsmith_index_u32(var_1.d, 12u)] & global1[_wgslsmith_index_u32(41188u, 12u)], 70947u));
    var var_4 = true;
    global2 = array<f32, 30>();
    let var_5 = any(select(!select(vec2<bool>(true, var_1.a.x), vec2<bool>(true, false), var_2.a.zy), vec2<bool>(true, true), select(true, true, any(vec2<bool>(true, var_1.a.x)))));
    var var_6 = ~reverseBits(_wgslsmith_dot_vec2_u32(~var_3, ~var_2.e.yz) | ~(~var_1.d));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.ywz, i32(-1i) * -2147483647i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(firstTrailingBit(var_1.d), 30u)], _wgslsmith_div_f32(-1893f, global2[_wgslsmith_index_u32(30681u, 30u)]))), _wgslsmith_f_op_f32(ceil(215f))))), -u_input.a, vec3<i32>(u_input.b, max(u_input.b, _wgslsmith_sub_i32(var_2.b.x, max(2623i, var_1.b.x))), max(5813i, 16981i)));
}

