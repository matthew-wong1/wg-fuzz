struct Struct_1 {
    a: vec3<f32>,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec2<bool>,
    d: u32,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: bool,
    b: vec2<i32>,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 27> = array<Struct_5, 27>(Struct_5(Struct_3(0i)), Struct_5(Struct_3(30950i)), Struct_5(Struct_3(0i)), Struct_5(Struct_3(i32(-2147483648))), Struct_5(Struct_3(1i)), Struct_5(Struct_3(1i)), Struct_5(Struct_3(1i)), Struct_5(Struct_3(-10647i)), Struct_5(Struct_3(0i)), Struct_5(Struct_3(-1i)), Struct_5(Struct_3(24850i)), Struct_5(Struct_3(2147483647i)), Struct_5(Struct_3(44150i)), Struct_5(Struct_3(-11658i)), Struct_5(Struct_3(-28242i)), Struct_5(Struct_3(i32(-2147483648))), Struct_5(Struct_3(i32(-2147483648))), Struct_5(Struct_3(i32(-2147483648))), Struct_5(Struct_3(-1i)), Struct_5(Struct_3(-4268i)), Struct_5(Struct_3(-8521i)), Struct_5(Struct_3(2147483647i)), Struct_5(Struct_3(-11774i)), Struct_5(Struct_3(37360i)), Struct_5(Struct_3(15888i)), Struct_5(Struct_3(45508i)), Struct_5(Struct_3(2599i)));

var<private> global1: vec4<f32>;

var<private> global2: array<vec4<bool>, 2> = array<vec4<bool>, 2>(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true));

var<private> global3: array<i32, 31> = array<i32, 31>(-23973i, 0i, -54822i, -24764i, 1i, -7750i, 2147483647i, i32(-2147483648), 5336i, 5745i, -45072i, 1i, 1838i, 35950i, -1i, -68860i, -5610i, i32(-2147483648), 22905i, -9181i, 18189i, 1i, 18331i, i32(-2147483648), 0i, 30719i, 1i, -5582i, -42090i, 4232i, -41i);

var<private> global4: Struct_1 = Struct_1(vec3<f32>(176f, -681f, 790f), vec2<u32>(4294967295u, 55817u), vec2<i32>(-1i, 2147483647i));

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> u32 {
    var var_0 = select(true && !any(vec3<bool>(true, true, true)), true, true);
    global0 = array<Struct_5, 27>();
    let var_1 = Struct_4(!(!all(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true)))), countOneBits(-min(global4.c, ~global4.c)));
    let var_2 = Struct_3(global4.c.x);
    var var_3 = ~global4.b;
    return _wgslsmith_mult_u32(firstLeadingBit(var_3.x << (var_3.x % 32u)), 1u);
}

fn func_4(arg_0: Struct_4, arg_1: Struct_2, arg_2: Struct_4, arg_3: Struct_5) -> vec3<f32> {
    var var_0 = arg_3.a;
    global0 = array<Struct_5, 27>();
    var var_1 = vec2<u32>(~func_3(), _wgslsmith_clamp_u32(27334u, firstTrailingBit(4028u), arg_1.a.x & _wgslsmith_mod_u32(1u, arg_1.d << (26905u % 32u))));
    global4 = arg_1.b;
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.b.a.x, arg_1.b.a.x, -1000f, global1.x), vec4<f32>(-1195f, global1.x, arg_1.b.a.x, 1120f), vec4<bool>(true, arg_1.c.x, false, false)))))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.b.a.x, -699f, -1535f, -503f), vec4<f32>(1064f, global4.a.x, 238f, arg_1.b.a.x), arg_2.a))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b.a.x, 362f, -817f, global1.x)), _wgslsmith_div_vec4_f32(vec4<f32>(-191f, arg_1.b.a.x, -860f, arg_1.b.a.x), vec4<f32>(-1190f, 273f, arg_1.b.a.x, arg_1.b.a.x)))))));
    return _wgslsmith_f_op_vec3_f32(-arg_1.b.a);
}

