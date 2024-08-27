struct Struct_1 {
    a: bool,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: u32 = 55128u;

var<private> global2: array<bool, 24> = array<bool, 24>(false, true, false, false, true, false, true, false, false, false, false, true, true, true, false, false, false, true, false, true, false, false, true, true);

var<private> global3: u32;

var<private> global4: vec4<i32> = vec4<i32>(1i, 0i, 1i, -14352i);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: vec2<f32>) -> u32 {
    global3 = ~4294967295u;
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-120f - 631f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_1.x, _wgslsmith_f_op_f32(f32(-1f) * -937f))) + -778f)), _wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(abs(arg_1.x))), arg_1.x, -846f);
    let var_1 = vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, ~46772i, _wgslsmith_add_i32(global4.x, arg_0.a)), -u_input.a) << (1u % 32u), min(_wgslsmith_dot_vec4_i32(vec4<i32>(6517i, -2147483647i, arg_0.a, u_input.a.x), vec4<i32>(arg_0.a, global4.x, u_input.a.x, 40202i)), abs(_wgslsmith_div_i32(global4.x, 1i))) | global4.x, global4.x);
    var var_2 = vec4<u32>(0u << (countOneBits(~41990u) % 32u), _wgslsmith_clamp_u32(~(~42060u), 9016u, ~72735u), ~(~4294967295u), 1u) & vec4<u32>(select(~57376u, firstLeadingBit(~72525u), global2[_wgslsmith_index_u32(1u, 24u)]), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u)), _wgslsmith_sub_u32(_wgslsmith_sub_u32(countOneBits(11141u), abs(1u)), 1u), 1u);
    var var_3 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 739f, 2143f))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_1.x), 1320f, _wgslsmith_f_op_f32(ceil(global0.x)))), var_0.xww, vec3<bool>(false, _wgslsmith_f_op_f32(f32(-1f) * -1600f) < _wgslsmith_f_op_f32(-global0.x), all(vec2<bool>(true, true)))))));
    return var_2.x << (firstTrailingBit(~1u) % 32u);
}

fn func_2(arg_0: vec3<u32>, arg_1: vec4<u32>, arg_2: u32) -> Struct_2 {
    var var_0 = _wgslsmith_sub_u32(_wgslsmith_clamp_u32(arg_1.x | ~arg_2, abs(arg_2), func_3(Struct_3(-2147483647i), global0.yz) ^ 29164u), arg_0.x) < arg_0.x;
    global0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(-113f)), _wgslsmith_f_op_f32(max(231f, -1000f)), 363f) - vec3<f32>(_wgslsmith_f_op_f32(-global0.x), -2028f, _wgslsmith_f_op_f32(-192f + global0.x))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.x, global0.x, global0.x), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(563f, -213f, global0.x), vec3<f32>(-2657f, 635f, 1258f))), !vec3<bool>(global2[_wgslsmith_index_u32(63201u, 24u)], global2[_wgslsmith_index_u32(46276u, 24u)], global2[_wgslsmith_index_u32(arg_2, 24u)]))) + vec3<f32>(-218f, _wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_div_f32(-1000f, global0.x)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-527f + 847f), global0.x)))));
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)))));
    var var_2 = Struct_1(global2[_wgslsmith_index_u32(arg_0.x, 24u)], abs(countOneBits(arg_1.zwx)));
    var var_3 = -1598f;
    return Struct_2(Struct_1(!(any(vec3<bool>(false, var_2.a, true)) != (true == global2[_wgslsmith_index_u32(4294967295u, 24u)])), arg_1.yxx), Struct_1(var_2.a, arg_0));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: vec4<f32>) -> vec2<bool> {
    var var_0 = Struct_3(26946i);
    let var_1 = Struct_3(~select(~u_input.a.x, 22970i, !arg_0.a.a) & -2098i);
    let var_2 = Struct_3(select(1i, -(~0i), arg_0.a.b.x > arg_0.a.b.x));
    let var_3 = arg_2.x;
    var var_4 = _wgslsmith_f_op_f32(-319f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(global0.x)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -282f), _wgslsmith_f_op_f32(-var_3))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.x))))));
    return vec2<bool>(arg_0.a.a, true);
}

