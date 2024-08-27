struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
    d: vec4<f32>,
    e: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec3<f32>,
    d: vec4<i32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 18>;

var<private> global1: array<u32, 15> = array<u32, 15>(0u, 3830u, 1u, 79382u, 4294967295u, 12685u, 4294967295u, 46376u, 116369u, 0u, 18077u, 71582u, 27725u, 1u, 1u);

var<private> global2: Struct_1 = Struct_1(vec2<u32>(39236u, 11973u), i32(-2147483648), 738f, -415f);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
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

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> vec3<u32> {
    let var_0 = !(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), false)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), false), vec4<bool>(true, true, true, true), all(vec4<bool>(false, false, true, false))), false));
    let var_1 = vec3<u32>(arg_2.a.x, ~(~(~4294967295u << (reverseBits(global2.a.x) % 32u))), (_wgslsmith_sub_u32(_wgslsmith_mult_u32(arg_1, 61181u), arg_2.a.x >> (arg_0.a.x % 32u)) | arg_2.a.x) >> (arg_0.a.x % 32u));
    let var_2 = Struct_3(Struct_1(~(firstLeadingBit(arg_2.a) & _wgslsmith_mult_vec2_u32(u_input.a, var_1.zy)), -1i, 1024f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.d + arg_2.c), 1211f) * 960f)), Struct_1(reverseBits(firstTrailingBit(vec2<u32>(u_input.a.x, 1u)) >> (~vec2<u32>(u_input.a.x, arg_0.a.x) % vec2<u32>(32u))), _wgslsmith_dot_vec4_i32(abs(select(vec4<i32>(0i, 2147483647i, global2.b, arg_2.b), vec4<i32>(-2147483647i, -2147483647i, global2.b, global2.b), false)), vec4<i32>(_wgslsmith_mod_i32(arg_2.b, 1i), 10678i, arg_2.b, 0i)), arg_0.c, arg_0.d), Struct_2(vec2<bool>(var_0.x, var_0.x)), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -119f) - arg_2.d), _wgslsmith_f_op_f32(-arg_0.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -960f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(-626f, 1111f)), _wgslsmith_f_op_f32(max(-507f, 517f)), _wgslsmith_f_op_f32(-1088f - arg_2.d), global2.c))), true);
    global1 = array<u32, 15>();
    var var_3 = Struct_3(arg_2, Struct_1(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.b.a.x, var_1.x, arg_2.a.x, arg_1), vec4<u32>(var_1.x, var_1.x, var_2.a.a.x, 75617u)), max(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, arg_0.a.x), 15u)], 15u)], _wgslsmith_sub_u32(0u, var_1.x))), -107632i, arg_2.d, _wgslsmith_f_op_f32(trunc(global2.d))), Struct_2(var_2.c.a), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.b.d, var_2.d.x, _wgslsmith_f_op_f32(arg_2.d * _wgslsmith_f_op_f32(-arg_2.d)), arg_2.d) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(114f, global2.d, arg_2.c, global2.d)), var_2.d)), true);
    return select(~vec3<u32>(_wgslsmith_div_u32(4294967295u << (arg_0.a.x % 32u), u_input.a.x), abs(3450u), var_1.x), firstLeadingBit(vec3<u32>(_wgslsmith_sub_u32(~var_2.a.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(30324u, var_2.a.a.x, 44141u, var_2.a.a.x), vec4<u32>(0u, var_2.b.a.x, var_2.b.a.x, 4294967295u))), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, var_3.b.a.x), countOneBits(var_1)), ~(~0u))), select(!vec3<bool>(true, var_2.e, arg_2.b <= 20318i), select(select(var_0.zyz, var_0.xxy, true), vec3<bool>(true, false, true), all(vec4<bool>(var_0.x, var_3.e, false, true)) && any(vec3<bool>(var_2.c.a.x, var_2.e, var_0.x))), !(arg_0.b < arg_0.b) || false));
}

