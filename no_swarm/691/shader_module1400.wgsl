struct Struct_1 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: u32,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_1,
    d: f32,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec2<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 10>;

var<private> global1: array<bool, 3> = array<bool, 3>(false, false, true);

var<private> global2: Struct_2 = Struct_2(vec4<bool>(true, false, true, true), Struct_1(vec3<i32>(6319i, 1i, 2147483647i), vec3<i32>(2147483647i, i32(-2147483648), 1i), 5975u, -1503f, 2147483647i), vec4<bool>(true, true, false, true));

var<private> global3: vec3<i32>;

var<private> global4: vec2<u32>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec3<u32> {
    var var_0 = 4294967295u;
    let var_1 = global2.b;
    var var_2 = Struct_2(!(!global2.a), Struct_1(vec3<i32>(firstLeadingBit(40663i ^ u_input.b), 0i, ~u_input.a), vec3<i32>(~global2.b.b.x, _wgslsmith_sub_i32(-1i, u_input.b) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.a, var_1.a.x), global2.b.b), _wgslsmith_dot_vec4_i32(~vec4<i32>(-25500i, var_1.a.x, var_1.e, var_1.e), reverseBits(vec4<i32>(u_input.b, global3.x, global3.x, var_1.b.x)))), _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.c, 44599u, global4.x) ^ ~vec3<u32>(var_1.c, u_input.d.x, var_1.c), _wgslsmith_mult_vec3_u32(~u_input.e.yzy, vec3<u32>(var_1.c, u_input.d.x, u_input.e.x))), -244f, ~35891i), global2.c);
    var_2 = Struct_2(vec4<bool>(true, true, true, global1[_wgslsmith_index_u32(global4.x, 3u)]), var_2.b, select(vec4<bool>(var_2.c.x, global1[_wgslsmith_index_u32(~(~var_2.b.c), 3u)], true, global1[_wgslsmith_index_u32(global2.b.c, 3u)] | all(vec2<bool>(global1[_wgslsmith_index_u32(1u, 3u)], global2.a.x))), !select(vec4<bool>(global2.a.x, false, global2.c.x, false), !vec4<bool>(global2.a.x, true, global1[_wgslsmith_index_u32(0u, 3u)], false), select(vec4<bool>(false, global2.a.x, true, false), vec4<bool>(var_2.c.x, false, var_2.a.x, global2.c.x), var_2.c)), global1[_wgslsmith_index_u32(var_1.c & 0u, 3u)]));
    global0 = array<vec4<f32>, 10>();
    return vec3<u32>(var_2.b.c, var_1.c, var_1.c | 4294967295u);
}

