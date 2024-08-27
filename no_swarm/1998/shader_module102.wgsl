struct Struct_1 {
    a: i32,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec3<bool>;

var<private> global2: array<vec4<u32>, 2> = array<vec4<u32>, 2>(vec4<u32>(73197u, 21457u, 97570u, 1u), vec4<u32>(25030u, 4294967295u, 7703u, 39148u));

var<private> global3: f32;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> i32 {
    global1 = select(select(vec3<bool>(any(select(vec3<bool>(global1.x, true, global1.x), vec3<bool>(false, global1.x, false), global1.x)), _wgslsmith_f_op_f32(min(arg_1, arg_1)) <= _wgslsmith_f_op_f32(-arg_1), true), vec3<bool>(!global1.x, true, false), vec3<bool>(true, any(vec3<bool>(true, false, false)) | any(vec3<bool>(global1.x, true, global1.x)), select(global1.x, global1.x, true))), vec3<bool>(false, select(!select(false, true, true), true, false), true), false);
    var var_0 = !(!vec4<bool>(true, !all(global1.zz), global1.x, !global1.x || all(vec3<bool>(true, global1.x, true))));
    var var_1 = arg_0;
    let var_2 = 20493u;
    var_1 = arg_0;
    return 53595i;
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec2<f32>) -> i32 {
    var var_0 = any(vec3<bool>(true, true, any(select(global1.yz, !vec2<bool>(false, global1.x), global1.zy))));
    let var_1 = arg_1;
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_2.x, -370f, arg_0.x)))) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(715f, -1819f, arg_2.x, arg_2.x))))) + vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(arg_0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1090f * 807f) + 745f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.x, -462f))), 416f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.x, arg_0.x, arg_0.x, 859f), vec4<f32>(-558f, arg_2.x, 1000f, arg_2.x)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-269f, arg_0.x, arg_0.x, arg_0.x), vec4<f32>(arg_2.x, 2444f, arg_0.x, -702f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-662f, -294f, arg_0.x, arg_0.x))))));
    let var_3 = Struct_1(_wgslsmith_mult_i32(~0i, 1i), ~_wgslsmith_mod_i32(-1i, -func_3(Struct_1(-24856i, global0.a, 21023u, vec3<i32>(0i, global0.b, 57820i), var_1.e), var_2.x)), ~(~_wgslsmith_mult_u32(26773u, _wgslsmith_mult_u32(54383u, var_1.c))), max(_wgslsmith_sub_vec3_i32(global0.d, firstTrailingBit(vec3<i32>(-2147483647i, u_input.d, var_1.d.x))), ~arg_1.d), vec2<i32>(var_1.e.x, max(var_1.a, 2147483647i)));
    global1 = !(!vec3<bool>(true, -51195i > _wgslsmith_div_i32(-2147483647i, global0.d.x), any(vec3<bool>(true, false, global1.x))));
    return _wgslsmith_sub_i32(~(u_input.d << (37076u % 32u)), -1i ^ var_3.d.x);
}

fn func_4(arg_0: vec3<i32>, arg_1: f32, arg_2: Struct_1, arg_3: vec4<i32>) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_add_i32(_wgslsmith_add_i32(1i, ~arg_0.x), -15454i) << (reverseBits(global0.c) % 32u), -3452i, 7172u, _wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(global0.d << (vec3<u32>(1u, u_input.a, arg_2.c) % vec3<u32>(32u)), arg_2.d, vec3<i32>(-28867i, u_input.c.x, global0.d.x)), min(vec3<i32>(u_input.c.x, arg_3.x, 94425i) & vec3<i32>(arg_0.x, 1i, arg_2.b), ~vec3<i32>(u_input.c.x, u_input.d, u_input.b.x))), vec3<i32>(abs(reverseBits(u_input.c.x)), arg_3.x, ~_wgslsmith_add_i32(-52398i, 36234i)), reverseBits(~_wgslsmith_clamp_vec3_i32(arg_3.yyz, global0.d, global0.d))), _wgslsmith_add_vec2_i32(min(-(vec2<i32>(61072i, 1i) << (vec2<u32>(u_input.a, 1u) % vec2<u32>(32u))), firstTrailingBit(~vec2<i32>(arg_2.d.x, arg_2.a))), _wgslsmith_clamp_vec2_i32(countOneBits(~u_input.c.zx), arg_3.wy, _wgslsmith_mult_vec2_i32(vec2<i32>(-1i, arg_3.x), select(global0.d.yy, vec2<i32>(arg_3.x, 31396i), vec2<bool>(global1.x, false))))));
    let var_1 = select(vec4<bool>(select(any(!vec4<bool>(true, false, true, global1.x)), global1.x, any(vec2<bool>(true, true)) & global1.x), any(!(!vec4<bool>(true, false, global1.x, global1.x))), global1.x, !global1.x), select(select(vec4<bool>(false, global1.x && global1.x, false, !global1.x), !select(vec4<bool>(global1.x, false, false, global1.x), vec4<bool>(global1.x, false, global1.x, global1.x), vec4<bool>(global1.x, global1.x, global1.x, false)), true || any(vec2<bool>(true, global1.x))), select(vec4<bool>(false, false, true, !global1.x), select(!vec4<bool>(global1.x, true, global1.x, global1.x), select(vec4<bool>(global1.x, global1.x, global1.x, global1.x), vec4<bool>(global1.x, global1.x, global1.x, true), global1.x), select(vec4<bool>(global1.x, true, false, false), vec4<bool>(true, true, true, true), true)), any(vec2<bool>(global1.x, global1.x))), global1.x), !vec4<bool>((arg_0.x >> (1u % 32u)) < ~u_input.d, _wgslsmith_f_op_f32(-arg_1) >= -851f, all(select(vec3<bool>(false, false, global1.x), vec3<bool>(false, global1.x, false), vec3<bool>(global1.x, true, global1.x))), any(vec4<bool>(global1.x, false, true, true))));
    var var_2 = var_1.ww;
    var_0 = Struct_1(u_input.b.x, -abs(global0.d.x) >> (~1u % 32u), abs(4294967295u), ~(-(~vec3<i32>(23580i, 2147483647i, -7i) << ((vec3<u32>(4294967295u, arg_2.c, var_0.c) >> (vec3<u32>(61u, global0.c, var_0.c) % vec3<u32>(32u))) % vec3<u32>(32u)))), vec2<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(1i, 1i, -5040i), -vec3<i32>(-1i, global0.d.x, global0.d.x)), u_input.b.x));
    return arg_2;
}

