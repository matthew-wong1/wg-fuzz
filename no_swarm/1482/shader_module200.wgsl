struct Struct_1 {
    a: vec2<f32>,
    b: vec4<f32>,
    c: vec4<bool>,
    d: vec2<i32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: vec2<i32>,
    d: vec2<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec4<i32>,
    d: i32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(4294967295u, false, vec2<i32>(-5927i, 2147483647i), vec2<i32>(14483i, -12049i), Struct_1(vec2<f32>(-780f, -1000f), vec4<f32>(-705f, -600f, 1738f, -2527f), vec4<bool>(false, false, false, false), vec2<i32>(-15420i, 5023i), vec2<bool>(false, false)));

var<private> global1: vec3<i32>;

var<private> global2: array<Struct_3, 18> = array<Struct_3, 18>(Struct_3(4294967295u), Struct_3(28212u), Struct_3(1u), Struct_3(4243u), Struct_3(4294967295u), Struct_3(14461u), Struct_3(0u), Struct_3(76471u), Struct_3(1u), Struct_3(4294967295u), Struct_3(1u), Struct_3(0u), Struct_3(33601u), Struct_3(0u), Struct_3(56596u), Struct_3(4294967295u), Struct_3(4294967295u), Struct_3(1u));

var<private> global3: bool = true;

var<private> global4: u32;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1) -> u32 {
    let var_0 = vec3<i32>(~firstLeadingBit(_wgslsmith_add_i32(u_input.b, u_input.d.x)), arg_1.d.x, 0i) >> (u_input.c.zzx % vec3<u32>(32u));
    global1 = ~var_0;
    var var_1 = Struct_2(~_wgslsmith_dot_vec4_u32(~u_input.c | ~vec4<u32>(global0.a, 4294967295u, 45409u, global0.a), ~u_input.c), true, ~vec2<i32>(max(_wgslsmith_mod_i32(arg_1.d.x, u_input.d.x), arg_1.d.x), _wgslsmith_add_i32(0i, -18615i) & (u_input.b & -1i)), _wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(~(global1.xy ^ vec2<i32>(var_0.x, -13700i)), max(global1.zz, u_input.d.zy)), ~(global1.zz << (min(vec2<u32>(0u, arg_0.a), u_input.c.xy) % vec2<u32>(32u)))), arg_1);
    let var_2 = var_1.e;
    global1 = vec3<i32>(_wgslsmith_sub_i32(min(-14072i, abs(1i)), var_0.x), ~(i32(-1i) * -var_0.x) & var_1.c.x, var_2.d.x);
    return ~(~arg_0.a);
}

fn func_2(arg_0: Struct_3, arg_1: vec4<f32>) -> Struct_1 {
    var var_0 = abs(3610u);
    var var_1 = u_input.a;
    let var_2 = vec4<u32>(func_3(Struct_3(~58393u), global0.e), 35464u, 17838u, _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(u_input.c, u_input.c), _wgslsmith_mult_u32(16093u, global0.a)));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(158f, _wgslsmith_f_op_f32(-170f + _wgslsmith_f_op_f32(-arg_1.x)))))) - global0.e.a.x);
    let var_4 = global0.e.d.x;
    return Struct_1(global0.e.a, arg_1, !select(select(!vec4<bool>(global0.e.c.x, false, global0.b, global0.b), global0.e.c, global0.e.c), !vec4<bool>(false, false, global0.e.c.x, false), global0.b), global1.zy, !(!global0.e.e));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_1) -> bool {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a.x));
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, _wgslsmith_div_u32(select(~global0.a, ~abs(u_input.c.x), (arg_0.a | u_input.c.x) >= 0u), _wgslsmith_mult_u32(arg_1.a, 22941u))), 18u)];
    let var_2 = select(arg_1.e.c.yyx, vec3<bool>(false, false, arg_1.b), true);
    var var_3 = global0.e;
    var var_4 = vec4<bool>(_wgslsmith_div_i32(-1i, var_3.d.x) > 1i, !any(!vec4<bool>(arg_2.c.x, true, arg_2.e.x, var_3.c.x)), false, arg_2.c.x && true);
    return !var_2.x;
}