fn func_2() -> f32 {
    let var_0 = global2.b;
    global3 = -vec3<i32>(firstLeadingBit(var_0.b.x ^ u_input.b), _wgslsmith_mult_i32(1i, countOneBits(global3.x)), _wgslsmith_add_i32(global3.x, 2147483647i)) | (vec3<i32>(firstLeadingBit(global3.x), ~max(25896i, global3.x), _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(var_0.a.zx, vec2<i32>(-2147483647i, var_0.e)), vec2<i32>(global2.b.b.x, u_input.b))) ^ var_0.b);
    global4 = vec2<u32>(~_wgslsmith_dot_vec3_u32(func_3() >> (~vec3<u32>(18729u, var_0.c, u_input.e.x) % vec3<u32>(32u)), reverseBits(~vec3<u32>(1u, 0u, var_0.c))), abs(_wgslsmith_mult_u32(~_wgslsmith_div_u32(14404u, u_input.d.x), u_input.c)));
    var var_1 = Struct_2(select(select(global2.c, !select(vec4<bool>(false, global2.c.x, global2.c.x, global2.c.x), global2.c, global2.c.x), false == all(global2.c.zy)), select(vec4<bool>(!global1[_wgslsmith_index_u32(4872u, 3u)], !global1[_wgslsmith_index_u32(u_input.e.x, 3u)], !global2.a.x, global2.c.x != global1[_wgslsmith_index_u32(0u, 3u)]), vec4<bool>(true, global2.c.x | false, true, false), !select(vec4<bool>(global2.a.x, global1[_wgslsmith_index_u32(global2.b.c, 3u)], false, true), global2.c, global2.c)), select(!select(global2.a, vec4<bool>(false, false, false, global1[_wgslsmith_index_u32(global4.x, 3u)]), global2.c), select(!vec4<bool>(global1[_wgslsmith_index_u32(global4.x, 3u)], global1[_wgslsmith_index_u32(83751u, 3u)], global1[_wgslsmith_index_u32(14892u, 3u)], global2.a.x), global2.c, vec4<bool>(true, global1[_wgslsmith_index_u32(var_0.c, 3u)], true, true)), global2.a.x)), Struct_1(select(firstTrailingBit(vec3<i32>(var_0.a.x, 0i, 52412i)), -_wgslsmith_clamp_vec3_i32(global2.b.a, vec3<i32>(global2.b.b.x, -35084i, var_0.b.x), global2.b.b), !select(global2.c.zzx, vec3<bool>(true, true, global1[_wgslsmith_index_u32(0u, 3u)]), vec3<bool>(global2.c.x, false, global1[_wgslsmith_index_u32(4294967295u, 3u)]))), vec3<i32>(-1i, ~(-43758i), 0i), u_input.e.x, var_0.d, abs(-7145i)), vec4<bool>(all(global2.a.zxw), !any(select(global2.c, global2.c, vec4<bool>(false, global2.a.x, global2.c.x, false))), global2.c.x, global1[_wgslsmith_index_u32(1u, 3u)]));
    global2 = Struct_2(vec4<bool>(any(select(vec4<bool>(true, var_1.a.x, global2.a.x, true), !vec4<bool>(false, false, global1[_wgslsmith_index_u32(1u, 3u)], false), !var_1.a.x)), false, abs(-global3.x) < countOneBits(~14242i), global2.b.d == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -738f) * global2.b.d)), Struct_1(vec3<i32>(2147483647i, var_1.b.a.x, -select(global2.b.b.x, u_input.a, true)), global2.b.a, ~(~var_1.b.c & var_1.b.c), _wgslsmith_f_op_f32(-global2.b.d), _wgslsmith_add_i32(8986i, 1i)), !select(global2.a, !global2.a, any(var_1.c)));
    return global2.b.d;
}

fn func_4(arg_0: vec2<f32>) -> Struct_1 {
    global4 = vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(5475u, firstLeadingBit(_wgslsmith_div_u32(4294967295u, 93034u)), 1u), _wgslsmith_mod_u32(global4.x, global2.b.c)), _wgslsmith_mult_u32(min(_wgslsmith_mult_u32(u_input.c, global2.b.c << (global2.b.c % 32u)), global2.b.c), 4294967295u));
    let var_0 = Struct_4(Struct_3(Struct_2(global2.a, global2.b, global2.c), Struct_2(global2.c, Struct_1(abs(global2.b.a), ~global2.b.b, ~17457u, -978f, global2.b.e), vec4<bool>(global1[_wgslsmith_index_u32(~global4.x, 3u)], true, global1[_wgslsmith_index_u32(u_input.c >> (global4.x % 32u), 3u)], true)), Struct_1(select(global2.b.a ^ global2.b.a, global2.b.a, any(global2.a.zyw)), ~vec3<i32>(global2.b.b.x, -1i, 13540i), select(global4.x, max(global2.b.c, global2.b.c), global2.a.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -105f))), ~(~(-1i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global2.b.d, global2.b.d)) - arg_0.x)), Struct_2(vec4<bool>(global1[_wgslsmith_index_u32(min(1u, global2.b.c), 3u)], true, !global2.a.x, true), Struct_1(global2.b.a, _wgslsmith_mod_vec3_i32(global2.b.a, global2.b.a), 20312u, _wgslsmith_div_f32(global2.b.d, arg_0.x), -u_input.b), !global2.a)), 35213u);
    let var_1 = _wgslsmith_add_i32(_wgslsmith_mod_i32(var_0.a.a.b.e, ~reverseBits(0i)), max(-countOneBits(~0i), reverseBits(_wgslsmith_dot_vec3_i32(~vec3<i32>(-19411i, 0i, u_input.b), _wgslsmith_sub_vec3_i32(var_0.a.e.b.b, global2.b.a)))));
    var var_2 = Struct_3(var_0.a.b, Struct_2(select(vec4<bool>(!global2.c.x, true, true, all(global2.c.xyy)), !(!global2.c), vec4<bool>(!global2.a.x, var_0.a.a.c.x, !global1[_wgslsmith_index_u32(global4.x, 3u)], global3.x >= 24436i)), var_0.a.c, global2.a), var_0.a.c, var_0.a.a.b.d, var_0.a.b);
    let var_3 = vec2<bool>(true, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a.c.c >> (2181u % 32u), 1u ^ global2.b.c), (vec2<u32>(0u, u_input.c) >> (vec2<u32>(var_0.b, var_0.b) % vec2<u32>(32u))) & ~vec2<u32>(1u, 1u)), 3u)] & global2.c.x);
    return var_0.a.b.b;
}

