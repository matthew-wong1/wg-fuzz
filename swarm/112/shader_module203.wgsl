struct Struct_1 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec2<bool>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 16> = array<u32, 16>(1u, 0u, 0u, 4294967295u, 1u, 1u, 0u, 0u, 65651u, 28094u, 0u, 113688u, 0u, 77068u, 4294967295u, 51782u);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_1(arg_0: vec2<u32>) -> f32 {
    let var_0 = _wgslsmith_mod_vec3_i32(vec3<i32>(~(u_input.b ^ -u_input.b), -29362i, u_input.a.x), -u_input.a.zxy);
    global0 = array<u32, 16>();
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + -301f)), -267f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(724f + _wgslsmith_f_op_f32(ceil(-1325f)))));
    let var_2 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1280f, -1098f))))));
    var_1 = _wgslsmith_f_op_f32(max(-1204f, 939f));
    return -894f;
}

fn func_3() -> vec2<bool> {
    global0 = array<u32, 16>();
    var var_0 = Struct_2(Struct_1(-(select(u_input.a.zzx, u_input.a.www, vec3<bool>(true, true, true)) & abs(u_input.a.wwy)), ~vec3<i32>(-2147483647i, i32(-1i) * -22431i, ~(-18265i)), vec2<bool>(true, true), abs(~u_input.a.zz) | select(abs(u_input.a.yw), abs(vec2<i32>(u_input.b, u_input.a.x)), vec2<bool>(true, true))), ~vec3<u32>(reverseBits(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(47862u, 16u)], 16u)]), ~1u, _wgslsmith_sub_u32(4294967295u, global0[_wgslsmith_index_u32(72116u, 16u)])) & ~_wgslsmith_clamp_vec3_u32(~vec3<u32>(1u, global0[_wgslsmith_index_u32(47997u, 16u)], 1929u), vec3<u32>(1u, 23040u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(2045u, 16u)], 16u)]) << (vec3<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 16u)], 16u)], global0[_wgslsmith_index_u32(1u, 16u)]) % vec3<u32>(32u)), vec3<u32>(global0[_wgslsmith_index_u32(108792u, 16u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 16u)], 16u)], 16u)], 11879u)), Struct_1(_wgslsmith_sub_vec3_i32(u_input.a.xwx, vec3<i32>(u_input.a.x, u_input.a.x, 1i)), ~vec3<i32>(u_input.a.x, 1i, u_input.b >> (61054u % 32u)), vec2<bool>(_wgslsmith_f_op_f32(ceil(-405f)) != _wgslsmith_f_op_f32(floor(151f)), true), vec2<i32>(0i, -55737i)));
    global0 = array<u32, 16>();
    var var_1 = Struct_2(Struct_1(max(-vec3<i32>(3465i, u_input.b, var_0.a.b.x), ~_wgslsmith_clamp_vec3_i32(vec3<i32>(-39161i, u_input.a.x, 0i), var_0.c.b, vec3<i32>(2147483647i, u_input.b, 20741i))), vec3<i32>(-1i) * -_wgslsmith_sub_vec3_i32(vec3<i32>(15558i, 12884i, 62858i), u_input.a.wwx), vec2<bool>(any(vec3<bool>(var_0.c.c.x, true, var_0.c.c.x)), all(vec3<bool>(var_0.c.c.x, var_0.a.c.x, false)) || any(vec3<bool>(var_0.c.c.x, var_0.a.c.x, false))), _wgslsmith_mult_vec2_i32(vec2<i32>(-1i, u_input.a.x), reverseBits(u_input.a.ww)) | select(_wgslsmith_clamp_vec2_i32(vec2<i32>(-44291i, var_0.a.d.x), u_input.a.yz, vec2<i32>(2147483647i, var_0.c.b.x)), vec2<i32>(u_input.a.x, u_input.b), !var_0.c.c.x)), ~_wgslsmith_sub_vec3_u32(var_0.b, var_0.b & var_0.b), Struct_1(vec3<i32>(25887i, 32169i, 1i >> (global0[_wgslsmith_index_u32(firstLeadingBit(1u), 16u)] % 32u)), -select(abs(u_input.a.zxw), var_0.a.b, var_0.a.c.x), vec2<bool>(var_0.a.c.x || true, !(!var_0.c.c.x)), -u_input.a.wy));
    var_1 = Struct_2(var_0.a, vec3<u32>(24701u, _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(var_1.b.x, 42348u, 0u, var_0.b.x)), ~vec4<u32>(42124u, 18118u, global0[_wgslsmith_index_u32(var_1.b.x, 16u)], var_0.b.x)), _wgslsmith_add_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 16u)], 16u)], 16u)], 16u)], 16u)], 16u)], _wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 16u)], 16u)], var_0.b.x, 4294967295u))) & var_1.b, var_0.c);
    return vec2<bool>(any(vec2<bool>(var_1.c.c.x, true)), true);
}

