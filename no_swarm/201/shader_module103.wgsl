struct Struct_1 {
    a: i32,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: u32,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct Struct_3 {
    a: f32,
    b: vec4<u32>,
    c: f32,
}

struct Struct_4 {
    a: u32,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<u32, 29> = array<u32, 29>(1u, 4294967295u, 1u, 23112u, 1u, 41293u, 4294967295u, 1u, 476u, 1u, 22791u, 28834u, 4294967295u, 78157u, 16740u, 0u, 81550u, 4294967295u, 8248u, 35528u, 29523u, 1u, 47260u, 0u, 1u, 0u, 59996u, 46342u, 41952u);

var<private> global2: Struct_2 = Struct_2(1u, vec3<i32>(7102i, 2147483647i, 0i), vec4<u32>(45369u, 58263u, 66220u, 4294967295u));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: vec2<i32>, arg_2: vec3<i32>, arg_3: u32) -> vec3<i32> {
    global0 = vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-737f - 683f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-196f, 1781f))))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(arg_0))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.x)))))));
    global2 = Struct_2(11210u, vec3<i32>(~global2.b.x, u_input.b.x >> (~1u % 32u), global2.b.x), global2.c);
    var var_0 = 1980f;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0, arg_0)) - 1f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_0)), _wgslsmith_f_op_f32(-global0.x)), !all(vec3<bool>(true, true, true))))), _wgslsmith_f_op_f32(max(247f, -578f)));
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x * arg_0) + 1693f), global0.x) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(var_1)) + vec2<f32>(global0.x, 345f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(661f, 1345f))))));
    return abs(vec3<i32>(-47642i, 1i, -global2.b.x) | arg_2);
}

fn func_2(arg_0: vec4<f32>) -> i32 {
    global2 = Struct_2(0u, func_3(_wgslsmith_f_op_f32(342f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0.x)) * -658f)), vec2<i32>(u_input.a, 28123i), vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-1647i, u_input.a, u_input.b.x, global2.b.x), vec4<i32>(u_input.a, global2.b.x, global2.b.x, 22263i)), -global2.b.x), global2.b.x, -u_input.a), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 840u, 0u), global2.c.zzz) & ~vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(21081u, 29u)], 29u)], 29u)], 0u, 7600u), ~(vec3<u32>(global1[_wgslsmith_index_u32(85087u, 29u)], 12595u, global2.a) & vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 29u)], 4294967295u, global2.c.x)))), min(min(_wgslsmith_add_vec4_u32(~vec4<u32>(1u, global2.c.x, global1[_wgslsmith_index_u32(global2.a, 29u)], global2.c.x), ~global2.c), global2.c & (global2.c & global2.c)), ~global2.c));
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.yxw));
    var var_1 = vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - 1f) - arg_0.x)), -1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(930f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.x)))));
    let var_2 = global2.a != global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(0u, 29u)], _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_div_u32(global2.a, 14038u), 4294967295u, global1[_wgslsmith_index_u32(global2.a, 29u)]), ~firstTrailingBit(vec3<u32>(1u, 6288u, global2.a)))), 29u)];
    var var_3 = _wgslsmith_div_vec3_i32(select(-firstLeadingBit(_wgslsmith_add_vec3_i32(global2.b, vec3<i32>(u_input.b.x, global2.b.x, 2147483647i))), global2.b, !vec3<bool>(any(vec2<bool>(var_2, false)), global1[_wgslsmith_index_u32(15070u, 29u)] <= global2.c.x, var_2)), ~_wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, global2.b.x, 0i), _wgslsmith_mod_vec3_i32(global2.b, global2.b) << (firstLeadingBit(global2.c.yzw) % vec3<u32>(32u))));
    return -var_3.x;
}

