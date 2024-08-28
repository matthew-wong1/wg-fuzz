struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: Struct_2,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<u32>,
}

struct Struct_5 {
    a: Struct_1,
    b: vec3<i32>,
    c: bool,
    d: vec3<i32>,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: vec2<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(1u, 45584u);

var<private> global1: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(vec2<i32>(-1i, 16050i), 11334u, -716f, -1484f), Struct_1(vec2<i32>(i32(-2147483648), -1i), 56517u, 792f, -1000f), Struct_1(vec2<i32>(0i, -40816i), 3183u, 202f, -657f), Struct_1(vec2<i32>(47903i, 25755i), 4437u, 1303f, -147f));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<f32>) -> vec3<bool> {
    let var_0 = firstTrailingBit(firstLeadingBit(~_wgslsmith_sub_vec3_u32(vec3<u32>(75221u, u_input.d.x, 109899u), vec3<u32>(4294967295u, global0.x, 40490u)) << (~(vec3<u32>(u_input.d.x, 4294967295u, u_input.a) ^ vec3<u32>(global0.x, global0.x, 4294967295u)) % vec3<u32>(32u))));
    let var_1 = ~_wgslsmith_mult_i32(abs(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 0i, 0i, 502i), vec4<i32>(u_input.b.x, 1i, u_input.c, 2571i))), ~u_input.e.x) & 1i;
    global1 = array<Struct_1, 4>();
    let var_2 = arg_0.x;
    var var_3 = select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true);
    return !select(vec3<bool>(true, var_3.x, !any(vec3<bool>(var_3.x, var_3.x, var_3.x))), vec3<bool>(any(vec4<bool>(var_3.x, var_3.x, var_3.x, false)), true, any(vec3<bool>(true, true, true))), any(vec2<bool>(true, true)));
}

fn func_2() -> vec3<bool> {
    let var_0 = Struct_2(vec2<u32>(global0.x, ~u_input.d.x));
    global1 = array<Struct_1, 4>();
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-350f, 1159f), _wgslsmith_f_op_f32(trunc(-533f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-446f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1118f), _wgslsmith_div_f32(-976f, 507f))))));
    global1 = array<Struct_1, 4>();
    var var_2 = _wgslsmith_f_op_vec3_f32(-var_1.wzx);
    return select(vec3<bool>(true, u_input.c > select(10116i, 1i, any(vec2<bool>(false, true))), _wgslsmith_clamp_u32(~53908u, 1u, 39210u) == (global0.x ^ ~global0.x)), !select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true), vec3<bool>(true, false, any(vec3<bool>(true, false, true))), !(0u < var_0.a.x)), all(select(func_3(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(2015f, -260f, 506f), var_1.zyy))), func_3(var_1.wyx), func_3(_wgslsmith_f_op_vec3_f32(var_1.wxw + var_1.zww)))));
}

fn func_4(arg_0: vec3<bool>, arg_1: f32) -> Struct_5 {
    global0 = vec2<u32>(_wgslsmith_sub_u32(firstLeadingBit(_wgslsmith_add_u32(1u, _wgslsmith_mult_u32(193u, global0.x))), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, u_input.a, global0.x) ^ vec3<u32>(0u, u_input.d.x, u_input.a), vec3<u32>(1u, 1u, u_input.d.x)), 85662u)), global0.x);
    global1 = array<Struct_1, 4>();
    global1 = array<Struct_1, 4>();
    global1 = array<Struct_1, 4>();
    global1 = array<Struct_1, 4>();
    return Struct_5(global1[_wgslsmith_index_u32(~max(34587u, _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(u_input.d, vec2<u32>(0u, 0u)), firstLeadingBit(u_input.d))), 4u)], _wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(abs(u_input.b), vec3<i32>(-16923i, 1i, -23519i)), u_input.b, u_input.b), countOneBits(vec3<i32>(u_input.e.x, _wgslsmith_mod_i32(u_input.e.x, u_input.e.x), abs(1i)))), all(arg_0), ~(vec3<i32>(~(-26705i), countOneBits(u_input.e.x), u_input.b.x) ^ ~vec3<i32>(-97589i, u_input.b.x, u_input.b.x)), 1u);
}

fn func_1() -> Struct_4 {
    let var_0 = func_4(!func_2(), _wgslsmith_f_op_f32(f32(-1f) * -118f));
    global0 = abs(vec2<u32>(18173u | func_4(select(vec3<bool>(true, false, var_0.c), vec3<bool>(var_0.c, false, var_0.c), vec3<bool>(false, var_0.c, var_0.c)), _wgslsmith_f_op_f32(-var_0.a.d)).e, firstLeadingBit(abs(23153u)) >> (~u_input.d.x % 32u)));
    let var_1 = var_0.d;
    var var_2 = select(!(!(!vec3<bool>(var_0.c, var_0.c, var_0.c))), !vec3<bool>(false, !func_2().x, false), vec3<bool>(true, func_4(vec3<bool>(true, true, true), var_0.a.c).c, false));
    var var_3 = ~(~4294967295u);
    return Struct_4(func_4(select(select(!vec3<bool>(var_0.c, var_2.x, var_2.x), !vec3<bool>(true, var_0.c, var_0.c), !vec3<bool>(false, var_2.x, true)), select(vec3<bool>(true, false, false), select(vec3<bool>(var_2.x, false, var_0.c), vec3<bool>(true, false, var_0.c), var_0.c), func_2()), !(!vec3<bool>(false, var_0.c, var_2.x))), _wgslsmith_f_op_f32(step(-1402f, var_0.a.c))).a, func_4(!func_2(), var_0.a.d).a, ~(~firstLeadingBit(min(vec3<u32>(global0.x, var_0.e, 33317u), vec3<u32>(0u, var_0.a.b, var_0.a.b)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = var_0.c;
    var var_2 = _wgslsmith_sub_i32(u_input.b.x, var_0.b.a.x | firstTrailingBit(abs(_wgslsmith_add_i32(1i, var_0.a.a.x))));
    var_0 = Struct_4(func_1().b, func_1().a, ~var_0.c);
    var var_3 = func_1();
    let var_4 = func_4(vec3<bool>(func_4(vec3<bool>(true, true, true), var_3.a.d).c, all(vec3<bool>(any(vec2<bool>(false, false)), any(vec3<bool>(true, false, false)), false)), all(func_3(vec3<f32>(-646f, var_0.a.c, var_3.b.d))) | any(vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_1().a.d))).a;
    var var_5 = global0.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c.x, var_1.xz);
}

