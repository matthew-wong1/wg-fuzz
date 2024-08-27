struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec2<i32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> bool {
    let var_0 = Struct_1(!(!all(select(vec3<bool>(false, false, global0.a), vec3<bool>(global0.a, global0.a, true), vec3<bool>(true, global0.a, global0.a)))));
    let var_1 = abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(-u_input.b.x, u_input.b.x, -9020i, -1i), ~(vec4<i32>(29352i, -1i, 15170i, -408i) >> (vec4<u32>(23401u, 4294967295u, 30849u, u_input.c.x) % vec4<u32>(32u))), ~(-vec4<i32>(u_input.b.x, 1i, u_input.b.x, -31153i))) << (~firstLeadingBit(select(vec4<u32>(u_input.c.x, u_input.c.x, 9806u, 74363u), vec4<u32>(u_input.c.x, 4294967295u, 32335u, u_input.c.x), vec4<bool>(false, global0.a, global0.a, global0.a))) % vec4<u32>(32u)));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1277f, 1819f, 344f), vec3<f32>(1000f, 618f, -716f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1001f, 202f, -262f)), all(vec2<bool>(global0.a, global0.a)))))) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(105f, 989f, 524f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1456f, -495f, -1404f), vec3<f32>(699f, 356f, 1000f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(592f, -1219f, -342f)))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(581f, _wgslsmith_f_op_f32(f32(-1f) * -1143f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(166f + 1000f) - _wgslsmith_f_op_f32(-658f * -172f)))));
    let var_3 = var_0;
    var var_4 = select(vec2<bool>(any(vec2<bool>(true, true)), (_wgslsmith_div_i32(1i, 2745i) | min(-10395i, u_input.b.x)) < (abs(u_input.a) << (abs(u_input.c.x) % 32u))), !select(select(!vec2<bool>(global0.a, var_0.a), select(vec2<bool>(true, var_0.a), vec2<bool>(true, true), var_0.a), !vec2<bool>(global0.a, false)), select(vec2<bool>(true, var_3.a), select(vec2<bool>(true, false), vec2<bool>(var_3.a, global0.a), vec2<bool>(global0.a, true)), select(vec2<bool>(true, var_0.a), vec2<bool>(global0.a, var_3.a), vec2<bool>(false, true))), select(select(vec2<bool>(false, true), vec2<bool>(false, global0.a), true), select(vec2<bool>(global0.a, true), vec2<bool>(var_0.a, false), vec2<bool>(false, true)), true)), select(vec2<bool>(var_3.a, true), !vec2<bool>(!var_0.a, var_0.a), global0.a));
    return select(true, !(any(!vec4<bool>(false, var_3.a, true, true)) == false), !any(!vec2<bool>(true, var_0.a)) | any(!select(vec4<bool>(false, var_3.a, false, false), vec4<bool>(global0.a, var_4.x, var_0.a, false), vec4<bool>(global0.a, var_3.a, var_0.a, false))));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: vec3<i32>, arg_3: i32) -> bool {
    let var_0 = global0.a;
    var var_1 = 6218u;
    global0 = Struct_1(arg_0.a);
    return true;
}

fn func_2(arg_0: vec4<i32>) -> vec3<bool> {
    global0 = Struct_1(false);
    global0 = Struct_1(!global0.a);
    global0 = Struct_1(global0.a);
    let var_0 = Struct_1(global0.a);
    var var_1 = firstLeadingBit(arg_0.x);
    return select(vec3<bool>(func_4(Struct_1(func_3()), _wgslsmith_mod_i32(i32(-1i) * -1i, _wgslsmith_add_i32(-38862i, arg_0.x)), _wgslsmith_div_vec3_i32(-u_input.b, _wgslsmith_add_vec3_i32(vec3<i32>(arg_0.x, -54668i, arg_0.x), vec3<i32>(arg_0.x, arg_0.x, 1i))), 1i), true, all(!vec3<bool>(false, global0.a, var_0.a))), select(vec3<bool>(all(!vec3<bool>(false, global0.a, false)), true, var_0.a), !select(vec3<bool>(false, global0.a, global0.a), !vec3<bool>(global0.a, true, true), !vec3<bool>(var_0.a, var_0.a, global0.a)), false), !select(vec3<bool>(true, u_input.c.x > 20767u, select(true, global0.a, true)), !(!vec3<bool>(var_0.a, false, false)), !vec3<bool>(false, false, var_0.a)));
}

