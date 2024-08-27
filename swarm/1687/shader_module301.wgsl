struct Struct_1 {
    a: vec3<u32>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec3<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<vec4<bool>, 12>;

var<private> global2: array<u32, 30> = array<u32, 30>(74536u, 1u, 64978u, 4294967295u, 0u, 43757u, 44984u, 15509u, 4294967295u, 47053u, 119755u, 32451u, 4294967295u, 0u, 1u, 4294967295u, 0u, 19261u, 449u, 4294967295u, 39402u, 4294967295u, 0u, 1u, 4294967295u, 58136u, 4294967295u, 62162u, 3895u, 66822u);

var<private> global3: Struct_1;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<bool>) -> f32 {
    var var_0 = firstLeadingBit(0i);
    var_0 = global3.b;
    global0 = select(~vec2<u32>(_wgslsmith_sub_u32(global2[_wgslsmith_index_u32(global0.x, 30u)], u_input.a) << (_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global0.x, 30u)], 30u)], 30u)], 1u) % 32u), 8869u), vec2<u32>(~global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, 0u, global0.x, 0u), vec4<u32>(u_input.a, u_input.a, global3.a.x, 28973u)), 30u)], global0.x) << (global3.a.yy % vec2<u32>(32u)), !select(vec2<bool>(all(vec3<bool>(arg_0.x, arg_0.x, arg_0.x)), arg_0.x), !vec2<bool>(arg_0.x, false), arg_0.yx));
    let var_1 = arg_0.zx;
    global0 = max(~(global3.a.zy << (abs(abs(global3.a.yz)) % vec2<u32>(32u))), vec2<u32>(reverseBits(12206u), 4294967295u));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(356f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-2783f, -1061f) * _wgslsmith_f_op_f32(1000f - 192f))), _wgslsmith_f_op_f32(-2923f + 1f))) - _wgslsmith_div_f32(445f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(1608f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(508f, -1126f)) * _wgslsmith_f_op_f32(-398f - 1007f)))));
}

