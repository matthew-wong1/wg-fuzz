struct Struct_1 {
    a: vec3<i32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
    c: i32,
    d: vec4<i32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec3<i32>(-8127i, 0i, -13939i), -559f));

var<private> global1: bool;

var<private> global2: array<Struct_1, 2>;

var<private> global3: bool;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: i32, arg_3: bool) -> u32 {
    var var_0 = reverseBits(1u);
    let var_1 = arg_0;
    var var_2 = !select(vec2<bool>(true, !arg_3), vec2<bool>(u_input.a != u_input.a, true), false);
    let var_3 = arg_1.b;
    var var_4 = select(vec2<bool>(var_2.x, select(!(var_1.a.b < -1122f), arg_3, true)), vec2<bool>(true, true), vec2<bool>(true, true));
    return 1u;
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> Struct_2 {
    let var_0 = Struct_2(Struct_1(firstTrailingBit(max(arg_1.a >> (vec3<u32>(u_input.a, u_input.a, u_input.a) % vec3<u32>(32u)), global0.a.a)), _wgslsmith_div_f32(-298f, arg_1.b)));
    var var_1 = countOneBits(~((18984u & u_input.a) & 0u)) ^ func_3(Struct_2(Struct_1(_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, -882i, -1i), vec3<i32>(u_input.b, 19710i, arg_1.a.x), global0.a.a), 1f)), var_0.a, var_0.a.a.x, var_0.a.b >= _wgslsmith_f_op_f32(round(arg_1.b)));
    let var_2 = arg_1;
    return var_0;
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    global3 = global0.a.a.x != arg_0.a.a.x;
    global1 = all(vec4<bool>(true, !select(true, u_input.a >= 0u, true), false, all(vec2<bool>(true, 33881u <= u_input.a))));
    global1 = any(!select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(any(vec4<bool>(false, false, true, true)), true), arg_0.a.a.x >= arg_0.a.a.x));
    global3 = true;
    var var_0 = _wgslsmith_sub_vec4_u32(abs(abs(vec4<u32>(77972u, u_input.a, u_input.a, u_input.a) | vec4<u32>(1u, u_input.a, 19866u, 55446u))) | select(vec4<u32>(~u_input.a, 4294967295u, 4294967295u, u_input.a & 0u), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 54862u, 148158u, u_input.a), vec4<u32>(u_input.a, 17302u, 69613u, 0u)) << (~vec4<u32>(u_input.a, 1u, 0u, 1u) % vec4<u32>(32u)), vec4<bool>(all(vec3<bool>(false, false, false)), false, any(vec4<bool>(true, true, false, false)), arg_0.a.a.x < global0.a.a.x)), ~(~(_wgslsmith_mod_vec4_u32(vec4<u32>(12748u, u_input.a, 0u, 51365u), vec4<u32>(34295u, u_input.a, 21805u, 4048u)) >> ((vec4<u32>(19033u, u_input.a, u_input.a, u_input.a) ^ vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a)) % vec4<u32>(32u)))));
    return arg_0;
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: u32) -> f32 {
    let var_0 = global0.a;
    var var_1 = func_4(func_2(var_0.a.x, arg_0));
    let var_2 = func_4(func_4(func_2(~_wgslsmith_mult_i32(12668i, var_0.a.x), Struct_1(vec3<i32>(0i, u_input.b, u_input.b), var_0.b)))).a;
    let var_3 = false;
    var var_4 = var_1.a;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.b)));
}