fn func_5(arg_0: i32, arg_1: bool, arg_2: vec3<bool>, arg_3: Struct_1) -> Struct_1 {
    global0 = Struct_1(true);
    let var_0 = vec2<bool>(!all(!func_2(vec4<i32>(-39319i, arg_0, 0i, 70920i))), arg_2.x);
    global0 = arg_3;
    let var_1 = arg_3;
    var var_2 = _wgslsmith_f_op_f32(-1444f - -249f);
    return var_1;
}

fn func_1(arg_0: vec3<u32>, arg_1: vec4<i32>) -> Struct_1 {
    global0 = func_5(~(-select(_wgslsmith_mult_i32(u_input.a, 19694i), 1i >> (u_input.c.x % 32u), false)), true, select(!select(func_2(vec4<i32>(arg_1.x, arg_1.x, u_input.a, 2147483647i)), select(vec3<bool>(global0.a, false, false), vec3<bool>(global0.a, global0.a, true), false), func_2(vec4<i32>(30145i, arg_1.x, 49103i, u_input.a))), func_2(select(max(vec4<i32>(22135i, arg_1.x, 0i, arg_1.x), arg_1), vec4<i32>(arg_1.x, u_input.b.x, u_input.a, 1i), select(vec4<bool>(global0.a, false, global0.a, true), vec4<bool>(true, false, global0.a, true), vec4<bool>(global0.a, global0.a, global0.a, global0.a)))), !(!vec3<bool>(true, global0.a, global0.a))), Struct_1(true & global0.a));
    global0 = Struct_1(any(select(vec2<bool>(true, global0.a), !(!vec2<bool>(global0.a, false)), func_2(vec4<i32>(-1i, u_input.a, arg_1.x, 2147483647i)).yz)));
    let var_0 = Struct_1(false);
    var var_1 = Struct_1(var_0.a);
    var_1 = var_0;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(select(vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x) >> (~vec3<u32>(111u, u_input.c.x, u_input.c.x) % vec3<u32>(32u)), countOneBits(max(vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x), u_input.c)), true) & u_input.c, firstLeadingBit(countOneBits(vec4<i32>(abs(-26418i), reverseBits(2147483647i), _wgslsmith_mult_i32(u_input.a, u_input.b.x), u_input.a))));
    var var_0 = vec3<i32>(~(_wgslsmith_div_i32(-32795i, _wgslsmith_sub_i32(53299i, u_input.a)) ^ ~_wgslsmith_sub_i32(u_input.a, u_input.b.x)), -1882i, -u_input.b.x);
    var var_1 = (!global0.a | true) | global0.a;
    var_0 = _wgslsmith_add_vec3_i32(min(vec3<i32>(i32(-1i) * -7504i, ~7961i, u_input.b.x) >> (_wgslsmith_sub_vec3_u32(~u_input.c, u_input.c ^ u_input.c) % vec3<u32>(32u)), u_input.b), u_input.b);
    global0 = func_5(17174i, true, vec3<bool>(true, ((2147483647i >> (u_input.c.x % 32u)) & (i32(-1i) * -74053i)) >= ~_wgslsmith_sub_i32(u_input.b.x, -31854i), true), Struct_1(all(select(select(vec2<bool>(global0.a, global0.a), vec2<bool>(global0.a, global0.a), global0.a), select(vec2<bool>(true, global0.a), vec2<bool>(false, true), vec2<bool>(global0.a, global0.a)), select(false, global0.a, false)))));
    let var_2 = !select(vec4<bool>(any(vec3<bool>(false, global0.a, global0.a)), !global0.a && (true & global0.a), reverseBits(u_input.a) != u_input.a, true & !global0.a), !select(select(vec4<bool>(global0.a, false, true, global0.a), vec4<bool>(global0.a, true, global0.a, global0.a), vec4<bool>(global0.a, global0.a, global0.a, false)), select(vec4<bool>(global0.a, global0.a, true, false), vec4<bool>(global0.a, true, global0.a, false), vec4<bool>(global0.a, global0.a, global0.a, global0.a)), all(vec2<bool>(global0.a, global0.a))), vec4<bool>(false, true, !any(vec2<bool>(global0.a, global0.a)), true));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.xx, _wgslsmith_div_f32(865f, -246f), -(~_wgslsmith_div_vec2_i32(var_0.xy, -vec2<i32>(var_0.x, var_0.x))), firstLeadingBit(firstTrailingBit(u_input.a)), 82418u);
}

