struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: vec3<i32>,
    d: vec2<u32>,
    e: f32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: bool;

var<private> global2: Struct_2;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3() -> vec2<i32> {
    return global0.xz;
}

fn func_2() -> i32 {
    let var_0 = ~(~vec3<u32>(~(~64989u), ~(~4294967295u), ~4294967295u));
    var var_1 = vec2<i32>(~abs(-(~u_input.b.x)), global0.x);
    global2 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(804f, global2.a, true)))) * global2.a) + global2.a), global0.x, ~(~global2.c), u_input.c, _wgslsmith_f_op_f32(-global2.a));
    let var_2 = -328f;
    var_1 = func_3();
    return ~(~(i32(-1i) * -501i) << (var_0.x % 32u));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<bool>) -> vec3<bool> {
    global0 = -_wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(-vec3<i32>(19799i, 51075i, global2.c.x), u_input.b.xzw | global2.c) >> (~(~vec3<u32>(1u, global2.d.x, 4294967295u)) % vec3<u32>(32u)), global2.c);
    var var_0 = Struct_2(global2.a, func_2(), vec3<i32>(-2147483647i, u_input.a.x, ~((i32(-1i) * -757i) << (1u % 32u))), global2.d, global2.e);
    var var_1 = arg_0;
    var var_2 = !all(select(vec4<bool>(arg_0.a.x, arg_1.x, true, arg_0.a.x), !(!vec4<bool>(var_1.a.x, arg_1.x, true, true)), true));
    var var_3 = Struct_3(reverseBits(vec4<i32>(~0i, ~u_input.b.x, func_3().x, global0.x) | ~u_input.b), global0.x);
    return select(!arg_0.a, !vec3<bool>(var_3.a.x >= 1i, arg_1.x, arg_1.x), arg_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec3<bool>(true, any(vec2<bool>(true, 23158u <= u_input.c.x)), true), !(!select(vec3<bool>(true, true, true), func_1(Struct_1(vec3<bool>(true, false, false)), vec2<bool>(true, false)), vec3<bool>(false, false, true))), vec3<bool>(true, true, true));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.e * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.e) * global2.a) * _wgslsmith_f_op_f32(-1168f * _wgslsmith_f_op_f32(select(858f, global2.e, var_0.x))))));
    var var_2 = Struct_1(!select(func_1(Struct_1(vec3<bool>(var_0.x, var_0.x, var_0.x)), var_0.xx), select(vec3<bool>(var_0.x, var_0.x, var_0.x), select(vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(var_0.x, false, var_0.x), var_0.x), vec3<bool>(var_0.x, false, var_0.x)), vec3<bool>(!var_0.x, func_1(Struct_1(vec3<bool>(var_0.x, var_0.x, var_0.x)), var_0.zy).x, !var_0.x)));
    var var_3 = ~vec2<i32>(global0.x, global2.b);
    var var_4 = Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.e)), global2.a), global2.a, var_0.x)), firstTrailingBit(var_3.x), vec3<i32>(-(u_input.a.x ^ 17618i), u_input.a.x & ((u_input.a.x & u_input.a.x) >> (~u_input.c.x % 32u)), var_3.x), ~_wgslsmith_mod_vec2_u32(~global2.d, ~vec2<u32>(5039u, u_input.c.x)), global2.a);
    var_3 = vec2<i32>(_wgslsmith_mult_i32(~var_3.x, -var_4.b), func_3().x);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(4001i, u_input.a.x, _wgslsmith_mult_i32(25713i, _wgslsmith_div_i32(firstLeadingBit(var_4.c.x), 27951i >> (u_input.c.x % 32u)))), global2.c.x, -(_wgslsmith_mod_vec3_i32(global2.c, ~vec3<i32>(714i, -2147483647i, 10501i)) & vec3<i32>(var_4.b, global2.b, u_input.a.x)));
}

