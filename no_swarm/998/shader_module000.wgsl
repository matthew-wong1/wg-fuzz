struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<bool>,
    c: vec2<i32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec3<i32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> vec3<bool> {
    var var_0 = ~(~u_input.a);
    let var_1 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -131f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1134f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-245f)) * _wgslsmith_f_op_f32(abs(785f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1880f - 228f) + _wgslsmith_f_op_f32(min(602f, -480f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -128f) - _wgslsmith_f_op_f32(ceil(-257f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(220f * 1271f) * _wgslsmith_div_f32(-2368f, 210f))))), vec2<bool>((true || arg_2.a.x) && any(vec3<bool>(arg_2.a.x, arg_2.a.x, arg_2.a.x)), false), vec2<i32>(reverseBits(1i), 29120i >> (countOneBits(countOneBits(1u)) % 32u)));
    let var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.a) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, var_1.a.x, -907f, var_1.a.x), _wgslsmith_f_op_vec4_f32(round(var_1.a))), vec4<f32>(var_1.a.x, _wgslsmith_f_op_f32(sign(769f)), -489f, _wgslsmith_f_op_f32(ceil(var_1.a.x)))))), var_1.a));
    return select(select(vec3<bool>(true, arg_2.a.x, false), vec3<bool>(any(!vec4<bool>(var_1.b.x, var_1.b.x, arg_1.a.x, true)), false, any(arg_1.a.zz)), true), select(vec3<bool>(!any(vec4<bool>(true, false, true, var_1.b.x)), ~51696u > (16249u << (arg_0 % 32u)), all(vec3<bool>(true, arg_1.a.x, var_1.b.x))), !(!arg_2.a), _wgslsmith_f_op_f32(var_2.x * -400f) >= -1961f), !(!(!(!arg_2.a))));
}

fn func_4(arg_0: vec3<bool>, arg_1: f32, arg_2: vec4<f32>, arg_3: vec2<f32>) -> u32 {
    var var_0 = u_input.a.x;
    var_0 = _wgslsmith_clamp_u32(~u_input.a.x, _wgslsmith_dot_vec2_u32(select(u_input.a.xz, ~max(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a.yz), vec2<bool>(true, true)), countOneBits(u_input.a.zy)), 1u);
    var_0 = 49048u;
    var_0 = ~(~u_input.a.x);
    let var_1 = Struct_3(!vec4<bool>(all(arg_0), true, arg_0.x, arg_0.x), reverseBits(4294967295u));
    return reverseBits(8812u);
}

fn func_2(arg_0: bool) -> f32 {
    var var_0 = func_4(func_3(u_input.a.x, Struct_1(!select(vec3<bool>(arg_0, false, arg_0), vec3<bool>(arg_0, false, arg_0), arg_0)), Struct_1(select(!vec3<bool>(true, false, arg_0), vec3<bool>(arg_0, arg_0, arg_0), select(vec3<bool>(arg_0, false, arg_0), vec3<bool>(arg_0, arg_0, false), arg_0))), _wgslsmith_clamp_i32(~(u_input.c & u_input.b.x), u_input.b.x, _wgslsmith_div_i32(~u_input.b.x, 6465i))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1509f) - -2339f), -1000f) * -458f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1385f, -390f, 1000f, _wgslsmith_div_f32(-159f, -567f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(min(-1000f, -1571f)), 1334f)))));
    var_0 = abs(31116u);
    var_0 = min(u_input.a.x >> (_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.a, vec3<u32>(1u, 21639u, 4294967295u), u_input.a), min(u_input.a, u_input.a)), _wgslsmith_mult_u32(1u, 68130u)) % 32u), u_input.a.x);
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1263f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(973f)) * _wgslsmith_f_op_f32(max(-1664f, 1196f)))))));
}

fn func_1(arg_0: Struct_1) -> bool {
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-1390f - _wgslsmith_f_op_f32(func_2(arg_0.a.x))), 1671f, 1469f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(848f - -533f)))))), !vec2<bool>(true | all(vec4<bool>(false, true, true, arg_0.a.x)), !func_3(4294967295u, Struct_1(vec3<bool>(false, arg_0.a.x, arg_0.a.x)), arg_0, -22338i).x), _wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(u_input.b.yx, ~_wgslsmith_mult_vec2_i32(u_input.b.zy, u_input.b.ww)), u_input.b.yy));
    let var_1 = Struct_3(select(select(select(vec4<bool>(true, var_0.b.x, arg_0.a.x, false), select(vec4<bool>(arg_0.a.x, var_0.b.x, var_0.b.x, arg_0.a.x), vec4<bool>(arg_0.a.x, false, var_0.b.x, true), vec4<bool>(arg_0.a.x, false, var_0.b.x, arg_0.a.x)), var_0.c.x < -13984i), select(!vec4<bool>(var_0.b.x, true, var_0.b.x, true), select(vec4<bool>(false, false, arg_0.a.x, true), vec4<bool>(arg_0.a.x, true, true, true), var_0.b.x), select(vec4<bool>(true, arg_0.a.x, var_0.b.x, var_0.b.x), vec4<bool>(true, true, true, true), false)), !select(vec4<bool>(arg_0.a.x, var_0.b.x, false, var_0.b.x), vec4<bool>(arg_0.a.x, arg_0.a.x, var_0.b.x, arg_0.a.x), vec4<bool>(false, true, arg_0.a.x, false))), !(!vec4<bool>(true, arg_0.a.x, var_0.b.x, false)), all(!arg_0.a.zy)), 1u);
    let var_2 = var_1.a.x;
    var var_3 = Struct_2(var_0.a, vec2<bool>(false, !(!(!var_1.a.x))), vec2<i32>(-(min(u_input.c, -19702i) ^ ~var_0.c.x), _wgslsmith_clamp_i32(~(~u_input.b.x), var_0.c.x, _wgslsmith_div_i32(u_input.c, u_input.b.x))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 729f;
    var_0 = -1281f;
    let var_1 = u_input.c;
    var var_2 = !vec4<bool>(select(any(vec4<bool>(true, false, true, true)), any(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), true)), all(vec2<bool>(true, true))), !func_1(Struct_1(vec3<bool>(false, true, false))), false, any(vec4<bool>(true, true, true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(-709f, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1274f, -797f, 293f, 1592f) * vec4<f32>(-934f, 347f, 825f, -586f))), vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(171f, 816f), 485f)), 326f, _wgslsmith_f_op_f32(f32(-1f) * -728f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(var_2.x)) + -380f))), -(u_input.b.wxx & u_input.b.zyy), -firstTrailingBit(u_input.b.yw));
}

