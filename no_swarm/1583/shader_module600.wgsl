struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: f32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 19>;

var<private> global1: i32;

var<private> global2: array<Struct_2, 12>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec4<i32>) -> bool {
    global0 = array<u32, 19>();
    let var_0 = vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, i32(-1i) * -15661i, arg_1.a.x), ~(vec3<i32>(-34430i, arg_1.a.x, arg_1.a.x) ^ vec3<i32>(-1i, 69569i, 2147483647i))), ~arg_3.x), -2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, arg_3.x, countOneBits(2147483647i)), _wgslsmith_sub_vec3_i32(min(arg_3.yxw, arg_1.a), max(vec3<i32>(arg_1.b.x, 1i, -23873i), vec3<i32>(u_input.a.x, arg_1.b.x, 2147483647i)))) & u_input.a.x);
    global0 = array<u32, 19>();
    let var_1 = true;
    var var_2 = vec2<bool>(((11669u ^ _wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(42292u, 19u)], 0u, global0[_wgslsmith_index_u32(0u, 19u)]), vec3<u32>(34429u, 54229u, 4294967295u))) << (u_input.b % 32u)) > 22430u, true);
    return false != (_wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.b, _wgslsmith_sub_u32(0u, u_input.b)), _wgslsmith_div_u32(4294967295u, 53814u)) <= ~(~(43199u ^ global0[_wgslsmith_index_u32(u_input.b, 19u)])));
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: i32, arg_3: Struct_1) -> u32 {
    var var_0 = -428f;
    global0 = array<u32, 19>();
    global1 = i32(-1i) * -2147483647i;
    var var_1 = global2[_wgslsmith_index_u32(~u_input.b, 12u)];
    let var_2 = Struct_3(Struct_2(~var_1.a, _wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-23337i, u_input.a.x) >> (vec2<u32>(u_input.b, 86374u) % vec2<u32>(32u)), vec2<i32>(1i, 1i)), var_1.a.xy, -vec2<i32>(arg_2, arg_2))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(2537f, 1075f, arg_3.a), vec3<f32>(-563f, 146f, 424f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.a, 1237f, -843f) * vec3<f32>(1525f, arg_3.a, 684f))), vec3<f32>(_wgslsmith_f_op_f32(arg_3.a + arg_3.a), _wgslsmith_f_op_f32(min(arg_3.a, arg_3.a)), _wgslsmith_f_op_f32(-660f + arg_3.a)))), ~_wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.b, 1u), ~vec2<u32>(1u, global0[_wgslsmith_index_u32(u_input.b, 19u)])));
    return ~(~(~u_input.b));
}

fn func_2(arg_0: u32, arg_1: vec3<f32>, arg_2: f32, arg_3: u32) -> bool {
    let var_0 = Struct_3(Struct_2(vec3<i32>(-1i) * -countOneBits(vec3<i32>(-535i, u_input.a.x, u_input.a.x)), ~(-_wgslsmith_clamp_vec2_i32(u_input.a, vec2<i32>(u_input.a.x, 5619i), u_input.a))), _wgslsmith_f_op_vec3_f32(-arg_1), _wgslsmith_mod_vec2_u32(~(~(~vec2<u32>(28567u, 0u))), vec2<u32>(_wgslsmith_add_u32(~u_input.b, _wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(35062u, 19u)], 44231u), vec2<u32>(arg_3, 1u))), firstTrailingBit(~arg_3))));
    var var_1 = global2[_wgslsmith_index_u32(abs(1u << (reverseBits(global0[_wgslsmith_index_u32(func_4(func_3(true, global2[_wgslsmith_index_u32(1u, 12u)], Struct_1(158f, true), vec4<i32>(-6849i, var_0.a.a.x, var_0.a.a.x, 20658i)), 67225u != u_input.b, u_input.a.x, Struct_1(var_0.b.x, true)), 19u)]) % 32u)), 12u)];
    let var_2 = !(!select(vec2<bool>(true, all(vec2<bool>(false, false))), select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(true, false), false), true), vec2<bool>(true, var_0.a.a.x >= 43486i)));
    let var_3 = reverseBits(vec4<i32>(~var_1.a.x, _wgslsmith_mult_i32(var_0.a.b.x, u_input.a.x), -u_input.a.x, _wgslsmith_dot_vec3_i32(var_1.a, -var_1.a)) >> (vec4<u32>(~(u_input.b & 16837u), _wgslsmith_mod_u32(u_input.b, ~global0[_wgslsmith_index_u32(1u, 19u)]), ~78035u & arg_0, _wgslsmith_mod_u32(4294967295u, arg_0) | (arg_3 >> (global0[_wgslsmith_index_u32(0u, 19u)] % 32u))) % vec4<u32>(32u)));
    var_1 = Struct_2(-(vec3<i32>(-1i, ~34463i, _wgslsmith_dot_vec3_i32(var_0.a.a, var_1.a)) >> (vec3<u32>(42848u, ~global0[_wgslsmith_index_u32(0u, 19u)], ~global0[_wgslsmith_index_u32(var_0.c.x, 19u)]) % vec3<u32>(32u))), var_0.a.a.yy);
    return var_2.x;
}

