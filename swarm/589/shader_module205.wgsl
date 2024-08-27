struct Struct_1 {
    a: vec4<u32>,
    b: i32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec3<f32>,
    e: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec3<u32>, 18> = array<vec3<u32>, 18>(vec3<u32>(4294967295u, 22158u, 0u), vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(7974u, 0u, 30074u), vec3<u32>(32817u, 7594u, 59679u), vec3<u32>(1u, 75236u, 1u), vec3<u32>(72993u, 102448u, 1u), vec3<u32>(111294u, 10803u, 4294967295u), vec3<u32>(45942u, 100828u, 45346u), vec3<u32>(4294967295u, 1u, 34950u), vec3<u32>(4294967295u, 24589u, 24238u), vec3<u32>(4294967295u, 110452u, 14084u), vec3<u32>(8765u, 17795u, 1u), vec3<u32>(80843u, 62804u, 17244u), vec3<u32>(69400u, 4649u, 15570u), vec3<u32>(59986u, 4294967295u, 1u), vec3<u32>(1u, 31715u, 55538u), vec3<u32>(1u, 20063u, 1u), vec3<u32>(34186u, 0u, 0u));

var<private> global2: array<Struct_3, 7>;

var<private> global3: Struct_1 = Struct_1(vec4<u32>(1u, 1u, 4294967295u, 0u), 2147483647i);

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec4<u32>, arg_2: Struct_4) -> bool {
    var var_0 = ~global3.b;
    global3 = Struct_1(~_wgslsmith_mod_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 1u, 4294967295u, arg_1.x), vec4<u32>(arg_1.x, 21455u, arg_0.x, 0u)), u_input.a), -min(-2147483647i, -2147483647i) | _wgslsmith_div_i32(global3.b & _wgslsmith_dot_vec4_i32(vec4<i32>(global3.b, -1i, 1i, global3.b), vec4<i32>(31784i, 50017i, arg_2.a.a.b.x, -2147483647i)), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(arg_2.b.a.c, arg_2.a.a.c), ~(-1i))));
    global3 = Struct_1(~_wgslsmith_clamp_vec4_u32(~(vec4<u32>(global3.a.x, 4294967295u, 13550u, 0u) & u_input.a), _wgslsmith_add_vec4_u32(select(arg_1, global3.a, false), u_input.b | arg_1), global3.a), arg_2.a.a.b.x);
    global3 = Struct_1(~u_input.a, ~(-51280i));
    let var_1 = ~(~arg_1.zx) & _wgslsmith_mult_vec2_u32(firstLeadingBit(select(vec2<u32>(arg_2.b.a.a.x, arg_0.x), arg_1.ww, false)) << (reverseBits(vec2<u32>(56589u, arg_2.a.a.a.x) >> (u_input.a.zx % vec2<u32>(32u))) % vec2<u32>(32u)), ~arg_1.xy);
    return (-1383f < _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -2125f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a.a.d.x) - -1334f)))) | (global3.a.x != _wgslsmith_dot_vec4_u32(abs(vec4<u32>(4294967295u, 66653u, 70394u, arg_2.a.a.a.x) | vec4<u32>(var_1.x, 0u, global3.a.x, arg_2.a.a.a.x)), ~global3.a));
}

fn func_2(arg_0: vec2<i32>, arg_1: bool) -> Struct_1 {
    let var_0 = select(!vec3<bool>(false, !(!arg_1), func_3(~vec3<u32>(22330u, 0u, 30133u), ~vec4<u32>(u_input.a.x, 0u, 4294967295u, global3.a.x), Struct_4(global2[_wgslsmith_index_u32(5202u, 7u)], Struct_3(Struct_2(global3.a.xwx, vec3<i32>(-2147483647i, -6538i, 57055i), vec4<i32>(global3.b, arg_0.x, global3.b, 10642i), vec3<f32>(294f, 1000f, -785f), arg_0.x), vec3<f32>(725f, 1841f, -241f)), 1u))), select(!(!(!vec3<bool>(false, arg_1, arg_1))), !vec3<bool>(!arg_1, arg_1, arg_1), !(!vec3<bool>(arg_1, true, arg_1))), !vec3<bool>(!any(vec4<bool>(false, true, false, arg_1)), arg_1, (0u & global3.a.x) > ~112950u));
    let var_1 = -180f;
    global1 = array<vec3<u32>, 18>();
    return Struct_1(vec4<u32>(~(~26391u), _wgslsmith_dot_vec4_u32(global3.a, ~max(vec4<u32>(1u, 0u, global3.a.x, 4294967295u), vec4<u32>(40632u, 0u, u_input.e, 80246u))), 4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_div_u32(global3.a.x, global3.a.x), global3.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(global3.a.x, 31107u, 19646u), vec3<u32>(u_input.b.x, 4294967295u, 1u)), u_input.c), ~(~global3.a))), i32(-1i) * -(~(-global3.b)));
}

