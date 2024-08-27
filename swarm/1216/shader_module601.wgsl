struct Struct_1 {
    a: f32,
    b: f32,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-2497f, -1809f, -1615f);

var<private> global1: array<Struct_1, 12>;

var<private> global2: Struct_1 = Struct_1(145f, -441f, -1000f);

var<private> global3: Struct_1 = Struct_1(142f, -312f, 2192f);

var<private> global4: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(1791f, 2977f, 147f), Struct_1(-1071f, 134f, -1000f), Struct_1(-172f, -115f, 2033f));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> f32 {
    var var_0 = global1[_wgslsmith_index_u32(~(1u ^ (countOneBits(u_input.b.x) << (_wgslsmith_div_u32(7667u >> (1u % 32u), countOneBits(u_input.a)) % 32u))), 12u)];
    let var_1 = vec3<i32>(abs(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(i32(-1i) * -24453i, 6040i), -10389i, -28800i)), _wgslsmith_mod_i32(~(~(~(-2147483647i))), -22335i & _wgslsmith_dot_vec3_i32(vec3<i32>(-37720i, 2147483647i, -44102i) >> (u_input.b.xxx % vec3<u32>(32u)), vec3<i32>(-2147483647i, 20544i, 2147483647i))), _wgslsmith_mod_i32(-max(-21948i, 26501i), reverseBits(41979i)));
    var var_2 = arg_1;
    let var_3 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(firstTrailingBit(~abs(1u)), min(1u, select(_wgslsmith_div_u32(~u_input.b.x, countOneBits(u_input.a)), ~(~u_input.a), !(arg_0 == arg_0)))), 12u)];
    let var_4 = Struct_1(var_2.c, _wgslsmith_f_op_f32(f32(-1f) * -193f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(461f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b) * -817f)) + -1000f));
    return -697f;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec2<bool>) -> f32 {
    global1 = array<Struct_1, 12>();
    let var_0 = vec3<bool>(!(arg_2.x & any(!arg_2)), false, any(vec4<bool>(true, arg_2.x, arg_2.x, false)));
    let var_1 = Struct_1(-150f, _wgslsmith_f_op_f32(floor(global0.a)), global0.a);
    var var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c * global3.b) * _wgslsmith_f_op_f32(func_3(arg_2.x, Struct_1(428f, -338f, global2.a)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.c)))));
    let var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, global3.a));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.c, var_1.c) - _wgslsmith_f_op_f32(func_3(!arg_2.x, Struct_1(_wgslsmith_f_op_f32(floor(global3.c)), _wgslsmith_f_op_f32(-var_1.c), arg_0.b)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b) + _wgslsmith_div_f32(-1022f, -1541f)))) + var_1.c));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>) -> vec2<f32> {
    global4 = array<Struct_1, 3>();
    let var_0 = false;
    var var_1 = -firstLeadingBit(-(i32(-1i) * -3661i));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(arg_0.b + 2361f), _wgslsmith_div_f32(-881f, _wgslsmith_f_op_f32(639f + global0.a)), global0.a);
    global3 = Struct_1(_wgslsmith_f_op_f32(-global3.b), _wgslsmith_f_op_f32(global2.a - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(305f - 136f) - _wgslsmith_f_op_f32(step(1343f, global3.a)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.b * global2.b) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(499f)) * -566f)));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b, _wgslsmith_f_op_f32(f32(-1f) * -707f)))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> Struct_1 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(ceil(-819f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(699f + 1166f) + global2.a), 455f)));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-global0.c), _wgslsmith_f_op_f32(sign(1056f)), _wgslsmith_f_op_f32(f32(-1f) * -783f));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_4(Struct_1(_wgslsmith_f_op_f32(-arg_1.b), global0.b, _wgslsmith_f_op_f32(func_2(Struct_1(var_1.c, var_1.a, arg_2), u_input.b.yw, vec2<bool>(true, false)))), ~min(vec4<i32>(-15049i, 16029i, 0i, -21052i), vec4<i32>(0i, 1i, 2147483647i, -2147483647i))))));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_4(arg_1, vec4<i32>(_wgslsmith_add_i32(-18978i, -7264i), ~(-1i), _wgslsmith_sub_i32(3345i, 51582i), abs(2147483647i)))).x), 1f, _wgslsmith_f_op_f32(-arg_1.a));
    global3 = arg_1;
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.x))))), -352f, _wgslsmith_f_op_f32(-arg_2));
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> vec3<bool> {
    var var_0 = vec4<f32>(global3.a, arg_1.b, _wgslsmith_f_op_f32(select(-180f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, arg_3.b))), arg_0)), _wgslsmith_f_op_f32(global3.c * arg_1.b));
    let var_1 = _wgslsmith_clamp_vec3_u32(~(~max(~u_input.b.www, u_input.b.xyz >> (vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u) % vec3<u32>(32u)))), min(countOneBits(reverseBits(~vec3<u32>(4294967295u, u_input.b.x, u_input.a))), u_input.b.xxw), ~_wgslsmith_sub_vec3_u32(abs(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, u_input.b.x, 4294967295u), u_input.b.yzy)), vec3<u32>(1u, 0u, ~0u)));
    var var_2 = ~var_1.x;
    global2 = func_1(func_1(Struct_1(_wgslsmith_f_op_f32(-arg_1.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1148f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1685f - 1000f))), func_1(global4[_wgslsmith_index_u32(~_wgslsmith_sub_u32(1u, var_1.x), 3u)], Struct_1(_wgslsmith_f_op_f32(-arg_3.c), _wgslsmith_f_op_f32(floor(608f)), _wgslsmith_f_op_f32(var_0.x * -337f)), global3.b), _wgslsmith_f_op_f32(arg_1.b - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2(arg_3, u_input.b.zw, vec2<bool>(arg_0, false))))))), Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global2.c))), global3.c, arg_3.b), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3(select(!arg_0, true, all(vec4<bool>(true, arg_0, true, false))), arg_3)))));
    global1 = array<Struct_1, 12>();
    return !select(select(!select(vec3<bool>(true, false, arg_0), vec3<bool>(arg_0, arg_0, false), vec3<bool>(false, false, arg_0)), vec3<bool>(arg_0 & arg_0, any(vec3<bool>(true, arg_0, true)), all(vec4<bool>(arg_0, false, true, arg_0))), any(select(vec4<bool>(arg_0, arg_0, false, arg_0), vec4<bool>(arg_0, true, true, false), vec4<bool>(arg_0, true, arg_0, arg_0)))), vec3<bool>(var_0.x <= -306f, global3.c != -636f, arg_0), 4294967295u < countOneBits(u_input.b.x));
}

