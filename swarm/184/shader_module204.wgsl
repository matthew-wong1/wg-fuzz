struct Struct_1 {
    a: vec3<u32>,
    b: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: f32,
    d: Struct_1,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> f32 {
    let var_0 = -1000f;
    var var_1 = ~_wgslsmith_add_i32(49137i, ~(-19488i));
    var_1 = u_input.c.x;
    var var_2 = Struct_1(u_input.a.xwy >> (reverseBits(u_input.b.xzz) % vec3<u32>(32u)), firstTrailingBit(4294967295u) ^ u_input.a.x);
    global0 = false;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec3<f32>) -> i32 {
    global0 = false;
    let var_0 = arg_0;
    let var_1 = Struct_2(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(firstLeadingBit(arg_1.b.a), -2147483647i), -u_input.c), u_input.c), Struct_1(_wgslsmith_add_vec3_u32(vec3<u32>(41776u, arg_1.d.b, var_0.b.b), arg_1.a.a) | min(vec3<u32>(0u, u_input.a.x, arg_0.b.b), vec3<u32>(u_input.a.x, var_0.b.b, 4294967295u) >> (vec3<u32>(arg_1.b.b.a.x, arg_0.b.a.x, 0u) % vec3<u32>(32u))), ~_wgslsmith_add_u32(~1u, _wgslsmith_add_u32(arg_0.b.a.x, u_input.a.x))));
    var var_2 = max(var_1.b.b, ~u_input.a.x);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_2.x))) - _wgslsmith_f_op_f32(func_3())));
    return _wgslsmith_sub_i32(_wgslsmith_add_i32(0i, _wgslsmith_dot_vec2_i32(u_input.c, vec2<i32>(-8129i, arg_1.e.a)) >> (_wgslsmith_dot_vec3_u32(var_0.b.a, vec3<u32>(var_1.b.b, var_1.b.b, 1u)) % 32u)) << (min(firstTrailingBit(81583u), u_input.b.x ^ var_1.b.a.x) % 32u), arg_0.a);
}

fn func_1(arg_0: vec2<bool>, arg_1: bool, arg_2: i32) -> i32 {
    var var_0 = vec4<i32>(0i, min(arg_2, arg_2), _wgslsmith_sub_i32(arg_2, select(arg_2, -2147483647i << (u_input.b.x % 32u), arg_0.x)), 2147483647i);
    var var_1 = vec4<i32>(-2147483647i, -_wgslsmith_div_i32(select(u_input.c.x, func_2(Struct_2(var_0.x, Struct_1(vec3<u32>(u_input.a.x, 51140u, 0u), 45357u)), Struct_3(Struct_1(vec3<u32>(0u, u_input.b.x, u_input.b.x), 27130u), Struct_2(-13704i, Struct_1(vec3<u32>(4294967295u, u_input.a.x, u_input.a.x), u_input.a.x)), -1191f, Struct_1(u_input.a.xxz, u_input.b.x), Struct_2(var_0.x, Struct_1(u_input.a.yzw, u_input.b.x))), vec3<f32>(1600f, -886f, 243f)), arg_1), u_input.c.x ^ -1i), _wgslsmith_dot_vec3_i32(min(vec3<i32>(-1i) * -var_0.xxw, -(var_0.xzx >> (vec3<u32>(u_input.b.x, u_input.a.x, 4294967295u) % vec3<u32>(32u)))), firstLeadingBit(select(vec3<i32>(var_0.x, -10554i, 2147483647i), firstTrailingBit(vec3<i32>(13679i, -2147483647i, -1i)), !vec3<bool>(true, arg_1, arg_1)))), var_0.x);
    global0 = abs(u_input.b.x) >= u_input.b.x;
    var var_2 = arg_0.x;
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-749f))), _wgslsmith_f_op_f32(-1000f + -785f));
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = false;
    var var_0 = !all(!(!select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true))));
    global0 = !((4294967295u & (1u >> (abs(u_input.b.x) % 32u))) == 0u);
    let var_1 = ~_wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(u_input.c.x | -2147483647i, func_1(vec2<bool>(false, true), false, 8997i)), 1i, u_input.c.x), max(~(~vec3<i32>(u_input.c.x, 2147483647i, u_input.c.x)), ~_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, u_input.c.x, -20211i), vec3<i32>(u_input.c.x, u_input.c.x, -1i))));
    var var_2 = all(!select(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), false), vec3<bool>(true, true, true), false)) || select(false, true, true);
    var_2 = any(select(vec4<bool>(any(vec2<bool>(true, true)), true, true, all(vec3<bool>(false, false, false)) || all(vec4<bool>(true, false, false, false))), vec4<bool>(any(vec3<bool>(true, true, true)), all(vec2<bool>(false, false)), true, true), any(vec4<bool>(48951i == u_input.c.x, true, true, true))));
    let var_3 = !vec4<bool>(true, true, true, !(!(u_input.c.x < 27410i)));
    var var_4 = Struct_3(Struct_1(select(u_input.a.zyx, _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b.x, 40098u, u_input.a.x), u_input.a.yxy), select(!vec3<bool>(false, false, var_3.x), var_3.wxz, select(var_3.wwx, var_3.zxx, var_3.yyy))), 0u), Struct_2(u_input.c.x, Struct_1(~u_input.a.xxz, ~_wgslsmith_mod_u32(u_input.a.x, 4294967295u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1134f, _wgslsmith_div_f32(657f, -1228f))) - _wgslsmith_f_op_f32(f32(-1f) * -522f)), Struct_1(select(~(~u_input.a.yyw), firstTrailingBit(vec3<u32>(20665u, u_input.a.x, 36173u)), select(vec3<bool>(false, var_3.x, true), select(var_3.yxy, var_3.zwz, vec3<bool>(var_3.x, false, var_3.x)), !vec3<bool>(var_3.x, var_3.x, var_3.x))), u_input.b.x), Struct_2(var_1.x >> (_wgslsmith_mod_u32(u_input.a.x, 4270u) % 32u), Struct_1(u_input.a.yww, reverseBits(~0u))));
    var var_5 = var_4.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(-289f, -990f), u_input.b.x, u_input.a);
}

