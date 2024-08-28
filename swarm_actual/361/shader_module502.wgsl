struct Struct_1 {
    a: f32,
    b: i32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: i32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: bool,
}

struct Struct_5 {
    a: u32,
    b: i32,
    c: Struct_3,
    d: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: Struct_5 = Struct_5(53460u, -1i, Struct_3(Struct_1(1401f, 2147483647i, vec2<u32>(21445u, 63470u))), 20472i);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: Struct_2, arg_3: i32) -> bool {
    global0 = Struct_3(global0.a);
    global1 = Struct_5(1u, global1.d, Struct_3(Struct_1(global1.c.a.a, -9146i, reverseBits(~vec2<u32>(49849u, 72781u)))), _wgslsmith_mod_i32(u_input.c.x, global0.a.b));
    global0 = global1.c;
    let var_0 = any(vec3<bool>(!arg_2.a, false, false));
    global0 = global1.c;
    return true;
}

fn func_4(arg_0: u32, arg_1: Struct_4, arg_2: f32, arg_3: i32) -> u32 {
    global1 = Struct_5(global0.a.c.x, _wgslsmith_clamp_i32(22901i | firstTrailingBit(~arg_3), -firstLeadingBit(-2147483647i), countOneBits(~(-18949i))), global1.c, -_wgslsmith_mult_i32(1i, select(-15798i, u_input.c.x, arg_1.b)) | (-2147483647i & arg_3));
    return abs(u_input.a.x) ^ u_input.b;
}

fn func_2(arg_0: vec2<f32>, arg_1: vec3<bool>, arg_2: u32) -> i32 {
    global1 = Struct_5(0u, firstTrailingBit(1i), Struct_3(global1.c.a), global1.d);
    global0 = Struct_3(global0.a);
    global0 = global1.c;
    var var_0 = 1i;
    var var_1 = vec4<u32>(firstLeadingBit(max(25176u, 56400u)), ~26101u, func_4(~global0.a.c.x, Struct_4(Struct_2(func_3(global1.c.a, arg_2, Struct_2(arg_1.x, 1i), 0i), u_input.c.x), true, true), _wgslsmith_f_op_f32(global0.a.a + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global1.c.a.a - 1380f)))), _wgslsmith_mult_i32(_wgslsmith_add_i32(global1.d, abs(11021i)), ~u_input.c.x | 1i)), 4982u);
    return -1i;
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: vec3<u32>, arg_3: vec4<i32>) -> Struct_4 {
    let var_0 = ~(-_wgslsmith_mod_i32(-(arg_1.a.b ^ arg_3.x), func_2(arg_0.yy, select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), true), 93775u)));
    let var_1 = _wgslsmith_f_op_f32(select(arg_1.a.a, arg_0.x, false));
    global1 = Struct_5(~u_input.b, 2147483647i, arg_1, -25658i);
    let var_2 = Struct_2(all(vec3<bool>(any(vec3<bool>(false, true, true)), true, true)), ~(0i >> ((max(0u, 0u) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(125120u, 54633u, arg_1.a.c.x, global0.a.c.x), vec4<u32>(35910u, 1u, arg_1.a.c.x, 1u))) % 32u)));
    let var_3 = 2315f;
    return Struct_4(Struct_2(false, firstTrailingBit(-6117i)), any(!(!select(vec3<bool>(var_2.a, false, false), vec3<bool>(var_2.a, false, false), true))), var_2.a);
}

