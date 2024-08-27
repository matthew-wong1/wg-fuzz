struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: bool,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: Struct_1,
    d: u32,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(-44547i, true, Struct_1(vec4<u32>(0u, 16047u, 70859u, 0u), i32(-2147483648), 32610i, true, vec4<i32>(-1i, 2147483647i, 0i, 37378i)), 4294967295u, vec2<bool>(true, false));

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: vec2<bool>) -> bool {
    return all(select(!select(vec3<bool>(arg_0.x, global0.e.x, true), vec3<bool>(true, true, true), vec3<bool>(true, global0.c.d, global0.c.d)), vec3<bool>(true, true, true), select(global0.c.d, true, all(select(vec3<bool>(true, true, arg_0.x), vec3<bool>(true, global0.c.d, arg_0.x), vec3<bool>(arg_0.x, arg_0.x, true))))));
}

fn func_3(arg_0: bool) -> Struct_2 {
    global0 = Struct_3(~u_input.e | -_wgslsmith_add_i32(~(-2147483647i), -36318i), !arg_0, Struct_1(~firstTrailingBit(global0.c.a), _wgslsmith_add_i32(u_input.e, 6794i), global0.c.c, true, vec4<i32>(0i, global0.c.e.x ^ 15611i, -u_input.e, 1i) >> (global0.c.a % vec4<u32>(32u))), firstTrailingBit(69010u), !select(select(!vec2<bool>(arg_0, false), global0.e, !vec2<bool>(global0.e.x, false)), select(vec2<bool>(arg_0, false), vec2<bool>(global0.c.d, false), !global0.e), !vec2<bool>(global0.b, true)));
    let var_0 = Struct_2(Struct_1(global0.c.a | vec4<u32>(83576u, _wgslsmith_div_u32(1u, u_input.c), global0.d, min(global0.d, global0.c.a.x)), -(i32(-1i) * -global0.a), -u_input.e, global0.a > u_input.e, -_wgslsmith_sub_vec4_i32(~global0.c.e, ~global0.c.e)), Struct_1(firstTrailingBit(abs(global0.c.a)) | ~firstTrailingBit(vec4<u32>(u_input.c, 1u, 40478u, 24376u)), global0.a, ~global0.a, true, vec4<i32>(_wgslsmith_mult_i32(-1i, -1i), 2147483647i, -34489i, select(1i, 47425i, arg_0)) & vec4<i32>(-u_input.a.x, _wgslsmith_mult_i32(u_input.e, global0.a), u_input.e, countOneBits(40905i))));
    return var_0;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: u32, arg_3: vec2<i32>) -> Struct_2 {
    var var_0 = select(select(select(!select(vec4<bool>(arg_1.c.d, true, false, true), vec4<bool>(arg_0.b.d, arg_0.b.d, arg_1.c.d, false), vec4<bool>(arg_1.e.x, true, false, true)), vec4<bool>(!arg_1.b, !arg_0.a.d, !global0.b, !arg_0.b.d), !vec4<bool>(arg_0.a.d, arg_1.c.d, arg_0.b.d, global0.c.d)), vec4<bool>(!global0.b, !(global0.b != true), any(!vec3<bool>(global0.b, false, arg_1.e.x)), arg_1.b), select(select(!vec4<bool>(false, true, arg_0.b.d, false), select(vec4<bool>(global0.e.x, true, true, false), vec4<bool>(true, global0.c.d, false, true), false), vec4<bool>(global0.c.d, global0.e.x, global0.c.d, false)), vec4<bool>(u_input.d == 10316u, arg_1.c.d, true, true), true)), !select(!select(vec4<bool>(arg_1.c.d, arg_0.b.d, arg_1.e.x, arg_1.e.x), vec4<bool>(false, false, global0.b, false), global0.b), vec4<bool>(false, arg_0.b.d, false, arg_1.b), vec4<bool>(any(vec4<bool>(false, global0.e.x, false, true)), arg_1.b, arg_1.b, true)), vec4<bool>(true, arg_1.e.x, global0.b, false));
    let var_1 = abs(_wgslsmith_add_vec2_i32(~global0.c.e.yz, arg_3));
    var var_2 = vec2<u32>(~(~global0.d), arg_1.c.a.x);
    var var_3 = Struct_2(arg_1.c, arg_0.a);
    let var_4 = !(!select(var_0.xxy, !(!vec3<bool>(arg_1.c.d, false, false)), vec3<bool>(var_0.x, all(vec4<bool>(true, true, var_3.a.d, var_3.b.d)), arg_1.e.x)));
    return Struct_2(func_3(false).b, func_3(-1035f != _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(494f, -645f), 1716f, all(var_0.ywy)))).a);
}

