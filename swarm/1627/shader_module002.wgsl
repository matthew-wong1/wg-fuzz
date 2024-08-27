struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(4294967295u, 58712u, 4294967295u);

var<private> global1: Struct_1 = Struct_1(-769f, vec2<i32>(i32(-2147483648), 2147483647i), vec3<u32>(0u, 70391u, 4294967295u), 4294967295u);

var<private> global2: vec3<i32>;

var<private> global3: array<i32, 3>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: u32) -> vec4<bool> {
    let var_0 = _wgslsmith_sub_u32(7199u, _wgslsmith_mod_u32(u_input.c.x, 18799u));
    let var_1 = u_input.a;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(global1.a, 1153f, true)))))), global2.zz, global1.c, global1.d);
    global3 = array<i32, 3>();
    let var_3 = var_2;
    return select(select(!vec4<bool>(true, 4368u >= u_input.c.x, true, true), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false)), true), vec4<bool>(all(vec3<bool>(true, any(vec3<bool>(true, true, true)), all(vec3<bool>(true, true, false)))), select(any(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), false)), _wgslsmith_f_op_f32(1103f + var_2.a) <= _wgslsmith_f_op_f32(f32(-1f) * -898f), true), true, (var_2.a == _wgslsmith_f_op_f32(global1.a * -1085f)) & all(vec3<bool>(true, true, true))), vec4<bool>(any(vec4<bool>(all(vec2<bool>(true, false)), false, all(vec4<bool>(true, true, false, false)), true)), !(!(var_0 > 4294967295u)), any(select(vec4<bool>(true, false, false, false), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true)), true)), true));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec3<bool>) -> f32 {
    global0 = vec3<u32>(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(arg_0.d, 43635u, 0u, global1.c.x)), _wgslsmith_mult_vec4_u32(max(countOneBits(vec4<u32>(1u, global1.c.x, u_input.c.x, global1.d)), vec4<u32>(4294967295u, u_input.c.x, 0u, 0u)), abs(select(u_input.c, u_input.c, arg_1)))), ~(~(~0u)), reverseBits(_wgslsmith_clamp_u32(~_wgslsmith_mult_u32(arg_0.c.x, u_input.c.x), global1.d, reverseBits(global1.d))));
    global0 = vec3<u32>(arg_0.c.x, 111180u, global1.d >> (min(~global1.c.x, global1.c.x) % 32u));
    var var_0 = _wgslsmith_mod_u32(~u_input.b, ~select(abs(~arg_0.c.x), global0.x, false));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a - -460f)))), _wgslsmith_sub_vec2_i32(firstTrailingBit(arg_0.b << (_wgslsmith_sub_vec2_u32(arg_0.c.yz, vec2<u32>(global1.d, 100237u)) % vec2<u32>(32u))), abs(-global2.zz)), vec3<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, global0.x, global1.c.x), ~vec3<u32>(4294967295u, global1.c.x, arg_0.c.x)), global0.x, 31822u), _wgslsmith_clamp_u32(1u, firstLeadingBit(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(21719u, 1u, 0u), vec3<u32>(53863u, u_input.c.x, global1.d)), arg_0.c)), max(~u_input.b, _wgslsmith_add_u32(arg_0.d, ~arg_0.c.x))));
    var_1 = arg_0;
    return 1163f;
}

fn func_2(arg_0: i32) -> vec2<f32> {
    var var_0 = ~u_input.c;
    global1 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global1.a)) + _wgslsmith_f_op_f32(exp2(global1.a))), _wgslsmith_f_op_f32(f32(-1f) * -858f))))), max(countOneBits(_wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, arg_0), abs(global1.b))), vec2<i32>(_wgslsmith_div_i32(_wgslsmith_add_i32(u_input.a, 0i), 2147483647i), _wgslsmith_sub_i32(-1i, firstLeadingBit(global3[_wgslsmith_index_u32(40527u, 3u)])))), u_input.c.zyx, global0.x);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(func_4(Struct_1(1104f, global2.zy >> (~vec2<u32>(global1.c.x, 4294967295u) % vec2<u32>(32u)), reverseBits(vec3<u32>(7657u, var_0.x, u_input.b)) ^ vec3<u32>(u_input.c.x, 22193u, 45720u), _wgslsmith_mult_u32(~var_0.x, ~global1.d)), select(vec4<bool>(true, true, true, true), func_3(~var_0.x), true), func_3(~(~var_0.x)).xwz)), vec2<i32>(arg_0, _wgslsmith_add_i32(global1.b.x, -2510i)), abs(~select(vec3<u32>(global0.x, 44613u, 36002u), u_input.c.xyw | vec3<u32>(u_input.c.x, 32597u, global0.x), any(vec4<bool>(false, true, false, false)))), reverseBits(firstTrailingBit(~(~u_input.b))));
    var_0 = vec4<u32>(~0u, ~(~(~22407u)), ~u_input.b, max(28908u, _wgslsmith_sub_u32(_wgslsmith_add_u32(firstTrailingBit(1u), _wgslsmith_add_u32(u_input.c.x, var_1.c.x)), 4294967295u)));
    let var_2 = ~(~(~select(u_input.c, vec4<u32>(4294967295u, global0.x, var_1.c.x, 1u), vec4<bool>(true, true, true, true)))) >> (u_input.c % vec4<u32>(32u));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(933f, 1086f) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global1.a, var_1.a))) - vec2<f32>(-284f, var_1.a))));
}

