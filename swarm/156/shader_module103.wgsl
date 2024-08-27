struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec3<bool>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<u32>,
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

var<private> global1: Struct_2 = Struct_2(vec4<bool>(false, true, true, true), vec3<bool>(false, true, true), vec3<u32>(48775u, 45257u, 4294967295u));

var<private> global2: vec2<bool>;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3() -> vec3<bool> {
    return vec3<bool>(true, any(!vec3<bool>(any(global1.b.yz), true, global2.x)), global1.b.x);
}

fn func_2(arg_0: f32, arg_1: vec2<i32>) -> vec4<u32> {
    let var_0 = vec3<bool>(all(vec4<bool>(true, ~arg_1.x != u_input.b.x, all(vec2<bool>(true, global1.b.x)), false)), global2.x, global1.c.x >= ~(~(~0u)));
    global1 = Struct_2(global1.a, select(select(!(!var_0), !func_3(), func_3().x), func_3(), select(!(!vec3<bool>(false, global2.x, var_0.x)), global1.a.zzy, global1.a.wyx)), _wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(~u_input.a, _wgslsmith_mult_vec3_u32(~u_input.a, _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u), vec3<u32>(25628u, 4294967295u, 1u)))), vec3<u32>(u_input.a.x, ~max(u_input.a.x, u_input.a.x), 18419u)));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0))), _wgslsmith_f_op_f32(-arg_0)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, 534f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a.x, 982f) * vec2<f32>(arg_0, global0.a.x))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(528f, arg_0) - global0.a.yz)))));
    let var_2 = select(_wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(i32(-1i) * -3038i, countOneBits(arg_1.x)), -27413i, ~47032i, -(~(-1024i))), _wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, u_input.b.x, -1i, -17610i), vec4<i32>(arg_1.x, u_input.b.x, arg_1.x, u_input.b.x)), vec4<i32>(1i, -2147483647i, u_input.b.x, 0i)), ~u_input.b)), u_input.b, !global1.a);
    var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(-global0.a.x))), -256f));
    return firstTrailingBit(~(~vec4<u32>(12693u, global1.c.x, u_input.a.x, 1u))) >> (~_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(max(vec4<u32>(14571u, u_input.a.x, 54752u, global1.c.x), vec4<u32>(global1.c.x, u_input.a.x, 70888u, 1u)), ~vec4<u32>(u_input.a.x, 1u, 4294967295u, u_input.a.x)), min(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 11176u), vec4<u32>(66880u, u_input.a.x, 4294967295u, 5957u) | vec4<u32>(u_input.a.x, 1u, 4231u, 2574u))) % vec4<u32>(32u));
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: vec3<bool>) -> bool {
    global1 = Struct_2(!vec4<bool>(arg_2.x, true, global1.a.x, !all(vec4<bool>(true, false, false, arg_2.x))), arg_2, max(~select(vec3<u32>(u_input.a.x, u_input.a.x, global1.c.x), vec3<u32>(0u, u_input.a.x, 1u), vec3<bool>(false, arg_2.x, global1.b.x)), (global1.c >> (vec3<u32>(4294967295u, 34176u, u_input.a.x) % vec3<u32>(32u))) << (reverseBits(global1.c) % vec3<u32>(32u))) >> (global1.c % vec3<u32>(32u)));
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-global0.a));
    let var_1 = _wgslsmith_sub_vec4_u32(func_2(466f, select(vec2<i32>(abs(44670i), arg_1), select(u_input.b.yy, -vec2<i32>(u_input.b.x, arg_1), arg_2.zz), true)), vec4<u32>(global1.c.x, ~(~(~0u)), ~select(~1u, global1.c.x, !arg_0), countOneBits(global1.c.x >> (~u_input.a.x % 32u))));
    global2 = vec2<bool>(!any(global1.a.xy), arg_0);
    var_0 = Struct_1(var_0.a);
    return any(!global1.a.yx);
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: Struct_1, arg_3: u32) -> vec3<bool> {
    let var_0 = i32(-1i) * -40768i;
    global1 = arg_1;
    let var_1 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(global0.a)), _wgslsmith_f_op_vec4_f32(abs(arg_2.a))));
    global1 = Struct_2(vec4<bool>(!(!any(global1.a.zzw)), true, !(false && !arg_1.b.x), arg_1.b.x), !global1.a.yzx, min(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, 1u, ~4294967295u), ~_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 38670u, u_input.a.x), vec3<u32>(global1.c.x, 18469u, 4294967295u))), vec3<u32>(~(~arg_3), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.c.x, 1u, 1u, 4294967295u), select(vec4<u32>(arg_1.c.x, arg_1.c.x, 43693u, 1u), vec4<u32>(arg_1.c.x, 0u, arg_3, 1u), true)), u_input.a.x)));
    global1 = arg_1;
    return !func_3();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(global1.a, func_4(vec3<bool>(true & func_1(true, -10180i, vec3<bool>(true, global2.x, global2.x)), true, true), Struct_2(select(vec4<bool>(true, false, false, false), !vec4<bool>(false, true, global1.a.x, false), 0u == global1.c.x), global1.b, u_input.a), Struct_1(_wgslsmith_f_op_vec4_f32(global0.a + global0.a)), ~0u), min(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 14017u, u_input.a.x, global1.c.x) << (vec4<u32>(0u, 49170u, global1.c.x, u_input.a.x) % vec4<u32>(32u)), vec4<u32>(46808u, 0u, global1.c.x, global1.c.x)), 102142u, abs(global1.c.x)), _wgslsmith_add_vec3_u32(u_input.a, _wgslsmith_clamp_vec3_u32(vec3<u32>(29409u, u_input.a.x, 40874u) >> (global1.c % vec3<u32>(32u)), ~vec3<u32>(u_input.a.x, global1.c.x, 90928u), _wgslsmith_clamp_vec3_u32(vec3<u32>(88218u, u_input.a.x, u_input.a.x), vec3<u32>(global1.c.x, u_input.a.x, global1.c.x), vec3<u32>(u_input.a.x, 19545u, global1.c.x))))));
    var var_1 = _wgslsmith_mod_vec4_u32(~(~(vec4<u32>(0u, 0u, global1.c.x, u_input.a.x) ^ vec4<u32>(u_input.a.x, global1.c.x, 498u, 4294967295u))), ~(~vec4<u32>(var_0.c.x, global1.c.x, 1u, u_input.a.x)) << (~(min(vec4<u32>(0u, 1u, 22962u, 0u), vec4<u32>(global1.c.x, 73150u, var_0.c.x, 0u)) & max(vec4<u32>(1u, global1.c.x, 4294967295u, global1.c.x), vec4<u32>(var_0.c.x, 1u, 4093u, global1.c.x))) % vec4<u32>(32u)));
    global2 = var_0.a.zz;
    let var_2 = Struct_2(!vec4<bool>(func_1(global1.a.x && true, -1i, var_0.b), true, func_3().x, global1.a.x), global1.a.yxz, _wgslsmith_div_vec3_u32(u_input.a, ~u_input.a));
    let var_3 = Struct_2(!vec4<bool>(global2.x, var_0.c.x >= (var_2.c.x ^ 0u), _wgslsmith_f_op_f32(global0.a.x - 273f) <= -100f, global1.b.x), vec3<bool>(~global1.c.x == ~90950u, true, all(!vec2<bool>(true, var_0.a.x))), vec3<u32>(3478u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, var_0.c.x), u_input.a.yy), 1u ^ global1.c.x));
    global1 = Struct_2(var_3.a, global1.b, var_2.c);
    var_1 = vec4<u32>(~_wgslsmith_clamp_u32(~(~0u), ~var_3.c.x, var_0.c.x), ~countOneBits(~90753u) & var_3.c.x, global1.c.x, 33654u);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, abs(vec4<u32>(_wgslsmith_dot_vec2_u32(var_0.c.zy, u_input.a.xz), ~(36715u ^ u_input.a.x), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_1.x, global1.c.x) << (vec3<u32>(9369u, var_2.c.x, var_2.c.x) % vec3<u32>(32u)), ~vec3<u32>(var_3.c.x, 82246u, 19576u)), var_0.c.x)), vec4<u32>(global1.c.x, abs(~_wgslsmith_mult_u32(27563u, 55890u)), 61457u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, global1.c.x, var_3.c.x, var_2.c.x), vec4<u32>(global1.c.x, u_input.a.x, u_input.a.x, 20475u)) & abs(var_0.c.x)), abs(-2147483647i) << (global1.c.x % 32u), ~_wgslsmith_dot_vec3_u32(abs(~var_2.c), abs(var_1.xwy | var_0.c)));
}

