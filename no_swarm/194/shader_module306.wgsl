struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: vec4<f32>,
    d: i32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: bool,
    d: vec2<i32>,
    e: u32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: u32,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> vec4<bool> {
    let var_0 = u_input.b.x << (4294967295u % 32u);
    let var_1 = _wgslsmith_clamp_i32(u_input.a, u_input.a, 31053i) | firstLeadingBit(u_input.a);
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1009f), -829f, 1479f, _wgslsmith_f_op_f32(abs(-1000f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1000f, 864f, -742f, 1000f))))) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-526f, -299f, 952f, -180f)) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(252f, 437f, -1000f, -1000f))))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1371f) - _wgslsmith_f_op_f32(select(1567f, -888f, false))), 936f) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -770f), _wgslsmith_f_op_f32(round(1127f)))))), all(select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true)), vec4<bool>(false, false, false, false), true), vec4<bool>(true, true, true, true))), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(5920i, 1i, 33169i, -4237i), ~vec4<i32>(var_1, 1i, var_1, u_input.a)) | _wgslsmith_add_i32(countOneBits(0i), ~var_1), -var_1), u_input.d.x);
    let var_3 = var_2;
    let var_4 = var_2.a;
    return select(vec4<bool>(var_2.c, all(!select(vec4<bool>(var_3.c, var_3.c, true, var_3.c), vec4<bool>(var_2.c, true, var_2.c, false), vec4<bool>(true, var_3.c, false, var_3.c))), true, any(!select(vec4<bool>(true, true, var_2.c, false), vec4<bool>(var_2.c, var_3.c, var_3.c, var_3.c), vec4<bool>(var_2.c, var_2.c, var_2.c, var_3.c)))), vec4<bool>(true, true, all(!vec2<bool>(false, var_3.c)) || var_3.c, any(vec4<bool>(any(vec2<bool>(true, true)), true, var_3.b.x >= 360f, false))), select(select(!select(vec4<bool>(true, var_3.c, true, false), vec4<bool>(false, false, false, var_2.c), vec4<bool>(var_3.c, true, var_2.c, true)), select(vec4<bool>(true, var_2.c, var_3.c, var_3.c), !vec4<bool>(true, true, var_2.c, false), var_2.c), false), vec4<bool>(all(select(vec3<bool>(true, true, true), vec3<bool>(true, var_3.c, var_2.c), vec3<bool>(true, var_3.c, var_2.c))), all(!vec4<bool>(var_3.c, false, var_2.c, false)), all(select(vec3<bool>(false, var_2.c, false), vec3<bool>(var_2.c, true, false), vec3<bool>(false, true, var_2.c))), true), var_2.c));
}

