struct Struct_1 {
    a: vec2<i32>,
    b: vec4<u32>,
    c: bool,
    d: vec2<u32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec2<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 24> = array<vec3<i32>, 24>(vec3<i32>(0i, -1i, -5975i), vec3<i32>(-14169i, 12712i, 2147483647i), vec3<i32>(1i, -4097i, 1i), vec3<i32>(0i, 1i, -3278i), vec3<i32>(10023i, 15165i, -1i), vec3<i32>(i32(-2147483648), -6171i, 0i), vec3<i32>(3114i, -8361i, 649i), vec3<i32>(1i, 2147483647i, -5018i), vec3<i32>(2147483647i, 25963i, 35275i), vec3<i32>(-1i, 0i, i32(-2147483648)), vec3<i32>(36332i, 0i, -1i), vec3<i32>(55595i, 49175i, 0i), vec3<i32>(-28209i, 46689i, 0i), vec3<i32>(41316i, -1i, 6036i), vec3<i32>(-51041i, -1i, -19233i), vec3<i32>(-1i, 2147483647i, i32(-2147483648)), vec3<i32>(-67362i, 22901i, 0i), vec3<i32>(2147483647i, -1i, -243i), vec3<i32>(0i, 28316i, -18776i), vec3<i32>(-1667i, -1i, 0i), vec3<i32>(-28545i, i32(-2147483648), i32(-2147483648)), vec3<i32>(-19462i, 41466i, 24575i), vec3<i32>(31606i, i32(-2147483648), -6491i), vec3<i32>(2147483647i, -1i, 2147483647i));

var<private> global1: Struct_1 = Struct_1(vec2<i32>(-36179i, -1i), vec4<u32>(1u, 1u, 19024u, 46100u), false, vec2<u32>(16654u, 116546u), vec3<bool>(false, true, true));

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_1(arg_0: Struct_1) -> f32 {
    let var_0 = vec4<bool>(true, true, true, global1.c);
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-641f, -487f));
    global1 = Struct_1(_wgslsmith_mult_vec2_i32(arg_0.a, ~(~(~vec2<i32>(-1i, 2147483647i)))), ~(reverseBits(global1.b) ^ ~vec4<u32>(arg_0.d.x, arg_0.d.x, u_input.a, 19112u)) << ((vec4<u32>(~1u, _wgslsmith_div_u32(22690u, global1.b.x), countOneBits(arg_0.d.x), 1u) << (~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, arg_0.d.x, u_input.a, 0u), global1.b) % vec4<u32>(32u))) % vec4<u32>(32u)), true, global1.d, var_0.yzz);
    let var_2 = Struct_1(~max(vec2<i32>(global1.a.x, 0i) & vec2<i32>(-2147483647i, arg_0.a.x), countOneBits(global1.a)) & ~vec2<i32>(1i, -global1.a.x), firstTrailingBit(vec4<u32>(1u, ~_wgslsmith_mod_u32(global1.b.x, 20508u), 35128u, 13780u)), var_0.x, vec2<u32>(0u, global1.d.x), var_0.xzw);
    var var_3 = 3580u;
    return _wgslsmith_f_op_f32(-125f - _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-2296f * var_1.x)))));
}

