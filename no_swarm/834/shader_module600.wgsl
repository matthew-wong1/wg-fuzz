struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: vec4<bool>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 28>;

var<private> global1: vec3<f32> = vec3<f32>(-1749f, 801f, 185f);

var<private> global2: array<u32, 8>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32) -> f32 {
    var var_0 = global0[_wgslsmith_index_u32(firstTrailingBit(global2[_wgslsmith_index_u32(firstTrailingBit(1u), 8u)]), 28u)];
    let var_1 = any(select(!select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, true), false), vec2<bool>(any(vec2<bool>(false, true)), all(vec4<bool>(true, false, false, true))), false == !all(vec4<bool>(true, false, true, true))));
    var var_2 = u_input.a.x;
    var_2 = ~(-6510i);
    return _wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * 1224f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + -1440f) + _wgslsmith_f_op_f32(-global1.x))) + 577f));
}

fn func_2(arg_0: Struct_1) -> f32 {
    global2 = array<u32, 8>();
    let var_0 = arg_0.a;
    global2 = array<u32, 8>();
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(global0[_wgslsmith_index_u32(~77254u ^ (~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 8u)], 8u)] & _wgslsmith_dot_vec4_u32(vec4<u32>(31184u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(44914u, 8u)], 8u)], 20643u, 1u), vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 8u)], 8u)], 8u)], 8u)], 8u)], 8u)], 51392u, 4294967295u, 33392u))), 28u)])) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1579f))), 482f) + _wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(firstTrailingBit(~4294967295u), 28u)])));
    var var_2 = Struct_1(!(!vec3<bool>(1i >= u_input.b.x, var_0.x, true)), global1.x, vec4<bool>(arg_0.c.x, true, false, !var_0.x), var_0.xz);
    return _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(590f))))));
}

fn func_1() -> i32 {
    global1 = vec3<f32>(global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) * global1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_1(vec3<bool>(true, true, true), _wgslsmith_div_f32(1000f, 267f), vec4<bool>(true, true, true, false), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)))))));
    global2 = array<u32, 8>();
    global0 = array<vec2<f32>, 28>();
    let var_0 = false;
    let var_1 = vec4<f32>(global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1068f - global1.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x))), 908f, global1.x);
    return 1i;
}