fn func_5(arg_0: vec2<u32>, arg_1: vec2<f32>, arg_2: Struct_1) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_f32(-arg_2.a);
    let var_1 = global1.c;
    var var_2 = arg_2;
    var_2 = arg_2;
    var_2 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, arg_2.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1000f, global1.a))))), arg_2.b, global1.c, 0u);
    return max(abs(~(-(~global2.zx))), arg_2.b);
}

fn func_1() -> u32 {
    global1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global1.a - -792f)))))), _wgslsmith_mult_vec2_i32(func_5(~_wgslsmith_add_vec2_u32(global1.c.xx, vec2<u32>(26425u, 64266u)), _wgslsmith_f_op_vec2_f32(func_2(abs(-11973i))), Struct_1(-315f, ~global2.yz, abs(u_input.c.xyw), 21248u)), vec2<i32>(-36115i, global3[_wgslsmith_index_u32(1u, 3u)])), vec3<u32>(4294967295u, global0.x & 4294967295u, 1u), 678u);
    global3 = array<i32, 3>();
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(global1.a, _wgslsmith_f_op_f32(f32(-1f) * -628f))), _wgslsmith_f_op_f32(global1.a + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -677f)))))));
    let var_1 = !(any(vec4<bool>(true, false, func_3(1u).x, true)) || (_wgslsmith_clamp_u32(global0.x & 13473u, 1u, u_input.b) == _wgslsmith_dot_vec4_u32(u_input.c, _wgslsmith_mult_vec4_u32(vec4<u32>(49296u, u_input.c.x, u_input.b, 4294967295u), vec4<u32>(16721u, 4294967295u, global0.x, 103538u)))));
    var var_2 = Struct_1(-380f, vec2<i32>(u_input.a, -1i), ~_wgslsmith_mult_vec3_u32(vec3<u32>(min(global1.d, 18528u), u_input.b | 91412u, u_input.b & 82008u), ~vec3<u32>(u_input.b, u_input.c.x, 17737u)), 1u ^ global1.d);
    return _wgslsmith_mult_u32(global1.c.x, var_2.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -23351i;
    var var_1 = _wgslsmith_clamp_u32(~(~_wgslsmith_dot_vec2_u32(global1.c.zx, vec2<u32>(global1.d, 22769u) | global1.c.yz)), _wgslsmith_mod_u32(~84518u, u_input.b), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_add_u32(1110u, 0u), func_1(), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, global0.x, global0.x, 30481u), u_input.c), 10805u), vec4<u32>(~global0.x, 26458u ^ global1.d, _wgslsmith_mod_u32(global1.c.x, 0u), 131763u)) >> (32949u % 32u));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_vec2_f32(func_2(u_input.a)).x)), abs(vec2<i32>(_wgslsmith_add_i32(countOneBits(u_input.a), global2.x), -17854i)), vec3<u32>(~firstTrailingBit(27u & u_input.c.x), _wgslsmith_dot_vec3_u32(vec3<u32>(51730u, min(u_input.b, global1.c.x), _wgslsmith_clamp_u32(u_input.c.x, 39395u, 38681u)), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(15054u, 0u, 43790u), global1.c), 4294967295u, min(global1.c.x, u_input.b))), global0.x), ~57377u);
    var var_3 = Struct_1(var_2.a, var_2.b, firstTrailingBit(_wgslsmith_div_vec3_u32(vec3<u32>(1u, var_2.d, 0u), vec3<u32>(var_2.d, global1.c.x, 4294967295u)) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(var_2.d, 35594u, 29216u) >> (vec3<u32>(global1.c.x, var_2.d, u_input.b) % vec3<u32>(32u)), vec3<u32>(0u, 1u, 19558u), vec3<u32>(1u, var_2.c.x, u_input.c.x)) % vec3<u32>(32u))), ~(~1u));
    global2 = -vec3<i32>(-_wgslsmith_div_i32(_wgslsmith_clamp_i32(var_3.b.x, -19929i, -10300i), u_input.a), _wgslsmith_mod_i32(-50244i, ~(~55276i)), 31181i);
    let var_4 = Struct_1(global1.a, ~var_3.b, _wgslsmith_mult_vec3_u32(var_2.c >> (vec3<u32>(global1.d, u_input.b, 0u) % vec3<u32>(32u)), min(vec3<u32>(_wgslsmith_div_u32(u_input.b, 21243u), ~var_3.c.x, global0.x & global1.c.x), vec3<u32>(global0.x, 10578u, ~global1.c.x))), _wgslsmith_dot_vec2_u32(vec2<u32>(min(reverseBits(0u), global1.d), ~select(u_input.b, 1u, false)), reverseBits(u_input.c.xw)));
    let x = u_input.a;
    s_output = StorageBuffer(select(vec3<i32>(abs(u_input.a), ~25001i, firstLeadingBit(27202i)) & _wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, 6548i, 2643i), vec3<i32>(-2147483647i, -2147483647i, var_3.b.x), vec3<i32>(var_3.b.x, global3[_wgslsmith_index_u32(0u, 3u)], 10917i)), ~vec3<i32>(9121i, -1i, u_input.a)), ~(~vec3<i32>(var_4.b.x, u_input.a, global2.x)), any(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)))), 33082i, var_2.b.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -904f))))));
}