fn func_2(arg_0: f32) -> vec3<i32> {
    var var_0 = vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(max(_wgslsmith_sub_u32(1u, global0[_wgslsmith_index_u32(16168u, 16u)]), ~4294967295u), 16u)], 16u)], 16u)], _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(20378u, global0[_wgslsmith_index_u32(21269u, 16u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(13160u, 16u)], 16u)], 16u)], 16u)], global0[_wgslsmith_index_u32(28888u, 16u)]), vec4<u32>(global0[_wgslsmith_index_u32(1229u, 16u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 16u)], 16u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 16u)], 16u)], 16u)], 16u)], 16u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(23456u, 16u)], 16u)], 16u)])), select(_wgslsmith_mult_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(1u, 16u)], global0[_wgslsmith_index_u32(62471u, 16u)], 1u, global0[_wgslsmith_index_u32(6437u, 16u)]), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 16u)], 16u)], 16u)], 0u, 1u, global0[_wgslsmith_index_u32(4294967295u, 16u)])), abs(vec4<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 16u)], 16u)], 8234u, global0[_wgslsmith_index_u32(4294967295u, 16u)])), true)), ~vec4<u32>(select(global0[_wgslsmith_index_u32(2633u, 16u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 16u)], 16u)], 16u)], true), global0[_wgslsmith_index_u32(0u, 16u)], ~19749u, max(global0[_wgslsmith_index_u32(0u, 16u)], 0u))));
    var var_1 = Struct_2(Struct_1(vec3<i32>(u_input.a.x, ~5678i, ~u_input.a.x) ^ vec3<i32>(_wgslsmith_add_i32(u_input.a.x, u_input.a.x), u_input.b, -u_input.b), ~u_input.a.zxz, select(select(vec2<bool>(true, true), func_3(), any(vec3<bool>(false, false, false))), vec2<bool>(true, true), !func_3()), max(countOneBits(u_input.a.zy), -u_input.a.zw ^ u_input.a.zy)), vec3<u32>(abs(1u & global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(71879u, 16u)], 16u)]), var_0.x, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(16167u, var_0.x, var_0.x, var_0.x), vec4<u32>(4294967295u, 0u, var_0.x, var_0.x)), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(61805u, 16u)], 16u)], 4294967295u, 1u, global0[_wgslsmith_index_u32(var_0.x, 16u)]))) | ~vec3<u32>(0u, 1u, 1u & var_0.x), Struct_1(vec3<i32>(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(13293i, u_input.a.x), u_input.a.xx), u_input.b), vec3<i32>(u_input.a.x, 1i, _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, 2147483647i, u_input.b), vec3<i32>(0i, u_input.b, u_input.a.x)), u_input.a.yzw & u_input.a.yxz)), vec2<bool>(true, true), -countOneBits(vec2<i32>(65022i, u_input.a.x))));
    return vec3<i32>(-44147i, 1i, 2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(true, true, true);
    global0 = array<u32, 16>();
    var var_1 = func_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1088f * _wgslsmith_f_op_f32(func_1(vec2<u32>(19750u, 4294967295u)))))))));
    var_1 = vec3<i32>(-69689i, min(-1i, 2147483647i), -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, i32(-1i) * -37930i, -32762i, i32(-1i) * -1i), min(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, -2147483647i, var_1.x, -5106i), vec4<i32>(0i, 1i, var_1.x, var_1.x)), -u_input.a)));
    let var_2 = min(~firstLeadingBit(vec2<u32>(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 16u)], 16u)], 16u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 32917u, 4294967295u), vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(4294967295u, 16u)], 23353u)), 16u)], 16u)])), vec2<u32>(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 16u)], 16u)], 16u)] | 135849u, 4294967295u ^ abs(global0[_wgslsmith_index_u32(30281u, 16u)])), 16u)], ~global0[_wgslsmith_index_u32(16498u, 16u)]));
    var var_3 = -reverseBits(u_input.a.xwy);
    var_1 = vec3<i32>(_wgslsmith_add_i32(u_input.b, countOneBits(_wgslsmith_sub_i32(i32(-1i) * -2147483647i, u_input.b))), ~(~0i), _wgslsmith_dot_vec2_i32(vec2<i32>(67651i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_3.x, -21351i, var_1.x, -1i), -vec4<i32>(u_input.b, -35964i, -1i, 10559i))), ~vec2<i32>(1i, 0i) ^ vec2<i32>(var_3.x >> (var_2.x % 32u), _wgslsmith_add_i32(-2280i, 0i))));
    var_3 = vec3<i32>(-1352i, var_1.x, -51907i);
    var var_4 = Struct_1(vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_div_i32(var_3.x, -28245i), -u_input.b, u_input.a.x & _wgslsmith_sub_i32(36072i, var_3.x)), 14680i, _wgslsmith_dot_vec3_i32(u_input.a.zzy, u_input.a.yxy)), vec3<i32>(i32(-1i) * -14083i, _wgslsmith_div_i32(var_3.x ^ var_3.x, 1i), 1i), select(!(!(!var_0.xz)), var_0.zy, var_0.yy), _wgslsmith_sub_vec2_i32(firstLeadingBit(var_1.zz), u_input.a.yw));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-363f, 168f, 1000f)))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(2356f, 888f, -501f))))), select(vec3<bool>(var_4.c.x, true, true), !var_0, true)))), ~(~(~(~4294967295u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-321f, -1000f, -1000f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1005f, -272f, -324f))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-274f, -347f, 517f), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1000f, 2462f, 1028f)))) * vec3<f32>(1f, 1f, 1f))));
}

