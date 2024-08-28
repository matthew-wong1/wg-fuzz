struct Struct_1 {
    a: i32,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(-25524i, vec2<u32>(1u, 30202u)), Struct_1(-50204i, vec2<u32>(21764u, 0u)), Struct_1(24842i, vec2<u32>(49669u, 0u)), Struct_1(i32(-2147483648), vec2<u32>(1u, 45637u)), Struct_1(-776i, vec2<u32>(64920u, 4294967295u)), Struct_1(40974i, vec2<u32>(12892u, 0u)), Struct_1(1i, vec2<u32>(0u, 2768u)), Struct_1(37138i, vec2<u32>(12077u, 4325u)), Struct_1(-26301i, vec2<u32>(48401u, 4294967295u)), Struct_1(1i, vec2<u32>(1u, 1u)), Struct_1(36042i, vec2<u32>(54927u, 8748u)), Struct_1(-18408i, vec2<u32>(0u, 18471u)), Struct_1(-32436i, vec2<u32>(40157u, 26038u)), Struct_1(80819i, vec2<u32>(47475u, 0u)), Struct_1(1i, vec2<u32>(4294967295u, 4150u)), Struct_1(0i, vec2<u32>(49183u, 4294967295u)), Struct_1(2147483647i, vec2<u32>(23854u, 24319u)), Struct_1(-1i, vec2<u32>(0u, 45701u)), Struct_1(1i, vec2<u32>(1u, 51793u)), Struct_1(-12270i, vec2<u32>(0u, 72900u)), Struct_1(30922i, vec2<u32>(0u, 21918u)), Struct_1(-10372i, vec2<u32>(43136u, 16234u)), Struct_1(27626i, vec2<u32>(40433u, 0u)), Struct_1(0i, vec2<u32>(1u, 0u)), Struct_1(1389i, vec2<u32>(58293u, 0u)), Struct_1(-6093i, vec2<u32>(6400u, 1u)), Struct_1(2147483647i, vec2<u32>(1u, 91714u)), Struct_1(i32(-2147483648), vec2<u32>(1u, 17121u)), Struct_1(-1745i, vec2<u32>(1u, 121475u)), Struct_1(13750i, vec2<u32>(36458u, 1u)), Struct_1(2147483647i, vec2<u32>(8425u, 56869u)));

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: u32, arg_1: i32) -> vec2<i32> {
    global1 = array<Struct_1, 31>();
    var var_0 = vec3<f32>(1f, 1f, 1f);
    let var_1 = global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(~0u & ~u_input.a, countOneBits(_wgslsmith_div_u32(57525u, u_input.a))) >> (~u_input.a % 32u), 31u)];
    var var_2 = global0.wyx;
    var_2 = ~min(global0.wzw, _wgslsmith_add_vec3_i32(max(vec3<i32>(36451i, 0i, 62025i), vec3<i32>(0i, 12943i, 53641i)), global0.www));
    return vec2<i32>(-17671i, arg_1);
}

fn func_2() -> Struct_1 {
    var var_0 = abs(_wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(reverseBits(global0.zz & vec2<i32>(global0.x, global0.x)), countOneBits(func_3(u_input.a, global0.x))), vec2<i32>(~global0.x, -2147483647i)));
    let var_1 = Struct_1(-(global0.x << (~52713u % 32u)), ((vec2<u32>(u_input.a, u_input.a) & vec2<u32>(40865u, u_input.a)) | max(vec2<u32>(u_input.a, u_input.a) | vec2<u32>(1u, u_input.a), ~vec2<u32>(u_input.a, u_input.a))) | ~vec2<u32>(80425u << (1u % 32u), _wgslsmith_mod_u32(u_input.a, 4294967295u)));
    var var_2 = Struct_1(min(-1i, var_0.x & ~_wgslsmith_dot_vec2_i32(global0.yz, global0.xw)), firstLeadingBit(~vec2<u32>(~1u, u_input.a)));
    global0 = _wgslsmith_mod_vec4_i32(abs(vec4<i32>(-var_1.a >> (var_2.b.x % 32u), i32(-1i) * -var_2.a, ~_wgslsmith_dot_vec3_i32(global0.xxx, global0.xwx), 4171i)), _wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(var_0.x, _wgslsmith_mult_i32(37242i, var_1.a)), -2147483647i, 1i, -func_3(u_input.a, 1i).x), vec4<i32>(countOneBits(reverseBits(var_0.x)), -var_2.a, var_2.a, var_2.a)));
    var var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(f32(-1f) * -290f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(249f))))))));
    return global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(1u, 11039u, var_2.b.x), vec3<u32>(var_2.b.x, var_1.b.x, 0u) & vec3<u32>(1u, 5891u, 0u))), _wgslsmith_clamp_vec3_u32(abs(~vec3<u32>(1u, 0u, 44487u)), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 0u, 0u), vec3<u32>(u_input.a, var_1.b.x, 1789u)) ^ _wgslsmith_mod_vec3_u32(vec3<u32>(var_1.b.x, 1u, 4294967295u), vec3<u32>(u_input.a, var_2.b.x, 23969u)), _wgslsmith_sub_vec3_u32(vec3<u32>(var_1.b.x, 4294967295u, var_2.b.x) << (vec3<u32>(925u, 2388u, 57913u) % vec3<u32>(32u)), vec3<u32>(66084u, 5965u, var_1.b.x) | vec3<u32>(var_1.b.x, 4294967295u, 79877u)))), var_1.b.x), 31u)];
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> vec3<f32> {
    var var_0 = i32(-1i) * -(abs(-arg_2.a) << ((abs(u_input.a) | (u_input.a ^ arg_2.b.x)) % 32u));
    let var_1 = false;
    let var_2 = func_2();
    let var_3 = Struct_1(~1i, select(_wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(~arg_2.b, arg_2.b), _wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(0u, 65708u), arg_2.b), firstTrailingBit(vec2<u32>(arg_1.b.x, 4294967295u)), firstLeadingBit(vec2<u32>(28813u, arg_1.b.x)))), vec2<u32>(~abs(31863u), _wgslsmith_div_u32(abs(0u), arg_2.b.x)), (arg_1.b.x | 1u) <= ~(~arg_1.b.x)));
    var var_4 = select(false, false, false);
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-333f, 1682f, _wgslsmith_f_op_f32(f32(-1f) * -1622f))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-518f, 875f))), _wgslsmith_f_op_f32(abs(627f)), _wgslsmith_f_op_f32(floor(649f)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(610f)))), 570f, -1323f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(select(all(vec3<bool>(u_input.a > 22183u, true, false)), true, all(vec3<bool>(true, true, true))), !all(vec3<bool>(true, 42586i <= global0.x, all(vec4<bool>(true, true, false, true)))), true, !(_wgslsmith_f_op_f32(f32(-1f) * -372f) == _wgslsmith_f_op_f32(select(329f, _wgslsmith_f_op_f32(-2077f + -2609f), all(vec2<bool>(true, true))))));
    var var_1 = 1i;
    global1 = array<Struct_1, 31>();
    let var_2 = -48688i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(func_1(-2147483647i, Struct_1(-4957i, vec2<u32>(u_input.a, u_input.a)), Struct_1(global0.x, vec2<u32>(37890u, u_input.a)))))) - vec3<f32>(_wgslsmith_f_op_f32(floor(1f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-734f, 1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-993f + 201f) + _wgslsmith_f_op_f32(710f - 720f)))), vec4<i32>(global0.x, 0i, select(2147483647i, var_2, !var_0.x) ^ (i32(-1i) * -var_2), global0.x));
}

