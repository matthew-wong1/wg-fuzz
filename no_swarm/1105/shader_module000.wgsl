struct Struct_1 {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: i32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<vec4<i32>, 13> = array<vec4<i32>, 13>(vec4<i32>(-43657i, 1i, i32(-2147483648), -28777i), vec4<i32>(-25500i, 5159i, -22537i, 27294i), vec4<i32>(-5579i, -15465i, -37480i, 2147483647i), vec4<i32>(23626i, 5597i, 2147483647i, -1i), vec4<i32>(-1i, -1i, 1i, -60128i), vec4<i32>(35120i, 17316i, 1221i, -24540i), vec4<i32>(0i, -5149i, 19173i, -50171i), vec4<i32>(-29699i, 0i, i32(-2147483648), -1i), vec4<i32>(i32(-2147483648), -25680i, 25028i, 2147483647i), vec4<i32>(-6349i, -17i, 0i, -17823i), vec4<i32>(-1i, 1i, -50681i, 2147483647i), vec4<i32>(-46410i, -16475i, -5505i, -1i), vec4<i32>(-1i, 1590i, i32(-2147483648), -1i));

var<private> global2: array<f32, 11> = array<f32, 11>(-724f, 1041f, -586f, 368f, 1820f, 280f, 222f, 1000f, 1419f, -670f, 1746f);

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec3<i32>, arg_3: Struct_1) -> u32 {
    var var_0 = arg_0;
    let var_1 = _wgslsmith_sub_i32(-(~var_0.c.x), -var_0.a);
    global1 = array<vec4<i32>, 13>();
    let var_2 = ~(~vec4<u32>(40714u, u_input.b.x, ~abs(4294967295u), 0u));
    var var_3 = _wgslsmith_mult_u32(firstTrailingBit(~_wgslsmith_dot_vec2_u32(var_2.zw, u_input.b) & _wgslsmith_clamp_u32(103814u, var_2.x >> (u_input.b.x % 32u), var_2.x)), u_input.b.x ^ ~u_input.b.x);
    return _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(reverseBits(~var_2.x), _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(var_2.xy, u_input.b, u_input.b), vec2<u32>(0u, u_input.b.x) | u_input.b), ~(~u_input.b.x), ~_wgslsmith_add_u32(36702u, 14952u)), vec4<u32>(var_2.x, ~48222u, max(59412u, 44115u), u_input.b.x) ^ _wgslsmith_mult_vec4_u32(var_2, var_2)), reverseBits(_wgslsmith_mult_vec4_u32(var_2, abs(vec4<u32>(u_input.b.x, 1447u, u_input.b.x, 1u) << (var_2 % vec4<u32>(32u))))));
}

