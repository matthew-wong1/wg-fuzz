struct Struct_1 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec4<bool>,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: i32,
    d: f32,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: Struct_3;

var<private> global2: array<vec2<i32>, 14>;

var<private> global3: array<vec2<bool>, 7>;

var<private> global4: array<f32, 2> = array<f32, 2>(-1330f, 247f);

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec3<i32> {
    return max(vec3<i32>(-global0.x, firstLeadingBit(1i), global0.x), vec3<i32>(_wgslsmith_mod_i32(u_input.a, global1.a.x), 0i, global1.b.x));
}

fn func_4(arg_0: vec3<i32>, arg_1: u32) -> vec2<bool> {
    let var_0 = Struct_3(_wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(firstLeadingBit(vec4<i32>(54678i, global1.a.x, -20290i, -1i)), vec4<i32>(global0.x, global0.x, 3838i, u_input.c.x) << (vec4<u32>(u_input.d, arg_1, arg_1, 1u) % vec4<u32>(32u))), ~(vec4<i32>(1i, -49474i, arg_0.x, global0.x) << (vec4<u32>(51988u, arg_1, 106028u, 64174u) % vec4<u32>(32u)))), _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(u_input.c, global1.a), u_input.c << (~vec4<u32>(1u, 0u, 4294967295u, u_input.d) % vec4<u32>(32u)))), min(vec3<i32>(-2367i, -2147483647i, _wgslsmith_mult_i32(~global0.x, 1i)), firstTrailingBit(vec3<i32>(_wgslsmith_add_i32(0i, -20040i), -u_input.c.x, -arg_0.x))), func_3().x, _wgslsmith_f_op_f32(step(588f, 607f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(430f + -2428f))));
    let var_1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1213f, -943f, 993f, -621f), vec4<f32>(global1.e, var_0.d, global4[_wgslsmith_index_u32(arg_1, 2u)], 1000f)))))))));
    var var_2 = var_0;
    var_2 = Struct_3(_wgslsmith_add_vec4_i32(global1.a >> (vec4<u32>(452u, arg_1, 1u, arg_1) % vec4<u32>(32u)), abs(-_wgslsmith_clamp_vec4_i32(global1.a, u_input.c, u_input.c))), vec3<i32>(_wgslsmith_add_i32(firstLeadingBit(var_0.b.x), u_input.a & var_2.a.x) | ~arg_0.x, _wgslsmith_clamp_i32(_wgslsmith_mult_i32(_wgslsmith_add_i32(var_2.b.x, -67824i), -1i), var_0.a.x, _wgslsmith_add_i32(max(var_2.a.x, global0.x), -var_0.a.x)), var_0.c), -abs(global1.b.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.e)) + _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(u_input.d, 2u)] + global4[_wgslsmith_index_u32(arg_1, 2u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-531f, -197f))))), 406f);
    var var_3 = _wgslsmith_mod_vec2_i32(global1.a.xy, -arg_0.zx);
    return !(!(!(!global3[_wgslsmith_index_u32(1u, 7u)])));
}

fn func_2() -> Struct_3 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -466f), _wgslsmith_f_op_f32(-1629f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-277f))))));
    let var_1 = false;
    var var_2 = _wgslsmith_f_op_f32(round(-1634f));
    var var_3 = 139f;
    var var_4 = func_4(firstTrailingBit(_wgslsmith_add_vec3_i32(max(vec3<i32>(u_input.e.x, u_input.e.x, global1.c) >> (vec3<u32>(u_input.d, u_input.d, u_input.d) % vec3<u32>(32u)), u_input.c.zzz), func_3())), u_input.d);
    return Struct_3(select(vec4<i32>(global1.a.x, ~global1.b.x ^ max(global0.x, 2147483647i), -global0.x, func_3().x), _wgslsmith_add_vec4_i32(~(~global1.a), _wgslsmith_mult_vec4_i32(global1.a >> (vec4<u32>(u_input.d, 4294967295u, 0u, u_input.d) % vec4<u32>(32u)), global1.a)), var_1), abs(~vec3<i32>(reverseBits(global1.a.x), _wgslsmith_mod_i32(43455i, -1i), func_3().x)), global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1.e, _wgslsmith_f_op_f32(-global1.e)))) - 1108f), var_0);
}

fn func_1(arg_0: u32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(min(447f, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global1.d, global4[_wgslsmith_index_u32(~arg_0, 2u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(0u, 2u)] + -875f)), true))));
    global1 = func_2();
    var var_1 = global1.c;
    global0 = ~u_input.c;
    var var_2 = _wgslsmith_mult_u32(abs(u_input.d >> (~arg_0 % 32u)), _wgslsmith_clamp_u32(arg_0, u_input.d, ~arg_0));
    return Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(global1.e * global1.e), _wgslsmith_f_op_f32(step(707f, -191f)), _wgslsmith_f_op_f32(var_0 - global4[_wgslsmith_index_u32(arg_0, 2u)])), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0, 1626f, -1054f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, global1.e, var_0)), true)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 1317f, -1046f) * vec3<f32>(-1369f, global1.e, -118f)))), vec3<f32>(_wgslsmith_f_op_f32(round(-668f)), 445f, _wgslsmith_f_op_f32(abs(global1.e))))), abs(~_wgslsmith_div_vec3_u32(~vec3<u32>(u_input.d, 37453u, 53885u), select(vec3<u32>(u_input.d, 5645u, 0u), vec3<u32>(arg_0, arg_0, 4294967295u), true))), select(select(vec4<bool>(true, any(vec4<bool>(false, true, false, true)), true, true), select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false)), vec4<bool>(true, true, true, true), all(vec2<bool>(true, true))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false)), select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false)))), !select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true)), global1.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-694f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~(~vec3<u32>(~47470u, 1072u, u_input.d)));
    var var_1 = func_1(1u);
    var var_2 = 1i;
    let var_3 = func_1(8148u);
    global1 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(875f - 1255f), u_input.e.x);
}

