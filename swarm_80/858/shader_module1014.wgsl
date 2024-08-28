struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct Struct_4 {
    a: bool,
    b: i32,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<vec3<u32>, 14>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> vec2<f32> {
    global1 = array<vec3<u32>, 14>();
    var var_0 = _wgslsmith_add_vec4_u32(max(_wgslsmith_mult_vec4_u32(vec4<u32>(7182u, _wgslsmith_div_u32(4294967295u, 75368u), _wgslsmith_dot_vec2_u32(u_input.c.zx, u_input.c.zy), u_input.a.x), u_input.c), ~vec4<u32>(select(u_input.a.x, u_input.c.x, false), ~86192u, _wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(u_input.a.x, 1u, 38662u, u_input.c.x)), ~u_input.a.x)), _wgslsmith_sub_vec4_u32(firstLeadingBit(~u_input.c & ~vec4<u32>(u_input.a.x, 6676u, 15224u, 1u)), vec4<u32>(u_input.c.x << ((u_input.a.x ^ u_input.c.x) % 32u), u_input.c.x >> ((0u & u_input.a.x) % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 6539u, u_input.c.x), vec3<u32>(u_input.c.x, 47705u, u_input.c.x)), ~_wgslsmith_mult_u32(4294967295u, 0u))));
    var var_1 = select(vec4<bool>(true, !(!any(vec4<bool>(true, true, false, true))), abs(1u | u_input.a.x) > var_0.x, !(!all(vec2<bool>(true, true)))), vec4<bool>(true, false, true, false), vec4<bool>(true, true, !(!all(vec2<bool>(false, true))), true));
    let var_2 = Struct_1(select(u_input.c.zx, var_0.ww, !(var_1.x & true)), true & (var_0.x > u_input.c.x), false, var_1.x);
    global1 = array<vec3<u32>, 14>();
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1f, -431f), vec2<f32>(_wgslsmith_f_op_f32(407f * -120f), -541f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(2027f, 399f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(2377f, -264f)))), !var_2.d)));
}

fn func_2(arg_0: vec3<i32>) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1138f, _wgslsmith_f_op_f32(f32(-1f) * -411f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(843f, 1200f) + _wgslsmith_div_vec2_f32(vec2<f32>(-897f, 131f), vec2<f32>(-1935f, 683f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1431f, -1005f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(2408f, 580f))) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(func_3()))))));
    global1 = array<vec3<u32>, 14>();
    let var_1 = Struct_4(all(vec3<bool>(false, true, any(vec3<bool>(false, false, true)))), 64808i, Struct_3(_wgslsmith_mult_vec2_i32(arg_0.xx, vec2<i32>(-2147483647i, 0i) << (firstLeadingBit(u_input.c.zy) % vec2<u32>(32u))), -arg_0.yx));
    var var_2 = abs(firstTrailingBit(_wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(arg_0.xx, _wgslsmith_div_vec2_i32(vec2<i32>(1i, arg_0.x), vec2<i32>(1i, arg_0.x))), select(var_1.c.a, u_input.d.yy, select(vec2<bool>(var_1.a, true), vec2<bool>(var_1.a, var_1.a), var_1.a)))));
    var var_3 = Struct_1(firstLeadingBit(min(~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a.x, u_input.c.x), u_input.c.yw), vec2<u32>(~28498u, ~0u))), true, all(vec4<bool>(true, true, false, var_1.a)), !var_1.a);
    return Struct_3(firstLeadingBit(_wgslsmith_div_vec2_i32(vec2<i32>(select(var_1.c.a.x, u_input.b, var_3.b), _wgslsmith_add_i32(u_input.b, var_2.x)), -var_1.c.a)), _wgslsmith_clamp_vec2_i32(-arg_0.xz >> (var_3.a % vec2<u32>(32u)), vec2<i32>(abs(1i), ~_wgslsmith_div_i32(-57792i, var_1.b)), abs(arg_0.yz)));
}

