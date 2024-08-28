struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: Struct_1,
    d: vec2<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
    c: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, false, true, false);

var<private> global1: f32;

var<private> global2: Struct_3;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> bool {
    global0 = select(!(!(!select(vec4<bool>(false, global0.x, global0.x, false), vec4<bool>(global0.x, true, true, global2.a.d.x), vec4<bool>(false, true, false, true)))), vec4<bool>(!(all(vec4<bool>(true, true, false, global2.a.a)) || false), true, false, global0.x), vec4<bool>(true, false & !any(vec4<bool>(global0.x, false, true, true)), !(!global2.a.a && all(vec4<bool>(global2.a.d.x, false, true, global2.a.a))), true == !global0.x));
    var var_0 = Struct_1(global2.a.c.a);
    return true;
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: u32) -> u32 {
    let var_0 = vec4<bool>(all(vec4<bool>(!global2.a.d.x, global2.a.d.x, any(vec4<bool>(global2.a.a, global2.a.d.x, true, false)) || true, false)), !global0.x, true, !global0.x);
    var var_1 = true;
    let var_2 = Struct_4(true, Struct_3(Struct_2(global2.a.a, ~4294967295u, Struct_1(~vec3<i32>(global2.c.a.x, -328i, u_input.a)), select(vec2<bool>(true, true), !var_0.wx, vec2<bool>(var_0.x, true)), global2.c), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(global2.b - vec4<f32>(1497f, 401f, global2.b.x, 505f)))), global2.b)), arg_1), arg_1.a.zy, u_input.b);
    var var_3 = true;
    global0 = vec4<bool>(select(!any(vec3<bool>(false, true, global0.x)), func_3(), global2.b.x != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-534f + -973f))), func_3() && false, !(!(true || all(vec4<bool>(true, true, var_0.x, global0.x)))), global2.a.a);
    return select(var_2.d.x, 42429u, !(-(var_2.c.x ^ 1i) >= max(_wgslsmith_dot_vec4_i32(vec4<i32>(-16255i, global2.a.e.a.x, -21190i, -2147483647i), vec4<i32>(var_2.b.c.a.x, arg_1.a.x, -2147483647i, -1i)), min(arg_1.a.x, var_2.c.x))));
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: Struct_3, arg_3: vec2<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_sub_vec2_u32(vec2<u32>(abs(~global2.a.b), ~(~(~u_input.b.x))), vec2<u32>(global2.a.b, reverseBits(global2.a.b)));
    var var_1 = _wgslsmith_mod_u32(func_2((0u << (u_input.b.x % 32u)) & ~global2.a.b, arg_1, _wgslsmith_sub_u32(max(u_input.b.x, 12930u), firstLeadingBit(global2.a.b))), ~(~63985u)) >> (var_0.x % 32u);
    let var_2 = _wgslsmith_f_op_f32(-302f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_2.b.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.b.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2318f)))));
    global0 = vec4<bool>(global0.x, _wgslsmith_mod_i32(_wgslsmith_div_i32(u_input.a, 27845i ^ arg_0), arg_2.a.c.a.x) == (i32(-1i) * -(i32(-1i) * -6653i)), true, (~(~2147483647i) >> (var_0.x % 32u)) > _wgslsmith_dot_vec4_i32(~(vec4<i32>(-28750i, 30906i, global2.a.c.a.x, arg_2.c.a.x) << (vec4<u32>(var_0.x, 0u, 0u, 0u) % vec4<u32>(32u))), vec4<i32>(firstTrailingBit(arg_2.a.e.a.x), _wgslsmith_clamp_i32(-1i, arg_2.c.a.x, 2147483647i), arg_1.a.x >> (5365u % 32u), -arg_1.a.x)));
    global2 = Struct_3(global2.a, global2.b, Struct_1(global2.c.a));
    return Struct_1(vec3<i32>(arg_0, -62153i, 1i) >> (vec3<u32>(_wgslsmith_mod_u32(abs(58141u), u_input.b.x), ~29434u, 1056u) % vec3<u32>(32u)));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: f32, arg_3: Struct_1) -> vec2<f32> {
    var var_0 = true;
    let var_1 = global2.b.zyz;
    let var_2 = arg_1.c;
    var var_3 = Struct_1(vec3<i32>(arg_1.e.a.x, -6736i, arg_3.a.x));
    global0 = vec4<bool>(select(false, !any(select(global2.a.d, global2.a.d, arg_1.d.x)), all(!select(vec4<bool>(global2.a.d.x, true, false, true), vec4<bool>(false, global2.a.a, arg_1.a, false), vec4<bool>(false, global0.x, global2.a.d.x, false)))), func_3(), true, true);
    return _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1112f, _wgslsmith_f_op_f32(-var_1.x)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-693f, var_1.x))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.b.x, -1000f)))))));
}