fn func_1() -> u32 {
    var var_0 = func_4(func_2(vec3<u32>(1u, 1u, ~0u), firstTrailingBit(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1374u, 43337u, 1u, 1u))), ~_wgslsmith_mod_u32(~12910u, 1u)), !(!(!select(vec3<bool>(true, true, false), vec3<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 24u)], global2[_wgslsmith_index_u32(0u, 24u)]), vec3<bool>(false, global2[_wgslsmith_index_u32(33144u, 24u)], false)))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(220f, global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1473f + -1000f) - -223f), _wgslsmith_div_f32(global0.x, global0.x)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0.x, global0.x, global0.x, global0.x))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, 1105f, global0.x)), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(~0u, _wgslsmith_sub_u32(0u, 0u)), 24u)])))));
    var_0 = select(select(!func_4(func_2(vec3<u32>(1u, 4424u, 35728u), vec4<u32>(1u, 0u, 4294967295u, 1u), 4596u), vec3<bool>(true, var_0.x, true), vec4<f32>(919f, -2669f, global0.x, 1620f)), select(vec2<bool>(any(vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 24u)], var_0.x, global2[_wgslsmith_index_u32(53172u, 24u)])), true), select(vec2<bool>(var_0.x, true), vec2<bool>(true, true), select(var_0.x, false, global2[_wgslsmith_index_u32(43230u, 24u)])), global2[_wgslsmith_index_u32(39032u, 24u)]), true), vec2<bool>(var_0.x, false), vec2<bool>(global2[_wgslsmith_index_u32(~1u, 24u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1294f)) - _wgslsmith_f_op_f32(select(global0.x, 1219f, true))) > global0.x));
    let var_1 = select(!(!(!select(vec2<bool>(var_0.x, true), vec2<bool>(true, global2[_wgslsmith_index_u32(1u, 24u)]), vec2<bool>(global2[_wgslsmith_index_u32(1u, 24u)], false)))), !vec2<bool>(global2[_wgslsmith_index_u32(abs(firstLeadingBit(10672u)), 24u)], true), !global2[_wgslsmith_index_u32(firstLeadingBit(~(~4294967295u)), 24u)]);
    var var_2 = global2[_wgslsmith_index_u32(max(~0u, _wgslsmith_clamp_u32(min(~min(31605u, 17498u), ~48065u), _wgslsmith_clamp_u32(4294967295u, 2442u, 23457u), 0u)), 24u)];
    var var_3 = -_wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_add_i32(u_input.a.x, global4.x), u_input.a.x) | select(countOneBits(global4.zz), vec2<i32>(global4.x, global4.x), func_4(Struct_2(Struct_1(false, vec3<u32>(20116u, 0u, 0u)), Struct_1(false, vec3<u32>(4294967295u, 1u, 779u))), vec3<bool>(false, var_0.x, true), vec4<f32>(-558f, global0.x, global0.x, global0.x))), ~firstTrailingBit(u_input.a.xx));
    return countOneBits(func_3(Struct_3(~u_input.a.x), global0.zx));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = abs(_wgslsmith_clamp_u32(56490u, reverseBits(func_1()), func_1()));
    global3 = 1u;
    var var_0 = Struct_3(u_input.a.x >> (0u % 32u));
    var var_1 = Struct_2(func_2(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 1u, 1u), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(1u, 0u, 30953u))), select(~vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), max(vec4<u32>(4294967295u, 0u, 16359u, 3682u), vec4<u32>(4294967295u, 1u, 68874u, 5124u)), vec4<u32>(54892u, 25608u, 58322u, 10241u)), global2[_wgslsmith_index_u32(select(4902u, 4294967295u, global2[_wgslsmith_index_u32(4294967295u, 24u)]) << (~4294967295u % 32u), 24u)]), _wgslsmith_dot_vec3_u32(vec3<u32>(~29354u, 47517u, min(4294967295u, 1u)), ~(~vec3<u32>(0u, 25438u, 4294967295u)))).a, func_2(vec3<u32>(firstLeadingBit(1u), 46183u, firstLeadingBit(func_1())), max(vec4<u32>(1u, 1u, 1u, 1u), max(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 0u, 6902u, 23282u), vec4<u32>(29339u, 34887u, 3517u, 34270u), vec4<u32>(0u, 0u, 4294967295u, 21873u)), vec4<u32>(1u, 1u, 1u, 1u))), 80298u).b);
    let var_2 = Struct_2(Struct_1(false, vec3<u32>(var_1.a.b.x, 0u, func_3(Struct_3(0i), global0.xx)) | max(var_1.a.b, var_1.a.b << (var_1.b.b % vec3<u32>(32u)))), var_1.b);
    let var_3 = vec4<i32>(var_0.a, 23047i, ~1626i, _wgslsmith_mult_i32(-_wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(global4.x, -6141i, var_0.a)), ~global4.zyy), i32(-1i) * -2147483647i));
    global3 = ~var_1.b.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.x))));
}