fn func_4(arg_0: Struct_4) -> Struct_1 {
    var var_0 = max(abs(_wgslsmith_sub_i32(25302i, abs(arg_0.c.b.x))), 1i) ^ (abs(abs(_wgslsmith_clamp_i32(-53129i, global0.a.x, global0.b.x))) << (_wgslsmith_dot_vec3_u32(u_input.c.wzw, select(~vec3<u32>(4294967295u, 0u, 9029u), select(u_input.c.zyz, global1[_wgslsmith_index_u32(61838u, 14u)], vec3<bool>(arg_0.a, arg_0.a, false)), select(vec3<bool>(arg_0.a, arg_0.a, arg_0.a), vec3<bool>(true, false, false), vec3<bool>(false, arg_0.a, arg_0.a)))) % 32u));
    let var_1 = abs(vec3<u32>(countOneBits(1u), reverseBits(30473u), 37915u)) | (~(~vec3<u32>(29341u, u_input.a.x, 1u)) & max(_wgslsmith_sub_vec3_u32(reverseBits(vec3<u32>(u_input.a.x, 202u, u_input.a.x)), vec3<u32>(u_input.c.x, u_input.a.x, u_input.a.x)), min(vec3<u32>(4294967295u, u_input.c.x, u_input.a.x) << (vec3<u32>(1u, 4294967295u, 43366u) % vec3<u32>(32u)), vec3<u32>(u_input.a.x, u_input.c.x, 0u))));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1476f, 2739f, 866f))) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(549f, 2258f, 368f), vec3<f32>(1866f, 652f, 971f), vec3<bool>(arg_0.a, arg_0.a, true))), vec3<f32>(211f, 1451f, -238f))))) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -220f) - _wgslsmith_f_op_f32(-1000f - 557f)) + -1608f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-285f + -1259f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -868f)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -336f), _wgslsmith_f_op_f32(select(-177f, -110f, arg_0.a)))))));
    var var_3 = arg_0;
    global1 = array<vec3<u32>, 14>();
    return Struct_1(~(vec2<u32>(var_1.x, var_1.x) >> (vec2<u32>(u_input.c.x, u_input.c.x) % vec2<u32>(32u))) & ~var_1.zx, arg_0.a, var_3.a, _wgslsmith_f_op_f32(trunc(520f)) == 890f);
}

fn func_5(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec4<u32>) -> Struct_3 {
    global0 = func_2(-_wgslsmith_div_vec3_i32(vec3<i32>(i32(-1i) * -2147483647i, -global0.b.x, -global0.b.x), -vec3<i32>(-48642i, -13504i, u_input.b) & vec3<i32>(global0.b.x, 5872i, global0.a.x)));
    var var_0 = ~(vec3<u32>(~_wgslsmith_add_u32(4294967295u, arg_2.x), u_input.c.x, arg_0.a.x) ^ vec3<u32>(_wgslsmith_add_u32(arg_2.x, arg_1.x) ^ _wgslsmith_mod_u32(52537u, arg_0.a.x), arg_1.x, 13708u));
    var var_1 = !(!vec4<bool>(arg_0.c, arg_0.d, arg_0.c, false));
    var var_2 = Struct_3(select(u_input.d.zx, ~vec2<i32>(-u_input.b, 8315i << (0u % 32u)), true), ~reverseBits(u_input.d.yx));
    let var_3 = var_1.x;
    return func_2(~abs(u_input.d));
}

fn func_1(arg_0: vec3<f32>, arg_1: i32, arg_2: vec4<i32>, arg_3: f32) -> i32 {
    var var_0 = global0.a.x;
    var var_1 = vec2<i32>(-(~1i), -2147483647i) & countOneBits(vec2<i32>(arg_2.x & _wgslsmith_add_i32(-1i, arg_1), ~global0.b.x));
    global0 = func_5(func_4(Struct_4(select(false, false, false) & true, 39219i, func_2(vec3<i32>(arg_1, 1i, 15055i) >> (u_input.c.zww % vec3<u32>(32u))))), u_input.c.yx, _wgslsmith_mult_vec4_u32(~(~(~vec4<u32>(1u, u_input.c.x, 86053u, u_input.c.x))), vec4<u32>(u_input.a.x, 0u, u_input.c.x, 26605u)));
    var_1 = u_input.d.xz;
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -1879f), 1f, arg_0.x));
    return _wgslsmith_div_i32(~(func_5(Struct_1(vec2<u32>(u_input.a.x, 78120u), false, true, false), vec2<u32>(0u, u_input.c.x), ~vec4<u32>(0u, 1329u, 1u, 1u)).b.x << (u_input.c.x % 32u)), arg_2.x);
}

