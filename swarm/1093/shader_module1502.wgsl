struct Struct_1 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: vec3<bool>;

var<private> global2: array<i32, 28> = array<i32, 28>(-1i, 0i, -862i, 2529i, 17319i, i32(-2147483648), 4100i, -829i, i32(-2147483648), 1i, -1i, -1i, 1i, 1i, -23041i, -1i, 0i, 0i, 2147483647i, -1i, 5154i, 0i, -9861i, 41995i, 22309i, 2147483647i, i32(-2147483648), 36586i);

var<private> global3: vec3<i32> = vec3<i32>(-1i, -6637i, 2147483647i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: u32) -> i32 {
    let var_0 = select(!select(select(global0.wzz, global0.www, select(global0.xwx, global0.wxw, global0.zyz)), select(global0.xxx, !global0.wyy, global2[_wgslsmith_index_u32(44564u, 28u)] > global3.x), all(vec4<bool>(false, global1.x, true, false))), select(global0.ywz, select(global0.yxz, select(global0.zzz, global0.wzy, select(global0.wyz, global0.wzw, global0.zzx)), ~u_input.d <= _wgslsmith_add_u32(29847u, u_input.a)), !global1.x), global0.yzy);
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(145f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(491f - -741f))))));
    let var_2 = select(vec3<bool>(any(select(select(vec3<bool>(true, false, global0.x), vec3<bool>(true, true, var_0.x), var_0), select(vec3<bool>(var_0.x, global0.x, false), var_0, true), true == global0.x)), -348f < var_1, false), vec3<bool>(!var_0.x, -firstTrailingBit(global3.x) >= (_wgslsmith_sub_i32(42086i, u_input.c.x) & (u_input.c.x | global3.x)), global1.x), any(vec2<bool>(var_0.x, true)) & any(select(select(global0.wxx, vec3<bool>(true, false, true), global0.x), vec3<bool>(global1.x, var_0.x, var_0.x), true)));
    var var_3 = !(!(!(!any(var_2))));
    return _wgslsmith_div_i32(-global3.x, u_input.c.x);
}

fn func_2(arg_0: u32) -> vec2<f32> {
    global3 = ~(-firstTrailingBit(vec3<i32>(min(global2[_wgslsmith_index_u32(arg_0, 28u)], -2147483647i), ~global3.x, ~2147483647i)));
    let var_0 = firstTrailingBit(~(~(-(-1i << (arg_0 % 32u)))));
    let var_1 = func_3(68672u);
    var var_2 = Struct_1(~(-abs(-u_input.c)));
    var_2 = Struct_1(~firstTrailingBit(vec2<i32>(-38837i, -u_input.c.x)));
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1037f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-394f * -1394f))))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1020f, -844f), vec2<f32>(777f, -905f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1229f, -220f)))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(486f, 1448f) - vec2<f32>(220f, -922f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(2187f, -1005f))))))), !global0.x));
}

fn func_1() -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(-338f, -2037f), vec2<f32>(314f, 272f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(713f, -966f) - vec2<f32>(247f, -882f)), !global0.x)))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -422f) - _wgslsmith_div_f32(214f, -1000f)), 429f)));
    var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, 432f) + 759f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1570f * 1466f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(645f, var_0.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, -1085f) * vec2<f32>(var_0.x, 570f))))) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_0.x, 222f)), _wgslsmith_f_op_f32(round(var_0.x))))));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(0u)));
    var var_1 = var_0.x;
    var var_2 = -1i;
    return u_input.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_div_vec2_i32(global3.xz, func_1()) >> ((~countOneBits(vec2<u32>(32574u, 1u)) ^ (select(vec2<u32>(u_input.b, 1u), vec2<u32>(19822u, u_input.a), false) | (vec2<u32>(u_input.d, u_input.b) << (vec2<u32>(20354u, u_input.d) % vec2<u32>(32u))))) % vec2<u32>(32u)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_2(reverseBits(~(~u_input.b)))).x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1498f, -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))) - -1086f));
    var var_2 = var_0;
    let var_3 = Struct_1(reverseBits(_wgslsmith_mod_vec2_i32(-select(var_0.a, var_2.a, global1.x), vec2<i32>(var_2.a.x, global2[_wgslsmith_index_u32(u_input.d, 28u)]))));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1061f));
    global3 = firstTrailingBit(vec3<i32>(2147483647i, -1i, 1557i));
    let var_5 = Struct_1(var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-960f - 572f), -1381f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(839f)) - _wgslsmith_div_f32(-1568f, -886f)), ~13774i >= u_input.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1193f * -281f)))), _wgslsmith_f_op_f32(f32(-1f) * -156f));
}

