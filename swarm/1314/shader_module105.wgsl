struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<bool>,
    c: f32,
}

struct Struct_3 {
    a: bool,
    b: u32,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: bool = false;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
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

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_4, arg_1: f32, arg_2: Struct_2, arg_3: vec3<bool>) -> vec4<u32> {
    var var_0 = countOneBits(firstTrailingBit((select(vec4<u32>(global0.a.b, u_input.a.x, u_input.c, 82486u), vec4<u32>(arg_0.a.b, 7618u, 6156u, 1u), arg_2.b.x) << (abs(u_input.a) % vec4<u32>(32u))) << (u_input.a % vec4<u32>(32u))));
    var var_1 = (abs(_wgslsmith_dot_vec3_u32(var_0.wzw >> (vec3<u32>(arg_0.a.b, 4294967295u, arg_0.a.b) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(global0.a.b, u_input.a.x, u_input.c), vec3<u32>(0u, 0u, 37215u), vec3<u32>(u_input.b.x, 1u, arg_0.a.b)))) & ~1u) | global0.a.b;
    var var_2 = u_input.a.wyz;
    var_0 = vec4<u32>(23639u, 45739u, 95578u, global0.a.b);
    var var_3 = _wgslsmith_sub_vec2_u32(var_2.yx, select(countOneBits(vec2<u32>(arg_0.a.b, u_input.a.x)), vec2<u32>(24956u, 130403u), all(vec4<bool>(false, global0.a.a, false, arg_0.a.a))) >> (firstLeadingBit(countOneBits(var_0.zy)) % vec2<u32>(32u))) & (var_0.wx & var_0.yz);
    return vec4<u32>(~_wgslsmith_mult_u32(~(~var_2.x), ~(~107444u)), reverseBits(var_3.x), ~var_3.x | (u_input.b.x & var_3.x), u_input.a.x);
}

fn func_2(arg_0: u32, arg_1: vec2<bool>, arg_2: vec4<bool>, arg_3: bool) -> f32 {
    global1 = false;
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-698f))), 288f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, 1123f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(915f - 1517f), 1334f) * 356f)));
    let var_1 = global0.a;
    let var_2 = ~_wgslsmith_div_vec4_u32(func_3(Struct_4(Struct_3(false, arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + -544f)), Struct_2(!arg_2.zww, vec3<bool>(arg_3, arg_1.x, arg_2.x), _wgslsmith_f_op_f32(round(var_0.x))), vec3<bool>(true, true, true)), max(u_input.a, reverseBits(u_input.a) | countOneBits(u_input.a)));
    global0 = Struct_4(global0.a);
    return _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1903f, 889f))));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: f32, arg_3: Struct_1) -> Struct_3 {
    return global0.a;
}