fn func_1(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: f32) -> Struct_3 {
    let var_0 = firstLeadingBit(~global4.x);
    let var_1 = func_4(vec2<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(global2.b.d * 130f)));
    let var_2 = _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(global2.b.c, arg_0.a.b.c, 12645u, 1u), countOneBits(firstLeadingBit(u_input.e))), _wgslsmith_mult_vec4_u32(select(vec4<u32>(global2.b.c, global4.x, 0u, 20779u), u_input.e, any(vec2<bool>(arg_1.x, arg_0.e.c.x))), u_input.e)), select(u_input.e, u_input.e, !all(!vec3<bool>(global1[_wgslsmith_index_u32(63797u, 3u)], false, global1[_wgslsmith_index_u32(1u, 3u)]))));
    global1 = array<bool, 3>();
    var var_3 = !arg_0.b.a.zyw;
    return arg_0;
}

fn func_5(arg_0: i32, arg_1: Struct_3, arg_2: i32, arg_3: vec3<f32>) -> Struct_2 {
    let var_0 = Struct_4(Struct_3(arg_1.a, arg_1.a, func_4(vec2<f32>(arg_3.x, arg_1.a.b.d)), _wgslsmith_f_op_f32(f32(-1f) * -233f), Struct_2(!select(global2.c, global2.c, false), global2.b, global2.c)), global4.x);
    let var_1 = firstTrailingBit(vec2<i32>(u_input.b, global2.b.a.x));
    var var_2 = vec4<bool>((max(_wgslsmith_mult_u32(10533u, global2.b.c), ~1u) == ~abs(u_input.e.x)) && (_wgslsmith_f_op_f32(sign(arg_1.d)) != _wgslsmith_f_op_f32(max(-1970f, _wgslsmith_f_op_f32(abs(1814f))))), !var_0.a.b.a.x, true, true);
    global4 = vec2<u32>(_wgslsmith_mod_u32(4294967295u, abs(~arg_1.c.c)), 1u);
    var var_3 = select(select(_wgslsmith_div_vec2_i32(global3.yx, ~countOneBits(vec2<i32>(1i, arg_1.c.b.x))), -select(var_1, vec2<i32>(arg_0, -32271i), global2.c.x == false), func_1(Struct_3(var_0.a.e, Struct_2(arg_1.e.a, Struct_1(var_0.a.a.b.b, vec3<i32>(-2147483647i, -15572i, 14384i), 1u, var_0.a.e.b.d, var_0.a.a.b.a.x), arg_1.e.c), global2.b, _wgslsmith_f_op_f32(min(-836f, global2.b.d)), arg_1.b), global2.a, global2.b.d).b.c.yx), global2.b.b.yx, !select(vec2<bool>(!global1[_wgslsmith_index_u32(4294967295u, 3u)], func_1(Struct_3(var_0.a.a, arg_1.b, arg_1.c, 111f, Struct_2(arg_1.b.a, arg_1.a.b, vec4<bool>(false, global1[_wgslsmith_index_u32(21677u, 3u)], var_0.a.e.a.x, global1[_wgslsmith_index_u32(1u, 3u)]))), global2.a, 1066f).e.a.x), var_0.a.e.a.yz, select(select(vec2<bool>(var_0.a.a.c.x, false), vec2<bool>(true, true), vec2<bool>(global1[_wgslsmith_index_u32(18806u, 3u)], global1[_wgslsmith_index_u32(u_input.d.x, 3u)])), !vec2<bool>(arg_1.e.c.x, true), all(vec2<bool>(global2.a.x, false)))));
    return func_1(var_0.a, select(select(vec4<bool>(!var_0.a.b.c.x, all(arg_1.e.a.xy), any(vec3<bool>(false, arg_1.a.a.x, true)), !global1[_wgslsmith_index_u32(arg_1.e.b.c, 3u)]), vec4<bool>(false, any(global2.c), arg_1.b.a.x, all(arg_1.e.a)), vec4<bool>(select(false, arg_1.e.a.x, false), 48244u != var_0.a.a.b.c, any(vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 3u)], global2.a.x)), select(false, global2.c.x, global2.c.x))), vec4<bool>(!all(var_2.yzz), global2.a.x, var_0.a.e.a.x && (u_input.d.x <= 1u), !(false || arg_1.e.a.x)), global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(_wgslsmith_mod_u32(arg_1.e.b.c, 1u), _wgslsmith_add_u32(global2.b.c, arg_1.e.b.c)), 3u)]), -869f).a;
}

