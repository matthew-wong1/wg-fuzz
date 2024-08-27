struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec3<f32>,
}

struct Struct_4 {
    a: u32,
    b: i32,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-205f, 250f, 1722f);

var<private> global1: Struct_5;

var<private> global2: vec4<bool>;

var<private> global3: f32 = -1134f;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> u32 {
    var var_0 = Struct_3(~(-18710i), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(max(global0.x, 327f))) - vec3<f32>(global0.x, _wgslsmith_div_f32(global0.x, global0.x), _wgslsmith_f_op_f32(-1420f - 191f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(2450f, 1739f, global0.x) * _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0.x, global0.x, 522f)))) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0.x, -1825f, 760f))))));
    let var_1 = firstTrailingBit(select(_wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(~vec2<i32>(38956i, 2147483647i), vec2<i32>(var_0.a, 1i)), firstTrailingBit(_wgslsmith_add_vec2_i32(vec2<i32>(-10884i, -43202i), vec2<i32>(u_input.a, var_0.a)))), abs(vec2<i32>(abs(var_0.a), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 22650i, 8384i, 21275i), vec4<i32>(-1i, 1i, var_0.a, u_input.a)))), select(select(vec2<bool>(global2.x, global2.x), !global2.xw, global2.xy), !select(global2.yy, vec2<bool>(global1.a, global1.a), false), select(select(global2.xz, vec2<bool>(global2.x, false), vec2<bool>(global2.x, global1.a)), vec2<bool>(global2.x, true), global2.ww))));
    let var_2 = Struct_3(u_input.a << (1u % 32u), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + 1249f)), _wgslsmith_f_op_f32(abs(-1981f)), global0.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(var_0.b * var_0.b))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, -374f) + _wgslsmith_f_op_vec3_f32(var_0.b * vec3<f32>(global0.x, 578f, global0.x))))));
    var_0 = var_2;
    var var_3 = firstTrailingBit(-var_1) | vec2<i32>(0i, u_input.a);
    return firstLeadingBit(~1u) | ~_wgslsmith_clamp_u32(~1u, ~(~9739u), ~(~19301u));
}

fn func_2() -> f32 {
    let var_0 = firstLeadingBit(func_3());
    let var_1 = Struct_4(~_wgslsmith_dot_vec4_u32((vec4<u32>(4294967295u, var_0, var_0, var_0) >> (vec4<u32>(1u, var_0, 27599u, 18627u) % vec4<u32>(32u))) >> ((vec4<u32>(11830u, 38114u, var_0, 4294967295u) | vec4<u32>(0u, 0u, var_0, var_0)) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(~vec4<u32>(54673u, var_0, 40949u, 21869u), select(vec4<u32>(0u, 4294967295u, var_0, 37785u), vec4<u32>(19787u, 0u, var_0, 4294967295u), false))), -33587i);
    let var_2 = global0.zx;
    let var_3 = -1i;
    let var_4 = Struct_4(54091u, _wgslsmith_add_i32(-19239i, 1i));
    return _wgslsmith_div_f32(1000f, global0.x);
}

fn func_4(arg_0: f32) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, 1259f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, arg_0, arg_0)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_0, -577f, -2282f))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0, arg_0, global0.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-297f, arg_0, global0.x) - vec3<f32>(-882f, -1130f, -451f)), global1.a))))));
    let var_1 = any(!vec3<bool>(any(vec3<bool>(global2.x, false, false)), false, _wgslsmith_f_op_f32(-arg_0) > _wgslsmith_f_op_f32(abs(-409f))));
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(step(var_0, var_0))));
    return vec3<f32>(_wgslsmith_f_op_f32(-arg_0), global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(455f)) - _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-444f, 174f)), var_2.a.a.x)))));
}

fn func_1(arg_0: vec3<f32>) -> bool {
    global0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_f_op_f32(func_2()))), arg_0)));
    let var_0 = Struct_4(func_3(), u_input.a);
    let var_1 = true;
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(exp2(global0.x)), _wgslsmith_f_op_f32(2330f * _wgslsmith_f_op_f32(sign(1000f))), _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(round(global0.x))))));
    global3 = _wgslsmith_f_op_f32(round(global0.x));
    return !(!global2.x);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = select(vec4<bool>(!global2.x, any(vec3<bool>(false & global2.x, func_1(vec3<f32>(387f, -1640f, global0.x)), all(vec4<bool>(global2.x, true, global1.a, global2.x)))), any(!vec2<bool>(global1.a, global1.a)) || false, true | global1.a), select(select(vec4<bool>(func_1(vec3<f32>(651f, global0.x, global0.x)), all(global2.yx), true, true), !select(vec4<bool>(global1.a, false, true, global2.x), vec4<bool>(global2.x, global2.x, global2.x, false), vec4<bool>(global1.a, global1.a, true, false)), false), select(select(vec4<bool>(global2.x, global2.x, global1.a, global2.x), select(vec4<bool>(global2.x, true, true, global1.a), vec4<bool>(false, true, global1.a, global1.a), global1.a), any(global2.wwy)), vec4<bool>(!global1.a, global1.a, global0.x < 1745f, global2.x != true), vec4<bool>(!global2.x, all(global2.xy), true, true)), !select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, global2.x), vec4<bool>(true, true, global1.a, global2.x)), select(vec4<bool>(true, global2.x, global2.x, global2.x), vec4<bool>(global1.a, global2.x, false, global1.a), vec4<bool>(false, false, global2.x, true)), !vec4<bool>(global1.a, global1.a, global2.x, true))), true);
    let var_0 = func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1612f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), global0.x)));
    let var_1 = ~vec2<u32>(countOneBits(~_wgslsmith_add_u32(1u, 21947u)), (max(34600u, 17360u) << (_wgslsmith_dot_vec3_u32(vec3<u32>(13715u, 1u, 20448u), vec3<u32>(0u, 9530u, 1u)) % 32u)) | ~(~4294967295u));
    var var_2 = ~_wgslsmith_dot_vec4_i32(vec4<i32>(46686i, 2147483647i, -61691i, ~u_input.a), vec4<i32>(u_input.a, firstTrailingBit(u_input.a), u_input.a, max(u_input.a, 1i))) << ((~max(0u, ~27064u) >> (~(~_wgslsmith_dot_vec2_u32(var_1, var_1)) % 32u)) % 32u);
    var_2 = 0i;
    let x = u_input.a;
    s_output = StorageBuffer(global0.xz);
}

