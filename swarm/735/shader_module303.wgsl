struct Struct_1 {
    a: vec2<f32>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<i32>,
    d: vec4<u32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 115514u;

var<private> global1: vec4<u32>;

var<private> global2: vec4<u32>;

var<private> global3: Struct_1;

var<private> global4: Struct_1 = Struct_1(vec2<f32>(123f, -503f), vec4<u32>(0u, 4294967295u, 28862u, 22195u));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_1() -> u32 {
    return global3.b.x & countOneBits(1u);
}

fn func_3() -> bool {
    let var_0 = vec3<u32>(37933u, abs(global4.b.x), 1u) >> ((_wgslsmith_div_vec3_u32(~global3.b.zyx, vec3<u32>(1u, ~global2.x, global2.x)) << (abs(~abs(vec3<u32>(global2.x, global3.b.x, u_input.a))) % vec3<u32>(32u))) % vec3<u32>(32u));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global3.a.x, 165f))) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -156f), _wgslsmith_f_op_f32(sign(global4.a.x)))))), global4.b);
    global3 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(global3.a, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1266f, global4.a.x), global4.a)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-134f, 968f)))))))), abs(abs(abs(global4.b) ^ (var_1.b ^ vec4<u32>(0u, var_1.b.x, 0u, var_1.b.x)))));
    return true;
}

fn func_2(arg_0: vec2<i32>) -> vec3<bool> {
    let var_0 = arg_0;
    var var_1 = select(true, !(any(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), true)) && true), false);
    var var_2 = !vec3<bool>(true, func_3(), -709f >= _wgslsmith_f_op_f32(max(global4.a.x, global3.a.x)));
    let var_3 = ~vec4<u32>(~_wgslsmith_div_u32(max(global1.x, global4.b.x), ~global4.b.x), ~(~u_input.a) << ((~global3.b.x | ~global2.x) % 32u), ~(~firstLeadingBit(0u)), 1u);
    var_2 = !(!select(vec3<bool>(false, any(vec4<bool>(false, var_2.x, var_2.x, var_2.x)), var_2.x), select(!vec3<bool>(false, var_2.x, true), vec3<bool>(var_2.x, true, false), var_2.x), !(var_0.x != arg_0.x)));
    return select(!select(select(select(vec3<bool>(var_2.x, false, false), vec3<bool>(false, true, var_2.x), var_2.x), vec3<bool>(var_2.x, false, false), vec3<bool>(var_2.x, var_2.x, false)), select(!vec3<bool>(var_2.x, var_2.x, var_2.x), !vec3<bool>(var_2.x, false, false), var_2.x), select(!vec3<bool>(false, false, var_2.x), vec3<bool>(false, false, true), func_3())), select(!vec3<bool>(!var_2.x, global4.a.x >= -157f, var_2.x), vec3<bool>(var_2.x, _wgslsmith_f_op_f32(-global4.a.x) > global3.a.x, any(var_2.zy)), !(_wgslsmith_div_f32(global4.a.x, global3.a.x) > global3.a.x)), var_2.x);
}

fn func_4(arg_0: vec3<bool>) -> vec2<bool> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(global4.a, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global3.a.x, 1968f), global3.a)), global4.a))))), vec4<u32>(_wgslsmith_add_u32(~global2.x, firstLeadingBit(_wgslsmith_mult_u32(17411u, 0u))), global1.x, 2012u, 47379u));
    var var_1 = select(!select(select(vec4<bool>(arg_0.x, arg_0.x, true, true), !vec4<bool>(arg_0.x, false, false, arg_0.x), global3.a.x > global3.a.x), !vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x), vec4<bool>(func_3(), true, arg_0.x, func_2(vec2<i32>(-27122i, -21589i)).x)), vec4<bool>(false, true || func_2(vec2<i32>(-46595i, -2147483647i)).x, true, !func_2(_wgslsmith_mult_vec2_i32(vec2<i32>(25763i, 29138i), vec2<i32>(-13983i, 2916i))).x), vec4<bool>(all(func_2(vec2<i32>(-2147483647i, 0i)).yy), true, arg_0.x, all(select(!vec2<bool>(arg_0.x, arg_0.x), arg_0.xz, arg_0.x))));
    global2 = firstTrailingBit(global4.b);
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, _wgslsmith_div_f32(-1369f, _wgslsmith_div_f32(1000f, var_0.a.x)))), var_0.b);
    let var_3 = Struct_1(var_2.a, firstTrailingBit(global4.b));
    return !vec2<bool>(false, !(!var_1.x || (42074u >= global4.b.x)));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec2<bool>, arg_3: Struct_1) -> Struct_1 {
    return arg_3;
}

