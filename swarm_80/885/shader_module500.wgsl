struct Struct_1 {
    a: bool,
    b: f32,
    c: u32,
    d: f32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: f32,
    d: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, true, true);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
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

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> i32 {
    global0 = vec3<bool>(any(select(select(!vec3<bool>(false, global0.x, global0.x), vec3<bool>(global0.x, global0.x, global0.x), global0.x), !vec3<bool>(false, global0.x, global0.x), true)), true, all(!(!vec4<bool>(global0.x, true, true, global0.x))) != false);
    global0 = !(!select(vec3<bool>(all(vec4<bool>(true, false, false, global0.x)), all(vec3<bool>(global0.x, true, global0.x)), 1u >= u_input.a), select(!vec3<bool>(true, global0.x, true), !vec3<bool>(true, global0.x, global0.x), vec3<bool>(global0.x, false, false)), vec3<bool>(false, true & global0.x, global0.x != global0.x)));
    var var_0 = ~39135u;
    global0 = vec3<bool>(!(!(1u > u_input.a)) && global0.x, global0.x && all(!select(vec4<bool>(true, false, true, global0.x), vec4<bool>(true, global0.x, global0.x, global0.x), vec4<bool>(global0.x, global0.x, global0.x, global0.x))), all(vec2<bool>(true, global0.x)));
    var_0 = 4294967295u;
    return firstLeadingBit(2147483647i);
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: Struct_4, arg_3: Struct_3) -> vec4<i32> {
    let var_0 = func_3();
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-201f, _wgslsmith_f_op_f32(step(arg_2.a, _wgslsmith_f_op_f32(max(arg_1.c, -196f))))) * 267f)));
    var var_2 = arg_1;
    let var_3 = Struct_2(any(arg_3.a.e.zzx), false, -365f, var_2.d);
    let var_4 = Struct_4(-188f, ~(~(~(~arg_2.b))), arg_2.b);
    return ~(~vec4<i32>(-42530i, arg_0.x, var_0, _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, arg_0.x), vec2<i32>(var_0, arg_0.x)), -arg_0.xx)));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec4<bool>) -> vec3<bool> {
    global0 = !select(!select(select(vec3<bool>(true, true, true), vec3<bool>(arg_1.x, true, false), global0.x), vec3<bool>(true, true, true), true), !(!select(vec3<bool>(true, arg_1.x, false), vec3<bool>(global0.x, global0.x, false), arg_1.x)), global0.x);
    let var_0 = ~(-_wgslsmith_sub_vec4_i32(vec4<i32>(0i, -1i, -20939i, -2147483647i) >> (countOneBits(vec4<u32>(1u, 10884u, u_input.a, u_input.a)) % vec4<u32>(32u)), countOneBits(vec4<i32>(10307i, 2147483647i, -9523i, -48282i)) | func_2(vec3<i32>(-2147483647i, 1i, -9509i), Struct_2(false, false, -610f, arg_1.yz), Struct_4(-1106f, vec4<u32>(68955u, u_input.a, 4294967295u, 21670u), vec4<u32>(13630u, 1u, u_input.a, 23015u)), Struct_3(Struct_1(arg_1.x, -1065f, 0u, -890f, arg_1), vec4<f32>(-863f, -1456f, 1316f, -1484f), Struct_1(arg_0.x, -1000f, 63737u, 1000f, vec4<bool>(false, arg_0.x, true, arg_0.x))))));
    global0 = vec3<bool>(false, any(global0.zy), !(!all(vec3<bool>(true, false, arg_1.x)) | true));
    var var_1 = -min(var_0, var_0);
    var_1 = select(firstTrailingBit(_wgslsmith_sub_vec4_i32(var_0, -var_0 >> (reverseBits(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)) % vec4<u32>(32u)))), vec4<i32>(var_1.x, _wgslsmith_div_i32(11083i, var_0.x), _wgslsmith_div_i32(-1669i, ~4431i), var_0.x), vec4<bool>(!(!arg_1.x), false, !(true | (arg_1.x | arg_1.x)), true));
    return arg_1.wxz;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(reverseBits(vec4<u32>(firstLeadingBit(4294967295u), u_input.a >> (u_input.a % 32u), ~u_input.a, ~u_input.a)) & ~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 33154u, 0u, u_input.a), min(vec4<u32>(0u, u_input.a, 57175u, 0u), vec4<u32>(60781u, u_input.a, u_input.a, u_input.a))));
    var var_1 = vec4<bool>(global0.x, _wgslsmith_mult_i32(1i, 58190i) > select(firstLeadingBit(-10547i), 19293i, true), true, true);
    global0 = select(vec3<bool>(false, all(!func_1(vec2<bool>(var_1.x, true), vec4<bool>(false, var_1.x, true, true))), global0.x), var_1.wyw, _wgslsmith_clamp_i32(func_3(), -(~2147483647i), ~1i) == -22558i);
    let var_2 = Struct_3(Struct_1(all(var_1.wyw), _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(1f + _wgslsmith_div_f32(-1179f, 1731f))), _wgslsmith_mod_u32(u_input.a & _wgslsmith_clamp_u32(4294967295u, var_0.x, 12555u), var_0.x), -1000f, select(vec4<bool>(all(vec2<bool>(true, false)), true, global0.x == true, true), select(!vec4<bool>(true, var_1.x, true, false), !vec4<bool>(var_1.x, false, true, var_1.x), var_1.x), vec4<bool>(var_0.x >= u_input.a, global0.x, var_1.x, true))), vec4<f32>(_wgslsmith_f_op_f32(1672f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(459f, -154f)) + _wgslsmith_f_op_f32(max(771f, 576f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(f32(-1f) * -1951f), global0.x && true)), 1437f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-2600f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-765f - -1361f)))), Struct_1(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1146f, -973f)) + _wgslsmith_f_op_f32(f32(-1f) * -251f))), min(u_input.a, _wgslsmith_add_u32(u_input.a, 4294967295u) | u_input.a), 962f, !vec4<bool>(false, true, true, all(vec4<bool>(global0.x, global0.x, true, global0.x)))));
    var var_3 = select(vec4<bool>(any(select(vec3<bool>(true, var_1.x, false), vec3<bool>(false, var_1.x, global0.x), var_2.c.e.ywz)) || global0.x, all(!(!vec3<bool>(true, true, var_2.c.a))), any(var_2.c.e), !var_2.c.a), var_2.c.e, var_2.c.e);
    let var_4 = func_3();
    var_3 = !(!var_2.a.e);
    var var_5 = select(_wgslsmith_sub_u32(firstTrailingBit(87246u), ~_wgslsmith_sub_u32(select(0u, 69675u, global0.x), firstTrailingBit(var_2.a.c))), var_2.c.c, !var_2.c.e.x);
    var var_6 = _wgslsmith_sub_i32(var_4, reverseBits(select(reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, var_4), vec2<i32>(4870i, var_4))), min(firstTrailingBit(var_4), 1i ^ var_4), select(var_1.x, var_3.x, false))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.c.b, ~(~_wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(var_4, -58527i), vec2<i32>(0i, var_4)), select(vec2<i32>(var_4, 2147483647i), vec2<i32>(-2147483647i, 1i), true))), _wgslsmith_sub_vec3_i32(max(_wgslsmith_sub_vec3_i32(vec3<i32>(var_4, -2147483647i, var_4), ~vec3<i32>(0i, -35035i, -2147483647i)), -(vec3<i32>(-12162i, 1i, 0i) | vec3<i32>(2147483647i, var_4, var_4))), -_wgslsmith_add_vec3_i32(vec3<i32>(20758i, -30056i, var_4), -vec3<i32>(var_4, var_4, -1i))), vec4<f32>(242f, _wgslsmith_f_op_f32(ceil(1502f)), 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-106f)), _wgslsmith_f_op_f32(var_2.b.x - var_2.b.x), 4294967295u != u_input.a)))));
}

