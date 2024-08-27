struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24>;

var<private> global1: array<f32, 10> = array<f32, 10>(1114f, -233f, 1271f, -488f, -324f, -805f, 508f, 1926f, -943f, 460f);

var<private> global2: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(0u, vec2<i32>(1i, 1i), 4294967295u), Struct_1(0u, vec2<i32>(i32(-2147483648), 0i), 12611u), Struct_1(1u, vec2<i32>(15620i, -1i), 24606u), Struct_1(0u, vec2<i32>(11631i, i32(-2147483648)), 0u), Struct_1(1u, vec2<i32>(-412i, -1i), 28017u), Struct_1(4294967295u, vec2<i32>(-25502i, 85693i), 1u), Struct_1(8345u, vec2<i32>(1i, -20771i), 1u), Struct_1(61899u, vec2<i32>(28759i, -3208i), 1u), Struct_1(61877u, vec2<i32>(740i, -1i), 1u), Struct_1(0u, vec2<i32>(-69467i, -1i), 4294967295u), Struct_1(0u, vec2<i32>(-1405i, -48597i), 43909u), Struct_1(8792u, vec2<i32>(30354i, -12618i), 84351u));

var<private> global3: u32 = 4294967295u;

var<private> global4: array<vec3<u32>, 15>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: vec2<u32>) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(arg_2.x, 10u)], global1[_wgslsmith_index_u32(arg_0.c, 10u)], global1[_wgslsmith_index_u32(4294967295u, 10u)], global1[_wgslsmith_index_u32(18183u, 10u)])), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(912u, 10u)], global1[_wgslsmith_index_u32(42339u, 10u)], 355f, global1[_wgslsmith_index_u32(arg_2.x, 10u)])))), select(arg_1, true, any(vec4<bool>(arg_1, arg_1, arg_1, arg_1))))), vec4<f32>(global1[_wgslsmith_index_u32(1u, 10u)], global1[_wgslsmith_index_u32(~arg_2.x | _wgslsmith_sub_u32(1u, 1u), 10u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-102f)) * _wgslsmith_f_op_f32(step(-1007f, -1593f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_0.a, 10u)]))))), vec4<f32>(global1[_wgslsmith_index_u32(countOneBits(u_input.a), 10u)], global1[_wgslsmith_index_u32(57751u, 10u)], _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~(~4294967295u), 10u)] + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2547f - -720f) - -1333f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(18105u, arg_0.c), 10u)] - global1[_wgslsmith_index_u32(637u, 10u)]) - 514f)), any(vec4<bool>(any(vec4<bool>(arg_1, arg_1, arg_1, arg_1)), -1306f < global1[_wgslsmith_index_u32(u_input.a, 10u)], true, true)) | true));
    let var_1 = abs(~47338u);
    var var_2 = arg_1;
    global1 = array<f32, 10>();
    let var_3 = max(u_input.c.xy, max(_wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.c.yz, arg_2), arg_2) & arg_2, vec2<u32>(~4294967295u, select(_wgslsmith_div_u32(3290u, 410u), 103159u, arg_1))));
    return vec3<i32>(1i, ~countOneBits(_wgslsmith_div_i32(abs(arg_0.b.x), arg_0.b.x)), 38974i);
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: Struct_1) -> f32 {
    global3 = arg_0.x;
    var var_0 = _wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(0u, ~(~25028u), _wgslsmith_add_u32(arg_3.c, arg_3.c), arg_1.c)) | _wgslsmith_add_u32(arg_0.x, arg_3.a);
    global2 = array<Struct_1, 12>();
    var var_1 = Struct_1(4294967295u, arg_3.b, abs(arg_3.c) << (4294967295u % 32u));
    var var_2 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~(~(~1u)) >> (u_input.b % 32u), countOneBits(1u)), 10u)];
    return _wgslsmith_div_f32(global1[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 10u)], 1000f);
}

