struct Struct_1 {
    a: bool,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: i32,
    c: Struct_1,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_4,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: u32 = 17991u;

var<private> global2: array<Struct_1, 13>;

var<private> global3: array<vec2<bool>, 13> = array<vec2<bool>, 13>(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true));

var<private> global4: array<u32, 15> = array<u32, 15>(5914u, 4294967295u, 4294967295u, 58229u, 0u, 2382u, 17475u, 29118u, 22087u, 0u, 1u, 43732u, 1u, 1u, 1u);

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: Struct_5, arg_1: Struct_2, arg_2: i32, arg_3: f32) -> Struct_5 {
    global4 = array<u32, 15>();
    var var_0 = arg_0;
    var_0 = arg_0;
    global1 = ~6636u;
    global1 = global4[_wgslsmith_index_u32(0u, 15u)];
    return Struct_5(arg_1.b, Struct_4(!vec3<bool>(false, var_0.b.c.b == arg_1.b.b, any(vec3<bool>(true, true, arg_0.a.a))), var_0.b.b, arg_1.b), all(vec4<bool>(!arg_0.c, global0.b.a, select(arg_0.c | true, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(30367u, 15u)], 15u)], 15u)], 15u)], 15u)] <= 0u, true), all(!vec4<bool>(var_0.a.a, arg_0.b.c.a, arg_0.c, false)))));
}

fn func_3(arg_0: Struct_5) -> Struct_3 {
    return Struct_3(u_input.a >> (~global4[_wgslsmith_index_u32(~(~11835u), 15u)] % 32u), Struct_1(false, _wgslsmith_f_op_f32(-1303f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.b))), ~arg_0.b.c.c), func_2(Struct_5(Struct_1(true && global0.b.a, -1791f, ~arg_0.b.c.c), Struct_4(func_2(arg_0, Struct_2(vec2<f32>(-238f, arg_0.b.c.b), global0.b, Struct_1(global0.c.a, -1000f, 29596i)), u_input.b.x, 660f).b.a, func_2(arg_0, Struct_2(vec2<f32>(arg_0.b.c.b, arg_0.a.b), global0.c, global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 15u)], 15u)], 15u)], 15u)], 15u)], 15u)], 15u)], 15u)], 15u)], 15u)], 13u)]), 2147483647i, 925f).a.c, Struct_1(arg_0.a.a, arg_0.a.b, 2828i)), true), Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.b.c.b, arg_0.a.b), vec2<f32>(1261f, global0.c.b))), arg_0.a, Struct_1(!global0.b.a, 1f, 1i)), arg_0.a.c, _wgslsmith_f_op_f32(-arg_0.b.c.b)).a, global0.d);
}

