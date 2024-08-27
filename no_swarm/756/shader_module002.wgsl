struct Struct_1 {
    a: i32,
    b: i32,
    c: bool,
    d: i32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: bool,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: i32) -> vec3<f32> {
    global0 = Struct_2(-vec4<i32>(firstTrailingBit(select(-8583i, global0.d, global0.b)), arg_0, _wgslsmith_dot_vec4_i32(~vec4<i32>(-2147483647i, global0.a.x, -9814i, -1i), global0.a | global0.a), arg_0), true, 1i, arg_0);
    let var_0 = -29071i;
    let var_1 = global0.b;
    global0 = Struct_2(_wgslsmith_add_vec4_i32(global0.a >> (~vec4<u32>(4294967295u, 0u, 0u, u_input.b.x) % vec4<u32>(32u)), ~vec4<i32>(firstTrailingBit(-28795i), global0.c, 1i, -4023i)), false, arg_0, global0.a.x);
    let var_2 = firstTrailingBit(~vec2<i32>(~(~2147483647i), arg_0 & -2147483647i));
    return _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(1904f, 214f, 1201f) + vec3<f32>(-722f, -496f, -588f)), _wgslsmith_div_vec3_f32(vec3<f32>(-1140f, -2185f, -312f), vec3<f32>(424f, 1835f, 1257f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(522f, 588f)), 212f, -2634f)))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<f32>) -> bool {
    var var_0 = arg_0;
    let var_1 = arg_1;
    var var_2 = arg_2;
    var var_3 = firstTrailingBit(~u_input.b.ywx);
    let var_4 = _wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(select(firstLeadingBit(-global0.a), _wgslsmith_sub_vec4_i32(vec4<i32>(45931i, arg_0.d, 2147483647i, 50074i), vec4<i32>(1i, 2147483647i, global0.a.x, arg_1.d)), vec4<bool>(!arg_0.b, false, true, -1i == arg_0.a.x)), global0.a), arg_0.a);
    return 31146i == _wgslsmith_mod_i32(var_4.x | 52219i, -33435i);
}