fn func_6(arg_0: Struct_2, arg_1: Struct_3) -> Struct_3 {
    global1 = array<bool, 3>();
    let var_0 = func_4(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(arg_1.a.b.d, global2.b.d), vec2<f32>(-1147f, arg_1.e.b.d)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1000f, 1210f), vec2<f32>(arg_0.b.d, arg_1.d))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1000f, arg_0.b.d), vec2<f32>(arg_0.b.d, global2.b.d)))))))));
    let var_1 = true;
    global2 = Struct_2(func_5(_wgslsmith_add_i32(_wgslsmith_mod_i32(global3.x, -global3.x), -54577i), Struct_3(arg_1.a, func_1(func_1(arg_1, vec4<bool>(false, true, var_1, var_1), 1287f), !vec4<bool>(global1[_wgslsmith_index_u32(1u, 3u)], true, global2.c.x, arg_1.b.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1025f)).b, Struct_1(vec3<i32>(-1i, arg_0.b.a.x, u_input.b) >> (vec3<u32>(1u, global2.b.c, u_input.e.x) % vec3<u32>(32u)), _wgslsmith_mult_vec3_i32(vec3<i32>(-1i, 1i, 1i), vec3<i32>(arg_1.e.b.b.x, arg_1.e.b.e, arg_1.e.b.e)), u_input.e.x & arg_1.e.b.c, _wgslsmith_f_op_f32(f32(-1f) * -1297f), abs(-18447i)), arg_1.b.b.d, Struct_2(vec4<bool>(true, global2.c.x, arg_1.a.a.x, arg_1.e.c.x), arg_1.a.b, arg_1.b.c)), -1i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(489f, 400f, arg_0.b.d)) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_0.b.d, -499f, 2030f), vec3<f32>(790f, var_0.d, 568f))))))).a, arg_0.b, !vec4<bool>(true, false, all(arg_0.a.xx), 345f == _wgslsmith_f_op_f32(global2.b.d + 649f)));
    let var_2 = _wgslsmith_clamp_i32(~(arg_1.b.b.e << (0u % 32u)), _wgslsmith_mult_i32(var_0.e ^ 38734i, var_0.a.x), arg_0.b.e);
    return func_1(func_1(Struct_3(arg_1.e, arg_1.a, func_1(arg_1, vec4<bool>(true, false, true, true), _wgslsmith_div_f32(var_0.d, arg_0.b.d)).a.b, func_5(-1i, arg_1, global3.x, vec3<f32>(arg_0.b.d, 137f, var_0.d)).b.d, arg_1.e), arg_1.e.c, _wgslsmith_f_op_f32(abs(501f))), select(arg_0.a, vec4<bool>(30181u >= arg_1.a.b.c, true, arg_0.a.x, select(true, any(arg_0.c.zzw), true)), func_1(arg_1, select(vec4<bool>(arg_1.e.c.x, global2.a.x, global1[_wgslsmith_index_u32(global4.x, 3u)], true), select(vec4<bool>(true, global2.c.x, true, true), vec4<bool>(arg_0.c.x, global2.a.x, arg_0.a.x, var_1), false), true), _wgslsmith_f_op_f32(func_2())).e.c), func_5(1i, arg_1, max(-global2.b.e, ~(~var_2)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d, arg_1.d, arg_1.c.d) - vec3<f32>(-947f, arg_1.e.b.d, -948f)))) * _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1802f, arg_1.b.b.d, -599f))))).b.d);
}

