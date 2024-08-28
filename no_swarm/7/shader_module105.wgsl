struct Struct_1 {
    a: u32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: f32,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec2<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_3,
    d: vec2<u32>,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_2,
    c: vec2<bool>,
    d: Struct_4,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, true, false);

var<private> global1: u32 = 0u;

var<private> global2: Struct_2;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: u32) -> vec2<i32> {
    let var_0 = arg_0;
    let var_1 = Struct_2(_wgslsmith_mult_vec4_u32(~max(vec4<u32>(global2.d.a, 1u, 14194u, arg_2), global2.a), ~firstLeadingBit(vec4<u32>(4294967295u, var_0.a, 55107u, arg_2))), _wgslsmith_div_f32(global2.d.b.x, _wgslsmith_f_op_f32(1000f - -233f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1174f, arg_0.b.x, arg_0.b.x, -813f))))), arg_0);
    global1 = reverseBits(_wgslsmith_div_u32(1u, max(~var_0.a, countOneBits(~arg_2))));
    let var_2 = vec2<bool>(any(select(!(!vec4<bool>(global0.x, global0.x, global0.x, false)), select(select(vec4<bool>(global0.x, false, false, false), vec4<bool>(global0.x, false, global0.x, global0.x), vec4<bool>(global0.x, global0.x, false, true)), vec4<bool>(global0.x, global0.x, false, false), true), select(vec4<bool>(false, global0.x, true, true), select(vec4<bool>(global0.x, false, global0.x, false), vec4<bool>(true, true, false, false), global0.x), !global0.x))), global0.x);
    var var_3 = _wgslsmith_clamp_u32(abs(global2.a.x) >> (arg_0.a % 32u), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(global2.a.yzx, var_1.a.zyy >> (vec3<u32>(arg_0.a, arg_0.a, 16891u) % vec3<u32>(32u))), 0u), 50360u);
    return vec2<i32>(abs(max(1i << (_wgslsmith_mult_u32(global2.a.x, 89399u) % 32u), _wgslsmith_mult_i32(abs(u_input.a), select(arg_1.x, 1i, false)))), 2147483647i);
}

fn func_2() -> Struct_3 {
    global2 = Struct_2(vec4<u32>(global2.a.x, global2.d.a, abs(min(global2.a.x, global2.a.x) & 1u), abs(_wgslsmith_mult_u32(global2.a.x, ~global2.d.a))), global2.d.b.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global2.c * vec4<f32>(_wgslsmith_f_op_f32(global2.b - 942f), _wgslsmith_f_op_f32(step(global2.c.x, 490f)), _wgslsmith_f_op_f32(1488f - -573f), -178f))), global2.d);
    return Struct_3(26190i, _wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(max(vec2<i32>(8964i, u_input.a) | vec2<i32>(u_input.a, 0i), func_3(Struct_1(47717u, vec3<f32>(-1000f, -764f, -173f)), vec2<i32>(-1i, 11873i), global2.a.x)), -_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a))), -vec2<i32>(-2147483647i, _wgslsmith_mult_i32(5624i, -1i))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_4, arg_2: vec2<bool>, arg_3: Struct_1) -> i32 {
    global2 = Struct_2(max(global2.a, ~vec4<u32>(firstLeadingBit(arg_1.d.x), firstLeadingBit(arg_3.a), 46909u, ~27355u)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_1.a.b.x * _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(arg_1.a.b.x, -1225f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.b.x)) * _wgslsmith_f_op_f32(global2.c.x + -1600f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global2.c) * _wgslsmith_f_op_vec4_f32(-global2.c)) * vec4<f32>(_wgslsmith_f_op_f32(arg_1.a.b.x - arg_3.b.x), _wgslsmith_f_op_f32(arg_1.a.b.x - 1703f), -199f, _wgslsmith_f_op_f32(-813f - -483f)))), arg_1.a);
    let var_0 = arg_1.c.b;
    var var_1 = Struct_1(4294967295u << (_wgslsmith_dot_vec2_u32(countOneBits(select(vec2<u32>(arg_1.b.x, 4199u), vec2<u32>(global2.a.x, arg_1.a.a), global0.x)), vec2<u32>(83815u, 58276u)) % 32u), _wgslsmith_f_op_vec3_f32(floor(global2.c.xzx)));
    global0 = select(vec3<bool>(!global0.x, true, reverseBits(_wgslsmith_mod_u32(32991u, arg_3.a)) >= _wgslsmith_sub_u32(~85144u, 17815u)), select(select(!(!vec3<bool>(false, true, arg_2.x)), !select(vec3<bool>(arg_2.x, true, false), vec3<bool>(true, arg_2.x, false), false), select(vec3<bool>(global0.x, true, global0.x), vec3<bool>(true, global0.x, false), select(vec3<bool>(true, true, global0.x), vec3<bool>(true, true, false), arg_2.x))), vec3<bool>(true, true, true), true), false);
    var var_2 = !select(vec2<bool>(select(false, true, false) && (arg_1.a.b.x < var_1.b.x), !select(false, false, global0.x)), vec2<bool>(true, all(global0.zz)), true);
    return _wgslsmith_dot_vec4_i32(-vec4<i32>(arg_0.b.x, _wgslsmith_mod_i32(var_0.x, 14843i), _wgslsmith_sub_i32(abs(3686i), arg_1.c.a), 0i), _wgslsmith_div_vec4_i32(firstLeadingBit(~vec4<i32>(var_0.x, arg_1.c.a, u_input.a, 30986i) & select(vec4<i32>(var_0.x, arg_0.a, 2147483647i, arg_1.c.a), vec4<i32>(var_0.x, u_input.a, u_input.a, u_input.a), false)), select(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, arg_0.b.x, 2147483647i, var_0.x) ^ vec4<i32>(arg_1.c.a, -2147483647i, var_0.x, 22032i), ~vec4<i32>(u_input.a, 13553i, arg_1.c.a, 62541i), vec4<i32>(-2147483647i, 1i, arg_0.b.x, -14059i)), ~abs(vec4<i32>(u_input.a, -42759i, arg_1.c.a, arg_1.c.a)), vec4<bool>(arg_2.x, any(vec4<bool>(global0.x, true, false, true)), any(vec3<bool>(arg_2.x, false, var_2.x)), arg_2.x))));
}

