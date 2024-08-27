struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec2<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 54822u;

var<private> global1: Struct_1 = Struct_1(vec4<f32>(-524f, 312f, -2150f, 1000f));

var<private> global2: u32;

var<private> global3: Struct_2;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec2<i32> {
    let var_0 = ~((reverseBits(select(0u, 7904u, true)) ^ ~_wgslsmith_dot_vec3_u32(vec3<u32>(20436u, 4294967295u, 4029u), vec3<u32>(54804u, u_input.a.x, 50345u))) | ~(~1u));
    var var_1 = _wgslsmith_f_op_f32(-global1.a.x);
    var var_2 = global3.d;
    global1 = Struct_1(global1.a);
    let var_3 = global1.a.yxw;
    return _wgslsmith_div_vec2_i32(firstLeadingBit(firstLeadingBit(max(global3.c, vec2<i32>(global3.c.x, 4748i))) & min(_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, -8377i), global3.c, global3.c), _wgslsmith_div_vec2_i32(vec2<i32>(global3.c.x, global3.c.x), vec2<i32>(-14410i, -1i)))), -vec2<i32>(~(2147483647i ^ global3.c.x), global3.c.x));
}

fn func_2(arg_0: vec2<bool>) -> Struct_1 {
    let var_0 = Struct_2(4294967295u, global3.d, func_3(), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(-1188f)), _wgslsmith_f_op_f32(trunc(-517f)), global3.b.a.x, -2182f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-144f, 540f, global3.b.a.x, 763f) + _wgslsmith_f_op_vec4_f32(global3.d.a * vec4<f32>(1298f, 1000f, global3.b.a.x, -1158f))))));
    let var_1 = global3.b.a.x;
    global2 = 1u;
    global0 = 4294967295u;
    let var_2 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(659f, -1736f)) + _wgslsmith_f_op_f32(-global1.a.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(1690f, 134f)), _wgslsmith_f_op_f32(trunc(-148f)), all(vec2<bool>(false, true))))))));
    return Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-165f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(1055f)), _wgslsmith_f_op_f32(abs(var_0.b.a.x)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(var_2.x)))), global3.b.a.x) - vec4<f32>(_wgslsmith_f_op_f32(round(1f)), _wgslsmith_f_op_f32(abs(-440f)), _wgslsmith_div_f32(var_2.x, -1560f), var_0.b.a.x)));
}

fn func_1() -> vec3<u32> {
    var var_0 = 66957u;
    var var_1 = Struct_2(global3.a & 1u, func_2(vec2<bool>(true, true)), ~global3.c, global3.b);
    let var_2 = var_1.b;
    return select(vec3<u32>(~max(var_1.a, _wgslsmith_add_u32(global3.a, 38254u)), global3.a, global3.a), ~vec3<u32>(~global3.a, ~u_input.e, abs(1u)) >> (~vec3<u32>(26327u, abs(var_1.a), 1u) % vec3<u32>(32u)), !select(select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true)), select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true)), true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), select(false, true, false)), select(1i >= var_1.c.x, false, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(func_1() << (~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.e, u_input.a.x, u_input.a.x) << (vec3<u32>(u_input.e, 79025u, global3.a) % vec3<u32>(32u)), ~vec3<u32>(0u, u_input.e, 4294967295u)) % vec3<u32>(32u)));
    global2 = _wgslsmith_mult_u32(firstTrailingBit(abs(u_input.d)), global3.a);
    let var_1 = global3.d;
    global2 = firstTrailingBit(func_1().x);
    global3 = Struct_2(~15872u, func_2(select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, true), vec2<bool>(any(vec2<bool>(false, false)), all(vec4<bool>(false, false, true, false))))), abs(countOneBits(-global3.c)), global3.d);
    var var_2 = Struct_2(1u, Struct_1(global3.d.a), vec2<i32>(_wgslsmith_clamp_i32(0i, -(-48054i & global3.c.x), _wgslsmith_mod_i32(13215i, u_input.c)), -2147483647i), func_2(vec2<bool>(true, any(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false))))));
    let x = u_input.a;
    s_output = StorageBuffer(func_1().x, min((-vec3<i32>(-9473i, u_input.c, u_input.b) << (abs(vec3<u32>(13475u, var_0.x, global3.a)) % vec3<u32>(32u))) & ~_wgslsmith_div_vec3_i32(vec3<i32>(var_2.c.x, -17161i, u_input.b), vec3<i32>(var_2.c.x, var_2.c.x, u_input.c)), vec3<i32>(0i, firstTrailingBit(-global3.c.x), max(firstLeadingBit(var_2.c.x), ~var_2.c.x))), firstLeadingBit(-u_input.c), vec2<f32>(1768f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global1.a.x)), -456f)));
}

