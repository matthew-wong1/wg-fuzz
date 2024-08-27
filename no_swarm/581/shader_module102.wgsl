struct Struct_1 {
    a: f32,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 16>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2() -> vec2<i32> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-1f), vec2<bool>(any(select(vec4<bool>(false, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), false), vec4<bool>(true, true, true, true))), any(vec4<bool>(true, true, true, true))));
    return -vec2<i32>(1i, ~_wgslsmith_mod_i32(1i, 39735i)) & vec2<i32>(17313i, _wgslsmith_dot_vec2_i32((u_input.a.yx ^ vec2<i32>(u_input.a.x, 51657i)) ^ _wgslsmith_sub_vec2_i32(u_input.a.yy, u_input.a.yz), u_input.a.xw));
}

fn func_3(arg_0: vec2<i32>) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(max(-1485f, _wgslsmith_f_op_f32(-1f))), vec2<bool>(true, true));
    var var_1 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(179f, -1000f, -2535f) - vec3<f32>(var_0.a, var_0.a, 591f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, -1906f, var_0.a)))))));
    let var_2 = Struct_1(201f, select(var_0.b, !select(vec2<bool>(false, var_0.b.x), var_0.b, !var_0.b), vec2<bool>(false, true)));
    var var_3 = vec2<u32>(abs(~(max(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(2928u, 16u)], 16u)], 16u)], 16u)], 16u)]) | global0[_wgslsmith_index_u32(40515u, 16u)])), max(global0[_wgslsmith_index_u32(17119u, 16u)], countOneBits(min(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 16u)], 16u)], 16u)], 16u)], 16u)], 16u)], 16u)], 16u)] << (global0[_wgslsmith_index_u32(53678u, 16u)] % 32u)))));
    var_1 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(var_0.a * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(var_1.x, var_2.a, var_2.b.x)), _wgslsmith_f_op_f32(-var_2.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.x), 565f, true)) - var_2.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.a + _wgslsmith_f_op_f32(select(1228f, 1001f, var_0.b.x))), -1178f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(429f, -259f, 262f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_2.a, 1170f) - vec3<f32>(-1525f, 946f, var_1.x)) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_1.x, -1100f, -714f))))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(745f, -723f, 774f), vec3<f32>(var_2.a, var_1.x, -438f), vec3<bool>(var_0.b.x, false, var_0.b.x)))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-430f, var_1.x, var_2.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, -553f, -419f))))))));
    return var_0;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = arg_3;
    let var_1 = u_input.a.x;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-arg_2.a), vec2<bool>(arg_3.b.x, _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 16u)], 16u)]), 16u)], _wgslsmith_dot_vec4_u32(vec4<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 16u)], 16u)], 16u)], 16u)], global0[_wgslsmith_index_u32(1u, 16u)], 0u), vec4<u32>(34622u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(38387u, 16u)], 16u)], 4294967295u, global0[_wgslsmith_index_u32(27650u, 16u)]))) > global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(~4294967295u, 16u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(72719u, 16u)], 16u)] >> (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 16u)], 16u)] % 32u)), 16u)]));
    let var_3 = vec2<bool>(var_0.b.x, var_0.b.x != true);
    var_0 = func_3(-(abs(vec2<i32>(arg_1.x, 29065i)) << ((_wgslsmith_div_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(74607u, 16u)], 16u)], 16u)], 16u)], global0[_wgslsmith_index_u32(17481u, 16u)]), vec2<u32>(704u, global0[_wgslsmith_index_u32(0u, 16u)])) >> (vec2<u32>(11903u, 15191u) % vec2<u32>(32u))) % vec2<u32>(32u))));
    return Struct_1(var_2.a, !func_3(firstLeadingBit(-u_input.a.yx)).b);
}

