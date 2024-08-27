struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: u32,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 29> = array<bool, 29>(false, false, true, true, false, false, true, true, false, true, false, true, false, true, false, true, false, false, true, true, true, false, true, true, false, false, false, false, true);

var<private> global1: vec3<f32>;

var<private> global2: array<vec4<i32>, 22>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    global2 = array<vec4<i32>, 22>();
    let var_0 = global2[_wgslsmith_index_u32(firstTrailingBit(arg_1.c), 22u)];
    global0 = array<bool, 29>();
    let var_1 = _wgslsmith_clamp_vec3_u32(~(~firstLeadingBit(vec3<u32>(arg_1.c, arg_1.c, arg_0.c)) ^ select(_wgslsmith_add_vec3_u32(vec3<u32>(arg_1.c, 98674u, 39171u), vec3<u32>(arg_1.c, 4294967295u, 26529u)), max(vec3<u32>(arg_0.c, arg_0.c, arg_0.c), vec3<u32>(u_input.b, 1u, arg_1.c)), !arg_0.b.zxw)), vec3<u32>(_wgslsmith_add_u32(~min(0u, u_input.a.x), 143027u), ~arg_0.c, 48852u), ~(~(~select(vec3<u32>(arg_0.c, 123527u, u_input.a.x), vec3<u32>(51502u, arg_0.c, 4294967295u), arg_0.b.zxz))));
    let var_2 = var_0.yyy;
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(arg_0.a)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a) * 728f)))));
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: i32) -> vec2<f32> {
    let var_0 = arg_1.b.xxz;
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global1.x)) - arg_1.a))), -2300f, arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-214f - arg_1.a)) + -942f)));
    global2 = array<vec4<i32>, 22>();
    global0 = array<bool, 29>();
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) * _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(func_3(Struct_1(181f, arg_1.b, arg_2.x, vec2<bool>(false, global0[_wgslsmith_index_u32(arg_2.x, 29u)])), arg_1))))), global1.x);
}

fn func_4(arg_0: vec3<f32>, arg_1: vec2<f32>, arg_2: f32, arg_3: u32) -> Struct_1 {
    var var_0 = firstTrailingBit(vec3<i32>(firstLeadingBit(0i << (1u % 32u)), -firstLeadingBit(u_input.c) >> ((~92626u | abs(u_input.a.x)) % 32u), 0i));
    global2 = array<vec4<i32>, 22>();
    let var_1 = ~select(countOneBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, u_input.a.x, u_input.b, 1u), countOneBits(vec4<u32>(29955u, arg_3, u_input.b, arg_3)), vec4<u32>(u_input.a.x, 4294967295u, arg_3, 1u))), select(_wgslsmith_clamp_vec4_u32(~vec4<u32>(arg_3, 4294967295u, 1592u, 4294967295u), vec4<u32>(1u, 1u, 1u, 0u), ~vec4<u32>(97080u, 56900u, 50217u, 45685u)), max(_wgslsmith_div_vec4_u32(vec4<u32>(arg_3, 5579u, u_input.a.x, 0u), vec4<u32>(arg_3, 12020u, 4294967295u, 50909u)), min(vec4<u32>(4294967295u, arg_3, 4294967295u, u_input.b), vec4<u32>(u_input.b, 11428u, u_input.b, arg_3))), !(!vec4<bool>(false, true, global0[_wgslsmith_index_u32(18097u, 29u)], true))), vec4<bool>(!global0[_wgslsmith_index_u32(u_input.b | 93875u, 29u)], select(all(vec4<bool>(false, true, false, true)), !global0[_wgslsmith_index_u32(arg_3, 29u)], global0[_wgslsmith_index_u32(~u_input.a.x, 29u)]), false, global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(51473u, 77623u), 29u)]));
    let var_2 = vec4<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.c, 1i) << ((u_input.a << (vec2<u32>(u_input.a.x, var_1.x) % vec2<u32>(32u))) % vec2<u32>(32u)), countOneBits(var_0.xy)), countOneBits(2147483647i), 1i, -u_input.c) ^ ~(min(_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, 1i, u_input.c, -48028i), global2[_wgslsmith_index_u32(var_1.x, 22u)]), global2[_wgslsmith_index_u32(0u, 22u)]) >> (_wgslsmith_add_vec4_u32(~var_1, var_1) % vec4<u32>(32u)));
    var var_3 = ~_wgslsmith_mult_i32(min(-firstLeadingBit(32641i), _wgslsmith_mult_i32(_wgslsmith_sub_i32(u_input.c, 37846i), -u_input.c)), 2147483647i);
    return Struct_1(346f, !vec4<bool>((global0[_wgslsmith_index_u32(35374u, 29u)] | false) || false, any(select(vec2<bool>(false, global0[_wgslsmith_index_u32(var_1.x, 29u)]), vec2<bool>(false, true), global0[_wgslsmith_index_u32(u_input.b, 29u)])), global1.x != -1215f, _wgslsmith_mult_u32(var_1.x, var_1.x) >= ~56296u), max(~min(42057u, arg_3), ~3429u), !vec2<bool>(!(165f == global1.x), false));
}

