struct Struct_1 {
    a: vec3<i32>,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_1;

var<private> global2: vec3<bool>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    var var_0 = -23325i | (arg_1.a.x >> ((15856u | u_input.c) % 32u));
    return _wgslsmith_mod_i32(~43545i, abs(_wgslsmith_clamp_i32(-abs(-48840i), u_input.d, global1.a.x)));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: vec2<f32>, arg_3: Struct_1) -> vec3<bool> {
    var var_0 = arg_0;
    let var_1 = !select(vec2<bool>(true, true), !select(select(vec2<bool>(var_0.b, false), vec2<bool>(global1.b, arg_3.b), false), vec2<bool>(false, arg_0.b), u_input.c == 11203u), all(vec2<bool>(u_input.b.x <= u_input.c, any(global2.xx))));
    global1 = arg_0;
    var var_2 = vec4<bool>(!(_wgslsmith_f_op_f32(arg_2.x * _wgslsmith_f_op_f32(exp2(arg_2.x))) < -249f), false, global2.x, false);
    var var_3 = u_input.e;
    return select(var_2.zwx, select(var_2.wxy, select(select(select(vec3<bool>(false, var_1.x, var_1.x), vec3<bool>(var_2.x, var_1.x, var_0.b), var_2.x), var_2.yxx, !vec3<bool>(var_1.x, arg_3.b, true)), !vec3<bool>(false, var_2.x, true), any(select(vec2<bool>(false, global2.x), vec2<bool>(var_2.x, false), vec2<bool>(true, false)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(498f)))) != -909f), var_2.xxy);
}

fn func_2() -> bool {
    global0 = -736f;
    let var_0 = Struct_1(_wgslsmith_mult_vec3_i32(vec3<i32>(global1.a.x, -(~0i), global1.a.x), global1.a << (u_input.b % vec3<u32>(32u))), false);
    global1 = Struct_1(select(_wgslsmith_sub_vec3_i32(-min(global1.a, vec3<i32>(u_input.d, 1i, var_0.a.x)), ~min(vec3<i32>(-30492i, 2147483647i, u_input.e.x), var_0.a)), vec3<i32>(-1i) * -global1.a, !var_0.b), select(all(func_4(var_0, func_3(Struct_1(global1.a, false), var_0), vec2<f32>(-441f, -1000f), var_0)), all(!select(global2.zy, vec2<bool>(global2.x, global2.x), false)), select(_wgslsmith_add_u32(41537u, 17457u) >= u_input.c, true, !(!global2.x))));
    let var_1 = vec4<u32>(_wgslsmith_sub_u32(firstLeadingBit(26174u), _wgslsmith_add_u32((u_input.b.x | 1u) & select(u_input.b.x, u_input.b.x, global1.b), _wgslsmith_add_u32(79897u, 1u))), 4294967295u, u_input.b.x, min(select(u_input.c, _wgslsmith_sub_u32(u_input.c, 4294967295u), true), ~(~firstTrailingBit(u_input.c))));
    let var_2 = Struct_1(-var_0.a, !(func_3(Struct_1(var_0.a, false), Struct_1(var_0.a, global1.b)) == _wgslsmith_sub_i32(var_0.a.x | -76639i, ~2147483647i)));
    return !var_0.b | !var_0.b;
}

fn func_5(arg_0: vec3<bool>, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: i32) -> vec3<bool> {
    let var_0 = firstLeadingBit(~(~(~u_input.c)));
    let var_1 = select(vec4<bool>(true, arg_2.b, !global1.b, !global2.x), vec4<bool>(true, _wgslsmith_f_op_f32(_wgslsmith_div_f32(420f, 446f) - _wgslsmith_f_op_f32(f32(-1f) * -231f)) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(280f)) * _wgslsmith_f_op_f32(round(369f))), all(vec2<bool>(all(arg_0.zz), false)), !(!arg_0.x)), vec4<bool>(false, arg_2.b, firstLeadingBit(u_input.c) <= abs(~60417u), global1.b));
    var var_2 = arg_2;
    var var_3 = arg_0;
    var var_4 = Struct_1(select(vec3<i32>(var_2.a.x, 74250i, global1.a.x), vec3<i32>(_wgslsmith_div_i32(2147483647i, arg_1.x << (1u % 32u)), -1i, 1i), vec3<bool>(!global1.b == false, true, true)), var_3.x);
    return var_1.xzx;
}