fn func_1(arg_0: vec3<u32>, arg_1: vec4<bool>, arg_2: vec4<bool>, arg_3: vec3<i32>) -> Struct_1 {
    global0 = Struct_3(abs(-6008i), true, global0.c, global0.d, !vec2<bool>(all(vec3<bool>(false, false, global0.e.x)) & arg_2.x, arg_2.x));
    let var_0 = ~(~select(~select(4294967295u, 30221u, true), arg_0.x, !(arg_3.x <= arg_3.x)));
    var var_1 = func_4(func_3(((arg_2.x && false) && func_2(vec2<bool>(arg_2.x, global0.b))) & false), Struct_3(global0.a, true, global0.c, var_0, global0.e), countOneBits(~firstTrailingBit(1u)), firstLeadingBit(arg_3.xy));
    return Struct_1(~abs(select(~vec4<u32>(var_1.a.a.x, 0u, var_0, 4843u), ~vec4<u32>(0u, arg_0.x, 14540u, 1u), !vec4<bool>(true, var_1.b.d, var_1.a.d, false))), global0.c.b, -2147483647i, any(!select(arg_1, vec4<bool>(true, true, true, true), any(vec4<bool>(arg_2.x, true, var_1.b.d, true)))), ~var_1.b.e);
}

fn func_5(arg_0: i32, arg_1: Struct_2) -> u32 {
    let var_0 = -arg_0;
    var var_1 = Struct_1(~firstLeadingBit(~(global0.c.a ^ vec4<u32>(4294967295u, 4294967295u, global0.d, 6562u))), arg_0, 0i, arg_1.b.d, func_4(func_3(true), Struct_3(~0i ^ _wgslsmith_mult_i32(global0.c.b, 66176i), all(vec2<bool>(false, false)), arg_1.a, min(94956u, 1u), !(!vec2<bool>(true, arg_1.a.d))), global0.c.a.x, -arg_1.a.e.yw).b.e);
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    let var_3 = func_4(Struct_2(global0.c, global0.c), Struct_3(_wgslsmith_dot_vec2_i32(~global0.c.e.zz, vec2<i32>(~u_input.e, 32323i)), true, func_1(var_1.a.xzz, !(!vec4<bool>(false, arg_1.b.d, var_1.d, false)), !select(vec4<bool>(true, global0.c.d, false, false), vec4<bool>(arg_1.b.d, arg_1.b.d, var_1.d, global0.b), false), -global0.c.e.xxx ^ arg_1.a.e.yyz), ~31661u, select(!(!vec2<bool>(arg_1.a.d, false)), !select(vec2<bool>(true, true), global0.e, vec2<bool>(var_1.d, arg_1.a.d)), global0.e)), _wgslsmith_dot_vec2_u32(global0.c.a.yx & vec2<u32>(_wgslsmith_dot_vec3_u32(global0.c.a.wxw, vec3<u32>(global0.c.a.x, var_1.a.x, global0.d)), u_input.c), reverseBits(countOneBits(vec2<u32>(var_1.a.x, var_1.a.x)))), _wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(var_1.e.yw & vec2<i32>(var_1.c, 1i), _wgslsmith_mult_vec2_i32(var_1.e.wx, -vec2<i32>(0i, 3544i))), var_1.e.yw)).a.d;
    global0 = Struct_3(~func_1(abs(reverseBits(vec3<u32>(global0.c.a.x, 1u, 1u))), select(vec4<bool>(var_3, true, arg_1.a.d, var_3), !vec4<bool>(false, false, global0.e.x, true), true), vec4<bool>(var_2 < -294f, var_3, !var_3, var_1.a.x == arg_1.b.a.x), arg_1.b.e.yyz).e.x, all(select(!vec4<bool>(var_1.d, true, false, true), select(vec4<bool>(var_3, false, false, arg_1.a.d), vec4<bool>(true, true, arg_1.a.d, true), arg_1.b.d), any(vec2<bool>(false, global0.e.x)))) && (func_3(true).b.b < ((arg_1.b.b << (arg_1.b.a.x % 32u)) >> (1u % 32u))), Struct_1(~select(arg_1.a.a, var_1.a, arg_1.a.d), 0i, -42353i, false, -_wgslsmith_mult_vec4_i32(-vec4<i32>(global0.c.c, -50555i, -39047i, var_0), global0.c.e)), 0u, !global0.e);
    return _wgslsmith_dot_vec3_u32(select(u_input.b, firstLeadingBit(vec3<u32>(func_3(var_1.d).b.a.x, 40519u, global0.d)), vec3<bool>(any(vec2<bool>(arg_1.a.d, arg_1.a.d)) != func_3(global0.c.d).b.d, false, func_2(vec2<bool>(true, arg_1.b.d)))), ~(~_wgslsmith_add_vec3_u32(vec3<u32>(arg_1.b.a.x, u_input.d, var_1.a.x), arg_1.b.a.wzx << (var_1.a.yyy % vec3<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~func_5(-1i, Struct_2(global0.c, func_1(u_input.b, vec4<bool>(true, true, global0.c.d, false), vec4<bool>(global0.b, global0.b, global0.e.x, global0.e.x), global0.c.e.xww))));
    let var_1 = vec2<bool>(!any(select(vec2<bool>(true, global0.c.d), select(global0.e, vec2<bool>(true, true), vec2<bool>(false, global0.b)), true)), func_2(!(!vec2<bool>(global0.b, global0.b))) & true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -224f)), _wgslsmith_div_f32(710f, 1f))), ~(-u_input.e));
}

