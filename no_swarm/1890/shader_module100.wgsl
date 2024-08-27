struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: i32,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: u32,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_3,
}

struct Struct_5 {
    a: f32,
    b: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec3<f32>,
    d: vec4<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: vec2<i32>;

var<private> global2: array<Struct_3, 3> = array<Struct_3, 3>(Struct_3(77351u), Struct_3(4294967295u), Struct_3(25186u));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: f32) -> u32 {
    var var_0 = _wgslsmith_add_i32(global1.x | ~global1.x, ~(-global1.x));
    let var_1 = reverseBits(_wgslsmith_mod_i32(-4069i, 2147483647i));
    var var_2 = arg_0;
    var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + arg_0)))), arg_0);
    var_2 = arg_0;
    return _wgslsmith_clamp_u32(u_input.a.x, 0u, ~33886u);
}

fn func_3(arg_0: Struct_4, arg_1: Struct_5, arg_2: Struct_2) -> vec2<u32> {
    return _wgslsmith_add_vec2_u32(u_input.a.zz ^ arg_0.a, u_input.b.xx);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: vec2<u32>) -> vec3<i32> {
    global2 = array<Struct_3, 3>();
    global2 = array<Struct_3, 3>();
    var var_0 = _wgslsmith_mult_i32(_wgslsmith_div_i32(-2147483647i, global1.x >> (u_input.a.x % 32u)), global1.x);
    var var_1 = countOneBits(u_input.b << (_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_3.x, u_input.b.x, global0.a) & vec3<u32>(117358u, arg_3.x, global0.a), abs(u_input.a.wxy), ~_wgslsmith_sub_vec3_u32(vec3<u32>(global0.a, arg_1.b, 87764u), u_input.a.xxy)) % vec3<u32>(32u)));
    var var_2 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1.a.x)) - 673f)), _wgslsmith_f_op_f32(-518f + _wgslsmith_f_op_f32(ceil(521f))), 247f), 4294967295u);
    return _wgslsmith_sub_vec3_i32(~vec3<i32>(global1.x, -2147483647i, firstTrailingBit(reverseBits(global1.x))), vec3<i32>((select(-2147483647i, global1.x, true) | global1.x) ^ (1i | _wgslsmith_dot_vec4_i32(vec4<i32>(7086i, 53524i, -1i, global1.x), vec4<i32>(global1.x, -2147483647i, 20470i, global1.x))), firstLeadingBit(abs(global1.x)), (~global1.x | firstTrailingBit(-38694i)) << (var_1.x % 32u)));
}

fn func_2(arg_0: i32, arg_1: vec4<i32>, arg_2: u32) -> Struct_3 {
    var var_0 = -23033i & global1.x;
    let var_1 = -1i;
    let var_2 = vec4<u32>(_wgslsmith_mult_u32(~76279u, ~global0.a << (_wgslsmith_mult_u32(84271u, global0.a) % 32u)), firstTrailingBit(~abs(0u)), ~global0.a, _wgslsmith_div_u32(reverseBits(u_input.b.x), ~4294967295u)) & u_input.a;
    let var_3 = countOneBits(reverseBits(func_4(Struct_3(0u), Struct_2(vec3<f32>(504f, 121f, -521f), 16836u), vec4<f32>(886f, -140f, 1966f, -976f), func_3(Struct_4(u_input.a.xy, Struct_1(arg_1.xww, 655f, 0i, 56850i, -1000f), Struct_3(1u)), Struct_5(-201f, var_1), Struct_2(vec3<f32>(118f, 1975f, 382f), global0.a))) >> ((vec3<u32>(0u, u_input.a.x, arg_2) & vec3<u32>(4294967295u, 4294967295u, 4294967295u)) % vec3<u32>(32u))));
    var var_4 = vec4<i32>(-countOneBits(firstTrailingBit(1i)), -1i, _wgslsmith_add_i32(~0i, -2147483647i), 0i);
    return global2[_wgslsmith_index_u32(arg_2, 3u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec2<i32>(0i, global1.x) >> (_wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_div_u32(54447u, 4294967295u), func_1(-291f)), u_input.a.yz) % vec2<u32>(32u)), vec2<i32>(global1.x, 64455i) | ~select(_wgslsmith_div_vec2_i32(vec2<i32>(global1.x, 52436i), vec2<i32>(-6834i, global1.x)), firstTrailingBit(vec2<i32>(global1.x, global1.x)), vec2<bool>(true, true)), vec2<bool>(true, true));
    global0 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.a, ~vec4<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.b.x), ~u_input.a.yw), 1u, 4294967295u)), 3u)];
    global1 = ~firstLeadingBit(-(~_wgslsmith_mult_vec2_i32(var_0, vec2<i32>(51385i, global1.x))));
    global0 = func_2(var_0.x, vec4<i32>(~max(-global1.x, -33519i), -_wgslsmith_sub_i32(43587i, 54067i) >> (min(global0.a, u_input.a.x) % 32u), ~(-var_0.x), ~firstTrailingBit(global1.x) ^ var_0.x), 27417u);
    global2 = array<Struct_3, 3>();
    global0 = func_2(global1.x, reverseBits(abs(~vec4<i32>(global1.x, var_0.x, 0i, var_0.x) << (abs(vec4<u32>(u_input.b.x, 1u, global0.a, 54971u)) % vec4<u32>(32u)))), select(~(~(~u_input.a.x)), ~(4294967295u & ~global0.a), !all(vec4<bool>(true, true, true, true))));
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-1206f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1103f - _wgslsmith_f_op_f32(max(-278f, 1111f))), _wgslsmith_f_op_f32(563f * _wgslsmith_f_op_f32(abs(1000f))), true)), 2121f, _wgslsmith_f_op_f32(sign(832f))) + vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, -1070f) * 393f), 863f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-998f)), _wgslsmith_f_op_f32(-1561f * -270f))))), -718f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -234f), _wgslsmith_f_op_f32(trunc(323f))))));
    var var_2 = func_2(-2147483647i, firstTrailingBit(min(-abs(vec4<i32>(global1.x, -25241i, -1i, -1i)), vec4<i32>(0i, 1i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, global1.x, global1.x), vec3<i32>(var_0.x, var_0.x, 0i)), ~var_0.x))), u_input.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, var_1.xww, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1.x, 129f, 1000f), var_1.xxz)))))), max(vec4<i32>(-1i) * -(vec4<i32>(0i, 31070i, var_0.x, global1.x) >> (u_input.a % vec4<u32>(32u))), max(select(min(vec4<i32>(0i, global1.x, 1i, var_0.x), vec4<i32>(var_0.x, 1i, 36088i, global1.x)), ~vec4<i32>(var_0.x, -2147483647i, -67225i, var_0.x), true), _wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, -1i, 31297i, global1.x) | vec4<i32>(23871i, 29694i, 0i, global1.x), abs(vec4<i32>(-31760i, 2147483647i, global1.x, global1.x))))), firstTrailingBit(-var_0.x) >> (_wgslsmith_mod_u32(~_wgslsmith_dot_vec2_u32(u_input.a.zy, vec2<u32>(24283u, 27675u)), _wgslsmith_div_u32(73308u, firstTrailingBit(var_2.a))) % 32u));
}