fn func_1() -> i32 {
    var var_0 = vec4<i32>(_wgslsmith_mult_i32(select(-(~12899i), -u_input.a.x, true), min(_wgslsmith_mod_i32(u_input.a.x, ~u_input.a.x), ~_wgslsmith_div_i32(0i, u_input.a.x))), -u_input.a.x, 0i, 77560i);
    let var_1 = func_4(Struct_1(541f, select(select(select(vec2<bool>(false, false), vec2<bool>(true, true), false), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)))), -_wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_add_i32(-19082i, -10461i), -60915i, u_input.a.x), reverseBits(vec3<i32>(1i, var_0.x, u_input.a.x)) & vec3<i32>(-2147483647i, var_0.x, -37493i)), func_3(min(func_2(), func_2())), func_3(-vec2<i32>(0i, -19700i) << (vec2<u32>(_wgslsmith_div_u32(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(35427u, 16u)], 16u)], 16u)], 16u)], 16u)]), 45610u) % vec2<u32>(32u))));
    let var_2 = ~(~select(select(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(22449u, 16u)], 16u)], ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 16u)], 16u)], 16u)], 16u)], 16u)], false), 7595u & global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(27976u, 16u)], 16u)], 16u)], 16u)], false));
    let var_3 = global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~var_2, 16u)], 16u)];
    let var_4 = all(select(select(var_1.b, vec2<bool>(true, true), true), func_3(_wgslsmith_div_vec2_i32(u_input.a.xw >> (vec2<u32>(global0[_wgslsmith_index_u32(1u, 16u)], 4294967295u) % vec2<u32>(32u)), vec2<i32>(u_input.a.x, -87659i))).b, (var_1.b.x | true) || any(!vec4<bool>(var_1.b.x, true, false, true))));
    return u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstTrailingBit(select(vec2<u32>(_wgslsmith_div_u32(104057u, countOneBits(23038u)), _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(10897u, 16u)], 16u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 16u)], 16u)], 4294967295u)), vec3<u32>(35487u, 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(22575u, 16u)], 16u)]) << (vec3<u32>(90909u, 38198u, 0u) % vec3<u32>(32u)))), vec2<u32>(5961u, 1u), true));
    let var_1 = !vec2<bool>(all(select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false)), false)), false);
    var var_2 = Struct_1(-584f, !var_1);
    let var_3 = vec4<i32>(~select(~(~(-20201i)), -27226i, (-380f >= var_2.a) && var_1.x), ~(-u_input.a.x), func_1(), -_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, -4138i, u_input.a.x), vec4<i32>(-1i, u_input.a.x, u_input.a.x, u_input.a.x)) ^ u_input.a.x, ~_wgslsmith_mult_i32(-2147483647i, 0i)));
    var_2 = func_3(select(-select(countOneBits(vec2<i32>(-27607i, -18706i)), max(var_3.zw, vec2<i32>(0i, u_input.a.x)), select(vec2<bool>(var_1.x, var_2.b.x), vec2<bool>(var_2.b.x, var_2.b.x), var_2.b.x)), func_2(), var_1.x));
    let var_4 = select(~(~firstTrailingBit(vec3<u32>(0u, 5343u, var_0.x))), vec3<u32>(_wgslsmith_div_u32(~var_0.x, 16221u), _wgslsmith_clamp_u32(0u, abs(4294967295u), 62437u), ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 16u)], 16u)]), vec3<bool>(var_1.x & all(var_2.b), true, func_3(var_3.xz & u_input.a.xz).b.x)) & select(reverseBits(vec3<u32>(var_0.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 16u)], 16u)], 16u)], 125835u)) | ~_wgslsmith_mult_vec3_u32(vec3<u32>(43599u, 4294967295u, 13813u), vec3<u32>(global0[_wgslsmith_index_u32(var_0.x, 16u)], var_0.x, var_0.x)), vec3<u32>(global0[_wgslsmith_index_u32(reverseBits(48133u), 16u)], ~_wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 16u)], 78805u, 25393u, global0[_wgslsmith_index_u32(1326u, 16u)]), vec4<u32>(var_0.x, 71233u, global0[_wgslsmith_index_u32(var_0.x, 16u)], 1u)), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, var_0.x), vec3<u32>(var_0.x, var_0.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(18367u, 16u)], 16u)])), ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.x, 16u)], 16u)], 16u)], 16u)])), !select(!vec3<bool>(var_2.b.x, true, false), select(vec3<bool>(var_1.x, true, false), vec3<bool>(var_2.b.x, var_2.b.x, false), false), vec3<bool>(false, true, var_2.b.x)));
    let var_5 = vec4<i32>(abs(var_3.x), ~func_1(), select(-abs(var_3.x | 3681i), ~_wgslsmith_div_i32(-2147483647i, u_input.a.x), var_2.b.x), 521i);
    let x = u_input.a;
    s_output = StorageBuffer(~(~countOneBits(1i | var_5.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(var_2.a)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(596f - -1628f))) * var_2.a));
}

