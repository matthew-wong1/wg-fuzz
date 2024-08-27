struct Struct_1 {
    a: u32,
    b: f32,
    c: f32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: vec3<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 15> = array<vec2<bool>, 15>(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true));

var<private> global1: array<vec2<u32>, 26>;

var<private> global2: array<i32, 14> = array<i32, 14>(-1i, 51408i, -1i, i32(-2147483648), 2147483647i, 58435i, 21735i, -15665i, 18653i, 1i, 16455i, -65909i, 77037i, 13237i);

var<private> global3: array<Struct_2, 28>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<i32>, arg_1: i32) -> f32 {
    let var_0 = Struct_4(Struct_1(firstTrailingBit(~4294967295u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(f32(-1f) * -100f))), _wgslsmith_f_op_f32(-1182f - _wgslsmith_f_op_f32(f32(-1f) * -1298f)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 35117u, 0u, 5363u), vec4<u32>(1u, 1u, 1u, 1u))), 4294967295u);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.c) - _wgslsmith_f_op_f32(exp2(var_0.a.b))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(366f * _wgslsmith_f_op_f32(select(var_0.a.c, 1114f, false)))), 322f)));
    global1 = array<vec2<u32>, 26>();
    var var_2 = !select(vec4<bool>(true, true, false, !select(true, true, false)), vec4<bool>(true, any(vec4<bool>(false, false, true, true)), all(vec2<bool>(true, false)) & true, true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(vec4<bool>(false, false, false, false))), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)));
    var var_3 = _wgslsmith_mult_i32(0i, ~_wgslsmith_div_i32(global2[_wgslsmith_index_u32(34220u, 14u)], abs(_wgslsmith_div_i32(arg_0.x, -43377i))));
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.a.c), var_1));
}

fn func_2() -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1f, 1f, 1f, 1f), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -872f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1171f, -689f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec3<i32>(u_input.a, global2[_wgslsmith_index_u32(0u, 14u)], global2[_wgslsmith_index_u32(25148u, 14u)]), 1i))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(vec3<i32>(global2[_wgslsmith_index_u32(1u, 14u)], 1i, global2[_wgslsmith_index_u32(36988u, 14u)]), 1926i))))), all(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(1u, 4294967295u, 127959u, 4294967295u)), vec4<u32>(1u, 1u, 1u, 1u)), 15u)]))) * vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1665f, -423f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-738f)) * _wgslsmith_f_op_f32(round(-302f))))), -552f, _wgslsmith_f_op_f32(f32(-1f) * -887f)));
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(var_0.x))));
    global2 = array<i32, 14>();
    let var_2 = abs(~(-(vec3<i32>(-1i, 34494i, global2[_wgslsmith_index_u32(72137u, 14u)]) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)))));
    var var_3 = 646i;
    return vec4<u32>(0u, reverseBits(13537u), _wgslsmith_dot_vec2_u32(global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 26726u), vec3<u32>(50385u, 43351u, 7124u)) & ~1u, 26u)], vec2<u32>(1u, 1u)), max(~(firstLeadingBit(18861u) >> (1u % 32u)), 1u));
}

