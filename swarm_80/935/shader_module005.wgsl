struct Struct_1 {
    a: f32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: bool,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 28>;

var<private> global1: array<u32, 9>;

var<private> global2: vec4<i32> = vec4<i32>(1i, 0i, 1i, i32(-2147483648));

var<private> global3: i32 = 17681i;

var<private> global4: array<i32, 3>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1) -> bool {
    let var_0 = u_input.a.x;
    let var_1 = !vec4<bool>(arg_1.b.x, !arg_1.b.x, ~1u < ~var_0, true);
    let var_2 = arg_1;
    global3 = -1i;
    global0 = array<vec4<i32>, 28>();
    return arg_1.b.x | any(vec3<bool>(var_1.x, true, arg_1.b.x));
}

fn func_2(arg_0: vec4<i32>) -> f32 {
    global3 = _wgslsmith_clamp_i32(abs(1i), global2.x, 2147483647i);
    var var_0 = _wgslsmith_sub_vec2_u32(vec2<u32>(~(abs(1u) | global1[_wgslsmith_index_u32(4294967295u, 9u)]), global1[_wgslsmith_index_u32(659u, 9u)]), _wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(24742u, 52595u), max(~1u, _wgslsmith_div_u32(4294967295u, u_input.a.x))), u_input.b.xz));
    var var_1 = select(_wgslsmith_mult_vec4_i32(max(-vec4<i32>(global2.x, global2.x, arg_0.x, arg_0.x), arg_0 >> (u_input.b % vec4<u32>(32u))), vec4<i32>(2147483647i, _wgslsmith_add_i32(-arg_0.x, 0i), max(1i, ~global2.x), global4[_wgslsmith_index_u32(~var_0.x << (u_input.b.x % 32u), 3u)])), arg_0, vec4<bool>(func_3(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(195f, 284f))), Struct_1(_wgslsmith_f_op_f32(-689f + 1957f), vec3<bool>(true, true, true))), reverseBits(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 9u)], 9u)]) != abs(~0u), true, all(vec3<bool>(true, any(vec4<bool>(false, true, true, true)), true))));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1058f - _wgslsmith_f_op_f32(trunc(-2046f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(703f)) + _wgslsmith_f_op_f32(f32(-1f) * -425f)))));
    let var_3 = Struct_2(!(all(vec4<bool>(true, true, true, true)) && true), 0u, any(vec4<bool>((arg_0.x > arg_0.x) || any(vec2<bool>(true, true)), all(vec2<bool>(false, true)), any(vec3<bool>(true, true, true)), func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-352f, 155f)), Struct_1(737f, vec3<bool>(false, false, false))))), u_input.b.ww);
    return _wgslsmith_f_op_f32(-788f - 319f);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<f32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(arg_2 * arg_2))) - vec4<f32>(arg_0.a, _wgslsmith_f_op_f32(-131f + _wgslsmith_f_op_f32(trunc(535f))), arg_1.a, _wgslsmith_f_op_f32(-arg_2.x)));
    global3 = 0i;
    var var_1 = vec2<u32>(4294967295u, ~_wgslsmith_mult_u32(39330u, 1u) ^ (u_input.b.x ^ ~(u_input.a.x ^ u_input.b.x)));
    let var_2 = select(!vec2<bool>(!select(arg_1.b.x, true, false), false), arg_0.b.yx, arg_0.b.x);
    let var_3 = ~(-global2.yz);
    return Struct_2(!(!var_2.x), 17978u, arg_1.b.x && true, vec2<u32>(u_input.b.x, _wgslsmith_mod_u32(min(20508u, var_1.x), u_input.a.x)));
}

