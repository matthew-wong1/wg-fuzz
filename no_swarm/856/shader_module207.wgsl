struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 15>;

var<private> global1: i32;

var<private> global2: array<bool, 24>;

var<private> global3: bool = true;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: i32) -> vec4<i32> {
    var var_0 = -(arg_1.x >> (135182u % 32u));
    global0 = array<f32, 15>();
    var var_1 = u_input.c;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-372f, 425f))));
    global3 = global2[_wgslsmith_index_u32(35094u, 24u)];
    return -(vec4<i32>(-1i) * -abs(_wgslsmith_mod_vec4_i32(vec4<i32>(0i, -32269i, 45232i, arg_1.x), vec4<i32>(-1i, var_1.x, u_input.c.x, 40187i))));
}

fn func_2(arg_0: Struct_1) -> vec4<i32> {
    let var_0 = !vec3<bool>(!all(!vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.b, 24u)], global2[_wgslsmith_index_u32(u_input.a.x, 24u)])), firstLeadingBit(~arg_0.a) >= 1u, true);
    var var_1 = vec3<u32>(~40524u, _wgslsmith_div_u32(reverseBits(~(38805u & u_input.b)), 30819u), 0u);
    let var_2 = _wgslsmith_f_op_f32(400f + -988f);
    let var_3 = Struct_1(102286u, arg_0.b, ~(~95179u));
    global2 = array<bool, 24>();
    return select(func_3(var_3, u_input.c, _wgslsmith_div_i32(0i, _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, -1i), vec3<i32>(38062i, 737i, u_input.c.x)), 1i))), vec4<i32>(select(~(-1i | u_input.c.x), 29867i, any(vec2<bool>(true, true))), 44551i, _wgslsmith_sub_i32(~(~u_input.c.x), countOneBits(~(-50947i))), -u_input.c.x), select(vec4<bool>(all(!vec4<bool>(false, false, global2[_wgslsmith_index_u32(var_1.x, 24u)], var_0.x)), any(select(vec4<bool>(var_0.x, var_0.x, false, false), vec4<bool>(false, global2[_wgslsmith_index_u32(arg_0.a, 24u)], false, var_0.x), vec4<bool>(global2[_wgslsmith_index_u32(u_input.d, 24u)], false, var_0.x, false))), 13358u > select(var_1.x, 5369u, var_0.x), global2[_wgslsmith_index_u32(29724u & max(u_input.a.x, arg_0.c), 24u)]), !vec4<bool>(true, true, var_0.x, true), vec4<bool>(true, true, all(vec4<bool>(global2[_wgslsmith_index_u32(arg_0.a, 24u)], true, global2[_wgslsmith_index_u32(62854u, 24u)], false)), true)));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: i32, arg_3: u32) -> vec4<u32> {
    var var_0 = select(!vec4<bool>(true, !any(vec3<bool>(global2[_wgslsmith_index_u32(arg_3, 24u)], true, false)), global2[_wgslsmith_index_u32(arg_0.c, 24u)], global2[_wgslsmith_index_u32(arg_0.a, 24u)]), !select(select(select(vec4<bool>(true, global2[_wgslsmith_index_u32(arg_0.a, 24u)], true, false), vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 24u)], global2[_wgslsmith_index_u32(arg_3, 24u)], true, global2[_wgslsmith_index_u32(1u, 24u)]), vec4<bool>(global2[_wgslsmith_index_u32(23928u, 24u)], true, true, global2[_wgslsmith_index_u32(0u, 24u)])), select(vec4<bool>(global2[_wgslsmith_index_u32(1u, 24u)], global2[_wgslsmith_index_u32(arg_3, 24u)], false, global2[_wgslsmith_index_u32(arg_0.a, 24u)]), vec4<bool>(false, false, false, false), false), select(vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.a.x, 24u)], global2[_wgslsmith_index_u32(65427u, 24u)], global2[_wgslsmith_index_u32(13125u, 24u)]), vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 24u)], true, true, global2[_wgslsmith_index_u32(7116u, 24u)]), vec4<bool>(true, global2[_wgslsmith_index_u32(arg_0.c, 24u)], global2[_wgslsmith_index_u32(arg_0.c, 24u)], true))), vec4<bool>(all(vec2<bool>(global2[_wgslsmith_index_u32(arg_0.c, 24u)], false)), true, global2[_wgslsmith_index_u32(0u, 24u)], true), vec4<bool>(global2[_wgslsmith_index_u32(arg_3, 24u)], true, global2[_wgslsmith_index_u32(~arg_3, 24u)], global2[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, arg_0.c), 24u)])), select(select(select(select(vec4<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 24u)], global2[_wgslsmith_index_u32(32096u, 24u)], global2[_wgslsmith_index_u32(arg_0.c, 24u)]), vec4<bool>(false, false, global2[_wgslsmith_index_u32(1u, 24u)], true), true), select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.d, 24u)], false, global2[_wgslsmith_index_u32(arg_3, 24u)], global2[_wgslsmith_index_u32(u_input.a.x, 24u)]), vec4<bool>(global2[_wgslsmith_index_u32(arg_0.c, 24u)], false, global2[_wgslsmith_index_u32(arg_0.c, 24u)], global2[_wgslsmith_index_u32(0u, 24u)]), vec4<bool>(true, global2[_wgslsmith_index_u32(arg_0.a, 24u)], false, false)), vec4<bool>(false, global2[_wgslsmith_index_u32(1u, 24u)], true, global2[_wgslsmith_index_u32(u_input.a.x, 24u)])), !select(vec4<bool>(global2[_wgslsmith_index_u32(arg_3, 24u)], false, false, true), vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 24u)], global2[_wgslsmith_index_u32(1u, 24u)], global2[_wgslsmith_index_u32(u_input.d, 24u)], true), true), vec4<bool>(true, select(global2[_wgslsmith_index_u32(4294967295u, 24u)], global2[_wgslsmith_index_u32(arg_3, 24u)], true), all(vec2<bool>(false, false)), global0[_wgslsmith_index_u32(0u, 15u)] >= global0[_wgslsmith_index_u32(57445u, 15u)])), !vec4<bool>(true, true, any(vec3<bool>(global2[_wgslsmith_index_u32(u_input.d, 24u)], global2[_wgslsmith_index_u32(0u, 24u)], true)), global2[_wgslsmith_index_u32(47754u, 24u)] & true), select(vec4<bool>(true, true, true, true), !(!vec4<bool>(true, true, global2[_wgslsmith_index_u32(4294967295u, 24u)], global2[_wgslsmith_index_u32(54943u, 24u)])), (arg_2 | arg_2) > firstTrailingBit(u_input.c.x))));
    var var_1 = arg_0;
    var var_2 = !var_0.x;
    var var_3 = Struct_1(10731u, vec2<f32>(_wgslsmith_f_op_f32(738f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_3, 15u)])))), _wgslsmith_f_op_f32(775f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(442f)) * var_1.b.x))), var_1.c);
    let var_4 = func_3(Struct_1(~(_wgslsmith_div_u32(arg_0.c, 83822u) | firstTrailingBit(var_1.c)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(43430u, 15u)])), _wgslsmith_f_op_f32(trunc(616f)))), arg_3), vec2<i32>(_wgslsmith_sub_i32(arg_1.x, 0i) << (var_1.c % 32u), countOneBits(arg_1.x)) ^ ~(~abs(vec2<i32>(u_input.c.x, arg_2))), ~0i).x;
    return countOneBits(countOneBits(_wgslsmith_mod_vec4_u32(~vec4<u32>(1u, var_1.c, 1u, 0u), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, var_1.c, 25538u, var_3.a), vec4<u32>(var_3.c, arg_0.c, var_3.c, var_1.c))))) >> ((min(vec4<u32>(4294967295u, u_input.b, select(arg_0.c, arg_3, false), 4294967295u), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, arg_3, arg_3), vec3<u32>(8311u, arg_0.c, 4294967295u)), 98969u, var_1.a, 30156u)) & max(~(~vec4<u32>(var_1.c, var_1.c, 4294967295u, arg_0.a)), vec4<u32>(max(94614u, arg_3), u_input.a.x | var_1.a, ~1u, 44228u))) % vec4<u32>(32u));
}

