struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: Struct_1,
}

struct Struct_5 {
    a: Struct_3,
    b: vec3<bool>,
    c: vec4<i32>,
    d: Struct_4,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: vec3<f32> = vec3<f32>(1834f, -225f, -1000f);

var<private> global2: Struct_3 = Struct_3(Struct_2(Struct_1(vec2<i32>(-2922i, 0i))), vec3<bool>(false, true, true));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32, arg_1: Struct_2) -> i32 {
    let var_0 = firstTrailingBit(_wgslsmith_div_u32(u_input.a.x, ~select(~0u, ~u_input.c.x, false)));
    global2 = Struct_3(Struct_2(arg_1.a), !select(!global2.b, !vec3<bool>(global2.b.x, false, true), select(global2.b, global2.b, true)));
    global2 = Struct_3(global2.a, global2.b);
    var var_1 = u_input.b.x << (~_wgslsmith_sub_u32(u_input.b.x, _wgslsmith_mod_u32(var_0, min(var_0, u_input.c.x))) % 32u);
    let var_2 = any(vec2<bool>(any(vec2<bool>(true, global2.b.x)), global2.b.x)) == (false || !global2.b.x);
    return -abs(_wgslsmith_dot_vec4_i32(~min(vec4<i32>(0i, -1i, 1i, arg_1.a.a.x), vec4<i32>(1i, -21487i, arg_1.a.a.x, global2.a.a.a.x)), min(vec4<i32>(2147483647i, global2.a.a.a.x, global2.a.a.a.x, 2147483647i), ~vec4<i32>(global2.a.a.a.x, arg_1.a.a.x, arg_1.a.a.x, -5945i))));
}

fn func_2(arg_0: vec3<bool>) -> bool {
    var var_0 = global2.a.a.a.x;
    var var_1 = -func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) + -1239f), Struct_2(Struct_1(global2.a.a.a))) > -_wgslsmith_dot_vec3_i32(select(vec3<i32>(-27i, global2.a.a.a.x, global2.a.a.a.x), vec3<i32>(-1i, 49432i, global2.a.a.a.x), vec3<bool>(arg_0.x, true, true)) >> ((u_input.c << (u_input.c % vec3<u32>(32u))) % vec3<u32>(32u)), select(vec3<i32>(2147483647i, -47665i, -1i), abs(vec3<i32>(1i, 0i, global2.a.a.a.x)), !arg_0));
    let var_2 = Struct_3(Struct_2(global2.a.a), !global2.b);
    var var_3 = vec2<u32>(max(_wgslsmith_sub_u32(0u, _wgslsmith_div_u32(firstLeadingBit(u_input.c.x), ~u_input.a.x)), 13331u), u_input.a.x);
    global1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global1.x, _wgslsmith_f_op_f32(-682f * -1498f), _wgslsmith_f_op_f32(step(global1.x, global1.x)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1893f, global1.x, -700f))))))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - _wgslsmith_f_op_f32(min(-1662f, 1730f))) <= -554f;
}

fn func_1(arg_0: Struct_3, arg_1: vec3<bool>) -> Struct_4 {
    let var_0 = all(!select(vec3<bool>(false, false, true), vec3<bool>(select(true, arg_1.x, global2.b.x), func_2(arg_0.b), global2.a.a.a.x > global2.a.a.a.x), global2.b));
    let var_1 = firstLeadingBit(arg_0.a.a.a.x);
    var var_2 = Struct_5(Struct_3(global2.a, !(!select(vec3<bool>(false, false, false), vec3<bool>(var_0, false, true), arg_0.b))), !(!select(vec3<bool>(false, false, var_0), global2.b, arg_1.x)), _wgslsmith_sub_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(var_1, arg_0.a.a.a.x, var_1, 2147483647i), vec4<i32>(-1i) * -vec4<i32>(arg_0.a.a.a.x, 35260i, global2.a.a.a.x, 2147483647i)) & -(~_wgslsmith_add_vec4_i32(vec4<i32>(0i, -51251i, 1i, 0i), vec4<i32>(global2.a.a.a.x, global2.a.a.a.x, 75375i, var_1))), Struct_4(arg_0, Struct_3(arg_0.a, !arg_1), Struct_1(arg_0.a.a.a)), select(!arg_0.b, select(arg_1, vec3<bool>(any(vec4<bool>(true, arg_0.b.x, true, false)), global2.a.a.a.x == arg_0.a.a.a.x, all(arg_1)), select(arg_1, vec3<bool>(true, false, false), false)), vec3<bool>(true, all(arg_0.b.yz), true)));
    var var_3 = select(true, any(!(!vec3<bool>(false, arg_1.x, global2.b.x))), var_2.d.a.b.x);
    var var_4 = 1u;
    return var_2.d;
}

