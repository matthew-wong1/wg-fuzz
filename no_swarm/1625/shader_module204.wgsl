struct Struct_1 {
    a: bool,
    b: bool,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: u32,
    d: i32,
}

struct Struct_3 {
    a: f32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: f32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: array<vec2<i32>, 5>;

var<private> global2: array<vec3<u32>, 11>;

var<private> global3: vec3<u32> = vec3<u32>(11795u, 4294967295u, 35866u);

var<private> global4: array<f32, 14> = array<f32, 14>(-2545f, 1342f, 937f, 1142f, 2117f, 206f, -260f, -485f, 399f, -459f, -601f, 525f, -1564f, -1101f);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: f32) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1000f));
    global3 = _wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(global2[_wgslsmith_index_u32(~_wgslsmith_mod_u32(global0.x, global0.x << (0u % 32u)), 11u)], vec3<u32>(_wgslsmith_add_u32(global3.x, 6891u), global0.x, _wgslsmith_mult_u32(global0.x, 65472u)) ^ abs(vec3<u32>(u_input.c.x, 4294967295u, 36805u))), vec3<u32>(~0u, firstTrailingBit(global3.x >> (_wgslsmith_clamp_u32(global3.x, u_input.c.x, 0u) % 32u)), min(1u << (~global0.x % 32u), ~(~u_input.c.x))));
    return !vec4<bool>(true, (_wgslsmith_f_op_f32(350f - global4[_wgslsmith_index_u32(global3.x, 14u)]) < -251f) || any(vec2<bool>(true, true)), any(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), true), vec4<bool>(false, true, false, false), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true)))), all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), true)));
}

fn func_2() -> Struct_1 {
    var var_0 = vec2<i32>(_wgslsmith_mult_i32(-_wgslsmith_sub_i32(11485i, u_input.a), -u_input.b), abs(_wgslsmith_add_i32(83356i, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -92514i), global1[_wgslsmith_index_u32(global3.x, 5u)])))) ^ global1[_wgslsmith_index_u32(0u, 5u)];
    global0 = _wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(0u, global3.x & 9064u, ~u_input.c.x, global3.x), ~(~(vec4<u32>(0u, u_input.c.x, global3.x, u_input.c.x) << (vec4<u32>(global3.x, 32138u, 90007u, 22795u) % vec4<u32>(32u))))), vec4<u32>(~(~global0.x), 4294967295u, u_input.c.x, 0u));
    let var_1 = -(~global1[_wgslsmith_index_u32(global0.x, 5u)]) << (u_input.c % vec2<u32>(32u));
    var var_2 = Struct_2(Struct_1(select(any(vec3<bool>(true, true, false)), true, any(vec3<bool>(true, true, true))), all(vec2<bool>(any(vec3<bool>(false, true, false)), u_input.a < var_0.x)), vec4<bool>(true, all(func_3(global4[_wgslsmith_index_u32(global3.x, 14u)])), true, any(vec2<bool>(false, true)))), -(~(~_wgslsmith_clamp_vec4_i32(vec4<i32>(-23313i, -1i, 18812i, u_input.b), vec4<i32>(var_0.x, -69836i, -54411i, var_1.x), vec4<i32>(var_1.x, 1i, 1i, u_input.a)))), (global0.x >> (firstLeadingBit(global0.x) % 32u)) << (countOneBits(_wgslsmith_clamp_u32(global0.x, _wgslsmith_mod_u32(4294967295u, global3.x), global0.x)) % 32u), var_1.x);
    global0 = ~vec4<u32>(_wgslsmith_add_u32(_wgslsmith_add_u32(var_2.c, countOneBits(global3.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(37536u, 30043u, global3.x), _wgslsmith_clamp_vec3_u32(vec3<u32>(global3.x, 1u, 4294967295u), global0.yyy, global2[_wgslsmith_index_u32(global0.x, 11u)]))), var_2.c, global3.x, 114686u);
    return Struct_1(true, any(var_2.a.c.xw) && var_2.a.c.x, !vec4<bool>(var_2.a.c.x, reverseBits(global0.x) != _wgslsmith_mult_u32(u_input.c.x, 33557u), 0i < var_0.x, true));
}

fn func_1() -> vec3<bool> {
    var var_0 = Struct_2(func_2(), _wgslsmith_add_vec4_i32(vec4<i32>(1i, firstLeadingBit(-10677i), firstLeadingBit(-2574i), u_input.b), abs(_wgslsmith_sub_vec4_i32(reverseBits(vec4<i32>(u_input.a, u_input.b, u_input.b, u_input.b)), firstLeadingBit(vec4<i32>(0i, u_input.b, u_input.a, 0i))))), global0.x, -_wgslsmith_dot_vec4_i32(vec4<i32>(48329i, u_input.a, u_input.a, u_input.a) ^ ~vec4<i32>(u_input.a, -1i, -2147483647i, 0i), -_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, u_input.b, 2147483647i, u_input.b), vec4<i32>(u_input.a, u_input.b, 7909i, -2147483647i))));
    var var_1 = Struct_3(global4[_wgslsmith_index_u32(_wgslsmith_add_u32(~(~u_input.c.x), 4294967295u), 14u)], _wgslsmith_mult_vec4_i32(-var_0.b, countOneBits(~(~var_0.b))));
    var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.c.x, u_input.c.x), 14u)] - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(451f - -1773f)))), ~vec4<i32>(_wgslsmith_sub_i32(-2147483647i, -2147483647i), -var_1.b.x, u_input.a, var_1.b.x));
    let var_2 = var_1.b.xzz;
    return func_2().c.wxw;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(all(!select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), true);
    global3 = ~reverseBits(_wgslsmith_mult_vec3_u32(countOneBits(global0.www), ~global2[_wgslsmith_index_u32(global3.x & 1u, 11u)]));
    var var_1 = select(!vec3<bool>(true, any(!vec2<bool>(var_0.x, var_0.x)), false), select(select(vec3<bool>(any(vec4<bool>(var_0.x, var_0.x, var_0.x, true)), !var_0.x, all(vec2<bool>(var_0.x, true))), func_1(), vec3<bool>(false, select(var_0.x, true, var_0.x), var_0.x && var_0.x)), vec3<bool>(func_1().x, true, 0u <= max(global0.x, global0.x)), vec3<bool>(min(6912u, 4294967295u) == global3.x, var_0.x, any(func_2().c.xwz))), var_0.x);
    var_1 = !vec3<bool>(true, func_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-737f, 1101f))).x, true);
    global4 = array<f32, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, _wgslsmith_mult_i32(0i, 2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(28672i, -1i, u_input.a, 1i), vec4<i32>(u_input.a, u_input.b, u_input.a, -2147483647i))), -reverseBits(vec3<i32>(u_input.b, 0i, u_input.a))), firstTrailingBit(reverseBits(vec3<i32>(u_input.b, u_input.b, u_input.a) ^ vec3<i32>(u_input.a, u_input.b, 2147483647i)))), firstTrailingBit(~_wgslsmith_sub_vec2_u32(u_input.c, vec2<u32>(0u, global3.x))) << (_wgslsmith_mult_vec2_u32(firstTrailingBit(global0.yz), abs(u_input.c)) % vec2<u32>(32u)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -388f) + _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(1u, 14u)])))), abs(~(min(global0.x, 41837u) & ~u_input.c.x)), _wgslsmith_f_op_f32(floor(2484f)));
}

