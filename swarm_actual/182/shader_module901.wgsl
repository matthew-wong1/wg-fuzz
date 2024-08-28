struct Struct_1 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: vec3<bool>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec2<f32>, arg_1: bool) -> u32 {
    global0 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -141f), global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-908f + global0.x) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1507f, arg_0.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1003f), _wgslsmith_f_op_f32(trunc(arg_0.x)))))));
    var var_0 = Struct_3(-vec4<i32>(1i, select(2147483647i, 0i, arg_1), _wgslsmith_sub_i32(~0i, min(18718i, 1i)), -abs(2147483647i)), arg_1);
    let var_1 = Struct_3(_wgslsmith_mod_vec4_i32(var_0.a, max(min(vec4<i32>(var_0.a.x, 1i, -1i, 24486i), -var_0.a), var_0.a)), false);
    var var_2 = abs(_wgslsmith_add_vec2_i32(var_1.a.ww, abs(~abs(vec2<i32>(var_0.a.x, 1i)))));
    var var_3 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.xy - _wgslsmith_f_op_vec2_f32(abs(arg_0)))), global0.yy, !select(vec2<bool>(true, true), vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(true, var_0.b), var_0.b)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x * global0.x) + arg_0.x) + global0.x)), select(select(vec2<bool>(var_0.b != false, true), vec2<bool>(true, any(vec4<bool>(false, false, var_0.b, var_1.b))), var_1.b), !(!vec2<bool>(false, var_0.b)), any(select(vec2<bool>(true, true), vec2<bool>(arg_1, true), false)) & var_0.b)));
    return _wgslsmith_mult_u32(~67941u << (~u_input.a % 32u), _wgslsmith_mult_u32(0u, 0u));
}

fn func_2() -> Struct_3 {
    let var_0 = (abs(firstLeadingBit(~u_input.a)) & func_3(global0.xx, any(vec4<bool>(false, false, false, true)))) != _wgslsmith_mod_u32(14123u, firstTrailingBit(firstTrailingBit(0u)));
    var var_1 = Struct_3(~vec4<i32>(1i, -72611i >> (~u_input.a % 32u), 2147483647i, 1i), !(!all(vec2<bool>(true, var_0))) == var_0);
    let var_2 = _wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(~(vec3<u32>(u_input.a, u_input.a, u_input.a) << (vec3<u32>(u_input.a, u_input.a, 1u) % vec3<u32>(32u))) >> (~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, 17289u, u_input.a)) % vec3<u32>(32u)), vec3<u32>(2296u, u_input.a, _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 41130u, u_input.a), vec3<u32>(u_input.a, 25867u, u_input.a)), 0u & u_input.a))), vec3<u32>(u_input.a, 1u, 1u));
    let var_3 = global0.x;
    global0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global0.x, -347f, global0.x), vec3<f32>(507f, global0.x, 267f))), vec3<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, global0.x) - _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, 1188f))))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, -1837f, global0.x) + vec3<f32>(229f, 1011f, global0.x)))))))));
    return Struct_3(vec4<i32>(-min(46733i, var_1.a.x) | -24787i, _wgslsmith_mod_i32(select(max(-4040i, -2147483647i), _wgslsmith_add_i32(var_1.a.x, 0i), var_1.b), var_1.a.x), 7176i, _wgslsmith_div_i32(-68840i, ~_wgslsmith_div_i32(var_1.a.x, var_1.a.x))), any(!vec2<bool>(!var_1.b, var_1.b)));
}

fn func_4(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: Struct_2, arg_3: vec4<bool>) -> i32 {
    global0 = _wgslsmith_f_op_vec3_f32(-arg_2.a.b.yxx);
    let var_0 = Struct_2(Struct_1(_wgslsmith_clamp_vec2_i32(-countOneBits(vec2<i32>(arg_0.a.x, -46075i)), -min(arg_2.a.a, arg_0.a.xz), min(~vec2<i32>(arg_2.a.a.x, arg_0.a.x), -arg_2.a.a)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(153f, _wgslsmith_f_op_f32(min(803f, arg_2.a.b.x)), 3290f, _wgslsmith_f_op_f32(select(-861f, -2086f, true))))), !select(!arg_3.wyw, vec3<bool>(arg_0.b, arg_0.b, true), arg_3.ywy), _wgslsmith_sub_vec3_i32(arg_2.a.d, ~vec3<i32>(arg_2.a.a.x, arg_0.a.x, 2147483647i))));
    let var_1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.a.b.xww) * vec3<f32>(var_0.a.b.x, -404f, global0.x)))))));
    let var_2 = 1553f;
    let var_3 = !(!var_0.a.c.x);
    return firstTrailingBit(-1i);
}

