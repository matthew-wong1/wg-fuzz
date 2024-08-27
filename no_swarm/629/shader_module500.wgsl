struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec3<bool>,
    b: f32,
    c: Struct_3,
    d: vec4<f32>,
}

struct Struct_5 {
    a: vec2<bool>,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
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

var<private> global0: array<Struct_4, 28>;

var<private> global1: array<Struct_4, 29>;

var<private> global2: array<f32, 19> = array<f32, 19>(-796f, 1000f, -1016f, -458f, 1330f, 1611f, -692f, 686f, 1024f, 687f, 273f, -1000f, -878f, -781f, -699f, -1012f, 191f, 274f, -1173f);

var<private> global3: Struct_2 = Struct_2(Struct_1(vec3<f32>(-640f, 1000f, -921f), 0u, vec2<u32>(0u, 1288u)), vec2<u32>(23303u, 25893u), Struct_1(vec3<f32>(1839f, -125f, -447f), 4294967295u, vec2<u32>(4294967295u, 6718u)));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec4<u32>) -> vec4<i32> {
    let var_0 = Struct_5(!vec2<bool>(true & (arg_0.x < arg_0.x), any(vec4<bool>(true, true, true, true))), Struct_3(-u_input.a.x));
    var var_1 = global3.b.x;
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1385f, global3.c.a.x, global3.c.a.x))) + _wgslsmith_f_op_vec3_f32(global3.c.a - global3.c.a))), ~(~(33563u >> (global3.b.x % 32u))), _wgslsmith_mult_vec2_u32((vec2<u32>(arg_0.x, arg_0.x) << (global3.c.c % vec2<u32>(32u))) & _wgslsmith_clamp_vec2_u32(global3.c.c, arg_0.yz, global3.b), vec2<u32>(global3.b.x, global3.c.b) ^ global3.c.c)), global3.b, Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-761f, global3.a.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1260f)) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(global3.a.a.x, 1328f, global2[_wgslsmith_index_u32(39612u, 19u)])))), ~(~_wgslsmith_add_u32(33403u, arg_0.x)), vec2<u32>(65743u, arg_0.x)));
    var var_3 = global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(~(~1u), max(_wgslsmith_dot_vec2_u32(vec2<u32>(global3.b.x, var_2.b.x), firstLeadingBit(global3.b)), countOneBits(~0u))), 28u)];
    let var_4 = vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1452f, 882f))), global3.a.a.x, (~arg_0.x != _wgslsmith_add_u32(0u, global3.c.c.x)) && true)), global2[_wgslsmith_index_u32(reverseBits(~global3.a.b), 19u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-609f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - global3.c.a.x));
    return _wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(select(firstLeadingBit(vec4<i32>(-10114i, var_3.c.a, 2147483647i, var_0.b.a)), vec4<i32>(23008i, 2147483647i, -17823i, 1i) & vec4<i32>(u_input.a.x, 1i, 44927i, 1i), !vec4<bool>(var_3.a.x, true, false, var_3.a.x)), firstLeadingBit(vec4<i32>(-1i, var_3.c.a, 1884i, 33947i)) >> (vec4<u32>(arg_0.x, arg_0.x, 0u, global3.a.b) % vec4<u32>(32u)), firstLeadingBit(-vec4<i32>(-7511i, var_3.c.a, -2147483647i, var_0.b.a))), reverseBits(_wgslsmith_div_vec4_i32(select(vec4<i32>(var_0.b.a, 31837i, -56269i, -61025i), vec4<i32>(var_0.b.a, 0i, var_0.b.a, 47630i), vec4<bool>(var_0.a.x, true, var_0.a.x, false)), vec4<i32>(u_input.a.x, var_0.b.a, -4345i, var_3.c.a) >> (arg_0 % vec4<u32>(32u))))) & countOneBits(min(vec4<i32>(-1i, var_3.c.a, u_input.a.x ^ -39947i, ~u_input.a.x), -firstLeadingBit(vec4<i32>(2147483647i, var_0.b.a, var_3.c.a, 2147483647i))));
}

