struct Struct_1 {
    a: f32,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: i32;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<i32>, arg_1: u32, arg_2: vec2<bool>, arg_3: bool) -> i32 {
    let var_0 = 4294967295u;
    var var_1 = firstTrailingBit(~arg_1);
    var var_2 = ~abs(countOneBits(~(u_input.c.x >> (arg_1 % 32u))));
    let var_3 = ~(~vec4<u32>(~4294967295u, arg_1, arg_1, _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(4294967295u, var_0, 1u)), abs(vec3<u32>(arg_1, 4294967295u, 4294967295u)))));
    let var_4 = vec2<u32>(max(4294967295u, ~106147u), ~u_input.c.x);
    return ~(~(~1i));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: vec3<i32>) -> u32 {
    var var_0 = _wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(firstLeadingBit(abs(vec4<i32>(arg_3.x, u_input.b.x, -7688i, arg_2) >> (u_input.c % vec4<u32>(32u)))), -(~vec4<i32>(arg_3.x, arg_2, arg_3.x, arg_3.x) ^ _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_2, u_input.b.x, -55600i, u_input.a.x), vec4<i32>(1i, 1i, 47695i, arg_2), vec4<i32>(-1i, u_input.a.x, -1i, 13223i)))), ~_wgslsmith_div_vec4_i32(abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_2, -2147483647i, 1i, 16555i), vec4<i32>(1i, arg_3.x, -2147483647i, 4266i), vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, -1i))), _wgslsmith_div_vec4_i32(-vec4<i32>(1i, arg_2, -766i, -2147483647i), -vec4<i32>(u_input.a.x, -1i, arg_2, u_input.b.x))), vec4<i32>(-1i) * -vec4<i32>(-arg_3.x, -15354i, arg_2, i32(-1i) * -2147483647i));
    global1 = func_3(_wgslsmith_mult_vec4_i32(abs(vec4<i32>(2147483647i, -23361i, min(var_0.x, 16930i), 1i)), vec4<i32>(-1i) * -(~vec4<i32>(-1i, -43278i, arg_2, u_input.a.x))), 52477u, vec2<bool>(false, !arg_0.b.x), arg_0.b.x);
    var_0 = _wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(~countOneBits(vec4<i32>(arg_3.x, -1i, arg_3.x, arg_2)) << (u_input.c % vec4<u32>(32u)), vec4<i32>(0i, _wgslsmith_dot_vec4_i32(vec4<i32>(-57069i, arg_2, -2147483647i, 2147483647i), vec4<i32>(2147483647i, u_input.a.x, arg_2, 1i)), -u_input.b.x, firstTrailingBit(-var_0.x))), reverseBits(abs(_wgslsmith_clamp_vec4_i32(-vec4<i32>(63598i, 33098i, arg_3.x, -19231i), vec4<i32>(u_input.b.x, u_input.a.x, var_0.x, arg_2) & vec4<i32>(2147483647i, 0i, u_input.b.x, -5091i), _wgslsmith_mod_vec4_i32(vec4<i32>(40558i, arg_3.x, -1i, -1i), vec4<i32>(var_0.x, u_input.b.x, -2147483647i, -67328i))))));
    var var_1 = (select(u_input.c.x, ~_wgslsmith_sub_u32(u_input.c.x, 1u), arg_1.b.x) & max(firstTrailingBit(~98402u), 4294967295u)) >> (~0u % 32u);
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    return _wgslsmith_sub_u32(69255u, u_input.c.x);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec2<u32>, arg_3: vec3<f32>) -> vec2<f32> {
    let var_0 = Struct_1(global0.x, vec4<bool>(any(arg_0.b), !(arg_0.b.x | false), arg_0.b.x && arg_0.b.x, true));
    global1 = _wgslsmith_div_i32(-(-32312i ^ ~arg_1.x), ~_wgslsmith_sub_i32(_wgslsmith_clamp_i32(reverseBits(arg_1.x), countOneBits(36117i), -18188i), _wgslsmith_dot_vec4_i32(~arg_1, reverseBits(arg_1))));
    let var_1 = arg_0;
    let var_2 = var_1.b.yz;
    global0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-arg_3.zy), vec2<f32>(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)))))));
    return vec2<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(arg_3.x)), -951f))));
}

