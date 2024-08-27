struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec4<f32>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: f32) -> Struct_1 {
    let var_0 = 78135u;
    var var_1 = -(abs(_wgslsmith_div_vec3_i32(u_input.c, u_input.c ^ vec3<i32>(u_input.a, global0.d, 0i))) & vec3<i32>(global0.b.a, 1i, global0.b.a));
    var var_2 = countOneBits(max(abs(vec4<u32>(~34164u, _wgslsmith_add_u32(u_input.b.x, 90752u), 1u, ~4294967295u)), vec4<u32>(4294967295u, 1u, ~(0u >> (1u % 32u)), _wgslsmith_sub_u32(_wgslsmith_add_u32(var_0, 4294967295u), 12900u))));
    var var_3 = Struct_1(-1i ^ (var_1.x & countOneBits(0i)));
    let var_4 = global0.b;
    return global0.b;
}

fn func_3(arg_0: vec2<f32>, arg_1: vec3<u32>) -> bool {
    global0 = Struct_2(_wgslsmith_f_op_vec2_f32(round(global0.c.zy)), global0.b, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(667f * global0.c.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1847f * arg_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0.x)) + _wgslsmith_f_op_f32(-arg_0.x))) * global0.c), -1i);
    global0 = Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(669f, arg_0.x) * _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, _wgslsmith_div_f32(-2002f, 1716f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, 1673f)))), global0.b, global0.c, -(u_input.c.x | reverseBits(select(global0.b.a, u_input.c.x, true))));
    global0 = Struct_2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1232f, global0.c.x)) + vec2<f32>(arg_0.x, arg_0.x)), arg_0))), func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-242f, -980f) - _wgslsmith_f_op_f32(-global0.c.x)) + 1489f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-697f, arg_0.x)), -592f, _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(f32(-1f) * -237f)))), ~_wgslsmith_mult_i32(1i, select(-1i, 59487i, select(false, true, false))));
    global0 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_0.x, 150f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0) * _wgslsmith_f_op_vec2_f32(sign(arg_0)))), Struct_1(firstTrailingBit(firstLeadingBit(~global0.d))), vec4<f32>(_wgslsmith_div_f32(global0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1264f, -247f, true)))), 1f, _wgslsmith_f_op_f32(step(441f, _wgslsmith_f_op_f32(select(-1360f, arg_0.x, true)))), -550f), countOneBits(-10073i));
    global0 = Struct_2(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0 + arg_0) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global0.c.x, -1909f)))), global0.c.zy)), func_2(global0.a.x), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-global0.c), vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(ceil(arg_0.x)), _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(abs(global0.a.x))))), global0.c)), -2147483647i);
    return all(vec4<bool>(true, !all(vec2<bool>(true, true)), any(select(vec3<bool>(true, false, false), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true), true)), true));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: u32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(global0.c.yyy + vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0.c.x)) + -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(379f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.c.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-306f, global0.a.x, false))))), 138f));
    let var_1 = true;
    let var_2 = Struct_1(-36982i);
    let var_3 = max(69770u, arg_3);
    let var_4 = func_2(-104f);
    return Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.c.x, 1500f) * global0.a)) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(var_0.xy, global0.c.wx, vec2<bool>(true, true))), vec2<f32>(-495f, global0.c.x), vec2<bool>(true, true)))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(var_0.xy)), vec2<f32>(global0.c.x, var_0.x), arg_2.x)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2206f, global0.c.x)))))), Struct_1(firstLeadingBit(1i)), vec4<f32>(_wgslsmith_f_op_f32(1f - -584f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) + _wgslsmith_f_op_f32(-230f * -1000f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -738f) + _wgslsmith_f_op_f32(global0.c.x + 562f))), var_0.x, _wgslsmith_f_op_f32(var_0.x - var_0.x)), _wgslsmith_div_i32(arg_1.a, u_input.d.x));
}

