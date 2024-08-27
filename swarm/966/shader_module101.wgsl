struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: i32,
    d: vec3<f32>,
}

struct Struct_5 {
    a: vec3<f32>,
    b: u32,
    c: i32,
    d: vec3<i32>,
    e: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<u32>(1u, 34274u), Struct_1(false));

var<private> global1: u32;

var<private> global2: vec4<f32> = vec4<f32>(187f, 764f, 1692f, -1000f);

var<private> global3: array<bool, 11>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<bool>, arg_1: bool) -> vec2<u32> {
    global3 = array<bool, 11>();
    var var_0 = _wgslsmith_sub_u32(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(~85379u, abs(global0.a.x)) ^ _wgslsmith_div_u32(select(0u, global0.a.x, true), 16589u), max(_wgslsmith_sub_u32(countOneBits(u_input.a.x), 4294967295u), ~4294967295u), ~_wgslsmith_sub_u32(max(u_input.a.x, u_input.a.x), global0.a.x | 4294967295u)), _wgslsmith_sub_u32(global0.a.x, _wgslsmith_div_u32(4294967295u, u_input.a.x)));
    let var_1 = ~(~vec2<u32>(0u << (global0.a.x % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a.x, 22207u, global0.a.x) ^ vec4<u32>(41352u, global0.a.x, u_input.a.x, 1u), ~vec4<u32>(1u, 1u, global0.a.x, 1u))));
    let var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global2.x, -740f, 556f, global2.x), vec4<f32>(global2.x, 517f, global2.x, global2.x))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, 204f, global2.x)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2.x, global2.x, global2.x, global2.x), vec4<f32>(2332f, -309f, global2.x, 1115f), vec4<bool>(global3[_wgslsmith_index_u32(var_1.x, 11u)], global3[_wgslsmith_index_u32(global0.a.x, 11u)], false, false))), select(vec4<bool>(false, false, true, arg_1), vec4<bool>(true, global3[_wgslsmith_index_u32(u_input.a.x, 11u)], false, global0.b.a), vec4<bool>(false, arg_0.x, global0.b.a, true))))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(827f, global2.x) - _wgslsmith_f_op_f32(abs(global2.x))), 418f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global2.x))), global2.x) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, global2.x, 1346f)))), arg_0.x));
    var var_3 = Struct_5(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -364f))))), -1126f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) - -1785f) - var_2.x)), 4294967295u, ~(-106971i), vec3<i32>(-1i) * -(u_input.b ^ (vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x) | vec3<i32>(u_input.b.x, -2147483647i, u_input.b.x))), _wgslsmith_sub_u32(var_1.x, _wgslsmith_div_u32(firstLeadingBit(41251u), global0.a.x)));
    return abs(vec2<u32>(~(4294967295u ^ var_3.e), var_1.x)) & vec2<u32>(firstLeadingBit(u_input.a.x), _wgslsmith_sub_u32(select(3712u, abs(u_input.a.x), true), 0u));
}

fn func_2(arg_0: vec4<i32>, arg_1: bool) -> vec3<bool> {
    global1 = ~36350u;
    var var_0 = Struct_4(Struct_3(u_input.b.x, Struct_2(func_3(!vec2<bool>(arg_1, arg_1), false), global0.b)), Struct_2(u_input.a, global0.b), -_wgslsmith_clamp_i32((arg_0.x ^ -2147483647i) & u_input.b.x, 2147483647i, arg_0.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(355f, _wgslsmith_f_op_f32(f32(-1f) * -729f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(202f)) + 441f)) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(global2.zwz * _wgslsmith_f_op_vec3_f32(vec3<f32>(-126f, 999f, -2047f) * vec3<f32>(global2.x, global2.x, global2.x))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(global2.xxw * vec3<f32>(1850f, -374f, -561f)), _wgslsmith_f_op_vec3_f32(-global2.yzx))))));
    global0 = Struct_2(vec2<u32>(u_input.a.x, 1405u), global0.b);
    let var_1 = _wgslsmith_sub_i32(var_0.a.a, ~(-1i));
    var var_2 = max(var_1 << (~1u % 32u), _wgslsmith_mod_i32(firstLeadingBit(_wgslsmith_add_i32(var_0.a.a, 42085i)) & max(var_0.a.a, abs(var_0.a.a)), countOneBits(~(~(-25181i)))));
    return !(!vec3<bool>(!(global0.b.a | true), global3[_wgslsmith_index_u32(global0.a.x, 11u)], arg_1));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: vec3<i32>) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -994f), global2.x)))) + 1046f);
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(171f, -1000f, global2.x, -2113f), vec4<f32>(-901f, -167f, 949f, global2.x))))));
    let var_1 = global2.x;
    var var_2 = func_3(vec2<bool>(arg_0.x, !all(vec4<bool>(false, true, global0.b.a, false))), global3[_wgslsmith_index_u32(~_wgslsmith_sub_u32(0u, ~(0u & global0.a.x)), 11u)]).x;
    var var_3 = -vec2<i32>(_wgslsmith_mult_i32(abs(_wgslsmith_dot_vec2_i32(arg_3.xy, vec2<i32>(arg_3.x, 1195i))), ~_wgslsmith_div_i32(arg_3.x, 5980i)), -12785i);
    return Struct_3(_wgslsmith_mod_i32(arg_3.x, -2147483647i), arg_1);
}