fn func_1(arg_0: vec2<f32>, arg_1: f32, arg_2: Struct_3) -> Struct_2 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(global0.e.b.x - global0.e.b.x), arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-775f, global0.e.a.x) - _wgslsmith_f_op_f32(sign(294f))), arg_1);
    global3 = true;
    let var_1 = -1014f;
    let var_2 = !(!all(select(global0.e.c, global0.e.c, global0.e.c))) && !func_4(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.a, 4294967295u), _wgslsmith_mult_vec2_u32(vec2<u32>(9816u, 25991u), u_input.c.zw)), 18u)], Struct_2(u_input.c.x, global0.b, -global1.xx, _wgslsmith_add_vec2_i32(global0.c, vec2<i32>(u_input.b, -2147483647i)), global0.e), func_2(Struct_3(32833u), _wgslsmith_f_op_vec4_f32(round(global0.e.b))));
    let var_3 = vec4<bool>(all(func_2(Struct_3(firstLeadingBit(arg_2.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, arg_1, -144f, -1000f))).e), true, true, any(!global0.e.e));
    return Struct_2(~_wgslsmith_clamp_u32(u_input.a, ~1u | ~arg_2.a, arg_2.a), !global0.b, vec2<i32>(2147483647i, _wgslsmith_dot_vec4_i32(-vec4<i32>(global1.x, global0.c.x, global0.d.x, 0i), vec4<i32>(-1i) * -vec4<i32>(-1i, global0.d.x, -25609i, global0.c.x))), global0.e.d, func_2(Struct_3(min(~4294967295u, arg_2.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(634f, var_1, -902f, _wgslsmith_f_op_f32(-var_1)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!(!vec4<bool>(true, any(vec3<bool>(true, global0.b, false)), global0.e.e.x || global0.e.c.x, global0.d.x >= -16686i)));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 293f, -458f);
    let var_2 = global0.a;
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)))), var_1.x, _wgslsmith_f_op_f32(round(global0.e.b.x)));
    let var_3 = func_1(_wgslsmith_f_op_vec2_f32(-var_1.xy), var_1.x, global2[_wgslsmith_index_u32(u_input.e << (u_input.a % 32u), 18u)]);
    var var_4 = 5197i;
    let x = u_input.a;
    s_output = StorageBuffer(-524f, func_2(global2[_wgslsmith_index_u32(u_input.e, 18u)], vec4<f32>(_wgslsmith_f_op_f32(step(1867f, global0.e.a.x)), _wgslsmith_f_op_f32(global0.e.b.x - _wgslsmith_f_op_f32(f32(-1f) * -1422f)), var_3.e.a.x, -1724f)).b.xzz, _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, var_3.e.d.x >> (4294967295u % 32u), 6920i, abs(global1.x)), vec4<i32>(-global0.c.x, 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-6871i, -19948i, global0.c.x, -2147483647i), vec4<i32>(global1.x, global0.e.d.x, global1.x, 1i)), var_3.c.x)), vec4<i32>(abs(_wgslsmith_mult_i32(u_input.b, 2147483647i)), abs(select(var_3.c.x, u_input.b, var_3.b)), -(~var_3.e.d.x), ~global1.x)), func_2(global2[_wgslsmith_index_u32(var_3.a, 18u)], _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_3.e.b + vec4<f32>(-514f, global0.e.b.x, -756f, 1152f)) - _wgslsmith_f_op_vec4_f32(var_3.e.b * vec4<f32>(-1907f, -668f, 2069f, 552f)))))).d.x, vec4<u32>(u_input.c.x, u_input.c.x, global0.a, firstTrailingBit(34387u)));
}