fn func_2(arg_0: bool, arg_1: vec2<i32>, arg_2: vec2<u32>, arg_3: f32) -> f32 {
    let var_0 = vec4<bool>(true, true, !(!(all(vec2<bool>(arg_0, arg_0)) && true)), !all(vec4<bool>(arg_0, all(vec2<bool>(arg_0, arg_0)), true, false)));
    let var_1 = func_3();
    let var_2 = Struct_3(min(_wgslsmith_div_vec3_i32(abs(_wgslsmith_div_vec3_i32(vec3<i32>(arg_1.x, arg_1.x, arg_1.x), vec3<i32>(u_input.a, u_input.a, 1i))), ~(-vec3<i32>(2277i, u_input.a, 2147483647i))), ~(-(~vec3<i32>(arg_1.x, -29662i, -10272i)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1243f, 1008f, arg_3, 1808f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3, -1130f, arg_3, arg_3)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_3, -120f, -939f, 1893f), vec4<f32>(arg_3, arg_3, arg_3, 1702f))) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(511f, arg_3, -614f, 968f))))), vec4<bool>(false, true, var_1.x, false))), arg_2.x);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b.x) * _wgslsmith_div_f32(_wgslsmith_div_f32(1029f, var_2.b.x), 378f));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<u32>) -> f32 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-1358f, 462f))))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1216f - 447f) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(false, vec2<i32>(0i, arg_0.x), arg_1, 1031f)))))));
    let var_1 = arg_1.x;
    var var_2 = Struct_3(reverseBits(_wgslsmith_div_vec3_i32(vec3<i32>(firstTrailingBit(-14369i), 12378i | u_input.a, select(u_input.a, -39707i, false)), arg_0)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(481f, _wgslsmith_div_f32(var_0.x, 1250f), var_0.x, _wgslsmith_f_op_f32(var_0.x - -215f))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<f32>(var_0.x, -1167f, 184f, var_0.x))))))), _wgslsmith_dot_vec4_u32(~(~(~u_input.d)), ~vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.d.xxz, vec3<u32>(1u, 22529u, var_1)), ~96683u, var_1, var_1 << (var_1 % 32u))));
    let var_3 = -select(min(-vec4<i32>(u_input.a, 1387i, 1i, -11965i), vec4<i32>(11269i, -33614i, var_2.a.x, var_2.a.x) & vec4<i32>(var_2.a.x, arg_0.x, arg_0.x, 46617i)) | (vec4<i32>(arg_0.x, 1i, u_input.a, u_input.a) ^ _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, -45234i, u_input.a, arg_0.x), vec4<i32>(1i, u_input.a, -2147483647i, 2147483647i), vec4<i32>(u_input.a, var_2.a.x, 14336i, -2147483647i))), vec4<i32>(-arg_0.x >> (~4294967295u % 32u), -2147483647i, u_input.a, -select(1i, 2147483647i, false)), _wgslsmith_f_op_f32(step(var_2.b.x, -960f)) >= -1756f);
    var_2 = Struct_3(vec3<i32>(~(~(18574i >> (1u % 32u))), var_2.a.x, u_input.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), 1081f, _wgslsmith_f_op_f32(f32(-1f) * -636f), _wgslsmith_f_op_f32(min(var_2.b.x, 420f))) + vec4<f32>(-300f, 1001f, _wgslsmith_f_op_f32(min(-1000f, var_0.x)), _wgslsmith_f_op_f32(max(610f, 1339f))))), firstTrailingBit(1u) | var_2.c);
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(-16977i >> (_wgslsmith_dot_vec3_u32(u_input.b.zwy, ~firstTrailingBit(vec3<u32>(19515u, u_input.d.x, u_input.c))) % 32u));
    global0 = any(!(!vec2<bool>(all(vec4<bool>(false, true, true, false)), true)));
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -101f), -400f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(561f * _wgslsmith_f_op_f32(f32(-1f) * -887f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(492f, -585f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(max(vec3<i32>(-1i, var_0, -1i), vec3<i32>(-38963i, 0i, 2147483647i)), u_input.d.zx))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2049f))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-333f, _wgslsmith_f_op_f32(f32(-1f) * -382f), _wgslsmith_f_op_f32(round(188f)), 2004f))))));
    var var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-218f, -1000f, var_1.x, -764f)), true)) * vec4<f32>(var_1.x, _wgslsmith_f_op_f32(var_1.x + var_1.x), var_1.x, _wgslsmith_f_op_f32(step(-671f, var_1.x)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, _wgslsmith_f_op_f32(-134f - var_1.x), -1306f, var_1.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.zz) - _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_1.x), -340f), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1216f, var_1.x)))))), true, abs(vec2<i32>(-8092i, -var_0 >> ((u_input.c << (u_input.d.x % 32u)) % 32u))), 0u);
    let var_3 = var_2.c;
    var var_4 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.x, 738f, false))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -207f)))))), var_1.x);
    let var_5 = u_input.b.x;
    let var_6 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(1878f, 560f) - -673f));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 25538u), vec2<u32>(65726u, u_input.b.x)), 4294967295u), 30299u, ~select(47280u, var_2.e & var_2.e, all(vec4<bool>(false, var_2.c, true, var_2.c)))), -1i);
}