fn func_1() -> bool {
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(global0.x, global0.x)), _wgslsmith_f_op_f32(round(global0.x)), global0.x)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1374f, global0.x, global0.x) * vec3<f32>(146f, 287f, -1566f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-431f, global0.x, 239f) + vec3<f32>(global0.x, 760f, global0.x))) * vec3<f32>(global0.x, _wgslsmith_f_op_f32(trunc(global0.x)), _wgslsmith_f_op_f32(global0.x - 1759f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, global0.x) * vec3<f32>(1607f, global0.x, global0.x))))))));
    let var_0 = vec4<i32>(~max(~1i, -60582i), -2147483647i, func_4(func_2(), abs(vec4<u32>(43759u, u_input.a, u_input.a, 64000u)), Struct_2(Struct_1(vec2<i32>(30131i, -13116i), vec4<f32>(global0.x, 737f, 2712f, global0.x), vec3<bool>(false, false, false), vec3<i32>(22734i, 8551i, 0i))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(vec4<bool>(false, true, true, true)))), 14045i) << ((~vec4<u32>(23865u, 1u, u_input.a, u_input.a) & select(vec4<u32>(abs(1u), 0u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(1u, u_input.a)), 86877u), vec4<u32>(47496u, 109678u, abs(4294967295u), u_input.a), vec4<bool>(true, true, true, true))) % vec4<u32>(32u));
    let var_1 = Struct_2(Struct_1(_wgslsmith_mod_vec2_i32(select(var_0.xx, var_0.yy, select(vec2<bool>(false, false), vec2<bool>(true, false), false)), countOneBits(vec2<i32>(var_0.x, var_0.x))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, -825f)), _wgslsmith_f_op_f32(abs(-1435f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.x)))), vec3<bool>(all(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), true)), !all(vec3<bool>(false, true, true)), true), vec3<i32>(2147483647i, _wgslsmith_mult_i32(min(var_0.x, 1i), min(var_0.x, 0i)), var_0.x)));
    let var_2 = reverseBits(vec3<u32>(u_input.a, select(_wgslsmith_add_u32(19540u, 37542u), u_input.a << (u_input.a % 32u), !var_1.a.c.x), 16382u)) << (abs(vec3<u32>(_wgslsmith_sub_u32(abs(84165u), ~u_input.a), abs(~19006u), 13291u)) % vec3<u32>(32u));
    global0 = var_1.a.b.yyz;
    return any(var_1.a.c.xx);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_i32(1i, ~abs(0i));
    let var_1 = _wgslsmith_clamp_i32(var_0 << (select(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 8203u, 71826u), vec3<u32>(40307u, 14050u, 5573u)), max(4294967295u, ~17268u), any(vec3<bool>(true, false, true))) % 32u), -64616i, var_0);
    var var_2 = !vec4<bool>(false, func_1(), true, false);
    var_2 = vec4<bool>(any(vec2<bool>(true, !(-11110i > var_0))), false, var_2.x, all(select(select(vec2<bool>(false, var_2.x), !vec2<bool>(var_2.x, true), true), var_2.xw, func_1())));
    let var_3 = 0u;
    let var_4 = vec2<bool>(var_2.x, !(1i != ~(-var_0)));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-996f, 1285f, -1082f))) - vec3<f32>(_wgslsmith_f_op_f32(global0.x * -1105f), global0.x, _wgslsmith_f_op_f32(-global0.x))))));
    var_2 = select(select(!(!vec4<bool>(false, false, false, var_4.x)), !vec4<bool>(false & var_4.x, all(vec3<bool>(var_2.x, true, var_4.x)), true, var_2.x & var_2.x), !select(!vec4<bool>(false, var_4.x, false, true), select(vec4<bool>(var_4.x, false, true, true), vec4<bool>(var_2.x, true, false, var_4.x), vec4<bool>(true, false, false, var_4.x)), select(vec4<bool>(var_2.x, true, true, true), vec4<bool>(false, var_2.x, var_2.x, true), vec4<bool>(false, false, var_2.x, var_4.x)))), !(!(!vec4<bool>(true, false, true, var_2.x))), true);
    global0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, -597f, _wgslsmith_f_op_f32(-global0.x)) * vec3<f32>(_wgslsmith_div_f32(729f, 270f), _wgslsmith_f_op_f32(floor(global0.x)), global0.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 1u, 4294967295u, 0u), vec4<u32>(var_3, u_input.a, 4294967295u, 0u)), ~_wgslsmith_div_vec4_u32(vec4<u32>(var_3, u_input.a, var_3, 4294967295u), vec4<u32>(29745u, u_input.a, 1u, 151725u))), vec4<u32>(1u, u_input.a, min(4294967295u ^ u_input.a, 4127u), var_3)));
}

