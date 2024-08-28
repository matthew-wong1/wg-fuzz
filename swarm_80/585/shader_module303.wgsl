struct Struct_1 {
    a: vec3<u32>,
    b: vec4<f32>,
    c: f32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: vec2<i32>,
    d: vec4<i32>,
    e: u32,
}

struct Struct_5 {
    a: vec3<i32>,
    b: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 5>;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: vec4<i32>) -> vec3<bool> {
    let var_0 = Struct_2(all(!select(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 5u)], false), !vec2<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 5u)], true), any(vec2<bool>(global0[_wgslsmith_index_u32(39678u, 5u)], global0[_wgslsmith_index_u32(u_input.a.x, 5u)])))));
    var var_1 = 1u;
    let var_2 = 2147483647i;
    let var_3 = _wgslsmith_sub_i32(_wgslsmith_add_i32(abs(_wgslsmith_dot_vec2_i32(-arg_1.yz, ~arg_1.xz)), var_2), 1i);
    let var_4 = Struct_4(Struct_2(all(!select(vec3<bool>(true, var_0.a, global0[_wgslsmith_index_u32(84409u, 5u)]), vec3<bool>(var_0.a, true, global0[_wgslsmith_index_u32(u_input.d.x, 5u)]), vec3<bool>(true, false, global0[_wgslsmith_index_u32(u_input.a.x, 5u)])))), Struct_1(u_input.a.zyw, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(180f, 596f, 454f, arg_0.a), vec4<f32>(-1832f, -1040f, -214f, arg_0.a), true)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(706f, arg_0.a, arg_0.a, arg_0.a))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a, -1123f, 173f, arg_0.a) - vec4<f32>(1364f, arg_0.a, arg_0.a, -144f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.a))))), max(~_wgslsmith_clamp_vec2_i32(abs(vec2<i32>(-1149i, -4171i)), vec2<i32>(var_3, var_3) << (vec2<u32>(u_input.d.x, u_input.d.x) % vec2<u32>(32u)), -vec2<i32>(-1i, 51256i)), _wgslsmith_div_vec2_i32(firstTrailingBit(_wgslsmith_mult_vec2_i32(arg_1.zz, arg_1.zx)), min(max(vec2<i32>(7390i, var_3), arg_1.yz), vec2<i32>(var_3, 2147483647i)))), (~abs(arg_1) << (vec4<u32>(u_input.a.x, 0u, _wgslsmith_clamp_u32(0u, 0u, u_input.d.x), u_input.b) % vec4<u32>(32u))) ^ arg_1, 14074u);
    return select(!(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, var_4.a.a, false), vec3<bool>(var_0.a, false, var_0.a), false), true)), vec3<bool>(global0[_wgslsmith_index_u32(max(1u, countOneBits(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(52399u, var_4.e, 1u, var_4.b.a.x)))), 5u)], true, (u_input.a.x < ~4294967295u) & (0i <= _wgslsmith_sub_i32(var_3, 4856i))), true);
}