fn func_2() -> i32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(func_4(Struct_4(_wgslsmith_sub_i32(u_input.a, 8567i) <= _wgslsmith_mod_i32(0i, global4.c.x), _wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, global3[_wgslsmith_index_u32(global4.b.x, 31u)]), min(global4.c, global4.c), vec2<i32>(-19901i, 69238i))), Struct_2(vec4<u32>(103479u >> (global4.b.x % 32u), func_3(), global4.b.x, _wgslsmith_mult_u32(global4.b.x, 1u)), Struct_1(vec3<f32>(global4.a.x, global1.x, 148f), max(vec2<u32>(global4.b.x, 1u), vec2<u32>(45288u, 0u)), _wgslsmith_mod_vec2_i32(global4.c, vec2<i32>(51810i, 24505i))), vec2<bool>(true, true), global4.b.x), Struct_4(true, max(-vec2<i32>(global3[_wgslsmith_index_u32(global4.b.x, 31u)], u_input.a), vec2<i32>(-4498i, global3[_wgslsmith_index_u32(4294967295u, 31u)]))), Struct_5(Struct_3(global4.c.x >> (0u % 32u))))), ~max(reverseBits(_wgslsmith_mod_vec2_u32(global4.b, vec2<u32>(global4.b.x, global4.b.x))), vec2<u32>(42708u | global4.b.x, ~global4.b.x)), vec2<i32>(global3[_wgslsmith_index_u32(countOneBits(abs(24747u)), 31u)], -_wgslsmith_mult_i32(global4.c.x | global3[_wgslsmith_index_u32(global4.b.x, 31u)], -1i)));
    global0 = array<Struct_5, 27>();
    let var_1 = var_0;
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.a.x), var_1.a.x), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global1.x, 437f, false)), -519f), -641f)), _wgslsmith_f_op_f32(-global4.a.x)));
    let var_3 = Struct_2(countOneBits(min(~vec4<u32>(var_1.b.x, var_1.b.x, var_0.b.x, 0u), ~select(vec4<u32>(39289u, var_1.b.x, 0u, var_0.b.x), vec4<u32>(var_1.b.x, 4294967295u, 53487u, global4.b.x), false))), var_1, select(vec2<bool>(_wgslsmith_f_op_f32(-1198f * var_1.a.x) == 325f, true), !select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false)), !((33475i <= var_0.c.x) & true)), 4274u);
    return -28344i;
}

fn func_1(arg_0: u32, arg_1: bool) -> bool {
    var var_0 = global0[_wgslsmith_index_u32(~min(_wgslsmith_sub_u32(global4.b.x << (1u % 32u), ~(~4294967295u)), _wgslsmith_mod_u32(_wgslsmith_add_u32(~global4.b.x, _wgslsmith_mult_u32(4294967295u, 1u)), firstLeadingBit(4294967295u >> (arg_0 % 32u)))), 27u)];
    var var_1 = Struct_4(true, _wgslsmith_sub_vec2_i32(vec2<i32>(global3[_wgslsmith_index_u32(~(~arg_0), 31u)], firstLeadingBit(func_2())), vec2<i32>(global3[_wgslsmith_index_u32(~arg_0, 31u)], _wgslsmith_div_i32(global3[_wgslsmith_index_u32(min(global4.b.x, global4.b.x), 31u)], -2147483647i))));
    var var_2 = all(!vec3<bool>(all(!vec3<bool>(true, arg_1, false)), arg_1, select(arg_1, false, arg_0 > global4.b.x)));
    var_0 = global0[_wgslsmith_index_u32(37345u, 27u)];
    var_0 = Struct_5(var_0.a);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global4.b.x;
    let var_1 = vec3<f32>(-808f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -609f) * global1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.x))))), _wgslsmith_f_op_f32(f32(-1f) * -761f));
    var var_2 = !(!(!vec3<bool>(true, true, func_1(global4.b.x, true))));
    var var_3 = _wgslsmith_f_op_f32(global4.a.x - global4.a.x);
    global0 = array<Struct_5, 27>();
    let var_4 = var_2.x;
    let var_5 = (max(select(vec4<u32>(4294967295u, global4.b.x, global4.b.x, global4.b.x), _wgslsmith_sub_vec4_u32(vec4<u32>(global4.b.x, 0u, global4.b.x, 4294967295u), vec4<u32>(52898u, global4.b.x, 1u, 1u)), global2[_wgslsmith_index_u32(0u, 2u)]), countOneBits(vec4<u32>(76483u, global4.b.x, 4294967295u, 0u))) & _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_div_u32(global4.b.x, global4.b.x), _wgslsmith_clamp_u32(global4.b.x, global4.b.x, global4.b.x), _wgslsmith_mod_u32(global4.b.x, 39418u), 1u), abs(max(vec4<u32>(global4.b.x, global4.b.x, 39628u, global4.b.x), vec4<u32>(global4.b.x, global4.b.x, global4.b.x, global4.b.x))))) << (~_wgslsmith_clamp_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(1u, 72349u, global4.b.x, 4294967295u), vec4<u32>(50911u, global4.b.x, 4294967295u, 1u)), ~(~vec4<u32>(global4.b.x, global4.b.x, 1u, 61163u)), vec4<u32>(0u, global4.b.x, 0u, global4.b.x) ^ firstTrailingBit(vec4<u32>(1u, 1u, 6685u, 0u))) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_add_i32(4134i, global4.c.x)));
}

