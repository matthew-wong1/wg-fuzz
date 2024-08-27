struct Struct_1 {
    a: vec3<u32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: bool,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: i32,
    e: i32,
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

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: vec4<i32>) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-168f, 531f, 284f) - vec3<f32>(966f, 285f, 2020f)) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-2697f, -645f, -628f)))), vec3<f32>(_wgslsmith_f_op_f32(select(266f, -1710f, false)), _wgslsmith_f_op_f32(sign(-1358f)), 119f)))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(-2046f, var_0.x, -672f), vec3<f32>(-719f, 1422f, var_0.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-983f, -663f, 562f))))))));
    return !select(all(vec2<bool>(true, true)), false, false);
}

fn func_3(arg_0: vec3<bool>) -> vec3<i32> {
    var var_0 = vec2<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(select(vec4<i32>(u_input.d, u_input.d, u_input.d, u_input.d), ~vec4<i32>(u_input.d, -35292i, -2147483647i, 2147483647i), u_input.d <= 1i), vec4<i32>(min(-1i, u_input.d), ~(-24758i), _wgslsmith_mult_i32(-1i, u_input.d), countOneBits(1i))), abs(_wgslsmith_div_vec4_i32(vec4<i32>(-1i, -2147483647i, 2147483647i, u_input.d), vec4<i32>(u_input.d, -2147483647i, 42272i, u_input.d) >> (vec4<u32>(u_input.c.x, 49444u, 115070u, u_input.b) % vec4<u32>(32u))))), u_input.d);
    var_0 = -abs(firstTrailingBit(vec2<i32>(-1i) * -vec2<i32>(var_0.x, var_0.x)));
    let var_1 = Struct_2(Struct_1(vec3<u32>(_wgslsmith_sub_u32(u_input.a, abs(1u)), ~(~1u), _wgslsmith_mod_u32(u_input.b, u_input.c.x)), !(!vec4<bool>(false, arg_0.x, arg_0.x, false))));
    var var_2 = vec2<i32>(~firstLeadingBit(-(u_input.d >> (var_1.a.a.x % 32u))), ~(-2147483647i));
    var var_3 = vec2<u32>(~var_1.a.a.x, ~_wgslsmith_mod_u32(var_1.a.a.x, var_1.a.a.x));
    return _wgslsmith_clamp_vec3_i32(abs(vec3<i32>(var_0.x, var_2.x, _wgslsmith_mult_i32(1i, ~var_2.x))), _wgslsmith_div_vec3_i32(vec3<i32>(53200i, -var_0.x, abs(var_2.x)) >> (((vec3<u32>(4294967295u, 57539u, var_3.x) & vec3<u32>(u_input.c.x, 27923u, var_1.a.a.x)) ^ vec3<u32>(33321u, u_input.b, 1u)) % vec3<u32>(32u)), _wgslsmith_div_vec3_i32(vec3<i32>(11201i, ~0i, var_2.x), countOneBits(countOneBits(vec3<i32>(var_2.x, -40251i, var_0.x))))), vec3<i32>(~u_input.d, _wgslsmith_clamp_i32(var_2.x, var_2.x, _wgslsmith_mod_i32(-25659i, reverseBits(var_2.x))), var_2.x));
}

fn func_1(arg_0: vec2<i32>) -> vec4<bool> {
    let var_0 = Struct_1(vec3<u32>(~_wgslsmith_mult_u32(select(1297u, u_input.b, false), ~u_input.c.x), ~(~abs(u_input.b)), 26636u), vec4<bool>(true, false, select(_wgslsmith_add_u32(u_input.a, 21653u) >= 1u, func_2(_wgslsmith_mod_vec4_i32(vec4<i32>(-10279i, -34503i, -54044i, u_input.d), vec4<i32>(arg_0.x, 1034i, u_input.d, -1i))), select(all(vec2<bool>(false, true)), u_input.d <= u_input.d, true)), (_wgslsmith_div_i32(u_input.d, 1i) ^ (i32(-1i) * -50084i)) >= _wgslsmith_clamp_i32(-arg_0.x, 0i, arg_0.x)));
    var var_1 = false;
    var_1 = true;
    let var_2 = _wgslsmith_add_vec3_i32(vec3<i32>(reverseBits(firstTrailingBit(arg_0.x) ^ -arg_0.x), ~u_input.d, -(~u_input.d)), -firstTrailingBit(_wgslsmith_mod_vec3_i32(func_3(var_0.b.xyy), select(vec3<i32>(7696i, -2147483647i, -20309i), vec3<i32>(2147483647i, 2147483647i, arg_0.x), vec3<bool>(false, false, false)))));
    let var_3 = Struct_2(Struct_1(var_0.a, !vec4<bool>(true, true | var_0.b.x, !var_0.b.x, all(var_0.b.wy))));
    return var_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    var_0 = (select(any(func_1(vec2<i32>(2147483647i, u_input.d))), u_input.a >= u_input.b, all(vec3<bool>(true, true, true))) & (~(~123075u) != countOneBits(_wgslsmith_sub_u32(u_input.b, u_input.b)))) || ((all(vec2<bool>(true, false)) && (u_input.b > _wgslsmith_clamp_u32(19898u, 16514u, u_input.c.x))) | true);
    var_0 = !(63677u < ~u_input.b);
    var_0 = true;
    var var_1 = Struct_2(Struct_1(vec3<u32>(_wgslsmith_mod_u32(49179u, 26280u) ^ u_input.b, u_input.c.x, _wgslsmith_add_u32(49960u, reverseBits(25043u))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, false, true, true))));
    var_0 = !var_1.a.b.x;
    var var_2 = var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(~var_1.a.a.x, 1u), firstLeadingBit(countOneBits(vec4<i32>(27563i, -32627i, firstLeadingBit(u_input.d), 0i))), ~41027u, -u_input.d, firstTrailingBit(countOneBits(_wgslsmith_add_i32(select(7777i, u_input.d, var_1.a.b.x), i32(-1i) * -15305i))));
}

