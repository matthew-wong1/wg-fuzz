struct Struct_1 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: Struct_1;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: bool) -> f32 {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1023f, -593f, _wgslsmith_f_op_f32(round(arg_0))), global0.b), global0.b);
    global0 = Struct_1(global0.a | abs(vec3<u32>(firstTrailingBit(1u), u_input.a, firstTrailingBit(u_input.a))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1085f * global0.b.x)))))), all(vec4<bool>(false, all(select(vec4<bool>(arg_2, true, false, false), vec4<bool>(false, arg_2, arg_2, false), true)), select(!arg_2, true, all(vec3<bool>(false, global0.d, true))), false)));
    global0 = Struct_1(vec3<u32>(abs(1u), 1u ^ u_input.a, global0.a.x), var_0, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1583f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -860f) + _wgslsmith_f_op_f32(max(-655f, 1976f)))), arg_0, ((arg_1 >> (1u % 32u)) >> (_wgslsmith_mod_u32(107338u, u_input.a) % 32u)) < reverseBits(~u_input.a))), false);
    let var_1 = global0.b.x;
    global0 = Struct_1(_wgslsmith_clamp_vec3_u32(countOneBits(firstTrailingBit(select(global0.a, global0.a, global0.d))), _wgslsmith_mult_vec3_u32(firstLeadingBit(global0.a), vec3<u32>(max(global0.a.x, 0u), _wgslsmith_add_u32(63281u, 31244u), _wgslsmith_clamp_u32(arg_1, 15375u, 1u))), ~vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.a.x, 4294967295u, arg_1, u_input.a), vec4<u32>(u_input.a, 29194u, global0.a.x, 32316u)), _wgslsmith_dot_vec3_u32(global0.a, vec3<u32>(19342u, u_input.a, 1u)), 0u)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1355f * -1874f) + -2913f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), -130f), _wgslsmith_div_f32(294f, _wgslsmith_f_op_f32(min(var_0.x, 287f)))) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0)), global0.b))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), false);
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -558f) - _wgslsmith_f_op_f32(-100f + arg_0))));
}

fn func_2(arg_0: vec4<f32>, arg_1: bool, arg_2: vec2<i32>, arg_3: f32) -> u32 {
    var var_0 = global0.d;
    var var_1 = Struct_1(~global0.a, _wgslsmith_f_op_vec3_f32(global0.b - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(global0.b, global0.b, global0.d == true)) + global0.b)), _wgslsmith_f_op_f32(min(arg_3, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(step(-1000f, -1215f)), 37309u, select(global0.d, true, global0.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1452f, -1499f))))))), arg_1);
    var var_2 = ~(~(~(vec4<u32>(0u, 66231u, u_input.a, 1u) >> (vec4<u32>(4294967295u, global0.a.x, u_input.a, 4294967295u) % vec4<u32>(32u))))) | ~(~(~min(vec4<u32>(1u, var_1.a.x, 1u, 0u), vec4<u32>(1u, 4294967295u, var_1.a.x, 59876u))));
    let var_3 = Struct_1(var_2.yzx, arg_0.xxx, -718f, !var_1.d);
    var_1 = var_3;
    return var_3.a.x;
}

