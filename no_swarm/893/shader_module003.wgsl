struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: vec2<u32>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: u32,
    b: i32,
}

struct Struct_5 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: f32,
    d: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_2 = Struct_2(-799f, Struct_1(true), Struct_1(false), vec2<u32>(40581u, 0u));

var<private> global2: vec4<f32>;

var<private> global3: i32 = -44783i;

var<private> global4: u32 = 1u;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> bool {
    let var_0 = Struct_1(false);
    var var_1 = _wgslsmith_mod_u32(global1.d.x, global1.d.x);
    global0 = Struct_2(_wgslsmith_f_op_f32(-1031f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.a, 917f)))))), Struct_1((_wgslsmith_dot_vec3_i32(vec3<i32>(-15689i, u_input.a, 17497i), u_input.b) << (119874u % 32u)) > _wgslsmith_add_i32(-1i >> (global0.d.x % 32u), ~(-1i))), global1.c, _wgslsmith_mult_vec2_u32(vec2<u32>(firstTrailingBit(4294967295u), global1.d.x) & vec2<u32>(4294967295u, ~global0.d.x), _wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_add_u32(65988u, global0.d.x), _wgslsmith_sub_u32(global1.d.x, global0.d.x)), firstTrailingBit(vec2<u32>(4294967295u, global0.d.x)), ~global1.d)));
    var_1 = firstLeadingBit(~1u) & ~(1308u ^ _wgslsmith_mult_u32(global1.d.x, abs(global1.d.x)));
    let var_2 = -_wgslsmith_mult_vec3_i32(u_input.b << (vec3<u32>(4294967295u, ~global0.d.x, ~39056u) % vec3<u32>(32u)), vec3<i32>(-u_input.c, -2147483647i, i32(-1i) * -33683i));
    return all(vec4<bool>(all(vec2<bool>(false, var_0.a)), !any(select(vec4<bool>(var_0.a, global1.b.a, true, global1.c.a), vec4<bool>(true, false, global1.b.a, false), vec4<bool>(true, global1.b.a, global0.b.a, global1.b.a))), var_0.a, ~(~2382i) != min(0i, ~var_2.x)));
}

fn func_2(arg_0: u32, arg_1: vec4<bool>, arg_2: vec2<bool>, arg_3: bool) -> u32 {
    var var_0 = Struct_3(func_3());
    var var_1 = reverseBits(u_input.b.xz & u_input.b.zz);
    let var_2 = Struct_3(all(!vec4<bool>(!var_0.a, any(arg_1), true, var_0.a)));
    let var_3 = global0.d.x;
    let var_4 = vec3<f32>(global0.a, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.a))) + -670f))), _wgslsmith_f_op_f32(max(-659f, _wgslsmith_div_f32(global1.a, 1182f))));
    return ~(~(~0u) | select(select(global0.d.x, abs(global1.d.x), !var_2.a), 5464u, false));
}

fn func_4(arg_0: u32, arg_1: vec3<f32>, arg_2: vec4<bool>) -> Struct_3 {
    global1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.a, 728f)), Struct_1(global1.c.a), Struct_1(global1.a != -306f), vec2<u32>(~func_2(~4500u, select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, global0.b.a), vec4<bool>(false, global1.c.a, global1.c.a, false)), arg_2.wy, any(arg_2.zw)), arg_0));
    global4 = _wgslsmith_add_u32(4294967295u >> (arg_0 % 32u), ~13955u);
    var var_0 = Struct_5(!(!arg_2.www), _wgslsmith_mult_vec2_i32(u_input.b.xy, vec2<i32>(-1i) * -min(u_input.b.zx, u_input.b.xy)), 1304f, Struct_4(~64389u, max(u_input.c, 0i)));
    let var_1 = 9762u;
    var var_2 = global1.b;
    return Struct_3(all(vec3<bool>(var_0.b.x != countOneBits(61683i), true, !(!global1.b.a))));
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: u32) -> Struct_2 {
    var var_0 = Struct_5(select(!vec3<bool>(arg_1.a, false, !global0.c.a), vec3<bool>(_wgslsmith_f_op_f32(floor(1385f)) >= 1f, global1.c.a, global1.c.a), select(vec3<bool>(arg_1.a, true, false), select(vec3<bool>(false, false, true), vec3<bool>(global0.c.a, true, false), !vec3<bool>(global0.c.a, arg_1.a, true)), (arg_1.a == arg_1.a) || arg_1.a)), vec2<i32>(i32(-1i) * -45444i, ~_wgslsmith_mult_i32(u_input.d, u_input.c)) ^ u_input.b.yx, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(global1.a))))), Struct_4(4294967295u, select(-1i, 2209i, true)));
    global0 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(391f * _wgslsmith_f_op_f32(round(global1.a))))), Struct_1(!(false && !arg_1.a)), global1.c, vec2<u32>(~1u, 1u));
    var var_1 = var_0.d;
    var_0 = Struct_5(select(var_0.a, select(select(var_0.a, select(var_0.a, var_0.a, global1.b.a), vec3<bool>(false, global1.c.a, true)), select(var_0.a, select(vec3<bool>(arg_1.a, global0.c.a, var_0.a.x), vec3<bool>(global1.b.a, global1.b.a, var_0.a.x), global0.c.a), false), select(select(var_0.a, var_0.a, true), var_0.a, 0i < var_1.b)), !vec3<bool>(var_0.a.x | arg_1.a, global1.b.a | true, true)), max(select(countOneBits(var_0.b), vec2<i32>(~var_1.b, _wgslsmith_div_i32(0i, u_input.c)), true), abs(vec2<i32>(1i, 1i))), global1.a, var_0.d);
    let var_2 = vec2<bool>(!(!all(select(var_0.a, vec3<bool>(false, true, true), global0.c.a))), 1u <= var_0.d.a);
    return Struct_2(344f, global1.c, global1.c, arg_0);
}

