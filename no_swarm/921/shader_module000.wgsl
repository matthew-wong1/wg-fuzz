struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec3<f32>,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec3<u32>(1u, 27159u, 4294967295u), vec3<f32>(479f, 492f, -395f));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: vec3<i32>) -> Struct_3 {
    let var_0 = Struct_3(~global0.a, global0.b);
    global0 = var_0;
    let var_1 = -4451i;
    global0 = var_0;
    let var_2 = _wgslsmith_f_op_f32(max(1649f, 1741f));
    return var_0;
}

fn func_1(arg_0: Struct_4, arg_1: vec3<bool>, arg_2: vec2<bool>) -> Struct_1 {
    let var_0 = ~(~u_input.c.yz);
    global0 = func_2(firstTrailingBit(22074u), 0u, reverseBits(-vec3<i32>(_wgslsmith_dot_vec2_i32(u_input.e.zy, vec2<i32>(u_input.e.x, 24893i)), -2147483647i & u_input.d.x, max(u_input.e.x, 14154i))));
    global0 = func_2(_wgslsmith_add_u32(var_0.x, _wgslsmith_dot_vec4_u32(u_input.b, ~u_input.b) | 18207u), ~func_2(1u, 17838u, select(u_input.e | u_input.e, abs(vec3<i32>(u_input.e.x, -43161i, -22644i)), arg_1)).a.x, u_input.d);
    let var_1 = vec2<f32>(-298f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1055f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(327f, global0.b.x, arg_0.a.x)))) * _wgslsmith_f_op_f32(global0.b.x * _wgslsmith_f_op_f32(global0.b.x + global0.b.x)))));
    var var_2 = _wgslsmith_add_u32(global0.a.x, 39085u);
    return Struct_1(1u);
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: f32, arg_3: vec4<u32>) -> vec3<u32> {
    var var_0 = Struct_4(vec2<bool>(all(vec2<bool>(true, true)), u_input.e.x < _wgslsmith_div_i32(0i, 11193i)));
    var var_1 = Struct_2(func_1(Struct_4(select(var_0.a, !vec2<bool>(var_0.a.x, false), all(vec3<bool>(var_0.a.x, false, true)))), select(vec3<bool>(false, var_0.a.x, var_0.a.x), vec3<bool>(var_0.a.x, 56507u > arg_3.x, all(vec2<bool>(false, var_0.a.x))), vec3<bool>(true, all(var_0.a), true)), select(vec2<bool>(select(var_0.a.x, false, true), !var_0.a.x), select(vec2<bool>(true, var_0.a.x), vec2<bool>(false, true), false), func_2(global0.a.x, 38144u, vec3<i32>(u_input.e.x, u_input.e.x, 17271i)).b.x >= _wgslsmith_div_f32(global0.b.x, -396f))));
    let var_2 = select(vec3<bool>(var_0.a.x, abs(abs(u_input.e.x)) >= -53485i, !(var_0.a.x && any(vec3<bool>(var_0.a.x, false, var_0.a.x)))), !vec3<bool>(var_0.a.x, all(select(vec3<bool>(var_0.a.x, true, true), vec3<bool>(false, false, var_0.a.x), true)), any(var_0.a)), select(!vec3<bool>(true, select(false, var_0.a.x, var_0.a.x), false), !select(select(vec3<bool>(var_0.a.x, true, var_0.a.x), vec3<bool>(var_0.a.x, false, var_0.a.x), vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x)), select(vec3<bool>(false, var_0.a.x, var_0.a.x), vec3<bool>(var_0.a.x, true, true), var_0.a.x), select(vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x), vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x), false)), select(select(vec3<bool>(var_0.a.x, false, var_0.a.x), select(vec3<bool>(true, false, true), vec3<bool>(false, true, var_0.a.x), vec3<bool>(false, false, var_0.a.x)), !vec3<bool>(false, var_0.a.x, false)), !(!vec3<bool>(var_0.a.x, var_0.a.x, false)), select(vec3<bool>(var_0.a.x, true, var_0.a.x), !vec3<bool>(var_0.a.x, false, false), select(vec3<bool>(true, var_0.a.x, var_0.a.x), vec3<bool>(false, true, var_0.a.x), var_0.a.x)))));
    var_0 = Struct_4(vec2<bool>(_wgslsmith_div_u32(var_1.a.a >> (40724u % 32u), u_input.a.x) >= var_1.a.a, true));
    global0 = func_2(49979u ^ arg_1.a.a, 34465u, _wgslsmith_mod_vec3_i32(u_input.d, u_input.e));
    return vec3<u32>(var_1.a.a, var_1.a.a, u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(_wgslsmith_add_vec3_u32(func_3(vec3<f32>(1000f, global0.b.x, _wgslsmith_f_op_f32(-global0.b.x)), Struct_2(func_1(Struct_4(vec2<bool>(false, false)), vec3<bool>(false, true, false), vec2<bool>(true, false))), global0.b.x, ~_wgslsmith_div_vec4_u32(vec4<u32>(77206u, 4294967295u, global0.a.x, 1u), vec4<u32>(11608u, global0.a.x, u_input.a.x, u_input.c.x))), select(~u_input.b.xwz, ~vec3<u32>(global0.a.x, 1u, 239u), any(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false))))), global0.b);
    var var_1 = _wgslsmith_mod_vec4_i32(select(vec4<i32>(min(-11114i, u_input.e.x), u_input.d.x, u_input.e.x, reverseBits(22889i)), vec4<i32>(abs(u_input.e.x), _wgslsmith_dot_vec4_i32(vec4<i32>(-1362i, u_input.e.x, 2147483647i, 44275i), vec4<i32>(u_input.e.x, u_input.d.x, -11059i, u_input.d.x)), reverseBits(0i), -1i), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), false)) << (countOneBits(vec4<u32>(4294967295u, var_0.a.x, u_input.b.x, _wgslsmith_mult_u32(global0.a.x, 4294967295u))) % vec4<u32>(32u)), vec4<i32>(-(~2147483647i), reverseBits(~u_input.e.x), 23495i, -27705i));
    var var_2 = func_1(Struct_4(select(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), true), vec2<bool>(false, true)), vec2<bool>(u_input.d.x <= u_input.d.x, false), vec2<bool>(true, all(vec3<bool>(true, true, false))))), !(!select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), true), vec3<bool>(false, false, false), true)), !select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), true)), select(vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true)), true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true))));
    let var_3 = ~1u;
    var var_4 = vec4<i32>(~u_input.e.x, _wgslsmith_sub_i32(21222i, u_input.e.x), _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(u_input.e.xx, vec2<i32>(42583i, -31635i)), 0i | u_input.e.x), _wgslsmith_div_i32(-1i, u_input.d.x), min(~0i, -30567i)), var_1.xzw), countOneBits(var_1.x));
    var_2 = Struct_1(_wgslsmith_mod_u32(0u << (~u_input.a.x % 32u), global0.a.x));
    var_1 = abs(vec4<i32>(-1i, -firstTrailingBit(2147483647i), _wgslsmith_sub_i32(~(var_1.x | 11230i), 6392i), -_wgslsmith_sub_i32(-var_4.x, ~var_4.x)));
    var_1 = select(vec4<i32>(~reverseBits(var_4.x), -var_1.x, var_1.x, countOneBits(-u_input.e.x)) & vec4<i32>(~firstLeadingBit(var_1.x), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, var_4.x, var_4.x), var_1.wwy), _wgslsmith_sub_i32(u_input.d.x, 62725i) << (78829u % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(36476i, 2147483647i, var_4.x, u_input.e.x), min(vec4<i32>(-2147483647i, u_input.d.x, var_4.x, u_input.d.x), vec4<i32>(var_4.x, var_4.x, 2147483647i, 0i)))), min(select(min(vec4<i32>(u_input.e.x, var_4.x, var_1.x, var_1.x) | vec4<i32>(u_input.d.x, var_4.x, 5708i, var_1.x), vec4<i32>(u_input.d.x, var_1.x, -1i, -29513i) >> (u_input.b % vec4<u32>(32u))), _wgslsmith_div_vec4_i32(-vec4<i32>(var_1.x, 24112i, var_1.x, u_input.e.x), countOneBits(vec4<i32>(var_1.x, var_4.x, var_4.x, -40140i))), vec4<bool>(true, true, true, true)), ~_wgslsmith_div_vec4_i32(countOneBits(vec4<i32>(37345i, var_1.x, u_input.d.x, -2147483647i)), vec4<i32>(1i, -21863i, var_4.x, u_input.d.x))), vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x * 224f)) <= _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.b.x - 472f))), true, false, true));
    let x = u_input.a;
    s_output = StorageBuffer(1218f, 1u, u_input.b, ~var_2.a);
}

