struct Struct_1 {
    a: bool,
    b: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: u32,
}

struct Struct_5 {
    a: u32,
    b: vec4<f32>,
    c: f32,
    d: Struct_2,
    e: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 215f;

var<private> global1: i32 = 1i;

var<private> global2: vec3<i32> = vec3<i32>(54672i, 2147483647i, 32565i);

var<private> global3: bool;

var<private> global4: array<f32, 28> = array<f32, 28>(991f, -2154f, 1000f, 258f, 503f, -909f, 547f, -990f, -821f, -284f, 978f, 883f, -994f, 1000f, 1146f, -2178f, 682f, 1000f, 266f, -640f, 251f, -621f, 1645f, 700f, 1320f, -948f, -1563f, -206f);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_4) -> vec4<f32> {
    var var_0 = arg_0.a.c;
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(989f, 525f, var_0.b, global4[_wgslsmith_index_u32(arg_0.a.c.a, 28u)]) - vec4<f32>(-793f, -622f, 944f, -1224f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.c.b, global4[_wgslsmith_index_u32(1u, 28u)], global4[_wgslsmith_index_u32(65618u, 28u)], arg_0.a.c.b)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b, 232f, arg_0.a.c.b, -752f) + vec4<f32>(-922f, 1000f, arg_0.a.c.b, global4[_wgslsmith_index_u32(38970u, 28u)])))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4[_wgslsmith_index_u32(arg_0.b, 28u)], -717f, global4[_wgslsmith_index_u32(4294967295u, 28u)], -1000f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1865f, var_0.b, -554f, global4[_wgslsmith_index_u32(var_0.a, 28u)])))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-542f, -759f, var_0.b, -1715f) * _wgslsmith_div_vec4_f32(vec4<f32>(575f, arg_0.a.c.b, 430f, -222f), vec4<f32>(1000f, global4[_wgslsmith_index_u32(arg_0.a.c.a, 28u)], global4[_wgslsmith_index_u32(4294967295u, 28u)], -532f))))));
    var var_2 = !(true | any(select(!vec4<bool>(arg_0.a.c.c.a, false, var_0.c.a, var_0.c.a), select(vec4<bool>(arg_0.a.b, true, var_0.c.a, arg_0.a.b), vec4<bool>(true, arg_0.a.c.c.a, arg_0.a.b, true), vec4<bool>(false, false, arg_0.a.b, true)), vec4<bool>(var_0.c.a, false, arg_0.a.b, var_0.c.a))));
    var_0 = arg_0.a.c;
    var var_3 = arg_0;
    return vec4<f32>(120f, _wgslsmith_f_op_f32(var_1.x + 2474f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3.a.c.b, _wgslsmith_f_op_f32(1247f - var_0.b))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-235f, _wgslsmith_f_op_f32(f32(-1f) * -984f)))));
}

fn func_4(arg_0: Struct_5, arg_1: vec2<i32>) -> vec3<u32> {
    global3 = !arg_0.d.c.a == arg_0.d.c.a;
    let var_0 = Struct_3(Struct_1(true, max(_wgslsmith_mod_vec2_i32(global2.zy ^ arg_0.d.c.b, vec2<i32>(u_input.c.x, arg_0.d.c.b.x)), ~(-vec2<i32>(arg_1.x, global2.x)))), !arg_0.d.c.a, arg_0.d);
    let var_1 = 0u;
    var var_2 = firstLeadingBit(_wgslsmith_add_i32(~1i, ~global2.x));
    var var_3 = ~(vec3<i32>(-var_0.c.c.b.x, -16157i, 2147483647i) ^ _wgslsmith_div_vec3_i32(vec3<i32>(~(-624i), ~arg_1.x, 56782i | u_input.b), vec3<i32>(-u_input.c.x, u_input.b, -6826i)));
    return ~abs(~firstLeadingBit(~vec3<u32>(var_1, var_0.c.a, 1u)));
}