fn func_1(arg_0: vec2<u32>, arg_1: u32, arg_2: bool) -> u32 {
    let var_0 = Struct_1(_wgslsmith_mod_u32(reverseBits(13832u) << (u_input.b % 32u), _wgslsmith_mod_u32(51578u, arg_1)), vec2<f32>(_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(~abs(arg_1), 15u)])), _wgslsmith_f_op_f32(1168f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(354f, global0[_wgslsmith_index_u32(1u, 15u)])), _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(arg_1, 15u)])), true)))), ~12869u);
    global3 = arg_2;
    var var_1 = global2[_wgslsmith_index_u32(0u, 24u)];
    var_1 = all(vec3<bool>(any(!vec2<bool>(global2[_wgslsmith_index_u32(arg_0.x, 24u)], arg_2)), false, false)) | !(!all(!vec2<bool>(arg_2, arg_2)));
    let var_2 = var_0;
    return _wgslsmith_dot_vec4_u32(firstTrailingBit(func_4(var_2, func_2(Struct_1(u_input.d, vec2<f32>(260f, var_2.b.x), 37907u)), ~u_input.c.x, var_0.c)), ~(vec4<u32>(50078u, 27746u, firstTrailingBit(0u), arg_1) >> (_wgslsmith_div_vec4_u32(vec4<u32>(10927u, 4294967295u, 0u, 0u), vec4<u32>(var_2.c, arg_0.x, var_2.a, 0u) & vec4<u32>(69150u, 0u, arg_1, var_2.a)) % vec4<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_dot_vec2_u32(u_input.a, abs(vec2<u32>(~1u, 69873u)));
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1652f, 922f, 1000f)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0[_wgslsmith_index_u32(18860u, 15u)], global0[_wgslsmith_index_u32(28589u, 15u)], 273f)))))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0[_wgslsmith_index_u32(u_input.b, 15u)], 1044f, -1000f), _wgslsmith_div_vec3_f32(vec3<f32>(1368f, global0[_wgslsmith_index_u32(var_0, 15u)], -1109f), vec3<f32>(3297f, 930f, global0[_wgslsmith_index_u32(4294967295u, 15u)])))) * vec3<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 15u)]), _wgslsmith_f_op_f32(floor(-1271f)), global0[_wgslsmith_index_u32(max(var_0, u_input.b), 15u)])) + vec3<f32>(-354f, -1133f, 242f)), all(vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 24u)] != global2[_wgslsmith_index_u32(1u, 24u)], global2[_wgslsmith_index_u32(1u, 24u)], any(vec2<bool>(true, global2[_wgslsmith_index_u32(45855u, 24u)])), global2[_wgslsmith_index_u32(~31804u, 24u)])) | false));
    var var_2 = var_0 >> (_wgslsmith_mod_u32(4837u, func_1(abs(~u_input.a), _wgslsmith_dot_vec4_u32(~vec4<u32>(9177u, 4294967295u, var_0, 39042u), ~vec4<u32>(4294967295u, 0u, u_input.d, var_0)), true)) % 32u);
    let var_3 = Struct_1(~u_input.b | (var_0 << ((func_4(Struct_1(50224u, vec2<f32>(-1106f, var_1.x), var_0), vec4<i32>(-1i, -16675i, -9422i, u_input.c.x), u_input.c.x, var_0).x ^ 0u) % 32u)), vec2<f32>(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(0u, 15u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(554f * -1204f) * _wgslsmith_f_op_f32(step(879f, -116f)))), _wgslsmith_f_op_f32(f32(-1f) * -367f)), 20093u);
    let var_4 = Struct_1(_wgslsmith_mod_u32(abs(_wgslsmith_add_u32(max(0u, 73589u), ~var_0)), 20597u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(-173f, -262f, global2[_wgslsmith_index_u32(1u, 24u)])), _wgslsmith_f_op_f32(-var_3.b.x)) + var_3.b) + var_3.b), var_0);
    let var_5 = ~vec3<i32>(u_input.c.x, -1i, firstLeadingBit(u_input.c.x)) | vec3<i32>(_wgslsmith_sub_i32(u_input.c.x, 2147483647i), _wgslsmith_mult_i32(~firstLeadingBit(-1i), -23935i), _wgslsmith_mod_i32(~(-2147483647i) | u_input.c.x, _wgslsmith_dot_vec3_i32(~vec3<i32>(2147483647i, 0i, -16268i), max(vec3<i32>(52768i, 1673i, 2147483647i), vec3<i32>(35838i, u_input.c.x, u_input.c.x)))));
    let var_6 = -775f;
    var var_7 = Struct_1(~40438u, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-var_4.b), vec2<f32>(var_3.b.x, _wgslsmith_div_f32(_wgslsmith_div_f32(var_3.b.x, -873f), 1559f)))), 5125u);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(firstLeadingBit(_wgslsmith_sub_i32(u_input.c.x << (44430u % 32u), u_input.c.x << (16798u % 32u))), var_5.x, func_3(Struct_1(~var_3.c, vec2<f32>(190f, var_4.b.x), var_4.c), -select(var_5.xy, u_input.c, vec2<bool>(false, global2[_wgslsmith_index_u32(15643u, 24u)])), min(15251i, var_5.x) << (var_7.c % 32u)).x), (func_2(var_3) & abs(-vec4<i32>(1i, var_5.x, -34473i, var_5.x))) << (select(_wgslsmith_mult_vec4_u32(abs(vec4<u32>(var_0, var_4.c, 1u, 4294967295u)), vec4<u32>(83748u, var_0, 0u, 59118u)), vec4<u32>(var_3.a ^ 14435u, 0u, u_input.b, 1u), false) % vec4<u32>(32u)), vec2<i32>(i32(-1i) * -40043i, u_input.c.x), _wgslsmith_f_op_f32(f32(-1f) * -1961f));
}