fn func_5(arg_0: vec4<bool>, arg_1: i32, arg_2: vec2<f32>) -> Struct_4 {
    let var_0 = true;
    let var_1 = global2.a;
    global0 = vec4<bool>(all(vec4<bool>(true, !all(arg_0.wz), any(vec2<bool>(true, global2.a.a)), !arg_0.x)), select(reverseBits(~(-2147483647i)) == ~arg_1, global2.b.x != _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global2.b.x), _wgslsmith_f_op_f32(f32(-1f) * -1153f), true)), false), false, !(any(vec3<bool>(arg_0.x, true, global2.a.d.x)) || false) & true);
    global0 = !(!select(select(vec4<bool>(var_1.d.x, global0.x, true, var_0), vec4<bool>(true, arg_0.x, global0.x, true), true), !select(vec4<bool>(global0.x, false, arg_0.x, false), vec4<bool>(arg_0.x, false, global2.a.d.x, true), arg_0), arg_0));
    global2 = Struct_3(global2.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(-635f + global2.b.x), _wgslsmith_f_op_f32(trunc(arg_2.x)), _wgslsmith_f_op_f32(ceil(arg_2.x))) * global2.b)), global2.a.c);
    return Struct_4(true, Struct_3(global2.a, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.b.x + global2.b.x) + _wgslsmith_f_op_f32(exp2(global2.b.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(1205f)), _wgslsmith_f_op_f32(f32(-1f) * -733f))), _wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global2.b.x)))), func_1(-(~arg_1), var_1.c, Struct_3(Struct_2(var_1.d.x, u_input.b.x, Struct_1(vec3<i32>(global2.c.a.x, -21578i, -2327i)), vec2<bool>(false, global2.a.a), var_1.c), vec4<f32>(arg_2.x, global2.b.x, arg_2.x, -1379f), global2.a.e), u_input.b.zy)), vec2<i32>(global2.c.a.x, global2.a.e.a.x), u_input.b);
}

