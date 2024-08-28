struct Struct_1 {
    a: i32,
    b: f32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<f32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: vec2<i32>,
}

struct Struct_5 {
    a: u32,
    b: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 6>;

var<private> global1: i32;

var<private> global2: Struct_1 = Struct_1(1i, 1005f, vec3<bool>(true, false, false));

var<private> global3: vec2<bool>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec2<i32>, arg_1: vec2<f32>) -> f32 {
    var var_0 = -163f;
    var var_1 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-2505f, arg_1.x))), _wgslsmith_f_op_f32(max(arg_1.x, _wgslsmith_f_op_f32(global2.b * 438f))), _wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_1.x - -1363f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(490f, -244f, arg_1.x))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(198f, 774f, -1000f))))));
    var var_2 = u_input.b.x > 4294967295u;
    let var_3 = _wgslsmith_f_op_vec2_f32(var_1.b.xx * vec2<f32>(_wgslsmith_f_op_f32(-304f * 458f), _wgslsmith_f_op_f32(var_1.b.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-607f + 1875f) - _wgslsmith_f_op_f32(-arg_1.x)))));
    global2 = Struct_1(_wgslsmith_div_i32(countOneBits(-2147483647i), 57280i), 480f, !global2.c);
    return -888f;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec4<u32>) -> vec4<u32> {
    var var_0 = Struct_1(_wgslsmith_mult_i32(24643i, min(27366i, max(u_input.a.x, u_input.a.x ^ 1i))), _wgslsmith_f_op_f32(func_3(u_input.a, vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global2.b), global2.b, !global2.c.x)), 1083f))), select(select(global2.c, vec3<bool>(any(vec4<bool>(true, false, true, global3.x)), global2.c.x, global2.c.x), vec3<bool>(!global2.c.x, 16630u == global0[_wgslsmith_index_u32(0u, 6u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 6u)], 6u)] < global0[_wgslsmith_index_u32(arg_1.x, 6u)])), select(select(global2.c, select(vec3<bool>(global2.c.x, false, true), global2.c, global3.x), all(global2.c)), global2.c, all(vec2<bool>(global2.c.x, true))), global2.c));
    global0 = array<u32, 6>();
    var var_1 = true;
    global3 = vec2<bool>(_wgslsmith_f_op_f32(f32(-1f) * -280f) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(280f, var_0.b, true)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + arg_0.x) * -596f)), global2.c.x);
    let var_2 = ~(abs(~vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u)) & ~arg_1.wyw);
    return vec4<u32>(abs(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(~u_input.b.yz, ~var_2.yy), var_2.yy)), var_2.x, reverseBits(global0[_wgslsmith_index_u32(arg_1.x, 6u)]), select(1u, arg_1.x, any(vec4<bool>(global2.c.x | true, false, false, global2.c.x && true))));
}

fn func_4(arg_0: vec4<u32>, arg_1: bool) -> i32 {
    var var_0 = Struct_1(abs(-(~(-53157i))), _wgslsmith_f_op_f32(-2480f * -133f), select(select(!select(global2.c, global2.c, true), select(select(global2.c, vec3<bool>(global2.c.x, false, true), global2.c), vec3<bool>(arg_1, false, global2.c.x), global2.c), !select(vec3<bool>(true, false, true), vec3<bool>(global2.c.x, true, false), global2.c.x)), !global2.c, vec3<bool>(true, all(vec3<bool>(global2.c.x, global2.c.x, global3.x)), global2.c.x)));
    let var_1 = i32(-1i) * -1i;
    var var_2 = -abs(_wgslsmith_mult_vec3_i32(countOneBits(vec3<i32>(2147483647i, 1i, var_0.a)), -_wgslsmith_sub_vec3_i32(vec3<i32>(var_1, 0i, 0i), vec3<i32>(global2.a, u_input.a.x, var_0.a))));
    global2 = Struct_1(-2147483647i, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b, -1036f)))), vec3<bool>(global2.c.x, true, true));
    var var_3 = Struct_1(countOneBits(1i), global2.b, vec3<bool>(any(select(!global2.c, vec3<bool>(false, arg_1, arg_1), select(var_0.c.x, true, global3.x))), false, true));
    return -global2.a;
}

