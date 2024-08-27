struct Struct_1 {
    a: vec2<u32>,
    b: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: vec4<u32>,
    d: Struct_2,
    e: i32,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: vec4<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 8>;

var<private> global1: array<Struct_4, 5> = array<Struct_4, 5>(Struct_4(Struct_1(vec2<u32>(11578u, 0u), 0u)), Struct_4(Struct_1(vec2<u32>(35101u, 1u), 55058u)), Struct_4(Struct_1(vec2<u32>(30368u, 1u), 4294967295u)), Struct_4(Struct_1(vec2<u32>(34181u, 66856u), 0u)), Struct_4(Struct_1(vec2<u32>(71304u, 0u), 21542u)));

var<private> global2: array<vec2<bool>, 2> = array<vec2<bool>, 2>(vec2<bool>(true, true), vec2<bool>(false, true));

var<private> global3: vec3<u32> = vec3<u32>(1u, 4294967295u, 0u);

var<private> global4: Struct_4;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec3<f32>) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_f32(154f + _wgslsmith_f_op_f32(-595f - _wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(arg_1.x, arg_1.x)))))));
    global2 = array<vec2<bool>, 2>();
    var var_1 = 4294967295u;
    let var_2 = _wgslsmith_mod_i32(1979i, 1i);
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(arg_1.x)), _wgslsmith_div_f32(arg_1.x, _wgslsmith_div_f32(arg_1.x, arg_1.x)))), _wgslsmith_f_op_f32(floor(1826f)));
    return vec4<i32>(-1i) * -abs(vec4<i32>(1i, _wgslsmith_mult_i32(0i, -38789i), u_input.c << (72531u % 32u), ~arg_0.x));
}

fn func_3(arg_0: i32, arg_1: vec3<u32>) -> vec2<u32> {
    let var_0 = Struct_2(-func_2(-min(vec3<i32>(-1i, 4990i, arg_0), vec3<i32>(u_input.c, -1i, arg_0)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1082f, 847f, -298f))))).yyz, global4.a, global4.a);
    global1 = array<Struct_4, 5>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(195f)), 277f)), _wgslsmith_f_op_f32(f32(-1f) * -1093f)), -562f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-175f))) * _wgslsmith_f_op_f32(f32(-1f) * -647f)) - -631f));
    global3 = ~(~arg_1) << (select(arg_1, arg_1, true) % vec3<u32>(32u));
    let var_2 = _wgslsmith_mult_vec3_u32(~vec3<u32>(~global3.x, 1u, global0[_wgslsmith_index_u32(reverseBits(reverseBits(global4.a.b)), 8u)]), ~arg_1);
    return vec2<u32>(min(global0[_wgslsmith_index_u32(var_2.x ^ (~85795u >> (0u % 32u)), 8u)], arg_1.x), (_wgslsmith_div_u32(min(global4.a.b, 1u), ~4294967295u) >> (1u % 32u)) >> ((0u >> (_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, arg_1.x), var_0.c.a), 1u) % 32u)) % 32u));
}

fn func_4(arg_0: vec3<f32>, arg_1: bool, arg_2: vec2<u32>) -> f32 {
    var var_0 = min(~abs(countOneBits(_wgslsmith_mult_vec3_u32(vec3<u32>(42512u, global0[_wgslsmith_index_u32(1u, 8u)], 4294967295u), vec3<u32>(6375u, global4.a.a.x, 4294967295u)))), abs(_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(global4.a.a.x, 4294967295u, 12694u), vec3<u32>(68945u, u_input.b.x, global0[_wgslsmith_index_u32(u_input.b.x, 8u)])), ~vec3<u32>(0u, global4.a.a.x, u_input.b.x)), ~(~vec3<u32>(4294967295u, 2138u, 1u)))));
    var var_1 = Struct_1(_wgslsmith_div_vec2_u32(~global4.a.a, ~(arg_2 & global3.yx)), ~abs(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.x, 4294967295u, var_0.x), abs(vec3<u32>(global3.x, 19688u, u_input.b.x)))));
    global1 = array<Struct_4, 5>();
    let var_2 = Struct_1(var_0.yz & ~_wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(global4.a.a.x, global4.a.a.x), var_1.a), vec2<u32>(1u, arg_2.x)), ~(~1u));
    global3 = vec3<u32>(var_0.x, ~0u, 1u);
    return _wgslsmith_f_op_f32(round(-184f));
}