fn func_5(arg_0: vec4<f32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.wz - vec2<f32>(-357f, -2104f)), _wgslsmith_f_op_vec2_f32(arg_0.ww - arg_0.wz))))) * _wgslsmith_f_op_vec2_f32(round(arg_0.zy)));
    global3 = any(select(vec3<bool>(true, true, true), select(vec3<bool>(true, any(vec2<bool>(false, false)), true), !select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), false), arg_0.x != 1546f), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true), true))));
    let var_1 = global0.a.a.x;
    let var_2 = Struct_2(global2[_wgslsmith_index_u32(68461u, 2u)]);
    let var_3 = vec3<i32>(firstLeadingBit(var_2.a.a.x), ~((var_2.a.a.x ^ u_input.b) << (~(~56488u) % 32u)), global0.a.a.x);
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(vec4<f32>(global0.a.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.b) * -1511f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -689f) - _wgslsmith_f_op_f32(func_1(global2[_wgslsmith_index_u32(6443u, 2u)], _wgslsmith_f_op_f32(exp2(global0.a.b)), u_input.a))), global0.a.b));
    let var_1 = vec4<bool>(false, select(all(vec3<bool>(false, true, true)), all(vec2<bool>(true, true)), true) && false, any(select(vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(true, true), false), select(vec2<bool>(true, true), vec2<bool>(true, true), true))) || true, any(vec3<bool>(all(select(vec2<bool>(true, true), vec2<bool>(false, true), false)), true, !any(vec4<bool>(false, true, false, true)))));
    let var_2 = -(vec2<i32>(~_wgslsmith_mult_i32(u_input.b, u_input.b), global0.a.a.x) | abs(vec2<i32>(-1i, i32(-1i) * -2147483647i)));
    var var_3 = !vec4<bool>(!select(all(var_1.wzx), all(vec2<bool>(var_1.x, false)), true), any(select(vec3<bool>(true, var_1.x, var_1.x), select(var_1.zyw, var_1.xyx, var_1.x), true)), all(var_1.xz), !any(select(vec4<bool>(var_1.x, var_1.x, true, var_1.x), var_1, vec4<bool>(false, true, false, var_1.x))));
    var var_4 = func_4(Struct_2(func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.b, -1619f, -813f, 461f) + vec4<f32>(global0.a.b, -1000f, -1110f, 906f)))).a)).a;
    var var_5 = func_4(Struct_2(Struct_1(-vec3<i32>(global0.a.a.x, u_input.b, -11002i) & ~global0.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.b + var_4.b))))).a;
    var_3 = select(select(var_1, !var_1, !var_1), vec4<bool>(true, !var_3.x, !var_3.x, !(!var_1.x)), select(vec4<bool>(!all(vec3<bool>(var_3.x, var_1.x, var_3.x)), false, var_1.x, var_1.x), select(!vec4<bool>(false, var_1.x, true, false), select(!var_1, vec4<bool>(var_1.x, true, var_3.x, var_3.x), !vec4<bool>(var_3.x, true, true, var_1.x)), vec4<bool>(true, true, var_3.x, u_input.a != 19618u)), global0.a.a.x >= _wgslsmith_mod_i32(~36187i, func_2(-2147483647i, global0.a).a.a.x)));
    var var_6 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(~var_6.a.a.x, -1i, -2147483647i, var_4.a.x), _wgslsmith_mod_vec4_i32(vec4<i32>(2778i, var_5.a.x, -21656i, 15249i), countOneBits(vec4<i32>(var_4.a.x, 2636i, var_6.a.a.x, var_5.a.x)))), vec4<i32>(var_4.a.x, 50442i, _wgslsmith_add_i32(func_5(vec4<f32>(var_0.a.b, -322f, global0.a.b, 176f)).a.a.x, _wgslsmith_mod_i32(0i, var_4.a.x)), global0.a.a.x)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-345f, 1000f, global0.a.b) + vec3<f32>(var_6.a.b, 524f, -1869f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-678f, 320f, 424f)))))), var_4.a.x, abs(firstTrailingBit(vec4<i32>(var_4.a.x, 19874i, -2147483647i, var_6.a.a.x)) << (~abs(vec4<u32>(1u, u_input.a, u_input.a, 1u)) % vec4<u32>(32u))), ~(countOneBits(_wgslsmith_add_vec3_u32(vec3<u32>(27167u, u_input.a, 125112u), vec3<u32>(u_input.a, 51018u, u_input.a))) >> (vec3<u32>(29402u, min(4294967295u, 0u), 1u | u_input.a) % vec3<u32>(32u))));
}