fn func_2(arg_0: vec3<bool>) -> Struct_2 {
    let var_0 = Struct_1(-global0.c, ~(-1i), true || func_4(Struct_2(global0.a, true, _wgslsmith_add_i32(global0.c, global0.d), 1210i), Struct_1(global0.a.x, 0i, arg_0.x, global0.c >> (4294967295u % 32u), _wgslsmith_div_vec3_u32(u_input.b.wxx, vec3<u32>(49120u, u_input.c, u_input.b.x))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(global0.d)), vec3<f32>(906f, 852f, -1178f))), _wgslsmith_sub_i32(_wgslsmith_mod_i32(-37128i, global0.c), -27475i) ^ -2147483647i, ~countOneBits(abs(vec3<u32>(u_input.d, u_input.b.x, u_input.d))) ^ _wgslsmith_add_vec3_u32(select(vec3<u32>(u_input.b.x, u_input.c, u_input.a), select(vec3<u32>(4294967295u, u_input.b.x, 1u), u_input.b.yzx, arg_0), 1u < u_input.d), _wgslsmith_mod_vec3_u32(~u_input.b.xwx, ~u_input.b.zwx)));
    var var_1 = Struct_2(select(-vec4<i32>(-38781i, 1i, 44733i, global0.d) ^ select(-vec4<i32>(var_0.d, 5556i, -30499i, 1i), abs(global0.a), !vec4<bool>(var_0.c, false, true, false)), -_wgslsmith_mod_vec4_i32(global0.a, vec4<i32>(var_0.d, global0.d, global0.a.x, -2147483647i)) & global0.a, select(select(select(vec4<bool>(false, var_0.c, false, var_0.c), vec4<bool>(true, true, arg_0.x, false), var_0.c), vec4<bool>(var_0.c, global0.b, arg_0.x, arg_0.x), vec4<bool>(var_0.c, global0.b, arg_0.x, false)), select(vec4<bool>(arg_0.x, var_0.c, global0.b, false), select(vec4<bool>(true, true, var_0.c, false), vec4<bool>(var_0.c, global0.b, true, false), false), !vec4<bool>(arg_0.x, var_0.c, false, true)), all(vec3<bool>(global0.b, arg_0.x, false)) | !var_0.c)), all(!(!vec4<bool>(global0.b, true, arg_0.x, arg_0.x))), _wgslsmith_mod_i32(abs(~(-1i)), 67871i), var_0.a);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -773f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-1000f)), -262f)))))));
    var var_3 = _wgslsmith_add_i32(firstTrailingBit(i32(-1i) * -2147483647i) >> (countOneBits(_wgslsmith_mult_u32(var_0.e.x, u_input.b.x) & 0u) % 32u), var_0.a);
    global0 = Struct_2(var_1.a, !(!(~u_input.b.x < firstTrailingBit(49874u))), -_wgslsmith_dot_vec3_i32(~(~vec3<i32>(1i, -64099i, var_0.d)), _wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(global0.a.yyz, vec3<i32>(39622i, var_0.a, var_1.c)), global0.a.ywz)), abs(-(~36162i)));
    return Struct_2(~var_1.a, global0.b, firstLeadingBit(select(var_0.b, _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(global0.a.wz, vec2<i32>(var_1.a.x, -1i)), var_1.a.ww), (-5206i < var_0.a) & var_0.c)), -_wgslsmith_mod_i32(~(-38922i << (u_input.d % 32u)), var_1.d));
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: Struct_2) -> Struct_2 {
    global0 = arg_3;
    global0 = func_2(!(!arg_2));
    var var_0 = func_2(!select(!select(arg_2, vec3<bool>(true, true, arg_1.c), arg_1.c), arg_2, !(!arg_2.x)));
    var_0 = func_2(arg_2);
    var var_1 = arg_3;
    return Struct_2(abs(global0.a), _wgslsmith_dot_vec3_u32(firstTrailingBit(~u_input.b.wwz), u_input.b.ywy) != u_input.d, 0i, -28759i);
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: f32) -> f32 {
    let var_0 = arg_3 <= arg_3;
    let var_1 = _wgslsmith_dot_vec2_i32(global0.a.zy, ~(-vec2<i32>(arg_2.c, arg_2.c))) > arg_1.b;
    global0 = func_1(global0.a.x, arg_1, select(vec3<bool>(arg_2.b, true, !(!global0.b)), vec3<bool>(true, func_1(max(global0.a.x, arg_2.c), arg_1, select(vec3<bool>(false, true, false), vec3<bool>(arg_2.b, false, arg_1.c), true), func_2(vec3<bool>(var_1, global0.b, var_1))).b, !func_1(global0.a.x, arg_1, vec3<bool>(false, false, var_0), arg_2).b), vec3<bool>(true, false, false)), arg_2);
    var var_2 = 1000f;
    global0 = arg_2;
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(arg_3, 1762f, any(!vec3<bool>(var_1, var_1, var_1))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-512f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(vec2<i32>(global0.a.x, -16861i), Struct_1(-3426i, 2147483647i, global0.b, 0i, u_input.b.zzy), func_1(global0.a.x, Struct_1(global0.c, global0.d, global0.b, -58426i, vec3<u32>(1u, 1u, u_input.d)), vec3<bool>(global0.b, global0.b, global0.b), Struct_2(global0.a, global0.b, -15475i, -34839i)), _wgslsmith_f_op_f32(476f - 593f))))) == -282f;
    var_0 = func_2(vec3<bool>(global0.b, ((global0.b & global0.b) | !global0.b) & select(!global0.b, true, false), any(!select(vec2<bool>(global0.b, global0.b), vec2<bool>(false, global0.b), true)))).b;
    var var_1 = vec2<i32>(func_2(!vec3<bool>(global0.b && global0.b, global0.b, true)).d, -global0.d);
    let var_2 = Struct_1(abs(i32(-1i) * -8259i), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(~(-global0.a), vec4<i32>(~(-2147483647i), _wgslsmith_mult_i32(10694i, var_1.x), ~var_1.x, -1i)), vec4<i32>(17874i, var_1.x, var_1.x, -912i)), false, ~(-1i), _wgslsmith_mod_vec3_u32(~vec3<u32>(1u, 1u, 1u), countOneBits(vec3<u32>(u_input.b.x, 4294967295u, u_input.d) >> (vec3<u32>(u_input.b.x, 12246u, 58408u) % vec3<u32>(32u))) >> (u_input.b.wyz % vec3<u32>(32u))));
    var var_3 = _wgslsmith_clamp_vec3_i32(vec3<i32>(reverseBits(firstTrailingBit(0i)), 0i, global0.d), vec3<i32>(countOneBits(global0.c), -2147483647i, _wgslsmith_clamp_i32(-2147483647i << (_wgslsmith_dot_vec3_u32(var_2.e, vec3<u32>(1538u, 1u, 4294967295u)) % 32u), var_2.b ^ 3568i, _wgslsmith_add_i32(-72046i, 2793i) >> (u_input.a % 32u))), vec3<i32>(_wgslsmith_add_i32(var_1.x, var_1.x), var_1.x, ~_wgslsmith_sub_i32(_wgslsmith_mod_i32(-65144i, 28484i), _wgslsmith_div_i32(global0.c, global0.d))));
    var var_4 = Struct_2(func_2(vec3<bool>(var_2.c, any(vec4<bool>(true, true, true, true)), true)).a, true, _wgslsmith_add_i32(var_2.a, var_1.x), ~(-(~33944i)));
    var_3 = vec3<i32>(~(~(~(-61697i))), _wgslsmith_clamp_i32(var_2.b, var_3.x, ~global0.d), -_wgslsmith_mult_i32(~(-45007i << (1u % 32u)), -20668i));
    let var_5 = firstTrailingBit(u_input.d | 27237u);
    let x = u_input.a;
    s_output = StorageBuffer(-619f, var_1.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2672f), -369f, _wgslsmith_f_op_f32(f32(-1f) * -173f), _wgslsmith_f_op_f32(f32(-1f) * -1123f))))), -579f);
}

