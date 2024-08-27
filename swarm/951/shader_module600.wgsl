struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: vec2<bool>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<i32>,
    d: vec3<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 29> = array<vec3<bool>, 29>(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false));

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> vec3<bool> {
    var var_0 = arg_2;
    let var_1 = _wgslsmith_div_vec4_u32(vec4<u32>(~(~4294967295u), arg_1.d.x, 1u, ~(~var_0.a)) ^ abs(~(~vec4<u32>(var_0.d.x, arg_2.a, 23934u, 1u))), vec4<u32>(var_0.a, var_0.d.x, arg_2.a, (94043u ^ arg_2.d.x) ^ max(arg_2.d.x, 24626u)) | abs(vec4<u32>(35725u, ~arg_2.a, arg_2.a >> (0u % 32u), ~1u)));
    var var_2 = -2147483647i;
    let var_3 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(930f, -539f))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(-203f)), -733f)))));
    var var_4 = max(reverseBits(1i), _wgslsmith_dot_vec2_i32(-_wgslsmith_sub_vec2_i32(countOneBits(u_input.c.xx), _wgslsmith_mod_vec2_i32(vec2<i32>(-1i, arg_0), vec2<i32>(-56243i, 39484i))), vec2<i32>(-56498i, -2147483647i)));
    return !vec3<bool>(false, var_0.b.x, 2147483647i < _wgslsmith_clamp_i32(-u_input.a.x, arg_0, u_input.d.x));
}

fn func_2(arg_0: i32, arg_1: vec4<u32>, arg_2: u32, arg_3: vec3<f32>) -> u32 {
    var var_0 = Struct_1(~_wgslsmith_mult_u32(firstTrailingBit(~arg_1.x), _wgslsmith_sub_u32(abs(arg_2), _wgslsmith_div_u32(0u, 19299u))), select(vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(true, true), true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), any(vec4<bool>(false, false, false, false))), true), !(!select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec3<bool>(true, true, false)))), arg_1.wwy);
    global0 = array<vec3<bool>, 29>();
    global0 = array<vec3<bool>, 29>();
    var var_1 = ~firstLeadingBit(~vec3<u32>(16279u, abs(45228u), ~arg_2));
    let var_2 = all(vec4<bool>(true, true || !(var_0.c.x || true), any(!func_3(1i, Struct_1(66463u, var_0.b, var_0.b, var_0.d), Struct_1(4294967295u, vec2<bool>(var_0.c.x, false), vec2<bool>(var_0.c.x, var_0.c.x), arg_1.yxx))), !any(vec4<bool>(true, var_0.b.x, true, false))));
    return ~_wgslsmith_mod_u32(_wgslsmith_clamp_u32(var_1.x, var_0.d.x, firstTrailingBit(arg_2)), _wgslsmith_dot_vec3_u32(var_0.d, ~_wgslsmith_sub_vec3_u32(vec3<u32>(arg_2, var_0.d.x, arg_1.x), vec3<u32>(1u, 48942u, 8320u))));
}

fn func_4(arg_0: vec4<u32>, arg_1: bool, arg_2: f32) -> i32 {
    let var_0 = select(vec4<bool>(arg_1, all(vec4<bool>(arg_1, !arg_1, arg_1 != arg_1, arg_2 != arg_2)), ((45570u ^ arg_0.x) >> (countOneBits(arg_0.x) % 32u)) <= _wgslsmith_dot_vec2_u32(arg_0.yx, _wgslsmith_div_vec2_u32(arg_0.zw, arg_0.xx)), true), select(!(!vec4<bool>(true, false, arg_1, arg_1)), !(!vec4<bool>(true, false, arg_1, false)), arg_1), !(!vec4<bool>(arg_1, any(global0[_wgslsmith_index_u32(45667u, 29u)]), arg_1, all(vec3<bool>(false, arg_1, arg_1)))));
    global0 = array<vec3<bool>, 29>();
    global0 = array<vec3<bool>, 29>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_2)))))));
    let var_2 = all(!(!(!vec2<bool>(false, arg_1)))) | false;
    return u_input.e.x;
}

