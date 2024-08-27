struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec3<i32>,
    d: Struct_1,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(0u), false, vec3<i32>(30037i, -47849i, -46968i), Struct_1(4294967295u), vec2<f32>(-703f, 2158f));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<i32>) -> bool {
    var var_0 = false;
    var_0 = any(vec4<bool>(all(vec3<bool>(any(vec3<bool>(global0.b, global0.b, global0.b)), true, all(vec3<bool>(false, global0.b, global0.b)))), true, global0.b, !(true | global0.b)));
    var var_1 = _wgslsmith_f_op_f32(max(1286f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.e.x - -926f) + _wgslsmith_f_op_f32(global0.e.x + _wgslsmith_f_op_f32(-global0.e.x)))))));
    let var_2 = global0.d;
    var var_3 = Struct_2(Struct_1(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(34076u, 81963u, 0u) & vec3<u32>(var_2.a, var_2.a, 1773u), vec3<u32>(var_2.a, 0u, u_input.a)), u_input.a, 52179u)), global0.b, _wgslsmith_sub_vec3_i32(vec3<i32>(min(arg_0.x, global0.c.x) << (_wgslsmith_mult_u32(48644u, 0u) % 32u), 65581i, _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(global0.c.x, -4165i, arg_0.x), arg_0), global0.c.x, max(1i, 0i))), global0.c), global0.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.e.x, -1000f), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(global0.e.x, 205f), _wgslsmith_f_op_vec2_f32(global0.e * global0.e))), !all(vec3<bool>(false, false, true)))) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.e.x) * -868f), -2658f)));
    return !var_3.b;
}

fn func_2(arg_0: f32) -> Struct_2 {
    global0 = Struct_2(global0.a, select(all(vec4<bool>(global0.b, false, false, global0.b)) | true, true, any(select(vec2<bool>(true, true), vec2<bool>(global0.b, global0.b), vec2<bool>(true, global0.b)))), select(-vec3<i32>(global0.c.x, -10558i, -2147483647i), _wgslsmith_mult_vec3_i32(global0.c, abs(global0.c)), vec3<bool>(true, any(select(vec3<bool>(false, false, global0.b), vec3<bool>(global0.b, global0.b, global0.b), global0.b)), func_3(global0.c))), global0.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_0), 917f) - global0.e) * vec2<f32>(global0.e.x, _wgslsmith_f_op_f32(-arg_0))));
    let var_0 = select(vec3<i32>(~(-66999i), ~global0.c.x, countOneBits(global0.c.x)), _wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(global0.c, vec3<i32>(global0.c.x, global0.c.x, -2147483647i)), _wgslsmith_mod_vec3_i32(global0.c, vec3<i32>(-21135i, global0.c.x, -6383i))) << ((_wgslsmith_mult_vec3_u32(vec3<u32>(33009u, 0u, global0.d.a), vec3<u32>(global0.d.a, 45408u, global0.a.a)) | countOneBits(vec3<u32>(global0.a.a, u_input.a, 4294967295u))) % vec3<u32>(32u)), vec3<i32>(global0.c.x, (global0.c.x >> (global0.d.a % 32u)) ^ global0.c.x, (global0.c.x & global0.c.x) | _wgslsmith_sub_i32(0i, 1i))), global0.a.a > ~countOneBits(~u_input.a));
    var var_1 = _wgslsmith_clamp_u32(45808u, 0u, _wgslsmith_clamp_u32(reverseBits(_wgslsmith_mult_u32(u_input.a, 38543u) ^ _wgslsmith_sub_u32(global0.d.a, 4294967295u)), ~firstTrailingBit(1u), ~4294967295u));
    global0 = Struct_2(global0.a, all(vec4<bool>(global0.b, global0.b, _wgslsmith_f_op_f32(max(-1849f, global0.e.x)) != 230f, !global0.b & !global0.b)), var_0, global0.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-global0.e)))));
    var var_2 = 1185f;
    return Struct_2(Struct_1(~(_wgslsmith_sub_u32(6539u, global0.d.a) >> (~4294967295u % 32u))), global0.b, -(_wgslsmith_mult_vec3_i32(vec3<i32>(global0.c.x, 41584i, -22892i), var_0 << (vec3<u32>(4294967295u, u_input.a, 1u) % vec3<u32>(32u))) << (vec3<u32>(global0.a.a, ~4294967295u, ~global0.d.a) % vec3<u32>(32u))), Struct_1(max(4294967295u, global0.d.a)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(global0.e + global0.e))) + vec2<f32>(218f, _wgslsmith_f_op_f32(1000f - global0.e.x))))));
}

