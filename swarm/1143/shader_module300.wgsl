struct Struct_1 {
    a: bool,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
    c: vec3<u32>,
    d: u32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 9> = array<vec4<u32>, 9>(vec4<u32>(38859u, 53379u, 4294967295u, 4466u), vec4<u32>(1u, 1u, 0u, 0u), vec4<u32>(0u, 20724u, 0u, 17033u), vec4<u32>(66894u, 2795u, 31198u, 0u), vec4<u32>(39436u, 1u, 28747u, 0u), vec4<u32>(0u, 22766u, 32887u, 0u), vec4<u32>(0u, 78859u, 48621u, 4294967295u), vec4<u32>(2611u, 0u, 31151u, 2384u), vec4<u32>(11789u, 1u, 4294967295u, 1493u));

var<private> global1: vec4<f32>;

var<private> global2: array<u32, 19>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: i32) -> vec4<f32> {
    var var_0 = global1.x;
    var var_1 = _wgslsmith_mult_u32(countOneBits(u_input.d.x), (countOneBits(global2[_wgslsmith_index_u32(u_input.d.x, 19u)]) >> (95121u % 32u)) | u_input.b);
    var var_2 = Struct_1(any(!select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), true), false)), i32(-1i) * -u_input.c.x, _wgslsmith_mult_i32(-17172i, ~(2147483647i ^ firstTrailingBit(-50959i))));
    let var_3 = max(_wgslsmith_div_i32(reverseBits(var_2.c), -_wgslsmith_sub_i32(var_2.c, _wgslsmith_div_i32(u_input.c.x, -2147483647i))), _wgslsmith_add_i32(reverseBits(u_input.c.x), 0i));
    global1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_div_f32(global1.x, -1271f), _wgslsmith_f_op_f32(floor(240f)), _wgslsmith_f_op_f32(-global1.x), 182f))))));
    return _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-207f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-485f, 752f)), global1.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1.x, 1978f)))), _wgslsmith_f_op_f32(2356f * global1.x), _wgslsmith_f_op_f32(-global1.x))));
}

fn func_2() -> vec4<f32> {
    let var_0 = u_input.c.x;
    return _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(~var_0)) + vec4<f32>(_wgslsmith_div_f32(1396f, global1.x), _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(sign(global1.x)), _wgslsmith_f_op_f32(f32(-1f) * -921f))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(165f, 673f, global1.x, -1184f)))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(519f, global1.x, -310f, 1505f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(556f, global1.x, global1.x, global1.x))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1913f, 1127f, -648f, global1.x)) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global1.x, -524f, global1.x, global1.x))))))));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec2<f32>) -> Struct_2 {
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2()))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1238f, global1.x, 692f, global1.x), vec4<f32>(-1150f, 196f, -881f, global1.x))) * vec4<f32>(arg_1.x, -1243f, global1.x, -1154f)))));
    let var_0 = -138f;
    var var_1 = ~countOneBits(select(vec3<i32>(_wgslsmith_mod_i32(u_input.c.x, arg_0.x), ~arg_0.x, _wgslsmith_clamp_i32(u_input.c.x, -39811i, -43006i)), vec3<i32>(arg_0.x, -arg_0.x, arg_0.x), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), false), vec3<bool>(true, true, true))));
    global2 = array<u32, 19>();
    var var_2 = -27452i;
    return Struct_2(~vec3<i32>(arg_0.x, ~(u_input.c.x | 1i), ~u_input.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(f32(-1f) * -398f))))), Struct_1(select(!(7646u == u_input.d.x), all(vec2<bool>(false, false)), any(vec3<bool>(false, true, false))), var_1.x, ~0i));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2) -> f32 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_vec4_f32(func_2()).x, global1.x);
    let var_1 = vec2<i32>(_wgslsmith_mod_i32(max(arg_1.b, _wgslsmith_dot_vec4_i32(vec4<i32>(-3741i, arg_2.a.x, 1i, u_input.c.x), -vec4<i32>(arg_0.c, arg_1.b, u_input.c.x, 0i))), arg_1.b), arg_2.a.x);
    var_0 = 1317f;
    var var_2 = Struct_3(vec2<bool>(!func_1(vec4<i32>(0i, 3891i, -2147483647i, -18345i), global1.yw).c.a, arg_0.a & true), Struct_2(abs(-vec3<i32>(arg_2.a.x, u_input.c.x, -39216i)), arg_2.b, func_1(~vec4<i32>(var_1.x, -1i, -10196i, var_1.x), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.yy), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.b, 1839f) + global1.wy))).c), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global1.x + arg_2.b)))))));
    global2 = array<u32, 19>();
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1181f * var_2.b.b))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), _wgslsmith_mult_u32(u_input.d.x, 12744u) < 1u), vec2<bool>(!select(true, true, true), !any(vec3<bool>(true, false, true))), !(!(true || (-5038i >= u_input.c.x))));
    global0 = array<vec4<u32>, 9>();
    let var_1 = _wgslsmith_f_op_f32(step(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_1(true, 2147483647i, abs(-12224i)), Struct_1(!var_0.x, 1i, ~u_input.c.x), func_1(-vec4<i32>(2147483647i, -16200i, -8434i, u_input.c.x), global1.zx))))));
    var var_2 = func_1(firstLeadingBit(~(-select(vec4<i32>(-2147483647i, -2147483647i, 1i, -1i), vec4<i32>(22330i, u_input.c.x, u_input.c.x, u_input.c.x), false))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x * -1000f) * _wgslsmith_f_op_f32(-global1.x)) - -1013f), -187f)).c;
    let var_3 = vec4<u32>(64260u, 58996u, 65387u, 30225u & (global2[_wgslsmith_index_u32(1u, 19u)] << (_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.d.x, u_input.b), u_input.d.zx), ~u_input.d.zy) % 32u)));
    var var_4 = countOneBits(~_wgslsmith_mod_vec2_i32(~u_input.c.xx, _wgslsmith_add_vec2_i32(vec2<i32>(u_input.c.x, -1116i), vec2<i32>(var_2.b, u_input.c.x)))) & vec2<i32>(-2147483647i, -abs(_wgslsmith_sub_i32(u_input.c.x, -13868i)));
    global0 = array<vec4<u32>, 9>();
    global2 = array<u32, 19>();
    var_2 = func_1(_wgslsmith_sub_vec4_i32(vec4<i32>(countOneBits(_wgslsmith_add_i32(var_4.x, 16115i)), var_4.x << (_wgslsmith_dot_vec4_u32(var_3, global0[_wgslsmith_index_u32(u_input.b, 9u)]) % 32u), 0i, var_2.c), ~vec4<i32>(~u_input.c.x, var_4.x, -var_4.x, u_input.c.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, _wgslsmith_f_op_f32(-global1.x)))).c;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(global1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.x, -1920f) * _wgslsmith_f_op_f32(step(var_1, 375f))), _wgslsmith_f_op_f32(1049f * _wgslsmith_f_op_f32(abs(106f))))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -498f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(418f)), global1.x))), 981f, var_1), var_3.yzz, _wgslsmith_sub_u32(var_3.x, ~(~0u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(global1.yy - vec2<f32>(-1979f, -575f)))))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1.yy - global1.zy)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.yz)), var_0))));
}

