struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
    c: vec3<i32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-736f, -1494f, 453f, -524f);

var<private> global1: array<f32, 31>;

var<private> global2: array<vec3<bool>, 20> = array<vec3<bool>, 20>(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false));

var<private> global3: Struct_2 = Struct_2(vec2<f32>(2036f, -819f), 580f, Struct_1(-955f), Struct_1(-213f), vec3<bool>(false, false, false));

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> vec2<f32> {
    let var_0 = global3.c;
    global1 = array<f32, 31>();
    global1 = array<f32, 31>();
    let var_1 = vec4<bool>(true, global3.e.x, true, any(!(!select(vec4<bool>(false, global3.e.x, false, false), vec4<bool>(true, false, true, false), vec4<bool>(global3.e.x, true, true, global3.e.x)))));
    let var_2 = vec3<i32>(-1i) * -(~(~(vec3<i32>(u_input.c, u_input.c, u_input.c) ^ vec3<i32>(u_input.b.x, -2147483647i, u_input.b.x))));
    return vec2<f32>(-2095f, _wgslsmith_div_f32(690f, var_0.a));
}

fn func_2() -> f32 {
    global3 = Struct_2(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(func_3()), _wgslsmith_f_op_vec2_f32(global0.xy * vec2<f32>(_wgslsmith_f_op_f32(-746f - global1[_wgslsmith_index_u32(u_input.a, 31u)]), -2265f)))), _wgslsmith_f_op_f32(max(376f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_mult_u32(0u, u_input.a), ~u_input.a), 31u)]))), global3.d, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global3.a.x))) - 1488f)), vec3<bool>(select(global3.e.x, select(true, global3.e.x, global3.e.x & false), select(all(vec4<bool>(true, true, global3.e.x, global3.e.x)), any(vec2<bool>(false, global3.e.x)), global3.e.x)), false, global3.e.x));
    var var_0 = u_input.a >> (~(~24346u) % 32u);
    let var_1 = countOneBits(select(_wgslsmith_mult_vec3_u32(~(vec3<u32>(4294967295u, 11759u, 0u) >> (vec3<u32>(u_input.a, 38175u, u_input.a) % vec3<u32>(32u))), abs(vec3<u32>(u_input.a, u_input.a, u_input.a))), firstTrailingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, 1u, 1286u), vec3<u32>(u_input.a, 13217u, u_input.a), ~vec3<u32>(u_input.a, 4294967295u, u_input.a))), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(select(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(1u, 4294967295u)), vec2<u32>(u_input.a, 24564u), global3.e.yx), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, u_input.a) | vec2<u32>(0u, u_input.a), vec2<u32>(0u, 0u))), 20u)]));
    var var_2 = global3.e.x;
    let var_3 = ~1u;
    return _wgslsmith_f_op_f32(min(-212f, _wgslsmith_f_op_f32(-936f * -880f)));
}

fn func_1(arg_0: vec4<i32>) -> bool {
    var var_0 = -49923i;
    var var_1 = -(i32(-1i) * -3424i) << (_wgslsmith_mod_u32(_wgslsmith_div_u32(countOneBits(u_input.a | u_input.a), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(86022u, 4294967295u), vec2<u32>(u_input.a, 4294967295u)), _wgslsmith_add_u32(0u, 22333u))), u_input.a) % 32u);
    let var_2 = vec3<bool>(true, global3.e.x & true, true);
    let var_3 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(global0.x - 596f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(f32(-1f) * -948f))))), global3.a.x, Struct_1(_wgslsmith_f_op_f32(trunc(778f))), Struct_1(_wgslsmith_f_op_f32(func_2())), global2[_wgslsmith_index_u32(u_input.a, 20u)]);
    var var_4 = global3.c;
    return true;
}

