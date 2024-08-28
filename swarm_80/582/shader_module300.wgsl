struct Struct_1 {
    a: f32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: bool,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: Struct_1,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 3>;

var<private> global1: u32;

var<private> global2: array<u32, 27> = array<u32, 27>(7885u, 1u, 0u, 29794u, 1u, 4294967295u, 4294967295u, 1u, 0u, 1u, 0u, 4294967295u, 1u, 22582u, 1973u, 1u, 0u, 20714u, 4294967295u, 8453u, 1u, 0u, 1u, 17011u, 88864u, 69646u, 4294967295u);

var<private> global3: Struct_3 = Struct_3(Struct_2(vec3<f32>(1028f, -470f, -285f), Struct_1(258f, vec2<f32>(326f, 880f)), 1094f), 838f, false);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: u32, arg_1: Struct_4) -> Struct_3 {
    let var_0 = Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global3.a.a + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1.c.a, 1384f, arg_1.b.b.a), vec3<f32>(arg_1.c.b.x, 846f, 1123f), true)))), Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -155f))), global3.a.b.b), _wgslsmith_f_op_f32(global3.a.a.x - -2117f)), global3.b, !(!(u_input.a != 94795u)) || all(!(!vec3<bool>(global3.c, global3.c, false))));
    global2 = array<u32, 27>();
    global0 = array<vec4<u32>, 3>();
    var var_1 = -2953i;
    var var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.a.b.a, arg_1.b.c, arg_1.b.a.x))))))), arg_1.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1058f, -488f))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_0.a.b.a, arg_1.c.b.x)))));
    return Struct_3(Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -334f)), _wgslsmith_f_op_f32(arg_1.c.a * _wgslsmith_f_op_f32(-880f + -289f)), -1762f), var_2.b, -236f), global3.b, true);
}

fn func_3(arg_0: u32, arg_1: vec3<i32>, arg_2: vec3<bool>) -> vec3<bool> {
    return !select(arg_2, !arg_2, select(func_2(1u, Struct_4(84056u, global3.a, Struct_1(-1050f, vec2<f32>(global3.a.a.x, global3.b)), global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(64851u, 27u)], 3u)])).c, !global3.c, global3.c));
}

fn func_1() -> vec2<bool> {
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(global3.a.a + global3.a.a), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1145f, -2021f, 660f) * global3.a.a)))), vec3<bool>(_wgslsmith_mult_u32(1u, 62560u) < ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 27u)], 27u)], all(vec3<bool>(global3.c, global3.c, true)), true))), Struct_1(global3.a.b.a, global3.a.a.zz), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global3.b))));
    let var_1 = firstLeadingBit(_wgslsmith_mult_i32(abs(i32(-1i) * -28370i), firstTrailingBit(_wgslsmith_add_i32(-32205i, 19251i))));
    global3 = func_2(reverseBits(~_wgslsmith_clamp_u32(0u, ~u_input.a, 25996u)), Struct_4(52697u, Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(global3.a.a, vec3<f32>(-2099f, global3.b, 1227f)))), global3.a.b, global3.b), var_0.b, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~1u, global2[_wgslsmith_index_u32(27868u, 27u)]), 3u)] | _wgslsmith_add_vec4_u32(global0[_wgslsmith_index_u32(u_input.a, 3u)], max(vec4<u32>(4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 27u)], 27u)], u_input.a, 4294967295u), vec4<u32>(global2[_wgslsmith_index_u32(1u, 27u)], global2[_wgslsmith_index_u32(u_input.a, 27u)], u_input.a, global2[_wgslsmith_index_u32(u_input.a, 27u)])))));
    var var_2 = select(select(!vec3<bool>(true, false, global3.c), !func_3(1u, vec3<i32>(-4297i, -31343i, 2147483647i), vec3<bool>(global3.c, global3.c, global3.c)), !(!(!vec3<bool>(global3.c, true, global3.c)))), vec3<bool>(global3.c, true, global3.c), func_2(64396u, Struct_4(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 27u)], 27u)], global2[_wgslsmith_index_u32(4294967295u, 27u)], u_input.a), global0[_wgslsmith_index_u32(u_input.a, 3u)]), firstTrailingBit(vec4<u32>(u_input.a, 4396u, u_input.a, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(34105u, 27u)], 27u)], 27u)]))), global3.a, func_2(33751u, Struct_4(50133u, global3.a, global3.a.b, vec4<u32>(4294967295u, u_input.a, 1u, 0u))).a.b, vec4<u32>(u_input.a, 4294967295u | u_input.a, 1u, u_input.a))).c);
    var var_3 = _wgslsmith_add_vec4_i32(-_wgslsmith_add_vec4_i32(min(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, 29082i, var_1, var_1), vec4<i32>(-36356i, -1i, -2147483647i, var_1), vec4<i32>(var_1, -8040i, var_1, 0i)), -vec4<i32>(var_1, var_1, 2147483647i, var_1)), abs(vec4<i32>(var_1, var_1, -53171i, 2147483647i)) >> (vec4<u32>(global2[_wgslsmith_index_u32(18043u, 27u)], global2[_wgslsmith_index_u32(19964u, 27u)], 8153u, 46345u) % vec4<u32>(32u))), -vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1, var_1, -2720i), vec3<i32>(var_1, -2147483647i, var_1)) << (u_input.a % 32u), var_1, countOneBits(var_1), _wgslsmith_add_i32(var_1 | 2147483647i, _wgslsmith_add_i32(1i, 0i))));
    return var_2.xy;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(func_1(), select(vec2<bool>(506f >= global3.b, any(vec3<bool>(global3.c, global3.c, global3.c))), vec2<bool>(false, select(global3.c, true, global3.c)), true), vec2<bool>(true | global3.c, !global3.c));
    let var_1 = ~firstLeadingBit(~(17671u & (global2[_wgslsmith_index_u32(0u, 27u)] ^ 0u)));
    let x = u_input.a;
    s_output = StorageBuffer(3398u & _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(69885u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_1, 27u)], 27u)], 27u)], 0u), _wgslsmith_sub_vec3_u32(vec3<u32>(46540u, var_1, u_input.a), vec3<u32>(18988u, 1u, 1u))), _wgslsmith_div_u32(reverseBits(u_input.a), var_1)), vec2<u32>(~abs(1u), u_input.a));
}