fn func_1(arg_0: i32, arg_1: bool) -> vec3<u32> {
    global3 = vec3<u32>(firstTrailingBit(global3.x), global3.x, _wgslsmith_mult_u32(countOneBits(global4.a.b), ~global3.x));
    let var_0 = -41891i << (0u % 32u);
    let var_1 = func_2(-select(-vec3<i32>(var_0, arg_0, var_0) >> (vec3<u32>(0u, 2744u, global3.x) % vec3<u32>(32u)), countOneBits(-vec3<i32>(15354i, 0i, 38387i)), vec3<bool>(arg_1 || false, arg_1, all(vec3<bool>(arg_1, arg_1, arg_1)))), vec3<f32>(1f, 1f, 1f));
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_4(vec3<f32>(1f, 1f, 1f), select(any(vec3<bool>(arg_1, arg_1, false)), arg_1, arg_1), _wgslsmith_mult_vec2_u32(func_3(var_1.x, vec3<u32>(u_input.b.x, 1u, 57488u)), vec2<u32>(14247u, global4.a.a.x)))), _wgslsmith_f_op_f32(step(749f, -1396f))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -577f), _wgslsmith_f_op_f32(f32(-1f) * -1901f), true))), 296f));
    var var_3 = _wgslsmith_add_i32(arg_0, ~(-_wgslsmith_dot_vec4_i32(abs(vec4<i32>(arg_0, u_input.c, var_1.x, var_0)), vec4<i32>(var_1.x, u_input.c, -48i, 1i))));
    return _wgslsmith_mult_vec3_u32(vec3<u32>(1u, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~9986u, global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(global4.a.b, 8u)], 8u)]), 8u)] | u_input.b.x, abs(16723u) >> (abs(0u) % 32u)), abs(~vec3<u32>(4294967295u, 39975u, global4.a.b)));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = global1[_wgslsmith_index_u32(20928u, 5u)];
    let var_0 = _wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(firstTrailingBit(global4.a.a), min(vec2<u32>(1u, 59302u), global4.a.a)), vec2<u32>(global4.a.a.x, global0[_wgslsmith_index_u32(4294967295u, 8u)]) << (u_input.b % vec2<u32>(32u))), global4.a.b, global3.x, 1u << (global3.x % 32u)), vec4<u32>(reverseBits(global3.x), select(~_wgslsmith_mult_u32(global4.a.b, 26507u), ~_wgslsmith_add_u32(15367u, global4.a.b), true), 0u, global0[_wgslsmith_index_u32(reverseBits(global4.a.a.x), 8u)]));
    global3 = vec3<u32>(_wgslsmith_dot_vec2_u32(u_input.b, ~vec2<u32>(global4.a.a.x, 4294967295u)) >> (~(firstTrailingBit(global0[_wgslsmith_index_u32(global3.x, 8u)]) << ((0u ^ global4.a.b) % 32u)) % 32u), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(func_1(u_input.a, false), _wgslsmith_div_vec3_u32(var_0.xyw, var_0.wwz)), select(vec3<u32>(53735u, global3.x, u_input.b.x), firstTrailingBit(var_0.wwz), vec3<bool>(false, false, true))), firstTrailingBit(~(0u & global4.a.b))), func_3(u_input.a, var_0.ywy).x);
    var var_1 = select(-2147483647i, u_input.c, false);
    var var_2 = vec2<bool>(select(true, !(!all(vec3<bool>(false, true, false))), (all(global2[_wgslsmith_index_u32(global4.a.b, 2u)]) && any(vec4<bool>(true, true, true, false))) || true), 2147483647i >= u_input.c);
    let var_3 = -2147483647i;
    let var_4 = Struct_4(global4.a);
    let x = u_input.a;
    s_output = StorageBuffer(-719f, ~func_1(var_3, true).x, max(reverseBits(select(-u_input.c, ~var_3, true)), _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(u_input.c, u_input.c, -64075i, -1i)), vec4<i32>(30002i, 11852i, u_input.a, 28682i) & vec4<i32>(-40341i, u_input.a, -21938i, u_input.a)) >> (0u % 32u)), min(vec4<u32>(95172u, max(global0[_wgslsmith_index_u32(26359u, 8u)], 0u), max(global4.a.a.x, global0[_wgslsmith_index_u32(0u, 8u)]), _wgslsmith_clamp_u32(var_0.x, global3.x, global3.x)) & abs(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, var_4.a.a.x, 84121u, u_input.b.x), var_0)), var_0), 4294967295u);
}