fn func_1() -> vec4<u32> {
    global1 = array<vec3<u32>, 18>();
    let var_0 = Struct_1(global3.a, _wgslsmith_mult_i32(~25552i ^ global3.b, ~(global3.b << ((0u << (u_input.c % 32u)) % 32u))));
    global3 = func_2(_wgslsmith_mult_vec2_i32(-(vec2<i32>(var_0.b, 1i) >> (var_0.a.yx % vec2<u32>(32u))), min(countOneBits(-vec2<i32>(-1i, global3.b)), -vec2<i32>(global3.b, 14813i))), false);
    var var_1 = _wgslsmith_div_vec3_i32(vec3<i32>(global3.b, ~_wgslsmith_mult_i32(global3.b, ~var_0.b), -var_0.b), vec3<i32>(~_wgslsmith_div_i32(_wgslsmith_mult_i32(var_0.b, var_0.b), -2147483647i), _wgslsmith_clamp_i32(global3.b, -_wgslsmith_dot_vec4_i32(vec4<i32>(33155i, var_0.b, -824i, global3.b), vec4<i32>(-2147483647i, var_0.b, global3.b, -39037i)), reverseBits(_wgslsmith_sub_i32(13483i, global3.b))), 1i));
    let var_2 = Struct_2(vec3<u32>(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(var_0.a.x, var_0.a.x)), vec2<u32>(_wgslsmith_div_u32(75307u, 4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, global3.a.x), var_0.a.yx))), 0u | global3.a.x, max(~countOneBits(39157u), firstLeadingBit(func_2(vec2<i32>(var_0.b, -26298i), false).a.x))), vec3<i32>(var_0.b, -2147483647i, global3.b), _wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(min(var_1.x, 0i), max(global3.b, 27673i), ~0i, global3.b >> (25002u % 32u)), vec4<i32>(-2147483647i, -2147483647i, var_1.x, global3.b), select(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, var_0.b, 37497i, var_1.x), vec4<i32>(2147483647i, -10694i, -2147483647i, -1i)), vec4<i32>(var_0.b, var_0.b, var_0.b, var_0.b), false)), _wgslsmith_mod_vec4_i32(vec4<i32>(1i, -47765i, var_1.x, global3.b), countOneBits(vec4<i32>(0i, var_0.b, var_1.x, -2147483647i))) | -select(vec4<i32>(64481i, 16430i, var_0.b, -2147483647i), vec4<i32>(var_0.b, var_0.b, 6331i, var_1.x), true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(401f, 1540f, -217f) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1159f, 1530f, -2069f))))))), _wgslsmith_dot_vec2_i32(countOneBits(abs(vec2<i32>(var_1.x, 10821i))), var_1.xz));
    return u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~max(global1[_wgslsmith_index_u32(u_input.a.x, 18u)], global1[_wgslsmith_index_u32(u_input.e, 18u)]);
    var var_1 = abs(firstLeadingBit(i32(-1i) * -(global3.b & global3.b)));
    let var_2 = ~vec4<i32>(_wgslsmith_sub_i32(firstLeadingBit(global3.b), global3.b & 1i) & 19857i, ~global3.b, global3.b, 71198i);
    let var_3 = Struct_2(global1[_wgslsmith_index_u32(max(global3.a.x, _wgslsmith_dot_vec4_u32(func_1(), ~vec4<u32>(var_0.x, var_0.x, global3.a.x, var_0.x))), 18u)] ^ global3.a.yyx, var_2.wxw, vec4<i32>(_wgslsmith_mod_i32(var_2.x, global3.b), -13138i, _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(firstTrailingBit(vec2<i32>(2147483647i, global3.b)), vec2<i32>(global3.b, global3.b)), var_2.yy), countOneBits(countOneBits(_wgslsmith_div_i32(52481i, global3.b)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(608f)), _wgslsmith_f_op_f32(round(-436f)))), _wgslsmith_f_op_f32(f32(-1f) * -389f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(870f, -419f))))), countOneBits(1i) ^ ~firstTrailingBit(~(-2147483647i)));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.c.x, 768f);
}

