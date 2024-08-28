struct Struct_1 {
    a: vec3<i32>,
    b: u32,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: Struct_1,
    d: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: vec2<f32>,
}

struct Struct_4 {
    a: f32,
    b: vec2<f32>,
    c: bool,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_3 = Struct_3(Struct_2(692f, 2147483647i, Struct_1(vec3<i32>(i32(-2147483648), i32(-2147483648), -23339i), 1u), vec2<bool>(false, true)), vec2<u32>(1u, 0u), vec2<f32>(941f, 554f));

var<private> global2: u32 = 1u;

var<private> global3: i32 = 0i;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec4<bool> {
    let var_0 = !global1.a.d;
    var var_1 = Struct_1(global0.a, u_input.d.x);
    let var_2 = global1.a;
    let var_3 = true;
    let var_4 = -423f;
    return vec4<bool>(any(!vec3<bool>(true, true, all(vec3<bool>(false, true, false)))), var_3, !(true | (global1.c.x <= _wgslsmith_f_op_f32(-var_4))), _wgslsmith_mod_u32(var_1.b, _wgslsmith_add_u32(max(4294967295u, var_1.b), 39242u)) == ~_wgslsmith_clamp_u32(1u, global0.b, ~3875u));
}

fn func_4(arg_0: vec4<bool>) -> vec2<bool> {
    var var_0 = Struct_3(global1.a, _wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.d, ~u_input.d), ~max(u_input.d.x, 10250u)), ~_wgslsmith_mult_vec2_u32(global1.b, global1.b) ^ u_input.d.zy), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1426f, 1126f)) * _wgslsmith_div_vec2_f32(global1.c, global1.c)))))));
    global3 = global0.a.x;
    var_0 = Struct_3(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.x - -372f))), global0.a.x, Struct_1(~(-vec3<i32>(2111i, global1.a.c.a.x, var_0.a.b)), abs(global1.b.x ^ 2927u)), global1.a.d), _wgslsmith_add_vec2_u32(vec2<u32>(15962u, _wgslsmith_clamp_u32(var_0.b.x ^ 4294967295u, ~15420u, var_0.b.x)), u_input.d.zx), _wgslsmith_f_op_vec2_f32(ceil(var_0.c)));
    var var_1 = u_input.a.xx;
    var_0 = Struct_3(Struct_2(var_0.a.a, 26634i, Struct_1(max(-vec3<i32>(1i, global0.a.x, 1i), u_input.a), u_input.d.x), vec2<bool>(!(true | var_0.a.d.x), false | var_0.a.d.x)), (_wgslsmith_mod_vec2_u32(u_input.d.yz, ~vec2<u32>(10541u, 0u)) >> (vec2<u32>(~0u, ~1u) % vec2<u32>(32u))) << (global1.b % vec2<u32>(32u)), _wgslsmith_f_op_vec2_f32(-var_0.c));
    return vec2<bool>(any(vec3<bool>(func_3().x, global1.a.c.b >= u_input.d.x, true)) || false, any(select(!arg_0.yw, !arg_0.yy, func_3().zz)));
}