fn func_6(arg_0: bool, arg_1: vec4<i32>, arg_2: vec3<u32>) -> Struct_3 {
    let var_0 = u_input.c.x;
    let var_1 = Struct_3(~vec2<i32>(select(u_input.b, 58237i, true), -1107i), vec2<i32>(-1i, _wgslsmith_dot_vec3_i32(u_input.d, vec3<i32>(global0.a.x, u_input.b, -25572i))) ^ ~(-select(arg_1.zx, global0.a, vec2<bool>(false, arg_0))));
    var var_2 = !(!(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -223f))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -384f))));
    global0 = var_1;
    global1 = array<vec3<u32>, 14>();
    return var_1;
}

fn func_7(arg_0: vec2<f32>, arg_1: vec2<i32>, arg_2: Struct_3, arg_3: Struct_3) -> Struct_2 {
    var var_0 = u_input.c & abs(countOneBits(max(~vec4<u32>(29783u, 1u, 1u, u_input.c.x), vec4<u32>(u_input.c.x, 44214u, 1u, u_input.c.x) ^ vec4<u32>(u_input.c.x, u_input.c.x, u_input.a.x, 35358u))));
    var var_1 = arg_0.x;
    let var_2 = arg_0.x;
    var var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1296f + _wgslsmith_f_op_f32(f32(-1f) * -206f))))));
    var_0 = ~(~vec4<u32>(1u, abs(20257u), ~(25190u ^ var_0.x), ~0u >> (abs(0u) % 32u)));
    return Struct_2(vec2<bool>(false, any(vec4<bool>(true, true, true, true))), Struct_1(func_4(Struct_4(false, u_input.b, func_2(u_input.d))).a, _wgslsmith_add_i32(global0.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(8338i, global0.a.x, global0.a.x), vec3<i32>(u_input.b, -2147483647i, global0.a.x))) != u_input.d.x, true, all(vec3<bool>(2152f != var_2, -2147483647i != global0.b.x, true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(284f + -584f), _wgslsmith_f_op_f32(round(-1000f)))), global0.a, func_6(-func_1(vec3<f32>(-1000f, -728f, 113f), global0.a.x, vec4<i32>(global0.a.x, 1i, u_input.b, -1i), -1640f) > ~(global0.a.x & global0.b.x), vec4<i32>(global0.b.x, u_input.b, _wgslsmith_add_i32(u_input.b << (4294967295u % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(-69201i, 28252i, -13891i, u_input.d.x), vec4<i32>(2147483647i, -1i, 1i, global0.b.x))), ~(-global0.a.x)), u_input.c.xyx & ~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c.x, 2976u, u_input.c.x), vec3<u32>(16204u, u_input.c.x, 38801u))), Struct_3(u_input.d.xx << (vec2<u32>(u_input.c.x, ~1u) % vec2<u32>(32u)), _wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.d.yx, _wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, 1495i), vec2<i32>(-23925i, 32429i))), _wgslsmith_mod_vec2_i32(~vec2<i32>(-42711i, -17142i), ~global0.a))));
    global0 = func_2(_wgslsmith_sub_vec3_i32(u_input.d, vec3<i32>(-2147483647i, (i32(-1i) * -57997i) ^ (22787i | global0.b.x), u_input.d.x)));
    var var_1 = vec3<i32>(2147483647i, global0.b.x, global0.a.x);
    global0 = Struct_3(vec2<i32>(~(-2147483647i), global0.a.x), ~(global0.a ^ reverseBits(~vec2<i32>(u_input.b, -40578i))));
    var var_2 = vec3<u32>(10524u, var_0.b.a.x, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(abs(global1[_wgslsmith_index_u32(843u, 14u)]), countOneBits(vec3<u32>(u_input.c.x, u_input.a.x, u_input.c.x))), u_input.a.x, ~_wgslsmith_div_u32(u_input.a.x, u_input.a.x)), _wgslsmith_dot_vec4_u32(u_input.c, ~u_input.c ^ u_input.c)));
    let var_3 = ~var_0.b.a.x > 116367u;
    global0 = func_6(!(!var_3), countOneBits(~max(vec4<i32>(-10389i, -3607i, -2147483647i, u_input.b) & vec4<i32>(-2147483647i, 18130i, 34610i, u_input.d.x), -vec4<i32>(u_input.b, -1i, global0.b.x, 0i))), ~global1[_wgslsmith_index_u32(~var_2.x, 14u)]);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>((u_input.c.x << (_wgslsmith_mod_u32(var_2.x, 1375u) % 32u)) >> (81738u % 32u), var_0.b.a.x), -_wgslsmith_mult_i32(-10261i, 79060i), var_0.b.a);
}

