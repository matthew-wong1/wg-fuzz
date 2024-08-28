struct Struct_1 {
    a: bool,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(false, vec3<bool>(false, false, false));

var<private> global1: array<Struct_2, 32>;

var<private> global2: Struct_2 = Struct_2(vec3<u32>(4294967295u, 23092u, 54711u), vec2<bool>(false, false));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> vec3<i32> {
    global1 = array<Struct_2, 32>();
    global0 = Struct_1(true, arg_0.b);
    var var_0 = u_input.a.x;
    global0 = Struct_1(false | !select(38672u > global2.a.x, arg_0.b.x, true), select(select(select(select(arg_0.b, vec3<bool>(false, true, false), vec3<bool>(global2.b.x, true, false)), !vec3<bool>(global0.b.x, true, global2.b.x), !vec3<bool>(global2.b.x, global2.b.x, false)), vec3<bool>(all(vec4<bool>(global0.a, false, global0.b.x, false)), false, any(vec4<bool>(global2.b.x, global0.a, global0.a, true))), true), !(!global0.b), arg_0.b.x));
    var var_1 = -13139i;
    return _wgslsmith_sub_vec3_i32(vec3<i32>(countOneBits(reverseBits(i32(-1i) * -1i)), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 66432i), ~vec2<i32>(1i, -26772i)) >> (~(~global2.a.x) % 32u), 1i), ~(~(vec3<i32>(-1i, -21714i, 10565i) >> (global2.a % vec3<u32>(32u)))) >> (vec3<u32>(reverseBits(global2.a.x), countOneBits(~1u), u_input.a.x) % vec3<u32>(32u)));
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: vec2<u32>) -> f32 {
    let var_0 = arg_2.x & firstLeadingBit(arg_2.x);
    let var_1 = _wgslsmith_dot_vec3_i32(~(abs(select(vec3<i32>(21958i, 0i, 2147483647i), vec3<i32>(-2147483647i, -1i, -18858i), arg_0.a)) ^ _wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(20520i, 39598i, 8564i), vec3<i32>(-20517i, 1i, -1i)), func_3(Struct_1(arg_0.a, vec3<bool>(global0.b.x, true, false))))), _wgslsmith_clamp_vec3_i32(vec3<i32>(23318i, -reverseBits(2147483647i), ~(-24272i)), _wgslsmith_clamp_vec3_i32(-min(vec3<i32>(0i, 69838i, -1i), vec3<i32>(-1i, 2147483647i, 0i)), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 54184i, -34650i, -2147483647i), vec4<i32>(-23812i, -6494i, -2147483647i, 1i)), _wgslsmith_dot_vec4_i32(vec4<i32>(-54978i, -1i, 16237i, -36909i), vec4<i32>(2147483647i, -2147483647i, 14556i, 0i)), 6557i), vec3<i32>(_wgslsmith_mod_i32(-2478i, -2147483647i), 1i, 1i)), _wgslsmith_mod_vec3_i32(vec3<i32>(~(-40450i), ~3293i, _wgslsmith_mult_i32(0i, 2765i)), vec3<i32>(-55095i, 12263i, -2147483647i >> (0u % 32u)))));
    let var_2 = 28437u << (global2.a.x % 32u);
    global2 = Struct_2(global2.a, select(!vec2<bool>(all(vec4<bool>(true, false, false, false)), var_1 > 5985i), !arg_0.b.zy, !global2.b));
    let var_3 = Struct_2(~firstLeadingBit(_wgslsmith_sub_vec3_u32(global2.a, u_input.a.xzx)), arg_0.b.yx);
    return arg_1;
}

fn func_1() -> f32 {
    global2 = Struct_2(~(~(~(~u_input.a.zzx))), global2.b);
    let var_0 = abs(_wgslsmith_sub_u32(u_input.a.x, ~(global2.a.x | ~global2.a.x)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_1(all(vec4<bool>(false, global2.b.x, false, true)) & !global2.b.x, vec3<bool>(true, global2.b.x, any(vec2<bool>(global0.b.x, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(2434f * 2522f)))), vec2<u32>(96595u, global2.a.x))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-751f + -2029f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_1(false, vec3<bool>(global2.b.x, global0.a, false)), _wgslsmith_f_op_f32(-1602f - 127f), ~vec2<u32>(var_0, u_input.a.x))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1083f)) + -128f)), !(!any(vec2<bool>(global2.b.x, false))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1i;
    global1 = array<Struct_2, 32>();
    let var_1 = 30123i;
    global2 = global1[_wgslsmith_index_u32(22934u, 32u)];
    let var_2 = ~_wgslsmith_div_u32(1u, 4294967295u);
    var var_3 = !(!vec3<bool>(true, _wgslsmith_f_op_f32(f32(-1f) * -1595f) == _wgslsmith_f_op_f32(func_1()), !global2.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 53448u, 29086u) << (global2.a % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(u_input.a.wzw, vec3<u32>(global2.a.x, global2.a.x, 14594u)) >> (u_input.a.yzx % vec3<u32>(32u))), firstLeadingBit(abs(~reverseBits(u_input.a.x))), vec3<i32>(var_1 << (u_input.a.x % 32u), 1i | (var_0 & (var_0 ^ var_1)), _wgslsmith_div_i32(var_1, var_1)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(275f, -384f))))))));
}

