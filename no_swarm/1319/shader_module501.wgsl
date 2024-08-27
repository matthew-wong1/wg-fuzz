struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<i32>,
    d: vec2<u32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_3, arg_1: i32, arg_2: Struct_2) -> f32 {
    let var_0 = ~(~select(firstLeadingBit(abs(vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x))), u_input.b, !(54525u > u_input.b.x)));
    global0 = 54417u;
    let var_1 = Struct_4(arg_2, arg_0.a, arg_2, !vec3<bool>(-12834i <= ~u_input.c, _wgslsmith_f_op_f32(sign(1844f)) >= _wgslsmith_f_op_f32(arg_0.a.a + arg_0.a.a), true));
    let var_2 = var_0.x;
    return _wgslsmith_f_op_f32(trunc(-1000f));
}

fn func_2(arg_0: vec4<f32>) -> u32 {
    global0 = ~(~(~reverseBits(u_input.a.x)));
    let var_0 = -356f;
    var var_1 = Struct_3(Struct_1(_wgslsmith_f_op_f32(func_3(Struct_3(Struct_1(var_0)), ~u_input.c, Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -175f))))));
    var var_2 = -31860i;
    var_2 = -1i;
    return u_input.b.x;
}

fn func_1() -> Struct_4 {
    global0 = 48691u;
    let var_0 = _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, func_2(vec4<f32>(_wgslsmith_f_op_f32(-2183f + -154f), _wgslsmith_f_op_f32(-1084f - 651f), _wgslsmith_f_op_f32(115f + 1257f), _wgslsmith_f_op_f32(floor(-205f)))), countOneBits(25908u | u_input.b.x), ~(_wgslsmith_add_u32(0u, u_input.b.x) & select(u_input.a.x, u_input.b.x, true))), firstTrailingBit(~(~vec4<u32>(0u, u_input.b.x, u_input.b.x, u_input.a.x))));
    global0 = var_0.x;
    global0 = ~select(u_input.b.x, countOneBits(_wgslsmith_mult_u32(~4294967295u, u_input.a.x)), false);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -371f));
    return Struct_4(Struct_2(var_1.a), Struct_1(_wgslsmith_f_op_f32(519f - _wgslsmith_f_op_f32(min(-1000f, var_1.a)))), Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) - _wgslsmith_f_op_f32(ceil(-853f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1266f), _wgslsmith_div_f32(var_1.a, var_1.a)), all(vec4<bool>(false, false, false, false))))), vec3<bool>(!(!(u_input.c > 0i)), true, any(!select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false)))));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec4<u32>, arg_2: vec2<u32>, arg_3: Struct_4) -> Struct_1 {
    global0 = _wgslsmith_div_u32(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(0u, arg_0.x, arg_1.x) | (83404u ^ arg_2.x), _wgslsmith_mult_u32(~arg_2.x, 45450u << (u_input.b.x % 32u))), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(0u, 37612u), arg_0.x), ~vec2<u32>(arg_0.x, u_input.a.x))) ^ u_input.a.x;
    global0 = arg_1.x;
    var var_0 = vec2<u32>(~(~_wgslsmith_div_u32(arg_1.x & 0u, 1u)), ~firstLeadingBit(arg_1.x));
    global0 = _wgslsmith_div_u32(_wgslsmith_sub_u32(~(~arg_2.x), 2494u), var_0.x) ^ ~(1u & _wgslsmith_mult_u32(firstTrailingBit(1u), ~1u));
    let var_1 = u_input.c;
    return arg_3.b;
}

fn func_5(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: Struct_3) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_2.a.a)))) <= _wgslsmith_f_op_f32(-694f - _wgslsmith_f_op_f32(f32(-1f) * -662f));
    var var_1 = Struct_1(arg_0.a.a);
    global0 = arg_1.x;
    var_1 = arg_2.a;
    var var_2 = vec2<i32>(_wgslsmith_sub_i32(1i, select(_wgslsmith_add_i32(abs(u_input.c), u_input.c), -(~(-2147483647i)), !(u_input.c == -44723i))), u_input.c);
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(arg_2.a.a, 991f)), _wgslsmith_f_op_f32(step(-1132f, -857f)))), arg_2.a.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(func_5(Struct_3(func_4(~u_input.b.xw, vec4<u32>(u_input.b.x, 51618u, u_input.b.x, 16786u), u_input.a, func_1())), vec2<u32>(_wgslsmith_sub_u32(u_input.a.x, ~47903u), ~1u & ~u_input.b.x), Struct_3(func_1().b)), func_1().b, Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -177f))))), select(!(!select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), true)), !(!func_1().d), vec3<bool>(true, true, true)));
    var var_1 = func_4(u_input.b.yy, u_input.b, abs((u_input.a >> (vec2<u32>(u_input.b.x, u_input.b.x) % vec2<u32>(32u))) << (vec2<u32>(u_input.a.x, 64156u) % vec2<u32>(32u))) << ((u_input.a << (u_input.b.xy % vec2<u32>(32u))) % vec2<u32>(32u)), Struct_4(var_0.a, func_1().b, func_1().c, vec3<bool>(_wgslsmith_f_op_f32(f32(-1f) * -1000f) < _wgslsmith_f_op_f32(var_0.b.a - -343f), !all(var_0.d.zz), ~83270u >= u_input.a.x)));
    let var_2 = func_1().b;
    let var_3 = 0u;
    var var_4 = func_5(Struct_3(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1800f))), _wgslsmith_sub_vec2_u32(u_input.b.yw, _wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(15009u, 21145u), vec2<u32>(u_input.b.x, 4294967295u), vec2<u32>(0u, 2106u)), u_input.b.yx), ~u_input.b.yw, firstLeadingBit(~vec2<u32>(var_3, 4294967295u)))), Struct_3(var_2));
    let var_5 = Struct_2(_wgslsmith_f_op_f32(325f - _wgslsmith_f_op_f32(var_1.a - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1521f, 364f))))));
    global0 = 93850u;
    var_4 = func_1().c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.a), 185f, func_1().d.x)), _wgslsmith_f_op_f32(abs(func_5(Struct_3(var_0.b), u_input.a, Struct_3(func_4(u_input.a, u_input.b, vec2<u32>(4294967295u, 4294967295u), Struct_4(Struct_2(var_0.b.a), var_2, Struct_2(var_2.a), vec3<bool>(false, false, true))))).a)), ~_wgslsmith_add_vec2_i32(select(vec2<i32>(u_input.c, -7172i) ^ vec2<i32>(u_input.c, u_input.c), vec2<i32>(-56043i, 0i), vec2<bool>(var_0.d.x, true)), -min(vec2<i32>(2147483647i, -1i), vec2<i32>(0i, 0i))), _wgslsmith_add_vec2_u32(firstTrailingBit(u_input.a), (firstTrailingBit(u_input.a) ^ u_input.b.xz) & vec2<u32>(u_input.a.x ^ u_input.a.x, _wgslsmith_dot_vec3_u32(u_input.b.yxw, u_input.b.zzx))), _wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(~vec2<u32>(var_3, u_input.b.x), vec2<u32>(19672u, 30769u)), abs(_wgslsmith_sub_vec2_u32(u_input.a, vec2<u32>(u_input.b.x, var_3)))), vec2<u32>(4294967295u, 1706u)));
}

