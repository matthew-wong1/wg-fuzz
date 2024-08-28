struct Struct_1 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, false);

var<private> global1: vec4<f32>;

var<private> global2: vec2<u32> = vec2<u32>(4294967295u, 1u);

var<private> global3: array<i32, 10> = array<i32, 10>(-11029i, 1i, -3429i, 25811i, -20435i, 2147483647i, 63435i, -12214i, i32(-2147483648), 23182i);

var<private> global4: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(vec4<bool>(true, false, false, false), vec2<bool>(false, true), true), Struct_1(vec4<bool>(false, true, false, false), vec2<bool>(false, true), false), Struct_1(vec4<bool>(false, true, true, false), vec2<bool>(true, true), false), Struct_1(vec4<bool>(true, true, false, false), vec2<bool>(true, false), false), Struct_1(vec4<bool>(true, true, false, false), vec2<bool>(false, false), false), Struct_1(vec4<bool>(false, true, true, false), vec2<bool>(false, true), true));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<u32>) -> u32 {
    var var_0 = arg_1;
    var var_1 = ~u_input.c;
    let var_2 = select(!arg_0.a.wyw, var_0.a.wxx, !any(select(vec3<bool>(false, false, true), select(vec3<bool>(true, false, arg_1.a.x), arg_1.a.zwz, arg_0.a.yxw), arg_0.a.zwx)));
    var_1 = ~(~1u);
    var var_3 = arg_0;
    return u_input.c;
}

fn func_2(arg_0: u32) -> Struct_1 {
    global2 = ~abs(_wgslsmith_mod_vec2_u32(firstTrailingBit(vec2<u32>(24170u, global2.x)), ~vec2<u32>(arg_0, 8206u))) << (_wgslsmith_mult_vec2_u32(~(~vec2<u32>(global2.x, 94841u)), _wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(arg_0, 1u), vec2<u32>(4294967295u, 10849u)), vec2<u32>(0u, global2.x) << (vec2<u32>(u_input.c, 6119u) % vec2<u32>(32u))) | _wgslsmith_div_vec2_u32(vec2<u32>(15693u, 0u), ~vec2<u32>(global2.x, u_input.c))) % vec2<u32>(32u));
    global0 = vec2<bool>(_wgslsmith_div_u32(abs(func_3(Struct_1(vec4<bool>(global0.x, global0.x, global0.x, false), vec2<bool>(true, true), global0.x), global4[_wgslsmith_index_u32(16186u, 6u)], vec2<u32>(0u, 4294967295u))), ~global2.x) != 0u, global0.x);
    let var_0 = firstTrailingBit(-1i);
    global2 = vec2<u32>(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(u_input.c, firstTrailingBit(_wgslsmith_div_u32(1345u, arg_0))), arg_0, global2.x), arg_0);
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, global1.x, global1.x) - vec4<f32>(-135f, 516f, 1585f, -2149f))))) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, -967f, global1.x, 1000f) * vec4<f32>(659f, 1306f, 753f, global1.x)))), vec4<f32>(_wgslsmith_f_op_f32(global1.x - 1666f), -959f, _wgslsmith_f_op_f32(round(global1.x)), -470f)))));
    return Struct_1(vec4<bool>(!(!any(vec4<bool>(false, false, true, global0.x))), false, select(global0.x, any(!vec2<bool>(global0.x, false)), true), true != !(!global0.x)), select(!select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(global0.x, global0.x), global0.x), !global0.x), vec2<bool>(true | global0.x, true), vec2<bool>(!all(vec2<bool>(global0.x, global0.x)), global0.x && true)), global0.x);
}

fn func_4(arg_0: Struct_1, arg_1: u32) -> vec4<bool> {
    global4 = array<Struct_1, 6>();
    var var_0 = _wgslsmith_dot_vec4_i32(~vec4<i32>(-(~2147483647i), -1i, -global3[_wgslsmith_index_u32(global2.x, 10u)], -15734i), ~vec4<i32>(_wgslsmith_sub_i32(16590i, 6533i), reverseBits(61239i), -1i, -global3[_wgslsmith_index_u32(22667u, 10u)]) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(0u & u_input.c, 4294967295u, ~global2.x, 4294967295u), firstLeadingBit(vec4<u32>(u_input.c, 83134u, 1u, 1u) | vec4<u32>(0u, 16302u, global2.x, 1u))) % vec4<u32>(32u)));
    var var_1 = _wgslsmith_div_f32(-115f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x * 1173f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1398f - global1.x))))));
    let var_2 = Struct_1(select(select(!(!vec4<bool>(global0.x, global0.x, arg_0.a.x, false)), func_2(~17499u).a, true), arg_0.a, any(func_2(~u_input.c).a.wx)), !(!arg_0.b), arg_0.b.x);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1.x, global1.x)));
    return vec4<bool>(!var_2.b.x, !var_2.b.x, arg_0.c, true);
}

