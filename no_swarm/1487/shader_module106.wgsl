struct Struct_1 {
    a: u32,
    b: u32,
    c: i32,
    d: vec4<bool>,
    e: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: vec3<f32>,
}

struct Struct_3 {
    a: i32,
    b: vec3<f32>,
    c: vec2<bool>,
    d: Struct_2,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: Struct_1,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: i32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(47605u, 0u, 41908u, 4294967295u);

var<private> global1: Struct_4;

var<private> global2: array<f32, 26>;

var<private> global3: Struct_4;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: Struct_2) -> vec4<f32> {
    var var_0 = any(global1.d.d);
    global3 = Struct_4(min(reverseBits(vec4<i32>(30204i, -1i, select(26234i, -37757i, global3.d.e), global3.b.x)), vec4<i32>(-2528i, (global1.a.x ^ u_input.c.x) & _wgslsmith_dot_vec4_i32(vec4<i32>(3695i, arg_0.x, global3.a.x, u_input.c.x), global1.a), ~global3.d.c, abs(i32(-1i) * -19400i))), arg_0.zz, global1.c, global3.d, u_input.d);
    let var_1 = Struct_4(-select(_wgslsmith_clamp_vec4_i32(firstTrailingBit(global3.a), _wgslsmith_sub_vec4_i32(u_input.c, vec4<i32>(-23331i, -2147483647i, 0i, global1.a.x)), -global1.a), global1.a, vec4<bool>(true, global3.d.c < arg_0.x, true, !arg_2.b.x)), global3.b ^ vec2<i32>(_wgslsmith_clamp_i32(firstLeadingBit(global1.d.c), arg_0.x, 33349i), arg_0.x), min(global3.c ^ (vec4<u32>(global1.d.a, 4294967295u, 49752u, 1u) ^ global3.c), ~firstLeadingBit(global1.c)) << ((_wgslsmith_mult_vec4_u32(global1.c, firstTrailingBit(vec4<u32>(u_input.d.x, u_input.d.x, 4294967295u, global3.e.x))) ^ min(global3.c, vec4<u32>(18403u, global0.x, global3.d.b, global0.x))) % vec4<u32>(32u)), global3.d, abs(u_input.d));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_2.c.x)) - -365f)))), arg_1.c.x, -1029f, arg_2.c.x);
    var var_3 = Struct_3(-1i, var_2.xyy, !vec2<bool>(_wgslsmith_dot_vec2_u32(global1.c.yw, global0.ww) <= var_1.d.b, true || any(vec4<bool>(global3.d.e, true, global3.d.e, true))), arg_2);
    return vec4<f32>(var_2.x, 1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1401f * -194f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_3.d.c.x))), true && !arg_2.b.x)), _wgslsmith_f_op_f32(arg_2.a.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + -1131f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_2.c.x - -932f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -959f)))));
}

fn func_2(arg_0: Struct_2) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_sub_vec3_i32(min(vec3<i32>(u_input.c.x, u_input.c.x, -1i), vec3<i32>(-2147483647i, 0i, -2147483647i)), firstLeadingBit(vec3<i32>(u_input.c.x, 22183i, u_input.c.x))), arg_0, Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(381f, global2[_wgslsmith_index_u32(global0.x, 26u)], arg_0.a.x)), select(vec3<bool>(global1.d.e, global3.d.e, false), vec3<bool>(global3.d.e, global1.d.e, global1.d.e), global3.d.d.x), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(969f, 365f, 1103f)))))))));
    let var_1 = any(!(!select(vec2<bool>(true, false), vec2<bool>(true, arg_0.b.x), global3.d.d.zx)));
    var var_2 = global2[_wgslsmith_index_u32(1u, 26u)];
    let var_3 = global3.d;
    let var_4 = arg_0.c.x;
    return Struct_3(0i, vec3<f32>(arg_0.a.x, arg_0.a.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_4)))), select(select(select(vec2<bool>(true, true), vec2<bool>(false, global3.d.e), arg_0.b.zz), vec2<bool>(any(global1.d.d.yw), all(vec2<bool>(var_1, true))), var_3.d.zw), vec2<bool>(global1.d.d.x, global3.d.d.x), (_wgslsmith_mult_u32(global0.x, global0.x) >= (global3.d.a ^ 4294967295u)) || false), arg_0);
}