fn func_1() -> vec4<bool> {
    var var_0 = vec3<i32>(0i, ~u_input.b.x, _wgslsmith_mult_i32(1i | ~u_input.a.x, u_input.a.x));
    let var_1 = 4294967295u;
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_4(Struct_1(536f, select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true)), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), true))), _wgslsmith_mod_vec4_i32(-(~vec4<i32>(-14656i, var_0.x, -18870i, -9762i)), abs(~vec4<i32>(-20740i, -62125i, 0i, u_input.a.x))), vec2<u32>(1u, _wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.c.x, u_input.c.x), func_2(Struct_1(-1126f, vec4<bool>(false, false, true, true)), Struct_1(global0.x, vec4<bool>(true, false, true, false)), var_0.x, vec3<i32>(u_input.b.x, var_0.x, u_input.b.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, global0.x) - vec3<f32>(global0.x, -234f, 1041f)))))));
    var var_2 = Struct_1(-106f, vec4<bool>(false, _wgslsmith_f_op_f32(min(-236f, -304f)) < _wgslsmith_f_op_f32(-global0.x), !all(vec4<bool>(true, true, true, true)), all(vec2<bool>(true, true))));
    var_0 = _wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, var_0.x >> (36819u % 32u), -u_input.b.x) << ((vec3<u32>(5458u, 4294967295u, 61906u) >> (vec3<u32>(var_1, 1u, 40724u) % vec3<u32>(32u))) % vec3<u32>(32u)), _wgslsmith_div_vec3_i32((vec3<i32>(4721i, u_input.b.x, var_0.x) | vec3<i32>(var_0.x, u_input.b.x, 63415i)) << ((u_input.c.wyz | vec3<u32>(var_1, u_input.c.x, var_1)) % vec3<u32>(32u)), vec3<i32>(16012i, 2147483647i, u_input.b.x) & select(vec3<i32>(var_0.x, var_0.x, var_0.x), vec3<i32>(26280i, -18159i, var_0.x), var_2.b.x))) ^ _wgslsmith_sub_vec3_i32(countOneBits(~_wgslsmith_div_vec3_i32(vec3<i32>(-33682i, 2147483647i, -1i), vec3<i32>(-12240i, -69206i, -21275i))), vec3<i32>(1i, 36147i, _wgslsmith_sub_i32(0i | u_input.b.x, -2147483647i)));
    return !select(select(!select(var_2.b, vec4<bool>(var_2.b.x, true, var_2.b.x, var_2.b.x), var_2.b.x), var_2.b, true), !(!var_2.b), !all(var_2.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(global0.x, func_1());
    var_0 = Struct_1(var_0.a, var_0.b);
    var_0 = Struct_1(-651f, func_1());
    var var_1 = true;
    var_0 = Struct_1(-1313f, select(!select(var_0.b, var_0.b, false), vec4<bool>(!var_0.b.x, abs(1u) != u_input.c.x, all(select(vec4<bool>(true, var_0.b.x, false, var_0.b.x), var_0.b, true)), select(true, any(var_0.b), var_0.b.x)), var_0.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.x, global0.x, 2115f, 1310f), vec4<f32>(-329f, 217f, global0.x, var_0.a)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1912f, var_0.a, global0.x, 1000f)))))), min(_wgslsmith_clamp_vec3_u32(~u_input.c.wxx & (u_input.c.yxw ^ vec3<u32>(u_input.c.x, 11052u, u_input.c.x)), select(vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x), u_input.c.xwy, vec3<bool>(false, false, var_0.b.x)) & firstLeadingBit(vec3<u32>(u_input.c.x, 38325u, u_input.c.x)), vec3<u32>(_wgslsmith_div_u32(u_input.c.x, 46194u), 1u, _wgslsmith_sub_u32(u_input.c.x, u_input.c.x))), _wgslsmith_sub_vec3_u32(u_input.c.yww, firstTrailingBit(vec3<u32>(u_input.c.x, u_input.c.x, 4294967295u)))));
}