fn func_1(arg_0: u32, arg_1: vec4<u32>, arg_2: vec4<bool>, arg_3: f32) -> Struct_5 {
    let var_0 = global2.d.a;
    global0 = select(select(!vec3<bool>(global0.x, u_input.a == 1i, true), arg_2.yyx, select(!(!vec3<bool>(arg_2.x, arg_2.x, arg_2.x)), vec3<bool>(any(arg_2.zyw), true, all(arg_2)), _wgslsmith_sub_i32(u_input.a, 1i) < (4355i ^ u_input.a))), !arg_2.zzx, !(-28763i >= func_4(func_2(), Struct_4(Struct_1(1u, vec3<f32>(-854f, global2.c.x, 513f)), vec4<u32>(arg_0, global2.d.a, arg_1.x, 4294967295u), Struct_3(u_input.a, vec2<i32>(1i, u_input.a)), arg_1.xw), global0.zx, global2.d)));
    let var_1 = Struct_2(select(_wgslsmith_add_vec4_u32(vec4<u32>(~12268u, arg_0, global2.a.x, _wgslsmith_add_u32(arg_0, arg_0)), _wgslsmith_div_vec4_u32(firstTrailingBit(global2.a), vec4<u32>(1u, 4294967295u, 9842u, 1u))), vec4<u32>(~reverseBits(1u), 0u, global2.d.a, abs(arg_0)), !(!(global0.x & true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1051f + _wgslsmith_f_op_f32(max(-255f, 1232f))) + 1162f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_3, _wgslsmith_f_op_f32(ceil(182f)), -1400f, _wgslsmith_f_op_f32(sign(193f))), vec4<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global2.d.b.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global2.c.x, 864f))), arg_3))), global2.d);
    var var_2 = Struct_5(Struct_1(arg_1.x, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1056f, 1000f, global0.x)) + 408f), var_1.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2202f * -142f) - _wgslsmith_f_op_f32(-var_1.d.b.x)))), Struct_2(vec4<u32>(_wgslsmith_div_u32(global2.d.a, 48616u), var_1.d.a, ~38855u, 0u) << (vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 34194u, 4294967295u), global2.a.zzz), firstLeadingBit(96435u), arg_1.x, arg_1.x & arg_0) % vec4<u32>(32u)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1386f + var_1.b) + 744f))), _wgslsmith_f_op_vec4_f32(sign(var_1.c)), Struct_1(1u, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global2.c.x, 116f, global2.c.x), vec3<f32>(var_1.b, 1183f, 880f)) * _wgslsmith_f_op_vec3_f32(var_1.c.ywy + vec3<f32>(-320f, arg_3, arg_3))))), !arg_2.yy, Struct_4(Struct_1(16602u, var_1.d.b), _wgslsmith_add_vec4_u32(global2.a, ~_wgslsmith_add_vec4_u32(arg_1, var_1.a)), func_2(), var_1.a.yy));
    let var_3 = Struct_3(0i, vec2<i32>(~u_input.a, -_wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.a, u_input.a, 0i), select(vec3<i32>(65547i, var_2.d.c.a, var_2.d.c.b.x), vec3<i32>(u_input.a, 2147483647i, 63889i), vec3<bool>(false, arg_2.x, global0.x)))));
    return Struct_5(var_1.d, var_1, arg_2.yw, var_2.d);
}

