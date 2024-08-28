struct Struct_1 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: vec3<i32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: u32,
    c: bool,
}

struct Struct_5 {
    a: Struct_4,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec2<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-363f, -764f);

var<private> global1: vec4<f32>;

var<private> global2: f32;

var<private> global3: array<f32, 30> = array<f32, 30>(-903f, -2257f, -735f, 1162f, -476f, -1106f, -538f, -464f, 840f, -738f, 393f, 155f, 695f, -170f, 1959f, -1275f, 112f, -226f, -239f, 316f, 229f, -882f, -1866f, 569f, 613f, -127f, 110f, -194f, -2374f, 572f);

var<private> global4: i32;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_5, arg_1: bool) -> vec4<bool> {
    let var_0 = vec2<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(-1i, -1i, 33951i, 1i), -vec4<i32>(2988i, 0i, 2147483647i, 13168i)) << (arg_0.a.b % 32u), _wgslsmith_add_i32(abs(-14447i), 1i)) >> (_wgslsmith_div_vec2_u32(abs(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 6968u, 3396u, arg_0.a.b), vec4<u32>(1u, 0u, 19488u, arg_0.a.b)), firstTrailingBit(u_input.a))), vec2<u32>(countOneBits(u_input.a << (u_input.a % 32u)), ~_wgslsmith_mod_u32(4294967295u, 60668u))) % vec2<u32>(32u));
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global0.x)), _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(2202u, 30u)]) - arg_0.a.a.x))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, -1000f), global1.wz, select(true, arg_0.a.c, arg_0.a.c)))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1.x, 810f), _wgslsmith_div_vec2_f32(vec2<f32>(arg_0.b.x, -1555f), global1.wx), true)), global1.yx)));
    var var_1 = select(!select(!(!vec3<bool>(true, false, arg_0.a.c)), select(select(vec3<bool>(false, false, arg_0.a.c), vec3<bool>(arg_1, arg_0.a.c, arg_1), vec3<bool>(arg_1, arg_1, false)), !vec3<bool>(arg_0.a.c, arg_1, arg_0.a.c), arg_1), arg_1), vec3<bool>((_wgslsmith_f_op_f32(step(global1.x, global0.x)) != 1f) != (!arg_0.a.c | !arg_0.a.c), any(select(select(vec4<bool>(arg_0.a.c, false, arg_0.a.c, arg_0.a.c), vec4<bool>(false, arg_0.a.c, false, true), vec4<bool>(arg_1, arg_1, arg_0.a.c, arg_0.a.c)), !vec4<bool>(true, false, arg_0.a.c, arg_0.a.c), true)), arg_0.a.c), !arg_1);
    global0 = global1.yw;
    var var_2 = 0i;
    return vec4<bool>(any(select(select(vec3<bool>(false, arg_1, true), !vec3<bool>(arg_1, false, arg_1), true), !(!vec3<bool>(arg_0.a.c, false, true)), select(vec3<bool>(arg_1, var_1.x, true), select(vec3<bool>(arg_1, var_1.x, true), vec3<bool>(true, arg_0.a.c, true), var_1.x), true))), select(all(vec3<bool>(true, select(false, false, arg_0.a.c), true)), false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.x))) != 190f), arg_0.a.c, var_1.x);
}

