struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: array<i32, 12> = array<i32, 12>(-31936i, 0i, 9336i, 47931i, 2147483647i, -1i, -1i, 8031i, i32(-2147483648), -1i, -43476i, 66090i);

var<private> global2: vec2<u32>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3() -> vec3<u32> {
    global1 = array<i32, 12>();
    var var_0 = _wgslsmith_sub_u32(firstTrailingBit(select(_wgslsmith_mult_u32(global2.x, global2.x), 1u, -33669i != u_input.b)), ~1u) | global2.x;
    global0 = vec3<i32>(~2147483647i, global0.x, _wgslsmith_div_i32(4891i, _wgslsmith_dot_vec4_i32(select(abs(vec4<i32>(2147483647i, u_input.a.x, -48561i, 22332i)), ~vec4<i32>(-7887i, u_input.b, u_input.b, -6824i), select(true, false, false)), vec4<i32>(u_input.b, global0.x, u_input.a.x, -global0.x))));
    var var_1 = vec2<f32>(938f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-105f)))));
    var var_2 = Struct_2(4894u);
    return _wgslsmith_sub_vec3_u32(vec3<u32>(abs(_wgslsmith_mod_u32(global2.x, var_2.a)), _wgslsmith_sub_u32(var_2.a, ~var_2.a), global2.x), vec3<u32>(~min(4294967295u, var_2.a), _wgslsmith_dot_vec3_u32(~vec3<u32>(var_2.a, 1u, global2.x), vec3<u32>(global2.x, 33946u, var_2.a)), max(57521u << (global2.x % 32u), global2.x))) ^ _wgslsmith_sub_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(48814u, var_2.a, global2.x), ~vec3<u32>(23584u, 81486u, 112695u)), ~(~vec3<u32>(29534u, 57360u, var_2.a)));
}

fn func_2(arg_0: u32, arg_1: vec4<f32>, arg_2: vec4<i32>, arg_3: vec2<i32>) -> Struct_2 {
    let var_0 = Struct_2(~(~1u));
    let var_1 = arg_2.x;
    let var_2 = Struct_1(max(func_3(), ~(~_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.a, global2.x, global2.x), vec3<u32>(37211u, 24026u, global2.x)))), 4294967295u, i32(-1i) * -countOneBits(abs(arg_2.x)), abs(-_wgslsmith_clamp_i32(-13578i, -17723i, global0.x) << ((~var_0.a ^ ~arg_0) % 32u)));
    global1 = array<i32, 12>();
    var var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.xy - vec2<f32>(-1245f, arg_1.x))), arg_1.zz)), _wgslsmith_f_op_vec2_f32(arg_1.zz + vec2<f32>(_wgslsmith_f_op_f32(1426f * _wgslsmith_f_op_f32(-168f - arg_1.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1.x))))));
    return var_0;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_2) -> vec3<u32> {
    var var_0 = vec2<i32>(-_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(~vec2<i32>(global0.x, 1i), u_input.a.xy), abs(global0.yx)), _wgslsmith_div_i32(arg_0.c, firstLeadingBit(-reverseBits(0i))));
    var_0 = ~vec2<i32>(-2147483647i, global0.x);
    return ~_wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32((arg_0.a | arg_0.a) ^ arg_0.a, vec3<u32>(arg_2.a, arg_2.a, arg_2.a)), arg_0.a);
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: vec2<u32>) -> bool {
    global2 = _wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_add_u32(~select(arg_1.a.x, 1u, false), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.b, global2.x, arg_3.x, arg_3.x), vec4<u32>(arg_3.x, arg_3.x, global2.x, arg_1.b))), arg_3.x), _wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(~(vec2<u32>(54677u, 30384u) ^ arg_3), ~vec2<u32>(0u, 4294967295u)), ~min(reverseBits(vec2<u32>(57294u, 0u)), arg_2.yz ^ arg_2.xy), ~arg_1.a.yz));
    var var_0 = -1i;
    let var_1 = countOneBits((~abs(vec3<u32>(1u, 4294967295u, arg_3.x)) | func_4(arg_1, vec4<bool>(true, true, true, true), func_2(arg_3.x, vec4<f32>(-1675f, arg_0, arg_0, -192f), vec4<i32>(-2147483647i, -17824i, u_input.a.x, u_input.b), vec2<i32>(global1[_wgslsmith_index_u32(58102u, 12u)], 694i)))) >> (max(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.x, arg_3.x, 82447u), arg_1.a), 1u, _wgslsmith_dot_vec3_u32(arg_2, arg_1.a)), ~select(arg_1.a, arg_1.a, vec3<bool>(false, false, false))) % vec3<u32>(32u)));
    let var_2 = true;
    let var_3 = var_2;
    return true;
}

