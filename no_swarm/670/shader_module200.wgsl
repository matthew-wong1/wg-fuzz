struct Struct_1 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
    d: u32,
    e: vec2<u32>,
}

struct Struct_3 {
    a: i32,
    b: vec3<f32>,
    c: vec4<i32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 28> = array<i32, 28>(20800i, -1i, 45i, i32(-2147483648), 2147483647i, 0i, -33039i, -25731i, -1i, 2147483647i, 36997i, 0i, i32(-2147483648), -1i, 1i, 2147483647i, 38486i, 4192i, 14267i, -1i, -45141i, 0i, 71266i, 15564i, 37430i, 15217i, 92952i, -9462i);

var<private> global1: Struct_1 = Struct_1(vec4<bool>(true, true, false, false), vec2<bool>(false, true), -2561f, 1552f);

var<private> global2: array<i32, 9> = array<i32, 9>(i32(-2147483648), 0i, -46421i, -2919i, 1i, 65267i, 2147483647i, -24385i, -15899i);

var<private> global3: vec4<f32> = vec4<f32>(-2454f, -276f, -1000f, -976f);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> f32 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -198f)), _wgslsmith_f_op_f32(-global1.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x * -283f)), -510f)) * 1733f));
    let var_1 = var_0.x;
    let var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(var_0.x)), _wgslsmith_f_op_f32(exp2(var_0.x))));
    var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.d, _wgslsmith_f_op_f32(1968f + var_0.x), -768f)))));
    let var_3 = firstTrailingBit(~(firstLeadingBit(vec3<u32>(1u, 1u, 1u)) >> (select(vec3<u32>(56646u, 82043u, 29705u), ~vec3<u32>(25881u, 11923u, 1u), global1.a.x) % vec3<u32>(32u))));
    return _wgslsmith_f_op_f32(-1825f - _wgslsmith_f_op_f32(-392f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.d)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(global1.d)), _wgslsmith_f_op_f32(-global3.x)))))));
}

fn func_2() -> Struct_1 {
    global3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global1.c, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(global3.x)))), _wgslsmith_f_op_f32(floor(563f)), global1.d))) * vec4<f32>(-200f, _wgslsmith_div_f32(115f, global1.d), -896f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.d + global1.d)) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3()))))));
    var var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.d, global1.d, -1260f, 560f) * vec4<f32>(-797f, global1.c, global1.c, 1157f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 1639f, -262f, global1.c)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1379f, global3.x, 156f, -498f)))))));
    global3 = vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(494f - _wgslsmith_f_op_f32(1568f - -818f)) * global3.x), var_0.x, true)), _wgslsmith_f_op_f32(-1f), 215f, var_0.x);
    global0 = array<i32, 28>();
    let var_1 = Struct_1(select(vec4<bool>(true, all(vec3<bool>(global1.b.x, false, false)), true, true), global1.a, global1.a), vec2<bool>(global1.b.x, ~_wgslsmith_clamp_i32(u_input.a.x, -2147483647i, 17347i) >= (i32(-1i) * -global0[_wgslsmith_index_u32(6293u, 28u)])), 1000f, -1171f);
    return Struct_1(vec4<bool>(true, _wgslsmith_div_f32(_wgslsmith_div_f32(global1.d, global3.x), var_0.x) == 267f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-127f * global3.x), _wgslsmith_f_op_f32(select(-1622f, -1031f, false)))) >= _wgslsmith_f_op_f32(119f + _wgslsmith_f_op_f32(-611f + global3.x)), var_1.b.x), vec2<bool>(true, var_1.b.x), 1142f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(300f + _wgslsmith_f_op_f32(floor(var_0.x))) - var_0.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1561f - 799f) + _wgslsmith_f_op_f32(max(global3.x, -999f))))))));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_3) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1f, -699f, _wgslsmith_f_op_f32(828f * arg_1.x), _wgslsmith_f_op_f32(global3.x + 757f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(arg_1)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-545f, -986f, arg_2.b.x, 1033f) - vec4<f32>(-1213f, -739f, -838f, -686f))))) + vec4<f32>(arg_2.b.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.x, 1280f)), _wgslsmith_div_f32(func_2().c, 778f), -481f)));
    global1 = arg_0;
    var var_1 = arg_2;
    global1 = func_2();
    let var_2 = false & !global1.b.x;
    return func_2();
}