fn func_5(arg_0: Struct_4, arg_1: Struct_2, arg_2: vec4<bool>) -> vec2<bool> {
    let var_0 = Struct_3(global0.a);
    global0 = global1.c;
    var var_1 = Struct_5(~(~abs(25690u)), -20168i, var_0, -2147483647i);
    global0 = Struct_3(Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-257f, var_0.a.a), _wgslsmith_f_op_f32(min(1068f, global0.a.a)))), var_0.a.a)), arg_0.a.b, u_input.a.zy));
    global1 = Struct_5(_wgslsmith_add_u32(~(~4294967295u) | ~(~global1.c.a.c.x), abs(_wgslsmith_div_u32(func_4(36514u, arg_0, var_0.a.a, -1i), global0.a.c.x))), _wgslsmith_div_i32(-18007i, _wgslsmith_clamp_i32(~_wgslsmith_clamp_i32(-11292i, var_1.c.a.b, arg_0.a.b), -1i, 0i)), global1.c, -_wgslsmith_add_i32(1i, -2147483647i));
    return select(arg_2.yw, arg_2.zx, vec2<bool>(any(arg_2), any(vec3<bool>(true, true, arg_1.a)) || any(select(arg_2.yyx, arg_2.zww, arg_2.xww))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.a;
    let var_1 = select(!(!func_5(func_1(vec4<f32>(global0.a.a, 665f, global1.c.a.a, -302f), Struct_3(Struct_1(var_0.a, global1.c.a.b, vec2<u32>(8221u, 42879u))), u_input.a, vec4<i32>(26151i, var_0.b, u_input.c.x, 11788i)), func_1(vec4<f32>(-2546f, global0.a.a, global0.a.a, 114f), Struct_3(Struct_1(1809f, 2147483647i, vec2<u32>(4294967295u, global0.a.c.x))), u_input.a, vec4<i32>(var_0.b, 2147483647i, u_input.c.x, -1i)).a, vec4<bool>(true, true, true, true))), vec2<bool>(func_3(Struct_1(var_0.a, _wgslsmith_sub_i32(-5247i, global1.c.a.b), ~var_0.c), ~max(global1.a, global0.a.c.x), func_1(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global1.c.a.a, global0.a.a, global1.c.a.a, global0.a.a), vec4<f32>(-308f, 1372f, var_0.a, -748f))), global1.c, vec3<u32>(8375u, global1.c.a.c.x, 57708u), min(vec4<i32>(global0.a.b, 1i, -47158i, 0i), vec4<i32>(u_input.c.x, 1i, -16694i, 15375i))).a, -20006i), true), !func_5(Struct_4(func_1(vec4<f32>(var_0.a, global1.c.a.a, 548f, var_0.a), Struct_3(global0.a), u_input.a, vec4<i32>(-1896i, global1.b, 0i, -2147483647i)).a, any(vec3<bool>(false, false, true)), true), Struct_2(true, 2147483647i), vec4<bool>(true, true, true, true)));
    let var_2 = select(vec4<bool>(!(!var_1.x), !(any(vec3<bool>(true, false, var_1.x)) | !var_1.x), (-1131f > _wgslsmith_f_op_f32(-var_0.a)) | !func_3(Struct_1(-123f, 2147483647i, vec2<u32>(var_0.c.x, 1u)), var_0.c.x, Struct_2(false, global1.d), global1.b), func_3(global0.a, u_input.a.x, Struct_2(false && var_1.x, min(global1.c.a.b, -2090i)), global1.c.a.b)), vec4<bool>(_wgslsmith_f_op_f32(floor(-816f)) >= -618f, false || !(var_1.x & var_1.x), -reverseBits(2147483647i) != abs(-15769i >> (u_input.a.x % 32u)), !all(!var_1)), var_1.x);
    let var_3 = all(var_2.wz);
    global1 = Struct_5(firstTrailingBit(_wgslsmith_add_u32(48858u, countOneBits(var_0.c.x))), (select(14322i, ~global1.d, var_2.x) << (0u % 32u)) | _wgslsmith_clamp_i32(var_0.b, global0.a.b, -(~(-1i))), global1.c, global1.b);
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1448f, 677f, global1.c.a.a) * vec3<f32>(var_0.a, global1.c.a.a, -1319f)))))));
    var var_5 = !select(var_1, select(vec2<bool>(true, true), !var_1, !var_1), !all(var_2.ww));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(192f, -738f, var_0.a), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_4.x, var_0.a, var_0.a), vec3<f32>(global0.a.a, 436f, global0.a.a))), var_2.x && var_5.x)), vec3<f32>(-682f, _wgslsmith_f_op_f32(-global1.c.a.a), -360f)))), 490f, 600f);
}

