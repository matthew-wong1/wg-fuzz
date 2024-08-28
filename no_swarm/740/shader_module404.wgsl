struct Struct_1 {
    a: i32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec2<bool>,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: bool,
}

struct Struct_4 {
    a: vec3<f32>,
    b: bool,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<u32, 9> = array<u32, 9>(1u, 4294967295u, 0u, 1u, 42760u, 45541u, 1u, 4294967295u, 4294967295u);

var<private> global2: array<Struct_4, 11> = array<Struct_4, 11>(Struct_4(vec3<f32>(-1502f, -1272f, 276f), true, vec4<u32>(4294967295u, 16299u, 32419u, 1u)), Struct_4(vec3<f32>(-791f, 1062f, 1472f), false, vec4<u32>(24081u, 0u, 1u, 50225u)), Struct_4(vec3<f32>(-999f, -377f, -779f), false, vec4<u32>(4294967295u, 88533u, 78727u, 4294967295u)), Struct_4(vec3<f32>(-1161f, 335f, 449f), false, vec4<u32>(9642u, 0u, 66924u, 0u)), Struct_4(vec3<f32>(-993f, 1203f, 441f), true, vec4<u32>(1u, 0u, 4294967295u, 1u)), Struct_4(vec3<f32>(909f, 1202f, 1000f), true, vec4<u32>(0u, 4294967295u, 23035u, 0u)), Struct_4(vec3<f32>(463f, 217f, -710f), true, vec4<u32>(1u, 114828u, 20441u, 41450u)), Struct_4(vec3<f32>(-744f, 1005f, -1000f), false, vec4<u32>(12583u, 80309u, 49273u, 4294967295u)), Struct_4(vec3<f32>(691f, 1140f, -1527f), false, vec4<u32>(20074u, 27808u, 1u, 0u)), Struct_4(vec3<f32>(1291f, 2208f, 1000f), false, vec4<u32>(39162u, 46715u, 1u, 1u)), Struct_4(vec3<f32>(-896f, -736f, -738f), true, vec4<u32>(19386u, 51919u, 4294967295u, 29268u)));

var<private> global3: vec2<i32>;

var<private> global4: i32 = 23746i;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec2<i32>, arg_2: Struct_1) -> vec2<bool> {
    let var_0 = min(~_wgslsmith_mult_vec4_u32(min(vec4<u32>(global1[_wgslsmith_index_u32(69610u, 9u)], 43112u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 9u)], 9u)], 0u), ~vec4<u32>(global0.c.x, global0.c.x, arg_0.x, arg_0.x)), vec4<u32>(19564u, 4294967295u, arg_0.x, 11652u) >> (~vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 9u)], 9u)], 4294967295u, arg_0.x, 8051u) % vec4<u32>(32u))), select(arg_0, _wgslsmith_add_vec4_u32(vec4<u32>(0u, 1u, ~global0.c.x, arg_0.x), ~(~vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 9u)], 9u)], 9u)], 9u)], arg_0.x, arg_0.x, 4294967295u))), select(vec4<bool>(true, true, any(vec2<bool>(global0.b, global0.b)), false), !vec4<bool>(global0.b, global0.b, true, true), global0.b)));
    var var_1 = _wgslsmith_sub_vec3_u32(global0.c.wxx << (~abs(~global0.c.yxy) % vec3<u32>(32u)), vec3<u32>(global0.c.x, ~var_0.x, 93261u));
    var_1 = ~abs(firstTrailingBit(arg_0.www));
    var var_2 = vec2<bool>(global0.b, global0.b);
    let var_3 = Struct_3(countOneBits(1u), _wgslsmith_f_op_f32(sign(global0.a.x)), any(select(vec3<bool>(all(vec3<bool>(true, var_2.x, false)), global0.b, true), vec3<bool>(true, var_2.x, true), !select(vec3<bool>(var_2.x, false, true), vec3<bool>(var_2.x, false, var_2.x), vec3<bool>(global0.b, global0.b, global0.b)))));
    return !(!select(vec2<bool>(any(vec2<bool>(false, false)), select(true, var_3.c, true)), select(select(vec2<bool>(true, true), vec2<bool>(global0.b, true), vec2<bool>(true, var_3.c)), select(vec2<bool>(false, false), vec2<bool>(global0.b, true), vec2<bool>(false, false)), vec2<bool>(false, false)), true));
}

fn func_4(arg_0: vec2<bool>, arg_1: i32, arg_2: u32, arg_3: bool) -> i32 {
    global0 = global2[_wgslsmith_index_u32(26613u, 11u)];
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-3332f, _wgslsmith_f_op_f32(535f - -1000f), _wgslsmith_f_op_f32(-global0.a.x)))) + vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) - _wgslsmith_f_op_f32(round(global0.a.x))), -1357f)));
    global4 = arg_1;
    global4 = countOneBits(arg_1);
    global1 = array<u32, 9>();
    return 2147483647i;
}

