struct Struct_1 {
    a: i32,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: bool,
    b: vec2<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: i32,
    d: vec2<u32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: u32;

var<private> global2: array<f32, 3>;

var<private> global3: array<bool, 7>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> u32 {
    global1 = u_input.b;
    global0 = Struct_3(global0.a);
    let var_0 = global0.a.c.a >> (1u % 32u);
    global3 = array<bool, 7>();
    global1 = max(~(~_wgslsmith_add_u32(u_input.b, u_input.b)), ~0u);
    return u_input.b;
}

fn func_2(arg_0: f32, arg_1: vec3<f32>, arg_2: vec2<u32>, arg_3: vec3<f32>) -> Struct_2 {
    var var_0 = Struct_3(Struct_2(!global3[_wgslsmith_index_u32(~reverseBits(arg_2.x), 7u)], vec2<f32>(_wgslsmith_div_f32(1355f, 937f), global2[_wgslsmith_index_u32(~u_input.b, 3u)]), Struct_1(-(1i & u_input.a), global3[_wgslsmith_index_u32(func_3(), 7u)] || select(true, true, false), -101f)));
    var var_1 = arg_1.x;
    let var_2 = 60426u;
    global3 = array<bool, 7>();
    var var_3 = arg_2;
    return var_0.a;
}

fn func_4(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: vec3<i32>, arg_3: Struct_2) -> Struct_3 {
    var var_0 = firstLeadingBit(reverseBits(4294967295u) >> (u_input.b % 32u));
    let var_1 = ~(~0u) <= _wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, 0u), _wgslsmith_sub_vec3_u32(vec3<u32>(10263u, u_input.b, 1u), vec3<u32>(0u, u_input.b, u_input.b)))), u_input.b);
    var var_2 = vec2<i32>(-1i) * -vec2<i32>(select(_wgslsmith_mod_i32(arg_0.c.a, 2147483647i), 43564i, false), arg_3.c.a);
    return Struct_3(func_2(262f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1145f, -222f, 1058f)))))), vec2<u32>(1u, 1u), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-428f, -217f, arg_0.b.x) + vec3<f32>(arg_0.c.c, global0.a.b.x, -600f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_0.c.c, arg_0.c.c, global2[_wgslsmith_index_u32(u_input.b, 3u)])))), vec3<bool>(true, any(arg_1.xz), true)))));
}

fn func_5(arg_0: f32, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_3) -> Struct_2 {
    let var_0 = u_input.b;
    let var_1 = arg_3;
    global3 = array<bool, 7>();
    var var_2 = firstLeadingBit(firstTrailingBit(var_1.a.c.a));
    global2 = array<f32, 3>();
    return Struct_2(false, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1185f, 244f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.a.b.x, arg_0))))), arg_2);
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> vec2<u32> {
    var var_0 = ~u_input.b;
    let var_1 = Struct_3(func_5(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_0)), _wgslsmith_f_op_f32(min(699f, -775f))))), Struct_2(any(select(vec4<bool>(false, true, global0.a.c.b, arg_1.b), vec4<bool>(true, global0.a.a, false, true), vec4<bool>(false, global0.a.a, global3[_wgslsmith_index_u32(13199u, 7u)], true))), vec2<f32>(-236f, -647f), global0.a.c), global0.a.c, func_4(func_2(486f, vec3<f32>(arg_1.c, -1653f, global2[_wgslsmith_index_u32(1426u, 3u)]), vec2<u32>(62071u, u_input.b), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(41124u, 3u)], global0.a.b.x, 202f))), !(!vec4<bool>(true, global3[_wgslsmith_index_u32(u_input.b, 7u)], true, global3[_wgslsmith_index_u32(u_input.b, 7u)])), _wgslsmith_mod_vec3_i32(vec3<i32>(60074i, global0.a.c.a, 1i) ^ vec3<i32>(2147483647i, -10655i, -7243i), ~vec3<i32>(u_input.a, arg_1.a, 23777i)), func_2(_wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(u_input.b, 3u)], 441f, true)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(u_input.b, 3u)], -492f, -782f)), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, 1u), vec2<u32>(20251u, 4294967295u), vec2<u32>(1u, 4294967295u)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-801f, arg_0, arg_1.c)))))));
    let var_2 = u_input.b;
    var var_3 = ~vec3<u32>(var_2, ~u_input.b & ~(1u ^ var_2), 73708u);
    var var_4 = func_4(var_1.a, select(vec4<bool>(any(vec2<bool>(true, global3[_wgslsmith_index_u32(4294967295u, 7u)])), false, any(!vec2<bool>(global0.a.c.b, var_1.a.c.b)), arg_1.b), select(select(vec4<bool>(var_1.a.a, global0.a.a, arg_1.b, true), select(vec4<bool>(global0.a.c.b, true, global3[_wgslsmith_index_u32(var_2, 7u)], arg_1.b), vec4<bool>(global3[_wgslsmith_index_u32(45788u, 7u)], false, global0.a.c.b, var_1.a.a), true), !vec4<bool>(global3[_wgslsmith_index_u32(u_input.b, 7u)], arg_1.b, var_1.a.a, false)), !(!vec4<bool>(global3[_wgslsmith_index_u32(var_2, 7u)], false, true, global3[_wgslsmith_index_u32(var_2, 7u)])), true), !(!(!vec4<bool>(arg_1.b, arg_1.b, arg_1.b, var_1.a.c.b)))), select(-_wgslsmith_add_vec3_i32(vec3<i32>(-1i, global0.a.c.a, var_1.a.c.a), -vec3<i32>(arg_1.a, var_1.a.c.a, 2147483647i)), -(~_wgslsmith_sub_vec3_i32(vec3<i32>(var_1.a.c.a, arg_1.a, global0.a.c.a), vec3<i32>(-17744i, 5523i, global0.a.c.a))), !vec3<bool>(true, var_2 > var_3.x, true)), global0.a).a;
    return vec2<u32>(~countOneBits(var_2), 32324u);
}

