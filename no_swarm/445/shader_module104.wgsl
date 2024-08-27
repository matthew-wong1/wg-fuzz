struct Struct_1 {
    a: vec4<u32>,
    b: vec4<u32>,
    c: i32,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 2> = array<vec2<f32>, 2>(vec2<f32>(1000f, -1087f), vec2<f32>(-649f, -493f));

var<private> global1: array<vec3<f32>, 17>;

var<private> global2: u32;

var<private> global3: vec3<i32>;

var<private> global4: f32;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2() -> vec3<bool> {
    var var_0 = true;
    let var_1 = ~firstTrailingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(0u, ~41616u, _wgslsmith_clamp_u32(0u, 40869u, 4294967295u))));
    let var_2 = Struct_1(vec4<u32>(0u, var_1.x, ~9015u, var_1.x), vec4<u32>(1u, ~var_1.x, 4294967295u, max(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, 0u, var_1.x, 44615u) >> (vec4<u32>(28951u, 4294967295u, var_1.x, 79128u) % vec4<u32>(32u)), ~vec4<u32>(var_1.x, var_1.x, 4294967295u, 44439u)), var_1.x)), ~(-37533i), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(reverseBits(var_1.x), 1u), 17u)]);
    global0 = array<vec2<f32>, 2>();
    var var_3 = -u_input.b.x;
    return vec3<bool>(true, true, true);
}

fn func_3(arg_0: vec3<bool>) -> vec4<u32> {
    var var_0 = !(arg_0.x && !(abs(7928i) < ~u_input.b.x));
    let var_1 = vec2<i32>(~global3.x, -global3.x);
    let var_2 = Struct_1(vec4<u32>(_wgslsmith_mult_u32(1u << (0u % 32u), ~0u), ~(0u << (0u % 32u)), 1u, min(_wgslsmith_mult_u32(18650u, 126550u), _wgslsmith_dot_vec4_u32(vec4<u32>(5422u, 4294967295u, 0u, 0u), vec4<u32>(4294967295u, 1654u, 4294967295u, 1u)))) | reverseBits(vec4<u32>(1u, 1u, 1u, 1u)), countOneBits(reverseBits(~vec4<u32>(10181u, 4294967295u, 1u, 0u))) | vec4<u32>(countOneBits(48923u), 1u, ~firstLeadingBit(36706u), ~_wgslsmith_clamp_u32(0u, 1u, 26169u)), -15782i, global1[_wgslsmith_index_u32(9283u, 17u)]);
    var var_3 = var_2;
    var_0 = all(!select(!select(vec4<bool>(false, arg_0.x, false, true), vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x)), select(vec4<bool>(arg_0.x, true, true, true), !vec4<bool>(arg_0.x, false, arg_0.x, false), true), any(arg_0)));
    return ~vec4<u32>(var_2.a.x | 0u, _wgslsmith_div_u32(var_2.b.x, 49713u) & 1u, var_3.a.x, max(_wgslsmith_mod_u32(var_3.b.x << (var_3.b.x % 32u), 8382u | var_2.a.x), var_3.a.x));
}

fn func_1() -> Struct_1 {
    return Struct_1(func_3(select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), func_2(), vec3<bool>(false, true, true))) << (~_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), func_3(vec3<bool>(true, true, true))) % vec4<u32>(32u)), vec4<u32>(~17677u, ~0u, ~max(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 25854u, 0u, 0u), vec4<u32>(1u, 1222u, 6673u, 1u)), abs(4294967295u)), 0u), ~(~2147483647i), _wgslsmith_div_vec3_f32(vec3<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(2186f)) * -115f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1438f * 625f)))), global1[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 65052u, 49014u), vec3<u32>(0u, 0u, 30877u))), 17u)]));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(792f, -600f)));
    let var_1 = vec4<bool>(false, true & ((true || select(false, true, true)) && true), all(vec3<bool>(any(vec3<bool>(true, false, false)), true != all(vec2<bool>(false, true)), any(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false))))), all(vec3<bool>(any(func_2()), false, false)));
    var var_2 = ~88480u;
    let var_3 = func_1();
    global0 = array<vec2<f32>, 2>();
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(abs(global3.x), func_1(), func_1());
    global3 = vec3<i32>(func_1().c, _wgslsmith_div_i32(max(var_0.c, -9430i), -10437i >> (1u % 32u)), _wgslsmith_div_i32(firstLeadingBit(-_wgslsmith_div_i32(var_0.c, global3.x)), func_1().c));
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(global1[_wgslsmith_index_u32(select(63832u | ~var_0.a.x, reverseBits(var_0.a.x), !any(vec3<bool>(true, false, true))), 17u)] + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(483f, var_0.d.x, 1005f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d.x, -1000f, -379f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0.d.x), _wgslsmith_f_op_f32(var_0.d.x * _wgslsmith_f_op_f32(-405f + var_0.d.x)), var_0.d.x)));
    let var_2 = var_1;
    let var_3 = Struct_1(func_1().a & abs(var_0.a), var_0.b, 2147483647i, var_2);
    let var_4 = vec2<u32>(0u, ~(~func_1().b.x));
    global4 = 893f;
    var var_5 = var_3;
    let var_6 = select(false, false, all(func_2().zx));
    let x = u_input.a;
    s_output = StorageBuffer(global3.x, var_3.d.x);
}

