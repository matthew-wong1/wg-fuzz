struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: f32,
    d: bool,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: i32,
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

var<private> global0: vec3<bool>;

var<private> global1: bool;

var<private> global2: array<i32, 5> = array<i32, 5>(1i, -5500i, -37228i, i32(-2147483648), 5655i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> i32 {
    global2 = array<i32, 5>();
    global2 = array<i32, 5>();
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -288f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(327f, -731f)), _wgslsmith_f_op_f32(round(578f))), _wgslsmith_f_op_f32(select(-1075f, _wgslsmith_f_op_f32(trunc(108f)), all(global0.yx))), any(select(vec4<bool>(false, global0.x, false, false), vec4<bool>(true, false, global0.x, global0.x), global0.x))))));
    let var_1 = all(select(!vec4<bool>(u_input.a.x < u_input.a.x, any(global0.yz), global0.x, !global0.x), !select(vec4<bool>(global0.x, global0.x, global0.x, false), select(vec4<bool>(global0.x, global0.x, false, global0.x), vec4<bool>(false, true, false, global0.x), false), all(vec3<bool>(global0.x, global0.x, global0.x))), all(select(select(vec3<bool>(true, false, global0.x), vec3<bool>(true, false, false), vec3<bool>(global0.x, global0.x, false)), vec3<bool>(global0.x, true, false), select(vec3<bool>(true, global0.x, false), vec3<bool>(global0.x, false, true), vec3<bool>(false, false, true))))));
    global1 = true;
    return _wgslsmith_mod_i32(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(~_wgslsmith_div_u32(29024u, u_input.a.x), u_input.a.x), 5u)], ~(~(u_input.c >> (u_input.a.x % 32u)))) >> (26137u % 32u);
}

fn func_2(arg_0: vec3<bool>, arg_1: u32, arg_2: vec2<f32>, arg_3: i32) -> f32 {
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) * _wgslsmith_div_f32(233f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) + arg_2.x))) >= _wgslsmith_f_op_f32(f32(-1f) * -615f);
    global0 = arg_0;
    var var_0 = abs(_wgslsmith_clamp_i32(func_3(), min(arg_3, -arg_3), global2[_wgslsmith_index_u32(abs(0u), 5u)]));
    var_0 = u_input.b.x;
    let var_1 = Struct_1(_wgslsmith_mult_u32(_wgslsmith_div_u32(arg_1 ^ 4294967295u, _wgslsmith_clamp_u32(arg_1, 16509u, ~arg_1)), ~3641u), vec4<u32>(max(~(~9614u), select(_wgslsmith_mult_u32(u_input.a.x, 119022u), _wgslsmith_mod_u32(1u, 103057u), any(vec2<bool>(false, global0.x)))), 11915u, min(_wgslsmith_mult_u32(u_input.a.x, 4294967295u), u_input.a.x) << (~51123u % 32u), 1u), 293f, _wgslsmith_clamp_i32(reverseBits(-11292i), (i32(-1i) * -1i) >> (1u % 32u), -59756i) < -2147483647i, ~(~(-(~vec4<i32>(28129i, 104444i, global2[_wgslsmith_index_u32(4294967295u, 5u)], 1i)))));
    return 523f;
}