fn func_1(arg_0: vec4<u32>, arg_1: u32) -> Struct_1 {
    var var_0 = Struct_1(abs(func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -525f, global0.x, -822f) * vec4<f32>(global0.x, 1839f, global0.x, global0.x))))), ~global2.c.x, _wgslsmith_sub_u32(firstTrailingBit(_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(min(43879u, 0u), 29u)], _wgslsmith_div_u32(arg_1, 0u), 97750u)), select(_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(global2.a, 1u)), vec2<u32>(4294967295u, 0u)), _wgslsmith_mult_u32(1u, ~78586u), true)));
    var var_1 = _wgslsmith_sub_u32(abs(~(~4294967295u)), 0u);
    var var_2 = min(~select(vec4<u32>(arg_0.x, arg_1, global2.c.x, arg_0.x) >> (global2.c % vec4<u32>(32u)), arg_0, vec4<bool>(true, true, true, true)), (vec4<u32>(19158u, arg_0.x, 4294967295u, 81957u) >> (vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 29u)], 1u, var_0.c, 23283u) % vec4<u32>(32u))) >> (global2.c % vec4<u32>(32u))) & select(vec4<u32>(_wgslsmith_mod_u32(81859u, arg_1), ~76785u >> (firstTrailingBit(0u) % 32u), global2.a, 0u), arg_0, vec4<bool>(true, true, true, true));
    let var_3 = true;
    var var_4 = select(select(!vec3<bool>(var_0.a == u_input.b.x, any(vec2<bool>(false, var_3)), var_3), !(!(!vec3<bool>(true, var_3, var_3))), !select(vec3<bool>(var_3, true, false), select(vec3<bool>(var_3, var_3, var_3), vec3<bool>(false, var_3, var_3), var_3), var_3)), vec3<bool>(!(global2.b.x <= -u_input.a), var_3, var_3), var_0.a == 2147483647i);
    return Struct_1(i32(-1i) * -_wgslsmith_mult_i32(-17812i, func_3(global0.x, vec2<i32>(var_0.a, var_0.a), global2.b, 97002u).x), ~abs(4294967295u), reverseBits(min(1u, arg_1) << (~0u % 32u)) & abs(global2.c.x ^ arg_1));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(global2.c, global2.c.x ^ 50781u);
    var var_1 = 0u;
    let var_2 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -476f), global2.c, _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.x))))));
    global2 = Struct_2(1u, global2.b, global2.c);
    var var_3 = Struct_1(global2.b.x, _wgslsmith_dot_vec3_u32(global2.c.zzw, ~_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.c, global2.a, 0u), vec3<u32>(35403u, var_2.b.x, var_0.b)) | global2.c.xyw), var_0.c);
    global1 = array<u32, 29>();
    global1 = array<u32, 29>();
    var var_4 = Struct_3(var_2.a, _wgslsmith_clamp_vec4_u32(vec4<u32>(var_3.b, select(30877u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_2.b.x, 29967u), vec3<u32>(4294967295u, 4294967295u, var_0.c)), false), 17317u, firstTrailingBit(~var_0.b)), _wgslsmith_add_vec4_u32(var_2.b, firstLeadingBit(~global2.c)), _wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(global2.c, global2.c, vec4<u32>(global1[_wgslsmith_index_u32(73853u, 29u)], 6751u, var_2.b.x, global2.a)), vec4<u32>(_wgslsmith_add_u32(4294967295u, 0u), firstLeadingBit(4294967295u), abs(global1[_wgslsmith_index_u32(var_2.b.x, 29u)]), _wgslsmith_dot_vec3_u32(vec3<u32>(59807u, 7598u, var_0.b), vec3<u32>(46261u, var_0.c, 1578u))))), var_2.c);
    var_1 = 61587u ^ reverseBits(_wgslsmith_dot_vec2_u32(~global2.c.zx, reverseBits(firstTrailingBit(vec2<u32>(4294967295u, 4294967295u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1024f, var_4.a, -652f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(413f, var_2.a, var_4.c) * vec3<f32>(var_4.c, -1975f, global0.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_2.c, 726f, global0.x))))))), var_3.a, reverseBits(~var_0.a), -525f);
}