fn func_1() -> bool {
    global2 = !(!func_5(!select(vec3<bool>(true, global2.x, true), vec3<bool>(false, false, global2.x), vec3<bool>(false, global2.x, false)), countOneBits(max(global1.a, global1.a)), Struct_1(_wgslsmith_sub_vec3_i32(global1.a, vec3<i32>(0i, -1i, 1i)), func_2()), firstLeadingBit(~36716i)));
    global1 = Struct_1(global1.a, !(true && (false | any(vec3<bool>(global2.x, global1.b, global2.x)))));
    global0 = _wgslsmith_f_op_f32(floor(538f));
    var var_0 = u_input.c;
    let var_1 = Struct_1(vec3<i32>(~0i, -global1.a.x, -(u_input.e.x << (u_input.b.x % 32u))), global1.b);
    return global2.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~vec3<i32>(u_input.a >> (select(32038u, 13172u, global1.b) % 32u), global1.a.x, ~1i));
    var var_1 = !(!vec3<bool>(global1.b, global1.b, func_1()));
    var_1 = func_5(!func_4(Struct_1(global1.a, true), -u_input.a, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1099f, 567f), vec2<f32>(655f, -1156f), vec2<bool>(global2.x, global2.x))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-661f, 905f))))), Struct_1(_wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, global1.a.x, var_0.x), vec3<i32>(-91818i, u_input.d, global1.a.x)), all(vec4<bool>(global2.x, global2.x, global2.x, var_1.x)))), -reverseBits(vec3<i32>(var_0.x, -2147483647i, 0i) >> (vec3<u32>(u_input.c, u_input.b.x, 1u) % vec3<u32>(32u))), Struct_1(vec3<i32>(-2147483647i, -27798i, _wgslsmith_clamp_i32(-global1.a.x, 35418i << (0u % 32u), ~var_0.x)), true), ~_wgslsmith_div_i32(0i, u_input.d) << (~(~(~u_input.c)) % 32u));
    var var_2 = !select(!(!(!var_1.xz)), vec2<bool>(var_1.x, any(!vec3<bool>(global2.x, var_1.x, false))), global2.yx);
    let var_3 = -299f;
    var_2 = !func_5(vec3<bool>(!all(global2.xz), any(vec3<bool>(true, false, global2.x)), !var_1.x), _wgslsmith_sub_vec3_i32(var_0 << (vec3<u32>(u_input.c, u_input.b.x, 1u) % vec3<u32>(32u)), -var_0), Struct_1(_wgslsmith_add_vec3_i32(-global1.a, -vec3<i32>(-8422i, global1.a.x, 3081i)), var_2.x), u_input.e.x).xy;
    var_1 = vec3<bool>(var_3 < -415f, global2.x, select(true, var_1.x, var_3 >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -824f) - _wgslsmith_f_op_f32(-837f + -728f))));
    global1 = Struct_1(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-14954i >> (0u % 32u), 1i, var_0.x, 49860i), firstTrailingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(-12963i, u_input.d, var_0.x, 14851i), vec4<i32>(var_0.x, global1.a.x, global1.a.x, 1i)))), -global1.a.x, var_0.x << (~(u_input.c & u_input.b.x) % 32u)), _wgslsmith_dot_vec4_i32(select(vec4<i32>(-26179i, var_0.x, global1.a.x, 25061i) & vec4<i32>(global1.a.x, -2147483647i, -2147483647i, 0i), _wgslsmith_mult_vec4_i32(vec4<i32>(global1.a.x, u_input.d, global1.a.x, global1.a.x), vec4<i32>(-2147483647i, u_input.d, 2147483647i, u_input.a)), select(vec4<bool>(true, true, true, false), vec4<bool>(var_1.x, true, var_1.x, false), false)), vec4<i32>(abs(1i), -4397i, var_0.x, global1.a.x)) <= -2147483647i);
    global2 = vec3<bool>(true, true, !select(countOneBits(u_input.a) <= _wgslsmith_div_i32(global1.a.x, 17858i), select(var_1.x | false, 0u > u_input.b.x, -365f != var_3), all(select(vec4<bool>(true, false, true, false), vec4<bool>(var_2.x, global2.x, var_1.x, true), vec4<bool>(var_2.x, true, var_1.x, var_1.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(~min(u_input.c, ~(~u_input.c)), abs(vec4<u32>(~u_input.c, max(0u, ~1u), 4294967295u, 65495u)), _wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(u_input.b.x, u_input.c), 24143u, 4294967295u, u_input.b.x), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, 43641u), vec4<u32>(u_input.c, u_input.c, 81758u, u_input.c)) | (vec4<u32>(u_input.c, 0u, 58154u, 11096u) >> (vec4<u32>(u_input.b.x, 26672u, 99585u, 0u) % vec4<u32>(32u))), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, 26682u, 17237u) & vec4<u32>(77238u, 4294967295u, u_input.c, 28531u), firstLeadingBit(vec4<u32>(4294967295u, u_input.c, u_input.b.x, u_input.c)))), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 13259u) >> (vec2<u32>(u_input.b.x, u_input.c) % vec2<u32>(32u)), vec2<u32>(u_input.c, u_input.b.x)), u_input.b.x, 39548u, u_input.b.x)));
}