fn func_4(arg_0: vec2<i32>, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(select(arg_2.c.wxz, !(!vec3<bool>(arg_2.d.x, arg_1, true)), !select(select(vec3<bool>(arg_3.d.x, false, arg_3.a.x), arg_3.a, true), !arg_2.c.yzy, arg_3.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_3.b)))) - -100f), arg_3.c, arg_2.d);
    global1 = vec3<f32>(_wgslsmith_f_op_f32(-arg_2.b), _wgslsmith_f_op_f32(ceil(arg_2.b)), var_0.b);
    var var_1 = _wgslsmith_clamp_vec3_i32(-vec3<i32>(0i, u_input.b.x, i32(-1i) * -65876i), vec3<i32>(u_input.a.x, -2147483647i, arg_0.x | 1527i), countOneBits(-vec3<i32>(2147483647i, 1i, 0i))) & ~_wgslsmith_mod_vec3_i32(max(vec3<i32>(-2147483647i, 2147483647i, -8358i), vec3<i32>(-2147483647i, 2248i, 29866i)), abs(max(vec3<i32>(-1i, 17258i, -12618i), vec3<i32>(0i, -12811i, u_input.b.x))));
    var var_2 = ~global2[_wgslsmith_index_u32(~13767u, 8u)];
    let var_3 = global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 8u)], 8u)];
    return Struct_1(select(!arg_3.c.yyw, !vec3<bool>(true, !arg_2.d.x, any(vec4<bool>(arg_2.a.x, arg_3.a.x, var_0.d.x, arg_1))), any(var_0.c)), -1309f, vec4<bool>(arg_3.d.x, arg_2.d.x, any(select(!arg_2.d, !vec2<bool>(true, var_0.c.x), any(vec3<bool>(var_0.d.x, true, arg_2.a.x)))), true), arg_2.c.xx);
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    global2 = array<u32, 8>();
    global1 = vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(572f - 292f))) * global1.x), _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-1177f + global1.x)))), 530f, arg_0.b);
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(1980f, global1.x, -1648f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1572f, arg_0.b, 1048f) - vec3<f32>(arg_0.b, -1306f, arg_0.b)))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(995f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-488f - arg_0.b))), global1.x)));
    let var_0 = func_4(max(-((u_input.a ^ vec2<i32>(u_input.b.x, 53320i)) >> (vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(10094u, 8u)], 8u)], 8u)], 8u)], 8u)], 8u)], 8u)], 138045u) % vec2<u32>(32u))), u_input.b >> ((~vec2<u32>(global2[_wgslsmith_index_u32(0u, 8u)], global2[_wgslsmith_index_u32(22511u, 8u)]) | (vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(51494u, 8u)], 8u)], global2[_wgslsmith_index_u32(1u, 8u)]) | vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(50378u, 8u)], 8u)], 1u))) % vec2<u32>(32u))), false, arg_0, func_4(u_input.a, arg_0.c.x, func_4(countOneBits(u_input.a & u_input.b), arg_0.c.x, func_4(select(vec2<i32>(u_input.b.x, -2147483647i), vec2<i32>(u_input.b.x, u_input.b.x), vec2<bool>(arg_0.a.x, arg_0.d.x)), true, arg_0, arg_0), arg_0), Struct_1(vec3<bool>(true, select(arg_0.d.x, arg_0.c.x, arg_0.a.x), arg_0.d.x), 2050f, vec4<bool>(true, all(arg_0.a), any(vec2<bool>(arg_0.c.x, true)), arg_0.c.x), arg_0.d)));
    global0 = array<vec2<f32>, 28>();
    return func_4(vec2<i32>(u_input.b.x, 39031i), any(var_0.d), func_4(_wgslsmith_add_vec2_i32(-_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), vec2<i32>(u_input.b.x, 2147483647i)), u_input.b), ~_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(13025u, 8u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 8u)], 8u)], 8u)]) > global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(21476u, 60175u), 8u)] | min(global2[_wgslsmith_index_u32(78979u, 8u)], 55227u), 8u)], func_4(u_input.b, arg_0.c.x, arg_0, Struct_1(!vec3<bool>(arg_0.a.x, true, false), _wgslsmith_div_f32(415f, 196f), vec4<bool>(false, false, arg_0.a.x, var_0.d.x), vec2<bool>(arg_0.d.x, false))), func_4(u_input.a, true, Struct_1(func_4(vec2<i32>(-53221i, u_input.a.x), var_0.c.x, Struct_1(var_0.c.yyz, 2256f, vec4<bool>(false, true, false, arg_0.d.x), var_0.c.xy), Struct_1(vec3<bool>(var_0.c.x, arg_0.a.x, arg_0.a.x), arg_0.b, arg_0.c, vec2<bool>(false, false))).c.yxw, _wgslsmith_f_op_f32(f32(-1f) * -317f), var_0.c, arg_0.d), func_4(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a.x, -1i), u_input.a), !var_0.a.x, Struct_1(vec3<bool>(true, var_0.a.x, false), arg_0.b, vec4<bool>(true, arg_0.c.x, var_0.d.x, false), arg_0.c.yz), arg_0))), arg_0);
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<i32>) -> vec4<f32> {
    var var_0 = _wgslsmith_clamp_vec3_u32(~(~vec3<u32>(4294967295u, 0u, global2[_wgslsmith_index_u32(1u, 8u)])) >> (countOneBits(vec3<u32>(0u << (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(31253u, 8u)], 8u)], 8u)] % 32u), global2[_wgslsmith_index_u32(1u, 8u)], ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(66190u, 8u)], 8u)], 8u)], 8u)])) % vec3<u32>(32u)), vec3<u32>(0u, ~4294967295u, ~_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 539u), min(vec2<u32>(4294967295u, 16511u), vec2<u32>(0u, 9880u)))), _wgslsmith_mod_vec3_u32(~(~vec3<u32>(0u, 10955u, 95702u) << (_wgslsmith_add_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(69373u, 8u)], global2[_wgslsmith_index_u32(3038u, 8u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(41922u, 8u)], 8u)]), vec3<u32>(1u, 11521u, 13830u)) % vec3<u32>(32u))), select(vec3<u32>(29500u, 4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(29658u, 8u)], 8u)], 8u)], 8u)]) & vec3<u32>(4294967295u, global2[_wgslsmith_index_u32(0u, 8u)], global2[_wgslsmith_index_u32(62562u, 8u)]), select(vec3<u32>(global2[_wgslsmith_index_u32(45631u, 8u)], 4294967295u, 0u), vec3<u32>(global2[_wgslsmith_index_u32(1u, 8u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 8u)], 8u)], global2[_wgslsmith_index_u32(4294967295u, 8u)]), vec3<bool>(false, arg_1.c.x, true)), vec3<bool>(false, false, false)) ^ firstTrailingBit(vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 8u)], 8u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(25210u, 8u)], 8u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(52645u, 8u)], 8u)]))));
    global1 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(func_2(Struct_1(!arg_0.c.wwy, _wgslsmith_f_op_f32(-1124f * global1.x), vec4<bool>(arg_0.a.x, false, false, true), arg_0.d))), -1312f, global1.x), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_1.b, 605f, arg_0.b))) * vec3<f32>(global1.x, -855f, 1102f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global1.x, -801f, -369f))), vec3<f32>(global1.x, arg_0.b, arg_1.b))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1597f, -965f, arg_1.b) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_1.b, arg_1.b, 270f))))), false | arg_0.a.x)), true));
    let var_1 = select(1u, ~(~0u << (_wgslsmith_sub_u32(abs(45189u), 53032u << (global2[_wgslsmith_index_u32(var_0.x, 8u)] % 32u)) % 32u)), !arg_1.c.x);
    let var_2 = vec3<f32>(-2750f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.b, 1345f))), global1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -829f), _wgslsmith_f_op_f32(-arg_1.b))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(arg_1.b, arg_0.b)))))));
    var var_3 = -1000f;
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(var_2.x, var_2.x))))), var_2.x, _wgslsmith_f_op_f32(-global1.x), var_2.x) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b, -1000f, 1000f, -842f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    global0 = array<vec2<f32>, 28>();
    let var_1 = global1.xz;
    let var_2 = _wgslsmith_sub_i32(_wgslsmith_mod_i32(0i, firstLeadingBit(35114i)), -(~u_input.b.x));
    var var_3 = _wgslsmith_f_op_vec4_f32(func_6(func_5(func_4(vec2<i32>(func_1(), -u_input.b.x), false, Struct_1(vec3<bool>(true, true, true), var_1.x, vec4<bool>(false, true, true, true), vec2<bool>(true, true)), Struct_1(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false)), _wgslsmith_f_op_f32(var_1.x - var_1.x), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), false), vec2<bool>(false, false)))), Struct_1(vec3<bool>(false, true, all(vec4<bool>(true, false, false, true))), func_4(vec2<i32>(_wgslsmith_sub_i32(var_2, -2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, var_2), u_input.a)), false || any(vec4<bool>(false, true, false, true)), func_4(firstTrailingBit(u_input.a), true, func_5(Struct_1(vec3<bool>(true, true, false), global1.x, vec4<bool>(true, true, true, false), vec2<bool>(false, true))), Struct_1(vec3<bool>(false, true, true), var_1.x, vec4<bool>(true, true, false, false), vec2<bool>(false, false))), Struct_1(vec3<bool>(true, true, true), global1.x, vec4<bool>(false, true, false, true), select(vec2<bool>(false, true), vec2<bool>(false, false), true))).b, !(!func_5(Struct_1(vec3<bool>(true, true, true), global1.x, vec4<bool>(false, true, true, true), vec2<bool>(true, false))).c), vec2<bool>(false, false)), abs(-reverseBits(select(vec4<i32>(u_input.b.x, 1i, -7175i, -21583i), vec4<i32>(u_input.b.x, var_2, u_input.b.x, 1i), vec4<bool>(false, false, true, false))))));
    let var_4 = true;
    global1 = vec3<f32>(_wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.x, var_1.x) * 639f))) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_3.x)))), var_1.x);
    let var_5 = func_5(Struct_1(func_4(vec2<i32>(_wgslsmith_clamp_i32(var_2, var_2, -1i), firstLeadingBit(u_input.b.x)), func_5(func_4(u_input.a, false, Struct_1(vec3<bool>(false, false, var_4), var_3.x, vec4<bool>(var_4, var_4, true, true), vec2<bool>(false, false)), Struct_1(vec3<bool>(var_4, true, var_4), 196f, vec4<bool>(false, true, var_4, false), vec2<bool>(true, false)))).c.x, Struct_1(!vec3<bool>(var_4, true, var_4), _wgslsmith_f_op_f32(var_3.x - global1.x), vec4<bool>(false, true, true, false), func_4(u_input.a, false, Struct_1(vec3<bool>(var_4, true, var_4), 164f, vec4<bool>(var_4, var_4, var_4, true), vec2<bool>(var_4, var_4)), Struct_1(vec3<bool>(var_4, var_4, var_4), var_1.x, vec4<bool>(true, true, true, var_4), vec2<bool>(var_4, var_4))).c.xy), func_5(func_5(Struct_1(vec3<bool>(var_4, var_4, false), 1000f, vec4<bool>(true, var_4, false, false), vec2<bool>(var_4, var_4))))).a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -631f))), func_5(Struct_1(vec3<bool>(false, true, var_4), _wgslsmith_f_op_f32(236f - global1.x), vec4<bool>(true, true, false, var_4), !vec2<bool>(var_4, true))).c, select(vec2<bool>(true, true), vec2<bool>(var_4, false), !func_4(u_input.b, false, Struct_1(vec3<bool>(false, true, false), -1964f, vec4<bool>(false, var_4, true, var_4), vec2<bool>(var_4, true)), Struct_1(vec3<bool>(var_4, var_4, var_4), -121f, vec4<bool>(var_4, true, var_4, true), vec2<bool>(true, false))).a.xz))).c.yzw;
    let var_6 = true;
    let x = u_input.a;
    s_output = StorageBuffer(1i);
}