fn func_4(arg_0: Struct_4, arg_1: Struct_4, arg_2: i32, arg_3: Struct_1) -> Struct_5 {
    return Struct_5(Struct_3(Struct_2(arg_3), !vec3<bool>(arg_0.a.b.x, true, u_input.b.x != 36424u)), arg_1.a.b, max(~vec4<i32>(func_3(global1.x, global2.a), arg_1.c.a.x, 15072i, _wgslsmith_add_i32(arg_3.a.x, -1i)), _wgslsmith_mod_vec4_i32(vec4<i32>(reverseBits(-5763i), 1i, reverseBits(1i), arg_0.a.a.a.a.x), -(~vec4<i32>(global2.a.a.a.x, -1i, 36280i, arg_3.a.x)))), Struct_4(Struct_3(Struct_2(Struct_1(arg_0.c.a)), global2.b), func_1(func_1(func_1(arg_0.a, vec3<bool>(true, true, arg_1.a.b.x)).b, vec3<bool>(false, arg_1.b.b.x, arg_1.a.b.x)).a, !(!arg_0.a.b)).b, func_1(arg_0.b, vec3<bool>(u_input.b.x > 50041u, !global2.b.x, arg_0.a.b.x)).c), arg_1.b.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(vec4<i32>(-1i) * -vec4<i32>(global2.a.a.a.x, global2.a.a.a.x, global2.a.a.a.x, global2.a.a.a.x)) & vec4<i32>(26454i, max(select(1i, 1i, global2.b.x), -1i), global2.a.a.a.x, -_wgslsmith_dot_vec3_i32(~vec3<i32>(1i, -1i, global2.a.a.a.x), vec3<i32>(-57901i, global2.a.a.a.x, 0i) ^ vec3<i32>(global2.a.a.a.x, global2.a.a.a.x, -25595i)));
    var var_1 = !(!(_wgslsmith_f_op_f32(floor(3730f)) >= 1034f));
    let var_2 = global2.a;
    let var_3 = func_4(func_1(Struct_3(Struct_2(Struct_1(var_2.a.a)), !vec3<bool>(false, global2.b.x, global2.b.x)), !(!global2.b)), Struct_4(Struct_3(Struct_2(Struct_1(var_2.a.a)), !(!global2.b)), Struct_3(func_1(func_1(Struct_3(Struct_2(Struct_1(global2.a.a.a)), vec3<bool>(true, global2.b.x, global2.b.x)), vec3<bool>(global2.b.x, false, global2.b.x)).a, select(global2.b, global2.b, global2.b)).a.a, !vec3<bool>(true, global2.b.x, false)), var_2.a), -(max(~2147483647i, var_0.x) | var_0.x), func_1(Struct_3(global2.a, select(vec3<bool>(false, false, true), !global2.b, global2.b)), select(vec3<bool>(true, true, true), global2.b, !(!global2.b.x))).a.a.a);
    var var_4 = func_4(Struct_4(func_4(Struct_4(Struct_3(Struct_2(var_3.d.c), vec3<bool>(false, var_3.b.x, global2.b.x)), var_3.a, Struct_1(global2.a.a.a)), func_1(func_1(Struct_3(var_3.d.b.a, vec3<bool>(false, true, var_3.b.x)), vec3<bool>(var_3.e.x, true, var_3.d.a.b.x)).a, var_3.b), global2.a.a.a.x, Struct_1(vec2<i32>(1i, 1i))).d.a, var_3.d.a, Struct_1(countOneBits(-vec2<i32>(-2147483647i, -10590i)))), func_1(Struct_3(global2.a, vec3<bool>(var_3.e.x, global2.b.x, any(vec4<bool>(var_3.d.a.b.x, false, global2.b.x, true)))), select(vec3<bool>(false & global2.b.x, global2.b.x, false), !(!global2.b), true)), (var_3.c.x & -40751i) << (u_input.a.x % 32u), global2.a.a).d;
    let x = u_input.a;
    s_output = StorageBuffer(2705u, 14070u, _wgslsmith_div_f32(-841f, global1.x), -_wgslsmith_add_i32(var_3.d.c.a.x, var_4.c.a.x | -var_0.x));
}