fn func_5(arg_0: Struct_5, arg_1: u32) -> Struct_2 {
    let var_0 = arg_0.d.a.a > arg_1;
    global2 = Struct_2(arg_0.b.a, _wgslsmith_f_op_f32(-375f * 1f), _wgslsmith_f_op_vec4_f32(-arg_0.b.c), func_1(1u, vec4<u32>(_wgslsmith_dot_vec3_u32(arg_0.b.a.wyx, arg_0.d.b.wyy), _wgslsmith_mod_u32(arg_0.d.b.x, 13013u), (arg_0.b.d.a >> (63178u % 32u)) | _wgslsmith_mult_u32(arg_1, 4294967295u), 35158u), select(select(!vec4<bool>(global0.x, arg_0.c.x, var_0, false), select(vec4<bool>(false, arg_0.c.x, true, false), vec4<bool>(var_0, global0.x, false, true), vec4<bool>(false, arg_0.c.x, global0.x, false)), !var_0), !(!vec4<bool>(arg_0.c.x, false, global0.x, false)), vec4<bool>(arg_0.d.a.a != global2.a.x, global0.x, false, var_0 && arg_0.c.x)), _wgslsmith_f_op_f32(floor(542f))).a);
    global0 = !(!(!select(select(vec3<bool>(var_0, false, false), vec3<bool>(var_0, global0.x, var_0), var_0), vec3<bool>(true, var_0, arg_0.c.x), vec3<bool>(global0.x, true, global0.x))));
    return func_1(_wgslsmith_mult_u32(~((global2.d.a << (1u % 32u)) << (1u % 32u)), ~abs(~4294967295u)), ~abs(~vec4<u32>(arg_1, arg_1, 1u, 0u)), select(vec4<bool>(u_input.a < arg_0.d.c.b.x, true, (global2.b == 715f) & true, all(vec2<bool>(true, false))), vec4<bool>(all(!vec4<bool>(true, var_0, true, false)), arg_0.c.x, func_4(Struct_3(arg_0.d.c.a, arg_0.d.c.b), arg_0.d, vec2<bool>(false, false), arg_0.b.d) > u_input.a, true), vec4<bool>(select(arg_0.b.b < global2.d.b.x, true, select(false, true, var_0)), global0.x, global0.x, global0.x)), _wgslsmith_f_op_f32(-arg_0.b.b)).b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~reverseBits(vec4<u32>(1u, ~13780u, ~global2.d.a, ~29879u));
    let var_1 = Struct_1(0u >> ((56009u << (abs(min(global2.d.a, global2.d.a)) % 32u)) % 32u), global2.d.b);
    global2 = func_5(func_1(global2.a.x, _wgslsmith_sub_vec4_u32(select(vec4<u32>(44596u, var_1.a, global2.a.x, var_1.a), global2.a, global0.x || true), _wgslsmith_sub_vec4_u32(vec4<u32>(var_0.x, 1u, global2.d.a, global2.a.x), global2.a | global2.a)), select(!vec4<bool>(global0.x, true, global0.x, global0.x), select(vec4<bool>(global0.x, global0.x, global0.x, false), vec4<bool>(true, global0.x, false, global0.x), global2.a.x < var_0.x), !(!vec4<bool>(global0.x, global0.x, global0.x, global0.x))), _wgslsmith_div_f32(var_1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.x * global2.b)))), var_1.a);
    let var_2 = !(!vec3<bool>(true && global0.x, false, true));
    var var_3 = select(vec3<u32>(_wgslsmith_add_u32(1u, var_1.a) >> (_wgslsmith_dot_vec4_u32(global2.a, vec4<u32>(73950u, 79781u, 72175u, 1u)) % 32u), 1u, _wgslsmith_mult_u32(~global2.d.a, ~1u)), min(global2.a.yzz, vec3<u32>(1u, countOneBits(var_0.x), 1u)), false) & (vec3<u32>(global2.d.a, var_1.a, global2.d.a) >> (vec3<u32>(~_wgslsmith_add_u32(5815u, global2.a.x), 63593u, var_0.x) % vec3<u32>(32u)));
    var_3 = firstTrailingBit(var_0.ywy);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-global2.d.b), vec2<i32>(-1i) * -_wgslsmith_div_vec2_i32(vec2<i32>(-38768i, u_input.a), ~vec2<i32>(-2147483647i, u_input.a)), 1i ^ u_input.a);
}