fn func_2(arg_0: vec3<i32>, arg_1: vec3<f32>, arg_2: i32, arg_3: vec3<u32>) -> vec2<i32> {
    let var_0 = ~1i;
    let var_1 = !func_3(Struct_3(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_1.x - arg_1.x), _wgslsmith_f_op_f32(-arg_1.x)))), vec4<i32>(~(i32(-1i) * -17392i), abs(~(-2147483647i)), arg_0.x, -arg_0.x));
    let var_2 = Struct_2(var_1.x == (firstLeadingBit(u_input.c) <= -_wgslsmith_mod_i32(var_0, arg_0.x)));
    let var_3 = vec4<i32>(arg_0.x, arg_2, abs(u_input.c) << (firstLeadingBit(u_input.d.x) % 32u), 5330i);
    var var_4 = arg_0.x;
    return arg_0.yz;
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: Struct_4) -> bool {
    var var_0 = -func_2(vec3<i32>(-1i) * -(vec3<i32>(36165i, 14675i, arg_2.d.x) | arg_2.d.yzz), arg_2.b.b.zyy, 1i, u_input.a.zxw);
    let var_1 = u_input.a.xw;
    var var_2 = 1952f;
    let var_3 = _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(~arg_2.b.a.x, u_input.a.x, countOneBits(1u), arg_2.b.a.x), u_input.d), u_input.d.x);
    var var_4 = !vec3<bool>(global0[_wgslsmith_index_u32(var_3, 5u)], arg_1, select(arg_2.a.a, global0[_wgslsmith_index_u32(~(~var_3), 5u)], func_3(Struct_3(2384f), _wgslsmith_div_vec4_i32(arg_2.d, vec4<i32>(-2147483647i, -2147483647i, 2147483647i, var_0.x))).x));
    return any(vec2<bool>(true, func_3(Struct_3(arg_2.b.b.x), vec4<i32>(arg_2.c.x, _wgslsmith_dot_vec2_i32(vec2<i32>(34831i, var_0.x), arg_2.c), firstTrailingBit(arg_2.c.x), -11637i)).x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(~(~(~u_input.a.zyz)));
    let var_1 = vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 5u)], func_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -198f), -585f)), true, Struct_4(Struct_2(global0[_wgslsmith_index_u32(1u, 5u)]), Struct_1(u_input.d.xzz | vec3<u32>(var_0.x, 381u, u_input.d.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(185f, 738f, -1221f, -219f)), 683f), _wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, 33577i) >> (vec2<u32>(u_input.a.x, 0u) % vec2<u32>(32u)), ~vec2<i32>(u_input.c, 0i), max(vec2<i32>(u_input.c, -2147483647i), vec2<i32>(u_input.c, u_input.c))), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c, 24047i, u_input.c, 1i), firstTrailingBit(vec4<i32>(u_input.c, 1i, u_input.c, 2147483647i))), 1u)), u_input.c >= _wgslsmith_div_i32(~u_input.c | _wgslsmith_dot_vec4_i32(vec4<i32>(13233i, u_input.c, 0i, -1i), vec4<i32>(u_input.c, 1i, u_input.c, -38438i)), abs(1i)));
    var var_2 = Struct_2(select(false, -48718i >= _wgslsmith_div_i32(u_input.c, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, 0i), vec2<i32>(-16869i, -11295i))), countOneBits(var_0.x) == min(_wgslsmith_mult_u32(u_input.a.x, 1u), _wgslsmith_mult_u32(8245u, u_input.a.x))));
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-581f)) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(1095f, 499f))))))), 123f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(601f)))))));
    var var_4 = Struct_4(Struct_2(false), Struct_1(vec3<u32>(abs(u_input.a.x), _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(u_input.d, u_input.d), var_0.x ^ 0u), u_input.a.x & _wgslsmith_dot_vec2_u32(u_input.d.xw, vec2<u32>(0u, 4294967295u))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-510f, var_3.x, -294f, var_3.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.x, -513f, var_3.x, var_3.x) * vec4<f32>(var_3.x, 1755f, var_3.x, 520f)))), vec4<f32>(_wgslsmith_f_op_f32(abs(642f)), _wgslsmith_f_op_f32(sign(var_3.x)), -391f, 385f))), -340f), -_wgslsmith_add_vec2_i32(firstLeadingBit(countOneBits(vec2<i32>(u_input.c, -1i))), vec2<i32>(45614i, u_input.c)), vec4<i32>(_wgslsmith_clamp_i32(u_input.c >> (u_input.a.x % 32u), abs(u_input.c), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, 41050i, u_input.c), vec3<i32>(u_input.c, -2147483647i, u_input.c))) ^ abs(u_input.c), -2147483647i, i32(-1i) * -1i, u_input.c), 0u);
    let var_5 = Struct_1(reverseBits(var_4.b.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-var_4.b.b), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_4.b.c, var_4.b.b.x, -2048f, var_3.x) * var_4.b.b), vec4<bool>(true, true, true, true))))), _wgslsmith_f_op_f32(var_3.x * var_3.x));
    var_0 = ~_wgslsmith_div_vec3_u32(u_input.d.wyw, firstTrailingBit(vec3<u32>(3391u, 4294967295u, var_4.e) ^ ~var_5.a));
    let var_6 = !(var_4.c.x < -(~max(var_4.d.x, 1i)));
    var_0 = var_5.a;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(64791u), abs(var_5.a.x), firstLeadingBit(~vec3<i32>(u_input.c, -1i << (var_5.a.x % 32u), 18150i)));
}

