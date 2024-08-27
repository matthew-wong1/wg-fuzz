struct Struct_1 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: i32,
    d: u32,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec3<f32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 15>;

var<private> global1: array<Struct_1, 22>;

var<private> global2: f32;

var<private> global3: Struct_1 = Struct_1(vec2<bool>(false, false), vec2<i32>(-21601i, -6742i), 1i, 26551u, vec3<i32>(42970i, -1i, 28848i));

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: Struct_1) -> vec2<i32> {
    global0 = array<vec2<u32>, 15>();
    var var_0 = true;
    var_0 = all(select(select(select(select(arg_0.a, vec2<bool>(arg_0.a.x, false), global3.a.x), !arg_0.a, global3.a.x || arg_0.a.x), !global3.a, true), arg_0.a, global3.a.x));
    global2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(395f)))))));
    let var_1 = Struct_1(arg_0.a, select(u_input.a, firstTrailingBit(u_input.a), !(!global3.a)), arg_0.e.x, _wgslsmith_dot_vec2_u32(~(abs(global0[_wgslsmith_index_u32(2581u, 15u)]) | _wgslsmith_div_vec2_u32(vec2<u32>(arg_0.d, 1848u), vec2<u32>(global3.d, arg_0.d))), _wgslsmith_clamp_vec2_u32(countOneBits(~vec2<u32>(102956u, 41545u)), vec2<u32>(firstLeadingBit(global3.d), ~global3.d), reverseBits(~vec2<u32>(global3.d, 4294967295u)))), ~firstTrailingBit(vec3<i32>(arg_0.e.x, _wgslsmith_mod_i32(arg_0.c, global3.c), 0i)));
    return global3.e.zy;
}

fn func_2(arg_0: vec2<bool>, arg_1: u32, arg_2: f32, arg_3: i32) -> bool {
    let var_0 = Struct_1(vec2<bool>(_wgslsmith_f_op_f32(1276f * arg_2) >= _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(817f)))), !global3.a.x), func_3(global1[_wgslsmith_index_u32(15795u, 22u)]), ~(global3.b.x ^ global3.e.x) >> (~min(59337u, select(global3.d, global3.d, arg_0.x)) % 32u), ~(30517u & ~reverseBits(arg_1)), global3.e);
    var var_1 = u_input.a & (vec2<i32>(-1i) * -firstTrailingBit(~u_input.b));
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1751f * _wgslsmith_f_op_f32(-arg_2)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(arg_2, 1974f, any(global3.a)))))));
    global0 = array<vec2<u32>, 15>();
    global2 = _wgslsmith_f_op_f32(-var_2.x);
    return var_0.a.x;
}

fn func_1(arg_0: u32, arg_1: vec2<bool>, arg_2: vec4<u32>) -> vec2<bool> {
    let var_0 = !vec4<bool>(true, false, all(vec2<bool>(func_2(vec2<bool>(global3.a.x, true), 0u, 447f, -2147483647i), false)), !(!func_2(vec2<bool>(global3.a.x, true), global3.d, -1058f, u_input.b.x)));
    global0 = array<vec2<u32>, 15>();
    var var_1 = 1373f;
    let var_2 = vec2<bool>(arg_1.x, !((-global3.e.x & (u_input.a.x >> (arg_0 % 32u))) < -2147483647i));
    let var_3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1383f * 1193f))))));
    return var_0.xz;
}

fn func_4(arg_0: vec2<bool>, arg_1: vec3<bool>) -> Struct_1 {
    let var_0 = global1[_wgslsmith_index_u32(4294967295u, 22u)];
    global3 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(global3.d, abs(global3.d)), 22u)];
    var var_1 = _wgslsmith_add_i32(u_input.b.x, countOneBits(2147483647i));
    let var_2 = vec4<bool>(var_0.d == (1u ^ countOneBits(_wgslsmith_div_u32(global3.d, var_0.d))), true, var_0.a.x, arg_0.x);
    let var_3 = vec2<i32>(var_0.b.x, -2147483647i);
    return global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(select(~(vec3<u32>(51118u, global3.d, global3.d) & vec3<u32>(0u, global3.d, 18625u)), ~vec3<u32>(4294967295u, 10051u, var_0.d) << ((vec3<u32>(1u, var_0.d, var_0.d) >> (vec3<u32>(5439u, var_0.d, 21658u) % vec3<u32>(32u))) % vec3<u32>(32u)), var_2.wxy), min(~max(vec3<u32>(1u, 1u, 123u), vec3<u32>(var_0.d, 9623u, 31106u)), vec3<u32>(1u, ~var_0.d, global3.d))), 22u)];
}

