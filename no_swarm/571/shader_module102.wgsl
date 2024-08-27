struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: f32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec3<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec2<f32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
    b: f32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_5 {
    a: bool,
    b: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: f32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec3<bool> = vec3<bool>(false, false, true);

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: vec3<bool>, arg_2: i32, arg_3: i32) -> u32 {
    var var_0 = _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(u_input.c, u_input.c)), ~vec2<u32>(49904u, 0u)), abs(44515u)), vec2<u32>(~_wgslsmith_div_u32(u_input.c, countOneBits(13588u)), ~(~u_input.c) ^ u_input.c));
    var_0 = _wgslsmith_clamp_vec2_u32(reverseBits(~(~abs(vec2<u32>(0u, u_input.c)))), reverseBits(vec2<u32>(var_0.x, min(var_0.x, firstTrailingBit(0u)))), abs(~_wgslsmith_sub_vec2_u32(~vec2<u32>(4294967295u, u_input.c), vec2<u32>(u_input.c, u_input.c))));
    var var_1 = ~_wgslsmith_sub_i32(u_input.d, 5713i);
    var var_2 = ~vec2<u32>(~u_input.c, 4294967295u);
    let var_3 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-global0.a), _wgslsmith_div_i32(arg_3, countOneBits(u_input.a.x)) != ~(-arg_2), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-238f + _wgslsmith_f_op_f32(min(arg_0, 287f))) - _wgslsmith_f_op_f32(global0.c + 203f)), u_input.a.xyy), !(1u >= var_2.x), global0.d, Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(global0.a)), vec2<f32>(arg_0, -455f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.a) * _wgslsmith_div_vec2_f32(vec2<f32>(arg_0, 1138f), vec2<f32>(global0.c, arg_0)))), true, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global0.a.x, -403f, false)), global0.c))), u_input.b));
    return 1u;
}

fn func_2() -> Struct_1 {
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(618f, _wgslsmith_f_op_f32(195f * global0.a.x)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-550f, 801f) - vec2<f32>(global0.a.x, 1485f))))), func_3(global0.a.x, vec3<bool>(true, !global1.x, true), global0.d.x, 8882i) > _wgslsmith_mod_u32(~_wgslsmith_mod_u32(u_input.c, 4584u), _wgslsmith_mod_u32(u_input.c, _wgslsmith_add_u32(u_input.c, 57529u))), _wgslsmith_f_op_f32(-global0.c), -abs(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, global0.d.x, global0.d.x), global0.d, ~u_input.b)));
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(sign(global0.a)), !any(select(select(global1.zz, vec2<bool>(false, global0.b), vec2<bool>(global0.b, global1.x)), vec2<bool>(global1.x, false), global0.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + global0.c))))), vec3<i32>(45361i, global0.d.x, -(reverseBits(2147483647i) >> (countOneBits(1u) % 32u))));
    global1 = select(!vec3<bool>(_wgslsmith_mult_u32(u_input.c, 12148u) <= ~u_input.c, global1.x, all(vec4<bool>(global0.b, true, false, global0.b))), !vec3<bool>(var_0.b, _wgslsmith_sub_i32(u_input.b.x, 1i) == countOneBits(-2147483647i), !var_0.b), true);
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(floor(var_0.a)), false, _wgslsmith_div_f32(-761f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(315f - 581f))))), ~abs(vec3<i32>(-u_input.d, 0i, min(u_input.b.x, -20817i))));
    let var_1 = !select(vec4<bool>(var_0.b, true, global0.d.x == _wgslsmith_add_i32(global0.d.x, global0.d.x), select(!global1.x, false, true)), !(!(!vec4<bool>(false, global1.x, global1.x, var_0.b))), select(!vec4<bool>(false, global1.x, false, var_0.b), !select(vec4<bool>(global1.x, false, var_0.b, false), vec4<bool>(global0.b, var_0.b, global0.b, global1.x), true), global0.d.x != ~(-21436i)));
    return Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(global0.a)) - global0.a), !global1.x, -198f, global0.d);
}

