struct Struct_1 {
    a: u32,
    b: bool,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 25> = array<bool, 25>(true, false, true, true, true, true, false, true, false, true, true, true, false, false, false, true, false, true, false, false, false, false, true, false, true);

var<private> global1: array<vec4<i32>, 14>;

var<private> global2: array<Struct_1, 11>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec4<bool>) -> i32 {
    global0 = array<bool, 25>();
    global0 = array<bool, 25>();
    var var_0 = Struct_1(48897u, true, select(vec3<u32>(_wgslsmith_mod_u32(u_input.c, 15240u), 920u, abs(u_input.e)), ~vec3<u32>(u_input.b, 1u, 1u) | vec3<u32>(u_input.e, 38227u, u_input.e), vec3<bool>(global0[_wgslsmith_index_u32(abs(1u), 25u)], true, arg_1.x | false)) ^ select(~(~vec3<u32>(0u, 1u, u_input.d)), vec3<u32>(_wgslsmith_sub_u32(69681u, 0u), ~u_input.e, _wgslsmith_dot_vec4_u32(vec4<u32>(36714u, u_input.e, u_input.c, 0u), vec4<u32>(1u, 1u, 29954u, 4294967295u))), select(select(arg_1.wxy, arg_1.ywy, arg_1.zxx), vec3<bool>(false, true, arg_1.x), arg_1.x | false)));
    let var_1 = Struct_1(~(u_input.e & (1u ^ _wgslsmith_mult_u32(40779u, u_input.e))), true, ~_wgslsmith_div_vec3_u32(var_0.c, var_0.c));
    let var_2 = Struct_1(76962u, false, ~vec3<u32>(var_1.a, ~(~70017u), 1u ^ (var_0.c.x << (var_0.a % 32u))));
    return ~_wgslsmith_dot_vec2_i32(max(~vec2<i32>(-9119i, 32210i), vec2<i32>(31726i, u_input.a)), abs(arg_0.zx));
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: vec4<u32>) -> i32 {
    let var_0 = u_input.a;
    global2 = array<Struct_1, 11>();
    global0 = array<bool, 25>();
    global2 = array<Struct_1, 11>();
    global1 = array<vec4<i32>, 14>();
    return func_3(global1[_wgslsmith_index_u32(reverseBits(0u), 14u)], vec4<bool>(arg_1.a.b, false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x - -318f) * _wgslsmith_f_op_f32(-arg_0.x)) > _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1000f + 392f))), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(arg_2.zxy, vec3<u32>(arg_2.x, 15276u, arg_1.a.c.x)), 97463u), 25u)] || true));
}

fn func_4(arg_0: i32) -> Struct_1 {
    global1 = array<vec4<i32>, 14>();
    global1 = array<vec4<i32>, 14>();
    let var_0 = 37852u;
    var var_1 = global2[_wgslsmith_index_u32(max(abs(reverseBits(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 1u, u_input.d, u_input.d), vec4<u32>(53334u, var_0, u_input.d, var_0)), _wgslsmith_div_u32(60985u, var_0)))), _wgslsmith_mod_u32(21277u, ~(~u_input.d))), 11u)];
    let var_2 = firstTrailingBit(var_0);
    return global2[_wgslsmith_index_u32(~((37618u & var_0) ^ ~1u), 11u)];
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: vec3<bool>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = func_4(func_2(vec2<f32>(-460f, -759f), Struct_2(arg_3), max(_wgslsmith_clamp_vec4_u32(vec4<u32>(21379u, 103015u, 53436u, 10231u) << (vec4<u32>(u_input.d, arg_0.a, u_input.e, u_input.d) % vec4<u32>(32u)), abs(vec4<u32>(arg_0.c.x, 4294967295u, 23725u, 18924u)), vec4<u32>(u_input.e, 0u, arg_0.a, 0u)), vec4<u32>(~u_input.d, u_input.e, ~arg_0.a, 0u))));
    var var_1 = _wgslsmith_add_i32(-41476i, 1i);
    var_1 = 4226i;
    var var_2 = _wgslsmith_mult_i32(func_2(vec2<f32>(574f, _wgslsmith_f_op_f32(-200f + -758f)), Struct_2(Struct_1(15537u, true, vec3<u32>(50215u, 0u, 29797u))), vec4<u32>(4294967295u, _wgslsmith_div_u32(var_0.c.x, var_0.a), 0u, ~var_0.a)), 0i << (arg_3.c.x % 32u)) << (abs(24180u) % 32u);
    var var_3 = arg_0;
    return func_4(-(~u_input.a));
}

