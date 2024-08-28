struct Struct_1 {
    a: f32,
    b: f32,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<f32>,
    c: vec3<u32>,
    d: vec4<bool>,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: vec4<bool>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 1> = array<Struct_3, 1>(Struct_3(13932u, 386f, vec4<bool>(true, false, true, true), vec2<u32>(62205u, 1u)));

var<private> global1: Struct_2;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_3, arg_1: f32, arg_2: vec2<u32>) -> bool {
    var var_0 = firstLeadingBit(~(~firstLeadingBit(-36089i)));
    var var_1 = arg_0.c.xx;
    var_0 = ~reverseBits(1i) & ((2147483647i | _wgslsmith_clamp_i32(abs(25740i), 20363i, abs(2147483647i))) ^ ~(-1i));
    var var_2 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(988f, global1.b.x, 945f, -672f) * vec4<f32>(arg_0.b, 215f, global1.b.x, arg_0.b)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global1.b.x, -2966f, -473f, 1587f))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(1778f, 1000f, -1000f, arg_0.b), vec4<f32>(-1698f, arg_1, arg_1, 407f)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(arg_0.b, -642f)), _wgslsmith_f_op_f32(1527f * global1.b.x), -1854f, -188f)))));
    var_0 = reverseBits(_wgslsmith_sub_i32(53674i, -9921i));
    return !(!var_1.x);
}

