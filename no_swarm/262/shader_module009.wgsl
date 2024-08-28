struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: vec2<i32>,
    d: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<f32>(2425f, 691f, -2324f));

var<private> global1: vec3<i32> = vec3<i32>(i32(-2147483648), -1i, -17132i);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec4<u32>) -> i32 {
    var var_0 = false;
    global1 = firstLeadingBit(-abs(-u_input.d.yxw)) & firstTrailingBit(vec3<i32>(u_input.d.x, global1.x, i32(-1i) * -global1.x));
    var var_1 = firstTrailingBit(abs(arg_0 << (arg_0 % vec4<u32>(32u))));
    global1 = firstTrailingBit(u_input.d.xzz);
    var_0 = all(select(vec2<bool>(true, true), select(vec2<bool>(var_1.x > 0u, true), vec2<bool>(72582u < arg_0.x, true), vec2<bool>(true, true)), true));
    return _wgslsmith_sub_i32(i32(-1i) * -28400i, ~(~(-u_input.d.x)));
}

fn func_2() -> bool {
    var var_0 = Struct_1(vec3<f32>(global0.a.x, -1038f, _wgslsmith_f_op_f32(select(1385f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -720f)), true))));
    let var_1 = Struct_4(Struct_3(abs(1u), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(floor(var_0.a.x)), -125f, _wgslsmith_f_op_f32(abs(var_0.a.x)))), ~u_input.c.x), 1u, vec2<i32>(-1i, 20150i), func_3(_wgslsmith_mult_vec4_u32(~(~vec4<u32>(86356u, u_input.a.x, u_input.a.x, 25065u)), max(vec4<u32>(0u, u_input.a.x, 4294967295u, u_input.b), vec4<u32>(25894u, 4294967295u, 4294967295u, 30408u)))));
    global0 = var_1.a.b;
    var_0 = var_1.a.b;
    var_0 = Struct_1(var_1.a.b.a);
    return all(select(vec2<bool>(all(vec3<bool>(true, true, true)), select(true, true, false)), !select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false)), false), any(vec2<bool>(any(vec2<bool>(false, true)), select(true, false, false)))));
}

fn func_1(arg_0: u32, arg_1: vec4<u32>, arg_2: vec4<f32>) -> Struct_3 {
    var var_0 = func_2();
    var var_1 = 1u;
    var_1 = abs(72813u);
    var var_2 = all(select(select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), false), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, true, true)), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), any(vec4<bool>(false, false, false, true))), true), select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec3<bool>(false, true, false)), true, true, any(vec3<bool>(false, false, true))), vec4<bool>(true, false, false, true)), true));
    let var_3 = arg_0;
    return Struct_3(1u, Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))), -u_input.c.x);
}

fn func_4(arg_0: Struct_3) -> vec4<f32> {
    var var_0 = Struct_2(countOneBits(abs(~abs(u_input.b))), Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(func_1(77324u, vec4<u32>(42268u, u_input.b, 18100u, 46780u), vec4<f32>(1085f, global0.a.x, arg_0.b.a.x, global0.a.x)).b.a.x, 333f, arg_0.b.a.x), _wgslsmith_div_vec3_f32(vec3<f32>(-830f, global0.a.x, 651f), vec3<f32>(-1049f, global0.a.x, global0.a.x)))));
    let var_1 = any(vec4<bool>(select(_wgslsmith_f_op_f32(-arg_0.b.a.x) <= 2172f, var_0.b.a.x < _wgslsmith_f_op_f32(-783f - arg_0.b.a.x), true), _wgslsmith_sub_u32(firstLeadingBit(arg_0.a), min(arg_0.a, var_0.a)) != reverseBits(_wgslsmith_dot_vec3_u32(u_input.a, u_input.a)), ((arg_0.c | arg_0.c) != u_input.c.x) && !(global1.x <= -1i), reverseBits(-1i) > _wgslsmith_clamp_i32(0i, 2147483647i, ~u_input.d.x)));
    var_0 = Struct_2(~(~arg_0.a), var_0.b);
    var_0 = Struct_2(_wgslsmith_dot_vec2_u32(~u_input.a.yy, u_input.a.xx), arg_0.b);
    var var_2 = vec2<i32>(-1i) * -countOneBits(vec2<i32>(arg_0.c, firstTrailingBit(-11760i)));
    return vec4<f32>(_wgslsmith_f_op_f32(arg_0.b.a.x * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1104f, _wgslsmith_f_op_f32(-global0.a.x)) - -648f)), _wgslsmith_f_op_f32(trunc(-1193f)), 854f, -1000f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(global0.a);
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.a.x))), -702f, global0.a.x, 779f));
    var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(func_4(func_1(_wgslsmith_dot_vec4_u32(~vec4<u32>(96275u, 0u, u_input.b, 4294967295u), vec4<u32>(u_input.a.x, 1u, 4294967295u, u_input.a.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(4206u, u_input.a.x, u_input.b, 57553u), vec4<u32>(u_input.b, u_input.a.x, 1u, u_input.b) << (vec4<u32>(37355u, u_input.a.x, u_input.a.x, 1u) % vec4<u32>(32u))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(397f, -638f, -1088f, global0.a.x))))))));
    var_0 = vec4<f32>(global0.a.x, _wgslsmith_f_op_f32(max(-101f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) + var_0.x))), global0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) - -246f));
    let var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-2280f)))), var_0.x));
    let var_2 = ~(~vec2<u32>(1u, u_input.b));
    var var_3 = reverseBits(reverseBits(-firstTrailingBit(_wgslsmith_mult_vec2_i32(u_input.d.zw, u_input.d.xw))));
    global1 = vec3<i32>(_wgslsmith_div_i32(u_input.d.x, -u_input.c.x), min(_wgslsmith_mult_i32(var_3.x, 28805i), global1.x), ~(~_wgslsmith_sub_i32(-689i, 1i)));
    var var_4 = ~firstTrailingBit(_wgslsmith_clamp_vec2_i32(global1.yx, vec2<i32>(-global1.x, -var_3.x), ~(-vec2<i32>(2147483647i, global1.x))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, _wgslsmith_f_op_f32(-1157f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_vec4_f32(func_4(Struct_3(u_input.a.x, var_1, var_4.x))).x)) + -1000f)), func_1(~(~1u), vec4<u32>(~u_input.b, 40571u, 4294967295u, func_1(90110u, vec4<u32>(16440u, 4294967295u, 46514u, 24927u), vec4<f32>(global0.a.x, var_0.x, 861f, 322f)).a) ^ _wgslsmith_mod_vec4_u32(max(vec4<u32>(u_input.b, var_2.x, 0u, 1u), vec4<u32>(u_input.a.x, 4294967295u, var_2.x, var_2.x)), vec4<u32>(0u, var_2.x, 0u, 1u)), vec4<f32>(1000f, -1108f, _wgslsmith_f_op_f32(1155f + global0.a.x), _wgslsmith_f_op_f32(global0.a.x - -851f))).a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.a.x))) * -2224f)), 4294967295u);
}