fn func_2(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_2, arg_3: i32) -> i32 {
    var var_0 = Struct_1(arg_0.a, select(select(vec2<bool>(false, true), arg_0.b, !(!arg_2.b.a.x)), vec2<bool>(false, true), arg_0.a.x), min(vec3<i32>(0i, abs(arg_0.c.x), -18615i), firstLeadingBit(vec3<i32>(arg_3, _wgslsmith_mult_i32(-1413i, arg_3), -24285i))), _wgslsmith_f_op_vec4_f32(arg_2.a.d - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.d.x, 423f, 2635f, arg_2.b.d.x) - vec4<f32>(global3[_wgslsmith_index_u32(0u, 30u)], global3[_wgslsmith_index_u32(4294967295u, 30u)], global1.x, -248f)) - arg_2.b.d))));
    global0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(arg_2.b.d.yy * vec2<f32>(1027f, -627f)))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1322f, -2600f) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(590f, arg_1.x)))))), var_0.a.x));
    var_0 = arg_0;
    var var_1 = func_3(Struct_5(Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_2.b.d.yzx + vec3<f32>(arg_2.a.d.x, var_0.d.x, 610f))), ~select(u_input.a, u_input.a, true), any(vec2<bool>(true, true))), vec3<f32>(-455f, 269f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.d.x), _wgslsmith_div_f32(arg_1.x, global1.x))))), false);
    var var_2 = Struct_4(vec3<f32>(var_0.d.x, _wgslsmith_f_op_f32(select(global3[_wgslsmith_index_u32(u_input.a, 30u)], global3[_wgslsmith_index_u32(~0u, 30u)], all(select(vec3<bool>(var_1.x, true, true), vec3<bool>(true, var_0.b.x, true), arg_0.b.x)))), global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, 74215u, 23828u), 30u)]), min(4294967295u, u_input.a), !all(vec4<bool>(true, arg_0.b.x, true, true)));
    return arg_3;
}

fn func_4(arg_0: u32, arg_1: vec2<f32>, arg_2: i32, arg_3: bool) -> Struct_2 {
    global0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, -1000f));
    let var_0 = abs(vec2<i32>(min(arg_2, select(arg_2, arg_2, false) << (~arg_0 % 32u)), arg_2));
    var var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1995f), global1.x, _wgslsmith_f_op_f32(round(659f)), _wgslsmith_f_op_f32(463f + global0.x)))))));
    var var_2 = select(vec3<bool>(true, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3[_wgslsmith_index_u32(arg_0, 30u)], arg_1.x)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-598f, global3[_wgslsmith_index_u32(u_input.a, 30u)], true))), all(vec4<bool>(arg_3 != true, !arg_3, arg_3, arg_3))), func_3(Struct_5(Struct_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(795f, 848f, -955f)), countOneBits(1u), select(false, false, arg_3)), global1.zwz), true).zxx, select(false, all(select(!vec3<bool>(arg_3, false, arg_3), func_3(Struct_5(Struct_4(global1.wyz, 0u, true), vec3<f32>(var_1.a.x, 2274f, global0.x)), arg_3).xyz, select(arg_3, arg_3, true))), func_3(Struct_5(Struct_4(vec3<f32>(global0.x, global1.x, -1720f), 0u, arg_3), _wgslsmith_f_op_vec3_f32(-var_1.a.wzw)), ~u_input.a == ~4294967295u).x));
    var var_3 = Struct_1(select(vec4<bool>(!select(arg_3, arg_3, arg_3), true, !(!var_2.x), true), !select(vec4<bool>(arg_3, true, arg_3, arg_3), select(vec4<bool>(false, var_2.x, true, arg_3), vec4<bool>(arg_3, false, false, arg_3), vec4<bool>(true, arg_3, var_2.x, true)), !vec4<bool>(true, arg_3, var_2.x, var_2.x)), vec4<bool>(arg_3, arg_3, !(!var_2.x), true)), var_2.xy, -_wgslsmith_mult_vec3_i32(~(~vec3<i32>(-1i, arg_2, 0i)), vec3<i32>(-2147483647i, -2147483647i, arg_2) >> (vec3<u32>(arg_0, 1u, 1u) % vec3<u32>(32u))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-431f, 1372f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global3[_wgslsmith_index_u32(u_input.a, 30u)], -126f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1303f + 565f))), var_1.a.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(arg_1.x)), _wgslsmith_f_op_f32(global1.x * global3[_wgslsmith_index_u32(4294967295u, 30u)]))))));
    return Struct_2(Struct_1(select(select(var_3.a, select(var_3.a, vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x), var_3.a), all(var_3.a)), vec4<bool>(true, true, true, true), vec4<bool>(arg_3 || arg_3, true, arg_3, true)), !(!func_3(Struct_5(Struct_4(var_3.d.zyx, 0u, var_3.b.x), vec3<f32>(global0.x, 546f, var_3.d.x)), var_3.b.x).zz), -vec3<i32>(var_0.x, 7809i, 5315i) ^ (var_3.c ^ var_3.c), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(var_3.d.x, 777f), _wgslsmith_f_op_f32(round(706f)), _wgslsmith_div_f32(global0.x, global3[_wgslsmith_index_u32(u_input.a, 30u)]), -411f))), Struct_1(select(!var_3.a, !vec4<bool>(true, true, var_2.x, true), all(select(vec3<bool>(arg_3, var_2.x, var_3.b.x), vec3<bool>(var_3.b.x, var_2.x, arg_3), var_3.b.x))), select(var_2.xz, var_3.b, var_2.xy), _wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(arg_2, var_3.c.x, 35019i), var_3.c), var_3.c), firstTrailingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, arg_2, var_3.c.x), var_3.c)), ~(vec3<i32>(-2147483647i, var_3.c.x, 2147483647i) ^ var_3.c)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(1u, 30u)], 490f, -670f, -875f)) + var_3.d), var_1.a)));
}

