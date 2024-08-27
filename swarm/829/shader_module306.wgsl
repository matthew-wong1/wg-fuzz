struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: u32,
    d: vec4<i32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(-25257i, Struct_1(4294967295u, vec3<bool>(false, false, true), vec4<bool>(false, true, false, true)), 0i);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: vec3<i32>, arg_3: bool) -> i32 {
    var var_0 = Struct_1(~(~1u), !vec3<bool>(false, !(!arg_3), false), vec4<bool>(arg_1.b.c.x, arg_0.x >= _wgslsmith_f_op_f32(sign(arg_0.x)), all(select(vec3<bool>(true, true, arg_1.b.b.x), arg_1.b.b, arg_1.b.b)), true));
    global0 = Struct_2(arg_1.a, Struct_1(_wgslsmith_mod_u32(0u, var_0.a), global0.b.c.zyw, vec4<bool>(global0.b.c.x || true, ~arg_1.b.a <= countOneBits(18266u), global0.b.c.x, false)), 1i);
    let var_1 = Struct_2(reverseBits(u_input.a), Struct_1(_wgslsmith_div_u32(4294967295u >> (var_0.a % 32u), _wgslsmith_mult_u32(~0u, _wgslsmith_add_u32(64374u, global0.b.a))), !select(!arg_1.b.c.wyx, vec3<bool>(true, true, false), select(var_0.c.zzy, arg_1.b.c.xzx, global0.b.b)), vec4<bool>(var_0.b.x, global0.b.c.x, !arg_1.b.b.x, arg_1.b.b.x)), -29381i);
    let var_2 = ~global0.b.a;
    var_0 = Struct_1(firstLeadingBit(var_1.b.a), !global0.b.b, vec4<bool>(~_wgslsmith_mult_i32(-2147483647i, arg_1.a) >= -611i, !(!select(true, true, arg_1.b.b.x)), true, !var_0.b.x));
    return 1i;
}

fn func_2(arg_0: i32) -> Struct_2 {
    let var_0 = global0.b.a;
    var var_1 = Struct_2(-1i, Struct_1(36259u, global0.b.c.yxw, !vec4<bool>(global0.b.c.x == true, false, true, false)), u_input.a);
    var var_2 = Struct_2(arg_0, global0.b, _wgslsmith_dot_vec3_i32(~_wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-14464i, arg_0, 0i), vec3<i32>(arg_0, global0.c, 19257i)), firstTrailingBit(vec3<i32>(arg_0, global0.c, 2147483647i))), vec3<i32>(func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1047f, 1215f, -3318f)), Struct_2(u_input.a, Struct_1(4294967295u, vec3<bool>(false, global0.b.b.x, false), global0.b.c), 1i), firstTrailingBit(vec3<i32>(14076i, -14355i, var_1.a)), true), select(~global0.c, 2147483647i, false), u_input.a)));
    let var_3 = select(vec3<bool>(any(select(vec4<bool>(true, true, true, true), vec4<bool>(var_2.b.c.x, var_1.b.c.x, true, true), true)), global0.b.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1255f)) * 1305f) > -628f), select(!select(vec3<bool>(var_1.b.c.x, var_2.b.b.x, true), vec3<bool>(true, var_2.b.b.x, var_1.b.c.x), global0.b.c.x), vec3<bool>(var_1.b.c.x, false, true), !(!(!var_1.b.c.ywz))), select(true, any(global0.b.c.zzz), true));
    let var_4 = Struct_2(22616i, Struct_1(countOneBits(1u), !(!select(global0.b.c.yzx, var_2.b.c.wyw, global0.b.b.x)), vec4<bool>(any(select(vec4<bool>(var_2.b.c.x, true, false, false), global0.b.c, true)), var_2.b.c.x, all(var_2.b.c), any(var_2.b.b) | !global0.b.b.x)), -_wgslsmith_dot_vec3_i32(~vec3<i32>(arg_0, u_input.a, var_2.a), vec3<i32>(global0.a & u_input.a, ~var_1.c, -1i)));
    return Struct_2(_wgslsmith_add_i32(~(-4318i), ~(-countOneBits(var_1.c))), Struct_1(~(~var_4.b.a), vec3<bool>(true, all(!vec2<bool>(true, var_4.b.c.x)), all(select(global0.b.c, vec4<bool>(var_4.b.c.x, global0.b.c.x, var_2.b.c.x, false), vec4<bool>(true, global0.b.b.x, var_4.b.c.x, var_4.b.c.x)))), select(!var_4.b.c, select(select(vec4<bool>(true, var_4.b.c.x, false, global0.b.b.x), var_1.b.c, true), !vec4<bool>(global0.b.b.x, false, var_4.b.c.x, true), var_2.b.c), true)), 1i);
}

