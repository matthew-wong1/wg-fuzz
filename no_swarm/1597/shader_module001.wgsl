struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: f32,
    c: vec3<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: vec2<u32>,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 15>;

var<private> global1: Struct_1;

var<private> global2: array<vec2<u32>, 26> = array<vec2<u32>, 26>(vec2<u32>(0u, 4294967295u), vec2<u32>(1u, 46668u), vec2<u32>(4294967295u, 1u), vec2<u32>(13950u, 0u), vec2<u32>(1u, 31360u), vec2<u32>(34953u, 23984u), vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 1u), vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 8149u), vec2<u32>(129502u, 4294967295u), vec2<u32>(4294967295u, 15072u), vec2<u32>(0u, 46509u), vec2<u32>(20686u, 24527u), vec2<u32>(88185u, 0u), vec2<u32>(0u, 28416u), vec2<u32>(75160u, 4294967295u), vec2<u32>(4294967295u, 63459u), vec2<u32>(4897u, 1u), vec2<u32>(8385u, 36304u), vec2<u32>(45920u, 4294967295u), vec2<u32>(44294u, 0u), vec2<u32>(11743u, 24487u), vec2<u32>(4294967295u, 13383u), vec2<u32>(12932u, 1u));

var<private> global3: Struct_2;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: i32) -> vec4<bool> {
    global2 = array<vec2<u32>, 26>();
    var var_0 = Struct_2(-vec2<i32>(~arg_0, ~global3.a.x) & (vec2<i32>(global3.a.x, 9204i) ^ _wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(global1.a.wx, vec2<i32>(arg_0, -1i)), _wgslsmith_sub_vec2_i32(vec2<i32>(-47594i, global3.a.x), vec2<i32>(-1i, global3.a.x)))));
    var var_1 = u_input.e;
    var_1 = 4294967295u;
    var var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(1986f, -1267f)), 1023f))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-189f * _wgslsmith_f_op_f32(601f * -119f)), 1f))))));
    return select(!(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false))), select(!vec4<bool>(true, true, true, var_0.a.x >= -2147483647i), vec4<bool>(false, true, true && any(vec2<bool>(false, true)), false), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), true))), true);
}

fn func_2() -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-810f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(1275f))))))));
    var var_1 = _wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(global1.a, vec4<i32>(6727i, _wgslsmith_div_i32(1i, global1.a.x), min(2147483647i, u_input.c.x), 42796i) << (~(vec4<u32>(11735u, u_input.e, 21511u, u_input.e) >> (vec4<u32>(u_input.e, 82466u, u_input.e, 4294967295u) % vec4<u32>(32u))) % vec4<u32>(32u))), ~vec4<i32>(-global1.a.x, _wgslsmith_clamp_i32(global1.a.x, -2712i, global1.a.x), u_input.d, firstLeadingBit(-1i)) << (_wgslsmith_div_vec4_u32(~(~vec4<u32>(13228u, u_input.e, u_input.e, 32583u)), vec4<u32>(reverseBits(u_input.e), ~4294967295u, 15845u, ~u_input.e)) % vec4<u32>(32u)));
    var var_2 = vec3<f32>(var_0, _wgslsmith_f_op_f32(floor(var_0)), var_0);
    global1 = Struct_1(global1.a ^ ~global1.a);
    let var_3 = select(select(vec4<bool>(select(true, all(vec3<bool>(true, false, false)), true), select(0u > u_input.e, true, true), any(vec2<bool>(true, true)), true), func_3(i32(-1i) * -19660i), !all(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), true))), vec4<bool>(true, !(!(var_1.x > u_input.d)), any(!select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true))), true), !vec4<bool>(false, true, any(vec2<bool>(true, true)), true));
    return 442f;
}