fn func_5(arg_0: u32, arg_1: Struct_4, arg_2: Struct_2) -> Struct_4 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(-arg_2.b.d));
    global3 = array<f32, 30>();
    let var_1 = _wgslsmith_clamp_vec3_u32(min(~(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, arg_0, u_input.a), vec3<u32>(51298u, arg_0, arg_0), vec3<u32>(arg_0, arg_0, u_input.a)) & ~vec3<u32>(42976u, arg_0, arg_0)), ~(~(vec3<u32>(u_input.a, 0u, 1u) | vec3<u32>(0u, 36054u, 27192u)))), ~select(vec3<u32>(~39835u, firstTrailingBit(0u), u_input.a), ~_wgslsmith_div_vec3_u32(vec3<u32>(arg_1.b, arg_1.b, u_input.a), vec3<u32>(arg_1.b, 4294967295u, 4294967295u)), countOneBits(24206u) >= arg_0), ~reverseBits(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_1.b, 0u, 47279u), countOneBits(vec3<u32>(u_input.a, arg_1.b, arg_1.b)))));
    var var_2 = vec3<bool>(!arg_2.b.b.x, 20037u <= u_input.a, !arg_2.a.b.x);
    let var_3 = abs(_wgslsmith_add_vec2_i32(~vec2<i32>(_wgslsmith_div_i32(-45747i, -2147483647i), arg_2.a.c.x), _wgslsmith_div_vec2_i32(abs(vec2<i32>(-1i, arg_2.a.c.x)), countOneBits(arg_2.a.c.yz))));
    return Struct_4(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1180f, global1.x, 570f), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, global0.x, arg_1.a.x) * vec3<f32>(-1047f, 1298f, var_0.a.x))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, -571f, global1.x))))), reverseBits(reverseBits(~4294967295u)), true);
}

