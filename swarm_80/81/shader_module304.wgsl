struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(1034f));

var<private> global1: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(-2468f), Struct_1(-1000f), Struct_1(1465f), Struct_1(1117f), Struct_1(959f), Struct_1(-341f), Struct_1(-630f), Struct_1(1000f), Struct_1(-772f), Struct_1(1745f), Struct_1(-1602f), Struct_1(-1331f), Struct_1(-456f), Struct_1(-1054f), Struct_1(-388f), Struct_1(557f), Struct_1(2009f), Struct_1(-110f), Struct_1(-916f), Struct_1(-264f), Struct_1(-1027f), Struct_1(1739f), Struct_1(132f), Struct_1(-770f), Struct_1(-448f), Struct_1(210f), Struct_1(672f), Struct_1(-1205f), Struct_1(-828f));

var<private> global2: vec3<u32>;

var<private> global3: Struct_1 = Struct_1(-1143f);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<bool>) -> bool {
    var var_0 = vec3<i32>(_wgslsmith_add_i32(u_input.c.x, 1i) << (0u % 32u), abs(_wgslsmith_sub_i32(i32(-1i) * -64563i, _wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(-44202i, 0i, u_input.b.x))) | 2718i), i32(-1i) * -max(u_input.b.x, ~u_input.c.x));
    var var_1 = Struct_1(global3.a);
    let var_2 = Struct_2(global0.a);
    global1 = array<Struct_1, 29>();
    var var_3 = global0.a;
    return select(arg_0.x && !all(select(vec3<bool>(true, false, arg_0.x), arg_0.xxy, arg_0.x)), !any(select(vec2<bool>(arg_0.x, true), arg_0.zy, arg_0.xx)), ~u_input.a.x <= u_input.a.x);
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: vec4<u32>, arg_3: Struct_3) -> vec2<u32> {
    let var_0 = true;
    var var_1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-global3.a), _wgslsmith_f_op_f32(exp2(global0.a.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + arg_0) * 251f), global3.a), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-global3.a), _wgslsmith_f_op_f32(min(557f, 110f)), -564f) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, global0.a.a, 2370f, global0.a.a))))), select(!(!vec4<bool>(false, false, var_0, true)), !(!vec4<bool>(arg_1.a.x, arg_3.a.x, var_0, arg_3.a.x)), (arg_1.a.x || arg_3.a.x) && all(vec3<bool>(arg_3.a.x, var_0, var_0)))))));
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(floor(global3.a)), 402f, arg_0, _wgslsmith_f_op_f32(ceil(global3.a))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, global3.a, -533f, var_1.x) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(586f, -883f, -349f, global3.a))), select(select(vec4<bool>(var_0, arg_1.a.x, arg_3.a.x, arg_1.a.x), vec4<bool>(true, false, true, arg_3.a.x), vec4<bool>(true, arg_1.a.x, false, true)), vec4<bool>(false, true, var_0, arg_3.a.x), vec4<bool>(true, false, false, var_0)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0)) * _wgslsmith_f_op_f32(f32(-1f) * -169f)), _wgslsmith_f_op_f32(global0.a.a + var_1.x), arg_0, 108f))));
    global3 = global0.a;
    global3 = global1[_wgslsmith_index_u32(~38588u << (reverseBits(~_wgslsmith_div_u32(firstTrailingBit(u_input.a.x), _wgslsmith_div_u32(u_input.a.x, 23433u))) % 32u), 29u)];
    return abs(~countOneBits(vec2<u32>(1050u, global2.x)) >> (vec2<u32>(~4294967295u, _wgslsmith_clamp_u32(0u, 4294967295u, arg_2.x)) % vec2<u32>(32u))) & firstTrailingBit(abs(firstLeadingBit(vec2<u32>(global2.x, 1u))));
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: u32) -> bool {
    var var_0 = _wgslsmith_add_vec2_u32(func_4(global0.a.a, Struct_3(vec2<bool>(!arg_1, true)), abs(vec4<u32>(abs(arg_2), global2.x, 4473u, max(48436u, u_input.a.x))), Struct_3(select(vec2<bool>(true, true), !vec2<bool>(arg_1, arg_1), func_3(vec4<bool>(false, arg_1, false, true))))), select(~vec2<u32>(u_input.a.x, abs(7095u)), vec2<u32>(~248u, u_input.a.x) >> (u_input.a.wx % vec2<u32>(32u)), select(false, true, !arg_1 | true)));
    var var_1 = ~_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(global2.x, global2.x, 52790u), u_input.a.zyx), u_input.a.ywy), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, abs(var_0.x), _wgslsmith_sub_u32(4294967295u, var_0.x)), u_input.a.zwx));
    var var_2 = u_input.a;
    var var_3 = all(select(!select(!vec3<bool>(arg_1, true, true), vec3<bool>(true, true, false), false), select(vec3<bool>(arg_1, false, arg_1), select(vec3<bool>(true, false, false), vec3<bool>(arg_1, arg_1, true), !vec3<bool>(arg_1, true, arg_1)), 1u < var_0.x), false));
    let var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-763f, 274f)) * _wgslsmith_div_vec2_f32(vec2<f32>(2015f, global0.a.a), vec2<f32>(global0.a.a, 1753f))))))) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(trunc(global3.a)), 2026f), vec2<f32>(_wgslsmith_f_op_f32(337f + _wgslsmith_f_op_f32(abs(-1043f))), global0.a.a))));
    return true;
}