fn func_5(arg_0: vec2<bool>, arg_1: i32, arg_2: Struct_1) -> StorageBuffer {
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-672f + _wgslsmith_f_op_f32(-639f * 1190f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-689f * 160f)))))) - _wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(trunc(1771f)))));
    global0 = array<vec2<u32>, 15>();
    global3 = func_4(arg_2.a, vec3<bool>(true, _wgslsmith_f_op_f32(floor(-768f)) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -3217f) * _wgslsmith_f_op_f32(-1744f + -258f)), true));
    var var_0 = ~(~(~select(arg_2.d, 34109u, arg_0.x))) != arg_2.d;
    let var_1 = arg_2;
    return StorageBuffer(_wgslsmith_div_vec4_i32(-_wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_1, var_1.b.x, -1i, var_1.e.x), vec4<i32>(-22714i, 2147483647i, -14991i, 49929i), vec4<i32>(arg_2.e.x, arg_1, arg_2.b.x, global3.b.x)), -vec4<i32>(-41736i, 17049i, arg_2.e.x, u_input.a.x)), firstTrailingBit(max(vec4<i32>(arg_1, global3.c, arg_2.b.x, var_1.b.x), vec4<i32>(global3.b.x, -19802i, arg_2.b.x, 5336i))) | _wgslsmith_sub_vec4_i32(vec4<i32>(9223i, -221i, u_input.b.x, 14638i), max(vec4<i32>(arg_2.e.x, 2147483647i, 33670i, var_1.e.x), vec4<i32>(0i, 1i, global3.b.x, arg_2.b.x)))), -1123f, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(select(-3573f, 1981f, global3.a.x))) - _wgslsmith_f_op_f32(f32(-1f) * -920f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -493f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(685f, -1031f))) - 775f)), min(firstTrailingBit(~(~vec3<u32>(0u, 9856u, 0u))), ~(~(~vec3<u32>(global3.d, 17759u, global3.d)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1251f;
    var var_1 = Struct_1(vec2<bool>(true, false), ~(~vec2<i32>(2147483647i, -11676i)) & abs(_wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.a, u_input.b), ~vec2<i32>(global3.b.x, 2147483647i))), 1i, ~_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(global3.d, 1u, global3.d, global3.d), ~vec4<u32>(global3.d, global3.d, 23506u, 25899u)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(global3.d, 67038u, 4294967295u), vec3<u32>(88720u, 0u, 1u))), vec3<i32>(_wgslsmith_mult_i32(firstLeadingBit(u_input.a.x), -49088i), global3.b.x, -2147483647i));
    let var_2 = global3.a.x;
    let var_3 = ~vec3<i32>(var_1.e.x | 25242i, _wgslsmith_mult_i32(var_1.b.x, 2147483647i), u_input.a.x);
    global0 = array<vec2<u32>, 15>();
    var var_4 = 19830u;
    let x = u_input.a;
    s_output = func_5(var_1.a, firstTrailingBit(global3.e.x), func_4(func_1(_wgslsmith_div_u32(var_1.d, max(73360u, 1u)), global3.a, vec4<u32>(_wgslsmith_sub_u32(var_1.d, 4294967295u), global3.d, ~4294967295u, max(1u, 126881u))), select(select(!vec3<bool>(global3.a.x, var_1.a.x, var_1.a.x), vec3<bool>(true, global3.a.x, var_1.a.x), select(vec3<bool>(global3.a.x, false, var_1.a.x), vec3<bool>(global3.a.x, global3.a.x, true), var_1.a.x)), select(!vec3<bool>(false, false, global3.a.x), !vec3<bool>(true, var_1.a.x, true), global3.d == 1u), var_1.a.x)));
}

