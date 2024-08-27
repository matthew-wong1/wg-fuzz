struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: vec2<i32>,
    d: vec3<i32>,
    e: Struct_2,
}

struct Struct_5 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: f32,
    d: vec3<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-727f, -1000f);

var<private> global1: array<vec4<f32>, 3>;

var<private> global2: Struct_4;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: vec3<u32>) -> f32 {
    global0 = global2.e.b.zz;
    var var_0 = Struct_3(_wgslsmith_div_u32(arg_2.x, countOneBits(abs(1u) << (_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1, 14880u, 10639u), arg_2) % 32u))), global2.b, Struct_2(Struct_1(~abs(global2.b.a)), _wgslsmith_f_op_vec3_f32(global2.e.b * vec3<f32>(global2.e.b.x, _wgslsmith_f_op_f32(global2.e.b.x - global0.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), global2.e);
    let var_1 = -1808f;
    let var_2 = abs(vec2<u32>(~global2.e.a.a.x ^ 11341u, ~(~1u)));
    global2 = Struct_4(~select(-arg_0, max(_wgslsmith_div_i32(9443i, u_input.b), global2.a << (28829u % 32u)), false), global2.e.a, abs(_wgslsmith_sub_vec2_i32(global2.d.yz, vec2<i32>(global2.c.x, abs(global2.c.x)))), vec3<i32>(u_input.b, _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(-2147483647i, arg_0, u_input.b)), -u_input.a), -2147483647i) ^ (u_input.a >> (min(_wgslsmith_div_vec3_u32(vec3<u32>(var_2.x, arg_2.x, 0u), var_0.b.a.wzx), ~vec3<u32>(11321u, arg_1, 9923u)) % vec3<u32>(32u))), Struct_2(Struct_1(~(var_0.d.a.a >> (global2.b.a % vec4<u32>(32u)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(568f, 713f, global2.e.b.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(-404f, 609f, var_0.d.b.x) * var_0.c.b)))));
    return var_0.d.b.x;
}

fn func_2() -> Struct_1 {
    global0 = global2.e.b.zy;
    let var_0 = 1u;
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.e.b.x, _wgslsmith_f_op_f32(abs(global2.e.b.x)), _wgslsmith_f_op_f32(func_3(u_input.a.x, var_0, vec3<u32>(1u, var_0, var_0))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(trunc(global2.e.b))))) + _wgslsmith_f_op_vec3_f32(-global2.e.b));
    let var_2 = Struct_1(abs(vec4<u32>(firstLeadingBit(abs(39846u)), 49875u, _wgslsmith_dot_vec3_u32(global2.e.a.a.zyw, global2.e.a.a.wzx), firstTrailingBit(0u | global2.e.a.a.x))));
    var_1 = global2.e.b;
    return var_2;
}

fn func_1(arg_0: bool, arg_1: vec2<bool>, arg_2: vec3<i32>) -> Struct_4 {
    var var_0 = Struct_4(arg_2.x, global2.e.a, ~vec2<i32>(1i, 1i) ^ (-_wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, arg_2.x), global2.c) ^ _wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-1i, -29378i), u_input.a.zx), global2.c)), vec3<i32>(~global2.a, _wgslsmith_mult_i32(global2.c.x, -1i), ~arg_2.x), Struct_2(func_2(), global2.e.b));
    var var_1 = _wgslsmith_mod_i32(global2.d.x, _wgslsmith_div_i32(1396i, -54097i));
    global0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.e.b.xz) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.e.b.x, global2.e.b.x) + var_0.e.b.xx))))));
    let var_2 = arg_1;
    var var_3 = Struct_2(var_0.b, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-global2.e.b))));
    return Struct_4(2147483647i, func_2(), _wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(max(max(vec2<i32>(1i, -45242i), vec2<i32>(global2.d.x, 1i)), _wgslsmith_clamp_vec2_i32(arg_2.yx, var_0.d.yx, vec2<i32>(-2147483647i, global2.d.x))), _wgslsmith_mod_vec2_i32(-arg_2.xy, var_0.c)), global2.d.yx), reverseBits(max(vec3<i32>(-1i, ~53232i, -16945i), var_0.d << (~vec3<u32>(global2.e.a.a.x, 1u, 13482u) % vec3<u32>(32u)))), global2.e);
}

fn func_4(arg_0: Struct_4, arg_1: Struct_3, arg_2: bool) -> Struct_1 {
    var var_0 = global2.e.b.x;
    let var_1 = Struct_1(~firstLeadingBit(min(global2.b.a, arg_1.b.a)) >> (~min(~vec4<u32>(arg_0.b.a.x, arg_1.c.a.a.x, 4294967295u, 4294967295u), ~vec4<u32>(20867u, arg_1.c.a.a.x, global2.b.a.x, 27408u)) % vec4<u32>(32u)));
    let var_2 = (50407u ^ arg_0.b.a.x) <= global2.b.a.x;
    var var_3 = Struct_2(arg_0.b, arg_0.e.b);
    var var_4 = func_1((func_1(false, vec2<bool>(arg_2, arg_2), vec3<i32>(global2.d.x, u_input.a.x, 2147483647i)).e.a.a.x | 1u) >= 4294967295u, select(vec2<bool>(true, true), select(!(!vec2<bool>(arg_2, arg_2)), vec2<bool>(true, true), arg_2), false), global2.d >> (~global2.b.a.yxz % vec3<u32>(32u)));
    return Struct_1(global2.b.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global2.e.b.xx;
    global2 = Struct_4(-13648i, func_4(func_1(false, select(vec2<bool>(true, true), vec2<bool>(false, false), true), vec3<i32>(u_input.b, global2.c.x ^ -29239i, _wgslsmith_clamp_i32(-2147483647i, -2147483647i, 1i))), Struct_3(618u, Struct_1(global2.b.a), func_1(true, select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)), u_input.a).e, global2.e), any(vec2<bool>(true, global2.a >= -2743i))), u_input.a.yx, -firstLeadingBit(vec3<i32>(-1i, -41842i, u_input.b) & _wgslsmith_sub_vec3_i32(u_input.a, vec3<i32>(global2.d.x, u_input.a.x, global2.a))), Struct_2(global2.b, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1471f, 1521f, global0.x), vec3<f32>(global0.x, _wgslsmith_f_op_f32(-global2.e.b.x), _wgslsmith_f_op_f32(floor(global2.e.b.x))), vec3<bool>(true, true, true)))));
    global0 = global2.e.b.yy;
    let var_0 = Struct_5(global2.e.b.zy);
    var var_1 = func_1(true, vec2<bool>(true, true), u_input.a).e;
    let x = u_input.a;
    s_output = StorageBuffer(-239f, var_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(830f)))), u_input.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(var_1.b)) - func_1(!any(vec2<bool>(true, true)), !select(vec2<bool>(false, true), vec2<bool>(true, false), true), global2.d).e.b));
}

