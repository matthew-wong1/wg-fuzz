struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(i32(-2147483648), vec2<i32>(-52131i, 22379i), vec4<f32>(-798f, 1176f, 521f, -1137f)), Struct_1(12731i, vec2<i32>(-1i, -43521i), vec4<f32>(155f, 968f, 297f, 167f)), Struct_1(-19200i, vec2<i32>(2147483647i, -32591i), vec4<f32>(-1000f, 833f, -531f, -749f)), Struct_1(22266i, vec2<i32>(1i, i32(-2147483648)), vec4<f32>(-1672f, -593f, -628f, 591f)), Struct_1(i32(-2147483648), vec2<i32>(-32753i, i32(-2147483648)), vec4<f32>(-286f, -176f, 280f, 988f)), Struct_1(i32(-2147483648), vec2<i32>(-2619i, -35i), vec4<f32>(-209f, -117f, 1123f, 528f)), Struct_1(28669i, vec2<i32>(-1i, -65078i), vec4<f32>(316f, 560f, -703f, -119f)), Struct_1(2147483647i, vec2<i32>(i32(-2147483648), 2147483647i), vec4<f32>(341f, 2597f, 541f, 365f)), Struct_1(-35723i, vec2<i32>(2147483647i, 1i), vec4<f32>(-455f, -1934f, -147f, 1000f)));

var<private> global1: array<bool, 16>;

var<private> global2: vec4<f32>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> i32 {
    global1 = array<bool, 16>();
    var var_0 = Struct_1(countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(6406i, arg_1.a, 0i) & select(vec3<i32>(arg_0.b.x, arg_1.a, 1729i), vec3<i32>(-38623i, arg_1.a, 0i), global1[_wgslsmith_index_u32(u_input.a, 16u)]), _wgslsmith_mod_vec3_i32(vec3<i32>(arg_1.b.x, -2147483647i, arg_0.b.x), firstLeadingBit(vec3<i32>(arg_0.b.x, arg_0.a, u_input.b))))), arg_1.b, _wgslsmith_f_op_vec4_f32(arg_0.c + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(global2.x, global2.x), _wgslsmith_f_op_f32(-arg_0.c.x), _wgslsmith_f_op_f32(-global2.x), -587f) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c.x, arg_1.c.x, arg_1.c.x, -608f) + arg_1.c))))));
    let var_1 = Struct_1(0i, vec2<i32>(47286i, min(~(-12143i), -u_input.b & firstLeadingBit(u_input.b))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(-384f)), _wgslsmith_f_op_f32(round(var_0.c.x)), arg_1.c.x, _wgslsmith_f_op_f32(-arg_1.c.x))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-arg_0.c), _wgslsmith_f_op_vec4_f32(arg_0.c - vec4<f32>(-215f, var_0.c.x, var_0.c.x, arg_1.c.x)), vec4<bool>(true, global1[_wgslsmith_index_u32(arg_2, 16u)], global1[_wgslsmith_index_u32(47042u, 16u)], global1[_wgslsmith_index_u32(0u, 16u)]))), var_0.c)))));
    return -_wgslsmith_mod_i32(_wgslsmith_add_i32(-var_0.a, ~arg_0.b.x), arg_0.b.x);
}