fn func_1(arg_0: i32, arg_1: vec3<bool>) -> bool {
    var var_0 = func_4(Struct_2(!select(select(vec3<bool>(true, global0.a.a, false), arg_1, vec3<bool>(false, arg_1.x, global0.a.a)), vec3<bool>(true, true, true), false != arg_1.x), select(select(vec3<bool>(global0.a.a, global0.a.a, false), select(arg_1, arg_1, arg_1), any(arg_1)), select(select(arg_1, arg_1, vec3<bool>(true, arg_1.x, true)), arg_1, vec3<bool>(false, arg_1.x, global0.a.a)), !any(vec4<bool>(global0.a.a, global0.a.a, global0.a.a, arg_1.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-571f - -1250f)))))), ~_wgslsmith_mult_vec3_u32(u_input.a.yzx, u_input.a.xyx), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(650f - -1240f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(global0.a.b, vec2<bool>(global0.a.a, global0.a.a), vec4<bool>(true, global0.a.a, false, true), global0.a.a))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1546f) + 1000f)), Struct_1(min(~_wgslsmith_div_vec3_i32(vec3<i32>(44972i, arg_0, 0i), vec3<i32>(arg_0, arg_0, arg_0)), -firstLeadingBit(vec3<i32>(80978i, arg_0, 0i)))));
    let var_1 = vec3<bool>(arg_1.x, false, !all(select(!vec4<bool>(false, true, global0.a.a, true), vec4<bool>(arg_1.x, true, false, global0.a.a), vec4<bool>(true, arg_1.x, arg_1.x, global0.a.a))));
    global1 = var_1.x;
    global1 = func_4(Struct_2(vec3<bool>(true, var_0.a, all(arg_1.zy)), !(!select(arg_1, vec3<bool>(true, var_0.a, false), vec3<bool>(arg_1.x, true, global0.a.a))), _wgslsmith_f_op_f32(-290f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1698f + -505f)))), firstLeadingBit(firstTrailingBit(vec3<u32>(var_0.b & 11262u, 4294967295u, min(u_input.a.x, u_input.a.x)))), _wgslsmith_f_op_f32(abs(-2987f)), Struct_1(-vec3<i32>(max(20179i, arg_0), 2147483647i, arg_0))).a;
    var var_2 = vec3<i32>(min(arg_0, -_wgslsmith_add_i32(arg_0, arg_0)) >> (~4294967295u % 32u), -2147483647i, arg_0);
    return any(select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, arg_1.x, var_0.a, true), vec4<bool>(false, false, false, var_1.x), vec4<bool>(true, false, arg_1.x, var_0.a))), vec4<bool>(true, !arg_1.x, arg_1.x, var_1.x), !var_0.a)) & (false && (true | any(!vec4<bool>(true, false, var_1.x, arg_1.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1i;
    var var_1 = Struct_2(vec3<bool>(true, any(vec4<bool>(true, false, true, func_1(2147483647i, vec3<bool>(false, global0.a.a, global0.a.a)))), any(select(!vec4<bool>(global0.a.a, global0.a.a, false, global0.a.a), select(vec4<bool>(global0.a.a, global0.a.a, global0.a.a, false), vec4<bool>(global0.a.a, true, global0.a.a, true), global0.a.a), select(vec4<bool>(global0.a.a, global0.a.a, true, global0.a.a), vec4<bool>(global0.a.a, false, true, true), vec4<bool>(true, global0.a.a, true, global0.a.a))))), select(select(vec3<bool>(global0.a.a || global0.a.a, true, true), select(vec3<bool>(global0.a.a, false, global0.a.a), !vec3<bool>(global0.a.a, false, true), !vec3<bool>(global0.a.a, global0.a.a, global0.a.a)), vec3<bool>(true, false, true)), select(!(!vec3<bool>(global0.a.a, true, false)), select(!vec3<bool>(global0.a.a, false, global0.a.a), vec3<bool>(true, global0.a.a, true), select(vec3<bool>(global0.a.a, global0.a.a, false), vec3<bool>(global0.a.a, global0.a.a, global0.a.a), vec3<bool>(global0.a.a, true, false))), vec3<bool>(any(vec3<bool>(global0.a.a, global0.a.a, false)), false, 11787u != u_input.c)), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-842f, 263f, var_0 != _wgslsmith_mod_i32(-1i, var_0))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(536f)))))));
    var var_2 = ~(u_input.b & u_input.b);
    var var_3 = true;
    let var_4 = var_1.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c, -1709f, var_1.c, var_1.c)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c, var_1.c, -945f, 1692f))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.c, 573f, 880f, var_1.c) - vec4<f32>(1000f, 1000f, -1220f, var_1.c))) + vec4<f32>(_wgslsmith_f_op_f32(min(-508f, 485f)), _wgslsmith_f_op_f32(-var_1.c), _wgslsmith_f_op_f32(var_1.c - 885f), _wgslsmith_f_op_f32(f32(-1f) * -1333f)))), countOneBits(select(var_2.x, ~firstLeadingBit(0u), global0.a.a && !global0.a.a)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(657f, var_1.c, -862f, var_1.c)) + vec4<f32>(-1000f, var_1.c, -940f, var_1.c)))))));
}

