struct Struct_1 {
    a: f32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<bool>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: i32,
    c: i32,
}

struct Struct_5 {
    a: Struct_2,
    b: vec2<i32>,
    c: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<Struct_2, 4> = array<Struct_2, 4>(Struct_2(false, 2967f, false), Struct_2(false, 1233f, true), Struct_2(false, 487f, false), Struct_2(true, 1123f, true));

var<private> global2: array<vec2<bool>, 15> = array<vec2<bool>, 15>(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false));

var<private> global3: array<vec3<bool>, 21>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1() -> vec4<bool> {
    global3 = array<vec3<bool>, 21>();
    return vec4<bool>(true, true, true, true);
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_4, arg_2: bool) -> f32 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1263f), _wgslsmith_f_op_f32(f32(-1f) * -497f), _wgslsmith_f_op_f32(f32(-1f) * -1193f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(1000f, 433f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-346f * 967f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(440f, -276f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-711f, -358f)))));
    global2 = array<vec2<bool>, 15>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * 1033f));
    let var_2 = vec2<bool>(arg_0.x, !(!((global0.c != u_input.a.x) | false)));
    var var_3 = _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.x - var_0.x), _wgslsmith_f_op_f32(-var_0.x)))))))));
    return var_0.x;
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: vec2<i32>) -> StorageBuffer {
    global3 = array<vec3<bool>, 21>();
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec2<bool>(false, arg_1), Struct_4(global0.a, u_input.b, 30468i), arg_1)) + _wgslsmith_f_op_f32(1644f - 668f)) - -224f), _wgslsmith_f_op_f32(trunc(-2006f)))), 838f));
    let var_1 = max(~vec2<i32>(~global0.a.x, 3711i), ~global0.a) | max(vec2<i32>(~_wgslsmith_add_i32(-85617i, -5970i), ~(-12974i) >> (firstLeadingBit(1u) % 32u)), abs(vec2<i32>(arg_2.x, ~arg_2.x)));
    return StorageBuffer(reverseBits(_wgslsmith_sub_u32(87712u, 1u)), _wgslsmith_f_op_f32(907f * _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1328f, _wgslsmith_f_op_f32(-1000f - 966f)), -361f))), -firstTrailingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_2.x, -1i, global0.a.x, 2147483647i), ~vec4<i32>(-1i, arg_2.x, u_input.b, var_1.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-271f, -661f), vec2<f32>(-922f, 2620f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 569f)))) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(958f, -1228f) + vec2<f32>(-1071f, -105f)) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-153f, -378f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1540f, -260f), vec2<f32>(540f, 1000f), arg_1)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(global1[_wgslsmith_index_u32(min(_wgslsmith_dot_vec3_u32(vec3<u32>(131719u, ~0u, 19438u), vec3<u32>(1u, select(4294967295u, 4294967295u, false), ~4294967295u)), ~(~max(0u, 567u))), 4u)], !(!(!func_1())));
    var var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(var_0.a.b * var_0.a.b)), 1000f))))));
    let x = u_input.a;
    s_output = func_2(_wgslsmith_clamp_i32(_wgslsmith_add_i32(_wgslsmith_mod_i32(global0.c, -1i) ^ _wgslsmith_div_i32(u_input.c, u_input.a.x), -global0.b), i32(-1i) * -1i, global0.a.x), !(global0.c < ~1i) | true, vec2<i32>(1i, u_input.c));
}

