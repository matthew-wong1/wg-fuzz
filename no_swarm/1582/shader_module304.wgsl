struct Struct_1 {
    a: bool,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: i32,
    d: u32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 19> = array<f32, 19>(-611f, -181f, -2145f, -238f, -1000f, -366f, -481f, 770f, 259f, -1302f, -208f, 667f, -1484f, -2495f, -689f, -533f, -1970f, 1961f, -1159f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_2) -> vec3<bool> {
    var var_0 = Struct_1(false, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(arg_0.b.b)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b.b.x, 558f)))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(exp2(arg_0.b.b)))), 94359u != abs(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 22391u, 1u), vec3<u32>(4294967295u, 1u, 0u))))));
    var_0 = Struct_1(arg_0.b.a, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.x, global0[_wgslsmith_index_u32(36175u, 19u)]) - _wgslsmith_div_vec2_f32(var_0.b, vec2<f32>(var_0.b.x, -1721f))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.b.b), vec2<f32>(1000f, arg_0.b.b.x))))));
    var_0 = arg_0.b;
    global0 = array<f32, 19>();
    let var_1 = !select(vec2<bool>(true, all(vec3<bool>(arg_0.b.a, var_0.a, true))), select(!(!vec2<bool>(var_0.a, false)), !select(vec2<bool>(true, arg_0.b.a), vec2<bool>(var_0.a, arg_0.b.a), true), any(vec2<bool>(true, true))), !(!(false || var_0.a)));
    return vec3<bool>(!var_1.x, select(var_1.x, true, true), var_1.x);
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_2(vec3<i32>(u_input.a.x, 2147483647i, -u_input.b), Struct_1(all(vec2<bool>(true, true)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 19u)])), -1314f)));
    var var_1 = var_0;
    let var_2 = var_0.b.a;
    var var_3 = func_3(var_0);
    var_1 = Struct_2(vec3<i32>(firstLeadingBit(firstLeadingBit(~var_0.a.x)), -20907i, reverseBits(_wgslsmith_sub_i32(-1i, var_1.a.x))), Struct_1(!var_3.x, var_0.b.b));
    return Struct_1(var_2, vec2<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~max(0u, 34117u), 19u)] - _wgslsmith_f_op_f32(var_1.b.b.x * _wgslsmith_f_op_f32(min(-459f, var_0.b.b.x)))), -740f));
}

fn func_1(arg_0: vec4<f32>, arg_1: f32, arg_2: bool, arg_3: i32) -> vec2<u32> {
    let var_0 = Struct_2(abs(_wgslsmith_add_vec3_i32(vec3<i32>(6059i, u_input.b, 0i) << (~vec3<u32>(4294967295u, 211u, 0u) % vec3<u32>(32u)), ~(~u_input.a))), func_2());
    var var_1 = var_0;
    var var_2 = var_0;
    let var_3 = var_0;
    var_1 = Struct_2(var_2.a, func_2());
    return max(vec2<u32>((_wgslsmith_clamp_u32(14939u, 0u, 1u) << (~88877u % 32u)) << (72453u % 32u), 16660u), vec2<u32>(709u, max(_wgslsmith_dot_vec4_u32(select(vec4<u32>(0u, 62088u, 1u, 0u), vec4<u32>(4294967295u, 0u, 1553u, 0u), false), vec4<u32>(4294967295u, 13343u, 1u, 4294967295u)), countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(64847u, 59980u, 39624u), vec3<u32>(1u, 12267u, 41466u))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 19>();
    let var_0 = Struct_1(true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0[_wgslsmith_index_u32(0u, 19u)], 748f), vec2<f32>(-945f, global0[_wgslsmith_index_u32(27291u, 19u)]))) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0[_wgslsmith_index_u32(1u, 19u)], global0[_wgslsmith_index_u32(0u, 19u)]), vec2<f32>(1474f, 1285f), vec2<bool>(false, true)))))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1000f, 137f)) - global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(func_1(vec4<f32>(-1588f, var_0.b.x, global0[_wgslsmith_index_u32(0u, 19u)], var_0.b.x), _wgslsmith_div_f32(681f, -2854f), var_0.a, countOneBits(-11167i)), firstTrailingBit(vec2<u32>(8947u, 1u))), 19u)]);
    var var_2 = ~(countOneBits(select(vec2<u32>(1u, 1u), vec2<u32>(1u, 0u), true)) >> (vec2<u32>(~1u, _wgslsmith_div_u32(_wgslsmith_div_u32(4294967295u, 1u), ~1u)) % vec2<u32>(32u)));
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-105f - 529f), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 19u)]))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -198f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1579f))) * -487f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1858f))) * func_2().b.x))), _wgslsmith_f_op_f32(sign(-557f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_2.x, 19u)] + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 19u)]))))));
    let var_4 = vec3<u32>(var_2.x, 4294967295u << (~(~_wgslsmith_sub_u32(var_2.x, 20709u)) % 32u), ~4294967295u);
    var var_5 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec3<u32>(6378u, var_5.x, 1u) | (~vec3<u32>(var_5.x, var_5.x, var_2.x) & var_4)), abs(vec3<u32>(var_4.x, var_5.x, var_2.x & var_5.x) | _wgslsmith_mod_vec3_u32(~var_4, var_4)), u_input.a.x, 0u, _wgslsmith_f_op_vec2_f32(abs(var_0.b)));
}