fn func_1() -> u32 {
    var var_0 = !(!(!(!select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false)))));
    global1 = u_input.a.x;
    let var_1 = vec4<bool>(false, true, var_0.x | var_0.x, func_2(~u_input.b & u_input.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(233f, 125f, -1000f)), _wgslsmith_f_op_f32(f32(-1f) * -442f), global0[_wgslsmith_index_u32(min(u_input.b, u_input.b), 19u)]) | all(vec2<bool>(true, any(vec4<bool>(var_0.x, var_0.x, var_0.x, false)))));
    var_0 = var_1.zzy;
    var var_2 = vec3<u32>(0u, 4294967295u, abs(_wgslsmith_mod_u32(0u, ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(18634u, 19u)], 19u)] ^ u_input.b)));
    return firstTrailingBit(0u);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 12>();
    var var_0 = func_1();
    var_0 = u_input.b;
    let var_1 = _wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.a, _wgslsmith_mod_vec2_i32(vec2<i32>(1i, -2147483647i), vec2<i32>(u_input.a.x, u_input.a.x))), -10778i, -_wgslsmith_mult_i32(-28238i, u_input.a.x), 1i >> (1u % 32u)), countOneBits(abs(vec4<i32>(25127i, u_input.a.x, u_input.a.x, -1i) >> (vec4<u32>(global0[_wgslsmith_index_u32(176u, 19u)], 0u, global0[_wgslsmith_index_u32(u_input.b, 19u)], 13797u) % vec4<u32>(32u))))), ~(~select(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) | vec4<i32>(10060i, -32315i, u_input.a.x, -1i), -vec4<i32>(-1i, u_input.a.x, 38936i, u_input.a.x), any(vec3<bool>(true, true, true)))));
    var var_2 = 14320u;
    var var_3 = true;
    let var_4 = max(abs(_wgslsmith_clamp_vec4_u32(reverseBits(vec4<u32>(global0[_wgslsmith_index_u32(u_input.b, 19u)], 23355u, 4294967295u, global0[_wgslsmith_index_u32(1u, 19u)])) | vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(8593u, 19u)], 19u)], 19u)], 86067u, 4294967295u, 6892u), reverseBits(min(vec4<u32>(u_input.b, 4294967295u, 4294967295u, global0[_wgslsmith_index_u32(1968u, 19u)]), vec4<u32>(4294967295u, u_input.b, u_input.b, u_input.b))), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 19753u), vec2<u32>(u_input.b, 70875u)), u_input.b ^ u_input.b, firstLeadingBit(4294967295u), u_input.b))), vec4<u32>(~1u, ((global0[_wgslsmith_index_u32(u_input.b, 19u)] >> (u_input.b % 32u)) & (30098u ^ u_input.b)) ^ _wgslsmith_mod_u32(reverseBits(9693u), min(18944u, 28414u)), 1u, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(u_input.b, reverseBits(11140u), ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(8431u, 19u)], 19u)], 19u)], 19u)], 19u)], 19u)]), _wgslsmith_div_u32(27851u, ~global0[_wgslsmith_index_u32(0u, 19u)]))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-331f + -449f), -1939f, _wgslsmith_f_op_f32(round(415f))), vec3<f32>(-1990f, _wgslsmith_f_op_f32(-802f + 760f), _wgslsmith_div_f32(-1000f, 1399f)), vec3<bool>(true, false, true)))), -1i, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-2029f, 733f)) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-169f))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-396f, -1000f) + _wgslsmith_f_op_f32(trunc(-1555f))), false)), 1i, -var_1.x);
}

