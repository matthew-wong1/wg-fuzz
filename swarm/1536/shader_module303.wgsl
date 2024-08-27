struct Struct_1 {
    a: vec3<u32>,
    b: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec3<bool>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct Struct_5 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 31> = array<vec3<i32>, 31>(vec3<i32>(-36625i, 0i, 0i), vec3<i32>(-975i, 0i, 1i), vec3<i32>(1329i, 0i, 5533i), vec3<i32>(-14791i, -34821i, -18092i), vec3<i32>(45468i, 1i, 43663i), vec3<i32>(2147483647i, 1i, i32(-2147483648)), vec3<i32>(i32(-2147483648), 1i, 1i), vec3<i32>(0i, 20883i, 4918i), vec3<i32>(19577i, 1i, i32(-2147483648)), vec3<i32>(2147483647i, 48734i, -24540i), vec3<i32>(47133i, -1i, 62508i), vec3<i32>(23871i, 2147483647i, -16931i), vec3<i32>(35617i, 2147483647i, i32(-2147483648)), vec3<i32>(870i, i32(-2147483648), -54806i), vec3<i32>(-1i, 57672i, -45406i), vec3<i32>(0i, -1i, 23564i), vec3<i32>(56709i, i32(-2147483648), -22230i), vec3<i32>(-32093i, -15354i, -6740i), vec3<i32>(2147483647i, -14991i, -1i), vec3<i32>(-1i, -2210i, i32(-2147483648)), vec3<i32>(-1i, -33413i, 0i), vec3<i32>(-30823i, 1i, 2147483647i), vec3<i32>(22927i, 0i, -25635i), vec3<i32>(-1i, -1i, -30690i), vec3<i32>(0i, 2147483647i, 1i), vec3<i32>(-1i, -6017i, -48348i), vec3<i32>(1i, -26367i, -14688i), vec3<i32>(0i, -10570i, -1i), vec3<i32>(-1i, 1i, 0i), vec3<i32>(-1i, 1i, -43264i), vec3<i32>(-1009i, -1i, 1i));

var<private> global1: Struct_1 = Struct_1(vec3<u32>(63893u, 4294967295u, 1u), false);

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_2(arg_0: i32, arg_1: vec3<i32>, arg_2: u32) -> vec2<i32> {
    var var_0 = Struct_4(arg_1);
    var_0 = Struct_4(select(select(reverseBits(arg_1), -vec3<i32>(arg_1.x, 2325i, arg_1.x), !vec3<bool>(global1.b, false, false)), var_0.a, select(select(vec3<bool>(global1.b, global1.b, global1.b), vec3<bool>(global1.b, global1.b, global1.b), vec3<bool>(global1.b, global1.b, true)), vec3<bool>(true, true, true), select(false, true, true))) ^ arg_1);
    return vec2<i32>(-_wgslsmith_add_i32(_wgslsmith_sub_i32(arg_0, -27700i), ~arg_0), var_0.a.x) | select(max(-(~arg_1.zx), min(-arg_1.zz, vec2<i32>(-1i, arg_0))), vec2<i32>(u_input.c, -(-20178i >> (global1.a.x % 32u))), vec2<bool>(true, true));
}

fn func_3(arg_0: vec3<i32>, arg_1: bool) -> vec2<i32> {
    global1 = Struct_1(vec3<u32>(0u, ~global1.a.x, global1.a.x), !global1.b);
    var var_0 = !vec2<bool>(true, all(vec4<bool>(true, false, true, !arg_1)));
    var var_1 = select(vec4<bool>(true, var_0.x, !(_wgslsmith_f_op_f32(abs(-439f)) == _wgslsmith_f_op_f32(sign(994f))), !global1.b), select(select(select(vec4<bool>(var_0.x, global1.b, true, var_0.x), !vec4<bool>(false, global1.b, var_0.x, true), !vec4<bool>(true, false, arg_1, true)), !vec4<bool>(false, global1.b, true, arg_1), vec4<bool>(true, true, true, true)), !(!select(vec4<bool>(arg_1, false, arg_1, arg_1), vec4<bool>(false, var_0.x, global1.b, true), global1.b)), var_0.x && global1.b), any(vec3<bool>(true, !all(vec3<bool>(arg_1, true, var_0.x)), global1.a.x == ~38373u)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -549f))));
    let var_3 = vec4<i32>(_wgslsmith_mod_i32(~(-22471i), u_input.c), -13532i, 1i & func_2(-arg_0.x, arg_0, 1u).x, -_wgslsmith_mult_i32(u_input.c, firstLeadingBit(u_input.c)));
    return -var_3.xz;
}