fn func_2(arg_0: f32, arg_1: vec2<f32>) -> i32 {
    var var_0 = Struct_2(!vec3<bool>(!(arg_0 > -2064f), func_3(global0[_wgslsmith_index_u32(global1.c.x, 1u)], _wgslsmith_f_op_f32(-arg_0), global1.c.yx), global1.a.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.b) + global1.b), global1.c, !global1.d);
    let var_1 = Struct_2(select(select(select(select(vec3<bool>(global1.d.x, global1.a.x, var_0.a.x), var_0.a, vec3<bool>(false, var_0.a.x, true)), var_0.a, global1.a), !select(global1.d.zww, vec3<bool>(true, false, var_0.a.x), true), global1.d.x), select(select(vec3<bool>(var_0.a.x, var_0.a.x, true), var_0.a, global1.d.xwz), vec3<bool>(false, true, func_3(global0[_wgslsmith_index_u32(1u, 1u)], global1.b.x, vec2<u32>(0u, 0u))), vec3<bool>(any(var_0.d), true, global1.a.x)), global1.d.wxy), global1.b, select(min(_wgslsmith_clamp_vec3_u32(~global1.c, firstLeadingBit(global1.c), vec3<u32>(41893u, 93563u, u_input.a.x)), vec3<u32>(_wgslsmith_add_u32(var_0.c.x, 49095u), 1u, var_0.c.x)), max(~abs(vec3<u32>(42074u, global1.c.x, global1.c.x)), var_0.c ^ (vec3<u32>(4294967295u, 50648u, u_input.a.x) | var_0.c)), all(!vec4<bool>(var_0.a.x, false, true, var_0.d.x)) || false), vec4<bool>(global1.d.x | !(var_0.c.x <= var_0.c.x), true, false, all(select(vec4<bool>(global1.d.x, true, false, true), !global1.d, var_0.d))));
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global1.b.x), _wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1004f * global1.b.x))))), global1.b.x) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global1.b.x * _wgslsmith_f_op_f32(min(var_0.b.x, var_1.b.x))), _wgslsmith_f_op_f32(-607f - _wgslsmith_f_op_f32(sign(var_1.b.x))), 247f, global1.b.x)));
    global1 = var_1;
    var var_3 = Struct_2(global1.a, _wgslsmith_f_op_vec3_f32(-global1.b), vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_sub_u32(~global1.c.x, var_1.c.x), _wgslsmith_mult_u32(32448u, ~global1.c.x)), global1.c.x, ~global1.c.x), vec4<bool>(!(true || any(var_1.d.zzw)), var_1.d.x, false, false));
    return min(~(-2147483647i >> ((u_input.a.x ^ 23515u) % 32u)) & reverseBits(firstLeadingBit(_wgslsmith_div_i32(-15563i, -1i))), _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(-1i, 26421i), max(-vec2<i32>(-44625i, 1i), firstTrailingBit(vec2<i32>(-37432i, 2147483647i)))), 49999i >> (1u % 32u)));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec4<f32>) -> vec2<f32> {
    let var_0 = Struct_1(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1.b.x), 308f))), 824f, _wgslsmith_dot_vec3_i32(-vec3<i32>(~(-33713i), -2147483647i, func_2(637f, vec2<f32>(892f, 781f))), firstTrailingBit(~(~vec3<i32>(14015i, 6500i, -51772i)))));
    var var_1 = _wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(~((vec2<i32>(-1i, var_0.d) & vec2<i32>(var_0.d, var_0.d)) & vec2<i32>(var_0.d, -46898i)), _wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(~vec2<i32>(-27187i, -25344i), select(vec2<i32>(13840i, 10612i), vec2<i32>(1i, var_0.d), global1.a.xx)), vec2<i32>(-2147483647i, ~var_0.d), firstLeadingBit(select(vec2<i32>(27273i, var_0.d), vec2<i32>(var_0.d, var_0.d), global1.a.zy)))), _wgslsmith_clamp_vec2_i32(~abs(~vec2<i32>(1i, var_0.d)), min(vec2<i32>(~(-2147483647i), -6428i), vec2<i32>(-2147483647i, -4126i) << (_wgslsmith_sub_vec2_u32(arg_0.xw, vec2<u32>(arg_0.x, 44024u)) % vec2<u32>(32u))), _wgslsmith_sub_vec2_i32(~_wgslsmith_div_vec2_i32(vec2<i32>(-1i, var_0.d), vec2<i32>(-12028i, 1i)), (vec2<i32>(-2147483647i, 2147483647i) & vec2<i32>(var_0.d, var_0.d)) & _wgslsmith_div_vec2_i32(vec2<i32>(var_0.d, var_0.d), vec2<i32>(var_0.d, var_0.d)))));
    let var_2 = 18586u;
    var var_3 = ~reverseBits(vec4<i32>(1i, ~var_0.d, _wgslsmith_mult_i32(_wgslsmith_mult_i32(6275i, var_0.d), var_1.x), -reverseBits(28130i)));
    var var_4 = false;
    return vec2<f32>(-135f, var_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 1>();
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_1(vec4<u32>(66019u, 21599u, u_input.a.x, 25879u), vec4<f32>(global1.b.x, global1.b.x, -1668f, global1.b.x))), global1.b.zz, global1.a.yz))) * global1.b.zy);
    global1 = Struct_2(select(vec3<bool>(true, true, true), select(vec3<bool>(true, var_0.x > var_0.x, false), select(vec3<bool>(true, true, global1.d.x), vec3<bool>(true, global1.d.x, global1.a.x), vec3<bool>(global1.d.x, true, true)), vec3<bool>(true, func_3(Struct_3(0u, var_0.x, global1.d, vec2<u32>(global1.c.x, 1u)), global1.b.x, global1.c.zx), select(true, global1.a.x, global1.a.x))), func_3(global0[_wgslsmith_index_u32(51215u, 1u)], _wgslsmith_f_op_f32(-global1.b.x), abs(u_input.a.yz))), vec3<f32>(var_0.x, 947f, -1549f), min(_wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(0u, global1.c.x, global1.c.x), vec3<u32>(19514u, global1.c.x, global1.c.x)), abs(u_input.a)), global1.c) | vec3<u32>(_wgslsmith_mult_u32(select(global1.c.x, u_input.a.x, global1.d.x), _wgslsmith_sub_u32(0u, global1.c.x)), 1u, _wgslsmith_add_u32(u_input.a.x, _wgslsmith_div_u32(4294967295u, 26744u))), !vec4<bool>(true, select(func_3(global0[_wgslsmith_index_u32(26894u, 1u)], global1.b.x, u_input.a.zz), true, global1.a.x), any(select(vec3<bool>(global1.d.x, true, global1.d.x), vec3<bool>(false, true, global1.a.x), true)), !all(global1.a)));
    let var_1 = _wgslsmith_f_op_f32(min(global1.b.x, _wgslsmith_f_op_f32(-global1.b.x)));
    let var_2 = Struct_2(!vec3<bool>(all(vec3<bool>(true, false, false)) || true, _wgslsmith_f_op_f32(-var_1) > _wgslsmith_f_op_f32(f32(-1f) * -903f), all(vec4<bool>(global1.a.x, true, global1.d.x, global1.a.x))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(global1.b))), vec3<f32>(_wgslsmith_div_f32(-1540f, 621f), -1539f, _wgslsmith_f_op_f32(ceil(-551f))))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1246f), var_0.x, global1.b.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(848f, var_1, 589f))) * global1.b))), ~_wgslsmith_clamp_vec3_u32(~global1.c | vec3<u32>(u_input.a.x, global1.c.x, 10048u), countOneBits(u_input.a), vec3<u32>(_wgslsmith_add_u32(u_input.a.x, global1.c.x), 1u, ~4294967295u)), !(!select(global1.d, !global1.d, !global1.d)));
    let x = u_input.a;
    s_output = StorageBuffer(min(firstTrailingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, -2147483647i, -2147483647i), vec3<i32>(10703i, 1i, -2147483647i), -vec3<i32>(4063i, -80125i, 16139i))), ~(~reverseBits(vec3<i32>(-2147483647i, 2147483647i, 42929i)))), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(firstLeadingBit(~vec2<i32>(16648i, 1i)), vec2<i32>(~(-56870i), 2147483647i << (u_input.a.x % 32u))), reverseBits(countOneBits(max(vec2<i32>(-850i, 2147483647i), vec2<i32>(-62189i, 30742i))))));
}