fn func_1(arg_0: vec3<i32>) -> f32 {
    var var_0 = func_4(false, func_2(_wgslsmith_f_op_f32(max(-550f, global0.a.x))), !(!vec4<bool>(true, func_3(global0.c.xx, u_input.b.xyz), func_3(global0.a, u_input.b.ywz), select(true, false, true))), u_input.b.x);
    let var_1 = func_4(true, Struct_1(arg_0.x), select(select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false)), vec4<bool>(true, var_0.c.x >= global0.a.x, any(vec3<bool>(false, true, false)), select(true, true, false)), !func_3(vec2<f32>(var_0.c.x, -930f), vec3<u32>(u_input.b.x, 6856u, u_input.b.x))), !vec4<bool>(select(false, false, false), false, select(true, true, false), all(vec2<bool>(false, false))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), true), vec4<bool>(true, true, true, true), any(vec4<bool>(true, false, true, true)) && any(vec3<bool>(true, false, false)))), 3795u);
    var_0 = var_1;
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_1.c - var_1.c) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, -1578f, var_1.a.x, 578f) + var_1.c)), vec4<f32>(var_1.a.x, _wgslsmith_f_op_f32(global0.c.x - -564f), 717f, _wgslsmith_f_op_f32(-var_1.c.x)), !all(vec3<bool>(false, true, true)))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.c.x, global0.a.x, -2779f, 1388f)))), vec4<f32>(var_1.c.x, _wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(f32(-1f) * -309f), func_4(true, Struct_1(-2147483647i), vec4<bool>(false, false, true, true), 7869u).a.x)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(var_0.c)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1628f, var_1.a.x, -2481f, var_1.c.x)), !func_3(vec2<f32>(237f, -2515f), u_input.b.wwy)))));
    var var_3 = abs(~max(reverseBits(firstTrailingBit(u_input.b.yxx)), _wgslsmith_sub_vec3_u32(u_input.b.xzw, vec3<u32>(u_input.b.x, u_input.b.x, 29245u)) >> (vec3<u32>(u_input.b.x, u_input.b.x, 0u) % vec3<u32>(32u))));
    return 1354f;
}

fn func_5(arg_0: vec3<f32>, arg_1: vec3<f32>, arg_2: bool, arg_3: vec4<bool>) -> Struct_2 {
    global0 = func_4(false, global0.b, !select(select(!vec4<bool>(false, true, false, arg_2), select(arg_3, vec4<bool>(arg_3.x, false, false, arg_3.x), arg_2), arg_3), arg_3, arg_3), u_input.b.x);
    var var_0 = -2011f;
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(-global0.a), Struct_1(-34738i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec3<i32>(-1i, global0.d, u_input.d.x))) * global0.c.x), -519f, arg_1.x, arg_0.x)), u_input.d.x);
    let var_2 = 1u;
    var var_3 = reverseBits(u_input.b.yz);
    return Struct_2(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.x, 100f) - _wgslsmith_f_op_vec2_f32(arg_0.zx + vec2<f32>(-1043f, arg_1.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-582f, -1825f)))))), Struct_1(var_1.d), _wgslsmith_f_op_vec4_f32(round(var_1.c)), ~(-_wgslsmith_add_i32(u_input.a, 0i) & u_input.d.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(global0.a.x)), global0.a.x, _wgslsmith_f_op_f32(global0.a.x - global0.c.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.x, global0.c.x, global0.a.x))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.a.x))) - -2127f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec3<i32>(u_input.a, global0.b.a, 0i))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(global0.c.x, 1467f)), _wgslsmith_f_op_f32(exp2(global0.a.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-865f)) - 776f)), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), !all(vec2<bool>(true, true)))), vec4<bool>(true, true, !all(vec4<bool>(true, true, true, true)), all(vec4<bool>(all(vec2<bool>(true, true)), true, true, all(vec3<bool>(true, false, false))))));
    let var_0 = abs(abs(reverseBits(~abs(vec2<i32>(-1i, 8407i)))));
    let var_1 = 29012i;
    var var_2 = 4294967295u < ~(~(~u_input.b.x));
    let var_3 = Struct_2(global0.c.zx, global0.b, vec4<f32>(423f, _wgslsmith_div_f32(-953f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-149f - 1000f), _wgslsmith_f_op_f32(-global0.c.x)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-2023f * global0.c.x), -838f)), _wgslsmith_f_op_f32(-global0.a.x)), 1i);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(12366u, 55084u, max(firstLeadingBit(4294967295u), min(~u_input.b.x, u_input.b.x)), u_input.b.x), abs(~14289u));
}