fn func_2(arg_0: f32) -> f32 {
    global0 = array<Struct_1, 9>();
    var var_0 = Struct_1(func_3(Struct_1(1i, ~vec2<i32>(u_input.b, u_input.b) << (u_input.c % vec2<u32>(32u)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0, global2.x, arg_0, global2.x)))))), Struct_1(-37578i, ~(~vec2<i32>(12664i, -16589i)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(175f, arg_0, 157f, -768f) - vec4<f32>(arg_0, -734f, -622f, 3007f)), vec4<f32>(785f, 1076f, 170f, arg_0))), _wgslsmith_div_u32(u_input.a, 4294967295u)), max(vec2<i32>(~u_input.b, u_input.b), -(~vec2<i32>(u_input.b, 2147483647i) ^ ~vec2<i32>(53382i, u_input.b))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, -1581f, arg_0, global2.x) + vec4<f32>(-813f, arg_0, 558f, -385f))), vec4<f32>(-997f, _wgslsmith_f_op_f32(arg_0 - arg_0), -1260f, -301f))) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(exp2(global2.x)), arg_0, _wgslsmith_f_op_f32(round(global2.x)), _wgslsmith_f_op_f32(min(-602f, -524f))), vec4<f32>(_wgslsmith_f_op_f32(868f * arg_0), _wgslsmith_f_op_f32(-161f + arg_0), -1681f, 530f)))));
    var var_1 = true;
    var var_2 = Struct_1(1i, max(vec2<i32>(1i, 0i >> (u_input.c.x % 32u)), firstLeadingBit(var_0.b) & (var_0.b >> (~u_input.c % vec2<u32>(32u)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1097f, _wgslsmith_f_op_f32(-global2.x), -519f, arg_0) + vec4<f32>(_wgslsmith_f_op_f32(select(277f, _wgslsmith_f_op_f32(-1000f + var_0.c.x), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, 11123u), 16u)])), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-544f + global2.x))), 203f, var_0.c.x)));
    let var_3 = Struct_1(reverseBits(var_0.a), ~var_2.b, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(var_2.c, vec4<f32>(239f, 1f, _wgslsmith_f_op_f32(floor(-130f)), var_0.c.x)))));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-827f))));
}