fn func_2() -> vec2<f32> {
    global4 = _wgslsmith_mult_i32(19549i, 0i);
    let var_0 = 1158f;
    var var_1 = Struct_2(func_4(func_3(firstLeadingBit(global0.c), max(vec2<i32>(global3.x, 0i), vec2<i32>(-1i, u_input.a)), Struct_1(global3.x, global0.a.xz)), firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(global3.x, global3.x, global3.x, -5792i), vec4<i32>(-23503i, u_input.a, u_input.a, 2147483647i))), _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(0u, 9u)], global0.c.x, global0.c.x, 2666u), vec4<u32>(global1[_wgslsmith_index_u32(146842u, 9u)], 4294967295u, 2342u, 34401u)), 0u, _wgslsmith_mod_u32(global0.c.x, 30976u)), false) >> (~(global0.c.x | 7453u) % 32u), Struct_1(global3.x ^ global3.x, vec2<f32>(global0.a.x, 1290f)), vec2<bool>(global0.b, global0.b), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-25493i, global3.x, 29944i, 1i), vec4<i32>(2147483647i, global3.x, 3407i, global3.x) >> (vec4<u32>(3433u, 52322u, 11793u, 4294967295u) % vec4<u32>(32u))), -_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, 19805i, -35833i, u_input.a), vec4<i32>(global3.x, global3.x, 15662i, -12746i))), vec4<i32>(-1i, abs(7113i), 0i, ~(-global3.x))), Struct_1(27267i, global0.a.zz));
    let var_2 = false;
    var var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1096f, -473f));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(global0.a.yx))));
}

fn func_1() -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(global0.a.x + -1363f);
    var var_1 = Struct_3(~(~(~_wgslsmith_mod_u32(1u, 1u))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1932f, global0.a.x, global0.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x)))), true);
    var var_2 = Struct_2(34264i & (-6699i << (~reverseBits(global1[_wgslsmith_index_u32(19246u, 9u)]) % 32u)), Struct_1(-u_input.a, global0.a.yz), vec2<bool>(var_1.c, 45040u != ~(104196u | global0.c.x)), 15324i, Struct_1(-20180i, _wgslsmith_f_op_vec2_f32(func_2())));
    global3 = countOneBits(vec2<i32>(-reverseBits(var_2.a), -2147483647i << (~global1[_wgslsmith_index_u32(_wgslsmith_add_u32(var_1.a, var_1.a), 9u)] % 32u)));
    var var_3 = false;
    return Struct_3(max(_wgslsmith_mod_u32(~_wgslsmith_sub_u32(global0.c.x, global1[_wgslsmith_index_u32(var_1.a, 9u)]), (global0.c.x & var_1.a) | abs(21144u)), 1u), _wgslsmith_f_op_f32(var_1.b + _wgslsmith_f_op_f32(select(var_2.b.b.x, global0.a.x, global0.b))), all(select(select(!vec4<bool>(true, var_2.c.x, false, false), vec4<bool>(true, global0.b, false, global0.b), 32112i != global3.x), vec4<bool>(all(vec2<bool>(true, var_2.c.x)), false & var_2.c.x, true, var_2.c.x | global0.b), _wgslsmith_f_op_f32(max(-116f, var_1.b)) <= var_1.b)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = var_0.b;
    let var_2 = vec2<f32>(1947f, -483f);
    var var_3 = Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(global0.a))))) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_2.x, -813f, -614f))), _wgslsmith_f_op_vec3_f32(floor(global0.a)))), global0.a))), all(select(vec4<bool>(true, global0.b, false, var_0.c), vec4<bool>(var_0.c, true, all(vec2<bool>(var_0.c, true)), true), max(global3.x, u_input.a) >= -2147483647i)), ~(~max(global0.c, vec4<u32>(global1[_wgslsmith_index_u32(2963u, 9u)], 0u, var_0.a, 0u) & vec4<u32>(global0.c.x, global1[_wgslsmith_index_u32(4294967295u, 9u)], global0.c.x, global0.c.x))));
    var var_4 = Struct_2(-2147483647i, Struct_1(_wgslsmith_div_i32(6280i, global3.x), _wgslsmith_f_op_vec2_f32(ceil(var_3.a.yy))), vec2<bool>(all(vec3<bool>(func_3(vec4<u32>(global0.c.x, var_3.c.x, global0.c.x, 62554u), vec2<i32>(2147483647i, global3.x), Struct_1(16540i, global0.a.yy)).x, var_3.b && false, !var_3.b)), !all(select(vec3<bool>(var_3.b, true, false), vec3<bool>(false, var_3.b, var_3.b), var_0.c))), -24166i, Struct_1(2147483647i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2()))));
    global2 = array<Struct_4, 11>();
    global1 = array<u32, 9>();
    var var_5 = func_1();
    global3 = vec2<i32>(-1i, global3.x);
    let x = u_input.a;
    s_output = StorageBuffer(max(vec3<i32>(1i, global3.x, max(var_4.d, abs(-1i))), reverseBits(abs(_wgslsmith_clamp_vec3_i32(vec3<i32>(global3.x, -2147483647i, -2147483647i), vec3<i32>(global3.x, u_input.a, u_input.a), vec3<i32>(-1i, global3.x, -1i))))));
}