fn func_6(arg_0: vec3<bool>) -> bool {
    return arg_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(func_6(!func_5(true, func_1(Struct_1(-504f, global2.c, global3.c), global1[_wgslsmith_index_u32(u_input.b.x, 12u)], global2.b), ~44585i, func_1(Struct_1(global3.c, global3.b, 480f), Struct_1(global2.b, -571f, -1646f), global0.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-703f, global0.a))) - func_1(func_1(global1[_wgslsmith_index_u32(31467u, 12u)], global4[_wgslsmith_index_u32(25806u, 3u)], global2.a), func_1(global4[_wgslsmith_index_u32(u_input.a, 3u)], global1[_wgslsmith_index_u32(21433u, 12u)], 1679f), global3.b).a) > _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b - -703f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.c), global3.c), true)));
    let var_1 = ~_wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(15394i, -34607i, -1i)) & ~reverseBits(vec3<i32>(2147483647i, 1i, -2147483647i)), vec3<i32>(1i, 1i, _wgslsmith_sub_i32(0i, countOneBits(10679i))));
    global2 = func_1(func_1(global4[_wgslsmith_index_u32(9449u, 3u)], Struct_1(_wgslsmith_f_op_f32(min(-277f, _wgslsmith_f_op_f32(global2.c + global3.c))), global2.c, -1000f), -189f), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(global3.a, global3.c))))), global3.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(global1[_wgslsmith_index_u32(u_input.b.x, 12u)], global1[_wgslsmith_index_u32(54769u, 12u)], global2.c).b - 990f))), _wgslsmith_f_op_f32(sign(-947f)));
    var var_2 = global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(~(~1u), ~_wgslsmith_clamp_u32(_wgslsmith_add_u32(0u, u_input.b.x & 1u), ~_wgslsmith_add_u32(u_input.b.x, 47945u), u_input.b.x)), 3u)];
    var var_3 = global1[_wgslsmith_index_u32(~(~max(u_input.b.x, 0u)), 12u)];
    let x = u_input.a;
    s_output = StorageBuffer(global3.c, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0.a - var_3.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1191f - 1000f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(790f, 1300f)))))), vec3<i32>(_wgslsmith_mod_i32(~(var_1 << (u_input.a % 32u)), _wgslsmith_mult_i32(18038i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_1, 0i, 39277i), vec3<i32>(2147483647i, 4037i, -1i)))), firstTrailingBit(var_1), 1i), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2752f - global0.a)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-129f - -867f))))));
}