fn func_1(arg_0: vec2<u32>, arg_1: vec4<f32>, arg_2: u32, arg_3: Struct_1) -> bool {
    global0 = array<vec3<bool>, 29>();
    var var_0 = arg_3;
    let var_1 = func_4(vec4<u32>(func_2(-30983i, ~(~vec4<u32>(1u, 1u, 0u, arg_0.x)), ~1u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1.zxx) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, arg_1.x, arg_1.x)))), max(arg_3.a, _wgslsmith_dot_vec4_u32(vec4<u32>(42423u, arg_2, arg_2, 8574u), ~vec4<u32>(arg_2, 4294967295u, arg_0.x, var_0.a))), abs(arg_3.a), _wgslsmith_add_u32(var_0.d.x, ~_wgslsmith_div_u32(var_0.a, var_0.d.x))), 15601u > _wgslsmith_dot_vec3_u32(var_0.d, var_0.d), _wgslsmith_f_op_f32(-332f - arg_1.x));
    var var_2 = all(vec3<bool>(arg_3.b.x, !(!(43197i <= u_input.e.x)), false));
    var var_3 = 33817u;
    return all(vec2<bool>(arg_3.b.x, all(func_3(_wgslsmith_div_i32(1i, u_input.d.x), Struct_1(arg_3.a, vec2<bool>(var_0.b.x, true), vec2<bool>(true, arg_3.c.x), arg_3.d), Struct_1(var_0.a, arg_3.b, var_0.c, vec3<u32>(4294967295u, 46108u, 4294967295u))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<bool>, 29>();
    var var_0 = select(!global0[_wgslsmith_index_u32(max(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(22954u, 0u)), 1u), 29u)], vec3<bool>(true, 1i == u_input.c.x, any(select(vec2<bool>(true, true), vec2<bool>(true, true), true))), select(global0[_wgslsmith_index_u32(~(~_wgslsmith_div_u32(4294967295u, 55868u)), 29u)], vec3<bool>(any(vec4<bool>(true, true, true, true)), func_1(vec2<u32>(0u, 84132u), _wgslsmith_div_vec4_f32(vec4<f32>(-286f, -229f, 270f, -173f), vec4<f32>(1000f, 492f, 1460f, 1383f)), _wgslsmith_dot_vec4_u32(vec4<u32>(30329u, 1u, 1u, 4294967295u), vec4<u32>(60289u, 22076u, 1u, 15833u)), Struct_1(31337u, vec2<bool>(false, true), vec2<bool>(true, true), vec3<u32>(21338u, 0u, 0u))), false), true));
    var_0 = !(!vec3<bool>(false && all(vec2<bool>(var_0.x, true)), true, var_0.x));
    var_0 = !global0[_wgslsmith_index_u32(max(select(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(1u, 1u, 21833u)), ~vec3<u32>(28518u, 38806u, 50264u)), 1u, true && var_0.x), 4294967295u), 29u)];
    var_0 = !select(!vec3<bool>(func_3(56307i, Struct_1(4294967295u, vec2<bool>(false, false), var_0.yx, vec3<u32>(21389u, 69385u, 1u)), Struct_1(0u, var_0.xx, vec2<bool>(true, var_0.x), vec3<u32>(0u, 0u, 18084u))).x, var_0.x && var_0.x, !var_0.x), select(select(!global0[_wgslsmith_index_u32(0u, 29u)], global0[_wgslsmith_index_u32(min(32312u, 4294967295u), 29u)], select(vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(var_0.x, false, var_0.x), var_0.x)), !func_3(22605i, Struct_1(0u, vec2<bool>(var_0.x, false), vec2<bool>(true, var_0.x), vec3<u32>(1u, 39253u, 1u)), Struct_1(0u, vec2<bool>(var_0.x, false), var_0.yy, vec3<u32>(23063u, 15635u, 99740u))), !select(vec3<bool>(var_0.x, true, false), global0[_wgslsmith_index_u32(23451u, 29u)], vec3<bool>(var_0.x, false, var_0.x))), !func_3(u_input.e.x, Struct_1(0u, vec2<bool>(var_0.x, false), var_0.xy, vec3<u32>(51472u, 4294967295u, 4294967295u)), Struct_1(1u, var_0.zx, var_0.zx, vec3<u32>(21070u, 1u, 0u))));
    global0 = array<vec3<bool>, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(select(0u, _wgslsmith_mult_u32(1u, _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(0u, 1u)), vec2<u32>(4294967295u, 122122u))), !(!func_1(vec2<u32>(43311u, 52746u), vec4<f32>(614f, -1077f, -1315f, -752f), 1u, Struct_1(1u, vec2<bool>(false, false), var_0.xz, vec3<u32>(1u, 2217u, 97837u))))), countOneBits(vec3<u32>(1u, 1u, 1u)), _wgslsmith_dot_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u)), ~select(reverseBits(vec3<u32>(1u, 23327u, 81217u)), vec3<u32>(1u, 1u, 1u), vec3<bool>(var_0.x, true, false))));
}

