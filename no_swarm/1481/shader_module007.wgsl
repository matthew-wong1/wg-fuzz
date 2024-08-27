struct Struct_1 {
    a: i32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_1,
    c: bool,
    d: u32,
    e: vec2<bool>,
}

struct Struct_5 {
    a: f32,
    b: Struct_3,
    c: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
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

var<private> global0: array<Struct_4, 18>;

var<private> global1: array<u32, 12>;

var<private> global2: array<Struct_4, 23>;

var<private> global3: u32 = 36002u;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: bool) -> vec3<i32> {
    var var_0 = true;
    var var_1 = arg_0.a;
    global1 = array<u32, 12>();
    global3 = 34990u;
    var var_2 = Struct_1(var_1.x, arg_0.b.b);
    return _wgslsmith_clamp_vec3_i32(~(arg_0.a | arg_0.a), reverseBits(_wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-1i, -17601i, arg_0.a.x), vec3<i32>(u_input.b, 28188i, var_1.x)), arg_0.a)), abs(countOneBits(firstLeadingBit(vec3<i32>(arg_0.a.x, 1i, var_2.a)))));
}

fn func_2(arg_0: vec4<u32>, arg_1: bool, arg_2: i32) -> vec3<i32> {
    return func_3(global2[_wgslsmith_index_u32(min(1u, 24920u ^ (arg_0.x >> (arg_0.x % 32u))) & 100849u, 23u)], true);
}

fn func_4(arg_0: vec3<i32>, arg_1: f32, arg_2: vec3<f32>, arg_3: u32) -> Struct_2 {
    var var_0 = ~(~vec4<u32>(reverseBits(arg_3), ~40048u, 30660u, u_input.a)) << (vec4<u32>(~4294967295u, ~1u, ~1u, 15468u) % vec4<u32>(32u));
    global1 = array<u32, 12>();
    let var_1 = 2147483647i;
    let var_2 = Struct_3(arg_0.zz);
    var var_3 = (_wgslsmith_dot_vec4_u32(~vec4<u32>(15448u, 47280u, global1[_wgslsmith_index_u32(4294967295u, 12u)], 39247u), countOneBits(vec4<u32>(1u, global1[_wgslsmith_index_u32(u_input.a, 12u)], arg_3, global1[_wgslsmith_index_u32(var_0.x, 12u)]) | vec4<u32>(var_0.x, arg_3, 9748u, u_input.a))) >= var_0.x) && true;
    return Struct_2(9799i, Struct_1(-2147483647i, !(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), true))));
}

fn func_1() -> Struct_1 {
    global1 = array<u32, 12>();
    global2 = array<Struct_4, 23>();
    var var_0 = func_4(firstTrailingBit(~_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, u_input.b, -2147483647i), vec3<i32>(u_input.b, 48561i, u_input.b))) ^ ~_wgslsmith_sub_vec3_i32(func_2(vec4<u32>(global1[_wgslsmith_index_u32(u_input.a, 12u)], 26980u, 1u, 0u), true, 36313i), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, -19482i, -17494i), vec3<i32>(u_input.b, -2147483647i, u_input.b))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1720f - _wgslsmith_f_op_f32(step(565f, -1720f))), _wgslsmith_f_op_f32(step(-383f, -1000f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, -600f, _wgslsmith_f_op_f32(-425f + -1252f))), 2555u);
    let var_1 = _wgslsmith_clamp_vec2_i32(~_wgslsmith_mult_vec2_i32(~(vec2<i32>(-1i, u_input.b) & vec2<i32>(u_input.b, var_0.a)), func_2(abs(vec4<u32>(u_input.a, 99438u, 419u, global1[_wgslsmith_index_u32(1u, 12u)])), true, ~u_input.b).zy), firstTrailingBit(-firstTrailingBit(vec2<i32>(2147483647i, -1i)) >> (~(vec2<u32>(u_input.a, 49151u) >> (vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 12u)], 12u)], 12u)], global1[_wgslsmith_index_u32(7740u, 12u)]) % vec2<u32>(32u))) % vec2<u32>(32u))), vec2<i32>(func_2((vec4<u32>(67613u, u_input.a, 27559u, u_input.a) >> (vec4<u32>(global1[_wgslsmith_index_u32(u_input.a, 12u)], 0u, 51725u, 1u) % vec4<u32>(32u))) >> (vec4<u32>(42962u, global1[_wgslsmith_index_u32(4294967295u, 12u)], 1u, 37558u) % vec4<u32>(32u)), var_0.b.b.x, ~(-70698i)).x, u_input.b));
    global0 = array<Struct_4, 18>();
    return Struct_1(firstLeadingBit(-2147483647i | ~var_1.x), vec4<bool>(false, false, false, var_0.b.b.x));
}

fn func_5(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec3<u32>, arg_3: vec4<u32>) -> bool {
    var var_0 = _wgslsmith_mult_i32(~0i, u_input.b);
    let var_1 = arg_3.wzy;
    var var_2 = 1282u;
    var_0 = 2147483647i;
    global0 = array<Struct_4, 18>();
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 18>();
    let var_0 = ~u_input.a ^ ~1u;
    var var_1 = func_5(func_1(), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-357f, 779f, 663f) + vec3<f32>(-493f, -2588f, 829f)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1664f, -278f, -289f), vec3<f32>(2474f, 563f, -1776f), vec3<bool>(false, true, true))))) - vec3<f32>(_wgslsmith_f_op_f32(592f + _wgslsmith_f_op_f32(2147f + -1928f)), 1657f, -1276f)), ~max(_wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(1u, 12u)], 42671u, var_0), vec3<u32>(var_0, 30215u, 16000u)), _wgslsmith_sub_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(1u, 12u)], 32355u, var_0), vec3<u32>(u_input.a, 0u, u_input.a))), vec3<u32>(u_input.a, u_input.a, _wgslsmith_sub_u32(var_0, var_0))), vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(3188u, 12u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 12u)], 12u)]), _wgslsmith_div_u32(38802u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 12u)], 12u)])), 58672u, min(u_input.a, 4294967295u) | 18725u, global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(36109u, u_input.a), 12u)] | ~u_input.a) & select(vec4<u32>(~4294967295u, _wgslsmith_mod_u32(37632u, 1u), _wgslsmith_div_u32(1u, global1[_wgslsmith_index_u32(var_0, 12u)]), _wgslsmith_dot_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 12u)], 23638u, global1[_wgslsmith_index_u32(var_0, 12u)]), vec3<u32>(global1[_wgslsmith_index_u32(6006u, 12u)], 25106u, 0u))), vec4<u32>(var_0, ~var_0, firstLeadingBit(var_0), 12200u), false));
    var var_2 = Struct_1(1i, vec4<bool>(true, true, true, true));
    let var_3 = func_4(firstLeadingBit(func_2(abs(~vec4<u32>(var_0, global1[_wgslsmith_index_u32(var_0, 12u)], 4294967295u, 4294967295u)), true, u_input.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -844f) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -733f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(floor(1000f)), _wgslsmith_f_op_f32(sign(-773f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(230f, 548f, 304f))) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1000f, -1166f, 545f))))) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-486f, -1308f, 511f)))))), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 12u)], 12u)]).b.b.x;
    var_1 = var_3;
    global2 = array<Struct_4, 23>();
    global2 = array<Struct_4, 23>();
    let var_4 = Struct_3(vec2<i32>(_wgslsmith_mult_i32(abs(~0i), min(1i, ~u_input.b)), -u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_u32(select(4294967295u, ~u_input.a, var_3 && false), countOneBits(4294967295u)));
}

