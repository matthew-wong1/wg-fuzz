struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 11> = array<f32, 11>(-893f, -758f, 332f, -1290f, 1296f, 1819f, 1189f, -1933f, 928f, -638f, 571f);

var<private> global1: Struct_1;

var<private> global2: array<f32, 14> = array<f32, 14>(-646f, 2461f, 841f, -890f, -1132f, 1147f, 1494f, 294f, -888f, -1658f, 1955f, 1461f, -223f, 1000f);

var<private> global3: i32;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: vec3<u32>) -> vec3<bool> {
    var var_0 = Struct_1(arg_1.zx, 2147483647i, _wgslsmith_f_op_f32(trunc(448f)));
    var_0 = Struct_1(_wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(76546u, arg_1.x) & countOneBits(vec2<u32>(var_0.a.x, u_input.b)), _wgslsmith_mod_vec2_u32(vec2<u32>(91413u, 0u), var_0.a)), abs(global1.a)), _wgslsmith_sub_i32(var_0.b, u_input.c), 914f);
    global3 = u_input.d;
    global1 = Struct_1(_wgslsmith_clamp_vec2_u32(var_0.a, arg_1.yz, ~reverseBits(countOneBits(arg_1.yz))), 37999i, 296f);
    var var_1 = vec2<bool>(!(~_wgslsmith_mult_u32(23335u, global1.a.x) < 8437u), false);
    return select(select(vec3<bool>(!(u_input.b > 0u), var_1.x, any(select(vec4<bool>(false, true, true, true), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x)))), select(vec3<bool>(all(vec4<bool>(var_1.x, var_1.x, false, true)), !var_1.x, true), !select(vec3<bool>(var_1.x, false, var_1.x), vec3<bool>(var_1.x, true, true), vec3<bool>(var_1.x, false, true)), all(vec2<bool>(var_1.x, true)) & (false | var_1.x)), !(!select(vec3<bool>(true, var_1.x, var_1.x), vec3<bool>(true, false, false), false))), !(!(!vec3<bool>(true, var_1.x, var_1.x))), select(vec3<bool>(false, true, _wgslsmith_f_op_f32(-1228f - global0[_wgslsmith_index_u32(8175u, 11u)]) == -1086f), select(vec3<bool>(false, !var_1.x, var_1.x), select(vec3<bool>(var_1.x, var_1.x, false), select(vec3<bool>(var_1.x, true, var_1.x), vec3<bool>(false, false, var_1.x), vec3<bool>(var_1.x, var_1.x, true)), var_1.x), select(vec3<bool>(false, var_1.x, true), select(vec3<bool>(true, var_1.x, false), vec3<bool>(var_1.x, var_1.x, true), vec3<bool>(true, var_1.x, var_1.x)), !vec3<bool>(false, var_1.x, true))), !(var_0.b == _wgslsmith_mod_i32(1i, arg_0))));
}

fn func_2(arg_0: f32) -> vec2<bool> {
    var var_0 = _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(~abs(~vec3<u32>(0u, global1.a.x, 1u)), countOneBits(firstLeadingBit(vec3<u32>(global1.a.x, 29548u, 52943u))) << (countOneBits(~vec3<u32>(global1.a.x, u_input.b, 1u)) % vec3<u32>(32u))), ~(firstTrailingBit(vec3<u32>(0u, 3379u, 4294967295u)) ^ ~(~vec3<u32>(94657u, 11957u, 49548u))));
    var var_1 = global1.a.x;
    var var_2 = u_input.b;
    var var_3 = !func_3(14941i, _wgslsmith_add_vec3_u32(~(~vec3<u32>(0u, 13725u, 95444u)), _wgslsmith_clamp_vec3_u32(~vec3<u32>(4294967295u, 0u, global1.a.x), vec3<u32>(62890u, u_input.b, 53256u), _wgslsmith_mod_vec3_u32(vec3<u32>(14711u, global1.a.x, global1.a.x), vec3<u32>(u_input.b, 75454u, 437u)))));
    var var_4 = _wgslsmith_dot_vec4_i32(min(_wgslsmith_sub_vec4_i32(select(vec4<i32>(u_input.c, -2147483647i, -1i, 0i), vec4<i32>(global1.b, -35180i, 1i, u_input.d), vec4<bool>(var_3.x, var_3.x, var_3.x, false)), vec4<i32>(25277i, -1i, 1i, global1.b) | vec4<i32>(u_input.c, global1.b, 45836i, 0i)), -vec4<i32>(0i, -38802i, global1.b, 0i) ^ (vec4<i32>(0i, 22525i, global1.b, 0i) << (vec4<u32>(u_input.b, u_input.b, 4294967295u, 1u) % vec4<u32>(32u)))), countOneBits(_wgslsmith_add_vec4_i32(~vec4<i32>(-24478i, -14147i, global1.b, 17418i), vec4<i32>(u_input.c, u_input.c, -2147483647i, 39724i)))) >= min(countOneBits(-72509i), _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_div_i32(u_input.a.x, 22085i), u_input.c, _wgslsmith_dot_vec4_i32(vec4<i32>(-29840i, -2147483647i, -12026i, global1.b), vec4<i32>(-30035i, 16886i, 0i, 2147483647i))), _wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, -2147483647i, u_input.c) & u_input.a, u_input.a)));
    return vec2<bool>(var_3.x, !(var_3.x | var_3.x));
}