fn func_1(arg_0: Struct_4, arg_1: u32, arg_2: bool) -> bool {
    global2 = Struct_1(func_4(~_wgslsmith_clamp_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 6u)], 6u)], u_input.b.x, u_input.b.x, arg_1), vec4<u32>(16086u, 26809u, 0u, 4294967295u), vec4<u32>(u_input.b.x, 1u, global0[_wgslsmith_index_u32(arg_1, 6u)], arg_1)) ^ (func_2(arg_0.a.b, vec4<u32>(59874u, global0[_wgslsmith_index_u32(26602u, 6u)], 53687u, u_input.b.x)) >> (func_2(vec3<f32>(801f, -777f, -1522f), vec4<u32>(arg_1, 24442u, 1u, arg_1)) % vec4<u32>(32u))), !all(select(global2.c, vec3<bool>(global3.x, arg_2, global2.c.x), arg_2))), 1147f, !(!(!global2.c)));
    let var_0 = _wgslsmith_mod_u32(~(~(~(~arg_1))), ~_wgslsmith_sub_u32(4294967295u, 4294967295u));
    let var_1 = Struct_1(_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(global2.a, _wgslsmith_div_i32(arg_0.c.x, -44632i), -u_input.a.x, -1i)), (vec4<i32>(global2.a, global2.a, 1i, global2.a) & firstLeadingBit(vec4<i32>(0i, -1i, -55101i, u_input.a.x))) << (select(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, 1u, var_0), vec4<u32>(1u, u_input.b.x, 0u, var_0), vec4<u32>(59447u, 0u, global0[_wgslsmith_index_u32(4294967295u, 6u)], 41769u)), ~vec4<u32>(var_0, var_0, 0u, 6584u), true) % vec4<u32>(32u))), 472f, global2.c);
    var var_2 = firstLeadingBit(reverseBits(abs(~var_1.a)));
    return arg_2;
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: vec2<bool>) -> f32 {
    global1 = countOneBits(-1i);
    global2 = Struct_1(-global2.a, _wgslsmith_f_op_f32(global2.b * _wgslsmith_f_op_f32(min(global2.b, arg_1.b.x))), !(!(!vec3<bool>(arg_0.x, true, false))));
    var var_0 = Struct_1(~global2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.b.x), _wgslsmith_f_op_f32(-global2.b))) - _wgslsmith_f_op_f32(floor(-1518f))), select(global2.c, !(!select(arg_0.yyz, global2.c, false)), select(!global2.c, arg_0.zyw, _wgslsmith_add_i32(global2.a, 40626i) == _wgslsmith_div_i32(-224i, global2.a))));
    let var_1 = min(countOneBits(u_input.a.x), -1i);
    let var_2 = u_input.a.x;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -861f) - global2.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(u_input.a, vec2<f32>(-982f, -752f)))) - _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1668f * 1365f), _wgslsmith_f_op_f32(f32(-1f) * -480f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(firstLeadingBit(~2147483647i), -333f, vec3<bool>((all(vec4<bool>(true, true, true, false)) & global3.x) != (-1152f <= global2.b), true && global3.x, false));
    var var_1 = -31873i;
    var var_2 = _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(0u, ~19101u >> (firstTrailingBit(global0[_wgslsmith_index_u32(4294967295u, 6u)]) % 32u)), global0[_wgslsmith_index_u32(0u, 6u)], global0[_wgslsmith_index_u32(~u_input.b.x, 6u)] & firstLeadingBit(67248u)), u_input.b);
    var var_3 = ~(select(-(~u_input.a), ~_wgslsmith_add_vec2_i32(u_input.a, u_input.a), !any(global2.c.xy)) << (vec2<u32>(29479u, _wgslsmith_mod_u32(1u, 345u) & (1679u & global0[_wgslsmith_index_u32(var_2.x, 6u)])) % vec2<u32>(32u)));
    let var_4 = Struct_2(vec3<f32>(1f, 1000f, _wgslsmith_f_op_f32(func_5(select(vec4<bool>(true, true, var_0.c.x, var_0.c.x), vec4<bool>(false, global3.x, false, global2.c.x), all(vec2<bool>(false, global2.c.x))), Struct_2(vec3<f32>(var_0.b, -431f, var_0.b), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1086f, global2.b, -1162f))), vec2<bool>(any(var_0.c.yy), func_1(Struct_4(Struct_2(vec3<f32>(-1136f, 493f, var_0.b), vec3<f32>(419f, 960f, var_0.b)), 20777i, vec2<i32>(7756i, 78842i)), 1u, var_0.c.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1000f, 331f, var_0.b)))) + vec3<f32>(global2.b, _wgslsmith_f_op_f32(-var_0.b), -1000f)) - vec3<f32>(_wgslsmith_f_op_f32(exp2(global2.b)), _wgslsmith_f_op_f32(step(var_0.b, global2.b)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.b + -821f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_5(vec4<bool>(true, global3.x, var_0.c.x, var_0.c.x), var_4, var_0.c.zy)), -448f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b + 609f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b)))), -2147483647i);
}