fn func_4(arg_0: Struct_3, arg_1: vec3<f32>) -> Struct_4 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b.b * _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1131f, -924f), _wgslsmith_f_op_f32(-arg_1.x)))) - arg_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1080f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-212f, _wgslsmith_f_op_f32(step(-1963f, _wgslsmith_f_op_f32(ceil(arg_1.x))))))));
    var var_1 = Struct_1(reverseBits(arg_0.a.d.x), 168f, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_sub_vec4_u32(arg_0.a.d, arg_0.b.d) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_div_u32(arg_0.b.a, arg_0.d.x), 6794u, arg_0.a.a << (arg_0.b.d.x % 32u), arg_0.a.d.x), ~arg_0.a.d, arg_0.a.d) % vec4<u32>(32u)));
    var var_2 = abs(0i);
    var var_3 = ~(~select(var_1.d.x, 4294967295u, arg_0.b.c >= -105f));
    var var_4 = _wgslsmith_mult_i32(1i, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, u_input.a, ~global2[_wgslsmith_index_u32(var_1.d.x, 14u)]), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(9201i, global2[_wgslsmith_index_u32(var_1.a, 14u)], -1i), vec3<i32>(u_input.a, -1i, u_input.a)), ~(-14424i), _wgslsmith_div_i32(u_input.a, -10086i))), -select(-vec3<i32>(u_input.a, -9895i, 73066i), vec3<i32>(6004i, 13489i, -134459i), all(vec4<bool>(arg_0.c, arg_0.c, true, arg_0.c)))));
    return Struct_4(arg_0.a, 58446u ^ var_1.d.x);
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: f32) -> vec3<u32> {
    global3 = array<Struct_2, 28>();
    var var_0 = func_4(Struct_3(Struct_1(_wgslsmith_add_u32(0u, _wgslsmith_clamp_u32(0u, 1u, 78152u)), -404f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(332f, -182f, true))), func_2()), Struct_1(abs(27995u), _wgslsmith_f_op_f32(func_3(_wgslsmith_div_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(29360u, 14u)], u_input.a, 18798i), vec3<i32>(u_input.a, u_input.a, 0i)), u_input.a ^ 5936i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec3<i32>(global2[_wgslsmith_index_u32(24287u, 14u)], 36713i, -35216i), -59352i))), ~max(vec4<u32>(29315u, 0u, 4294967295u, 13754u), vec4<u32>(6556u, 22457u, 1u, 1u))), any(!select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), true)), firstTrailingBit(vec3<u32>(1u, 1u, 1u)) | _wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 20576u, 45161u), vec3<u32>(0u, 941u, 0u)), ~vec3<u32>(6392u, 7969u, 1u))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_0, _wgslsmith_f_op_f32(-arg_2))))));
    var var_1 = !select(select(all(select(vec2<bool>(true, true), global0[_wgslsmith_index_u32(0u, 15u)], global0[_wgslsmith_index_u32(var_0.b, 15u)])), false, true), arg_2 >= 973f, true);
    let var_2 = -3177i;
    var var_3 = -(~_wgslsmith_mod_vec4_i32(-abs(vec4<i32>(u_input.a, -2147483647i, var_2, global2[_wgslsmith_index_u32(4294967295u, 14u)])), vec4<i32>(_wgslsmith_sub_i32(-50752i, var_2), u_input.a >> (40548u % 32u), global2[_wgslsmith_index_u32(1u, 14u)], 1i >> (var_0.a.d.x % 32u))));
    return var_0.a.d.xxx;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(755f * -1628f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-878f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2608f * -2484f) + 1f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-368f - _wgslsmith_f_op_f32(f32(-1f) * -1015f)), 996f), _wgslsmith_f_op_f32(select(-1167f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-713f * -612f))), true))));
    global0 = array<vec2<bool>, 15>();
    let var_1 = ~(~4294967295u);
    var var_2 = -(firstLeadingBit(vec3<i32>(-7262i, -2147483647i, u_input.a) >> (select(vec3<u32>(var_1, 1u, var_1), vec3<u32>(1u, 4294967295u, var_1), false) % vec3<u32>(32u))) << ((_wgslsmith_div_vec3_u32(vec3<u32>(var_1, 55268u, var_1) >> (vec3<u32>(1u, var_1, 88523u) % vec3<u32>(32u)), vec3<u32>(82843u, 4294967295u, 5565u)) << (func_1(var_0.x, _wgslsmith_div_f32(var_0.x, -1494f), var_0.x) % vec3<u32>(32u))) % vec3<u32>(32u)));
    let var_3 = (_wgslsmith_clamp_u32(1u, var_1, _wgslsmith_dot_vec3_u32(~vec3<u32>(var_1, 64234u, var_1), vec3<u32>(var_1, var_1, 20120u))) & (func_1(_wgslsmith_f_op_f32(ceil(-508f)), _wgslsmith_f_op_f32(step(1000f, -1519f)), _wgslsmith_f_op_f32(trunc(-534f))).x ^ ~0u)) << ((select(4294967295u, 16043u, true) & var_1) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_i32(-vec2<i32>(u_input.a, ~(-1i)), vec2<i32>(25287i, _wgslsmith_mult_i32(7750i, 0i))), vec4<i32>(-_wgslsmith_sub_i32(_wgslsmith_clamp_i32(u_input.a, global2[_wgslsmith_index_u32(29378u, 14u)], var_2.x), ~1i), ~global2[_wgslsmith_index_u32(~49314u, 14u)], ~_wgslsmith_add_i32(_wgslsmith_sub_i32(var_2.x, u_input.a), 38315i), 20611i), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(7828u, 33131u)), global1[_wgslsmith_index_u32(1u, 26u)] << (reverseBits(global1[_wgslsmith_index_u32(var_1, 26u)]) % vec2<u32>(32u))) | _wgslsmith_sub_u32(var_1, var_1), 14u)], _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.x))));
}