fn func_4(arg_0: bool) -> Struct_2 {
    let var_0 = global3.e.x;
    let var_1 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-global3.a.x), _wgslsmith_f_op_f32(-467f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -130f) * _wgslsmith_f_op_f32(-global3.c.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~115791u, 31u)] - global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 57799u), vec4<u32>(4294967295u, u_input.a, 67836u, u_input.a)), 31u)]))), Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3()).x)))), Struct_1(global1[_wgslsmith_index_u32(u_input.a, 31u)]), vec3<bool>(false, global3.e.x, !func_1(min(vec4<i32>(u_input.b.x, u_input.b.x, -37845i, u_input.b.x), vec4<i32>(u_input.c, -9814i, 21389i, u_input.b.x)))));
    return var_1;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<i32>) -> Struct_2 {
    global1 = array<f32, 31>();
    var var_0 = ~firstLeadingBit(abs(~u_input.a));
    var_0 = 35171u;
    global3 = Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3()), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(508f, arg_0.b)), _wgslsmith_f_op_vec2_f32(floor(global0.xy)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.b, arg_0.c.a), arg_0.a)))), global3.c.a, func_4(any(!global3.e.zz)).c, func_4(true).c, vec3<bool>(func_1(_wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c, arg_2.x, 31802i, 22863i), vec4<i32>(-3908i, u_input.b.x, 9359i, arg_2.x)), ~vec4<i32>(-2147483647i, -55514i, u_input.b.x, -15573i))), all(select(vec4<bool>(arg_0.e.x, false, false, arg_0.e.x), vec4<bool>(global3.e.x, arg_0.e.x, arg_0.e.x, arg_0.e.x), vec4<bool>(true, true, arg_0.e.x, true))) || true, any(vec4<bool>(false, true, any(vec4<bool>(false, false, true, false)), true))));
    var var_1 = select(u_input.b.x, -_wgslsmith_mult_i32(arg_2.x, 2147483647i) & (countOneBits(-8245i) >> (select(u_input.a, u_input.a, global3.e.x) % 32u)), select(arg_0.e.x, false, arg_0.e.x) | global3.e.x) & arg_2.x;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_5(func_4(func_1(_wgslsmith_mult_vec4_i32(~vec4<i32>(u_input.b.x, u_input.b.x, 0i, -2147483647i), -vec4<i32>(u_input.c, u_input.c, 44547i, u_input.b.x)))), Struct_1(-168f), vec2<i32>(firstLeadingBit(_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(47400i, 11736i, -2147483647i, u_input.b.x)), countOneBits(vec4<i32>(u_input.b.x, u_input.c, u_input.b.x, u_input.b.x)))), abs(u_input.c)));
    var var_0 = !(global0.x <= 357f);
    let var_1 = true;
    let var_2 = _wgslsmith_mult_u32(min(u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a, _wgslsmith_mod_u32(9375u, 43956u), firstLeadingBit(u_input.a)), ~(~vec4<u32>(0u, 64200u, u_input.a, u_input.a)))), u_input.a);
    let var_3 = vec4<i32>(_wgslsmith_dot_vec3_i32(-(vec3<i32>(-1i) * -vec3<i32>(-44866i, u_input.c, 18144i)), _wgslsmith_mod_vec3_i32((vec3<i32>(-1i, 79214i, u_input.b.x) << (vec3<u32>(4294967295u, u_input.a, 0u) % vec3<u32>(32u))) >> (reverseBits(vec3<u32>(0u, 0u, 11134u)) % vec3<u32>(32u)), vec3<i32>(-30817i, -8376i, 1i))), -1i, -u_input.c, u_input.c);
    var_0 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-global0.zy), vec2<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 31u)] - _wgslsmith_f_op_f32(f32(-1f) * -403f)), 2401f), -vec3<i32>(abs(firstTrailingBit(u_input.c)), -2147483647i, var_3.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.x, _wgslsmith_f_op_f32(func_2())))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.x))), global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(var_2, u_input.a), 31u)]))));
}