fn func_1(arg_0: vec2<u32>) -> vec2<f32> {
    var var_0 = _wgslsmith_div_vec2_i32(vec2<i32>(-1i) * -func_2(u_input.b, -global0[_wgslsmith_index_u32(global1.a.x, 31u)], ~arg_0.x), func_3(~vec3<i32>(0i, firstTrailingBit(3682i), 0i & u_input.a), global1.b));
    global0 = array<vec3<i32>, 31>();
    global1 = Struct_1(~global1.a, !(global1.a.x <= (~global1.a.x ^ ~72795u)));
    let var_1 = Struct_4(abs(global0[_wgslsmith_index_u32(global1.a.x, 31u)]));
    var var_2 = ~firstTrailingBit(50075u);
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(561f, -757f) + vec2<f32>(-907f, 793f)) * vec2<f32>(-1359f, 1683f)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1459f, 221f) - vec2<f32>(-350f, 407f)) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1182f, 933f))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1315f - 1000f)), -448f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(555f, -411f) + vec2<f32>(1264f, -1658f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1593f, 530f))))));
}

fn func_4(arg_0: vec2<f32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_vec2_f32(func_1(global1.a.yy)).x)), 595f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.x), 791f, any(vec3<bool>(true, global1.b, global1.b))))));
    global1 = Struct_1(global1.a, global1.b);
    global0 = array<vec3<i32>, 31>();
    var var_1 = abs(vec4<i32>(-u_input.c, abs(106279i), u_input.b, ~u_input.a) | -(~vec4<i32>(2085i, u_input.c, u_input.b, u_input.a) << (vec4<u32>(global1.a.x, 0u, global1.a.x, global1.a.x) % vec4<u32>(32u))));
    var var_2 = Struct_5(global1.a);
    return Struct_2(~_wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, 17247i), _wgslsmith_sub_vec2_i32(var_1.zy, var_1.xw)), -(var_1.wz << (vec2<u32>(var_2.a.x, 30227u) % vec2<u32>(32u)))), global0[_wgslsmith_index_u32(1u, 31u)], reverseBits(_wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(countOneBits(var_2.a.xy), reverseBits(vec2<u32>(4294967295u, var_2.a.x))), vec2<u32>(_wgslsmith_add_u32(35205u, 20722u), 10203u))), select(!vec3<bool>(true, all(vec3<bool>(false, global1.b, global1.b)), true), select(vec3<bool>(true, global1.b, any(vec3<bool>(true, global1.b, global1.b))), !select(vec3<bool>(global1.b, global1.b, false), vec3<bool>(global1.b, false, false), true), false), vec3<bool>(select(true & global1.b, global1.b, false), any(!vec3<bool>(global1.b, global1.b, global1.b)), global1.b)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<i32>, 31>();
    global1 = Struct_1(global1.a, false || !(!(global1.b & false)));
    global0 = array<vec3<i32>, 31>();
    global0 = array<vec3<i32>, 31>();
    var var_0 = _wgslsmith_clamp_vec2_u32(abs(global1.a.zz), reverseBits(countOneBits(~vec2<u32>(15951u, global1.a.x) >> (~vec2<u32>(global1.a.x, 7073u) % vec2<u32>(32u)))), countOneBits(abs(~(global1.a.yz & vec2<u32>(global1.a.x, 1u)))));
    let var_1 = func_4(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(func_1(~(~vec2<u32>(0u, var_0.x)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1324f, -1093f)))));
    global1 = Struct_1(global1.a, false);
    let var_2 = ~var_1.b.yx;
    let var_3 = 39692u;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(-29986i >> ((0u >> (var_3 % 32u)) % 32u)), ~(~firstLeadingBit(global1.a)) ^ (vec3<u32>(var_1.c.x, ~var_3, reverseBits(var_1.c.x)) | ~(~global1.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-231f, _wgslsmith_f_op_f32(-123f * 1625f), any(!vec3<bool>(false, var_1.d.x, false)))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-936f + -1170f) + _wgslsmith_f_op_f32(f32(-1f) * -1602f)), 1386f, any(vec4<bool>(false, false, true, var_1.d.x)) && true))));
}

