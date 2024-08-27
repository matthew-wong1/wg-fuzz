struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: bool,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec2<i32>,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: Struct_1,
    d: vec2<f32>,
    e: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: vec3<f32>,
    c: vec4<bool>,
    d: Struct_1,
}

struct Struct_5 {
    a: bool,
    b: Struct_4,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(288f, 1000f, 343f);

var<private> global1: f32;

var<private> global2: i32 = 0i;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> vec2<i32> {
    var var_0 = ~(~_wgslsmith_sub_vec2_u32(~countOneBits(u_input.c.zy), ~u_input.c.zz >> (vec2<u32>(1u, 1u) % vec2<u32>(32u))));
    var var_1 = u_input.d.x;
    let var_2 = Struct_3(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.x))), select(true, true, !(!all(vec4<bool>(true, false, false, true)))), Struct_1(true, !select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), false), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), false), vec4<bool>(true, true, true, true)), true, countOneBits(_wgslsmith_div_i32(u_input.a, 0i)), -11851i), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(954f, -119f) + global0.zy), _wgslsmith_f_op_vec2_f32(global0.xx * vec2<f32>(-1708f, global0.x)))))), Struct_1(any(vec4<bool>(true, false, false, true)) & !select(false, false, true), select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false)), vec4<bool>(true, select(true, false, false), true, u_input.e == u_input.b), vec4<bool>(true, -8105i <= u_input.a, true, true)), false & any(vec2<bool>(true, true)), -1i, _wgslsmith_clamp_i32(-17845i, -3772i << (countOneBits(u_input.c.x) % 32u), ~u_input.e & select(2147483647i, -44746i, false))));
    var var_3 = Struct_2(~((u_input.c.x ^ 4294967295u) << (select(countOneBits(u_input.c.x), u_input.c.x, all(var_2.e.b.xw)) % 32u)), Struct_1(!var_2.e.a, !(!var_2.e.b), any(vec4<bool>(var_2.b, var_2.b, var_2.c.d <= 19852i, any(var_2.c.b.zx))), var_2.c.d, firstLeadingBit(firstTrailingBit(_wgslsmith_mult_i32(8612i, -10532i)))), -_wgslsmith_add_vec2_i32(min(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.e, u_input.b), u_input.d.xy), vec2<i32>(u_input.b, -603i)), u_input.d.zy));
    var var_4 = global0.yx;
    return u_input.d.yx;
}

fn func_4(arg_0: i32, arg_1: vec2<i32>, arg_2: vec3<u32>) -> vec4<i32> {
    let var_0 = Struct_2(~0u, Struct_1(true, vec4<bool>((u_input.c.x == 1u) && true, true, all(vec2<bool>(true, false)), true), _wgslsmith_clamp_i32(_wgslsmith_add_i32(47951i, arg_1.x), 0i, 1i ^ arg_1.x) > _wgslsmith_sub_i32(arg_0, arg_1.x), _wgslsmith_mult_i32(arg_1.x << (0u % 32u), i32(-1i) * -34799i), reverseBits(-arg_0 << (~u_input.c.x % 32u))), (vec2<i32>(-1i) * -select(vec2<i32>(arg_1.x, arg_0), vec2<i32>(arg_0, -8448i), false)) ^ u_input.d.zz);
    var var_1 = Struct_3(264f, arg_2.x >= 4294967295u, Struct_1(all(!var_0.b.b.yy), !vec4<bool>(any(vec4<bool>(var_0.b.c, true, var_0.b.b.x, false)), any(vec4<bool>(true, false, var_0.b.a, var_0.b.c)), true, select(false, var_0.b.a, true)), var_0.b.c, _wgslsmith_mult_i32(0i, -2147483647i), -(i32(-1i) * -var_0.c.x)), global0.zy, var_0.b);
    global2 = -arg_1.x;
    let var_2 = select(!var_0.b.b.xzw, vec3<bool>(_wgslsmith_mod_u32(~arg_2.x, u_input.c.x) == ~(~0u), all(vec2<bool>(true, var_0.b.a)), !(_wgslsmith_f_op_f32(1366f * -263f) < _wgslsmith_f_op_f32(step(global0.x, global0.x)))), false);
    let var_3 = select(select(!(!(!vec2<bool>(var_0.b.a, true))), vec2<bool>(var_0.b.a, true), var_0.b.b.x), vec2<bool>(!any(select(vec3<bool>(var_0.b.c, var_0.b.c, true), vec3<bool>(true, false, var_2.x), var_1.e.a)), var_1.c.b.x), var_1.e.b.yy);
    return reverseBits(vec4<i32>(var_1.e.e, arg_0, (var_0.b.e | firstTrailingBit(arg_1.x)) ^ ((u_input.a << (4294967295u % 32u)) >> (1u % 32u)), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(0i, 24336i), vec2<i32>(2147483647i, arg_1.x)), vec2<i32>(1i, 90521i)), var_0.c)));
}

