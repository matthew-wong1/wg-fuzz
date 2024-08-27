struct Struct_1 {
    a: vec3<u32>,
    b: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: bool,
    c: bool,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
}

struct Struct_4 {
    a: vec2<bool>,
    b: f32,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec4<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> bool {
    var var_0 = -u_input.a;
    var_0 = 9520i & _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(47595i, u_input.a)), abs(-vec2<i32>(0i, 2147483647i))), _wgslsmith_mod_i32(5i, -_wgslsmith_dot_vec2_i32(vec2<i32>(0i, u_input.a), vec2<i32>(2147483647i, 1i))));
    return true;
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: Struct_1, arg_3: vec4<u32>) -> vec4<f32> {
    let var_0 = arg_3.x;
    var var_1 = Struct_4(vec2<bool>(func_3(), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1581f) * _wgslsmith_f_op_f32(floor(arg_1))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -640f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1))) - arg_1));
    var var_2 = firstLeadingBit(-((vec3<i32>(0i, u_input.a, u_input.a) & vec3<i32>(29701i, arg_2.b, arg_2.b)) >> (abs(vec3<u32>(4294967295u, 1u, 87658u)) % vec3<u32>(32u)))) ^ ~vec3<i32>(u_input.a, -arg_2.b, -1i);
    var_2 = -(~abs(_wgslsmith_clamp_vec3_i32(-vec3<i32>(2079i, var_2.x, 15440i), -vec3<i32>(arg_2.b, -2147483647i, u_input.a), vec3<i32>(var_2.x, -549i, 2147483647i))));
    let var_3 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-464f + arg_1), arg_1), _wgslsmith_f_op_f32(trunc(arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1, 1173f) + _wgslsmith_div_f32(var_1.b, 551f)), var_1.b))), _wgslsmith_f_op_f32(abs(var_1.b)));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(var_3)), vec4<f32>(var_1.b, 597f, 3197f, 470f))))));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec2<u32>, arg_2: vec4<f32>) -> vec3<u32> {
    let var_0 = select(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), false)), true), !(!vec2<bool>(false, all(vec4<bool>(false, true, true, false)))), 20681i == ~(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.a, -1i, -1854i), vec4<i32>(u_input.a, u_input.a, -2147483647i, u_input.a)) ^ u_input.a));
    let var_1 = _wgslsmith_f_op_vec3_f32(-arg_2.zzw);
    let var_2 = _wgslsmith_add_i32(u_input.a, 1i);
    return _wgslsmith_add_vec3_u32(vec3<u32>(~4294967295u, min(u_input.e.x, ~(~arg_1.x)), arg_1.x), min(~(~(~vec3<u32>(1u, 0u, 1u))), vec3<u32>(~11840u, 53513u, abs(u_input.b.x)) << (~(~vec3<u32>(arg_1.x, 101773u, arg_1.x)) % vec3<u32>(32u))));
}

fn func_1() -> vec2<f32> {
    let var_0 = Struct_1(u_input.b, 0i);
    var var_1 = 1u;
    let var_2 = func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(677f - 141f)), -189f)), ~u_input.c.zz, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-160f, -178f, 910f, 691f))), vec4<f32>(863f, 531f, 935f, 612f))) - _wgslsmith_f_op_vec4_f32(func_2(-636f, -1130f, var_0, _wgslsmith_add_vec4_u32(vec4<u32>(var_0.a.x, u_input.b.x, var_0.a.x, u_input.e.x), vec4<u32>(var_0.a.x, 0u, 17622u, 1u))))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-279f, 648f, 402f, 558f)), vec4<f32>(-1577f, -449f, 222f, 715f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1175f, 643f, -1000f, -2512f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-941f, 700f, 1048f, -1676f) * vec4<f32>(460f, 586f, 892f, -786f)))))));
    var var_3 = vec2<u32>(~1u, _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c.x, var_2.x, u_input.c.x, var_0.a.x), abs(u_input.c)), 4294967295u & firstLeadingBit(u_input.d.x)), vec2<u32>(0u, var_2.x)));
    let var_4 = _wgslsmith_mod_vec4_u32(vec4<u32>(abs(_wgslsmith_dot_vec2_u32(var_2.zx, vec2<u32>(var_3.x, u_input.d.x))) ^ (abs(var_0.a.x) | _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 52700u), vec2<u32>(u_input.b.x, 0u))), ~86618u, ~_wgslsmith_mult_u32(72350u, var_2.x), abs(_wgslsmith_div_u32(var_3.x, var_0.a.x & var_0.a.x))), vec4<u32>(0u, ~reverseBits(1u), ~(~(~35350u)), _wgslsmith_mult_u32(reverseBits(_wgslsmith_sub_u32(var_0.a.x, 4294967295u)), _wgslsmith_div_u32(min(15547u, var_2.x), var_0.a.x))));
    return _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(837f, -738f))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(759f, 503f))))))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(577f, -1030f) + vec2<f32>(-629f, 1842f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1521f, 664f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(func_1());
    let var_1 = Struct_2(abs(u_input.d.xy), !(_wgslsmith_clamp_u32(u_input.d.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e.x, 49211u, 4294967295u, u_input.b.x), u_input.c), abs(62027u)) >= _wgslsmith_mult_u32(1u, abs(38769u))), select(any(vec2<bool>(true, true)), any(vec2<bool>(true, true)), any(!select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), true))));
    let var_2 = Struct_2(var_1.a, !any(vec2<bool>(true & var_1.c, var_1.c && var_1.b)), all(!vec4<bool>(false, select(var_1.c, true, var_1.b), true, false)));
    var var_3 = Struct_2(_wgslsmith_add_vec2_u32(vec2<u32>(~4294967295u, var_2.a.x) & (vec2<u32>(var_2.a.x, u_input.d.x) >> (~var_1.a % vec2<u32>(32u))), _wgslsmith_sub_vec2_u32(var_1.a, func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)), vec2<u32>(var_2.a.x, var_2.a.x), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(663f, var_0.x, var_0.x, 1256f)))).zx)), !(!var_2.c), false);
    var_0 = vec2<f32>(-1155f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    let var_4 = u_input.c.yx;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(509f + _wgslsmith_f_op_f32(-var_0.x)), var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 681f, 1537f)))), var_2.b)), vec3<u32>(~abs(1u & var_3.a.x), ~(~(~0u)), 65887u));
}

