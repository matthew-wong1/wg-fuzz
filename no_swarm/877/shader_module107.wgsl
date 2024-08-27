struct Struct_1 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<i32>,
    c: i32,
    d: Struct_2,
    e: vec4<f32>,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_4,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 18> = array<vec2<u32>, 18>(vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 16906u), vec2<u32>(0u, 3541u), vec2<u32>(0u, 0u), vec2<u32>(11953u, 105106u), vec2<u32>(3227u, 0u), vec2<u32>(23921u, 4294967295u), vec2<u32>(60869u, 4294967295u), vec2<u32>(4294967295u, 1850u), vec2<u32>(4854u, 5260u), vec2<u32>(17673u, 0u), vec2<u32>(34066u, 1u), vec2<u32>(31406u, 0u), vec2<u32>(45303u, 4294967295u), vec2<u32>(1u, 0u), vec2<u32>(61253u, 86909u), vec2<u32>(39703u, 73501u), vec2<u32>(3885u, 0u));

var<private> global1: array<f32, 1> = array<f32, 1>(-1304f);

var<private> global2: vec3<u32> = vec3<u32>(7112u, 0u, 59160u);

var<private> global3: Struct_4;

var<private> global4: array<vec4<bool>, 18>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_3, arg_1: u32, arg_2: Struct_5, arg_3: vec3<f32>) -> vec4<f32> {
    global4 = array<vec4<bool>, 18>();
    let var_0 = _wgslsmith_add_vec3_i32(vec3<i32>(-53637i, global3.b.x, reverseBits(global3.a.b.a.b.x)), abs(vec3<i32>(countOneBits(reverseBits(global3.d.a.b.x)), global3.d.a.b.x, -36374i)));
    var var_1 = !(!vec2<bool>(_wgslsmith_f_op_f32(ceil(arg_2.a.a.x)) < _wgslsmith_f_op_f32(-1465f + arg_0.b.a.c.x), all(select(vec2<bool>(false, false), vec2<bool>(true, true), false))));
    var var_2 = arg_2.a.b;
    global1 = array<f32, 1>();
    return _wgslsmith_f_op_vec4_f32(arg_2.b.e + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(global3.e))));
}

fn func_2(arg_0: Struct_2) -> vec4<bool> {
    var var_0 = Struct_4(global3.a, global3.d.a.b, reverseBits(arg_0.a.b.x) ^ arg_0.a.b.x, Struct_2(global3.a.b.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global3.e.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(global3.a, ~u_input.c.x, Struct_5(arg_0.a, Struct_4(Struct_3(global3.a.a, global3.a.b), vec3<i32>(0i, 1i, -2147483647i), 22137i, Struct_2(Struct_1(arg_0.a.a, vec3<i32>(20665i, global3.a.b.a.b.x, 15536i), vec3<f32>(-1000f, global3.e.x, 502f)), arg_0.b), global3.e), _wgslsmith_f_op_vec4_f32(global3.e + global3.e)), global3.e.xyy))));
    global1 = array<f32, 1>();
    var var_1 = _wgslsmith_mod_vec4_i32(vec4<i32>(1i, _wgslsmith_dot_vec4_i32(-(~vec4<i32>(arg_0.a.b.x, var_0.d.a.b.x, global3.c, -38133i)), abs(_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, -2147483647i, -2147483647i, -2147483647i), vec4<i32>(-2147483647i, 2147483647i, arg_0.a.b.x, 2147483647i)))), var_0.b.x, _wgslsmith_clamp_i32(30060i, -arg_0.a.b.x, arg_0.a.b.x)), vec4<i32>(0i, abs(2728i), _wgslsmith_mod_i32(var_0.a.b.a.b.x, -arg_0.a.b.x), _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(arg_0.a.b.x, var_0.c, 2147483647i, arg_0.a.b.x)) << (_wgslsmith_clamp_vec4_u32(u_input.c, vec4<u32>(4294967295u, global3.a.a, global2.x, u_input.c.x), u_input.a) % vec4<u32>(32u)), ~(-vec4<i32>(1i, global3.d.a.b.x, global3.d.a.b.x, -26680i)))));
    var var_2 = Struct_5(arg_0.a, Struct_4(Struct_3(25060u, var_0.a.b), abs(vec3<i32>(countOneBits(13338i), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.a.b.x, global3.c, var_1.x, 1i), vec4<i32>(arg_0.a.b.x, 29502i, var_1.x, -1i)), arg_0.a.b.x | global3.c)), max(100196i, ~9988i), arg_0, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.a.b.b, -1000f, 363f, var_0.d.a.c.x), vec4<f32>(1114f, arg_0.b, 914f, -1000f))))), var_0.e);
    var var_3 = var_0.a.b;
    return global4[_wgslsmith_index_u32(1u, 18u)];
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_4, arg_2: vec4<bool>) -> vec3<f32> {
    global1 = array<f32, 1>();
    let var_0 = abs(~_wgslsmith_mod_vec3_i32(arg_1.b, -_wgslsmith_clamp_vec3_i32(global3.d.a.b, vec3<i32>(arg_1.d.a.b.x, global3.c, -32077i), vec3<i32>(arg_1.b.x, -29904i, arg_1.c))));
    let var_1 = !(arg_2.x != !(!arg_2.x));
    let var_2 = var_1;
    global3 = arg_1;
    return _wgslsmith_f_op_vec3_f32(arg_1.d.a.a + arg_1.d.a.c);
}