fn func_6(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: i32) -> Struct_1 {
    var var_0 = func_5(arg_1, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0.x, global4.a.x, 855f, _wgslsmith_f_op_f32(sign(652f))))))), func_4(func_2(countOneBits(vec2<i32>(arg_3, arg_3)))), arg_1);
    var var_1 = global4.a.x;
    var var_2 = vec3<i32>(-1i) * -_wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(~vec3<i32>(-8731i, arg_3, -2147483647i), _wgslsmith_sub_vec3_i32(vec3<i32>(arg_3, -38162i, -1i), vec3<i32>(-33547i, arg_3, 39254i))), select(vec3<i32>(7789i, 0i, arg_3) | vec3<i32>(arg_3, arg_3, arg_3), select(vec3<i32>(arg_3, arg_3, arg_3), vec3<i32>(-23876i, arg_3, arg_3), arg_2.x), vec3<bool>(false, false, true)), -firstLeadingBit(vec3<i32>(arg_3, -43054i, arg_3)));
    global4 = func_5(arg_1, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -899f) * 1145f), _wgslsmith_f_op_f32(1370f * arg_0.x), _wgslsmith_f_op_f32(arg_1.a.x * var_0.a.x), _wgslsmith_f_op_f32(max(arg_1.a.x, func_5(func_5(arg_1, vec4<f32>(arg_1.a.x, -312f, arg_0.x, -292f), vec2<bool>(true, arg_2.x), arg_1), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1391f, arg_0.x, arg_0.x, -521f))), arg_2.yz, func_5(arg_1, vec4<f32>(arg_0.x, arg_1.a.x, global4.a.x, var_0.a.x), arg_2.ww, Struct_1(vec2<f32>(var_0.a.x, global3.a.x), vec4<u32>(63084u, global2.x, 4294967295u, 1u)))).a.x))), select(!vec2<bool>(2524u <= global1.x, false), !select(vec2<bool>(arg_2.x, arg_2.x), vec2<bool>(arg_2.x, true), true | arg_2.x), arg_2.x), arg_1);
    var var_3 = arg_2.yzz;
    return Struct_1(arg_0, abs(arg_1.b));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = select(~vec4<u32>(u_input.a, 78506u, u_input.a, global4.b.x >> (~113933u % 32u)), vec4<u32>(global3.b.x, global4.b.x, 105106u, ~(~global4.b.x ^ 0u)), true);
    let var_0 = -(vec2<i32>(1i, 0i) << (global2.wz % vec2<u32>(32u)));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global3.a.x, global3.a.x) + global4.a) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global3.a.x, -1000f) - vec2<f32>(global4.a.x, global3.a.x)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(1000f)), global4.a.x))), abs(vec4<u32>(~global1.x ^ ~global3.b.x, 35692u, func_1(), 1u)));
    global0 = global4.b.x;
    var var_2 = func_6(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_1.a), vec2<f32>(_wgslsmith_f_op_f32(-1563f - 378f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(152f)))), select(vec2<bool>(true, true), vec2<bool>(true, all(vec3<bool>(true, false, true))), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), true), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)))))), func_5(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global3.a * vec2<f32>(764f, -679f)) + vec2<f32>(global3.a.x, -768f)), var_1.b ^ vec4<u32>(4294967295u, global1.x, var_1.b.x, 30213u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1447f, 2119f, 233f, global4.a.x), _wgslsmith_div_vec4_f32(vec4<f32>(212f, var_1.a.x, -278f, -1466f), vec4<f32>(global4.a.x, var_1.a.x, global3.a.x, global4.a.x))))), func_4(!func_2(var_0)), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-375f, -634f))), vec4<u32>(~global1.x, max(12317u, global3.b.x), 12142u ^ global1.x, min(u_input.a, 0u)))), !vec4<bool>(true || (var_0.x > 6635i), false, true & any(vec3<bool>(true, false, true)), true), var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(global4.b.xw, max(firstTrailingBit(_wgslsmith_mult_u32(0u, var_2.b.x)), max(~4294967295u, ~4294967295u)), ~(-(select(vec4<i32>(var_0.x, -2147483647i, var_0.x, var_0.x), vec4<i32>(var_0.x, var_0.x, 2147483647i, 31235i), true) ^ (vec4<i32>(var_0.x, var_0.x, var_0.x, var_0.x) & vec4<i32>(var_0.x, -54353i, -1044i, 0i)))), _wgslsmith_add_vec4_u32(max(global4.b, var_1.b), firstLeadingBit(vec4<u32>(global1.x << (16392u % 32u), ~1u, reverseBits(4294967295u), ~1u))), firstLeadingBit(abs(vec3<i32>(var_0.x, abs(var_0.x), 1i))));
}