fn func_1() -> f32 {
    global0 = func_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.e.x, global0.e.x, global0.b)) * _wgslsmith_f_op_f32(abs(global0.e.x)))), _wgslsmith_f_op_f32(-global0.e.x))));
    var var_0 = Struct_2(global0.a, global0.b, max(vec3<i32>(countOneBits(global0.c.x), min(1901i, global0.c.x), global0.c.x), vec3<i32>(global0.c.x, ~global0.c.x, _wgslsmith_dot_vec2_i32(func_2(global0.e.x).c.yx, vec2<i32>(0i, global0.c.x)))), global0.a, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-163f, _wgslsmith_f_op_f32(-1386f - 605f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.e.x, global0.e.x)))))));
    let var_1 = ~global0.c.x;
    let var_2 = vec3<u32>(countOneBits(global0.d.a), 0u, 1u);
    var var_3 = 4294967295u;
    return global0.e.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(110f, 443f)) - _wgslsmith_f_op_f32(global0.e.x + 438f)))), _wgslsmith_f_op_f32(ceil(1979f))) - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.e.x, global0.e.x, -347f), vec3<f32>(global0.e.x, 604f, global0.e.x), vec3<bool>(true, false, global0.b)))))))));
    let var_1 = select(vec4<bool>(!any(vec2<bool>(global0.b, global0.b)), true, global0.b, !global0.b), !vec4<bool>(!(u_input.a != u_input.a), true, !func_2(1000f).b, true), vec4<bool>(any(!(!vec4<bool>(true, global0.b, true, true))), global0.b, func_2(_wgslsmith_f_op_f32(-global0.e.x)).b, false));
    global0 = Struct_2(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(930f + _wgslsmith_f_op_f32(select(global0.e.x, 257f, false))))).a, true, global0.c, global0.d, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.e.x, var_0.x) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.e + global0.e) + var_0.yz)), _wgslsmith_f_op_vec2_f32(var_0.zz - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)))))));
    var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(444f, var_0.x, global0.b)), _wgslsmith_f_op_f32(ceil(global0.e.x)), 546f)), vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.e.x, 1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.e.x)))), vec3<f32>(global0.e.x, 246f, 495f), var_1.wxw));
    global0 = func_2(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-461f, var_0.x))));
    var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-103f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(2198f, global0.e.x, var_1.x))))), global0.e.x) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(869f, 2394f, -765f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 220f, -749f) + vec3<f32>(-1863f, 203f, 296f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1397f, var_0.x, -117f)))))));
    let var_2 = _wgslsmith_clamp_vec4_u32(vec4<u32>(25626u, 0u, ~_wgslsmith_div_u32(0u, u_input.a), _wgslsmith_mult_u32(countOneBits(global0.d.a), ~4294967295u) << (8878u % 32u)), min(_wgslsmith_div_vec4_u32(abs(vec4<u32>(63139u, global0.a.a, global0.d.a, u_input.a)), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 54793u, global0.a.a, u_input.a), vec4<u32>(global0.d.a, global0.a.a, 4294967295u, 35806u))) & ~(~vec4<u32>(global0.d.a, 59918u, 36489u, 51740u)), vec4<u32>(u_input.a, 6153u, countOneBits(0u), ~1u)), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 0u, _wgslsmith_mod_u32(u_input.a, u_input.a), 59775u), vec4<u32>(max(0u, 57917u), abs(u_input.a), u_input.a, abs(1u))) ^ ~vec4<u32>(39516u, 1u, ~u_input.a, firstTrailingBit(31363u)));
    var var_3 = select(vec2<bool>(!global0.b, false), vec2<bool>(!(-global0.c.x < -30238i), var_1.x), !vec2<bool>(global0.b, !(!var_1.x)));
    global0 = Struct_2(Struct_1(var_2.x), all(vec2<bool>(!global0.b, !global0.b)), vec3<i32>(global0.c.x, 36228i, reverseBits(-20285i ^ _wgslsmith_mult_i32(global0.c.x, -1i))), Struct_1(_wgslsmith_mod_u32(3840u, _wgslsmith_add_u32(global0.a.a, 0u))), var_0.xz);
    let x = u_input.a;
    s_output = StorageBuffer(~((global0.d.a ^ ~32928u) & u_input.a), _wgslsmith_sub_i32(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(global0.c.x, -822i), vec2<i32>(global0.c.x, 252i)) ^ -global0.c.x, -11150i), _wgslsmith_mult_i32(global0.c.x, abs(-2147483647i))), firstLeadingBit(abs(vec4<i32>(_wgslsmith_dot_vec3_i32(global0.c, global0.c), -1976i, 1i, abs(-17478i)))), vec2<u32>(var_2.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 5693u, 4294967295u, 79401u), var_2)) & var_2.zz, global0.c.x);
}