fn func_1() -> Struct_1 {
    return func_4(vec3<i32>(~func_2(vec3<f32>(843f, 1735f, -1085f), Struct_1(u_input.d, u_input.c.x, u_input.a, global0.d, u_input.c.yx), _wgslsmith_div_vec2_f32(vec2<f32>(2550f, 533f), vec2<f32>(3157f, 411f))), max(countOneBits(u_input.b.x), _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-36006i, global0.b, 26218i, 0i), vec4<i32>(u_input.d, -40162i, global0.b, u_input.c.x)), global0.d.x)), ~60111i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1449f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1261f), _wgslsmith_f_op_f32(ceil(-590f)))) * 278f), Struct_1(u_input.c.x | _wgslsmith_mult_i32(7909i, u_input.c.x), -1i, 4294967295u, vec3<i32>(u_input.b.x, func_3(Struct_1(-43908i, 2147483647i, 12144u, u_input.c, u_input.b), _wgslsmith_f_op_f32(ceil(1633f))), (u_input.b.x | 21074i) << (max(4294967295u, u_input.a) % 32u)), u_input.c.xx), max(vec4<i32>(-(~global0.e.x), 1i, -u_input.d, -u_input.c.x), vec4<i32>(u_input.b.x, global0.e.x, u_input.d, u_input.b.x)));
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: vec2<f32>) -> i32 {
    global1 = vec3<bool>(arg_0, true, select(true, false, select(false, false, !(!arg_0))));
    let var_0 = arg_0;
    let var_1 = abs(u_input.a) & 47467u;
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x - _wgslsmith_f_op_f32(-arg_2.x))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_2.x * _wgslsmith_div_f32(689f, arg_2.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x * _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(min(952f, -399f)))) * arg_2.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_2.x, arg_2.x)) - arg_2.x), arg_2.x)))));
    let var_3 = 7789u | _wgslsmith_mod_u32(33884u, ~u_input.a);
    return -reverseBits(abs(-1i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(-26449i, _wgslsmith_mult_i32(firstTrailingBit(-1i), abs(_wgslsmith_div_i32(1i, u_input.b.x))));
    var var_1 = Struct_1(global0.e.x, 0i, (firstTrailingBit(~94889u) | ((global0.c | u_input.a) << (reverseBits(16775u) % 32u))) | u_input.a, ~(u_input.c & _wgslsmith_mult_vec3_i32(u_input.c, vec3<i32>(global0.e.x, var_0.x, -26625i))), ~u_input.c.yy);
    global0 = Struct_1(func_5(!global1.x, func_1(), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-856f, 1626f))))), select(firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, 1i, var_1.a, global0.d.x), vec4<i32>(0i, -2147483647i, global0.d.x, global0.d.x) & vec4<i32>(-11154i, -31967i, global0.e.x, var_0.x))), func_5(global1.x, Struct_1(u_input.d, var_0.x, 1u, vec3<i32>(-21723i, global0.e.x, var_1.d.x), var_1.e), _wgslsmith_f_op_vec2_f32(-vec2<f32>(271f, 504f))) << ((var_1.c << (4294967295u % 32u)) % 32u), false), ~1u, global0.d, max(vec2<i32>(countOneBits(0i), ~_wgslsmith_sub_i32(u_input.b.x, 1i)), var_1.d.xy));
    let var_2 = !vec3<bool>(any(vec2<bool>(true, global1.x)), (true & global1.x) || true, any(!(!vec4<bool>(global1.x, global1.x, global1.x, false))));
    global1 = !(!var_2);
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(global0.c, 101890u, u_input.a), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, var_1.c, 4294967295u), vec3<u32>(4044u, 0u, var_1.c), vec3<u32>(1u, u_input.a, 16702u)))));
}