fn func_7(arg_0: vec2<f32>, arg_1: Struct_3) -> vec3<i32> {
    let var_0 = u_input.e.zyw;
    var var_1 = true;
    var var_2 = Struct_2(vec4<bool>(true, any(arg_1.a.c.zzw), (all(global2.a.xy) && true) || false, func_1(Struct_3(arg_1.e, func_1(Struct_3(arg_1.b, Struct_2(vec4<bool>(global1[_wgslsmith_index_u32(u_input.c, 3u)], global1[_wgslsmith_index_u32(u_input.c, 3u)], true, global2.c.x), Struct_1(vec3<i32>(arg_1.a.b.e, 14535i, global3.x), vec3<i32>(-27854i, u_input.b, 2147483647i), 57553u, arg_0.x, global3.x), arg_1.e.c), Struct_1(vec3<i32>(-36723i, global3.x, global3.x), vec3<i32>(0i, -2655i, -38395i), global2.b.c, global2.b.d, u_input.a), -565f, Struct_2(arg_1.e.a, arg_1.b.b, arg_1.a.a)), vec4<bool>(true, false, global2.c.x, true), -301f).e, global2.b, global2.b.d, func_5(arg_1.b.b.a.x, arg_1, global3.x, vec3<f32>(arg_0.x, global2.b.d, global2.b.d))), vec4<bool>(any(vec3<bool>(global1[_wgslsmith_index_u32(global4.x, 3u)], false, global2.c.x)), global2.c.x, arg_1.e.c.x, global1[_wgslsmith_index_u32(~var_0.x, 3u)]), 680f).b.a.x), func_5(func_4(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_1.c.d, arg_0.x))), vec2<f32>(745f, arg_0.x))).b.x, func_1(func_6(func_1(arg_1, arg_1.a.a, -284f).a, func_6(Struct_2(vec4<bool>(arg_1.a.c.x, global1[_wgslsmith_index_u32(arg_1.b.b.c, 3u)], global2.c.x, arg_1.a.a.x), global2.b, vec4<bool>(true, true, global1[_wgslsmith_index_u32(13486u, 3u)], arg_1.a.c.x)), arg_1)), global2.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -578f))), -2147483647i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, global2.b.d, global2.b.d)))).b, arg_1.a.c);
    var var_3 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(f32(-1f) * -331f), arg_0.x, _wgslsmith_f_op_f32(-arg_0.x)), global0[_wgslsmith_index_u32(abs(global4.x), 10u)]));
    var var_4 = arg_1;
    return -(~global2.b.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -450f;
    global3 = global2.b.b;
    let var_1 = ~0u;
    var var_2 = Struct_1(func_7(vec2<f32>(var_0, var_0), func_6(func_5(7500i, func_1(Struct_3(Struct_2(global2.a, global2.b, vec4<bool>(global2.c.x, false, global1[_wgslsmith_index_u32(17529u, 3u)], global2.a.x)), Struct_2(global2.c, Struct_1(global2.b.a, global2.b.b, 1u, 2052f, global2.b.b.x), global2.c), Struct_1(global2.b.a, global2.b.a, 69756u, 1995f, u_input.a), 442f, Struct_2(global2.c, global2.b, vec4<bool>(true, false, global1[_wgslsmith_index_u32(var_1, 3u)], global1[_wgslsmith_index_u32(global4.x, 3u)]))), vec4<bool>(true, global1[_wgslsmith_index_u32(global2.b.c, 3u)], global1[_wgslsmith_index_u32(42234u, 3u)], global1[_wgslsmith_index_u32(u_input.e.x, 3u)]), 1252f), -1i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1029f, -796f, global2.b.d))), Struct_3(Struct_2(global2.c, global2.b, vec4<bool>(false, false, global2.a.x, true)), func_5(3439i, Struct_3(Struct_2(vec4<bool>(true, true, true, false), Struct_1(global2.b.a, global2.b.b, 4294967295u, -492f, 33514i), vec4<bool>(global2.c.x, false, true, global1[_wgslsmith_index_u32(4294967295u, 3u)])), Struct_2(vec4<bool>(global1[_wgslsmith_index_u32(u_input.c, 3u)], true, global1[_wgslsmith_index_u32(global4.x, 3u)], global2.c.x), Struct_1(vec3<i32>(u_input.b, -2147483647i, u_input.b), global2.b.a, global2.b.c, global2.b.d, global2.b.e), vec4<bool>(global2.a.x, true, global2.a.x, global2.a.x)), Struct_1(global2.b.b, global2.b.b, 1u, 608f, 14432i), 1269f, Struct_2(global2.c, Struct_1(global2.b.b, vec3<i32>(1i, 2147483647i, 30231i), 1u, var_0, -11232i), vec4<bool>(global2.a.x, false, global1[_wgslsmith_index_u32(1u, 3u)], global1[_wgslsmith_index_u32(global4.x, 3u)]))), global2.b.b.x, vec3<f32>(1099f, var_0, var_0)), func_1(Struct_3(Struct_2(vec4<bool>(global2.a.x, false, false, global1[_wgslsmith_index_u32(global4.x, 3u)]), Struct_1(global2.b.b, vec3<i32>(0i, global3.x, -1158i), global2.b.c, -1000f, global2.b.b.x), global2.a), Struct_2(global2.c, Struct_1(vec3<i32>(1i, 11309i, global3.x), global2.b.a, u_input.d.x, -985f, global2.b.e), global2.a), global2.b, global2.b.d, Struct_2(vec4<bool>(global1[_wgslsmith_index_u32(global4.x, 3u)], global1[_wgslsmith_index_u32(u_input.e.x, 3u)], global2.a.x, global2.a.x), Struct_1(vec3<i32>(9156i, u_input.b, global3.x), global2.b.a, global2.b.c, var_0, u_input.a), global2.a)), vec4<bool>(false, false, global1[_wgslsmith_index_u32(122621u, 3u)], global2.c.x), global2.b.d).e.b, _wgslsmith_f_op_f32(-var_0), func_5(-1i, Struct_3(Struct_2(global2.a, Struct_1(vec3<i32>(2147483647i, 24335i, global2.b.e), vec3<i32>(2147483647i, global3.x, global2.b.b.x), 55597u, global2.b.d, global2.b.a.x), vec4<bool>(global2.c.x, false, true, false)), Struct_2(global2.c, Struct_1(vec3<i32>(global2.b.b.x, global3.x, global2.b.a.x), vec3<i32>(-1i, -47082i, 1i), global4.x, global2.b.d, 0i), vec4<bool>(global2.a.x, global2.c.x, global2.c.x, global2.c.x)), global2.b, var_0, Struct_2(vec4<bool>(true, global2.c.x, false, false), Struct_1(vec3<i32>(global2.b.b.x, 0i, -11475i), global2.b.a, u_input.d.x, var_0, 4055i), vec4<bool>(global1[_wgslsmith_index_u32(1u, 3u)], true, true, global1[_wgslsmith_index_u32(u_input.e.x, 3u)]))), -15141i, vec3<f32>(var_0, 1014f, 650f))))), (vec3<i32>(1i, -1i, global3.x >> (711u % 32u)) ^ global2.b.b) >> (~u_input.e.zyy % vec3<u32>(32u)), 65522u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.b.d * func_6(func_6(Struct_2(vec4<bool>(global1[_wgslsmith_index_u32(1u, 3u)], global2.c.x, global2.a.x, global2.a.x), Struct_1(global2.b.b, global2.b.a, 4294967295u, 457f, 17694i), global2.c), Struct_3(Struct_2(vec4<bool>(true, true, global2.c.x, false), Struct_1(global2.b.a, vec3<i32>(-1i, -19175i, global3.x), global2.b.c, 1596f, u_input.b), vec4<bool>(true, global1[_wgslsmith_index_u32(var_1, 3u)], global2.a.x, false)), Struct_2(global2.a, Struct_1(vec3<i32>(u_input.a, global3.x, u_input.a), vec3<i32>(global3.x, -9253i, 17490i), 12999u, -241f, u_input.a), global2.c), global2.b, -166f, Struct_2(vec4<bool>(global2.a.x, true, global2.c.x, true), Struct_1(global2.b.b, vec3<i32>(1721i, -55547i, 20722i), 0u, 1141f, u_input.b), vec4<bool>(global2.c.x, true, global1[_wgslsmith_index_u32(u_input.e.x, 3u)], true)))).e, func_1(Struct_3(Struct_2(global2.a, Struct_1(global2.b.a, vec3<i32>(global2.b.e, -24362i, global3.x), var_1, -2348f, 36361i), global2.a), Struct_2(global2.a, Struct_1(vec3<i32>(global2.b.e, u_input.a, u_input.a), global2.b.b, 4294967295u, var_0, u_input.a), vec4<bool>(false, false, true, true)), Struct_1(vec3<i32>(-54991i, global3.x, global2.b.e), global2.b.b, 4294967295u, 1203f, u_input.b), global2.b.d, Struct_2(global2.c, global2.b, global2.c)), vec4<bool>(true, false, global1[_wgslsmith_index_u32(var_1, 3u)], global1[_wgslsmith_index_u32(var_1, 3u)]), global2.b.d)).a.b.d)), global2.b.e);
    global3 = vec3<i32>(abs(-2147483647i), 2147483647i, 16847i);
    global1 = array<bool, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(58258u);
}