fn func_2() -> Struct_3 {
    global0 = array<Struct_1, 18>();
    var var_0 = vec4<i32>(global2.b, reverseBits(firstLeadingBit(global2.b)), -1i, -1i);
    let var_1 = ~(~_wgslsmith_mod_vec3_u32(~vec3<u32>(1u, 34434u, global1[_wgslsmith_index_u32(63702u, 15u)]), func_3(Struct_1(u_input.a, var_0.x, global2.d, 1130f), 69353u, global0[_wgslsmith_index_u32(global2.a.x, 18u)]))) ^ ~_wgslsmith_sub_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(global2.a.x, 15u)], global1[_wgslsmith_index_u32(58793u, 15u)], 54467u), vec3<u32>(global2.a.x, u_input.a.x, 5739u)), abs(vec3<u32>(90944u, 1u, 4294967295u)) ^ reverseBits(vec3<u32>(0u, 0u, u_input.a.x)));
    let var_2 = global0[_wgslsmith_index_u32(16274u, 18u)];
    let var_3 = Struct_1(vec2<u32>(45549u, 31636u), var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -157f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.c - var_2.d), _wgslsmith_f_op_f32(global2.c - 1170f))))), _wgslsmith_div_f32(1418f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_2.d)), _wgslsmith_f_op_f32(f32(-1f) * -1331f)))));
    return Struct_3(Struct_1(~(~_wgslsmith_div_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(global2.a.x, 15u)], var_1.x), var_1.yx)), _wgslsmith_dot_vec4_i32(~_wgslsmith_mult_vec4_i32(vec4<i32>(var_3.b, global2.b, global2.b, global2.b), vec4<i32>(1i, var_2.b, var_0.x, 2147483647i)), _wgslsmith_div_vec4_i32(vec4<i32>(var_3.b, -1978i, 50561i, var_2.b), ~vec4<i32>(global2.b, global2.b, -2147483647i, 9643i))), _wgslsmith_f_op_f32(f32(-1f) * -880f), var_2.c), global0[_wgslsmith_index_u32(2783u, 18u)], Struct_2(select(vec2<bool>(false, true), vec2<bool>(true, all(vec3<bool>(true, false, true))), !select(vec2<bool>(false, false), vec2<bool>(false, false), true))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1117f, -313f, var_2.c, global2.c)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(474f, 867f, 585f, 146f) * vec4<f32>(var_2.d, -498f, 457f, global2.c)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(528f, var_2.c, var_3.d, var_2.c) - vec4<f32>(global2.d, 1191f, -189f, var_2.d)))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(675f, -1162f, var_2.d, global2.c) + vec4<f32>(var_3.d, 1770f, global2.c, var_2.c)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-853f, var_3.c, 532f, -976f))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_3.c, global2.c, var_2.d, -671f))))), all(select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true)), !select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), true), 52633u > u_input.a.x)));
}