fn func_5(arg_0: bool, arg_1: vec4<u32>, arg_2: vec4<f32>, arg_3: vec2<bool>) -> u32 {
    let var_0 = reverseBits(1u);
    global0 = reverseBits(u_input.a | vec3<i32>(2147483647i, min(_wgslsmith_clamp_i32(-2147483647i, -1i, -20558i), select(u_input.b, -9148i, arg_3.x)), ~_wgslsmith_clamp_i32(6409i, 0i, global1[_wgslsmith_index_u32(0u, 12u)])));
    let var_1 = func_2(max(4478u, arg_1.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_2.x))), arg_2.x, arg_2.x, -2151f) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(arg_2, arg_2, vec4<bool>(false, arg_3.x, false, false))))), vec4<f32>(804f, arg_2.x, _wgslsmith_f_op_f32(floor(513f)), -2972f)))), _wgslsmith_sub_vec4_i32(select(vec4<i32>(global0.x, global0.x, 2147483647i, 35362i), -vec4<i32>(1i, u_input.a.x, 25904i, global0.x), !vec4<bool>(arg_3.x, false, arg_3.x, false)), ~vec4<i32>(-44257i, u_input.b, global0.x, global0.x)) & ~(-_wgslsmith_mult_vec4_i32(vec4<i32>(-1399i, 21114i, global0.x, global1[_wgslsmith_index_u32(global2.x, 12u)]), vec4<i32>(global0.x, global0.x, u_input.a.x, global1[_wgslsmith_index_u32(var_0, 12u)]))), vec2<i32>(global0.x, select(global1[_wgslsmith_index_u32(4294967295u, 12u)], -1i, arg_3.x)));
    let var_2 = arg_3.x || false;
    global0 = select(u_input.a, -vec3<i32>(i32(-1i) * -26391i, max(~2147483647i, _wgslsmith_mult_i32(u_input.a.x, u_input.b)), _wgslsmith_add_i32(2147483647i, -global0.x)), any(vec3<bool>(var_2, true, all(vec4<bool>(false, var_2, arg_3.x, false)))));
    return _wgslsmith_dot_vec2_u32(~vec2<u32>(countOneBits(28903u) ^ arg_1.x, 14327u), ~_wgslsmith_clamp_vec2_u32(max(arg_1.yw, ~vec2<u32>(arg_1.x, var_0)), vec2<u32>(_wgslsmith_sub_u32(1u, 1u), var_1.a), _wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(arg_1.zz, arg_1.wx), max(arg_1.zy, vec2<u32>(4294967295u, var_0)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    global1 = array<i32, 12>();
    let var_1 = Struct_1(~vec3<u32>(~37012u, _wgslsmith_clamp_u32(global2.x, global2.x, global2.x), _wgslsmith_sub_u32(_wgslsmith_mod_u32(4294967295u, 18959u), 0u)), _wgslsmith_sub_u32(global2.x, 4294967295u), global1[_wgslsmith_index_u32(func_5(func_1(_wgslsmith_f_op_f32(-1128f - 1f), Struct_1(vec3<u32>(30499u, global2.x, 9033u) ^ vec3<u32>(23797u, 71750u, 8059u), 4294967295u, -1i ^ global0.x, global1[_wgslsmith_index_u32(4294967295u ^ global2.x, 12u)]), reverseBits(vec3<u32>(12901u, 4294967295u, global2.x)), ~(~vec2<u32>(30934u, 70507u))), vec4<u32>(global2.x, global2.x << (4294967295u % 32u), global2.x | 4294967295u, 0u) << ((vec4<u32>(4294967295u, 1u, 6887u, global2.x) >> (vec4<u32>(global2.x, 40195u, global2.x, 14366u) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1055f, 1921f, 1936f, 911f))))), vec2<bool>(select(true, true, any(vec3<bool>(true, false, false))), false)), 12u)], abs(~_wgslsmith_dot_vec4_i32(~vec4<i32>(2147483647i, -1i, global0.x, -1i), vec4<i32>(-13063i, 2766i, u_input.a.x, u_input.b) << (vec4<u32>(global2.x, global2.x, 4294967295u, global2.x) % vec4<u32>(32u)))));
    global2 = vec2<u32>(var_1.b, global2.x);
    var var_2 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1f, -438f, _wgslsmith_f_op_f32(sign(-670f)), 766f)));
    var_0 = var_2.x != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -763f)))));
    let var_3 = var_1;
    let var_4 = Struct_2(var_1.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_2.x), abs(var_1.d));
}