fn func_1() -> f32 {
    let var_0 = Struct_2(func_4(func_2(), vec4<f32>(_wgslsmith_f_op_f32(-555f + global1.d), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(153f)), 1f, false)), 213f, global1.c), Struct_3(abs(select(global2[_wgslsmith_index_u32(57901u, 9u)], global2[_wgslsmith_index_u32(4294967295u, 9u)], true)), _wgslsmith_f_op_vec3_f32(floor(global3.wxw)), vec4<i32>(global2[_wgslsmith_index_u32(1u, 9u)], -22245i, 1i, 0i) | u_input.a, Struct_2(Struct_1(global1.a, global1.a.xx, -2042f, global1.c), func_2(), _wgslsmith_f_op_vec3_f32(vec3<f32>(-646f, -863f, 879f) - vec3<f32>(global1.d, global3.x, -1337f)), _wgslsmith_div_u32(53718u, 4294967295u), vec2<u32>(8836u, 0u)))), func_2(), _wgslsmith_f_op_vec3_f32(global3.xww + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global1.c, 299f, -634f), vec3<f32>(global1.d, 1898f, global3.x)))))), 4294967295u, _wgslsmith_sub_vec2_u32(vec2<u32>(firstLeadingBit(327u), _wgslsmith_clamp_u32(0u, 9303u, 84492u)), abs(select(countOneBits(vec2<u32>(1u, 40749u)), vec2<u32>(1u, 1u), global1.b.x & global1.b.x))));
    var var_1 = Struct_3(-2147483647i, global3.zwz, ~(-select(u_input.a, vec4<i32>(global2[_wgslsmith_index_u32(36532u, 9u)], 0i, 1i, 2147483647i), var_0.b.a)), Struct_2(var_0.a, Struct_1(!select(global1.a, global1.a, var_0.b.a), var_0.a.b, var_0.c.x, global1.c), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(global3.zxz)) * _wgslsmith_f_op_vec3_f32(var_0.c + var_0.c)))), max(96184u, abs(~var_0.d)), var_0.e << (vec2<u32>(_wgslsmith_mod_u32(var_0.d, 22085u), ~4294967295u) % vec2<u32>(32u))));
    let var_2 = global3.x;
    let var_3 = Struct_1(global1.a, select(var_1.d.b.b, !(!var_0.a.b), false), func_4(func_4(var_0.b, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.b.x, global3.x, var_0.b.c, var_1.b.x))), Struct_3(2147483647i >> (0u % 32u), _wgslsmith_f_op_vec3_f32(global3.wxz - var_1.b), ~var_1.c, var_0)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.c.x, global3.x, _wgslsmith_div_f32(var_1.b.x, global3.x), _wgslsmith_f_op_f32(abs(208f))))), Struct_3(global2[_wgslsmith_index_u32(~var_1.d.e.x, 9u)], var_0.c, _wgslsmith_add_vec4_i32(var_1.c, _wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, u_input.a.x, 9213i, -2960i), vec4<i32>(global0[_wgslsmith_index_u32(63485u, 28u)], -16810i, 49595i, global0[_wgslsmith_index_u32(9012u, 28u)]))), Struct_2(var_0.a, Struct_1(vec4<bool>(false, var_0.a.b.x, true, true), global1.b, -1000f, global3.x), vec3<f32>(var_0.b.c, var_1.d.c.x, global3.x), abs(77412u), var_1.d.e))).d, _wgslsmith_f_op_f32(var_1.d.c.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -1000f))));
    let var_4 = Struct_2(var_0.a, var_1.d.b, vec3<f32>(-1000f, _wgslsmith_f_op_f32(ceil(-1257f)), 631f), 1u, var_0.e);
    return 840f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(global3.xzx))), global3.xyy) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global1.d, global3.x, global1.c)))), vec3<f32>(_wgslsmith_f_op_f32(sign(-315f)), global1.c, _wgslsmith_f_op_f32(func_1()))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-370f, _wgslsmith_f_op_f32(-1000f - global3.x), _wgslsmith_f_op_f32(-global1.c)) + _wgslsmith_f_op_vec3_f32(-global3.zwx))));
    var var_1 = Struct_1(!(!select(select(vec4<bool>(false, false, global1.b.x, false), vec4<bool>(true, global1.b.x, true, global1.a.x), vec4<bool>(global1.b.x, global1.b.x, global1.a.x, true)), func_4(Struct_1(vec4<bool>(global1.b.x, false, global1.b.x, global1.b.x), vec2<bool>(global1.a.x, global1.b.x), global3.x, 266f), vec4<f32>(var_0.x, 982f, var_0.x, global3.x), Struct_3(-7712i, vec3<f32>(216f, var_0.x, global1.d), u_input.a, Struct_2(Struct_1(vec4<bool>(false, true, global1.a.x, true), global1.b, 573f, -586f), Struct_1(global1.a, global1.a.xx, var_0.x, global3.x), global3.yww, 36494u, vec2<u32>(1u, 0u)))).a, true)), !global1.b, var_0.x, _wgslsmith_f_op_f32(func_1()));
    let var_2 = Struct_1(func_4(Struct_1(var_1.a, vec2<bool>(select(global1.a.x, false, true), var_1.a.x), 1884f, global1.c), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.d, _wgslsmith_f_op_f32(f32(-1f) * -1000f), 319f, -111f)), Struct_3(max(select(35843i, global2[_wgslsmith_index_u32(1u, 9u)], true), 4337i), vec3<f32>(_wgslsmith_f_op_f32(step(-1000f, global1.c)), var_1.c, _wgslsmith_f_op_f32(round(var_0.x))), -(~u_input.a), Struct_2(Struct_1(vec4<bool>(var_1.a.x, false, false, var_1.a.x), vec2<bool>(global1.a.x, true), var_1.d, global3.x), func_4(Struct_1(vec4<bool>(global1.a.x, false, var_1.b.x, false), vec2<bool>(var_1.b.x, global1.a.x), 214f, var_0.x), vec4<f32>(var_1.c, global1.c, var_0.x, global3.x), Struct_3(47039i, global3.yzx, u_input.a, Struct_2(Struct_1(var_1.a, vec2<bool>(var_1.b.x, false), var_1.c, 142f), Struct_1(var_1.a, vec2<bool>(true, global1.a.x), 2033f, var_1.d), vec3<f32>(-1438f, -1281f, var_0.x), 0u, vec2<u32>(31043u, 51313u)))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-2000f, var_0.x, var_0.x))), 1u, ~vec2<u32>(40361u, 0u)))).a, func_2().a.zw, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-575f, global3.x))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.d)) - _wgslsmith_f_op_f32(f32(-1f) * -409f))), 724f), -510f);
    let var_3 = u_input.a.zz;
    global0 = array<i32, 28>();
    var_0 = vec3<f32>(var_2.c, -970f, var_0.x);
    global3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(2726f, -248f))))), 463f, var_2.d, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1235f + global3.x))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~(~69624u))));
}