fn func_1() -> vec2<f32> {
    var var_0 = -2147483647i;
    var_0 = global0.d.x ^ 2147483647i;
    global0 = func_2();
    var var_1 = abs(~(~select(~vec2<u32>(u_input.c, u_input.c), vec2<u32>(u_input.c, 21493u), global1.x)));
    var_0 = -55626i;
    return vec2<f32>(2611f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(ceil(526f))));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_5, arg_2: bool, arg_3: f32) -> i32 {
    var var_0 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(337f)) * arg_3)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-169f - _wgslsmith_f_op_f32(min(global0.c, -1232f))) + _wgslsmith_f_op_f32(-arg_3))), _wgslsmith_f_op_f32(ceil(arg_0.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -489f)) + _wgslsmith_f_op_f32(-438f - arg_0.b))), _wgslsmith_f_op_f32(select(869f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), true)));
    var var_1 = global0.d;
    var var_2 = _wgslsmith_add_vec3_u32(vec3<u32>(10804u, firstLeadingBit(u_input.c), ~(~abs(u_input.c))), ~vec3<u32>(55679u, arg_1.b, firstTrailingBit(~0u)));
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-265f, global0.a.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -157f))) * arg_0.c.a)), !(var_2.x >= 46883u), arg_0.c.c, vec3<i32>(i32(-1i) * -6875i, min(abs(~0i), u_input.d), _wgslsmith_sub_i32(-1i, func_2().d.x)));
    var var_4 = _wgslsmith_add_i32(-2147483647i, -1i);
    return global0.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(~abs(u_input.d) ^ reverseBits(~(u_input.d ^ u_input.a.x)), func_4(Struct_4(-_wgslsmith_mult_vec3_i32(global0.d, u_input.b), _wgslsmith_f_op_f32(global0.c + _wgslsmith_f_op_f32(global0.c + global0.c)), Struct_1(_wgslsmith_f_op_vec2_f32(func_1()), true, global0.a.x, -global0.d), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a.x, global0.c) + vec2<f32>(1059f, global0.c)), false, -502f, global0.d)), Struct_5(!any(vec4<bool>(false, global0.b, global0.b, true)), _wgslsmith_add_u32(_wgslsmith_div_u32(54488u, u_input.c), 5146u)), 353f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - global0.a.x) * global0.a.x), -1303f));
    global1 = select(select(vec3<bool>(!func_2().b, all(!vec4<bool>(true, true, global0.b, true)), false), select(select(vec3<bool>(global0.b, global1.x, global1.x), vec3<bool>(false, true, global1.x), true), !vec3<bool>(true, global1.x, global0.b), !(!vec3<bool>(global0.b, true, global1.x))), all(!(!vec4<bool>(false, true, global0.b, global0.b)))), select(vec3<bool>(false, !(!global1.x), !(global0.d.x == global0.d.x)), vec3<bool>(global0.b, global0.b, any(select(vec4<bool>(false, global0.b, true, false), vec4<bool>(global1.x, false, true, false), vec4<bool>(global1.x, global0.b, true, global0.b)))), vec3<bool>(1u >= _wgslsmith_mod_u32(84840u, u_input.c), global0.b, true == select(false, global1.x, false))), !func_2().b);
    var var_1 = !global0.b;
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(global0.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.a + vec2<f32>(global0.a.x, global0.a.x)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 338f))))), func_2().b, -395f, vec3<i32>(u_input.d, _wgslsmith_mult_i32(~global0.d.x, ~51277i), 1i));
    var var_3 = vec4<bool>(~_wgslsmith_add_u32(u_input.c, ~57576u) < abs(110359u), false, all(select(select(!vec4<bool>(global0.b, global1.x, global1.x, var_2.b), !vec4<bool>(true, false, false, var_2.b), !vec4<bool>(true, false, global1.x, true)), !select(vec4<bool>(false, var_2.b, global0.b, true), vec4<bool>(var_2.b, false, global0.b, true), false), var_2.b)), global0.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1000f, var_2.a.x, var_2.a.x), vec3<f32>(-418f, var_2.c, 910f))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1284f, var_2.a.x, -654f), vec3<f32>(var_2.a.x, -481f, 1428f))))), vec3<bool>(all(global1.xz), select(false, true, var_2.b), true)))), min(firstLeadingBit(~21528u), ~(~abs(4294967295u))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(183f + 202f))), 118f, firstLeadingBit(u_input.c));
}