fn func_2(arg_0: vec4<f32>) -> Struct_1 {
    var var_0 = vec4<bool>(true, any(vec3<bool>(false, ~global0.x < _wgslsmith_mod_i32(-31256i, -33382i), ~global0.x == ~u_input.a.x)), 147f == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(min(u_input.b.x, u_input.b.x), 11u)]) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(868f, 838f))) >= arg_0.x);
    let var_1 = 1000f;
    let var_2 = _wgslsmith_mod_u32(func_3(Struct_1(-2147483647i, 0i, vec4<i32>(-2147483647i, u_input.a.x, 29438i, global0.x), _wgslsmith_f_op_f32(arg_0.x - global2[_wgslsmith_index_u32(u_input.b.x, 11u)])), global1[_wgslsmith_index_u32(u_input.b.x, 13u)], reverseBits(u_input.a.wxx << (vec3<u32>(0u, u_input.b.x, 43245u) % vec3<u32>(32u))), Struct_1(u_input.a.x, -15403i, -u_input.a, _wgslsmith_f_op_f32(round(var_1)))), 62303u) << (max(~(~u_input.b.x >> (~4294967295u % 32u)), 4294967295u) % 32u);
    global2 = array<f32, 11>();
    let var_3 = var_0.ywx;
    return Struct_1(-2147483647i, _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(u_input.a, vec4<i32>(~u_input.a.x, global0.x, global0.x << (u_input.b.x % 32u), abs(global0.x))), _wgslsmith_div_vec4_i32(vec4<i32>(max(global0.x, u_input.a.x), u_input.a.x, -836i, max(-12039i, 0i)), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(10287u, var_2), select(4294967295u, u_input.b.x, var_0.x)), 13u)])), vec4<i32>(-2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, 8554i, -7996i, u_input.a.x), vec4<i32>(global0.x, u_input.a.x, -2147483647i, -4671i)), 42229i), abs(~vec3<i32>(global0.x, -1i, u_input.a.x))), -103039i, min(28952i << (func_3(Struct_1(u_input.a.x, 3313i, u_input.a, -483f), u_input.a, vec3<i32>(9556i, global0.x, -35663i), Struct_1(u_input.a.x, 2147483647i, global1[_wgslsmith_index_u32(61164u, 13u)], global2[_wgslsmith_index_u32(u_input.b.x, 11u)])) % 32u), 0i)), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(func_3(Struct_1(-69341i, global0.x, vec4<i32>(0i, u_input.a.x, -2361i, global0.x), var_1), ~vec4<i32>(u_input.a.x, 16879i, u_input.a.x, u_input.a.x), _wgslsmith_add_vec3_i32(global0.ywy, u_input.a.xxy), Struct_1(u_input.a.x, u_input.a.x, vec4<i32>(u_input.a.x, 1i, u_input.a.x, 23915i), global2[_wgslsmith_index_u32(4294967295u, 11u)])), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 0u), vec2<u32>(1u, 25090u)) & u_input.b.x), 11u)]));
}

fn func_1(arg_0: i32) -> Struct_1 {
    let var_0 = false || select(all(vec4<bool>(all(vec3<bool>(false, true, true)), any(vec2<bool>(false, true)), true, true)), false, _wgslsmith_sub_i32(1i, max(1i, 1i)) != u_input.a.x);
    let var_1 = func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(u_input.b.x, 11u)], global2[_wgslsmith_index_u32(u_input.b.x, 11u)], global2[_wgslsmith_index_u32(u_input.b.x, 11u)], global2[_wgslsmith_index_u32(u_input.b.x, 11u)])) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(415f, global2[_wgslsmith_index_u32(0u, 11u)], global2[_wgslsmith_index_u32(0u, 11u)], -2416f)))) - _wgslsmith_div_vec4_f32(vec4<f32>(1000f, 1000f, 843f, global2[_wgslsmith_index_u32(18892u, 11u)]), vec4<f32>(global2[_wgslsmith_index_u32(39587u, 11u)], global2[_wgslsmith_index_u32(u_input.b.x, 11u)], global2[_wgslsmith_index_u32(4294967295u, 11u)], global2[_wgslsmith_index_u32(u_input.b.x, 11u)])))));
    var var_2 = var_1;
    var var_3 = _wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(firstLeadingBit(global0.xy >> (u_input.b % vec2<u32>(32u))), ~_wgslsmith_sub_vec2_i32(u_input.a.yz, vec2<i32>(arg_0, 37410i))), min(_wgslsmith_mult_vec2_i32(firstTrailingBit(var_1.c.zy), u_input.a.yx), var_2.c.yw)), ~countOneBits(-vec2<i32>(0i, u_input.a.x)));
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.d, global2[_wgslsmith_index_u32(u_input.b.x, 11u)], 1731f, -934f), vec4<f32>(var_2.d, global2[_wgslsmith_index_u32(u_input.b.x, 11u)], -1301f, -565f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-605f, var_2.d, -419f, var_2.d), vec4<f32>(-227f, -1169f, 1980f, 518f), var_0)))))))));
    return func_2(var_4);
}

