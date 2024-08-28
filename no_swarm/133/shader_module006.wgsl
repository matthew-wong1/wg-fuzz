struct Struct_1 {
    a: f32,
    b: f32,
    c: vec3<bool>,
    d: u32,
    e: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: f32;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<i32>, arg_1: bool, arg_2: Struct_1, arg_3: vec3<bool>) -> vec2<i32> {
    global1 = -911f;
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -786f) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a + arg_2.a)), arg_2.b) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2096f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, -1000f, true)))))));
    global0 = select(select(vec4<bool>(true, true, all(arg_3) || false, arg_1), vec4<bool>(true, any(select(vec3<bool>(global0.x, arg_3.x, true), vec3<bool>(false, global0.x, arg_1), vec3<bool>(true, true, false))), arg_0.x == -27762i, any(vec4<bool>(global0.x, true, arg_3.x, arg_2.c.x)) | true), true), !vec4<bool>(arg_2.c.x, true, true, !any(global0.yz)), any(vec4<bool>(true, !any(vec3<bool>(arg_1, global0.x, global0.x)), _wgslsmith_f_op_f32(select(arg_2.b, -428f, false)) < _wgslsmith_f_op_f32(f32(-1f) * -1000f), false)));
    var var_0 = !any(select(select(select(vec2<bool>(false, global0.x), arg_2.c.zy, vec2<bool>(false, arg_3.x)), !global0.zw, global0.x), arg_2.c.zx, vec2<bool>(!arg_3.x, true)));
    var var_1 = select(max(vec3<i32>(arg_0.x, -1i, _wgslsmith_add_i32(-arg_2.e, -5235i)), _wgslsmith_mod_vec3_i32(-vec3<i32>(arg_0.x, arg_2.e, arg_0.x), -(vec3<i32>(-34071i, arg_2.e, 2147483647i) & vec3<i32>(2147483647i, -1i, 0i)))), ~(~(~(-vec3<i32>(arg_0.x, arg_2.e, -1i)))), !arg_2.c);
    return -arg_0;
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec4<f32>) -> bool {
    var var_0 = arg_1.e;
    global0 = vec4<bool>(any(arg_0) != true, true, false, !(!arg_1.c.x));
    var_0 = _wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(~arg_1.e, 30185i ^ arg_1.e)), _wgslsmith_mod_vec2_i32(select(vec2<i32>(arg_1.e, arg_1.e) << ((u_input.a >> (u_input.a % vec2<u32>(32u))) % vec2<u32>(32u)), ~select(vec2<i32>(arg_1.e, -2147483647i), vec2<i32>(arg_1.e, arg_1.e), arg_0.x), false), func_3(_wgslsmith_div_vec2_i32(vec2<i32>(arg_1.e, 1i) | vec2<i32>(arg_1.e, -14973i), min(vec2<i32>(arg_1.e, arg_1.e), vec2<i32>(arg_1.e, 35472i))), arg_0.x, arg_1, arg_1.c)));
    global0 = select(!select(!vec4<bool>(false, false, arg_1.c.x, false), arg_0, all(vec3<bool>(global0.x, arg_0.x, arg_0.x))), !select(vec4<bool>(true, true, any(vec3<bool>(global0.x, false, arg_1.c.x)), false), select(vec4<bool>(global0.x, arg_0.x, true, arg_1.c.x), select(vec4<bool>(true, global0.x, arg_1.c.x, true), arg_0, arg_1.c.x), vec4<bool>(arg_0.x, arg_1.c.x, arg_1.c.x, true)), !select(vec4<bool>(global0.x, global0.x, false, false), vec4<bool>(true, true, true, arg_0.x), arg_0.x)), !arg_1.c.x);
    var var_1 = arg_1.c.x;
    return arg_0.x;
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: vec3<f32>) -> vec2<u32> {
    var var_0 = vec4<bool>(!any(vec4<bool>(true, false != global0.x, true, true)), func_2(vec4<bool>(global0.x, global0.x, true, arg_1.c.x), arg_1, arg_0), !(_wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(arg_1.e, -1i)), vec2<i32>(1i, 2147483647i)) >= -57093i), global0.x);
    global0 = vec4<bool>(!(_wgslsmith_dot_vec4_u32(select(vec4<u32>(arg_1.d, u_input.a.x, 0u, 12274u), vec4<u32>(arg_1.d, 1u, u_input.a.x, 10154u), arg_1.c.x), vec4<u32>(0u, 65616u, 0u, 37518u)) <= abs(u_input.a.x)), false || func_2(vec4<bool>(!global0.x, func_2(vec4<bool>(false, true, var_0.x, arg_1.c.x), Struct_1(614f, arg_2.x, var_0.zyx, u_input.a.x, 2147483647i), vec4<f32>(-251f, -1288f, -1043f, 352f)), true & global0.x, !var_0.x), arg_1, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(arg_0)) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_3.x, -291f, arg_3.x, arg_3.x), arg_0)))), !all(!select(vec4<bool>(global0.x, arg_1.c.x, false, false), vec4<bool>(global0.x, global0.x, true, true), vec4<bool>(false, false, var_0.x, global0.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.x)))) != _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_2.x, arg_3.x), _wgslsmith_div_f32(234f, arg_3.x)))));
    global0 = vec4<bool>(false, global0.x, global0.x, any(var_0.wxx));
    let var_1 = arg_1.c;
    var var_2 = _wgslsmith_div_vec2_i32(select(vec2<i32>(-5373i, arg_1.e << (~u_input.a.x % 32u)), vec2<i32>(-2147483647i, arg_1.e), select(select(vec2<bool>(arg_1.c.x, true), select(global0.yy, vec2<bool>(true, false), arg_1.c.yy), var_1.x), vec2<bool>(var_0.x, all(vec3<bool>(global0.x, true, var_1.x))), select(select(vec2<bool>(true, var_1.x), global0.ww, var_0.xy), select(arg_1.c.yx, var_0.wz, arg_1.c.x), vec2<bool>(var_1.x, true)))), -_wgslsmith_add_vec2_i32(vec2<i32>(arg_1.e, arg_1.e) >> (vec2<u32>(u_input.a.x, 63348u) % vec2<u32>(32u)), select(vec2<i32>(arg_1.e, 2147483647i), vec2<i32>(-26649i, arg_1.e), vec2<bool>(global0.x, var_1.x))) ^ abs(~(~vec2<i32>(arg_1.e, 41936i))));
    return ~vec2<u32>(~u_input.a.x, _wgslsmith_sub_u32(_wgslsmith_clamp_u32(~u_input.a.x, 36445u, u_input.a.x), _wgslsmith_add_u32(72434u, u_input.a.x) >> (1u % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(_wgslsmith_mod_vec2_u32(~vec2<u32>(1u, u_input.a.x), vec2<u32>(u_input.a.x, u_input.a.x) >> (u_input.a % vec2<u32>(32u))), u_input.a, !vec2<bool>(global0.x, global0.x)) >> (_wgslsmith_mod_vec2_u32(func_1(vec4<f32>(-652f, 2561f, 1166f, 310f), Struct_1(-953f, -754f, global0.zwx, 1u, -26995i), vec2<f32>(-1000f, -836f), vec3<f32>(194f, -1170f, -195f)) >> (~u_input.a % vec2<u32>(32u)), _wgslsmith_mod_vec2_u32(~vec2<u32>(117813u, u_input.a.x), _wgslsmith_clamp_vec2_u32(u_input.a, u_input.a, u_input.a))) % vec2<u32>(32u)), _wgslsmith_add_vec2_u32(select(vec2<u32>(0u, u_input.a.x), ~vec2<u32>(u_input.a.x, 0u), true) >> (vec2<u32>(4294967295u, u_input.a.x) % vec2<u32>(32u)), firstTrailingBit(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 0u, 67307u), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), 4515u ^ u_input.a.x))), all(vec2<bool>(func_2(vec4<bool>(true, false, true, false), Struct_1(-2090f, -1208f, vec3<bool>(true, global0.x, global0.x), 24982u, 4416i), vec4<f32>(-804f, 659f, 121f, -473f)) || select(global0.x, true, false), max(45136i, -3528i) >= _wgslsmith_dot_vec4_i32(vec4<i32>(660i, 2147483647i, -2147483647i, 20509i), vec4<i32>(-19494i, 1i, 24030i, 0i)))));
    let var_1 = global0.x;
    let var_2 = Struct_1(144f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2963f - -1947f) * -1878f), !vec3<bool>(select(all(vec4<bool>(true, global0.x, global0.x, true)), false, true), func_2(!vec4<bool>(global0.x, global0.x, global0.x, global0.x), Struct_1(-1858f, 1448f, global0.xyw, u_input.a.x, 0i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-385f, 1089f, 879f, -1159f))), false), u_input.a.x, -(~firstTrailingBit(0i)));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1142f + _wgslsmith_f_op_f32(trunc(var_2.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.b + 2277f) + _wgslsmith_f_op_f32(-3278f - var_2.a)))))), 1104f, vec3<bool>(!global0.x, !var_2.c.x, false), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_0.x, 13492u, 59795u) & vec4<u32>(u_input.a.x, 0u, var_0.x, var_2.d), ~vec4<u32>(4294967295u, var_0.x, u_input.a.x, var_0.x)) & 0u, _wgslsmith_add_i32(abs(0i << (~var_0.x % 32u)), 1i));
    global1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_2.a), var_2.b));
    var var_4 = firstTrailingBit(~(vec2<i32>(-1i) * -(~vec2<i32>(var_3.e, -1i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_i32(~vec3<i32>(var_3.e, -2147483647i, var_4.x), max(vec3<i32>(0i, -13133i, 12471i), vec3<i32>(var_2.e, -2855i, -6149i))) ^ vec3<i32>(var_3.e, var_2.e, _wgslsmith_add_i32(~var_2.e, 0i)), i32(-1i) * -_wgslsmith_dot_vec4_i32(max(vec4<i32>(57232i, var_4.x, 2147483647i, -17756i), vec4<i32>(-33833i, var_2.e, var_4.x, -1i)), _wgslsmith_mult_vec4_i32(vec4<i32>(var_3.e, -1i, var_2.e, 1i), vec4<i32>(2147483647i, -1i, -960i, var_3.e))), vec2<u32>(1u, var_2.d), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(var_3.a))))))));
}