fn func_1() -> vec3<f32> {
    var var_0 = func_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.x))), _wgslsmith_f_op_f32(step(-1477f, _wgslsmith_f_op_f32(step(-364f, _wgslsmith_f_op_f32(step(1000f, -743f)))))), 388f, global0.c), false, ~(-(~(~vec2<i32>(1341i, -31719i)))), _wgslsmith_div_f32(-1041f, global0.b.x));
    let var_1 = Struct_1(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u & max(u_input.a, global0.a.x), 10042u, global0.a.x), firstLeadingBit(global0.a ^ vec3<u32>(u_input.a, 7836u, global0.a.x)) >> (vec3<u32>(~0u, u_input.a, ~u_input.a) % vec3<u32>(32u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(2306f)), _wgslsmith_f_op_f32(global0.b.x - -1652f), global0.b.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(362f, global0.c, -1000f)))) * global0.b), _wgslsmith_f_op_f32(869f + global0.b.x), 1i == abs(1i >> (_wgslsmith_add_u32(u_input.a, global0.a.x) % 32u)));
    var_0 = _wgslsmith_dot_vec2_u32(var_1.a.zz, ~(~vec2<u32>(1u, 1u) & abs(vec2<u32>(34983u, global0.a.x))));
    let var_2 = Struct_1(vec3<u32>(min(firstLeadingBit(firstLeadingBit(60164u)), _wgslsmith_sub_u32(~global0.a.x, var_1.a.x)), u_input.a, _wgslsmith_mod_u32(var_1.a.x ^ ~var_1.a.x, 25802u)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1097f), global0.b.x, -195f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.b))), _wgslsmith_f_op_f32(step(-1000f, global0.c)), false);
    let var_3 = vec3<bool>(!all(select(select(vec3<bool>(true, var_2.d, global0.d), vec3<bool>(var_2.d, false, var_1.d), false), !vec3<bool>(global0.d, global0.d, false), select(vec3<bool>(true, global0.d, var_2.d), vec3<bool>(true, global0.d, var_2.d), vec3<bool>(false, var_2.d, false)))), true, true);
    return var_2.b;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    let var_0 = !select(vec4<bool>(all(vec3<bool>(arg_1.d, global0.d, false)), arg_0.d, arg_1.d, any(!vec4<bool>(arg_1.d, false, false, arg_0.d))), vec4<bool>(arg_0.d, !global0.d, true, global0.d | (540f > arg_0.b.x)), vec4<bool>(false, any(vec2<bool>(true, arg_1.d)), u_input.a > u_input.a, false));
    global0 = Struct_1(~(~(~global0.a)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_0.c, -2360f, -727f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.c, 926f, 797f), vec3<f32>(652f, 748f, 712f)) - arg_0.b), var_0.yxy)) * global0.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c)), true);
    var var_1 = global0.d;
    global0 = Struct_1(_wgslsmith_add_vec3_u32(global0.a, arg_1.a) << (arg_0.a % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1())), _wgslsmith_f_op_f32(-arg_1.c), false);
    global0 = arg_1;
    return arg_1;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<i32>) -> Struct_1 {
    var var_0 = func_4(func_4(Struct_1(vec3<u32>(global0.a.x, firstTrailingBit(0u), _wgslsmith_mod_u32(global0.a.x, arg_0.a.x)), global0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(430f, 4294967295u, global0.d))), any(select(vec3<bool>(true, global0.d, arg_0.d), vec3<bool>(true, arg_1.d, global0.d), vec3<bool>(false, arg_0.d, arg_0.d)))), Struct_1(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.a.x, u_input.a, 10798u, 0u), vec4<u32>(arg_0.a.x, 0u, arg_1.a.x, 60307u)), ~global0.a.x, arg_0.a.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1447f) * _wgslsmith_f_op_f32(arg_1.b.x * -748f)), arg_1.d), ~103201u), Struct_1(vec3<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(arg_1.a.x, 2955u), ~vec2<u32>(0u, arg_1.a.x)), _wgslsmith_add_u32(reverseBits(0u), global0.a.x), abs(global0.a.x ^ global0.a.x)), arg_1.b, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1.b.x))), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(-arg_1.b.x), arg_0.a.x, any(vec2<bool>(global0.d, true)))))), any(vec2<bool>(true, global0.d))), 1u);
    var var_1 = func_4(arg_0, func_4(func_4(arg_0, Struct_1(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 1u, 4294967295u), arg_0.a), _wgslsmith_f_op_vec3_f32(sign(global0.b)), 508f, 144f == global0.c), 0u), func_4(Struct_1(max(vec3<u32>(var_0.a.x, 0u, 18526u), var_0.a), vec3<f32>(431f, 376f, 996f), var_0.c, true), func_4(Struct_1(arg_0.a, global0.b, var_0.c, false), arg_0, 75983u), countOneBits(2022u)), 0u), 18758u);
    var_0 = func_4(func_4(func_4(func_4(Struct_1(vec3<u32>(u_input.a, global0.a.x, 17919u), vec3<f32>(381f, 715f, 732f), -2628f, arg_0.d), Struct_1(var_0.a, vec3<f32>(382f, 296f, -1000f), var_0.c, var_0.d), ~u_input.a), Struct_1(vec3<u32>(var_0.a.x, 0u, 42214u), vec3<f32>(var_1.b.x, global0.c, var_1.c), _wgslsmith_f_op_f32(-arg_0.c), true), global0.a.x ^ func_4(arg_0, arg_1, u_input.a).a.x), arg_1, ~_wgslsmith_mod_u32(_wgslsmith_add_u32(var_0.a.x, arg_0.a.x), arg_0.a.x)), func_4(arg_0, arg_0, ~4294967295u | global0.a.x), ~_wgslsmith_div_u32(arg_0.a.x, global0.a.x & _wgslsmith_mod_u32(arg_1.a.x, arg_1.a.x)));
    let var_2 = !select(select(vec4<bool>(!var_0.d, false, global0.d, true), !vec4<bool>(var_1.d, false, true, false), true), vec4<bool>(all(vec2<bool>(false, arg_0.d)) || true, var_1.d, any(vec3<bool>(true, arg_0.d, arg_1.d)), false), true);
    let var_3 = arg_1;
    return func_4(Struct_1(~var_3.a, _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1000f + -1168f), _wgslsmith_f_op_f32(-global0.c), var_1.c), vec3<f32>(_wgslsmith_f_op_f32(max(var_3.c, global0.b.x)), _wgslsmith_f_op_f32(step(2349f, 197f)), _wgslsmith_f_op_f32(trunc(132f)))), _wgslsmith_div_f32(global0.c, _wgslsmith_f_op_vec3_f32(func_1()).x), var_3.d), Struct_1(abs(_wgslsmith_mult_vec3_u32(var_1.a, vec3<u32>(var_1.a.x, arg_1.a.x, u_input.a))), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(global0.c)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_1()).x + _wgslsmith_f_op_f32(min(arg_0.c, -1428f))), arg_1.c), var_3.c, false), select(arg_1.a.x, 1u, any(var_2)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1u;
    var var_1 = global0.a;
    global0 = func_5(func_4(Struct_1(global0.a, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(func_1()))), global0.b.x, true), Struct_1(~global0.a, vec3<f32>(_wgslsmith_f_op_f32(-global0.c), -458f, -312f), _wgslsmith_div_f32(_wgslsmith_f_op_vec3_f32(func_1()).x, _wgslsmith_f_op_f32(-global0.c)), global0.d != all(vec3<bool>(false, global0.d, global0.d))), _wgslsmith_dot_vec2_u32(firstTrailingBit(~global0.a.xx), vec2<u32>(~global0.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_1.x, var_1.x, var_1.x), vec4<u32>(global0.a.x, 26957u, 480u, var_0))))), Struct_1(vec3<u32>(countOneBits(_wgslsmith_add_u32(1u, u_input.a)), min(var_0 | 39007u, 0u), _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, var_1.x, 1193u), reverseBits(vec3<u32>(0u, 0u, 85207u)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global0.c * global0.b.x), _wgslsmith_f_op_f32(trunc(-1087f)), 331f)), global0.c, global0.d), ~max(vec3<i32>(~(-1i), abs(-10611i), max(19826i, -2147483647i)), vec3<i32>(36453i, 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-25589i, -73412i, -13960i, 1i), vec4<i32>(-2147483647i, 1i, -5263i, 2147483647i)))));
    var_1 = global0.a;
    var_1 = vec3<u32>(min(func_4(Struct_1(~vec3<u32>(var_1.x, u_input.a, 1u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.x, 396f, 542f)), global0.c, true), func_5(Struct_1(global0.a, vec3<f32>(-224f, global0.b.x, global0.b.x), global0.c, false), func_4(Struct_1(vec3<u32>(var_1.x, 76478u, var_0), vec3<f32>(global0.c, global0.b.x, -1000f), global0.c, global0.d), Struct_1(vec3<u32>(10738u, var_1.x, u_input.a), vec3<f32>(-2442f, -1120f, 816f), global0.b.x, true), 1u), ~vec3<i32>(1i, -2147483647i, 2020i)), reverseBits(func_4(Struct_1(global0.a, global0.b, -1672f, global0.d), Struct_1(global0.a, vec3<f32>(global0.c, 1528f, -504f), global0.c, false), var_1.x).a.x)).a.x, reverseBits(min(~global0.a.x, global0.a.x))), _wgslsmith_add_u32(~(~17703u >> (var_0 % 32u)), var_0), 4294967295u);
    var var_2 = countOneBits(~max(~reverseBits(vec4<u32>(global0.a.x, 1u, global0.a.x, var_1.x)), ~(~vec4<u32>(0u, var_1.x, 997u, 2844u))));
    let var_3 = Struct_1(var_2.xwy, global0.b, func_4(func_5(Struct_1(_wgslsmith_add_vec3_u32(vec3<u32>(59691u, var_1.x, global0.a.x), global0.a), _wgslsmith_f_op_vec3_f32(global0.b * global0.b), global0.b.x, !global0.d), Struct_1(var_2.xwy << (global0.a % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1572f, global0.b.x, global0.c)), 722f, any(vec2<bool>(false, global0.d))), -max(vec3<i32>(2147483647i, 1i, -11022i), vec3<i32>(47122i, 47113i, 2147483647i))), Struct_1(global0.a, global0.b, func_4(func_4(Struct_1(vec3<u32>(var_0, 8608u, 1u), vec3<f32>(global0.c, global0.b.x, 293f), global0.c, global0.d), Struct_1(vec3<u32>(global0.a.x, 4294967295u, 7345u), global0.b, global0.c, global0.d), 51209u), Struct_1(global0.a, vec3<f32>(global0.c, global0.b.x, -1648f), -1000f, global0.d), var_0).c, global0.d & global0.d), var_2.x).c, true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(~39493u, var_0));
}