fn func_4(arg_0: f32, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    var var_0 = -2606i < _wgslsmith_dot_vec2_i32(arg_2.c.zw, vec2<i32>(select(-50709i, -46770i, arg_1.x) & u_input.a.x, _wgslsmith_sub_i32(-u_input.a.x, -15954i | arg_3.c.x)));
    global0 = firstTrailingBit(vec4<i32>(firstTrailingBit(firstLeadingBit(-18189i)), global0.x, -func_1(global0.x).c.x, -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, -30974i, -30269i), func_2(vec4<f32>(arg_3.d, arg_2.d, 1000f, arg_3.d)).c.zwz)));
    global1 = array<vec4<i32>, 13>();
    var var_1 = Struct_1(2147483647i, (-abs(global0.x) << (u_input.b.x % 32u)) | ~_wgslsmith_mult_i32(global0.x, global0.x), arg_3.c, 1772f);
    let var_2 = arg_3;
    return _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(-1i, ~0i, var_2.a, countOneBits(23265i)), select(_wgslsmith_mult_vec4_i32(func_1(6603i).c, var_1.c), vec4<i32>(1i, arg_3.a, var_2.b, -14354i) << (vec4<u32>(26906u, 1u, 0u, u_input.b.x) % vec4<u32>(32u)), select(select(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, false), vec4<bool>(false, false, false, false), arg_1.x), !vec4<bool>(false, true, true, arg_1.x), !vec4<bool>(arg_1.x, arg_1.x, false, false)))), _wgslsmith_mod_i32(var_1.c.x, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(-2147483647i, u_input.a.x, arg_3.a, -63837i)), vec4<i32>(global0.x, 37333i, 0i, -1i))) & 59587i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~min(func_4(_wgslsmith_f_op_f32(floor(1787f)), vec2<bool>(true, true), Struct_1(u_input.a.x, -54318i, vec4<i32>(-32074i, 2147483647i, -9419i, u_input.a.x), global2[_wgslsmith_index_u32(5586u, 11u)]), func_1(u_input.a.x)), _wgslsmith_mult_i32(global0.x >> (u_input.b.x % 32u), -36217i)), global0.x, -(~select(vec4<i32>(u_input.a.x, -65058i, u_input.a.x, 1i), vec4<i32>(-33545i, -1i, 19627i, -14238i), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true)))), -1029f);
    var var_1 = min(var_0.c.zw, reverseBits(vec2<i32>(u_input.a.x, select(global0.x, 0i, false)) ^ func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1064f, global2[_wgslsmith_index_u32(u_input.b.x, 11u)], -1000f, -1164f))).c.yy));
    global1 = array<vec4<i32>, 13>();
    global2 = array<f32, 11>();
    let var_2 = func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(59895u, 11u)], var_0.d, var_0.d, 1199f)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d, var_0.d, global2[_wgslsmith_index_u32(1u, 11u)], -1000f)))));
    global2 = array<f32, 11>();
    var var_3 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-198f, var_2.d, 396f))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(1u, 11u)], -501f, global2[_wgslsmith_index_u32(u_input.b.x, 11u)])), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, var_2.d, -1000f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(u_input.b.x, 11u)], var_2.d, -405f) + vec3<f32>(1450f, 297f, var_3.d))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true))), !((var_2.d < var_3.d) && all(vec3<bool>(true, true, true))))), _wgslsmith_dot_vec2_u32(vec2<u32>(firstTrailingBit(~17741u), u_input.b.x), _wgslsmith_add_vec2_u32(~u_input.b & ~u_input.b, u_input.b)), ~(i32(-1i) * -8306i), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(1u, 11u)])), 1000f, -1176f, _wgslsmith_f_op_f32(-var_3.d))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1000f, 441f, var_0.d, -1000f), vec4<f32>(var_2.d, global2[_wgslsmith_index_u32(1u, 11u)], 1834f, -1029f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(1u, 11u)], var_2.d, global2[_wgslsmith_index_u32(4294967295u, 11u)], -1000f) + vec4<f32>(var_0.d, var_3.d, var_2.d, 114f)))));
}

