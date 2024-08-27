struct Struct_1 {
    a: u32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: u32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: i32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: i32,
    c: Struct_3,
}

struct Struct_5 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
    c: u32,
    d: vec3<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(0i, 2255i, -11081i);

var<private> global1: Struct_5 = Struct_5(vec4<i32>(2147483647i, 2147483647i, i32(-2147483648), 2147483647i));

var<private> global2: array<vec3<u32>, 5> = array<vec3<u32>, 5>(vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(1u, 746u, 62517u), vec3<u32>(46762u, 38564u, 7609u), vec3<u32>(0u, 1u, 4713u), vec3<u32>(10389u, 11611u, 20330u));

var<private> global3: array<Struct_3, 31>;

var<private> global4: bool = false;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<u32> {
    global0 = _wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(~_wgslsmith_div_vec3_i32(vec3<i32>(global0.x, 18678i, global0.x), vec3<i32>(-1i, 50281i, 1878i)), u_input.b), _wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(-global1.a.xyz, -global1.a.wxw), (min(u_input.b, global1.a.xww) ^ max(global1.a.wyx, vec3<i32>(2147483647i, -1i, 2147483647i))) << ((vec3<u32>(1u, 4294967295u, 53946u) >> (~global2[_wgslsmith_index_u32(44524u, 5u)] % vec3<u32>(32u))) % vec3<u32>(32u))));
    var var_0 = !all(vec2<bool>(true, all(select(vec2<bool>(false, true), vec2<bool>(true, false), false))));
    global4 = true;
    global0 = vec3<i32>(global1.a.x, -_wgslsmith_dot_vec4_i32(global1.a, ~global1.a), _wgslsmith_mult_i32(u_input.a, -global0.x));
    global3 = array<Struct_3, 31>();
    return vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_mult_u32(~0u, _wgslsmith_clamp_u32(92388u, 1u, 26080u)), ~1u), min(~1u, ~(~1u)), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(global2[_wgslsmith_index_u32(591u, 5u)], ~vec3<u32>(1u, 0u, 0u)), 84079u), 33701u) | countOneBits(vec4<u32>(_wgslsmith_mod_u32(~58596u, 1u), 1u, 6681u, ~4924u));
}

fn func_2(arg_0: u32) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(2437f)) - -850f) * 2381f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(1860f, 1f)))));
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_0, arg_0), 5u)];
    var var_2 = Struct_2(func_3(), _wgslsmith_dot_vec3_u32(max(_wgslsmith_mult_vec3_u32(vec3<u32>(6475u, 4743u, 161776u) >> (global2[_wgslsmith_index_u32(36840u, 5u)] % vec3<u32>(32u)), global2[_wgslsmith_index_u32(arg_0 << (32135u % 32u), 5u)]), _wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(global2[_wgslsmith_index_u32(var_1.x, 5u)], global2[_wgslsmith_index_u32(var_1.x, 5u)], vec3<u32>(35246u, 4294967295u, 1u)), _wgslsmith_add_vec3_u32(global2[_wgslsmith_index_u32(arg_0, 5u)], global2[_wgslsmith_index_u32(1u, 5u)]))), ~(~(~global2[_wgslsmith_index_u32(4294967295u, 5u)]))), Struct_1(arg_0, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -393f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1371f), _wgslsmith_f_op_f32(sign(-464f))))), Struct_1(56874u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-2430f, 514f))) * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1000f, -1000f)))))));
    global4 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_2.c.b.x)) - _wgslsmith_div_f32(var_2.d.b.x, -1247f))))) < _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.c.b.x) * _wgslsmith_f_op_f32(abs(var_2.c.b.x))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1000f * var_2.c.b.x))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_2.d.b.x)))))) * var_2.c.b.x);
    return 576u;
}

fn func_1() -> StorageBuffer {
    var var_0 = global3[_wgslsmith_index_u32(func_2(~51283u) ^ ~4294967295u, 31u)];
    global2 = array<vec3<u32>, 5>();
    global3 = array<Struct_3, 31>();
    let var_1 = Struct_2(~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(66365u, 924u, 55933u, 42874u), vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(9143u, 1u, 4294967295u, 4294967295u))), 1u, Struct_1(~_wgslsmith_add_u32(_wgslsmith_div_u32(30946u, 4294967295u), ~0u), vec2<f32>(1948f, -214f)), Struct_1(~(~(~55594u)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 1618f) * _wgslsmith_div_vec2_f32(var_0.a, var_0.a))))));
    global3 = array<Struct_3, 31>();
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(var_0.a + var_0.a))), _wgslsmith_div_vec4_i32(global1.a, vec4<i32>(0i, _wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(var_0.b, -1i)), _wgslsmith_add_vec2_i32(u_input.b.xz, vec2<i32>(-15540i, global0.x))), 0i, firstTrailingBit(~global1.a.x))), _wgslsmith_sub_u32(max(select(func_2(98664u), 31600u, -2147483647i <= global0.x), ~_wgslsmith_dot_vec4_u32(var_1.a, var_1.a)), 0u), vec3<u32>(47505u, 66235u | var_1.c.a, ~93109u), 176f);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