fn func_1() -> vec4<bool> {
    let var_0 = ~(~u_input.c);
    let var_1 = Struct_1(func_4(func_2(u_input.c), _wgslsmith_sub_u32(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(46132u, var_0, global2.x, 12816u), vec4<u32>(12383u, var_0, var_0, var_0))), ~0u)), vec2<bool>(true, global0.x), global0.x);
    let var_2 = _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.c << (global2.x % 32u), 1u, 4294967295u, 1u), firstLeadingBit(abs(firstTrailingBit(vec4<u32>(global2.x, var_0, 1u, 1u)))), max(vec4<u32>(4294967295u, 17503u, _wgslsmith_sub_u32(u_input.c, 27046u), _wgslsmith_clamp_u32(var_0, 0u, var_0)), vec4<u32>(2779u, u_input.c, 30100u, 4294967295u) & vec4<u32>(global2.x, 865u, u_input.c, 241u))), ~(vec4<u32>(~u_input.c, min(var_0, 4616u), _wgslsmith_mult_u32(82941u, var_0), global2.x) << (~(~vec4<u32>(4294967295u, 7226u, u_input.c, var_0)) % vec4<u32>(32u))));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global1.x)) - _wgslsmith_f_op_f32(trunc(-333f))), global1.x, global1.x, global1.x);
    global3 = array<i32, 10>();
    return !(!var_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(func_1(), select(func_1().xy, !(!select(vec2<bool>(false, global0.x), vec2<bool>(true, false), global0.x)), global0.x), true);
    global4 = array<Struct_1, 6>();
    let var_1 = _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(abs(max(~vec3<u32>(u_input.c, 51949u, u_input.c), vec3<u32>(4294967295u, 1u, 34257u))), ~(vec3<u32>(1u, 34460u, global2.x) << (vec3<u32>(global2.x, u_input.c, 0u) % vec3<u32>(32u))) ^ vec3<u32>(_wgslsmith_sub_u32(4294967295u, 4294967295u), _wgslsmith_mult_u32(global2.x, u_input.c), 0u)), ~(u_input.c >> (4294967295u % 32u)));
    var var_2 = var_0;
    global2 = select(select(_wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(firstLeadingBit(vec2<u32>(var_1, global2.x)), vec2<u32>(var_1, 6898u) ^ vec2<u32>(var_1, global2.x)), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.c, global2.x), vec2<u32>(16679u, 1u)) ^ ~vec2<u32>(u_input.c, 39120u)), vec2<u32>(41418u, _wgslsmith_mult_u32(global2.x >> (50305u % 32u), global2.x)), !vec2<bool>(all(vec4<bool>(true, var_2.c, true, true)), var_2.c)), vec2<u32>(~var_1, _wgslsmith_mult_u32(~global2.x, 56843u) ^ 1u), vec2<bool>(1u == _wgslsmith_dot_vec3_u32(~vec3<u32>(global2.x, 0u, u_input.c), ~vec3<u32>(4294967295u, u_input.c, var_1)), !var_0.c));
    var var_3 = Struct_1(func_1(), var_2.b, !(!func_1().x));
    global1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1171f + 440f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1445f))), -206f, _wgslsmith_f_op_f32(f32(-1f) * -581f))))));
    var var_4 = _wgslsmith_f_op_f32(-global1.x);
    let x = u_input.a;
    s_output = StorageBuffer(9820u, var_1, vec3<i32>(-((1i ^ u_input.a) << ((14368u | var_1) % 32u)), u_input.b, ~(~global3[_wgslsmith_index_u32(global2.x ^ 8379u, 10u)])), countOneBits(select(select(vec4<i32>(-1i, u_input.a, global3[_wgslsmith_index_u32(var_1, 10u)], global3[_wgslsmith_index_u32(0u, 10u)]), vec4<i32>(0i, -12410i, -17750i, -1i), var_0.a), ~vec4<i32>(u_input.a, global3[_wgslsmith_index_u32(91163u, 10u)], u_input.a, u_input.b), select(var_3.a, var_0.a, vec4<bool>(false, global0.x, true, false))) ^ vec4<i32>(-2147483647i, select(u_input.a, u_input.a, global0.x), -51991i, ~u_input.a)));
}

