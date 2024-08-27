struct Struct_1 {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec4<f32>,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec3<f32>(-1127f, -1000f, -1398f), 37582u);

var<private> global1: array<Struct_1, 11>;

var<private> global2: Struct_1;

var<private> global3: Struct_2;

var<private> global4: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(-50476i, 3370i, vec2<u32>(1u, 43625u), 4294967295u, 4294967295u), Struct_1(32530i, 7409i, vec2<u32>(4294967295u, 18426u), 27618u, 28822u), Struct_1(0i, -1i, vec2<u32>(68849u, 1u), 0u, 32523u), Struct_1(i32(-2147483648), 729i, vec2<u32>(4294967295u, 5081u), 4294967295u, 1u), Struct_1(20430i, 1i, vec2<u32>(1u, 1u), 4294967295u, 54942u), Struct_1(-55975i, 11622i, vec2<u32>(52856u, 0u), 20728u, 1u), Struct_1(i32(-2147483648), -1i, vec2<u32>(4294967295u, 25764u), 33209u, 7186u), Struct_1(i32(-2147483648), 1i, vec2<u32>(34137u, 55011u), 72804u, 16347u), Struct_1(2147483647i, 55320i, vec2<u32>(1u, 7599u), 71227u, 4294967295u), Struct_1(-33817i, -17012i, vec2<u32>(0u, 91730u), 4294967295u, 38699u), Struct_1(i32(-2147483648), 41590i, vec2<u32>(19129u, 65159u), 67479u, 4294967295u), Struct_1(-1i, 20432i, vec2<u32>(4294967295u, 19815u), 0u, 1u), Struct_1(11799i, 1i, vec2<u32>(1u, 4294967295u), 1u, 0u), Struct_1(2147483647i, i32(-2147483648), vec2<u32>(1u, 0u), 1u, 1u), Struct_1(i32(-2147483648), 1i, vec2<u32>(1u, 14408u), 0u, 46685u), Struct_1(2147483647i, 39134i, vec2<u32>(6692u, 0u), 42887u, 4409u), Struct_1(-34852i, 2147483647i, vec2<u32>(9900u, 0u), 11247u, 1u), Struct_1(2147483647i, i32(-2147483648), vec2<u32>(59864u, 4294967295u), 18546u, 91658u), Struct_1(34939i, 2610i, vec2<u32>(1588u, 77601u), 0u, 19843u), Struct_1(1i, 2147483647i, vec2<u32>(5315u, 0u), 822u, 117317u), Struct_1(0i, -42114i, vec2<u32>(51205u, 1u), 458u, 1u), Struct_1(-31265i, -23616i, vec2<u32>(0u, 0u), 1u, 29362u), Struct_1(-43395i, i32(-2147483648), vec2<u32>(4294967295u, 1u), 4294967295u, 66990u));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32, arg_1: bool) -> vec3<bool> {
    global4 = array<Struct_1, 23>();
    var var_0 = vec3<bool>(true, true, select(false, global0.b > _wgslsmith_dot_vec4_u32(u_input.a, ~vec4<u32>(u_input.b, global3.d.x, global3.d.x, 1u)), true));
    var var_1 = Struct_1(-global3.b.a, global2.a, vec2<u32>(_wgslsmith_dot_vec4_u32(u_input.a >> (vec4<u32>(21060u, 55236u, global3.b.d, 28511u) % vec4<u32>(32u)), u_input.a) | u_input.c.x, _wgslsmith_mod_u32(global3.a, _wgslsmith_mult_u32(countOneBits(global2.c.x), _wgslsmith_div_u32(7153u, global2.e)))), min(abs(2274u) << (select(u_input.c.x, global2.c.x, true) % 32u), 14218u) << (4294967295u % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(min(_wgslsmith_mod_u32(global0.b, global0.b), countOneBits(1u)), ~(~38378u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, global2.c.x, global0.b, global3.d.x), vec4<u32>(global3.d.x, global2.d, global3.b.d, 4294967295u))), ~global3.d));
    var var_2 = firstLeadingBit(~(~(~52828u) ^ global2.d));
    global3 = Struct_2(global0.b, Struct_1(_wgslsmith_div_i32(global3.b.b, _wgslsmith_clamp_i32(~global2.a, abs(global3.b.b), -28387i)), global3.b.b, vec2<u32>(u_input.a.x, u_input.c.x), 64958u, ~global2.d), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global3.c)), u_input.c, global2.c);
    return select(vec3<bool>(false, true, var_0.x), !(!(!(!vec3<bool>(true, arg_1, arg_1)))), false);
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<bool>, arg_2: vec4<u32>, arg_3: vec2<f32>) -> vec4<f32> {
    global3 = Struct_2(global3.a, global3.b, _wgslsmith_f_op_vec4_f32(global3.c + vec4<f32>(global3.c.x, -681f, 1089f, _wgslsmith_f_op_f32(f32(-1f) * -1616f))), select(~vec3<u32>(arg_2.x, _wgslsmith_div_u32(u_input.c.x, 22638u), ~global3.d.x), u_input.c, select(vec3<bool>(true, true, true), func_3(_wgslsmith_f_op_f32(select(-707f, global0.a.x, arg_1.x)), false), arg_0.x != 1144f)), u_input.a.zx);
    var var_0 = 1267f;
    global2 = Struct_1(global3.b.a, 47931i, ~vec2<u32>(1u, select(arg_2.x, 0u ^ u_input.c.x, true)), 0u, _wgslsmith_div_u32(~_wgslsmith_mult_u32(_wgslsmith_add_u32(global2.d, 4294967295u), _wgslsmith_clamp_u32(global0.b, 1u, 26571u)), arg_2.x));
    let var_1 = global3.c;
    let var_2 = Struct_3(global3.c.wzy, global3.d.x);
    return _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-arg_0)));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec2<f32>, arg_2: vec4<f32>, arg_3: Struct_1) -> Struct_3 {
    let var_0 = Struct_3(vec3<f32>(-1078f, 1519f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x + arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1144f, -1309f)), all(vec3<bool>(true, false, false))))), u_input.a.x | countOneBits(global2.d));
    global2 = Struct_1(global2.a << (_wgslsmith_mod_u32(~arg_3.c.x, _wgslsmith_add_u32(1u, max(59819u, 28940u))) % 32u), ~_wgslsmith_dot_vec4_i32(select(~vec4<i32>(global2.b, global3.b.a, global3.b.b, global3.b.b), vec4<i32>(global3.b.a, 0i, 19070i, global3.b.a) | vec4<i32>(arg_3.b, global2.a, global3.b.b, arg_3.a), any(vec3<bool>(false, true, true))), firstLeadingBit(~vec4<i32>(global2.a, arg_3.a, global3.b.b, global2.a))), vec2<u32>(~_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(u_input.c.x, 0u, 1u, global0.b)), vec4<u32>(global3.d.x, global3.a, 1u, global2.d) ^ u_input.a), 1u), 1u, 4294967295u);
    var var_1 = ~(~10454u) & abs(global3.d.x << (_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(u_input.c, u_input.a.yxz), global2.c.x) % 32u));
    let var_2 = arg_2;
    let var_3 = _wgslsmith_add_i32(~24871i, 5443i);
    return Struct_3(global3.c.ywz, ~global3.e.x);
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: f32) -> i32 {
    global1 = array<Struct_1, 11>();
    let var_0 = func_4(_wgslsmith_f_op_vec3_f32(step(global0.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global3.c.yww) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global3.c.wzw, global0.a))))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(681f, -658f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(245f, 1933f) - vec2<f32>(arg_2, global0.a.x))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_f_op_vec4_f32(global3.c + vec4<f32>(1000f, 1481f, arg_2, arg_2)), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), u_input.a, vec2<f32>(-1000f, arg_2))))))), global3.b);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -557f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.a.x))), -870f) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.a + global0.a) + global3.c.ywx)));
    global0 = func_4(global3.c.yyy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(global3.c.yx, vec2<f32>(-784f, _wgslsmith_div_f32(var_1.x, 1000f))))), global3.c, Struct_1(~_wgslsmith_mult_i32(1i, global3.b.a), -(1i | abs(arg_1.b)), countOneBits(arg_1.c), arg_1.d, _wgslsmith_clamp_u32(max(global3.d.x, _wgslsmith_add_u32(4294967295u, arg_0.x)), firstTrailingBit(min(global3.d.x, 61347u)), 54284u)));
    let var_2 = Struct_1((select(_wgslsmith_sub_i32(arg_1.b, -11440i), reverseBits(global3.b.b), func_3(-1355f, true).x) ^ abs(countOneBits(48599i))) ^ 0i, i32(-1i) * -global3.b.b, arg_1.c, _wgslsmith_dot_vec2_u32(countOneBits(countOneBits(vec2<u32>(u_input.c.x, global0.b))) & ~abs(vec2<u32>(1u, 72528u)), ~global3.e), _wgslsmith_add_u32(~(4294967295u << (var_0.b % 32u)), _wgslsmith_mult_u32(4294967295u, 1u)));
    return -1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(func_1(firstLeadingBit(vec3<u32>(global0.b << (u_input.a.x % 32u), global3.b.e, ~u_input.a.x)), Struct_1(abs(_wgslsmith_mod_i32(global2.a, global2.b)), max(34810i, ~(-11840i)), _wgslsmith_add_vec2_u32(~vec2<u32>(27052u, 45580u), vec2<u32>(u_input.a.x, u_input.a.x)), 1u, 1u), -428f), 2147483647i, select(u_input.c.yy, ~global3.b.c, vec2<bool>((2147483647i <= global2.a) || (global0.a.x == global0.a.x), false)), abs(global0.b), ~4578u);
    global0 = func_4(_wgslsmith_div_vec3_f32(global0.a, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-global3.c.x), _wgslsmith_f_op_f32(global0.a.x * 369f), -1260f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.a) + global3.c.yzx), vec3<bool>(select(false, true, true), true, -1685f > global3.c.x)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x)), 1643f) - global3.c.ww), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.x, 769f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.c.x + global3.c.x) - global0.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-415f + -554f) - _wgslsmith_f_op_f32(step(global0.a.x, global3.c.x)))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(810f, -666f, global0.a.x, 2140f)))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global3.c.x, global3.c.x, -416f, global3.c.x))))), global3.b);
    global2 = Struct_1(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(-1i, global3.b.a)), vec2<i32>(global2.a, firstTrailingBit(-2147483647i))), reverseBits(-2313i)), var_0.b, ~global3.d.xz, _wgslsmith_div_u32(var_0.d, u_input.b), ~firstTrailingBit(90433u));
    global0 = func_4(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1902f + -149f) - _wgslsmith_f_op_f32(floor(global0.a.x))), global3.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(607f * _wgslsmith_f_op_f32(min(1000f, global0.a.x))) * global3.c.x), global0.a.x), vec2<f32>(_wgslsmith_f_op_f32(global3.c.x + 1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(264f)) * _wgslsmith_f_op_f32(sign(global0.a.x)))), _wgslsmith_div_vec4_f32(global3.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.c.x, global0.a.x, global0.a.x, global3.c.x) + _wgslsmith_f_op_vec4_f32(select(global3.c, global3.c, vec4<bool>(true, false, true, true)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(global3.c, vec2<bool>(true, false), vec4<u32>(1u, 1u, 19056u, 25102u), vec2<f32>(global0.a.x, global0.a.x))) - vec4<f32>(-374f, global3.c.x, global3.c.x, global3.c.x)))), Struct_1(-abs(abs(1i)), -18403i, ~(~_wgslsmith_add_vec2_u32(vec2<u32>(103916u, u_input.c.x), global2.c)), abs(global3.d.x | ~var_0.e), ~var_0.e));
    global3 = Struct_2(~(~85616u), Struct_1(func_1(vec3<u32>(u_input.c.x, global2.e, 1u), global4[_wgslsmith_index_u32(u_input.b, 23u)], global0.a.x) ^ abs(37660i), -2147483647i, global2.c, 28483u, ~(global3.b.c.x >> (~global0.b % 32u))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-global3.c), vec4<f32>(global0.a.x, -329f, global3.c.x, _wgslsmith_f_op_f32(-174f * _wgslsmith_f_op_f32(2127f - global0.a.x)))), vec3<u32>(var_0.c.x, _wgslsmith_clamp_u32(1u, reverseBits(_wgslsmith_clamp_u32(4294967295u, 31874u, 60526u)), func_4(_wgslsmith_div_vec3_f32(global0.a, vec3<f32>(-927f, -1996f, global3.c.x)), vec2<f32>(599f, -1126f), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1000f, 1610f, global3.c.x, -1000f))), Struct_1(8819i, global3.b.a, vec2<u32>(18903u, global2.e), 61011u, 45373u)).b), 0u), firstTrailingBit(_wgslsmith_mult_vec2_u32(abs(vec2<u32>(global3.b.c.x, global3.d.x)), vec2<u32>(_wgslsmith_add_u32(u_input.b, 0u), var_0.e & 86322u))));
    let var_1 = vec4<u32>(global2.d, 10076u, 1u | ~_wgslsmith_mult_u32(global3.d.x, u_input.c.x), firstTrailingBit(1u)) << (~abs(_wgslsmith_mult_vec4_u32(min(vec4<u32>(44402u, 43246u, var_0.e, 77983u), vec4<u32>(0u, 31965u, global3.d.x, global3.a)), _wgslsmith_mod_vec4_u32(vec4<u32>(28510u, 1909u, global3.b.c.x, 25480u), u_input.a))) % vec4<u32>(32u));
    let var_2 = ~vec4<u32>(_wgslsmith_dot_vec4_u32(max(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 75162u, global3.d.x, var_1.x), vec4<u32>(0u, 1294u, 1160u, 70008u)), _wgslsmith_div_vec4_u32(u_input.a, u_input.a)), _wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(global0.b, global3.d.x, var_0.e, 0u), var_1), max(vec4<u32>(global0.b, 0u, var_0.c.x, 1u), var_1))), _wgslsmith_add_u32(countOneBits(0u), 0u), _wgslsmith_add_u32(46516u, _wgslsmith_div_u32(min(var_0.e, global0.b), 0u)), firstLeadingBit(6279u));
    var var_3 = Struct_2(~_wgslsmith_dot_vec2_u32(vec2<u32>(global2.c.x, 1u & global3.a), ~vec2<u32>(global2.c.x, 46276u)), global4[_wgslsmith_index_u32(9068u, 23u)], _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(global3.c))), _wgslsmith_div_vec4_f32(global3.c, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-718f, global3.c.x, global0.a.x, global3.c.x))), vec4<bool>(select(true, true, true), true, false, false))) * vec4<f32>(_wgslsmith_f_op_f32(-global3.c.x), global3.c.x, _wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-919f, global0.a.x, global0.a.x, -1443f) - global3.c), vec2<bool>(false, false), u_input.a, global3.c.ww)).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global3.c.x))))), _wgslsmith_sub_vec3_u32(abs(min(vec3<u32>(global3.d.x, var_0.d, var_0.c.x) & u_input.a.zyw, _wgslsmith_add_vec3_u32(var_2.wxy, var_1.wxx))), vec3<u32>(~(~16875u), var_1.x, 1u)), global3.b.c);
    let x = u_input.a;
    s_output = StorageBuffer(var_1, select(vec2<i32>(var_0.a, global2.b), _wgslsmith_sub_vec2_i32(~(-vec2<i32>(-37998i, var_0.b)), ~(~vec2<i32>(-1i, var_0.a))), !(!func_3(global0.a.x, true).zy)), _wgslsmith_sub_vec2_i32(~vec2<i32>(-52800i, -1i) ^ (select(vec2<i32>(2147483647i, global2.b), vec2<i32>(var_0.a, global3.b.b), vec2<bool>(false, true)) >> (firstTrailingBit(var_0.c) % vec2<u32>(32u))), ~vec2<i32>(global3.b.a, -38218i)), vec4<u32>(reverseBits(global3.a), _wgslsmith_mod_u32(_wgslsmith_add_u32(0u, var_2.x), 29148u) >> (u_input.a.x % 32u), min(var_1.x, firstLeadingBit(_wgslsmith_div_u32(1u, u_input.c.x))), ~(var_0.c.x << (~global2.c.x % 32u))));
}