fn func_1(arg_0: vec3<u32>, arg_1: bool, arg_2: i32, arg_3: vec4<i32>) -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_div_f32(-417f, 595f), _wgslsmith_f_op_f32(trunc(-1881f)), 618f, -761f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-778f - -1063f), _wgslsmith_f_op_f32(-1237f - 191f), _wgslsmith_f_op_f32(func_2(vec3<bool>(true, true, false), u_input.a.x, vec2<f32>(2594f, 428f), -49719i)), _wgslsmith_div_f32(-103f, 703f)))), vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1546f - _wgslsmith_f_op_f32(304f + 445f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-367f, 453f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -520f))), 417f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(306f))))), select(select(vec4<bool>(true, !arg_1, true, true), select(!vec4<bool>(global0.x, false, false, global0.x), vec4<bool>(global0.x, true, global0.x, global0.x), all(vec4<bool>(arg_1, arg_1, arg_1, global0.x))), select(!vec4<bool>(false, arg_1, true, false), select(vec4<bool>(global0.x, true, false, global0.x), vec4<bool>(true, true, true, arg_1), vec4<bool>(arg_1, global0.x, true, arg_1)), vec4<bool>(false, global0.x, false, global0.x))), vec4<bool>(true, !any(vec4<bool>(global0.x, global0.x, false, false)), true, false), vec4<bool>(!any(vec4<bool>(false, arg_1, true, arg_1)), false, true, false))));
    global2 = array<i32, 5>();
    let var_1 = select(vec4<bool>(any(vec2<bool>(any(vec4<bool>(arg_1, arg_1, false, false)), true)), true, false, true), select(select(!(!vec4<bool>(arg_1, false, true, true)), !select(vec4<bool>(false, true, arg_1, global0.x), vec4<bool>(global0.x, arg_1, arg_1, true), false), any(global0.yx)), select(vec4<bool>(any(global0.xz), global2[_wgslsmith_index_u32(17703u, 5u)] <= 8830i, true, any(vec4<bool>(global0.x, true, false, global0.x))), vec4<bool>(true, any(vec3<bool>(true, arg_1, false)), all(vec4<bool>(arg_1, true, true, false)), arg_1), !select(vec4<bool>(arg_1, global0.x, global0.x, arg_1), vec4<bool>(false, false, false, global0.x), false)), !(!(!vec4<bool>(global0.x, true, false, false)))), vec4<bool>(arg_1, all(!vec3<bool>(false, global0.x, arg_1)), !any(select(vec3<bool>(false, global0.x, true), vec3<bool>(false, true, true), arg_1)), false));
    var var_2 = Struct_2(Struct_1(~u_input.a.x << (4294967295u % 32u), max(vec4<u32>(104271u, arg_0.x, 1402u, 4294967295u) << (vec4<u32>(u_input.a.x, arg_0.x, 4294967295u, arg_0.x) % vec4<u32>(32u)), firstTrailingBit(_wgslsmith_div_vec4_u32(u_input.a, u_input.a))), -1770f, any(global0.zy), vec4<i32>(0i, 0i, -_wgslsmith_mult_i32(u_input.c, -19416i), -1i)), Struct_1(_wgslsmith_div_u32(arg_0.x, 4294967295u) | ~u_input.a.x, abs(vec4<u32>(0u, arg_0.x, 1u << (arg_0.x % 32u), 0u)), _wgslsmith_f_op_f32(-427f * _wgslsmith_f_op_f32(step(433f, 485f))), arg_1, reverseBits(_wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(arg_3, arg_3), -vec4<i32>(44042i, 31860i, 0i, -2147483647i)))), vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.x)) * 713f))), 1000f, -187f), Struct_1(u_input.a.x, u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.x)))), all(!select(var_1, vec4<bool>(arg_1, true, global0.x, true), true)), vec4<i32>(arg_3.x, -(~arg_3.x), global2[_wgslsmith_index_u32(~firstLeadingBit(u_input.a.x), 5u)], _wgslsmith_div_i32(i32(-1i) * -2147483647i, u_input.b.x))));
    global1 = global0.x;
    return _wgslsmith_f_op_f32(sign(-1000f)) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - 614f)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<i32, 5>();
    let var_0 = !select(vec4<bool>(any(vec4<bool>(global0.x, global0.x, true, global0.x)), global0.x, all(vec4<bool>(false, global0.x, global0.x, global0.x)), true), vec4<bool>(global0.x, abs(1u) >= u_input.a.x, global0.x, !global0.x == global0.x), global0.x);
    var var_1 = -u_input.b.xw;
    var_1 = u_input.b.wx;
    var var_2 = all(select(vec2<bool>(true, true), vec2<bool>(var_0.x & func_1(u_input.a.wzw, var_0.x, var_1.x, vec4<i32>(u_input.c, var_1.x, -2147483647i, u_input.b.x)), all(var_0)), true));
    let var_3 = false;
    var var_4 = all(select(select(select(!vec4<bool>(var_3, false, false, var_3), vec4<bool>(var_3, global0.x, false, true), select(var_0.x, var_0.x, var_0.x)), select(var_0, !var_0, var_0), var_3), var_0, !var_0.x));
    global1 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-294f, _wgslsmith_f_op_f32(select(1128f, _wgslsmith_f_op_f32(1038f - -1034f), all(var_0.zxw))))), 1350f), _wgslsmith_f_op_f32(-1992f + _wgslsmith_f_op_f32(f32(-1f) * -414f)));
}