fn func_4(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: Struct_2, arg_3: f32) -> Struct_2 {
    let var_0 = _wgslsmith_add_u32(~abs(~abs(0u)), ~(~71077u));
    var var_1 = global1.d.d;
    var var_2 = Struct_1(~global3.d.a, _wgslsmith_mult_u32(0u, var_0) >> (_wgslsmith_dot_vec2_u32(~_wgslsmith_clamp_vec2_u32(vec2<u32>(42554u, global1.d.a), vec2<u32>(4294967295u, var_0), vec2<u32>(56269u, 1u)), reverseBits(vec2<u32>(global3.e.x, 0u))) % 32u), global3.a.x, select(global1.d.d, global3.d.d, !any(arg_2.b.yz)), var_1.x || !global3.d.d.x);
    global0 = global1.c;
    global2 = array<f32, 26>();
    return func_2(func_2(arg_0.d).d).d;
}

fn func_1(arg_0: vec3<i32>) -> vec4<i32> {
    var var_0 = func_4(func_2(Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1059f, global2[_wgslsmith_index_u32(global3.d.b, 26u)], -1426f))), !vec3<bool>(true, global1.d.e, false), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(global0.x, 26u)], global2[_wgslsmith_index_u32(u_input.d.x, 26u)], -152f) * vec3<f32>(global2[_wgslsmith_index_u32(u_input.a, 26u)], 839f, global2[_wgslsmith_index_u32(global3.d.b, 26u)]))))), _wgslsmith_div_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(global3.e.x & global0.x, 26u)], _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-390f, -1928f))), vec2<f32>(1095f, 923f)), Struct_2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global2[_wgslsmith_index_u32(global0.x, 26u)], global2[_wgslsmith_index_u32(42232u, 26u)], 648f), vec3<f32>(1000f, global2[_wgslsmith_index_u32(0u, 26u)], global2[_wgslsmith_index_u32(global0.x, 26u)]))))))), !select(!vec3<bool>(global3.d.e, global3.d.d.x, false), select(global1.d.d.yzz, vec3<bool>(global1.d.d.x, true, global1.d.e), global1.d.d.x), global1.d.e), vec3<f32>(global2[_wgslsmith_index_u32(global0.x, 26u)], _wgslsmith_div_f32(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(1u, 26u)], -948f), -507f), global2[_wgslsmith_index_u32(4294967295u, 26u)])), -298f);
    var var_1 = Struct_4(global1.a, _wgslsmith_add_vec2_i32(select(vec2<i32>(1i, max(global3.b.x, arg_0.x)), _wgslsmith_div_vec2_i32(~arg_0.yy, abs(vec2<i32>(arg_0.x, -39888i))), vec2<bool>(true, !var_0.b.x)), vec2<i32>(global1.d.c, -(2147483647i & global1.a.x))), _wgslsmith_mod_vec4_u32(min(global1.c, countOneBits(global3.c >> (global3.c % vec4<u32>(32u)))), abs(~abs(vec4<u32>(52240u, u_input.b, u_input.a, 48551u)))), global3.d, global1.c.ww);
    global2 = array<f32, 26>();
    global3 = Struct_4(_wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(var_1.a, vec4<i32>(_wgslsmith_sub_i32(2147483647i, 17945i), ~global3.a.x, -21060i >> (global1.d.a % 32u), _wgslsmith_sub_i32(1i, 38319i)), vec4<i32>(i32(-1i) * -8419i, arg_0.x ^ -2147483647i, global3.a.x, 1192i)), _wgslsmith_add_vec4_i32(vec4<i32>(-arg_0.x, var_1.b.x, countOneBits(arg_0.x), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, -1i, u_input.c.x, u_input.c.x), var_1.a)), ~abs(vec4<i32>(-1i, var_1.d.c, -8095i, 10333i))), firstLeadingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(var_1.a.x, -17174i, arg_0.x, 10539i), _wgslsmith_mod_vec4_i32(u_input.c, u_input.c)))), global1.a.yw, ~global1.c, global3.d, ~(abs(~vec2<u32>(4294967295u, 15122u)) << (~u_input.d % vec2<u32>(32u))));
    var var_2 = ~_wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, var_1.a.x, arg_0.x), u_input.c.yzy), firstLeadingBit(u_input.c.x)), -_wgslsmith_mult_vec2_i32(var_1.a.zx, vec2<i32>(arg_0.x, var_1.b.x))) ^ _wgslsmith_div_vec2_i32(-min(u_input.c.zx, abs(global3.b)), -var_1.a.wx << ((vec2<u32>(global0.x, 1u) ^ vec2<u32>(4294967295u, global1.c.x)) % vec2<u32>(32u)));
    return _wgslsmith_mod_vec4_i32(var_1.a, firstLeadingBit(vec4<i32>(var_1.d.c, var_1.b.x, ~(global3.d.c & -2147483647i), 1i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -_wgslsmith_dot_vec4_i32(func_1(global1.a.yyw), vec4<i32>(0i, global1.b.x << (abs(22234u) % 32u), -33921i, -13094i >> (~global1.d.a % 32u)));
    let var_1 = Struct_4(-vec4<i32>(-2147483647i, -3156i, global1.b.x, global1.b.x), (vec2<i32>(-global1.b.x, 1i) ^ global3.b) >> (u_input.d % vec2<u32>(32u)), firstLeadingBit(abs(~vec4<u32>(u_input.a, 11322u, 51427u, 1u)) << (global1.c % vec4<u32>(32u))), global3.d, ~vec2<u32>(~(global0.x | 24035u), u_input.d.x));
    global0 = max(vec4<u32>(1u, 0u, 1u, var_1.e.x) >> (vec4<u32>(global1.e.x, ~global3.e.x, firstTrailingBit(0u), u_input.d.x) % vec4<u32>(32u)), vec4<u32>(max(abs(u_input.d.x) & (36420u | global3.e.x), 25955u), ~11857u, 4294967295u, abs(global0.x)));
    global2 = array<f32, 26>();
    let var_2 = Struct_4(firstTrailingBit(vec4<i32>(var_1.d.c, u_input.c.x << (1u % 32u), abs(_wgslsmith_div_i32(u_input.c.x, global3.d.c)), ~global3.a.x >> (~global1.c.x % 32u))), vec2<i32>(~_wgslsmith_dot_vec3_i32(abs(var_1.a.xzz), abs(global1.a.wzx)), reverseBits(global1.d.c)), ~(abs(var_1.c) ^ _wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(u_input.d.x, global3.e.x, 40043u, 4294967295u)), vec4<u32>(1u, var_1.e.x, 4294967295u, 9996u) & vec4<u32>(60375u, global0.x, 75021u, 1u))), Struct_1(var_1.c.x, global3.d.b, ~30726i, global3.d.d, select(true, true, false)), global1.c.yw | ~firstTrailingBit(vec2<u32>(19859u, 0u)));
    global2 = array<f32, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(global3.d.c >> (var_2.d.b % 32u), ~(_wgslsmith_div_vec3_i32(vec3<i32>(37381i, var_2.d.c, 9284i), _wgslsmith_sub_vec3_i32(vec3<i32>(12742i, var_1.b.x, 0i), vec3<i32>(-16586i, 1i, var_2.a.x))) | u_input.c.wzw), reverseBits(~var_1.e.x | ~27601u) & ~global1.d.a, _wgslsmith_add_i32(_wgslsmith_mod_i32(var_1.d.c, countOneBits(~u_input.c.x)), _wgslsmith_mult_i32(1i, global1.b.x >> (~u_input.b % 32u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(938f, global2[_wgslsmith_index_u32(0u, 26u)]))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(0u, 26u)], -874f)))));
}

