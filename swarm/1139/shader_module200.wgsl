struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_1,
}

struct Struct_5 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: u32,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: bool, arg_1: vec4<f32>, arg_2: Struct_3, arg_3: vec2<f32>) -> f32 {
    return 361f;
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: f32, arg_3: Struct_1) -> vec4<bool> {
    let var_0 = global0.a;
    var var_1 = Struct_5(vec3<f32>(arg_2, _wgslsmith_f_op_f32(-1838f - _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(arg_2 * 822f))), arg_2), vec3<i32>(u_input.c << ((_wgslsmith_add_u32(14666u, u_input.e.x) & ~10152u) % 32u), max(_wgslsmith_div_i32(u_input.c, u_input.b) ^ countOneBits(-1i), ~_wgslsmith_div_i32(u_input.a.x, 2588i)), 1i), reverseBits(5094u >> (_wgslsmith_mod_u32(min(global0.a.a, global0.a.a), ~var_0.a) % 32u)), !global0.b.x, -u_input.b);
    var_1 = Struct_5(var_1.a, -abs(u_input.a.yxw), firstTrailingBit(4294967295u), !((1i << (arg_3.a % 32u)) > _wgslsmith_clamp_i32(-1i, u_input.a.x, u_input.b)), 65637i);
    var_1 = Struct_5(var_1.a, -var_1.b, 5617u, arg_3.a != ~4294967295u, u_input.d.x);
    let var_2 = vec2<i32>(u_input.b, -7919i);
    return global0.b;
}

fn func_3(arg_0: Struct_2, arg_1: vec3<i32>) -> vec3<i32> {
    let var_0 = vec4<bool>(global0.b.x, global0.b.x, 0i >= u_input.d.x, false);
    global0 = Struct_3(Struct_1(33901u), vec4<bool>(all(select(!var_0, select(global0.b, vec4<bool>(true, false, true, false), global0.b), !global0.b)), (arg_0.a.a << (4294967295u % 32u)) >= 15007u, !var_0.x, false));
    global0 = Struct_3(Struct_1(~(~(~1u))), !vec4<bool>(true, global0.b.x, true && !global0.b.x, true));
    global0 = Struct_3(global0.a, !vec4<bool>(!(!var_0.x), true, true, all(func_2(757f, false, 1000f, global0.a).yxx)));
    global0 = Struct_3(arg_0.a, select(select(var_0, !vec4<bool>(false, global0.b.x, false, global0.b.x), select(!vec4<bool>(false, global0.b.x, true, var_0.x), !vec4<bool>(global0.b.x, false, global0.b.x, var_0.x), vec4<bool>(false, global0.b.x, true, var_0.x))), select(select(vec4<bool>(true, global0.b.x, false, true), !global0.b, func_2(-1502f, var_0.x, 1000f, global0.a)), vec4<bool>(global0.b.x, true, true, all(var_0)), select(var_0, global0.b, vec4<bool>(true, global0.b.x, true, false))), func_2(_wgslsmith_f_op_f32(-1f), !all(vec4<bool>(global0.b.x, false, false, global0.b.x)), -1000f, arg_0.a)));
    return ~_wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(1i, u_input.b, 0i), arg_1), u_input.a.yxz), vec3<i32>(_wgslsmith_mult_i32(u_input.a.x, arg_1.x), -2147483647i, -u_input.c)) | vec3<i32>(~arg_1.x, _wgslsmith_sub_i32(3795i, arg_1.x), ~(-2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_3(global0.a, select(!func_2(_wgslsmith_f_op_f32(f32(-1f) * -148f), false & global0.b.x, _wgslsmith_f_op_f32(func_1(global0.b.x, vec4<f32>(1000f, 128f, -1018f, -1113f), Struct_3(Struct_1(global0.a.a), global0.b), vec2<f32>(1452f, -976f))), global0.a), !select(func_2(-1381f, false, -1000f, global0.a), vec4<bool>(global0.b.x, global0.b.x, true, true), any(global0.b.yxx)), vec4<bool>((global0.b.x | global0.b.x) && true, false, false, global0.b.x)));
    var var_0 = reverseBits(vec3<u32>(global0.a.a, countOneBits(~0u), 4294967295u));
    var var_1 = Struct_5(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1f, 1f, 1f), vec3<f32>(-1358f, _wgslsmith_f_op_f32(f32(-1f) * -261f), -552f))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(-492f, 1062f, -706f), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(421f, 2271f, 153f)))))))), ~func_3(Struct_2(global0.a), u_input.a.xzx), u_input.e.x, !all(!vec3<bool>(false, global0.b.x, true)), countOneBits(25787i));
    global0 = Struct_3(Struct_1(~4294967295u), select(!(!vec4<bool>(true, false, var_1.d, global0.b.x)), select(select(vec4<bool>(false, var_1.d, var_1.d, true), global0.b, func_2(var_1.a.x, var_1.d, var_1.a.x, Struct_1(var_1.c))), vec4<bool>(true, true, true, all(vec2<bool>(false, true))), false), false));
    let var_2 = Struct_2(global0.a);
    global0 = Struct_3(var_2.a, vec4<bool>(var_1.a.x >= -940f, any(func_2(-1000f, any(global0.b.wy), _wgslsmith_f_op_f32(var_1.a.x + var_1.a.x), Struct_1(74818u))), global0.b.x | !var_1.d, !global0.b.x));
    let var_3 = select(all(global0.b.yyy), var_1.d, false);
    let var_4 = _wgslsmith_div_vec2_f32(vec2<f32>(var_1.a.x, _wgslsmith_f_op_f32(func_1(!var_1.d, vec4<f32>(-1942f, _wgslsmith_div_f32(1000f, -658f), var_1.a.x, _wgslsmith_f_op_f32(max(var_1.a.x, 1465f))), Struct_3(Struct_1(u_input.e.x), vec4<bool>(var_3, true, false, true)), vec2<f32>(_wgslsmith_f_op_f32(1024f * var_1.a.x), var_1.a.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-var_1.a.zx))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(328f, -1606f)) - var_1.a.zz))));
    var var_5 = Struct_5(vec3<f32>(_wgslsmith_f_op_f32(-var_4.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -440f)), 1393f), func_3(var_2, ~u_input.a.xyw), var_1.c, !all(global0.b), 21555i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-416f, var_1.a.x)) * _wgslsmith_f_op_f32(f32(-1f) * -880f)), -1i, var_1.a.x, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-666f, -1512f, 176f, -765f) * vec4<f32>(var_4.x, var_4.x, var_1.a.x, -536f)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(851f, 1291f, -713f, -1529f), vec4<f32>(-383f, -1311f, -757f, 137f), global0.b))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-420f, -2222f, var_1.a.x, 1163f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-568f, var_4.x, var_4.x, 1281f))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-331f, var_4.x, 489f, var_4.x))))))));
}