fn func_1(arg_0: i32, arg_1: vec4<i32>, arg_2: f32, arg_3: i32) -> Struct_3 {
    var var_0 = arg_1.x;
    var_0 = arg_3;
    return func_2();
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: u32, arg_3: Struct_3) -> u32 {
    global2 = func_1(global2.b, abs(((vec4<i32>(21264i, global2.b, arg_3.a.b, 50889i) ^ vec4<i32>(global2.b, global2.b, 52840i, global2.b)) ^ ~vec4<i32>(-53459i, arg_3.b.b, 1i, arg_3.a.b)) | ~vec4<i32>(0i, -38882i, -2147483647i, -1i)), global2.d, arg_3.b.b).b;
    global2 = func_2().b;
    var var_0 = vec4<u32>(73374u, _wgslsmith_mod_u32(abs(abs(u_input.a.x)), _wgslsmith_add_u32(u_input.a.x, global2.a.x)), reverseBits(14084u), ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(func_1(~(-7200i), _wgslsmith_sub_vec4_i32(vec4<i32>(-8882i, 1i, arg_3.b.b, arg_3.a.b), vec4<i32>(-1i, 51456i, -10016i, 1i)), -1748f, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_3.b.b, global2.b, -12469i), vec3<i32>(global2.b, 59424i, 37412i))).b.a.x & reverseBits(9913u & arg_2), 15u)], 15u)]);
    global1 = array<u32, 15>();
    var var_1 = vec4<bool>(true, !arg_3.e, !arg_3.e, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_3.d.x, 554f))))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -501f) - -261f));
    return 26460u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstLeadingBit(global2.b);
    let var_1 = _wgslsmith_clamp_vec4_i32(vec4<i32>(i32(-1i) * -2147483647i, -_wgslsmith_mod_i32(global2.b, global2.b), 35201i, i32(-1i) * -global2.b) >> (vec4<u32>(firstTrailingBit(min(global1[_wgslsmith_index_u32(15123u, 15u)], 1u)), ~abs(global2.a.x), 1u >> (~u_input.a.x % 32u), u_input.a.x) % vec4<u32>(32u)), vec4<i32>(-1i) * -(vec4<i32>(-1i) * -vec4<i32>(1i, global2.b, global2.b, 1i)), countOneBits(select(min(~vec4<i32>(global2.b, 20959i, global2.b, 1i), vec4<i32>(global2.b, -11306i, 29144i, global2.b) << (vec4<u32>(37029u, 0u, 0u, 4294967295u) % vec4<u32>(32u))), abs(select(vec4<i32>(-44521i, -2147483647i, 3078i, global2.b), vec4<i32>(global2.b, global2.b, global2.b, global2.b), true)), all(vec4<bool>(true, true, true, true)))));
    global0 = array<Struct_1, 18>();
    var var_2 = Struct_3(global0[_wgslsmith_index_u32(~0u & (global1[_wgslsmith_index_u32(func_4(_wgslsmith_div_f32(-470f, 631f), _wgslsmith_f_op_f32(-global2.d), countOneBits(4294967295u), func_1(var_1.x, var_1, global2.c, 24625i)), 15u)] << (1u % 32u)), 18u)], func_2().b, func_1(global2.b, -vec4<i32>(select(var_1.x, var_1.x, true), 0i, var_1.x | -2147483647i, _wgslsmith_mod_i32(global2.b, 3830i)), global2.d, -2147483647i).c, vec4<f32>(_wgslsmith_f_op_f32(620f - 1195f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.d - _wgslsmith_f_op_f32(-global2.d))), global2.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1865f)))), true);
    let var_3 = var_2.e;
    let var_4 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_2.d.x, var_2.d.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.d - global2.d)) * _wgslsmith_f_op_f32(trunc(global2.c))), _wgslsmith_f_op_f32(ceil(var_2.a.c))), var_2.e));
    let var_5 = var_2.c.a;
    let var_6 = global2.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_4, var_2.d.x))), _wgslsmith_f_op_f32(f32(-1f) * -825f), -1271f, 910f))), -(~_wgslsmith_sub_i32(var_2.a.b, ~global2.b)), _wgslsmith_f_op_vec3_f32(var_2.d.wyw - var_2.d.yxy), var_1, vec4<u32>(~global2.a.x << (1u % 32u), _wgslsmith_dot_vec3_u32(abs(vec3<u32>(83476u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(87461u, 15u)], 15u)], 15u)], 58782u) | vec3<u32>(1u, 4294967295u, 86878u)), _wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, 4294967295u, 6667u), vec3<u32>(10640u, 0u, global1[_wgslsmith_index_u32(global2.a.x, 15u)])), ~vec3<u32>(30472u, var_2.b.a.x, global2.a.x))), global2.a.x, min(global2.a.x, 4294967295u)));
}

