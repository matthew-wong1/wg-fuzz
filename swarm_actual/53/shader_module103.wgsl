struct Struct_1 {
    a: bool,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -549f) + -659f)), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -657f)))));
    let var_1 = false;
    let var_2 = Struct_1(var_1, vec3<i32>(abs(min(u_input.a.x, 1i)) >> (_wgslsmith_mult_u32(1u, ~4294967295u) % 32u), abs(-u_input.d), 4331i));
    return u_input.a.x;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<bool>) -> f32 {
    let var_0 = countOneBits(~vec4<u32>(18997u, u_input.b, ~u_input.c, 4294967295u));
    let var_1 = max(vec3<i32>(-1i) * -firstTrailingBit(arg_0.b), vec3<i32>(i32(-1i) * -(1632i >> (var_0.x % 32u)), -func_3() | arg_0.b.x, arg_0.b.x));
    var var_2 = vec3<f32>(1514f, _wgslsmith_f_op_f32(f32(-1f) * -1135f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1451f * _wgslsmith_f_op_f32(max(-592f, -1797f))))));
    var var_3 = arg_0;
    var var_4 = false || any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, !arg_0.a, true, true), var_3.a));
    return _wgslsmith_f_op_f32(max(var_2.x, var_2.x));
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: vec2<i32>, arg_3: vec2<bool>) -> Struct_1 {
    var var_0 = Struct_1(!any(vec3<bool>(arg_3.x, true, false)), vec3<i32>(-((8489i & arg_2.x) | 1i), _wgslsmith_clamp_i32(0i, u_input.a.x, 2147483647i), -2147483647i));
    var var_1 = all(select(select(select(vec3<bool>(false, var_0.a, false), vec3<bool>(false, var_0.a, false), vec3<bool>(arg_3.x, var_0.a, var_0.a)), !select(vec3<bool>(arg_3.x, arg_3.x, var_0.a), vec3<bool>(true, false, false), vec3<bool>(var_0.a, arg_3.x, var_0.a)), true), vec3<bool>(var_0.a, var_0.a, true), all(vec2<bool>(all(vec3<bool>(var_0.a, arg_3.x, true)), false))));
    var var_2 = vec4<f32>(-1018f, -1008f, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_1, arg_1), _wgslsmith_f_op_f32(-424f - 752f)), arg_0), _wgslsmith_div_f32(arg_1, arg_0))), -1065f);
    return Struct_1(false, u_input.a.yxy);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: u32) -> vec3<i32> {
    let var_0 = min(arg_3, arg_3);
    var var_1 = -arg_0.b;
    let var_2 = Struct_1(false, arg_0.b);
    var var_3 = func_4(1399f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1532f, 1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(557f * 976f) + -535f), false))), ~(-(reverseBits(vec2<i32>(18403i, -2147483647i)) >> (vec2<u32>(u_input.c, arg_3) % vec2<u32>(32u)))), select(select(vec2<bool>(var_2.b.x == -2147483647i, arg_1.a && true), select(!vec2<bool>(arg_0.a, arg_1.a), select(vec2<bool>(arg_1.a, true), vec2<bool>(arg_0.a, arg_0.a), false), vec2<bool>(false, arg_1.a)), arg_0.a), vec2<bool>(false, var_2.a), select(select(vec2<bool>(true, var_2.a), !vec2<bool>(var_2.a, false), true), vec2<bool>(true, true), arg_1.a & var_2.a)));
    var var_4 = max(reverseBits(select(_wgslsmith_sub_u32(1u, _wgslsmith_add_u32(arg_3, arg_3)), 1u, var_3.a)), ~(~1u));
    return ~vec3<i32>(firstTrailingBit(arg_2), min(func_4(-1000f, 1f, -arg_1.b.yz, vec2<bool>(var_3.a, var_3.a)).b.x, _wgslsmith_div_i32(var_3.b.x, _wgslsmith_add_i32(var_2.b.x, -5860i))), ~(~abs(-2147483647i)));
}

fn func_1(arg_0: u32) -> i32 {
    var var_0 = Struct_1(32444i == select(_wgslsmith_div_i32(86i ^ u_input.d, u_input.a.x), abs(min(u_input.a.x, u_input.a.x)), all(vec3<bool>(false, true, true)) || true), func_5(func_4(_wgslsmith_f_op_f32(func_2(Struct_1(true, vec3<i32>(-5015i, u_input.d, u_input.d)), vec2<bool>(true, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-794f, 1646f)) * _wgslsmith_f_op_f32(floor(-1395f))), vec2<i32>(func_3(), firstLeadingBit(u_input.d)), vec2<bool>(true, true)), func_4(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-762f, -1545f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(233f))), -(~vec2<i32>(u_input.d, u_input.a.x)), !select(vec2<bool>(true, true), vec2<bool>(false, true), true)), _wgslsmith_clamp_i32(func_3(), 2147483647i, -27135i), _wgslsmith_sub_u32(u_input.c, 0u)));
    let var_1 = _wgslsmith_div_u32(1u, ~countOneBits(~u_input.b << (0u % 32u)));
    var var_2 = u_input.a.x;
    var_0 = Struct_1(true, _wgslsmith_add_vec3_i32(vec3<i32>(~(~37393i), reverseBits(abs(-42292i)), _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-53663i, var_0.b.x), vec2<i32>(var_0.b.x, 44947i)), 0i)), ~vec3<i32>(u_input.d | var_0.b.x, -2147483647i, 5601i)));
    let var_3 = 4294967295u;
    return 0i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(false, vec3<i32>(1i, 36291i, countOneBits(func_1(u_input.c & u_input.c))));
    var var_1 = !(!select(!vec3<bool>(false, var_0.a, var_0.a), !(!vec3<bool>(var_0.a, var_0.a, false)), false));
    var_1 = select(vec3<bool>(all(var_1.yx), var_1.x, !(!any(vec4<bool>(var_1.x, true, var_0.a, false)))), !(!(!(!vec3<bool>(true, false, var_0.a)))), vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f))) == _wgslsmith_f_op_f32(floor(-1048f)), true, false));
    var var_2 = abs(~(u_input.d & 13726i) << (abs(~0u) % 32u)) | ~2147483647i;
    var_1 = !(!vec3<bool>(u_input.d == (36335i ^ u_input.a.x), true & var_0.a, false));
    let var_3 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_u32(~(~abs(vec2<u32>(4294967295u, 43697u))), ~(~_wgslsmith_sub_vec2_u32(vec2<u32>(104806u, u_input.b), vec2<u32>(6351u, u_input.b)))), _wgslsmith_add_vec3_i32(var_0.b, vec3<i32>(_wgslsmith_dot_vec2_i32(u_input.a.yx, vec2<i32>(-18970i, var_3.b.x)), var_3.b.x, var_0.b.x | var_3.b.x)) >> (firstLeadingBit(_wgslsmith_clamp_vec3_u32(abs(vec3<u32>(1u, u_input.b, u_input.b)), vec3<u32>(u_input.b, 72740u, 9675u), ~vec3<u32>(u_input.b, 1u, 51249u))) % vec3<u32>(32u)), _wgslsmith_add_u32(38086u, reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(1528u, 4239u, 1u), vec3<u32>(u_input.c, 4294967295u, u_input.b)))));
}