fn func_1(arg_0: vec4<u32>, arg_1: i32) -> i32 {
    var var_0 = global3.a;
    var var_1 = Struct_1(var_0.b.a.c, vec3<i32>(36190i, i32(-1i) * -65477i, var_0.b.a.b.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(vec3<u32>(1u, arg_0.x, 18595u), Struct_4(Struct_3(59991u, Struct_2(Struct_1(var_0.b.a.a, global3.a.b.a.b, vec3<f32>(var_0.b.a.c.x, global1[_wgslsmith_index_u32(global3.a.a, 1u)], 266f)), var_0.b.b)), vec3<i32>(-29197i, -2147483647i, arg_1), -13504i, global3.a.b, vec4<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 1u)], -148f, var_0.b.a.c.x, global1[_wgslsmith_index_u32(u_input.a.x, 1u)])), func_2(Struct_2(Struct_1(vec3<f32>(-1000f, 247f, var_0.b.b), global3.b, vec3<f32>(global3.a.b.b, -908f, global1[_wgslsmith_index_u32(0u, 1u)])), -1000f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.b.a.a))) * vec3<f32>(-1175f, var_0.b.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-348f + global1[_wgslsmith_index_u32(global2.x, 1u)]) + _wgslsmith_div_f32(global1[_wgslsmith_index_u32(var_0.a, 1u)], var_0.b.a.c.x)))));
    global4 = array<vec4<bool>, 18>();
    var var_2 = Struct_5(Struct_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(var_1.a + vec3<f32>(-419f, global3.e.x, 1000f)), _wgslsmith_f_op_vec3_f32(max(var_0.b.a.c, vec3<f32>(var_0.b.a.c.x, var_0.b.a.c.x, -837f))))))), (~vec3<i32>(arg_1, var_0.b.a.b.x, var_1.b.x) >> (vec3<u32>(1u, 57232u, 1u) % vec3<u32>(32u))) | (abs(vec3<i32>(global3.d.a.b.x, global3.c, 0i)) << (reverseBits(vec3<u32>(global3.a.a, 47948u, 1u)) % vec3<u32>(32u))), _wgslsmith_f_op_vec3_f32(-global3.e.yyw)), Struct_4(Struct_3(~18338u >> (~global3.a.a % 32u), Struct_2(Struct_1(global3.d.a.a, vec3<i32>(1371i, -2147483647i, 0i), global3.a.b.a.a), -169f)), _wgslsmith_div_vec3_i32(select(var_0.b.a.b, var_0.b.a.b, vec3<bool>(true, true, true)), vec3<i32>(global3.c, 0i, 19895i)) >> (vec3<u32>(0u, var_0.a >> (4294967295u % 32u), var_0.a) % vec3<u32>(32u)), var_0.b.a.b.x << (global2.x % 32u), Struct_2(global3.a.b.a, -1463f), vec4<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.e.x)), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(reverseBits(arg_0.x), 1u)]), var_0.b.a.a.x)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(global3.e, vec4<f32>(var_0.b.b, var_1.c.x, -775f, global3.e.x)))), global3.e)), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(var_1.a.x, global1[_wgslsmith_index_u32(0u, 1u)])), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(global3.a.a, 1u)] - 1940f), true)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(1000f, -1416f, true)), _wgslsmith_f_op_f32(abs(global3.d.a.c.x)))), 1385f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x)))));
    let var_3 = Struct_3(~(~_wgslsmith_dot_vec2_u32(global2.xz, vec2<u32>(var_0.a, u_input.c.x))) & _wgslsmith_mod_u32(0u << (_wgslsmith_dot_vec3_u32(vec3<u32>(47543u, 44895u, global3.a.a), vec3<u32>(31919u, 21822u, var_0.a)) % 32u), _wgslsmith_clamp_u32(18655u, firstLeadingBit(global2.x), 2184u)), Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-global3.a.b.a.a), (var_2.a.b << (u_input.b.wxy % vec3<u32>(32u))) | var_1.b, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(226f, -408f, -1204f), _wgslsmith_f_op_vec3_f32(select(var_1.a, vec3<f32>(var_0.b.a.c.x, global1[_wgslsmith_index_u32(var_0.a, 1u)], 1296f), vec3<bool>(true, true, true)))))), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 1u)] - _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.b.a.c.x, global3.a.b.a.a.x) - var_2.b.d.b))));
    return countOneBits(-(i32(-1i) * -2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec2_u32(u_input.c.xx, ~(vec2<u32>(_wgslsmith_div_u32(1u, global3.a.a), u_input.d) >> (_wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(global2.zx, vec2<u32>(global3.a.a, global3.a.a)), vec2<u32>(70187u, global2.x)) % vec2<u32>(32u))));
    let var_1 = -441f;
    var var_2 = (global3.c | 0i) > _wgslsmith_sub_i32(_wgslsmith_mod_i32(global3.c, 0i >> (~u_input.c.x % 32u)), _wgslsmith_mult_i32(func_1(u_input.b, -5422i), global3.b.x));
    global1 = array<f32, 1>();
    global3 = Struct_4(Struct_3(~42278u, global3.d), _wgslsmith_mult_vec3_i32(-(_wgslsmith_clamp_vec3_i32(global3.d.a.b, vec3<i32>(-1i, global3.a.b.a.b.x, global3.c), vec3<i32>(global3.a.b.a.b.x, -32557i, global3.d.a.b.x)) | global3.b), global3.d.a.b), -(~_wgslsmith_add_i32(firstLeadingBit(59517i), -36456i)), global3.a.b, _wgslsmith_f_op_vec4_f32(abs(global3.e)));
    var var_3 = global3.a.b;
    let var_4 = Struct_5(global3.d.a, Struct_4(Struct_3(global2.x, global3.a.b), -global3.a.b.a.b | global3.d.a.b, ~firstTrailingBit(var_3.a.b.x), global3.a.b, global3.e), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_3.b * 560f))), _wgslsmith_f_op_f32(step(var_3.a.c.x, var_3.a.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 + var_3.b)), global3.d.b) - global3.e));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_sub_u32(global2.x, _wgslsmith_dot_vec3_u32(u_input.b.wyw, vec3<u32>(0u, 5u, global3.a.a))), ~31621u), 1u)]));
}