fn func_1(arg_0: vec4<f32>) -> vec4<bool> {
    global0 = array<bool, 29>();
    var var_0 = -(_wgslsmith_mod_vec4_i32(~global2[_wgslsmith_index_u32(u_input.b, 22u)], firstLeadingBit(vec4<i32>(-2147483647i, 2147483647i, u_input.c, u_input.c))) | ~firstLeadingBit(vec4<i32>(-16417i, u_input.c, 1i, 33598i) | vec4<i32>(2147483647i, u_input.c, u_input.c, 0i)));
    let var_1 = vec2<bool>(true, true);
    var var_2 = func_4(arg_0.zyz, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(376f, -1223f), _wgslsmith_f_op_vec2_f32(func_2(-1579f, Struct_1(global1.x, vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.b, 29u)], global0[_wgslsmith_index_u32(u_input.b, 29u)], var_1.x), 0u, var_1), vec3<u32>(u_input.b, u_input.b, u_input.b), 2147483647i))) * vec2<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(floor(2060f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(global1.xy))) + vec2<f32>(_wgslsmith_f_op_f32(-200f - arg_0.x), _wgslsmith_f_op_f32(global1.x * -759f))), select(select(var_1, vec2<bool>(false, true), var_1.x), select(vec2<bool>(true, var_1.x), !var_1, select(vec2<bool>(var_1.x, false), vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 29u)], var_1.x), false)), var_1))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) * _wgslsmith_f_op_f32(global1.x * arg_0.x)), countOneBits(_wgslsmith_mod_u32(u_input.a.x << (u_input.b % 32u), u_input.a.x)));
    var var_3 = select(var_2.b.zxx, vec3<bool>(true, !any(vec3<bool>(false, true, global0[_wgslsmith_index_u32(var_2.c, 29u)])), any(select(!vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.b, 29u)], var_2.b.x, false), var_2.b, any(vec3<bool>(false, var_1.x, var_1.x))))), true);
    return var_2.b;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> i32 {
    let var_0 = 1u;
    let var_1 = func_4(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(800f, -584f, global1.x) + vec3<f32>(arg_1.a, arg_1.a, -1000f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, global1.x, global1.x) - vec3<f32>(global1.x, 294f, -1409f)))) + _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0.a, 1021f, global1.x)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(func_4(vec3<f32>(global1.x, arg_0.a, -176f), global1.xy, arg_0.a, arg_2).a, 776f)))), _wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_f_op_f32(135f + _wgslsmith_f_op_f32(arg_1.a - func_4(vec3<f32>(arg_0.a, -2347f, arg_1.a), vec2<f32>(arg_1.a, global1.x), global1.x, 0u).a)), func_4(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(301f, global1.x, 290f), vec3<f32>(-229f, arg_0.a, -321f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1552f, 1151f, arg_0.a) + vec3<f32>(-168f, global1.x, 283f)))), vec2<f32>(global1.x, 1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), _wgslsmith_div_u32(~44433u, ~0u)), min(~vec3<u32>(4294967295u, arg_1.c, 10220u), _wgslsmith_add_vec3_u32(firstTrailingBit(vec3<u32>(1u, 0u, arg_1.c)), vec3<u32>(0u, arg_2, 72301u) | vec3<u32>(0u, arg_2, var_0))), _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(-vec2<i32>(0i, u_input.c), -vec2<i32>(u_input.c, u_input.c)), firstTrailingBit(u_input.c | u_input.c)))).x, 35194u);
    let var_2 = ~(~(~u_input.c));
    global0 = array<bool, 29>();
    let var_3 = _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(min(vec2<u32>(arg_1.c, 16859u), u_input.a), firstTrailingBit(vec2<u32>(0u, arg_1.c))), var_1.c)), ~(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a.x, 62343u), ~u_input.a) ^ u_input.a));
    return _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, u_input.c), -select(vec2<i32>(u_input.c, u_input.c), ~vec2<i32>(u_input.c, u_input.c), !var_1.d)), 20837i);
}

