struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: bool,
    d: u32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec2<bool>(false, false), 1824u, false, 109082u, vec2<u32>(1u, 879u)), true, Struct_1(vec2<bool>(true, false), 4294967295u, true, 4294967295u, vec2<u32>(0u, 44792u)), Struct_1(vec2<bool>(false, false), 64674u, true, 4294967295u, vec2<u32>(0u, 0u)));

var<private> global1: Struct_2 = Struct_2(Struct_1(vec2<bool>(true, true), 4294967295u, true, 4294967295u, vec2<u32>(58418u, 0u)), false, Struct_1(vec2<bool>(true, false), 4294967295u, true, 4294967295u, vec2<u32>(20976u, 26489u)), Struct_1(vec2<bool>(true, true), 4294967295u, false, 1u, vec2<u32>(0u, 21251u)));

var<private> global2: Struct_3 = Struct_3(Struct_1(vec2<bool>(true, true), 4294967295u, true, 21142u, vec2<u32>(0u, 42875u)), Struct_1(vec2<bool>(false, true), 33440u, false, 1u, vec2<u32>(8839u, 0u)));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2() -> Struct_1 {
    global2 = Struct_3(global0.c, Struct_1(global1.a.a, ~(~_wgslsmith_dot_vec2_u32(global2.b.e, u_input.a)), !(true | !global2.a.a.x), 0u, vec2<u32>(~1u, 0u)));
    var var_0 = Struct_3(global0.a, global0.c);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-247f, _wgslsmith_f_op_f32(-1036f - -828f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(703f - -576f)))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-2672f, -1000f, global0.d.a.x)))));
    global0 = Struct_2(global2.a, true, var_0.a, Struct_1(vec2<bool>(!(global2.a.a.x && true), var_0.b.c), global2.b.d, false, 0u, countOneBits(var_0.a.e) << ((select(vec2<u32>(0u, 1u), vec2<u32>(global0.c.b, 29480u), var_0.b.c) << (reverseBits(global2.b.e) % vec2<u32>(32u))) % vec2<u32>(32u))));
    var var_2 = var_0.a;
    return Struct_1(vec2<bool>(any(!select(vec3<bool>(false, true, var_0.b.c), vec3<bool>(true, false, true), vec3<bool>(global0.c.c, false, false))), true), global2.b.d, all(select(select(select(vec3<bool>(global2.b.c, global1.d.a.x, true), vec3<bool>(false, true, false), global2.a.c), !vec3<bool>(false, global2.a.a.x, global1.b), select(vec3<bool>(false, true, var_2.a.x), vec3<bool>(true, var_2.c, false), var_0.b.c)), select(vec3<bool>(global0.c.c, true, global1.d.a.x), !vec3<bool>(var_2.a.x, false, false), !vec3<bool>(true, false, global0.c.c)), global0.d.a.x)), u_input.a.x, select(u_input.a, global2.a.e, global1.a.c));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: vec3<u32>, arg_3: vec2<f32>) -> bool {
    var var_0 = !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.x))) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_3.x, 1928f)) * arg_3.x));
    var var_1 = arg_1;
    let var_2 = vec2<i32>(-1i, u_input.b);
    var var_3 = !all(vec4<bool>(false, global1.b, arg_1.b.a.x, false)) || global2.b.c;
    global2 = Struct_3(func_2(), func_2());
    return var_2.x >= u_input.b;
}

fn func_1(arg_0: vec2<i32>) -> Struct_1 {
    global2 = Struct_3(func_2(), Struct_1(vec2<bool>(true, select(true, global2.a.a.x, true)), global1.c.e.x, 0i != _wgslsmith_div_i32(~(-1i), firstTrailingBit(-14152i)), global1.a.b, ~global2.b.e));
    global1 = Struct_2(Struct_1(global0.d.a, _wgslsmith_dot_vec2_u32(vec2<u32>(firstLeadingBit(78038u), u_input.a.x), vec2<u32>(countOneBits(4294967295u), 117587u)), func_3(!func_2().a, Struct_3(Struct_1(global0.c.a, u_input.a.x, global0.a.c, 1u, vec2<u32>(global1.a.b, u_input.a.x)), global0.a), _wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(71877u, 20836u, global2.a.e.x), vec3<u32>(global0.c.b, global0.c.e.x, 78069u)), vec3<u32>(47818u, global0.a.d, u_input.a.x) ^ vec3<u32>(u_input.a.x, global0.c.d, global0.a.d), firstTrailingBit(vec3<u32>(u_input.a.x, global2.a.e.x, 0u))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1906f, -645f)))), 76189u, ~_wgslsmith_mult_vec2_u32(global0.c.e, global2.a.e ^ vec2<u32>(global1.d.e.x, u_input.a.x))), true, func_2(), func_2());
    global2 = Struct_3(func_2(), func_2());
    let var_0 = vec2<bool>(global0.c.a.x, true);
    let var_1 = countOneBits(abs(~firstLeadingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(42407u, 1u, 0u, 23957u), vec4<u32>(27333u, 84592u, u_input.a.x, global0.a.e.x)))));
    return Struct_1(vec2<bool>(any(select(!vec4<bool>(var_0.x, false, global0.a.a.x, true), select(vec4<bool>(true, true, true, true), vec4<bool>(global1.d.a.x, true, var_0.x, global1.b), vec4<bool>(global2.b.c, global2.b.c, global0.b, global1.c.c)), !vec4<bool>(true, global2.b.c, global2.b.a.x, global1.d.a.x))), any(!vec4<bool>(var_0.x, global2.b.a.x, true, var_0.x)) & global1.a.c), global2.b.b, true, ~53206u, ~select(_wgslsmith_div_vec2_u32(~vec2<u32>(global1.c.b, u_input.a.x), var_1.zw), ~u_input.a << (global1.a.e % vec2<u32>(32u)), !(global0.a.a.x || global2.a.c)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_2(global1.c, (u_input.b > _wgslsmith_div_i32(_wgslsmith_clamp_i32(u_input.b, u_input.b, 21444i), u_input.b)) & (-2147483647i >= u_input.b), Struct_1(global1.a.a, 91695u, false, 4294967295u | global1.a.b, u_input.a), func_1(reverseBits(_wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, -40006i), vec2<i32>(0i, u_input.b)) & -vec2<i32>(u_input.b, -1i))));
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1383f + 1760f)), _wgslsmith_f_op_f32(floor(-847f)))) + 1f));
    global1 = Struct_2(func_2(), !(!((u_input.b < u_input.b) && true)), Struct_1(func_1(vec2<i32>(_wgslsmith_mod_i32(-3890i, 1i), -u_input.b)).a, ~firstTrailingBit(u_input.a.x), !global2.b.c, 4294967295u, ~global1.a.e), Struct_1(vec2<bool>(global0.b, true), 12720u ^ global1.c.e.x, !(true | global0.a.c), 4294967295u, global1.a.e));
    var var_1 = func_1(vec2<i32>((1i << (~global2.b.d % 32u)) ^ countOneBits(30916i), u_input.b));
    var_1 = func_2();
    let var_2 = global0.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(-2903f)), ~(-13730i));
}