fn func_1() -> u32 {
    var var_0 = func_4(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(global0[_wgslsmith_index_u32(50394u, 28u)])) * _wgslsmith_f_op_f32(-1000f - -656f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(455f)) + _wgslsmith_f_op_f32(abs(1646f)))), !(!select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), false))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -586f))), !select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true))), vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-763f, -1000f))))), _wgslsmith_f_op_f32(trunc(832f)), -1053f, _wgslsmith_f_op_f32(ceil(572f))));
    var var_1 = global2.x;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-450f, _wgslsmith_f_op_f32(-217f + -263f)))), vec3<bool>(true, select(!any(vec2<bool>(var_0.a, var_0.a)), (global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 9u)], 3u)] >= global2.x) && (global2.x == -1897i), !func_3(vec2<f32>(874f, 1000f), Struct_1(-1386f, vec3<bool>(var_0.c, true, var_0.c)))), true));
    var var_3 = func_4(Struct_1(_wgslsmith_f_op_f32(-var_2.a), select(!(!vec3<bool>(false, var_0.c, false)), var_2.b, !select(var_2.b, vec3<bool>(var_0.c, var_0.a, var_2.b.x), vec3<bool>(var_2.b.x, var_2.b.x, var_2.b.x)))), Struct_1(_wgslsmith_f_op_f32(round(-1000f)), !(!vec3<bool>(true, var_2.b.x, var_2.b.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_2.a - 592f), _wgslsmith_f_op_f32(-var_2.a))), var_2.a, -176f, -333f) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a, 329f, -310f, var_2.a)))))));
    let var_4 = vec4<i32>(global2.x, _wgslsmith_add_i32(-2147483647i, _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(global2.zz, global2.xw) | (i32(-1i) * -6171i), ~global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_0.b, 0u), 3u)])), global4[_wgslsmith_index_u32(18562u, 3u)], 23945i);
    return firstTrailingBit(u_input.b.x);
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: Struct_2) -> i32 {
    global2 = firstLeadingBit(-(vec4<i32>(_wgslsmith_sub_i32(-6044i, global2.x), 0i, 2147483647i << (arg_0.x % 32u), -2895i) >> (vec4<u32>(35597u, arg_2.d.x, 0u, min(arg_1.d.x, 6737u)) % vec4<u32>(32u))));
    global4 = array<i32, 3>();
    let var_0 = _wgslsmith_div_i32(_wgslsmith_add_i32(global2.x, reverseBits(reverseBits(30092i))), -9269i);
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(min(global0[_wgslsmith_index_u32(u_input.a.x, 28u)], global0[_wgslsmith_index_u32(abs(0u), 28u)])))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -316f)));
    global4 = array<i32, 3>();
    return 15400i;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = -(abs(_wgslsmith_mult_i32(reverseBits(2147483647i), abs(global4[_wgslsmith_index_u32(u_input.a.x, 3u)]))) | global4[_wgslsmith_index_u32(~76135u, 3u)]);
    var var_0 = Struct_2(true, _wgslsmith_mod_u32(global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(41196u, ~0u), 9u)], global1[_wgslsmith_index_u32(0u, 9u)]), all(!vec4<bool>(true, true, true, any(vec3<bool>(true, true, true)))), min(~_wgslsmith_add_vec2_u32(~u_input.b.xx, vec2<u32>(0u, 1u)), u_input.a >> (countOneBits(vec2<u32>(30794u, 0u)) % vec2<u32>(32u))));
    var var_1 = vec2<i32>(-_wgslsmith_div_i32(_wgslsmith_mult_i32(global4[_wgslsmith_index_u32(1u, 3u)], min(global4[_wgslsmith_index_u32(12611u, 3u)], -2357i)), 2147483647i), select(global4[_wgslsmith_index_u32(min(~1u, firstLeadingBit(0u)), 3u)], func_5(vec2<u32>(func_1(), ~var_0.b), func_4(Struct_1(-637f, vec3<bool>(false, true, var_0.c)), Struct_1(248f, vec3<bool>(var_0.a, var_0.c, var_0.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1595f, 518f, -1059f, 2407f) * vec4<f32>(910f, -587f, 1000f, 332f))), func_4(Struct_1(-1592f, vec3<bool>(var_0.a, true, false)), Struct_1(-535f, vec3<bool>(var_0.a, var_0.a, false)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-441f, 199f, 235f, -1438f))))), !var_0.a));
    global0 = array<vec4<i32>, 28>();
    let var_2 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(391f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -401f), -1000f)), 1f, 553f), vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(382f * -474f))), _wgslsmith_f_op_f32(f32(-1f) * -265f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-184f)), _wgslsmith_f_op_f32(f32(-1f) * -300f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(2041f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1066f, _wgslsmith_div_f32(1035f, 815f), _wgslsmith_f_op_f32(-1522f + 982f), _wgslsmith_f_op_f32(447f * -1000f))))));
    let var_3 = Struct_2(!(!all(!vec4<bool>(false, var_0.c, true, var_0.c))), max(var_0.d.x | _wgslsmith_div_u32(global1[_wgslsmith_index_u32(10546u >> (u_input.a.x % 32u), 9u)], ~u_input.b.x), abs(max(1u, 1u) ^ _wgslsmith_mult_u32(25956u, global1[_wgslsmith_index_u32(u_input.a.x, 9u)]))), !any(!vec4<bool>(var_0.a, true, var_0.a, false)), ~vec2<u32>(~0u >> (abs(var_0.d.x) % 32u), _wgslsmith_div_u32(~global1[_wgslsmith_index_u32(0u, 9u)], var_0.b)));
    var var_4 = _wgslsmith_mod_vec3_u32(vec3<u32>(1u, var_3.d.x, var_0.b), u_input.b.ywy) << (u_input.b.wxw % vec3<u32>(32u));
    let var_5 = Struct_1(var_2.x, select(select(select(!vec3<bool>(true, var_3.a, var_0.c), vec3<bool>(var_0.a, false, false), true), vec3<bool>(true, true, true), !vec3<bool>(var_0.c, var_3.c, true)), vec3<bool>(_wgslsmith_div_u32(var_4.x, 54631u) >= abs(13508u), any(vec4<bool>(false, var_3.c, false, false)) != var_0.a, func_3(vec2<f32>(-195f, -990f), Struct_1(var_2.x, vec3<bool>(var_3.a, var_3.c, var_0.c)))), select(vec3<bool>(false, true, var_3.c), vec3<bool>(all(vec3<bool>(false, false, var_3.a)), var_3.a, !var_0.c), func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, var_2.x)), Struct_1(var_2.x, vec3<bool>(var_3.c, false, var_3.c))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_2(vec4<i32>(global4[_wgslsmith_index_u32(var_4.x, 3u)], global2.x, var_1.x, var_1.x))), _wgslsmith_f_op_f32(-var_2.x))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(431f, _wgslsmith_f_op_f32(var_2.x - var_5.a)), var_2.yw))), var_4.zy, vec4<u32>(17979u, u_input.a.x, ~(firstTrailingBit(u_input.a.x) >> (4294967295u % 32u)), func_1()), var_2);
}