fn func_4(arg_0: f32, arg_1: Struct_3) -> vec3<i32> {
    let var_0 = ~((abs(select(vec3<i32>(u_input.b.x, 21671i, global0.d.x), vec3<i32>(global0.b.c, -28823i, u_input.b.x), vec3<bool>(arg_1.c.a, false, arg_1.c.a))) << (reverseBits(vec3<u32>(73423u, 1u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 15u)], 15u)], 15u)], 15u)])) % vec3<u32>(32u))) >> (vec3<u32>(1u, _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 14738u, 60993u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 15u)], 15u)], 15u)]), vec4<u32>(1u, 4598u, global4[_wgslsmith_index_u32(77693u, 15u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 15u)], 15u)], 15u)], 15u)])), 60181u >> (_wgslsmith_add_u32(global4[_wgslsmith_index_u32(27338u, 15u)], 7539u) % 32u)) % vec3<u32>(32u)));
    var var_1 = _wgslsmith_add_vec2_u32(vec2<u32>(abs(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_mod_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 15u)], 15u)], 15u)], 15u)], 15u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 15u)], 15u)]), 1u), 15u)], 15u)]), global4[_wgslsmith_index_u32(1u, 15u)]), _wgslsmith_clamp_vec2_u32(~abs(vec2<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 15u)], 15u)], global4[_wgslsmith_index_u32(4294967295u, 15u)])) >> (vec2<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(_wgslsmith_add_u32(46114u, 36840u), 15u)], 15u)], 39060u) % vec2<u32>(32u)), vec2<u32>(global4[_wgslsmith_index_u32(~global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 15u)], 15u)], 15u)], _wgslsmith_div_u32(~global4[_wgslsmith_index_u32(27512u, 15u)], _wgslsmith_div_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(40616u, 15u)], 15u)], global4[_wgslsmith_index_u32(0u, 15u)]))), _wgslsmith_sub_vec2_u32(max(_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 1741u), vec2<u32>(global4[_wgslsmith_index_u32(12619u, 15u)], 36537u), vec2<u32>(59144u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(83455u, 15u)], 15u)])), vec2<u32>(global4[_wgslsmith_index_u32(18256u, 15u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 15u)], 15u)])), abs(vec2<u32>(global4[_wgslsmith_index_u32(4294967295u, 15u)], global4[_wgslsmith_index_u32(1141u, 15u)])))));
    let var_2 = _wgslsmith_f_op_f32(-global0.b.b);
    let var_3 = max((vec4<i32>(1i, -5888i ^ arg_1.d.x, _wgslsmith_div_i32(-1i, -19810i), select(u_input.b.x, var_0.x, arg_1.c.a)) ^ _wgslsmith_add_vec4_i32(vec4<i32>(1i, -16350i, arg_1.c.c, 20557i) & vec4<i32>(arg_1.a, 39355i, -1i, 2147483647i), vec4<i32>(-10264i, arg_1.a, global0.b.c, 1i) << (vec4<u32>(global4[_wgslsmith_index_u32(16991u, 15u)], 61435u, 2996u, global4[_wgslsmith_index_u32(var_1.x, 15u)]) % vec4<u32>(32u)))) >> (vec4<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global4[_wgslsmith_index_u32(var_1.x, 15u)], 4294967295u, 0u), 15u)], 15u)] ^ global4[_wgslsmith_index_u32(min(var_1.x, 1u), 15u)], reverseBits(var_1.x), ~4294967295u, ~global4[_wgslsmith_index_u32(~20063u, 15u)]) % vec4<u32>(32u)), vec4<i32>(reverseBits(_wgslsmith_dot_vec3_i32(var_0, ~vec3<i32>(56759i, 2147483647i, var_0.x))), arg_1.b.c, u_input.a, -8467i));
    var_1 = _wgslsmith_div_vec2_u32(~(~vec2<u32>(6642u, 0u)) >> (firstLeadingBit(_wgslsmith_div_vec2_u32(firstTrailingBit(vec2<u32>(0u, 23106u)), countOneBits(vec2<u32>(var_1.x, 89509u)))) % vec2<u32>(32u)), vec2<u32>(global4[_wgslsmith_index_u32(_wgslsmith_add_u32(695u, var_1.x) | firstTrailingBit(var_1.x), 15u)] & firstLeadingBit(countOneBits(global4[_wgslsmith_index_u32(var_1.x, 15u)])), global4[_wgslsmith_index_u32(firstTrailingBit(0u), 15u)]));
    return firstLeadingBit(select(max(vec3<i32>(-1i, arg_1.c.c, _wgslsmith_dot_vec4_i32(vec4<i32>(global0.b.c, -1i, var_0.x, global0.a), var_3)), var_0), var_3.xzz, select(!select(vec3<bool>(global0.c.a, global0.b.a, arg_1.b.a), vec3<bool>(false, global0.c.a, true), vec3<bool>(false, true, arg_1.c.a)), select(vec3<bool>(global0.c.a, arg_1.b.a, global0.b.a), func_2(Struct_5(arg_1.c, Struct_4(vec3<bool>(arg_1.c.a, false, arg_1.c.a), -2147483647i, global2[_wgslsmith_index_u32(42920u, 13u)]), false), Struct_2(vec2<f32>(-1037f, 261f), arg_1.b, global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(34615u, 15u)], 15u)], 15u)], 15u)], 13u)]), -1i, var_2).b.a, all(vec4<bool>(true, false, true, arg_1.b.a))), select(select(vec3<bool>(arg_1.b.a, false, global0.b.a), vec3<bool>(false, false, arg_1.b.a), vec3<bool>(false, global0.c.a, false)), vec3<bool>(true, global0.c.a, false), !vec3<bool>(true, arg_1.b.a, true)))));
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: vec2<u32>) -> i32 {
    var var_0 = _wgslsmith_clamp_vec3_i32(select(~vec3<i32>(arg_0, 1i, -1i) & ~vec3<i32>(global0.d.x, -78378i, 2147483647i), func_4(_wgslsmith_f_op_f32(-470f - -934f), func_3(func_2(Struct_5(Struct_1(global0.c.a, global0.c.b, -37232i), Struct_4(vec3<bool>(global0.c.a, false, global0.b.a), global0.b.c, Struct_1(false, global0.c.b, -42507i)), global0.b.a), Struct_2(vec2<f32>(global0.c.b, global0.b.b), global0.c, Struct_1(global0.c.a, global0.b.b, -871i)), -11107i, 1370f))), select(vec3<bool>(true | global0.b.a, all(vec2<bool>(global0.c.a, global0.c.a)), all(vec4<bool>(global0.c.a, global0.c.a, false, false))), vec3<bool>(!global0.c.a, global0.c.a, global0.c.a), true && global0.c.a)), vec3<i32>(1i, _wgslsmith_sub_i32(-firstLeadingBit(-5013i), -arg_0), _wgslsmith_clamp_i32(1i, 16650i, _wgslsmith_mult_i32(_wgslsmith_sub_i32(arg_1, 1i), _wgslsmith_sub_i32(41680i, global0.b.c)))), vec3<i32>(-u_input.a, firstLeadingBit(-285i), firstTrailingBit(global0.a | -1i)));
    let var_1 = ~0u;
    global2 = array<Struct_1, 13>();
    var var_2 = vec3<u32>(var_1, reverseBits(arg_2.x << (58745u % 32u)), ~abs(1u));
    global1 = _wgslsmith_mult_u32(var_1, ~(~1u));
    return ~(i32(-1i) * -30811i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(!vec3<bool>(true | global0.c.a, true, false), func_1(u_input.a, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b.x, global0.a, 2147483647i), abs(vec3<i32>(16771i, global0.c.c, 1i))), (vec3<i32>(15105i, global0.c.c, u_input.b.x) ^ vec3<i32>(-9691i, -12513i, u_input.b.x)) >> (~vec3<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(6247u, 15u)], 15u)], 15u)], global4[_wgslsmith_index_u32(51991u, 15u)], global4[_wgslsmith_index_u32(22316u, 15u)]) % vec3<u32>(32u))), (vec2<u32>(global4[_wgslsmith_index_u32(4294967295u, 15u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 15u)], 15u)]) >> (~vec2<u32>(global4[_wgslsmith_index_u32(1u, 15u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 15u)], 15u)], 15u)], 15u)]) % vec2<u32>(32u))) >> (vec2<u32>(global4[_wgslsmith_index_u32(max(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 15u)], 15u)], global4[_wgslsmith_index_u32(49430u, 15u)]), 15u)], ~4294967295u) % vec2<u32>(32u))), Struct_1(!global0.c.a, global0.c.b, _wgslsmith_div_i32(-7606i, u_input.b.x)));
    global1 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(1u);
}

