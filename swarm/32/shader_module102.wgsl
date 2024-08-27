struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec2<f32>,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
}

struct Struct_4 {
    a: bool,
    b: i32,
    c: Struct_3,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<u32>,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<u32>, arg_1: vec3<u32>, arg_2: bool, arg_3: Struct_1) -> vec2<u32> {
    var var_0 = 15456u;
    global0 = arg_1;
    let var_1 = 411f;
    global0 = arg_1;
    var var_2 = select(!vec3<bool>(any(!vec2<bool>(arg_2, true)), true, false), !select(vec3<bool>(true, true, true), !select(vec3<bool>(false, false, false), vec3<bool>(false, arg_2, true), true), !vec3<bool>(false, arg_2, true)), select(vec3<bool>(true, true, true), !select(vec3<bool>(arg_2, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, arg_2, true), vec3<bool>(true, true, arg_2)), select(vec3<bool>(arg_2, false, arg_2), vec3<bool>(arg_2, false, arg_2), true)), select(!(!vec3<bool>(arg_2, arg_2, arg_2)), !(!vec3<bool>(arg_2, false, false)), vec3<bool>(arg_2, arg_2, true))));
    return arg_0;
}

fn func_2() -> u32 {
    var var_0 = Struct_3(Struct_2(Struct_1(60285u), select(vec3<bool>(true, true, true), vec3<bool>(any(vec4<bool>(true, false, true, false)), false, false), !select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), true)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1873f, _wgslsmith_f_op_f32(sign(132f))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(564f, 899f))))), Struct_1(_wgslsmith_sub_u32(_wgslsmith_mod_u32(u_input.e.x, global0.x), ~global0.x))), global0.zz);
    var var_1 = 1u;
    var_1 = ~((countOneBits(var_0.a.a.a) & ~var_0.a.a.a) | _wgslsmith_dot_vec2_u32(u_input.a.ww, func_3(var_0.b, u_input.c.yxx, true, Struct_1(var_0.b.x))));
    var_0 = Struct_3(Struct_2(var_0.a.e, select(vec3<bool>(true, true, false), vec3<bool>(false || var_0.a.b.x, true, true), vec3<bool>(false, var_0.a.b.x, true)), vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1193f - var_0.a.d))), 1292f), _wgslsmith_div_f32(var_0.a.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-514f * -263f))), var_0.a.a), u_input.a.yy);
    let var_2 = var_0.a.b.x;
    return global0.x ^ 0u;
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: f32) -> u32 {
    global0 = vec3<u32>(4294967295u, func_2(), 12439u);
    var var_0 = -422f;
    global0 = ~u_input.a.yxy;
    let var_1 = ~_wgslsmith_sub_i32(-3802i, -(~(~49441i)));
    global0 = vec3<u32>(0u, arg_0, _wgslsmith_div_u32(max(1u, u_input.b), ~global0.x)) << (u_input.a.xzx % vec3<u32>(32u));
    return arg_0;
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: Struct_3) -> Struct_1 {
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2.a.c), arg_2.a.c);
    var var_1 = arg_2.a.a;
    let var_2 = ~vec3<u32>(var_1.a, func_2(), arg_2.a.a.a ^ ~select(4294967295u, 0u, arg_2.a.b.x));
    var_0 = _wgslsmith_div_vec2_f32(arg_2.a.c, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a.d * -568f)) - 464f), var_0.x));
    var_1 = Struct_1(0u);
    return arg_2.a.e;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~select(abs(~vec3<u32>(global0.x, 1u, 1u)), abs(reverseBits(select(u_input.c.xyx, u_input.a.xzy, false))), vec3<bool>(true, true, true));
    var var_0 = _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(-min(abs(vec4<i32>(25431i, -42187i, 84608i, -2147483647i)), -vec4<i32>(10409i, -1i, -21255i, -2147483647i)), min(_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, 5317i, -2147483647i, -46978i), vec4<i32>(1i, 1i, 1i, 1i)), _wgslsmith_mult_vec4_i32(vec4<i32>(1i, -31341i, -2147483647i, 2147483647i) >> (u_input.a % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(vec4<i32>(51284i, -8777i, 50801i, -8877i), vec4<i32>(-37948i, -6385i, -23823i, -7666i))))), 1i);
    var var_1 = func_4(select(global0.x, func_1(global0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-671f)), _wgslsmith_f_op_f32(f32(-1f) * -2144f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1733f)))), false), firstTrailingBit(countOneBits(-14794i)), Struct_3(Struct_2(Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, u_input.c.x, 4294967295u, 50003u), vec4<u32>(15848u, 4294967295u, 23776u, 4294967295u))), vec3<bool>(true, true, true), vec2<f32>(2063f, 1643f), _wgslsmith_f_op_f32(-1f), Struct_1(countOneBits(global0.x))), vec2<u32>(countOneBits(1u), global0.x << (u_input.e.x % 32u))));
    var var_2 = _wgslsmith_mult_vec2_i32(vec2<i32>(abs(~_wgslsmith_sub_i32(1i, -20229i)), ~(-1i)), vec2<i32>(2147483647i, reverseBits(-2147483647i & _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -32258i, -2147483647i), vec3<i32>(60050i, 25993i, 2147483647i)))));
    var_0 = ~(~_wgslsmith_clamp_i32(2147483647i, _wgslsmith_clamp_i32(var_2.x, countOneBits(var_2.x), 15457i), var_2.x ^ abs(38914i)));
    let var_3 = !(!((var_2.x != -42416i) || false)) && !select(select(true, true, true), false, ~global0.x >= 0u);
    var var_4 = Struct_4(any(!(!(!vec3<bool>(true, true, var_3)))), -64399i, Struct_3(Struct_2(Struct_1(firstLeadingBit(1u)), select(vec3<bool>(false, true, false), select(vec3<bool>(var_3, false, var_3), vec3<bool>(true, true, true), vec3<bool>(var_3, var_3, var_3)), var_1.a > u_input.a.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(175f, 327f) - vec2<f32>(-1513f, -178f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1015f, -1142f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - 137f)), func_4(~33006u, var_2.x & 2564i, Struct_3(Struct_2(Struct_1(30635u), vec3<bool>(var_3, var_3, true), vec2<f32>(533f, 1684f), 1000f, Struct_1(488u)), vec2<u32>(4294967295u, 1u)))), u_input.c.yw), ~vec3<i32>(-1i, ~var_2.x, (var_2.x ^ var_2.x) << (_wgslsmith_div_u32(global0.x, 4294967295u) % 32u)));
    var var_5 = 2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(2736u, _wgslsmith_mult_vec3_i32(firstTrailingBit(var_4.d), -(~vec3<i32>(var_2.x, 2147483647i, -1i))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(429f, var_4.c.a.c.x, 211f, var_4.c.a.d))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_4.c.a.c.x, var_4.c.a.d, var_4.c.a.d, -176f))) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_4.c.a.d, -1609f, var_4.c.a.d, -1344f)))))), min(_wgslsmith_add_i32(var_2.x, _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(var_2.x, var_4.d.x, var_4.b, -2147483647i)), vec4<i32>(var_2.x, var_4.b, var_4.d.x, 1i))), abs(1i)));
}