fn func_6(arg_0: u32, arg_1: f32, arg_2: vec2<u32>) -> Struct_3 {
    var var_0 = Struct_3(global0.a);
    let var_1 = _wgslsmith_sub_i32(-(~func_5(global2[_wgslsmith_index_u32(firstTrailingBit(54415u), 3u)], global0.a, Struct_1(-1i, false, global0.a.c.c), Struct_3(Struct_2(true, var_0.a.b, global0.a.c))).c.a), reverseBits(87697i));
    global1 = 4294967295u;
    var var_2 = var_0.a;
    let var_3 = ~(~(reverseBits(~56567i) | -var_0.a.c.a));
    return func_4(func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_2.c.c))), var_0.a, func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(780f * global0.a.b.x)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(u_input.b, 3u)], var_0.a.b.x, arg_1)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global2[_wgslsmith_index_u32(arg_2.x, 3u)], global0.a.b.x, 533f)))), min(~arg_2, ~arg_2), vec3<f32>(_wgslsmith_f_op_f32(-var_0.a.c.c), _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(max(global0.a.b.x, global0.a.c.c)))).c, func_4(Struct_2(true, vec2<f32>(global2[_wgslsmith_index_u32(arg_2.x, 3u)], -871f), Struct_1(var_0.a.c.a, var_2.a, 372f)), select(select(vec4<bool>(true, false, true, global0.a.a), vec4<bool>(var_0.a.c.b, true, var_2.c.b, true), vec4<bool>(global3[_wgslsmith_index_u32(53913u, 7u)], true, var_0.a.a, true)), !vec4<bool>(var_0.a.a, global0.a.c.b, global3[_wgslsmith_index_u32(49790u, 7u)], global3[_wgslsmith_index_u32(0u, 7u)]), vec4<bool>(false, false, true, var_2.a)), vec3<i32>(~(-59995i), _wgslsmith_div_i32(-1i, 11041i), 1i), Struct_2(true | global0.a.a, _wgslsmith_f_op_vec2_f32(sign(var_0.a.b)), Struct_1(u_input.a, global0.a.a, arg_1)))), !(!select(vec4<bool>(false, false, false, global0.a.a), select(vec4<bool>(global0.a.c.b, true, global3[_wgslsmith_index_u32(1u, 7u)], var_2.a), vec4<bool>(true, var_0.a.a, global0.a.a, false), global3[_wgslsmith_index_u32(arg_0, 7u)]), vec4<bool>(true, true, true, true))), firstLeadingBit(abs(-vec3<i32>(-2147483647i, -35583i, 69506i))) | ~(vec3<i32>(0i, global0.a.c.a, -16071i) ^ vec3<i32>(20834i, var_3, 2147483647i)), global0.a);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<f32, 3>();
    let var_0 = all(vec2<bool>(!((1i <= u_input.a) | true), _wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b, u_input.b), 3u)])) > 1000f));
    global2 = array<f32, 3>();
    var var_1 = func_6(min(u_input.b, ~0u), global2[_wgslsmith_index_u32(~4294967295u, 3u)], _wgslsmith_div_vec2_u32(~_wgslsmith_mod_vec2_u32(~vec2<u32>(0u, 0u), vec2<u32>(u_input.b, 5384u) << (vec2<u32>(u_input.b, 4294967295u) % vec2<u32>(32u))), ~_wgslsmith_add_vec2_u32(~vec2<u32>(u_input.b, u_input.b), func_1(global0.a.c.c, global0.a.c))));
    var var_2 = global0.a.c.a;
    var var_3 = global0.a;
    global0 = Struct_3(Struct_2(true != (var_1.a.b.x == func_2(-808f, vec3<f32>(-859f, global2[_wgslsmith_index_u32(4294967295u, 3u)], 966f), vec2<u32>(0u, u_input.b), vec3<f32>(global0.a.b.x, global0.a.c.c, var_3.c.c)).c.c), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(trunc(var_1.a.b)))), global0.a.c));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.b, 3u)])))), global0.a.c.c, _wgslsmith_f_op_f32(-var_3.c.c)), ~(-2147483647i), global0.a.c.a, min(vec2<u32>(~(0u & u_input.b), ~4294967295u), select(~vec2<u32>(12448u, 0u), vec2<u32>(u_input.b, u_input.b) >> (vec2<u32>(45646u, u_input.b) % vec2<u32>(32u)), !vec2<bool>(false, var_1.a.c.b)) ^ _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, 28981u), vec2<u32>(u_input.b, 144283u))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -621f), global0.a.b.x)), -1428f, var_1.a.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.a.b.x), func_4(global0.a, vec4<bool>(true, var_3.a, false, var_0), vec3<i32>(var_1.a.c.a, -29690i, var_3.c.a), Struct_2(global0.a.a, global0.a.b, Struct_1(1i, false, 1448f))).a.b.x))));
}