fn func_1(arg_0: vec4<f32>, arg_1: vec4<i32>, arg_2: bool) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1209f, -1063f)));
    var var_1 = func_4(!(!select(func_2(vec4<i32>(-39913i, 1i, arg_1.x, -1i), true), func_2(arg_1, global3[_wgslsmith_index_u32(1u, 11u)]), !vec3<bool>(false, arg_2, true))), Struct_2(_wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(u_input.a.x, 0u, 0u), u_input.a.x | u_input.a.x), _wgslsmith_add_vec2_u32(global0.a >> (u_input.a % vec2<u32>(32u)), u_input.a)), global0.b), firstTrailingBit(vec4<u32>(~global0.a.x, func_3(vec2<bool>(global0.b.a, false), false).x, _wgslsmith_mult_u32(u_input.a.x, 0u), _wgslsmith_dot_vec4_u32(vec4<u32>(global0.a.x, 89824u, global0.a.x, global0.a.x), vec4<u32>(global0.a.x, 4294967295u, u_input.a.x, u_input.a.x))) | ~abs(vec4<u32>(global0.a.x, u_input.a.x, 24102u, global0.a.x))), (arg_1.wwy << (~(vec3<u32>(u_input.a.x, 25187u, 12264u) << (vec3<u32>(global0.a.x, 4294967295u, u_input.a.x) % vec3<u32>(32u))) % vec3<u32>(32u))) >> ((vec3<u32>(global0.a.x, firstTrailingBit(0u), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), global0.a)) >> (select(firstTrailingBit(vec3<u32>(u_input.a.x, global0.a.x, 8215u)), vec3<u32>(15181u, 92672u, 4294967295u) >> (vec3<u32>(global0.a.x, global0.a.x, 30152u) % vec3<u32>(32u)), vec3<bool>(arg_2, global0.b.a, false)) % vec3<u32>(32u))) % vec3<u32>(32u)));
    let var_2 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(1018f, var_0, arg_0.x, var_0) * vec4<f32>(820f, arg_0.x, var_0, 238f)))))) - _wgslsmith_f_op_vec4_f32(-arg_0))));
    var var_3 = var_1.a;
    var var_4 = select(arg_1.yzz, arg_1.yzz, arg_2);
    return (vec4<i32>(-1i) * -(_wgslsmith_div_vec4_i32(arg_1, arg_1) >> (vec4<u32>(0u, 22078u, u_input.a.x, global0.a.x) % vec4<u32>(32u)))) << (vec4<u32>(u_input.a.x & 2158u, 1u, firstLeadingBit(1u), u_input.a.x) % vec4<u32>(32u));
}