fn func_5(arg_0: Struct_2, arg_1: vec2<bool>) -> Struct_2 {
    let var_0 = Struct_1(~abs(37781u), true, arg_0.a.c);
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(~arg_0.a.c.x, max(0u, _wgslsmith_dot_vec3_u32(~(~var_0.c), ~vec3<u32>(49511u, 74432u, 15406u) << (select(vec3<u32>(u_input.d, 127971u, 6601u), var_0.c, global0[_wgslsmith_index_u32(var_0.c.x, 25u)]) % vec3<u32>(32u))))), 11u)];
    var var_2 = Struct_2(func_4(firstLeadingBit(u_input.a)));
    var_1 = Struct_1(~1u, arg_0.a.b, _wgslsmith_div_vec3_u32(~var_2.a.c, ~(~var_0.c)) & firstTrailingBit(func_4(61449i).c | var_2.a.c));
    let var_3 = func_4(-2147483647i);
    return Struct_2(func_4(29899i));
}

fn func_6(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(26342u, true, vec3<u32>(firstTrailingBit(max(1u, arg_2.a.c.x)), 0u, func_1(Struct_1(1u, global0[_wgslsmith_index_u32(1u, 25u)], arg_0.wzw), true, vec3<bool>(arg_2.a.b, false, arg_2.a.b), arg_1.a).a ^ 1u));
    let var_1 = arg_2;
    global1 = array<vec4<i32>, 14>();
    let var_2 = any(!vec4<bool>(!arg_2.a.b, var_0.b, true, arg_3.b));
    global1 = array<vec4<i32>, 14>();
    return Struct_1(arg_0.x, true, func_4(u_input.a >> (~61297u % 32u)).c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(~(~_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, u_input.e, u_input.e, u_input.c), vec4<u32>(4294967295u, u_input.e, 15088u, 60924u)) << (min(~vec4<u32>(1u, 4294967295u, u_input.c, 40252u), ~vec4<u32>(4294967295u, 1u, u_input.d, u_input.e)) % vec4<u32>(32u))), func_5(Struct_2(func_1(Struct_1(4294967295u, false, vec3<u32>(4294967295u, 9677u, u_input.d)), true, vec3<bool>(global0[_wgslsmith_index_u32(u_input.b, 25u)], global0[_wgslsmith_index_u32(42355u, 25u)], false), global2[_wgslsmith_index_u32(~22113u, 11u)])), vec2<bool>(global0[_wgslsmith_index_u32(60134u, 25u)], u_input.c >= ~83516u)), Struct_2(func_1(Struct_1(~19404u, func_4(u_input.a).b, ~vec3<u32>(0u, u_input.c, u_input.e)), true, select(select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.b, 25u)], true, global0[_wgslsmith_index_u32(u_input.b, 25u)]), vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.e, 25u)], true), vec3<bool>(global0[_wgslsmith_index_u32(u_input.d, 25u)], global0[_wgslsmith_index_u32(0u, 25u)], global0[_wgslsmith_index_u32(u_input.e, 25u)])), !vec3<bool>(global0[_wgslsmith_index_u32(u_input.e, 25u)], true, global0[_wgslsmith_index_u32(u_input.d, 25u)]), global0[_wgslsmith_index_u32(u_input.b, 25u)]), func_4(30886i))), Struct_1(0u, !all(select(vec2<bool>(global0[_wgslsmith_index_u32(1u, 25u)], false), vec2<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 25u)]), vec2<bool>(false, true))), select(vec3<u32>(u_input.b ^ 36900u, u_input.b << (6596u % 32u), 4294967295u << (u_input.e % 32u)), ~vec3<u32>(u_input.e, u_input.e, 1u), vec3<bool>(global0[_wgslsmith_index_u32(42040u >> (u_input.c % 32u), 25u)], true, true))));
    var var_1 = ~(~(~var_0.c.x)) >> (~u_input.e % 32u);
    var var_2 = func_1(func_4(_wgslsmith_div_i32(_wgslsmith_sub_i32(u_input.a, 1i), ~(-6682i << (u_input.e % 32u)))), any(vec3<bool>(~var_0.c.x <= _wgslsmith_mod_u32(0u, u_input.e), true, !(!global0[_wgslsmith_index_u32(u_input.b, 25u)]))), select(vec3<bool>(false, global0[_wgslsmith_index_u32(25392u, 25u)], global0[_wgslsmith_index_u32(func_4(0i).a, 25u)]), select(!vec3<bool>(false, true, global0[_wgslsmith_index_u32(var_0.a, 25u)]), select(vec3<bool>(global0[_wgslsmith_index_u32(0u, 25u)], var_0.b, var_0.b), select(vec3<bool>(false, false, global0[_wgslsmith_index_u32(0u, 25u)]), vec3<bool>(global0[_wgslsmith_index_u32(47386u, 25u)], false, var_0.b), global0[_wgslsmith_index_u32(var_0.a, 25u)]), !var_0.b), any(!vec4<bool>(false, false, global0[_wgslsmith_index_u32(65977u, 25u)], true))), select(!(!vec3<bool>(true, var_0.b, var_0.b)), !vec3<bool>(var_0.b, false, false), !select(vec3<bool>(true, false, var_0.b), vec3<bool>(false, global0[_wgslsmith_index_u32(37445u, 25u)], true), vec3<bool>(var_0.b, global0[_wgslsmith_index_u32(1u, 25u)], global0[_wgslsmith_index_u32(4294967295u, 25u)])))), Struct_1(select(_wgslsmith_mult_u32(u_input.c, 0u) >> (select(u_input.b, u_input.b, true) % 32u), func_6(vec4<u32>(1u, var_0.c.x, u_input.e, 5557u) | vec4<u32>(var_0.c.x, 11114u, var_0.a, 4294967295u), func_5(Struct_2(Struct_1(u_input.b, true, vec3<u32>(u_input.b, 160727u, var_0.c.x))), vec2<bool>(global0[_wgslsmith_index_u32(0u, 25u)], true)), func_5(Struct_2(global2[_wgslsmith_index_u32(60807u, 11u)]), vec2<bool>(var_0.b, var_0.b)), global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u, 2997u, 1u), 11u)]).a, false), global0[_wgslsmith_index_u32(countOneBits(u_input.d), 25u)], ~vec3<u32>(select(18072u, 107678u, true), ~u_input.d, _wgslsmith_div_u32(10687u, u_input.e))));
    global1 = array<vec4<i32>, 14>();
    var_2 = func_4(-max(countOneBits(func_2(vec2<f32>(457f, 1535f), Struct_2(Struct_1(0u, var_2.b, var_2.c)), vec4<u32>(9509u, var_2.a, 7976u, var_0.a))), _wgslsmith_mod_i32(-22991i >> (var_2.a % 32u), u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-724f, 803f), 1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -937f), _wgslsmith_f_op_f32(sign(1000f)), any(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 25u)], var_0.b, false, var_0.b)))) + 669f)), (-u_input.a & select(-16277i, u_input.a ^ u_input.a, false)) << (func_4(-1i).a % 32u), _wgslsmith_sub_vec3_i32(reverseBits(vec3<i32>(36727i, u_input.a, u_input.a)), _wgslsmith_add_vec3_i32(-vec3<i32>(u_input.a, 2147483647i, 0i), -_wgslsmith_mult_vec3_i32(vec3<i32>(0i, 0i, 2147483647i), vec3<i32>(-27190i, u_input.a, -1i)))));
}

