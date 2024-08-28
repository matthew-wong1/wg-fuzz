struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 19>;

var<private> global1: array<Struct_2, 8> = array<Struct_2, 8>(Struct_2(1i, 1u, vec3<i32>(2147483647i, 0i, 35035i), 37952i), Struct_2(-1i, 0u, vec3<i32>(i32(-2147483648), 56937i, -10580i), 1i), Struct_2(0i, 28254u, vec3<i32>(-88856i, 2147483647i, 4138i), 1i), Struct_2(-32821i, 10763u, vec3<i32>(-1i, 1i, -15715i), 2147483647i), Struct_2(1i, 39073u, vec3<i32>(23632i, -1i, 18664i), -14954i), Struct_2(29991i, 76607u, vec3<i32>(24197i, -1i, 2147483647i), 0i), Struct_2(2147483647i, 1u, vec3<i32>(-3273i, -8432i, 0i), i32(-2147483648)), Struct_2(1i, 25546u, vec3<i32>(1i, 2147483647i, 2147483647i), 4803i));

var<private> global2: array<i32, 1>;

var<private> global3: u32;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_2(arg_0: f32, arg_1: vec4<bool>, arg_2: bool) -> Struct_2 {
    global2 = array<i32, 1>();
    let var_0 = Struct_1(_wgslsmith_f_op_f32(862f - 680f));
    global2 = array<i32, 1>();
    let var_1 = vec4<i32>(_wgslsmith_sub_i32(~(-13809i), -1i), ~(~(-44190i)), global2[_wgslsmith_index_u32(~_wgslsmith_add_u32(1u, 0u), 1u)] << (u_input.b.x % 32u), u_input.c | ~u_input.c);
    global2 = array<i32, 1>();
    return Struct_2(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(~var_1.wz, ~min(vec2<i32>(1i, global2[_wgslsmith_index_u32(0u, 1u)]), var_1.yy)), var_1.x, firstTrailingBit(-u_input.a) << (63468u % 32u)), 47597u, vec3<i32>(abs(var_1.x), 0i, reverseBits(-u_input.a)), _wgslsmith_div_i32(firstLeadingBit(0i), -(17834i >> (_wgslsmith_div_u32(0u, 4294967295u) % 32u))));
}

fn func_3(arg_0: Struct_2) -> vec4<f32> {
    global0 = array<bool, 19>();
    var var_0 = u_input.b;
    var var_1 = countOneBits(~u_input.d & vec3<u32>(~(~arg_0.b), countOneBits(~1u), arg_0.b));
    global1 = array<Struct_2, 8>();
    let var_2 = Struct_1(-1206f);
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-852f)) - -1078f))), var_2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a)), 552f);
}