fn func_6(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec4<u32>) -> Struct_1 {
    let var_0 = 11772u;
    var var_1 = true;
    var var_2 = 18247u;
    global0 = array<bool, 29>();
    global0 = array<bool, 29>();
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(vec3<i32>(func_5(Struct_1(_wgslsmith_f_op_f32(-1025f + global1.x), select(vec4<bool>(true, false, false, false), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 29u)], global0[_wgslsmith_index_u32(4910u, 29u)], global0[_wgslsmith_index_u32(0u, 29u)], global0[_wgslsmith_index_u32(64018u, 29u)]), vec4<bool>(global0[_wgslsmith_index_u32(18585u, 29u)], global0[_wgslsmith_index_u32(0u, 29u)], global0[_wgslsmith_index_u32(71419u, 29u)], true)), u_input.a.x, select(vec2<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 29u)]), vec2<bool>(true, true), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 29u)], global0[_wgslsmith_index_u32(50247u, 29u)]))), Struct_1(_wgslsmith_f_op_f32(-global1.x), func_1(vec4<f32>(global1.x, -458f, global1.x, global1.x)), ~u_input.b, vec2<bool>(true, false)), u_input.a.x), _wgslsmith_dot_vec4_i32(global2[_wgslsmith_index_u32(66900u, 22u)], _wgslsmith_mod_vec4_i32(global2[_wgslsmith_index_u32(~15326u, 22u)], _wgslsmith_sub_vec4_i32(vec4<i32>(-2882i, -28771i, u_input.c, u_input.c), global2[_wgslsmith_index_u32(36078u, 22u)]))), ~u_input.c), Struct_1(global1.x, vec4<bool>(true, true, true, _wgslsmith_f_op_f32(-global1.x) == _wgslsmith_f_op_f32(-global1.x)), u_input.a.x, func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(379f, global1.x, 429f, global1.x) + vec4<f32>(global1.x, global1.x, 1528f, global1.x)))).wx), select(~(vec4<u32>(1u, 32715u, u_input.b, 1u) ^ vec4<u32>(1u, 4294967295u, u_input.a.x, 15459u)) ^ ~vec4<u32>(u_input.a.x, 0u, 114114u, u_input.b), ~_wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(32944u, 23687u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.b, 5914u, u_input.a.x, u_input.a.x)), select(vec4<u32>(16603u, 3628u, 29544u, 0u), vec4<u32>(1u, 19617u, u_input.a.x, 30809u), global0[_wgslsmith_index_u32(1u, 29u)])), select(vec4<bool>(!global0[_wgslsmith_index_u32(4294967295u, 29u)], global0[_wgslsmith_index_u32(~48247u, 29u)], !global0[_wgslsmith_index_u32(4294967295u, 29u)], true), vec4<bool>(true, true, false, !global0[_wgslsmith_index_u32(u_input.b, 29u)]), !(!vec4<bool>(global0[_wgslsmith_index_u32(0u, 29u)], false, global0[_wgslsmith_index_u32(u_input.b, 29u)], true)))));
    let var_1 = global1.x;
    var var_2 = vec3<u32>(~76794u, 77935u, _wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.a.x | 1u, var_0.c), min(~var_0.c, u_input.a.x))) ^ ~(~select(~vec3<u32>(32266u, 0u, 20882u), vec3<u32>(var_0.c, 42881u, var_0.c) >> (vec3<u32>(u_input.b, 43924u, u_input.a.x) % vec3<u32>(32u)), func_4(vec3<f32>(-467f, global1.x, -688f), vec2<f32>(-356f, -1000f), var_0.a, 32563u).b.x));
    var var_3 = func_6(vec3<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.c, u_input.c), vec2<i32>(u_input.c, 8435i)), ~vec2<i32>(u_input.c, 2147483647i)), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.c, 13281i), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.c, u_input.c), vec2<i32>(50264i, -29539i)))), -40413i & u_input.c, u_input.c), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -547f)), var_0.b, _wgslsmith_mult_u32(1u, 4294967295u), var_0.d), vec4<u32>(select(func_6(vec3<i32>(0i, u_input.c, 0i), func_6(vec3<i32>(u_input.c, u_input.c, u_input.c), Struct_1(var_0.a, vec4<bool>(var_0.b.x, true, global0[_wgslsmith_index_u32(var_2.x, 29u)], global0[_wgslsmith_index_u32(29793u, 29u)]), var_2.x, vec2<bool>(false, true)), vec4<u32>(7010u, u_input.a.x, 13164u, 0u)), vec4<u32>(var_2.x, 0u, var_0.c, 109531u)).c, func_6(vec3<i32>(-65752i, u_input.c, u_input.c), Struct_1(412f, vec4<bool>(true, var_0.d.x, true, true), var_0.c, vec2<bool>(var_0.d.x, global0[_wgslsmith_index_u32(u_input.b, 29u)])), vec4<u32>(var_0.c, 58642u, 1u, u_input.a.x)).c | u_input.a.x, select(true, false, true)), var_0.c, 0u, _wgslsmith_mult_u32(var_0.c ^ func_4(vec3<f32>(var_0.a, 1387f, 773f), global1.zz, -2671f, 0u).c, _wgslsmith_dot_vec4_u32(vec4<u32>(47824u, 39441u, var_0.c, var_0.c), abs(vec4<u32>(var_0.c, 5601u, 4294967295u, 25939u))))));
    global2 = array<vec4<i32>, 22>();
    let var_4 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) * -1000f) - _wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(1071f + _wgslsmith_f_op_f32(1501f * -1000f)))), func_6(~firstLeadingBit(vec3<i32>(1i, u_input.c, u_input.c)), func_6(vec3<i32>(~21912i, ~(-48709i), _wgslsmith_add_i32(u_input.c, u_input.c)), func_4(vec3<f32>(699f, -129f, 802f), _wgslsmith_f_op_vec2_f32(select(global1.yz, vec2<f32>(708f, var_0.a), var_0.b.ww)), _wgslsmith_f_op_f32(f32(-1f) * -836f), countOneBits(var_0.c)), vec4<u32>(6415u, max(var_2.x, 25825u), ~var_3.c, u_input.b)), vec4<u32>(select(11123u, 0u, false), ~var_2.x, 14613u, 71219u) << (((vec4<u32>(1u, var_3.c, 0u, 38997u) | vec4<u32>(69986u, 4294967295u, var_0.c, 10297u)) | vec4<u32>(50121u, 2711u, var_3.c, 1695u)) % vec4<u32>(32u))).b, ~_wgslsmith_mod_u32(~109525u, _wgslsmith_add_u32(_wgslsmith_div_u32(var_2.x, 53034u), var_0.c)), func_6(vec3<i32>(u_input.c, ~u_input.c, -32665i), Struct_1(var_0.a, vec4<bool>(global0[_wgslsmith_index_u32(var_0.c, 29u)], global0[_wgslsmith_index_u32(select(5681u, 4294967295u, false), 29u)], select(var_0.b.x, true, false), var_0.b.x), 1483u, !(!var_0.d)), ~select(vec4<u32>(var_3.c, var_3.c, 75694u, 4294967295u), vec4<u32>(var_0.c, 38755u, 1u, 25143u), var_0.b) >> (select(_wgslsmith_div_vec4_u32(vec4<u32>(0u, 101127u, var_2.x, 62508u), vec4<u32>(29870u, 860u, 111343u, 1u)), ~vec4<u32>(var_0.c, var_0.c, var_2.x, 1u), func_6(vec3<i32>(0i, -2147483647i, 2147483647i), Struct_1(703f, var_0.b, u_input.b, vec2<bool>(var_0.b.x, true)), vec4<u32>(var_2.x, 1u, u_input.a.x, var_2.x)).b) % vec4<u32>(32u))).b.xx);
    let var_5 = !(!(true && ((false | var_3.d.x) | select(false, var_0.d.x, true))));
    let var_6 = var_0.b.wz;
    let var_7 = func_6(min(~vec3<i32>(1i, u_input.c, u_input.c), _wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c, u_input.c, u_input.c), vec3<i32>(-53051i, -2147483647i, 1i), vec3<i32>(u_input.c, u_input.c, -1i)) & _wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, 6508i, 8584i), vec3<i32>(u_input.c, 51020i, u_input.c)), _wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(0i, u_input.c, u_input.c), vec3<i32>(u_input.c, u_input.c, -1i)), -vec3<i32>(u_input.c, 51271i, 2147483647i)), vec3<i32>(u_input.c, u_input.c, -1i) >> (vec3<u32>(26939u, 14669u, 1u) % vec3<u32>(32u)))), var_4, max(vec4<u32>(~_wgslsmith_dot_vec2_u32(var_2.yy, vec2<u32>(55548u, 51423u)), abs(var_2.x) >> (40799u % 32u), min(_wgslsmith_sub_u32(var_2.x, 11709u), var_0.c), 1u), firstTrailingBit(firstLeadingBit(vec4<u32>(var_0.c, u_input.a.x, 22028u, 0u))) << (~vec4<u32>(var_0.c, 1u, var_4.c, 1u) % vec4<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(1260f, -1385f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(Struct_1(-1635f, vec4<bool>(false, true, var_3.d.x, true), var_7.c, var_4.d), func_6(vec3<i32>(12979i, u_input.c, 69588i), Struct_1(global1.x, var_0.b, 1u, var_7.d), vec4<u32>(37067u, var_7.c, 1u, var_2.x)))), _wgslsmith_f_op_f32(abs(-1778f))))), i32(-1i) * -_wgslsmith_mod_i32(max(u_input.c, 29148i), u_input.c));
}