fn func_5(arg_0: Struct_3, arg_1: u32) -> vec2<f32> {
    let var_0 = -countOneBits(u_input.c);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(1253f - _wgslsmith_div_f32(global0.a.a, _wgslsmith_f_op_f32(-global3.a))));
    global0 = Struct_2(var_1);
    global1 = array<Struct_1, 29>();
    global0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(round(global0.a.a))));
    return _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-196f, -1574f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.a, global0.a.a)), arg_0.a)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1299f, 1000f), vec2<f32>(882f, global0.a.a)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1107f, -1593f)))))));
}

fn func_6(arg_0: vec2<f32>) -> Struct_1 {
    global3 = Struct_1(-806f);
    var var_0 = -(~(-firstLeadingBit(-43466i))) & u_input.c.x;
    var var_1 = global1[_wgslsmith_index_u32(firstTrailingBit(u_input.a.x), 29u)];
    global3 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.a.a, 433f) - 1000f)))));
    var_0 = 21047i;
    return Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0.x + -1305f))));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec3<u32>, arg_2: vec2<u32>, arg_3: vec3<i32>) -> Struct_3 {
    global3 = func_6(_wgslsmith_f_op_vec2_f32(func_5(Struct_3(select(vec2<bool>(true, true), vec2<bool>(true, false), true)), select(arg_1.x, ~32660u, func_2(12720i, false, 55387u)))));
    global2 = u_input.a.xzx;
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-global3.a));
    let var_1 = vec3<i32>(~arg_3.x, -41127i, 21090i);
    let var_2 = func_6(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.a))))));
    return Struct_3(vec2<bool>(true, func_2(min(_wgslsmith_sub_i32(3871i, var_1.x), ~1i), func_3(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true))), ~(~arg_0.x))));
}

fn func_7(arg_0: Struct_3, arg_1: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global3.a, global0.a.a, 559f, -1370f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-970f, arg_1.a, -176f, 305f))))))));
    global0 = Struct_2(func_6(var_0.wz));
    var var_1 = vec3<bool>(true, (func_2(0i, arg_0.a.x, _wgslsmith_sub_u32(11548u, u_input.a.x)) & arg_0.a.x) && arg_0.a.x, false);
    let var_2 = min(reverseBits(select(abs(firstTrailingBit(u_input.a.zwx)), abs(_wgslsmith_clamp_vec3_u32(u_input.a.xzw, vec3<u32>(70161u, global2.x, u_input.a.x), vec3<u32>(504u, 4294967295u, u_input.a.x))), false)), vec3<u32>(_wgslsmith_dot_vec3_u32(~u_input.a.zyx, u_input.a.ywx), global2.x, ~(~(78474u ^ u_input.a.x))));
    global1 = array<Struct_1, 29>();
    return global1[_wgslsmith_index_u32(reverseBits(var_2.x), 29u)];
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_7(func_1(u_input.a.xwz, ~(firstTrailingBit(u_input.a.zwx) ^ u_input.a.yww), reverseBits(global2.yz), u_input.b), Struct_1(global0.a.a));
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-882f, 620f), global3.a, any(!vec4<bool>(false, global3.a > -562f, true, any(vec4<bool>(true, true, false, false))))));
    let var_1 = 2147483647i;
    let var_2 = Struct_2(func_7(Struct_3(vec2<bool>(true, true)), func_6(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(global3.a, var_0) - vec2<f32>(global0.a.a, global0.a.a)))))));
    global1 = array<Struct_1, 29>();
    let var_3 = _wgslsmith_f_op_f32(-global0.a.a);
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1261f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(266f))), -598f, global0.a.a) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-665f, 413f, 133f, -1479f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, 1000f, -586f, global0.a.a))))))));
    var var_5 = firstTrailingBit(vec2<i32>(1i, u_input.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a.wyx, var_1, u_input.a.x);
}