fn func_5(arg_0: vec4<i32>) -> Struct_4 {
    global1 = ~1u;
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, -251f, global2.x, -360f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, global2.x, global2.x, -410f) + vec4<f32>(-103f, 639f, -742f, -889f))) + vec4<f32>(_wgslsmith_f_op_f32(step(-637f, global2.x)), _wgslsmith_f_op_f32(f32(-1f) * -1645f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), -572f))));
    let var_0 = Struct_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1025f, global2.x, global2.x) - vec3<f32>(-451f, -692f, -161f)))))) - _wgslsmith_f_op_vec3_f32(global2.yyx * vec3<f32>(_wgslsmith_f_op_f32(trunc(296f)), global2.x, _wgslsmith_f_op_f32(min(-1000f, global2.x))))), (~global0.a.x | ~1u) << (_wgslsmith_mod_u32(min(0u, global0.a.x >> (51366u % 32u)), 1u) % 32u), 1i << (global0.a.x % 32u), max((arg_0.yyy | vec3<i32>(-1i, u_input.b.x, -1i)) << (~abs(vec3<u32>(93809u, 4294967295u, global0.a.x)) % vec3<u32>(32u)), ~((vec3<i32>(u_input.b.x, 34864i, -23312i) >> (vec3<u32>(global0.a.x, global0.a.x, 4294967295u) % vec3<u32>(32u))) ^ arg_0.wwx)), 83350u);
    global2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global2.x, -393f, -120f, 118f), vec4<f32>(-386f, var_0.a.x, 286f, var_0.a.x))) - vec4<f32>(global2.x, var_0.a.x, -329f, global2.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global2.x))), -571f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-815f)) + _wgslsmith_f_op_f32(-var_0.a.x)), var_0.a.x)), select(vec4<bool>(global0.b.a, !global3[_wgslsmith_index_u32(var_0.b, 11u)] || (248f >= var_0.a.x), all(select(vec4<bool>(false, global0.b.a, global3[_wgslsmith_index_u32(4294967295u, 11u)], false), vec4<bool>(global0.b.a, false, global3[_wgslsmith_index_u32(var_0.b, 11u)], false), global3[_wgslsmith_index_u32(u_input.a.x, 11u)])), all(vec3<bool>(true, true, true))), !vec4<bool>(!global0.b.a, any(vec3<bool>(false, global0.b.a, true)), !global0.b.a, all(vec3<bool>(true, global3[_wgslsmith_index_u32(72002u, 11u)], false))), select(select(vec4<bool>(false, global3[_wgslsmith_index_u32(global0.a.x, 11u)], global3[_wgslsmith_index_u32(1u, 11u)], global3[_wgslsmith_index_u32(20974u, 11u)]), select(vec4<bool>(global3[_wgslsmith_index_u32(37010u, 11u)], true, global3[_wgslsmith_index_u32(0u, 11u)], false), vec4<bool>(false, global0.b.a, global0.b.a, global0.b.a), vec4<bool>(global3[_wgslsmith_index_u32(var_0.e, 11u)], global0.b.a, false, true)), vec4<bool>(global0.b.a, true, false, global3[_wgslsmith_index_u32(global0.a.x, 11u)])), !vec4<bool>(global3[_wgslsmith_index_u32(global0.a.x, 11u)], global3[_wgslsmith_index_u32(21642u, 11u)], true, global3[_wgslsmith_index_u32(1u, 11u)]), true))));
    global3 = array<bool, 11>();
    return Struct_4(func_4(select(!(!vec3<bool>(true, false, global3[_wgslsmith_index_u32(var_0.b, 11u)])), vec3<bool>(-2147483647i == u_input.b.x, u_input.b.x == -1i, any(vec3<bool>(false, false, true))), global0.b.a), func_4(!func_2(arg_0, global0.b.a), Struct_2(global0.a, global0.b), ~min(vec4<u32>(4294967295u, global0.a.x, var_0.e, u_input.a.x), vec4<u32>(u_input.a.x, 4294967295u, global0.a.x, 142172u)), vec3<i32>(_wgslsmith_mod_i32(u_input.b.x, arg_0.x), func_4(vec3<bool>(false, true, false), Struct_2(vec2<u32>(u_input.a.x, 4989u), Struct_1(false)), vec4<u32>(var_0.e, var_0.b, 1u, u_input.a.x), u_input.b).a, _wgslsmith_add_i32(20224i, 7876i))).b, select(~(~vec4<u32>(global0.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(38340u, u_input.a.x, var_0.e, 4294967295u), ~vec4<u32>(var_0.e, u_input.a.x, u_input.a.x, u_input.a.x)), func_2(-arg_0, false).x), firstTrailingBit(-(arg_0.ywy >> (vec3<u32>(var_0.b, 4294967295u, 0u) % vec3<u32>(32u))))), Struct_2(~func_3(func_2(vec4<i32>(u_input.b.x, u_input.b.x, 16318i, var_0.d.x), global3[_wgslsmith_index_u32(global0.a.x, 11u)]).zz, !global3[_wgslsmith_index_u32(55388u, 11u)]), func_4(select(!vec3<bool>(global0.b.a, global3[_wgslsmith_index_u32(1u, 11u)], global0.b.a), !vec3<bool>(true, global3[_wgslsmith_index_u32(99229u, 11u)], false), func_2(vec4<i32>(-1i, -2147483647i, 2147483647i, arg_0.x), false)), func_4(select(vec3<bool>(true, global3[_wgslsmith_index_u32(var_0.b, 11u)], true), vec3<bool>(false, true, true), true), func_4(vec3<bool>(global0.b.a, true, global3[_wgslsmith_index_u32(0u, 11u)]), Struct_2(global0.a, Struct_1(true)), vec4<u32>(2231u, 80531u, u_input.a.x, u_input.a.x), vec3<i32>(arg_0.x, 26342i, var_0.c)).b, vec4<u32>(55639u, var_0.e, 0u, 1u), u_input.b).b, _wgslsmith_mult_vec4_u32(~vec4<u32>(10077u, u_input.a.x, 5309u, 4294967295u), vec4<u32>(var_0.b, 33997u, u_input.a.x, u_input.a.x) << (vec4<u32>(global0.a.x, u_input.a.x, 13513u, var_0.b) % vec4<u32>(32u))), var_0.d).b.b), var_0.d.x | var_0.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(global2.yxx, var_0.a))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(~(firstTrailingBit(-vec4<i32>(u_input.b.x, u_input.b.x, 20018i, -2147483647i)) & _wgslsmith_mult_vec4_i32(func_1(vec4<f32>(global2.x, global2.x, 1458f, 2211f), vec4<i32>(u_input.b.x, 50028i, 2147483647i, u_input.b.x), global3[_wgslsmith_index_u32(36624u, 11u)]), vec4<i32>(-1629i, u_input.b.x, u_input.b.x, -1i))));
    var var_1 = func_5(vec4<i32>(func_4(vec3<bool>(true, select(var_0.a.b.b.a, true, global0.b.a), global0.b.a & false), var_0.b, ~(vec4<u32>(global0.a.x, 1u, 724u, global0.a.x) | vec4<u32>(3736u, 4294967295u, 4294967295u, 0u)), vec3<i32>(u_input.b.x, -u_input.b.x, -1i)).a, 1i, var_0.c, 2147483647i));
    global0 = Struct_2(vec2<u32>(abs(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.a.b.a.x, u_input.a.x, u_input.a.x, 36323u), vec4<u32>(0u, u_input.a.x, 37622u, var_0.b.a.x))), 4294967295u), Struct_1(true));
    var var_2 = !func_2(-vec4<i32>(var_1.a.a, -66771i, var_1.a.a, 1i) << (~vec4<u32>(116197u, global0.a.x, global0.a.x, global0.a.x) % vec4<u32>(32u)), global3[_wgslsmith_index_u32(62094u, 11u)]);
    var var_3 = var_2.zz;
    global2 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global2.x, -302f, -114f, 300f))) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1201f, var_0.d.x, -2143f, global2.x)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global2.x, var_0.d.x, -887f, var_0.d.x))))) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-611f, -132f, var_0.d.x, var_0.d.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1072f, 920f, 729f, -651f) * vec4<f32>(global2.x, var_1.d.x, var_0.d.x, global2.x))))))));
    var var_4 = vec4<i32>(-1i) * -vec4<i32>(var_0.c >> (~65213u % 32u), u_input.b.x, 0i, u_input.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(abs(_wgslsmith_div_u32(global0.a.x, var_1.a.b.a.x)), 1u, 81192u, var_1.a.b.a.x), 814f, _wgslsmith_clamp_i32(-_wgslsmith_mult_i32(var_0.a.a, -48253i >> (global0.a.x % 32u)), -20015i, ~8973i), func_5(vec4<i32>(firstLeadingBit(var_0.a.a), 2147483647i, ~(-5539i), -25406i) << (abs(_wgslsmith_mult_vec4_u32(vec4<u32>(global0.a.x, var_0.b.a.x, u_input.a.x, 23277u), vec4<u32>(var_1.a.b.a.x, global0.a.x, 40569u, 16302u))) % vec4<u32>(32u))).d);
}