fn func_6(arg_0: Struct_4, arg_1: bool, arg_2: Struct_4) -> Struct_4 {
    var var_0 = ~vec3<u32>(1u, arg_0.b.a.b | (_wgslsmith_clamp_u32(1u, global2.a.b, global2.a.b) ^ firstTrailingBit(8550u)), max(_wgslsmith_mult_u32(arg_2.b.a.b, 1u), global2.a.b));
    var var_1 = select(vec3<bool>(true, false, true), !vec3<bool>(min(arg_0.b.a.b, arg_0.d.x) > arg_2.b.a.b, 4926u > global2.a.b, all(select(vec4<bool>(arg_2.b.a.a, true, arg_1, true), vec4<bool>(arg_1, true, global0.x, arg_2.a), vec4<bool>(global2.a.d.x, arg_1, arg_1, arg_2.a)))), vec3<bool>(arg_2.b.a.b == 0u, arg_1, any(select(vec4<bool>(arg_2.a, arg_1, false, true), vec4<bool>(arg_2.a, false, arg_0.b.a.a, global0.x), any(vec4<bool>(true, arg_1, global0.x, false))))));
    let var_2 = Struct_1(global2.c.a);
    let var_3 = u_input.b.x;
    var var_4 = arg_2.b.a;
    return func_5(select(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, arg_1), vec4<bool>(true, true, arg_0.a, arg_2.a), vec4<bool>(true, var_4.a, true, var_4.d.x)), var_4.d.x), select(vec4<bool>(true, true, global0.x, false), vec4<bool>(false, false, var_4.d.x, global0.x), u_input.b.x != 0u), !select(vec4<bool>(true, global2.a.d.x, true, global0.x), vec4<bool>(arg_0.b.a.a, var_4.a, var_1.x, false), vec4<bool>(var_1.x, false, var_1.x, true))), vec4<bool>(true & global0.x, !arg_0.a | true, (var_2.a.x | -1i) > u_input.c, var_4.a), !func_5(vec4<bool>(arg_2.b.a.a, arg_1, arg_1, arg_0.b.a.a), 19898i, _wgslsmith_f_op_vec2_f32(global2.b.zw * vec2<f32>(global2.b.x, arg_2.b.b.x))).b.a.d.x), arg_2.b.a.e.a.x, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-270f, arg_0.b.b.x))) * arg_0.b.b.zx))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2.b.x;
    let var_1 = global2.b.x;
    var var_2 = ~(~_wgslsmith_add_u32(select(global2.a.b, ~global2.a.b, global2.a.a), global2.a.b));
    let var_3 = func_6(func_5(!vec4<bool>(true, true, true, any(vec4<bool>(false, global0.x, false, global2.a.a))), ~global2.c.a.x, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(-vec2<i32>(u_input.a, 0i), Struct_2(true, global2.a.b, Struct_1(vec3<i32>(122i, 16172i, 4669i)), global0.yy, Struct_1(vec3<i32>(global2.a.e.a.x, u_input.c, -55999i))), global2.b.x, func_1(1i, Struct_1(global2.a.e.a), Struct_3(global2.a, global2.b, global2.a.c), u_input.b.zz))), vec2<f32>(-754f, _wgslsmith_f_op_f32(f32(-1f) * -1990f)))), true, func_5(vec4<bool>(true, global0.x, !all(global2.a.d), any(vec3<bool>(global2.a.d.x, global0.x, global0.x))), -(i32(-1i) * -global2.a.e.a.x), global2.b.xy));
    global2 = var_3.b;
    var var_4 = (-global2.c.a >> (vec3<u32>(213u, 3530u, 20980u) % vec3<u32>(32u))) | ~(~vec3<i32>(func_1(-11868i, Struct_1(vec3<i32>(-3401i, 7378i, -1i)), var_3.b, var_3.d.zz).a.x, abs(0i), -var_3.b.a.c.a.x));
    var var_5 = _wgslsmith_mult_vec4_u32(min(~abs(vec4<u32>(var_3.b.a.b, 1u, 59988u, 4294967295u)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(22113u, u_input.b.x, global2.a.b, 4294967295u), vec4<u32>(var_3.d.x, u_input.b.x, 0u, 4294967295u))) | reverseBits(firstTrailingBit(~vec4<u32>(var_3.b.a.b, 4294967295u, 4294967295u, global2.a.b))), _wgslsmith_mult_vec4_u32(reverseBits(max(firstLeadingBit(vec4<u32>(35214u, u_input.b.x, 5746u, 4294967295u)), abs(vec4<u32>(global2.a.b, 93949u, u_input.b.x, u_input.b.x)))), _wgslsmith_add_vec4_u32(~vec4<u32>(17333u, global2.a.b, 77666u, global2.a.b), _wgslsmith_div_vec4_u32(vec4<u32>(0u, global2.a.b, global2.a.b, 2091u), ~vec4<u32>(u_input.b.x, 1u, 1323u, 2298u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(var_5.x, 1u), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_3.b.b.xxw) - _wgslsmith_f_op_vec3_f32(sign(var_3.b.b.yyx))), vec3<f32>(-569f, 1858f, var_3.b.b.x), true)), global2.b.ywy));
}