fn func_1(arg_0: vec4<i32>) -> f32 {
    global3 = Struct_2(~global3.a);
    let var_0 = Struct_3(~(~vec3<u32>(u_input.e, 0u, u_input.e) >> (firstTrailingBit(vec3<u32>(u_input.e, u_input.e, u_input.e)) % vec3<u32>(32u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(123f, -286f)), _wgslsmith_f_op_f32(f32(-1f) * -344f), true))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(943f, -611f, -1936f)))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1440f, 622f, -324f) + vec3<f32>(-186f, -1101f, -1000f)) * vec3<f32>(1222f, 267f, 1037f)))));
    global2 = array<vec2<u32>, 26>();
    var var_1 = Struct_1(select(select(arg_0, _wgslsmith_add_vec4_i32(global1.a, arg_0) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.e, 13761u, 4438u, var_0.a.x), vec4<u32>(4294967295u, var_0.a.x, 4294967295u, 4294967295u)) % vec4<u32>(32u)), !select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false))), arg_0, all(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), true)) && true));
    global1 = Struct_1(_wgslsmith_div_vec4_i32(reverseBits(global1.a), _wgslsmith_add_vec4_i32(~min(vec4<i32>(var_1.a.x, 49724i, global1.a.x, global3.a.x), var_1.a), arg_0)));
    return var_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!select(true, all(vec3<bool>(false, false, true)) || (86884u != u_input.e), true));
    global2 = array<vec2<u32>, 26>();
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1057f * _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_1(vec4<i32>(-1i, u_input.a, -9621i, global3.a.x)))))))));
    global0 = array<vec2<i32>, 15>();
    let var_2 = Struct_4(Struct_2(~vec2<i32>(select(u_input.a, -31360i, true), _wgslsmith_dot_vec2_i32(global1.a.wy, u_input.c))), u_input.e & 4294967295u, _wgslsmith_div_vec2_u32(vec2<u32>(~select(4294967295u, u_input.e, true), u_input.e), abs(_wgslsmith_mod_vec2_u32(global2[_wgslsmith_index_u32(u_input.e, 26u)], vec2<u32>(u_input.e, 4294967295u))) | min(reverseBits(vec2<u32>(0u, 101232u)), _wgslsmith_div_vec2_u32(global2[_wgslsmith_index_u32(10288u, 26u)], vec2<u32>(u_input.e, 30202u)))), ~firstTrailingBit(abs(~1u)));
    let var_3 = _wgslsmith_clamp_vec4_i32(global1.a, abs(~vec4<i32>(var_2.a.a.x, -2147483647i, -2147483647i, u_input.a)) & _wgslsmith_mult_vec4_i32(vec4<i32>(-28821i, u_input.d & global3.a.x, _wgslsmith_sub_i32(global1.a.x, global1.a.x), -1i << (1u % 32u)), firstTrailingBit(global1.a >> (vec4<u32>(0u, 12563u, u_input.e, var_2.b) % vec4<u32>(32u)))), global1.a);
    global2 = array<vec2<u32>, 26>();
    var var_4 = Struct_3(_wgslsmith_sub_vec3_u32(vec3<u32>(var_2.c.x, _wgslsmith_div_u32(1u << (u_input.e % 32u), _wgslsmith_sub_u32(105311u, 1u)), 27335u), countOneBits(_wgslsmith_add_vec3_u32(~vec3<u32>(0u, 127264u, var_2.b), vec3<u32>(4294967295u, u_input.e, var_2.b) << (vec3<u32>(var_2.b, u_input.e, u_input.e) % vec3<u32>(32u))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(562f, 483f), 915f))), vec3<f32>(1139f, -2294f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -212f))));
    var var_5 = true | ((19113i == u_input.c.x) | true);
    let x = u_input.a;
    s_output = StorageBuffer(global3.a.x ^ 1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.b * _wgslsmith_f_op_f32(-var_4.b))), var_4.c.x, firstLeadingBit(vec4<u32>(u_input.e, var_2.b, firstLeadingBit(u_input.e), countOneBits(u_input.e)) | _wgslsmith_mod_vec4_u32(vec4<u32>(var_4.a.x, 0u, var_2.d, 7923u), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 782u, u_input.e, 9884u), vec4<u32>(1u, 4294967295u, u_input.e, 7328u), vec4<u32>(u_input.e, var_4.a.x, 48714u, var_2.b)))));
}