fn func_4(arg_0: i32, arg_1: vec4<f32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(u_input.b, vec2<i32>(arg_2.b.x, _wgslsmith_dot_vec2_i32(arg_2.b, vec2<i32>(arg_2.a, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -1i), vec2<i32>(arg_2.a, u_input.b))))), arg_2.c);
    global2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, _wgslsmith_f_op_f32(1262f - _wgslsmith_f_op_f32(sign(arg_2.c.x))), _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(f32(-1f) * -392f))), var_0.c.x));
    var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(min(firstLeadingBit(4319u), _wgslsmith_mod_u32(_wgslsmith_mod_u32(max(1u, u_input.a), ~u_input.a), firstLeadingBit(1u))), select(~_wgslsmith_add_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, 81060u), vec2<u32>(u_input.a, u_input.c.x))), u_input.c.x << (u_input.a % 32u), true | !all(vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.c.x, 16u)], global1[_wgslsmith_index_u32(0u, 16u)])))), 9u)];
    var var_1 = select(vec4<bool>(false, true, global1[_wgslsmith_index_u32(1u, 16u)], global1[_wgslsmith_index_u32(abs(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, 7897u, u_input.c.x), vec4<u32>(46442u, u_input.c.x, u_input.a, 0u))), 16u)]), select(select(!select(vec4<bool>(false, true, false, false), vec4<bool>(global1[_wgslsmith_index_u32(50331u, 16u)], global1[_wgslsmith_index_u32(64586u, 16u)], false, global1[_wgslsmith_index_u32(38142u, 16u)]), true), select(select(vec4<bool>(global1[_wgslsmith_index_u32(3272u, 16u)], global1[_wgslsmith_index_u32(48990u, 16u)], true, global1[_wgslsmith_index_u32(u_input.a, 16u)]), vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 16u)], false, global1[_wgslsmith_index_u32(u_input.a, 16u)], global1[_wgslsmith_index_u32(u_input.a, 16u)]), global1[_wgslsmith_index_u32(4294967295u, 16u)]), !vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 16u)], true, false, true), !vec4<bool>(false, true, false, global1[_wgslsmith_index_u32(25524u, 16u)])), vec4<bool>(any(vec2<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 16u)], false)), global1[_wgslsmith_index_u32(~1u, 16u)], any(vec4<bool>(false, true, global1[_wgslsmith_index_u32(16575u, 16u)], global1[_wgslsmith_index_u32(122653u, 16u)])), any(vec4<bool>(true, false, global1[_wgslsmith_index_u32(36297u, 16u)], global1[_wgslsmith_index_u32(19004u, 16u)])))), select(!(!vec4<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 16u)], global1[_wgslsmith_index_u32(6795u, 16u)], false, true)), vec4<bool>(all(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 16u)], false, true, true)), global1[_wgslsmith_index_u32(~u_input.c.x, 16u)], global1[_wgslsmith_index_u32(u_input.a, 16u)], true), !select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 16u)], global1[_wgslsmith_index_u32(u_input.a, 16u)], global1[_wgslsmith_index_u32(33234u, 16u)], global1[_wgslsmith_index_u32(u_input.a, 16u)]), vec4<bool>(true, global1[_wgslsmith_index_u32(47629u, 16u)], global1[_wgslsmith_index_u32(4294967295u, 16u)], global1[_wgslsmith_index_u32(1u, 16u)]), false)), all(select(!vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 16u)], global1[_wgslsmith_index_u32(u_input.a, 16u)], global1[_wgslsmith_index_u32(u_input.a, 16u)], global1[_wgslsmith_index_u32(0u, 16u)]), vec4<bool>(true, true, false, false), true))), !(!select(!vec4<bool>(global1[_wgslsmith_index_u32(11333u, 16u)], false, global1[_wgslsmith_index_u32(21646u, 16u)], true), !vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.a, 16u)], global1[_wgslsmith_index_u32(u_input.c.x, 16u)], false), global1[_wgslsmith_index_u32(u_input.c.x, 16u)] != true)));
    let var_2 = reverseBits(_wgslsmith_mod_vec3_u32(~_wgslsmith_clamp_vec3_u32(vec3<u32>(87303u, u_input.c.x, u_input.a), vec3<u32>(8305u, 54362u, u_input.c.x), vec3<u32>(23541u, u_input.c.x, u_input.a)), vec3<u32>(u_input.c.x, 0u, u_input.c.x))) & (reverseBits(vec3<u32>(u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(21178u, u_input.c.x, 4294967295u, 4294967295u), vec4<u32>(u_input.a, u_input.c.x, 1u, u_input.c.x)), abs(u_input.a))) ^ _wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.a, u_input.c.x, 101044u), max(vec3<u32>(4294967295u, u_input.c.x, u_input.a), vec3<u32>(15183u, u_input.c.x, u_input.c.x))), firstLeadingBit(vec3<u32>(85329u, 54128u, u_input.a)) & _wgslsmith_div_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, u_input.a), vec3<u32>(u_input.c.x, u_input.c.x, u_input.a))));
    return global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(~0u & abs(var_2.x), 13074u), _wgslsmith_mod_u32(u_input.c.x, ~_wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(0u, var_2.x))) >> ((~(~u_input.a) << (_wgslsmith_clamp_u32(~u_input.c.x, var_2.x, 4294967295u) % 32u)) % 32u)), 9u)];
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> f32 {
    var var_0 = func_4(18445i, vec4<f32>(arg_1.c.x, _wgslsmith_f_op_f32(func_2(-557f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-344f, _wgslsmith_div_f32(arg_1.c.x, -347f), true))), -601f), Struct_1(-10366i, -arg_1.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(arg_1.c, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-251f, arg_1.c.x, arg_1.c.x, arg_1.c.x))) - _wgslsmith_f_op_vec4_f32(min(arg_1.c, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.c.x, global2.x, global2.x, arg_1.c.x)))))));
    var var_1 = Struct_1(arg_1.a, arg_1.b, _wgslsmith_f_op_vec4_f32(ceil(arg_1.c)));
    let var_2 = vec3<i32>(u_input.b, arg_0, _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(max(vec2<i32>(-2147483647i, 1i), ~var_0.b), max(vec2<i32>(161i, 6904i), vec2<i32>(arg_0, arg_1.b.x))), vec2<i32>(arg_1.a, u_input.b) & _wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(var_0.b, arg_1.b), firstLeadingBit(var_0.b))));
    let var_3 = ~var_2;
    let var_4 = reverseBits(_wgslsmith_div_vec2_i32(vec2<i32>(60196i, -1i), vec2<i32>(-func_3(arg_1, Struct_1(u_input.b, var_3.zz, vec4<f32>(-844f, 408f, var_1.c.x, var_1.c.x)), 0u), arg_1.b.x)));
    return var_1.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(global2.xy - vec2<f32>(_wgslsmith_f_op_f32(func_1(_wgslsmith_add_i32(-1i, 7430i), global0[_wgslsmith_index_u32(0u, 9u)])), _wgslsmith_f_op_f32(f32(-1f) * -627f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(global2.zz)), vec2<f32>(-436f, global2.x)))))));
    let var_1 = -vec3<i32>(1i, 1i, 1i) >> (~(vec3<u32>(min(u_input.a, 54796u), 1u, 22370u) >> (vec3<u32>(0u, 24069u, firstLeadingBit(u_input.c.x)) % vec3<u32>(32u))) % vec3<u32>(32u));
    var var_2 = global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(min(vec4<u32>(u_input.c.x, u_input.c.x << (u_input.c.x % 32u), select(u_input.a, u_input.c.x, global1[_wgslsmith_index_u32(u_input.a, 16u)]), 20360u), vec4<u32>(~u_input.a, 1u, 18676u, u_input.a & 54001u)), _wgslsmith_div_vec4_u32(vec4<u32>(countOneBits(25767u), max(0u, u_input.c.x), ~u_input.a, 4294967295u), max(firstLeadingBit(vec4<u32>(0u, 1u, u_input.a, u_input.a)), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, u_input.a, 4294967295u, u_input.a), vec4<u32>(u_input.c.x, 13029u, 83772u, u_input.a))))), 9u)];
    let var_3 = vec2<bool>(all(!vec4<bool>(true, true, 0i >= var_1.x, true)), global1[_wgslsmith_index_u32(~min(4294967295u, _wgslsmith_div_u32(u_input.a, u_input.a) >> (_wgslsmith_mod_u32(u_input.a, u_input.a) % 32u)), 16u)]);
    var var_4 = var_3.x;
    var_0 = vec2<f32>(744f, -878f);
    var var_5 = countOneBits(vec4<u32>(12014u, ~_wgslsmith_dot_vec2_u32(~u_input.c, vec2<u32>(20338u, 1u)), 0u, 66139u));
    let var_6 = _wgslsmith_f_op_f32(-global2.x);
    var_5 = firstTrailingBit(vec4<u32>(_wgslsmith_add_u32(~var_5.x, max(var_5.x, 87870u)), 0u, 0u, abs(0u)) | _wgslsmith_div_vec4_u32(vec4<u32>(~var_5.x, ~12022u, select(u_input.c.x, 26357u, false), 1u), (vec4<u32>(var_5.x, 0u, var_5.x, 0u) | vec4<u32>(u_input.c.x, 17040u, u_input.c.x, 1u)) >> (~vec4<u32>(u_input.a, u_input.a, u_input.a, var_5.x) % vec4<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(~14437i, _wgslsmith_dot_vec3_i32(var_1, vec3<i32>(-2147483647i, -3515i, ~var_2.a)), func_4(-22255i, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-943f, 651f, -390f, 524f) + vec4<f32>(var_2.c.x, -1000f, 1105f, 1035f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_6, 1868f, var_2.c.x, var_2.c.x) * var_2.c)), Struct_1(~(-2147483647i), vec2<i32>(-10886i, 2147483647i), _wgslsmith_f_op_vec4_f32(var_2.c - vec4<f32>(global2.x, global2.x, 691f, global2.x)))).b.x, (var_2.a | _wgslsmith_clamp_i32(-13688i, 0i, -1i)) ^ ~(-var_1.x)));
}