fn func_1(arg_0: vec2<i32>, arg_1: vec3<bool>, arg_2: bool, arg_3: Struct_2) -> bool {
    global3 = countOneBits(_wgslsmith_dot_vec3_u32(~min(vec3<u32>(arg_3.b, 37728u, 1u), u_input.d), u_input.d) >> (u_input.b.x % 32u));
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-121f, 565f, 479f, -973f) - vec4<f32>(1245f, -1167f, -161f, -1342f))) + _wgslsmith_f_op_vec4_f32(func_3(func_2(-564f, vec4<bool>(arg_2, arg_1.x, false, global0[_wgslsmith_index_u32(1u, 19u)]), arg_2))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-684f, 1394f, -242f, -485f))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(415f, -494f, 280f, -1907f) + vec4<f32>(-397f, 1125f, -1485f, -1142f)) - vec4<f32>(263f, -673f, 307f, 301f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1782f, -552f, -1747f, 1394f) - vec4<f32>(875f, -1755f, -296f, 969f))))));
    var var_1 = select(vec4<bool>(-arg_3.d <= 17307i, true & any(arg_1.yy), all(select(arg_1.xx, select(arg_1.zy, arg_1.yz, vec2<bool>(false, global0[_wgslsmith_index_u32(40936u, 19u)])), true)), arg_1.x), !(!vec4<bool>(arg_2, global2[_wgslsmith_index_u32(4294967295u, 1u)] >= 4773i, true, 4294967295u <= arg_3.b)), false);
    global0 = array<bool, 19>();
    let var_2 = ~u_input.a;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec3<bool>(any(select(select(vec2<bool>(false, true), vec2<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 19u)], global0[_wgslsmith_index_u32(4294967295u, 19u)]), global0[_wgslsmith_index_u32(2083u, 19u)]), select(vec2<bool>(true, true), vec2<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 19u)], false), vec2<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 19u)], global0[_wgslsmith_index_u32(u_input.d.x, 19u)])), !vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.b.x, 19u)]))), func_1(min(vec2<i32>(10865i, u_input.a), vec2<i32>(global2[_wgslsmith_index_u32(u_input.d.x, 1u)], -2147483647i)), vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.b.x, 19u)], global0[_wgslsmith_index_u32(u_input.b.x, 19u)]), global0[_wgslsmith_index_u32(4848u >> (u_input.b.x % 32u), 19u)], global1[_wgslsmith_index_u32(61693u, 8u)]) | global0[_wgslsmith_index_u32(u_input.d.x, 19u)], true), select(!vec3<bool>(false && global0[_wgslsmith_index_u32(5681u, 19u)], global0[_wgslsmith_index_u32(reverseBits(u_input.b.x), 19u)], any(vec2<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 19u)], false))), vec3<bool>(true, select(global2[_wgslsmith_index_u32(u_input.b.x, 1u)] != 50199i, any(vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 19u)], true, global0[_wgslsmith_index_u32(10281u, 19u)])), true), any(!vec2<bool>(global0[_wgslsmith_index_u32(21309u, 19u)], global0[_wgslsmith_index_u32(0u, 19u)]))), !select(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 19u)], global0[_wgslsmith_index_u32(27201u, 19u)], global0[_wgslsmith_index_u32(u_input.d.x, 19u)]), !vec3<bool>(global0[_wgslsmith_index_u32(21557u, 19u)], global0[_wgslsmith_index_u32(1u, 19u)], false), false)), false);
    var var_1 = func_2(-2421f, vec4<bool>(!(!any(vec3<bool>(false, true, true))), false, var_0.x, any(select(vec3<bool>(false, true, false), vec3<bool>(false, var_0.x, var_0.x), !vec3<bool>(var_0.x, global0[_wgslsmith_index_u32(u_input.d.x, 19u)], global0[_wgslsmith_index_u32(1u, 19u)])))), !all(var_0.xz));
    var var_2 = vec2<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 19u)], var_0.x);
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(561f, _wgslsmith_f_op_f32(f32(-1f) * -152f), _wgslsmith_f_op_f32(-417f + 1f), _wgslsmith_div_f32(-386f, _wgslsmith_f_op_f32(sign(729f)))))));
    let var_4 = _wgslsmith_mod_vec2_i32(var_1.c.zz, -_wgslsmith_div_vec2_i32(-(~vec2<i32>(global2[_wgslsmith_index_u32(u_input.b.x, 1u)], -35605i)), var_1.c.yy));
    let x = u_input.a;
    s_output = StorageBuffer(max(abs(_wgslsmith_clamp_vec2_i32(var_4, vec2<i32>(var_1.c.x, var_4.x), vec2<i32>(var_4.x, -2147483647i))), _wgslsmith_sub_vec2_i32(var_1.c.yy, ~var_1.c.xx)) | _wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, u_input.c) ^ -vec2<i32>(global2[_wgslsmith_index_u32(u_input.d.x, 1u)], u_input.c), _wgslsmith_div_vec2_i32(vec2<i32>(-1i, var_1.a), var_1.c.zx)), 45846i << (abs(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_1.b, 28290u), ~u_input.d)) % 32u), vec2<f32>(-1000f, var_3.x));
}