fn func_2(arg_0: Struct_2) -> vec3<u32> {
    global3 = Struct_2(global3.c, abs(~(~global3.c.c)), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(1051f)), _wgslsmith_f_op_f32(1358f + global2[_wgslsmith_index_u32(arg_0.b.x, 19u)]), global2[_wgslsmith_index_u32(abs(1u), 19u)])), ~_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 0u, global3.a.b, 46898u), vec4<u32>(1u, 1404u, 4294967295u, global3.a.b)), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, arg_0.c.c.x, 1u, 20588u), vec4<u32>(arg_0.b.x, 17206u, global3.a.b, global3.c.b))), arg_0.a.c));
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(arg_0.c.a + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(733f, global2[_wgslsmith_index_u32(arg_0.c.b, 19u)]) - _wgslsmith_div_f32(arg_0.c.a.x, global2[_wgslsmith_index_u32(global3.a.b, 19u)])), global2[_wgslsmith_index_u32(10494u, 19u)], _wgslsmith_f_op_f32(round(703f)))), global3.b.x, vec2<u32>(global3.b.x & (global3.a.c.x >> (arg_0.c.b % 32u)), _wgslsmith_dot_vec4_u32((vec4<u32>(arg_0.b.x, arg_0.c.c.x, arg_0.a.c.x, global3.c.c.x) | vec4<u32>(4294967295u, global3.a.c.x, 0u, arg_0.a.c.x)) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.b.x, 23285u, 6274u, 1u), vec4<u32>(1u, 54343u, 48735u, arg_0.c.c.x)), _wgslsmith_add_vec4_u32(vec4<u32>(50305u, 12743u, arg_0.b.x, arg_0.b.x), vec4<u32>(global3.b.x, 1u, 0u, 1u)))));
    global2 = array<f32, 19>();
    let var_1 = Struct_5(select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), !vec2<bool>(true, 4294967295u >= global3.a.c.x), false), Struct_3(abs(u_input.a.x)));
    let var_2 = func_3(~(~(~_wgslsmith_mod_vec4_u32(vec4<u32>(0u, arg_0.a.b, arg_0.a.b, 32495u), vec4<u32>(1u, global3.c.b, 0u, 18205u)))));
    return _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(min(global3.a.b, 12585u), _wgslsmith_add_u32(12605u, global3.b.x)) | ~(47454u & arg_0.b.x), 73645u, ~1u | select(_wgslsmith_mult_u32(0u, 1u), ~1u, var_1.b.a > var_1.b.a)), firstLeadingBit(_wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(11440u, 1u, arg_0.c.c.x), vec3<u32>(global3.c.c.x, 0u, var_0.b)), vec3<u32>(var_0.c.x, 0u, 1u), ~vec3<u32>(0u, 1u, 42328u))) >> (~select(_wgslsmith_mod_vec3_u32(vec3<u32>(24104u, 11268u, 32832u), vec3<u32>(arg_0.b.x, var_0.c.x, global3.b.x)), firstTrailingBit(vec3<u32>(arg_0.b.x, arg_0.c.b, 71770u)), vec3<bool>(false, true, false)) % vec3<u32>(32u)));
}

fn func_1() -> vec3<u32> {
    var var_0 = _wgslsmith_mod_i32(_wgslsmith_add_i32(u_input.a.x, u_input.a.x), u_input.a.x);
    var_0 = select(~(-_wgslsmith_mult_i32(~36622i, u_input.a.x)), u_input.a.x, all(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), true))));
    global1 = array<Struct_4, 29>();
    var_0 = i32(-1i) * -u_input.a.x;
    var_0 = (_wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.a.x & 1i, 2147483647i >> (global3.a.b % 32u)), vec3<i32>(_wgslsmith_sub_i32(u_input.a.x, u_input.a.x), u_input.a.x << (33237u % 32u), 1i & u_input.a.x)) << (((global3.a.c.x | global3.a.b) | abs(1u & global3.b.x)) % 32u)) << (global3.a.c.x % 32u);
    return firstTrailingBit(abs(func_2(Struct_2(global3.a, vec2<u32>(global3.a.b, 4294967295u), Struct_1(global3.c.a, global3.a.c.x, vec2<u32>(global3.a.b, 0u))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(_wgslsmith_add_vec3_u32(~vec3<u32>(3035u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 273u, 54618u), vec3<u32>(0u, global3.a.b, global3.b.x)), _wgslsmith_mod_u32(4294967295u, 98u)), _wgslsmith_sub_vec3_u32(func_1(), vec3<u32>(global3.b.x, 0u, _wgslsmith_mult_u32(global3.a.b, global3.a.b)))));
    var var_1 = u_input.a.x;
    global1 = array<Struct_4, 29>();
    var var_2 = Struct_2(global3.a, var_0.zy, global3.a);
    global0 = array<Struct_4, 28>();
    var var_3 = !vec3<bool>(all(vec2<bool>(true, true)), false, true);
    var_0 = vec3<u32>(_wgslsmith_dot_vec3_u32(firstLeadingBit(_wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(var_2.c.c.x, 4294967295u, global3.c.b), vec3<u32>(42754u, 22516u, var_2.c.b)), func_2(Struct_2(var_2.c, var_0.yy, Struct_1(vec3<f32>(-429f, 927f, global3.c.a.x), var_0.x, global3.a.c))))), _wgslsmith_mult_vec3_u32(vec3<u32>(14068u, global3.c.b, 4294967295u) ^ _wgslsmith_mod_vec3_u32(vec3<u32>(90056u, 1u, var_2.b.x), vec3<u32>(85162u, 0u, 1u)), vec3<u32>(1u, _wgslsmith_mod_u32(var_0.x, 1u), var_2.c.b))), var_2.c.b, 14615u);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x);
}