fn func_5(arg_0: vec4<i32>) -> bool {
    let var_0 = Struct_5(true && (any(vec2<bool>(false, false)) & all(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)))), Struct_4(1u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, -300f, global0.x) * vec3<f32>(-1000f, global0.x, -435f)))), vec4<bool>(true, true | any(vec2<bool>(false, true)), any(vec4<bool>(true, true, false, false)), true), Struct_1(all(vec2<bool>(false, true)), vec4<bool>(all(vec4<bool>(false, true, false, true)), true, true, false), true, u_input.b, max(u_input.b, u_input.d.x))), _wgslsmith_dot_vec3_u32(~(~u_input.c) ^ _wgslsmith_mult_vec3_u32(u_input.c, u_input.c), vec3<u32>(~8032u >> (~u_input.c.x % 32u), u_input.c.x, u_input.c.x)));
    var var_1 = Struct_2(firstLeadingBit(_wgslsmith_sub_u32(8549u, var_0.c)), var_0.b.d, select(u_input.d.zz, _wgslsmith_div_vec2_i32(arg_0.ww, countOneBits(vec2<i32>(-66949i, 2147483647i))), var_0.b.d.b.x));
    let var_2 = Struct_4(u_input.c.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(188f, var_0.b.b.x, var_1.b.b.x)) * global0.x), _wgslsmith_f_op_f32(round(global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-493f, -168f))))), !var_0.b.d.b, Struct_1(false, select(select(vec4<bool>(var_1.b.c, false, var_1.b.a, false), select(var_0.b.c, vec4<bool>(var_0.a, var_1.b.c, var_0.a, true), var_0.a), !var_0.b.d.b.x), vec4<bool>(any(vec3<bool>(var_1.b.c, var_0.a, var_0.a)), true, any(vec2<bool>(var_0.a, var_0.b.d.a)), var_0.a), true), -561f != _wgslsmith_div_f32(_wgslsmith_f_op_f32(616f * -1000f), var_0.b.b.x), 63948i, var_1.c.x));
    var var_3 = var_2.d;
    let var_4 = u_input.c;
    return true;
}

fn func_2(arg_0: i32, arg_1: vec3<u32>, arg_2: u32, arg_3: vec2<f32>) -> bool {
    global2 = countOneBits(0i);
    var var_0 = any(!(!vec4<bool>(all(vec4<bool>(true, true, true, true)), 768f == global0.x, any(vec2<bool>(false, true)), true)));
    let var_1 = u_input.c.xz;
    var_0 = select(func_5(func_4(~arg_0, ~func_3(), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.x, var_1.x, var_1.x), arg_1), 0u, select(arg_1.x, arg_1.x, true)))), false, true);
    var var_2 = select(select(select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(true, true), true), select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, true), all(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true)))), vec2<bool>(all(vec2<bool>(true, true)) || true, any(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false)))), select(!select(vec2<bool>(true, true), vec2<bool>(false, true), true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), any(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), true)))), false);
    return all(vec2<bool>(true, !select(true, true, false) | (1000f < _wgslsmith_div_f32(global0.x, arg_3.x))));
}

fn func_1(arg_0: u32, arg_1: vec3<i32>, arg_2: vec2<i32>) -> bool {
    var var_0 = global0.x;
    let var_1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - _wgslsmith_f_op_f32(-1212f * global0.x)), true, Struct_1(all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false))), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), false), true, 0i, countOneBits(u_input.a)), vec2<f32>(155f, -875f), Struct_1(any(!select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), true)), vec4<bool>(all(vec2<bool>(true, false)), select(any(vec3<bool>(true, false, false)), true, true), select(true, func_2(-1i, u_input.c, 0u, global0.xy), true), true), _wgslsmith_f_op_f32(-global0.x) >= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(259f, -808f)), global0.x)), u_input.e, arg_1.x));
    let var_2 = abs(vec2<i32>(1i, select(var_1.c.d, -12040i, select(var_1.c.b.x, var_1.e.a, var_1.e.b.x)))) ^ ~(-(-vec2<i32>(-21890i, var_1.e.d) & ~vec2<i32>(-2147483647i, arg_2.x)));
    var var_3 = Struct_2(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1300u), firstLeadingBit(vec2<u32>(u_input.c.x, 27308u))), var_1.e, vec2<i32>(-1i) * -arg_1.zx);
    var_3 = Struct_2(~firstTrailingBit(4294967295u), var_1.c, arg_1.yx);
    return any(select(select(var_3.b.b, !(!var_1.e.b), all(vec4<bool>(true, var_3.b.b.x, var_1.e.a, false))), !select(!var_1.c.b, !var_1.c.b, var_3.b.b), all(vec3<bool>(any(var_1.e.b.xz), global0.x == global0.x, !var_3.b.c))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(func_1(20826u, u_input.d, u_input.d.xz), select(!vec4<bool>(any(vec4<bool>(true, false, true, false)), func_5(vec4<i32>(4339i, -51592i, u_input.d.x, 1532i)), global0.x < -127f, func_2(0i, vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x), 1u, vec2<f32>(1000f, global0.x))), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), any(vec4<bool>(false, false, true, false))), true), true, 13818i, ~u_input.a);
    let var_1 = Struct_2(~_wgslsmith_mult_u32(37570u, reverseBits(0u)), Struct_1(var_0.c, !var_0.b, var_0.b.x, i32(-1i) * -2147483647i, var_0.d), _wgslsmith_clamp_vec2_i32(u_input.d.yx, ~vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.d.x), u_input.d), _wgslsmith_add_i32(1i, u_input.d.x)), firstTrailingBit(vec2<i32>(-1i) * -vec2<i32>(-1i, var_0.e))));
    let var_2 = -_wgslsmith_div_vec2_i32(-select(u_input.d.xy, select(vec2<i32>(var_1.c.x, u_input.d.x), vec2<i32>(-56592i, 1i), vec2<bool>(true, var_0.c)), vec2<bool>(false, true)), _wgslsmith_sub_vec2_i32(var_1.c, ~abs(u_input.d.zy)));
    let var_3 = var_0.b.x & (true != !var_1.b.c);
    global1 = global0.x;
    let var_4 = _wgslsmith_div_f32(global0.x, 337f);
    var var_5 = _wgslsmith_mult_vec2_u32(u_input.c.yx, firstLeadingBit(max(~firstLeadingBit(u_input.c.zz), u_input.c.xx & vec2<u32>(55992u, 35545u))));
    var var_6 = vec3<i32>(max(-33024i, 0i), 27896i, var_0.d);
    let var_7 = 1104f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_4));
}