fn func_3() -> vec2<i32> {
    let var_0 = -426f;
    var var_1 = countOneBits(global1.a.x);
    global0 = array<vec3<i32>, 24>();
    var var_2 = var_0;
    var_2 = 652f;
    return countOneBits(select(global1.a, vec2<i32>(_wgslsmith_mod_i32(0i, 65301i), global1.a.x), vec2<bool>(true, any(vec3<bool>(false, global1.c, true))))) ^ ~vec2<i32>(_wgslsmith_dot_vec2_i32(global1.a, max(vec2<i32>(global1.a.x, global1.a.x), vec2<i32>(-22378i, -68697i))), max(-1i, 0i));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(select(global1.a, vec2<i32>(global1.a.x, global1.a.x), !vec2<bool>(any(vec2<bool>(true, global1.e.x)), true)), global1.b, true, _wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(global1.b.yy & vec2<u32>(4294967295u, 0u), vec2<u32>(~0u, _wgslsmith_mod_u32(43389u, 8455u)), vec2<u32>(global1.b.x >> (u_input.a % 32u), 1u)), vec2<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(1u, u_input.a, u_input.a), global1.b.yyy), ~vec3<u32>(8553u, 36798u, 1u)), 1u)), vec3<bool>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1000f + -1364f))) < 1721f, global1.e.x, true));
    let var_1 = Struct_1(-(func_3() << (var_0.b.zy % vec2<u32>(32u))), firstTrailingBit(vec4<u32>(~global1.d.x, 64877u, reverseBits(var_0.d.x), ~var_0.d.x | var_0.d.x)), global1.e.x, _wgslsmith_clamp_vec2_u32(global1.d, _wgslsmith_mod_vec2_u32(~_wgslsmith_div_vec2_u32(global1.b.xy, global1.d), var_0.d), var_0.d), select(select(var_0.e, select(vec3<bool>(var_0.e.x, false, var_0.e.x), global1.e, !vec3<bool>(true, global1.e.x, true)), firstTrailingBit(global1.b.x) != (u_input.a | 0u)), !select(select(vec3<bool>(var_0.e.x, false, global1.e.x), vec3<bool>(true, true, global1.c), vec3<bool>(var_0.c, true, var_0.c)), var_0.e, !vec3<bool>(var_0.e.x, var_0.c, false)), all(!select(var_0.e, vec3<bool>(false, true, true), vec3<bool>(var_0.c, false, var_0.c)))));
    global0 = array<vec3<i32>, 24>();
    var var_2 = _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(-global0[_wgslsmith_index_u32(62267u, 24u)] << (abs(var_1.b.yxz) % vec3<u32>(32u)), -select(vec3<i32>(var_1.a.x, 36281i, var_1.a.x), vec3<i32>(var_0.a.x, var_1.a.x, var_0.a.x), vec3<bool>(global1.c, true, global1.e.x))), _wgslsmith_mult_vec3_i32(vec3<i32>(-global1.a.x, var_0.a.x, -var_0.a.x), _wgslsmith_mod_vec3_i32(abs(global0[_wgslsmith_index_u32(8039u, 24u)]), ~global0[_wgslsmith_index_u32(0u, 24u)]))), var_0.a.x);
    var_2 = -_wgslsmith_add_i32(countOneBits(2147483647i & var_0.a.x) << (u_input.a % 32u), -global1.a.x);
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1478f)) * _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(173f, 279f), _wgslsmith_f_op_f32(func_1(Struct_1(vec2<i32>(global1.a.x, global1.a.x), global1.b, false, vec2<u32>(global1.d.x, 1u), vec3<bool>(global1.e.x, false, false))))))))) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -475f) - -494f);
    global0 = array<vec3<i32>, 24>();
    var_0 = !global1.c;
    var_0 = true;
    var var_1 = _wgslsmith_mod_u32(u_input.a, ~62244u) >> (_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(global1.b.yy, ~vec2<u32>(77582u, u_input.a) << (_wgslsmith_div_vec2_u32(vec2<u32>(0u, 24766u), global1.b.xz) % vec2<u32>(32u))), vec2<u32>(~(~26755u), min(42349u, global1.d.x))) % 32u);
    var var_2 = -1i;
    let var_3 = _wgslsmith_mod_u32(54206u, _wgslsmith_div_u32(global1.d.x, ~4294967295u));
    var var_4 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(~(~19564u), _wgslsmith_mod_u32(countOneBits(~0u), var_3)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-133f, 589f, -109f), _wgslsmith_div_vec3_f32(vec3<f32>(-1605f, 1290f, -177f), vec3<f32>(-1000f, -767f, 794f))), vec3<f32>(_wgslsmith_f_op_f32(abs(-2666f)), _wgslsmith_f_op_f32(ceil(393f)), -1110f)) * vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1000f * -716f))), _wgslsmith_f_op_f32(func_1(Struct_1(global1.a, global1.b, global1.e.x, vec2<u32>(0u, global1.b.x), vec3<bool>(var_4.c, true, true)))), _wgslsmith_div_f32(-1988f, _wgslsmith_f_op_f32(min(-1488f, 419f))))), -select(vec2<i32>(i32(-1i) * -1i, var_4.a.x >> (var_4.d.x % 32u)), vec2<i32>(-9526i, var_4.a.x), false), 1u);
}