fn func_2() -> f32 {
    global2 = array<u32, 30>();
    let var_0 = ~reverseBits(vec2<i32>(~(global3.b ^ -26684i), 11607i));
    var var_1 = global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(17808u, global0.x, 1u, u_input.d), ~vec4<u32>(1u, 4294967295u, 4294967295u, 27810u)), global0.x), global3.a.x), 12u)];
    let var_2 = Struct_1((_wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(global3.a, vec3<u32>(25244u, global3.a.x, global3.a.x)), vec3<u32>(1u, 38343u, 4671u)) << (~vec3<u32>(4294967295u, global3.a.x, global3.a.x) % vec3<u32>(32u))) & _wgslsmith_mod_vec3_u32(firstTrailingBit(countOneBits(global3.a)), vec3<u32>(u_input.d, ~u_input.c, ~5072u)), ~(~_wgslsmith_add_i32(var_0.x, -var_0.x)));
    var var_3 = var_2;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(vec3<bool>(var_1.x, var_1.x, false))), _wgslsmith_f_op_f32(min(788f, -1744f))))))));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: vec2<f32>) -> f32 {
    var var_0 = true;
    let var_1 = vec4<i32>(_wgslsmith_div_i32(firstLeadingBit(2147483647i), arg_0.b ^ -2147483647i), firstTrailingBit(u_input.b), _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(max(-vec2<i32>(-1i, 0i), vec2<i32>(u_input.b, global3.b) << (vec2<u32>(u_input.c, global2[_wgslsmith_index_u32(arg_0.a.x, 30u)]) % vec2<u32>(32u))), abs(_wgslsmith_mult_vec2_i32(vec2<i32>(-1i, -37671i), vec2<i32>(9608i, global3.b)))), _wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(arg_0.b, global3.b), vec2<i32>(arg_0.b, 2147483647i)), -vec2<i32>(arg_0.b, 72223i)) | vec2<i32>(-1i, u_input.b)), arg_0.b);
    let var_2 = global3.b;
    var var_3 = any(!select(select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false)), global1[_wgslsmith_index_u32(~19817u, 12u)], global1[_wgslsmith_index_u32(~0u, 12u)]), select(global1[_wgslsmith_index_u32(5983u, 12u)], select(global1[_wgslsmith_index_u32(1u, 12u)], vec4<bool>(true, false, false, false), true), u_input.d >= global3.a.x), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), false)));
    let var_4 = reverseBits(_wgslsmith_mult_u32(0u, reverseBits(~0u >> (_wgslsmith_sub_u32(4294967295u, 4294967295u) % 32u))));
    return arg_2.x;
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: vec4<i32>, arg_3: bool) -> Struct_1 {
    var var_0 = true;
    let var_1 = arg_0;
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(arg_1)), arg_1))), arg_1, arg_1);
    var var_3 = Struct_1(countOneBits(~(~reverseBits(global3.a))), -var_1.b);
    let var_4 = arg_2.zyz;
    return var_1;
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_clamp_i32(u_input.b, ~u_input.b, global3.b);
    global2 = array<u32, 30>();
    var var_1 = func_5(Struct_1(global3.a, -1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_1(global3.a, var_0), _wgslsmith_f_op_f32(func_2()), vec2<f32>(-498f, -1000f)))), vec4<i32>(~(-(var_0 >> (global2[_wgslsmith_index_u32(global3.a.x, 30u)] % 32u))), 2147483647i, _wgslsmith_dot_vec3_i32(firstLeadingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, -14919i, 11914i), vec3<i32>(0i, 0i, -27644i))), -vec3<i32>(u_input.b, 6291i, -18428i)), var_0), _wgslsmith_clamp_u32(~(~4294967295u), ~u_input.c, _wgslsmith_dot_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(13875u, 30u)], 27003u, 33471u, 1193u), _wgslsmith_div_vec4_u32(vec4<u32>(global3.a.x, 4294967295u, 4294967295u, 189609u), vec4<u32>(global3.a.x, global0.x, global3.a.x, 70270u)))) < global2[_wgslsmith_index_u32(~34322u, 30u)]);
    var var_2 = Struct_1(~vec3<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.a.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global0.x, 30u)], 30u)], 4294967295u), global3.a), global0.x, ~39373u), 0i);
    var var_3 = Struct_1(abs(~global3.a), -12699i);
    return func_5(func_5(func_5(func_5(Struct_1(global3.a, -3011i), _wgslsmith_div_f32(1224f, -145f), -vec4<i32>(-2147483647i, 38576i, var_0, var_1.b), true), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-140f, -373f)))), select(abs(vec4<i32>(-36623i, 6080i, 0i, var_3.b)), -vec4<i32>(-2147483647i, -1i, 1i, var_1.b), true), false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-730f * _wgslsmith_f_op_f32(f32(-1f) * -202f))), ~(vec4<i32>(-1i, var_1.b, -2147483647i, var_1.b) >> ((vec4<u32>(global2[_wgslsmith_index_u32(u_input.a, 30u)], 4294967295u, global3.a.x, 0u) << (vec4<u32>(4294967295u, global3.a.x, global3.a.x, global3.a.x) % vec4<u32>(32u))) % vec4<u32>(32u))), any(select(vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(false, false), false), select(vec2<bool>(false, false), vec2<bool>(false, false), false)))), _wgslsmith_f_op_f32(-214f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(476f + -221f) + _wgslsmith_f_op_f32(func_2())), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(356f)), _wgslsmith_div_f32(-1317f, 1048f)))), -_wgslsmith_div_vec4_i32(-vec4<i32>(11852i, var_3.b, global3.b, var_1.b), _wgslsmith_mult_vec4_i32(vec4<i32>(var_2.b, u_input.b, var_1.b, var_1.b), vec4<i32>(957i, global3.b, 1i, global3.b))), true);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 30>();
    global0 = vec2<u32>(global3.a.x, global2[_wgslsmith_index_u32(1u, 30u)]);
    global0 = (_wgslsmith_mod_vec2_u32(global3.a.yx, vec2<u32>(0u, 4294967295u << (global0.x % 32u))) >> (~_wgslsmith_div_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(u_input.d, 30u)], 21675u) ^ global3.a.xx, global3.a.zx) % vec2<u32>(32u))) | ~global3.a.yx;
    var var_0 = func_1();
    let var_1 = 34861u | min(u_input.a, 35974u);
    global1 = array<vec4<bool>, 12>();
    let var_2 = _wgslsmith_mod_i32(_wgslsmith_mult_i32(reverseBits(global3.b) & -31714i, var_0.b) & u_input.b, -16988i);
    let x = u_input.a;
    s_output = StorageBuffer(abs(var_0.a.x), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(334f, 2944f, -165f), vec3<f32>(1673f, -238f, 1000f)))))), ~_wgslsmith_mult_vec3_u32(vec3<u32>(1u, global3.a.x & 4294967295u, ~0u), global3.a), 0u);
}