fn func_1(arg_0: bool) -> i32 {
    global3 = array<f32, 30>();
    global2 = _wgslsmith_f_op_f32(step(global1.x, global0.x));
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-345f, 714f, -1122f, global0.x) + vec4<f32>(global0.x, global1.x, global3[_wgslsmith_index_u32(3750u, 30u)], 220f)) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(784f, global1.x, global1.x, -115f)))), vec4<f32>(_wgslsmith_f_op_f32(sign(-256f)), -1360f, 3203f, -1000f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(37959u, 30u)], -1214f, -1384f, -1271f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1793f, -1807f, 1891f, global3[_wgslsmith_index_u32(u_input.a, 30u)]))), vec4<f32>(-1552f, 1000f, _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(1u, 30u)] * -578f), 173f))));
    let var_1 = Struct_5(func_5(0u, Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(var_0.ywz))), u_input.a, !all(vec2<bool>(arg_0, arg_0))), func_4(u_input.a, var_0.yz, countOneBits(func_2(Struct_1(vec4<bool>(arg_0, true, arg_0, arg_0), vec2<bool>(true, false), vec3<i32>(-1i, -1i, -14700i), vec4<f32>(var_0.x, 1339f, 248f, global3[_wgslsmith_index_u32(u_input.a, 30u)])), global1.yw, Struct_2(Struct_1(vec4<bool>(true, arg_0, false, false), vec2<bool>(false, arg_0), vec3<i32>(54346i, -2147483647i, 23525i), var_0), Struct_1(vec4<bool>(arg_0, false, false, arg_0), vec2<bool>(arg_0, true), vec3<i32>(-31088i, -1i, -43160i), var_0)), 5768i)), true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, _wgslsmith_f_op_f32(-715f - var_0.x), _wgslsmith_f_op_f32(-global0.x)) * global1.yzx) + var_0.zwz));
    var var_2 = !(!func_5(var_1.a.b, var_1.a, func_4(1u, _wgslsmith_f_op_vec2_f32(step(global1.xy, var_1.b.zy)), 2147483647i, true)).c);
    return ~_wgslsmith_mod_i32(-1i, 12971i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec3<i32>(-59328i, -max(_wgslsmith_clamp_i32(-1i, -10146i, -68926i), select(-1i, 25777i, true)), (func_1(true) ^ 1i) ^ ~2147483647i);
    let var_1 = _wgslsmith_mod_vec2_u32(~(~vec2<u32>(1u, 0u) & min(vec2<u32>(48101u, u_input.a) << (vec2<u32>(43417u, 53908u) % vec2<u32>(32u)), ~vec2<u32>(0u, u_input.a))), vec2<u32>(_wgslsmith_mod_u32(abs(~55017u), select(~10692u, firstLeadingBit(u_input.a), true)), select(~_wgslsmith_clamp_u32(2224u, u_input.a, u_input.a), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 12185u, u_input.a, u_input.a) | vec4<u32>(20585u, u_input.a, u_input.a, u_input.a), vec4<u32>(3351u, u_input.a, u_input.a, u_input.a)), true)));
    global4 = -25139i;
    let var_2 = ~(~(~var_1.x));
    global1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(4294967295u, global1.zz, var_0.x, true).a.d - vec4<f32>(global0.x, 1612f, -572f, global3[_wgslsmith_index_u32(var_1.x, 30u)])), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(995f, -810f, -1106f, global3[_wgslsmith_index_u32(var_1.x, 30u)]) * vec4<f32>(-563f, global3[_wgslsmith_index_u32(var_1.x, 30u)], global1.x, 602f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -3256f, -828f, global1.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -1154f, -1069f, global3[_wgslsmith_index_u32(61028u, 30u)])))))));
    let var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global0.x, 1008f, global3[_wgslsmith_index_u32(1u, 30u)]) + vec4<f32>(-1000f, -1000f, -108f, global0.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -317f, -563f, 1365f) - vec4<f32>(-738f, -1000f, 622f, global0.x))), vec4<f32>(733f, global1.x, global0.x, _wgslsmith_f_op_f32(max(557f, 263f))), vec4<bool>(true, true, true, true))))));
    let x = u_input.a;
    s_output = StorageBuffer(46929u, vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2633f * global1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x * -843f) - -810f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1410f * -659f))), _wgslsmith_f_op_f32(max(-1674f, _wgslsmith_f_op_f32(max(global0.x, global1.x))))), ~vec2<i32>(~_wgslsmith_mod_i32(-2147483647i, var_0.x), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, var_0.x, var_0.x, var_0.x), _wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, var_0.x, 19624i, -12933i), vec4<i32>(-22427i, 0i, 3801i, -1i)))), global3[_wgslsmith_index_u32(~max(1u, ~var_1.x), 30u)]);
}