fn func_1() -> i32 {
    var var_0 = !func_2(-671f);
    let var_1 = Struct_1(vec2<u32>(61411u, global1.a.x), -(_wgslsmith_mod_i32(min(2147483647i, 0i), u_input.d) | u_input.a.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1102f, global0[_wgslsmith_index_u32(u_input.b, 11u)])), global2[_wgslsmith_index_u32(abs(global1.a.x), 14u)]))))));
    return _wgslsmith_clamp_i32(var_1.b, ~(-_wgslsmith_sub_i32(u_input.a.x, 56101i)), min(u_input.c, min(reverseBits(-2363i), -1i))) ^ 24650i;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(global1.a, _wgslsmith_mult_i32(~func_1() << (u_input.b % 32u), -14369i), _wgslsmith_div_f32(global1.c, global2[_wgslsmith_index_u32(8075u, 14u)]));
    global2 = array<f32, 14>();
    global2 = array<f32, 14>();
    global2 = array<f32, 14>();
    var var_0 = (~_wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, global1.a.x, u_input.b), vec3<u32>(65675u, u_input.b, global1.a.x)), firstTrailingBit(vec3<u32>(4294967295u, global1.a.x, 29142u))) | _wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(1u, global1.a.x, 1u)), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(62054u, 62918u, 4294967295u), vec3<u32>(88212u, 9516u, global1.a.x), vec3<u32>(4294967295u, global1.a.x, 45406u)))) << (~(~(~vec3<u32>(53771u, global1.a.x, global1.a.x))) % vec3<u32>(32u));
    var var_1 = Struct_1(~(~var_0.yy), firstTrailingBit(select(global1.b, _wgslsmith_dot_vec4_i32(vec4<i32>(-73827i, u_input.d, global1.b, u_input.c), ~vec4<i32>(-29318i, u_input.c, u_input.c, u_input.d)), false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(2142f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(912f, global2[_wgslsmith_index_u32(0u, 14u)]))))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<i32>(abs(_wgslsmith_mult_i32(-15575i, var_1.b)), -2147483647i), reverseBits(-2147483647i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2[_wgslsmith_index_u32(4294967295u, 14u)], global1.c, 215f, global0[_wgslsmith_index_u32(4294967295u, 11u)]), _wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(7036u, 14u)], 1299f, -609f, 1022f) - vec4<f32>(235f, -779f, global2[_wgslsmith_index_u32(26281u, 14u)], global2[_wgslsmith_index_u32(var_1.a.x, 14u)])), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(727f, -1000f, -468f, global0[_wgslsmith_index_u32(var_1.a.x, 11u)]), vec4<f32>(645f, var_1.c, global1.c, global2[_wgslsmith_index_u32(global1.a.x, 14u)]))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2[_wgslsmith_index_u32(var_0.x, 14u)], global2[_wgslsmith_index_u32(4294967295u, 14u)], -555f, 1528f), vec4<f32>(global1.c, 1000f, -478f, var_1.c), vec4<bool>(true, true, false, true)))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(299f, var_1.c, 1636f, 1215f) - vec4<f32>(-594f, var_1.c, var_1.c, -496f)))));
}