fn func_1(arg_0: u32) -> vec4<f32> {
    var var_0 = func_5(global0.d, func_4(arg_0, vec3<f32>(_wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(select(global0.a, global1.a, global1.b.a))), 669f, _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(exp2(global0.a)))), vec4<bool>(!(true == global1.c.a), !all(vec3<bool>(global1.c.a, global1.c.a, false)), true, arg_0 < func_2(global1.d.x, vec4<bool>(global1.b.a, false, true, true), vec2<bool>(false, false), global0.c.a))), global0.d.x ^ abs(0u));
    var var_1 = global1.c;
    let var_2 = u_input.b.yy;
    let var_3 = var_0.a;
    let var_4 = -2147483647i;
    return vec4<f32>(-937f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a) * _wgslsmith_f_op_f32(select(global1.a, -443f, true))))))), -1108f, global2.x);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(func_1(global0.d.x >> (global0.d.x % 32u))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global1.a, 1374f, global2.x, global2.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(603f, global2.x, global2.x, global1.a)))))))));
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)))), _wgslsmith_f_op_f32(min(global1.a, global0.a))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global2.x)))));
    var var_2 = ~_wgslsmith_mult_vec3_u32(~(~vec3<u32>(global1.d.x, global0.d.x, global1.d.x)), abs(abs(vec3<u32>(global1.d.x, global1.d.x, global0.d.x))) >> ((~vec3<u32>(1u, global0.d.x, global0.d.x) << (~vec3<u32>(0u, global1.d.x, 20054u) % vec3<u32>(32u))) % vec3<u32>(32u)));
    let var_3 = !vec4<bool>(global1.b.a, all(select(vec3<bool>(true, global0.b.a, false), vec3<bool>(global1.c.a, global0.c.a, global1.b.a), vec3<bool>(false, false, global1.b.a))) & any(vec3<bool>(global0.c.a, true, global1.c.a)), global0.c.a, global1.b.a);
    global2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a, -288f, global2.x, -1326f) - vec4<f32>(123f, -1245f, -965f, -1316f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, global2.x, 1188f, global1.a))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_vec4_f32(func_1(global0.d.x)).x, _wgslsmith_f_op_f32(f32(-1f) * -724f), _wgslsmith_div_f32(-1165f, global2.x), global1.a))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-325f, 338f, global1.a, 518f) * vec4<f32>(global0.a, global2.x, -1843f, 1023f)))))));
    global4 = _wgslsmith_mult_u32(_wgslsmith_clamp_u32(min(max(select(1u, var_2.x, global1.c.a), 18712u), 1u), _wgslsmith_add_u32(_wgslsmith_mod_u32(abs(global1.d.x), _wgslsmith_sub_u32(1u, global1.d.x)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(59369u, global0.d.x, global1.d.x, 0u), vec4<u32>(global1.d.x, global1.d.x, 30599u, 22486u))), _wgslsmith_div_u32(~(~global1.d.x), 123107u)), global1.d.x);
    global1 = func_5(firstLeadingBit(global1.d), Struct_3(true), global1.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(2457f, 1i, abs(_wgslsmith_div_u32(1u, (global1.d.x & 74144u) << (var_2.x % 32u))));
}