fn func_2(arg_0: u32, arg_1: vec3<u32>) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(vec2<u32>(1u, arg_0 ^ 1u), global2[_wgslsmith_index_u32(u_input.b, 12u)], reverseBits(func_3(Struct_1(u_input.b, vec2<i32>(-1i, -7442i), arg_0), global1[_wgslsmith_index_u32(4294967295u, 10u)] <= -523f, select(u_input.c.zx, vec2<u32>(u_input.a, u_input.a), vec2<bool>(false, false)))), Struct_1(~u_input.b, countOneBits(vec2<i32>(1i, 1i)), ~_wgslsmith_clamp_u32(arg_1.x, 4294967295u, arg_0)))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_4(u_input.c.zw, Struct_1(43678u, vec2<i32>(-1i, 2147483647i), u_input.a), vec3<i32>(1i, 1i, 1i), global0[_wgslsmith_index_u32(~(u_input.a >> (0u % 32u)), 24u)])), global1[_wgslsmith_index_u32(arg_0, 10u)], all(select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false)), true)))));
    var var_1 = select(select(vec4<bool>(true, true, all(vec4<bool>(true, true, true, true)), select(true, any(vec4<bool>(true, false, false, false)), any(vec3<bool>(true, true, true)))), !(!select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), false)), true), vec4<bool>(false, true, false, true), true);
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1000f, global1[_wgslsmith_index_u32(1u, 10u)])))))))));
    var var_3 = Struct_1(arg_1.x, firstTrailingBit(-min(vec2<i32>(23885i, 6461i), vec2<i32>(0i, 10483i))) << (vec2<u32>(firstTrailingBit(arg_1.x), 1u) % vec2<u32>(32u)), ~countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, arg_0), vec2<u32>(arg_0, 52805u)) << (_wgslsmith_div_u32(arg_0, 0u) % 32u)));
    var var_4 = any(vec2<bool>(!var_1.x, false));
    return _wgslsmith_add_u32(firstTrailingBit(abs(abs(_wgslsmith_add_u32(0u, u_input.a)))), arg_0);
}

fn func_1(arg_0: vec3<u32>, arg_1: u32, arg_2: bool, arg_3: vec3<bool>) -> vec2<i32> {
    global3 = _wgslsmith_clamp_u32(_wgslsmith_mod_u32(_wgslsmith_add_u32(~arg_1 >> (~0u % 32u), arg_1), u_input.a), arg_1, u_input.a);
    var var_0 = Struct_1(~1u, min(((vec2<i32>(-28922i, -1i) << (vec2<u32>(u_input.c.x, arg_1) % vec2<u32>(32u))) & vec2<i32>(-34664i, -53441i)) & (vec2<i32>(-2147483647i, -16722i) << (u_input.c.xz % vec2<u32>(32u))), _wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, _wgslsmith_div_i32(1i, -4648i)), vec2<i32>(1i, countOneBits(-1i)))), ~firstLeadingBit(select(_wgslsmith_add_u32(37120u, 27455u), func_2(arg_0.x, vec3<u32>(arg_0.x, 16082u, arg_0.x)), arg_3.x)));
    let var_1 = select(arg_3, select(select(vec3<bool>(all(vec2<bool>(false, false)), false, true), vec3<bool>(true | arg_3.x, !arg_2, !arg_2), !arg_3), select(select(arg_3, vec3<bool>(true, false, false), !arg_3), arg_3, !(var_0.b.x >= 2147483647i)), arg_3), select(arg_2, !select(true, all(vec2<bool>(false, arg_2)), arg_2), any(!vec4<bool>(false, arg_2, arg_2, true))));
    var_0 = Struct_1(~(~arg_0.x), var_0.b, 1u);
    global1 = array<f32, 10>();
    return vec2<i32>(var_0.b.x, max(_wgslsmith_div_i32(-2147483647i, -2147483647i) | var_0.b.x, _wgslsmith_dot_vec2_i32(select(vec2<i32>(14064i, 44652i), var_0.b, arg_3.x), ~var_0.b))) << (~vec2<u32>(3571u, 4294967295u) % vec2<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 0i;
    let var_1 = 1381f;
    var var_2 = Struct_1(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(51932u, 17184u), vec2<u32>(u_input.c.x, 25923u)), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, 0u), vec2<u32>(4294967295u, 66802u)), 42272u, ~4294967295u), u_input.c), _wgslsmith_mult_u32(select(u_input.b, 68185u, false), _wgslsmith_add_u32(u_input.b ^ u_input.a, u_input.b))), func_1(global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.c.x, u_input.c.x), 15u)], u_input.b, false, vec3<bool>(51652i < var_0, any(vec3<bool>(true, false, true)), true)), u_input.a);
    global4 = array<vec3<u32>, 15>();
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(u_input.c.xx >> (u_input.c.yw % vec2<u32>(32u)), global2[_wgslsmith_index_u32(6352u, 12u)], vec3<i32>(10870i, -2147483647i, var_0) & vec3<i32>(2147483647i, 21507i, var_2.b.x), Struct_1(0u, var_2.b, 48466u))) - 1688f))), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.b, 10u)] * _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(~u_input.c.x, 10u)], global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_2.c, u_input.c.x), 10u)])))), _wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(4294967295u, 10u)], _wgslsmith_f_op_f32(-var_1), true)), global1[_wgslsmith_index_u32(var_2.a, 10u)]);
    var var_4 = ~firstTrailingBit((4294967295u & _wgslsmith_dot_vec4_u32(u_input.c, u_input.c)) | u_input.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(countOneBits(~var_0 ^ 2147483647i), i32(-1i) * -31097i), _wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(var_2.c, 10u)])))), firstTrailingBit(-2147483647i >> (_wgslsmith_add_u32(select(1u, var_2.c, true), ~0u) % 32u)));
}