fn func_1() -> Struct_2 {
    var var_0 = func_2(abs(global0.c));
    let var_1 = global0.b;
    let var_2 = global0.b;
    var_0 = func_2(_wgslsmith_div_i32(global0.a, 55300i << (~(~0u) % 32u)));
    let var_3 = _wgslsmith_add_i32(_wgslsmith_div_i32(~(~firstLeadingBit(u_input.a)), func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1127f, -118f, 449f))), Struct_2(var_0.c & -18117i, global0.b, ~0i), ~(-vec3<i32>(2147483647i, u_input.a, global0.a)), var_2.b.x)), u_input.a | -2147483647i);
    return func_2(-1i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(-1i) * -vec4<i32>((global0.a & global0.a) | global0.a, 43090i, firstLeadingBit(i32(-1i) * -1i), -27346i);
    global0 = func_1();
    global0 = Struct_2(~abs(-1i) << (_wgslsmith_dot_vec2_u32(abs(~vec2<u32>(global0.b.a, 41310u)), ~abs(vec2<u32>(global0.b.a, 4294967295u))) % 32u), Struct_1(func_2(_wgslsmith_add_i32(1i, 20626i)).b.a, select(select(vec3<bool>(global0.b.c.x, false, global0.b.c.x), vec3<bool>(false, global0.b.c.x, global0.b.c.x), false | global0.b.c.x), global0.b.b, true), global0.b.c), _wgslsmith_mod_i32(global0.a, abs(-34566i)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-727f, 2135f))))) * _wgslsmith_f_op_f32(-966f - _wgslsmith_f_op_f32(trunc(-1112f)))));
    global0 = Struct_2(2147483647i, Struct_1(4294967295u, !global0.b.b, select(func_1().b.c, global0.b.c, vec4<bool>(global0.b.b.x == global0.b.c.x, global0.b.c.x, true, false))), _wgslsmith_div_i32(global0.c, _wgslsmith_div_i32(var_0.x, ~global0.c)));
    global0 = Struct_2(abs(u_input.a), Struct_1(~func_2(1i).b.a, !(!vec3<bool>(global0.b.b.x, true, global0.b.b.x)), vec4<bool>(true, true, func_1().b.c.x & true, any(global0.b.b))), -(~_wgslsmith_dot_vec2_i32(var_0.yx << (vec2<u32>(4294967295u, 1u) % vec2<u32>(32u)), var_0.yx)));
    var var_2 = true;
    var var_3 = Struct_1(global0.b.a, global0.b.b, func_2(~_wgslsmith_add_i32(14531i, i32(-1i) * -1i)).b.c);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(global0.b.a, ~(firstTrailingBit(var_3.a) | 14747u)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) + var_1) - var_1), -1125f)), var_3.a, vec4<i32>(-1i, 7758i, -32156i, 34122i), ~(~_wgslsmith_mult_vec2_u32(vec2<u32>(var_3.a, global0.b.a), _wgslsmith_div_vec2_u32(vec2<u32>(global0.b.a, 29937u), vec2<u32>(4294967295u, global0.b.a)))));
}