fn func_2() -> Struct_3 {
    let var_0 = vec3<bool>(true, true, true);
    var var_1 = _wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(~select(vec3<u32>(1u, 7705u, 2995u), vec3<u32>(3821u, 78199u, 1u), vec3<bool>(false, true, true)) >> (vec3<u32>(~1u, abs(6823u), 1u) % vec3<u32>(32u)), vec3<u32>(1u, 1u, 1u) << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))), func_4(Struct_5(1u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(Struct_4(Struct_3(Struct_1(var_0.x, vec2<i32>(12469i, global2.x)), var_0.x, Struct_2(0u, global4[_wgslsmith_index_u32(0u, 28u)], Struct_1(true, vec2<i32>(global2.x, 20031i)))), 17621u, 1u)))), 1000f, Struct_2(~1u, -1687f, Struct_1(true, u_input.c)), ~_wgslsmith_div_u32(19292u, 10492u)), _wgslsmith_sub_vec2_i32(max(global2.xy, vec2<i32>(-12897i, 0i)), u_input.c) ^ global2.zx));
    var_1 = _wgslsmith_div_vec3_u32(vec3<u32>(abs(2186u), 26266u, _wgslsmith_clamp_u32(~(var_1.x << (var_1.x % 32u)), var_1.x, select(~var_1.x, firstTrailingBit(var_1.x), var_0.x))), ~vec3<u32>(_wgslsmith_add_u32(4294967295u, var_1.x), _wgslsmith_mult_u32(var_1.x, 1u), firstTrailingBit(28512u)) ^ ~(~(~vec3<u32>(19243u, var_1.x, var_1.x))));
    var var_2 = var_0;
    var_2 = vec3<bool>(!all(select(!vec4<bool>(true, var_2.x, var_2.x, true), select(vec4<bool>(true, var_0.x, var_0.x, false), vec4<bool>(var_2.x, var_2.x, var_2.x, true), var_0.x), vec4<bool>(true, false, var_0.x, var_2.x))), false, 1u < ~firstLeadingBit(var_1.x));
    return Struct_3(Struct_1(!all(select(vec3<bool>(var_2.x, false, true), var_0, vec3<bool>(var_2.x, var_2.x, false))), u_input.c), var_0.x, Struct_2(54388u, _wgslsmith_f_op_f32(trunc(global4[_wgslsmith_index_u32(1142u, 28u)])), Struct_1(true, firstLeadingBit(vec2<i32>(0i, 37023i)) | -global2.zx)));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_3) -> vec4<bool> {
    global4 = array<f32, 28>();
    var var_0 = abs(arg_1.c.c.b.x);
    global1 = ~min(i32(-1i) * -2147483647i, ~0i);
    let var_1 = Struct_5(4294967295u, vec4<f32>(_wgslsmith_f_op_f32(step(global4[_wgslsmith_index_u32(~23231u, 28u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c.b)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_3(Struct_4(arg_1, 49963u, 3380u))).x * global4[_wgslsmith_index_u32(select(2144u, ~4294967295u, any(vec2<bool>(false, arg_1.a.a))), 28u)]), 736f, _wgslsmith_f_op_f32(-arg_0.c.b)), global4[_wgslsmith_index_u32(~43744u & ~(_wgslsmith_mod_u32(arg_0.c.a, 52514u) ^ 4294967295u), 28u)], func_2().c, arg_0.c.a);
    global2 = vec3<i32>(-_wgslsmith_sub_i32(u_input.c.x, _wgslsmith_sub_i32(-2147483647i, u_input.b)), 48139i, _wgslsmith_dot_vec2_i32(-_wgslsmith_mult_vec2_i32(countOneBits(vec2<i32>(u_input.b, arg_1.a.b.x)), -vec2<i32>(arg_1.a.b.x, arg_0.a.b.x)), _wgslsmith_div_vec2_i32(vec2<i32>(global2.x, arg_1.c.c.b.x | 0i), max(select(vec2<i32>(arg_0.c.c.b.x, var_1.d.c.b.x), vec2<i32>(6910i, 45490i), var_1.d.c.a), vec2<i32>(32858i, 4899i) >> (vec2<u32>(arg_1.c.a, 51811u) % vec2<u32>(32u))))));
    return !select(select(select(!vec4<bool>(arg_1.c.c.a, true, arg_0.a.a, var_1.d.c.a), !vec4<bool>(arg_1.a.a, false, arg_0.a.a, var_1.d.c.a), false), !vec4<bool>(true, var_1.d.c.a, false, true), !arg_0.b), !(!vec4<bool>(false, false, false, arg_1.a.a)), !arg_0.c.c.a);
}

fn func_1() -> vec3<i32> {
    var var_0 = Struct_2(70607u, global4[_wgslsmith_index_u32(~1u, 28u)], Struct_1(true, global2.zy));
    let var_1 = func_5(func_2(), Struct_3(Struct_1(false, var_0.c.b), var_0.c.a, Struct_2(~64715u, _wgslsmith_f_op_f32(-var_0.b), Struct_1(false, max(u_input.a, vec2<i32>(0i, var_0.c.b.x))))));
    let var_2 = Struct_1(var_0.a == ~abs(~var_0.a), vec2<i32>(~global2.x, var_0.c.b.x));
    global4 = array<f32, 28>();
    global4 = array<f32, 28>();
    return -_wgslsmith_add_vec3_i32(-(vec3<i32>(global2.x, global2.x, var_0.c.b.x) ^ vec3<i32>(var_0.c.b.x, -6992i, -2147483647i)) << (vec3<u32>(72250u, ~45734u, 72281u) % vec3<u32>(32u)), abs(vec3<i32>(-24093i, 1i, var_2.b.x)) | -select(vec3<i32>(u_input.c.x, 2147483647i, var_0.c.b.x), vec3<i32>(-24438i, 2147483647i, 1i), true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!(!vec3<bool>(global4[_wgslsmith_index_u32(45419u, 28u)] <= 824f, true, true)));
    global2 = ~max(_wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(~vec3<i32>(-2147483647i, -2147483647i, global2.x), _wgslsmith_mult_vec3_i32(vec3<i32>(global2.x, 1i, 29147i), vec3<i32>(global2.x, 2147483647i, 0i))), vec3<i32>(_wgslsmith_div_i32(0i, u_input.c.x), abs(-2147483647i), global2.x), vec3<i32>(u_input.a.x, 41021i, 30293i)), max(vec3<i32>(select(0i, -2147483647i, false), 6006i, 1i), abs(func_1())));
    global3 = !(!select(var_0.x, true, firstLeadingBit(global2.x) > u_input.b));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(firstLeadingBit(1u), 28u)] + _wgslsmith_f_op_f32(f32(-1f) * -1007f))));
    var var_1 = Struct_4(func_2(), _wgslsmith_div_u32(1u, ~75102u), _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, ~21396u, 1u, ~4294967295u), vec4<u32>(_wgslsmith_mod_u32(0u, 15029u), 1u, _wgslsmith_add_u32(1u, ~4294967295u), abs(firstLeadingBit(0u)))));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~vec4<u32>(var_1.a.c.a | var_1.c, 0u, select(0u, 4294967295u, var_1.a.a.a), ~var_1.c)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global4[_wgslsmith_index_u32(var_1.b, 28u)], global4[_wgslsmith_index_u32(var_1.a.c.a, 28u)], 632f), vec3<f32>(global4[_wgslsmith_index_u32(var_1.b, 28u)], global4[_wgslsmith_index_u32(4294967295u, 28u)], 1218f), vec3<bool>(var_0.x, false, var_1.a.b)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4[_wgslsmith_index_u32(4294967295u, 28u)], 468f, 152f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global4[_wgslsmith_index_u32(var_1.a.c.a, 28u)], 1084f, var_1.a.c.b) + vec3<f32>(var_1.a.c.b, 144f, var_1.a.c.b)))))));
}