fn func_2() -> f32 {
    let var_0 = global1.a;
    var var_1 = Struct_3(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.a) + global1.a.a) * _wgslsmith_f_op_f32(f32(-1f) * -1394f)), global0.a.x, Struct_1(abs(vec3<i32>(u_input.c.x, global0.a.x, -42385i) << (vec3<u32>(global0.b, var_0.c.b, 52841u) % vec3<u32>(32u))), _wgslsmith_add_u32(u_input.d.x, 28596u)), func_4(func_3())), max(_wgslsmith_clamp_vec2_u32(u_input.d.xy, vec2<u32>(global0.b, 53590u) & vec2<u32>(u_input.d.x, var_0.c.b), vec2<u32>(u_input.d.x, u_input.d.x)), max(vec2<u32>(4294967295u, global1.b.x), u_input.d.yz)) << (vec2<u32>(_wgslsmith_mult_u32(u_input.d.x, ~global0.b), _wgslsmith_add_u32(4294967295u, u_input.d.x) ^ ~global1.a.c.b) % vec2<u32>(32u)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a.a, -1105f))))));
    let var_2 = Struct_3(global1.a, global1.b, vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-510f, var_0.a)), _wgslsmith_f_op_f32(min(var_1.a.a, _wgslsmith_f_op_f32(-global1.a.a))))), 1276f));
    var var_3 = Struct_3(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c.x + _wgslsmith_f_op_f32(floor(var_2.a.a)))), ~select(var_0.c.a.x, select(-2147483647i, 22718i, false), true), Struct_1(min(abs(var_0.c.a), vec3<i32>(26103i, -7941i, global1.a.c.a.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, 1u, global1.a.c.b), min(vec3<u32>(var_0.c.b, 45880u, 0u), vec3<u32>(global0.b, u_input.d.x, var_1.a.c.b)))), vec2<bool>(true, true)), var_2.b | (vec2<u32>(abs(u_input.d.x), ~u_input.d.x) >> (var_1.b % vec2<u32>(32u))), vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global1.c.x + var_1.c.x))), _wgslsmith_f_op_f32(var_1.c.x - _wgslsmith_f_op_f32(235f + var_2.c.x)))), -595f));
    var_3 = Struct_3(global1.a, _wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(firstTrailingBit(9103u), ~var_2.a.c.b), vec2<u32>(var_1.a.c.b, 35955u ^ var_3.a.c.b)), var_2.b), vec2<f32>(1474f, global1.a.a));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c.x)));
}

fn func_1() -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(global1.a.a, global1.c.x, _wgslsmith_f_op_f32(global1.c.x - _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.c.x - global1.c.x), -786f))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1486f, global1.c.x))), -598f, 1000f), vec3<f32>(_wgslsmith_f_op_f32(trunc(global1.c.x)), -577f, -549f)))));
    let var_1 = !(!(!(!global1.a.d.x)));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1339f + var_0.x), _wgslsmith_f_op_f32(func_2())) + _wgslsmith_f_op_f32(958f * -524f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(135f))))), global1.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-258f, global1.c.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(693f, global1.c.x)))))) + 1236f));
    global3 = global0.a.x;
    global3 = -9738i;
    return StorageBuffer(vec2<f32>(1127f, 1224f), 0u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.a;
    global2 = 44020u;
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-184f + 1323f), -1018f)))));
    let var_2 = select(!select(!vec4<bool>(false, var_0.d.x, false, true), vec4<bool>(true, var_0.c.b == u_input.d.x, true, var_0.d.x), select(!vec4<bool>(true, global1.a.d.x, false, var_0.d.x), vec4<bool>(true, true, false, var_0.d.x), select(vec4<bool>(global1.a.d.x, global1.a.d.x, false, true), vec4<bool>(true, true, var_0.d.x, false), false))), select(select(select(vec4<bool>(false, false, false, true), !vec4<bool>(global1.a.d.x, var_0.d.x, false, global1.a.d.x), !vec4<bool>(global1.a.d.x, global1.a.d.x, false, var_0.d.x)), !(!vec4<bool>(global1.a.d.x, true, false, global1.a.d.x)), !select(vec4<bool>(global1.a.d.x, true, var_0.d.x, false), vec4<bool>(true, var_0.d.x, var_0.d.x, global1.a.d.x), global1.a.d.x)), vec4<bool>(any(vec2<bool>(true, true)), true, true, !(-775f > var_0.a)), true), var_0.d.x);
    var var_3 = ~(~(~54064u));
    var var_4 = vec2<u32>(18771u, global1.a.c.b << (var_0.c.b % 32u));
    global1 = Struct_3(global1.a, _wgslsmith_mod_vec2_u32(global1.b, vec2<u32>(_wgslsmith_mod_u32(0u, reverseBits(29179u)), var_0.c.b)), global1.c);
    let x = u_input.a;
    s_output = func_1();
}

