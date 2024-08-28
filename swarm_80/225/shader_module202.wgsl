struct Struct_1 {
    a: vec2<i32>,
    b: vec4<bool>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<bool>,
    c: bool,
    d: u32,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: i32,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<u32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_1;

var<private> global2: array<i32, 27>;

var<private> global3: vec2<i32> = vec2<i32>(4490i, 9254i);

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2() -> f32 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-312f, _wgslsmith_f_op_f32(f32(-1f) * -114f))), -449f)));
    let var_0 = Struct_1(~global1.a, select(vec4<bool>(true, global1.b.x, true, !(u_input.d.x > 1u)), global1.b, any(vec2<bool>(true, true))), global1.c);
    return -1503f;
}

fn func_3(arg_0: vec4<bool>, arg_1: u32, arg_2: Struct_2) -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a) + -753f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(arg_2.a, -1000f)), -708f), _wgslsmith_f_op_f32(f32(-1f) * -918f), -825f))), vec4<f32>(arg_2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -649f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(461f)))), _wgslsmith_div_f32(arg_2.a, arg_2.a), 551f), !select(!global1.b, vec4<bool>(select(global1.b.x, global1.b.x, arg_2.c), arg_2.b.x != global1.b.x, global1.b.x, !arg_0.x), !vec4<bool>(false, global1.b.x, false, true))));
    var var_1 = ~abs(vec3<i32>(-firstLeadingBit(global2[_wgslsmith_index_u32(159964u, 27u)]), global1.a.x, _wgslsmith_add_i32(1i, global3.x)));
    let var_2 = arg_2;
    global3 = var_1.xy | ~select(vec2<i32>(0i & global2[_wgslsmith_index_u32(0u, 27u)], reverseBits(var_1.x)), (global1.a | u_input.b) & vec2<i32>(global2[_wgslsmith_index_u32(u_input.c.x, 27u)], -46738i), vec2<bool>(!arg_0.x, true));
    let var_3 = abs(_wgslsmith_div_vec4_i32(max(reverseBits(vec4<i32>(global3.x, u_input.b.x, 26073i, global2[_wgslsmith_index_u32(var_2.d, 27u)])), min(vec4<i32>(2147483647i, 1i, global3.x, -1i), vec4<i32>(var_1.x, var_1.x, 2147483647i, u_input.b.x))), _wgslsmith_add_vec4_i32(abs(vec4<i32>(global2[_wgslsmith_index_u32(arg_2.d, 27u)], u_input.b.x, 17540i, -28807i)), vec4<i32>(u_input.b.x, 1i, 30075i, 2147483647i)))) ^ min(_wgslsmith_add_vec4_i32(-(vec4<i32>(var_1.x, global1.a.x, global3.x, global3.x) << (vec4<u32>(u_input.c.x, 0u, 93318u, 39520u) % vec4<u32>(32u))), (vec4<i32>(-23757i, 2147483647i, 2147483647i, -36884i) >> (vec4<u32>(4294967295u, global1.c.x, u_input.a, arg_1) % vec4<u32>(32u))) >> (global1.c % vec4<u32>(32u))), reverseBits(_wgslsmith_div_vec4_i32(vec4<i32>(0i, var_1.x, global1.a.x, global2[_wgslsmith_index_u32(global1.c.x, 27u)]), vec4<i32>(u_input.b.x, 1i, global1.a.x, global1.a.x) | vec4<i32>(var_1.x, global1.a.x, -12837i, 0i))));
    return var_2.b.x;
}

fn func_1() -> f32 {
    global2 = array<i32, 27>();
    global0 = _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())));
    global0 = _wgslsmith_f_op_f32(783f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1483f))));
    var var_0 = global1.c.x;
    let var_1 = Struct_1(-u_input.b, !vec4<bool>(true, func_3(select(global1.b, global1.b, global1.b), u_input.a ^ 4294967295u, Struct_2(395f, global1.b, global1.b.x, global1.c.x)), true, (-48275i << (global1.c.x % 32u)) <= 1i), ~(~(firstTrailingBit(vec4<u32>(global1.c.x, 1u, 14120u, u_input.c.x)) & ~global1.c)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1913f, -1385f), 1f)) * _wgslsmith_f_op_f32(483f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -667f)))));
}

fn func_4(arg_0: u32, arg_1: Struct_3) -> Struct_1 {
    global2 = array<i32, 27>();
    global3 = reverseBits(abs(u_input.b));
    var var_0 = vec3<u32>(4294967295u, ~(~((0u >> (1u % 32u)) ^ global1.c.x)), 0u);
    global0 = _wgslsmith_f_op_f32(abs(arg_1.d.a));
    global2 = array<i32, 27>();
    return arg_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_vec2_u32(u_input.c, ~_wgslsmith_sub_vec2_u32(firstTrailingBit(vec2<u32>(17855u, 4294967295u)) & (vec2<u32>(1u, 1u) >> (vec2<u32>(u_input.d.x, global1.c.x) % vec2<u32>(32u))), ~u_input.c));
    var var_1 = func_4(1314u, Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())), Struct_1(global1.a << (var_0 % vec2<u32>(32u)), select(!vec4<bool>(global1.b.x, global1.b.x, global1.b.x, true), vec4<bool>(global1.b.x, global1.b.x, global1.b.x, true), false | global1.b.x), ~(~vec4<u32>(0u, 31414u, u_input.a, 4294967295u))), 48208i, Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1924f + 2378f)), vec4<bool>(global1.b.x, true, global1.b.x, false), select(true, false, false & global1.b.x), _wgslsmith_mod_u32(~1u, ~1u))));
    let var_2 = !var_1.b.x;
    var var_3 = firstLeadingBit(~u_input.d.xz);
    global3 = -reverseBits(vec2<i32>(firstTrailingBit(countOneBits(global1.a.x)), var_1.a.x));
    let var_4 = _wgslsmith_mod_u32(var_3.x, _wgslsmith_mult_u32(abs(~(~40643u)), _wgslsmith_clamp_u32(global1.c.x, _wgslsmith_dot_vec4_u32(global1.c, global1.c), ~1u) ^ var_1.c.x));
    var var_5 = global2[_wgslsmith_index_u32(reverseBits(4294967295u), 27u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(194f, 793f)), var_1.a.x, reverseBits(func_4(u_input.a, Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -326f), func_4(u_input.d.x, Struct_3(-422f, Struct_1(u_input.b, var_1.b, vec4<u32>(var_0.x, 0u, 0u, global1.c.x)), -1i, Struct_2(-1478f, var_1.b, true, 0u))), ~(-1i), Struct_2(318f, vec4<bool>(false, false, false, global1.b.x), false, 1u))).c), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1274f, 213f, 1573f) - vec3<f32>(-579f, 669f, 1627f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-103f, -164f, -1140f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-506f, 560f, -637f))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-303f * 1147f), 2088f, -2449f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(582f, 539f, 1329f))))));
}

