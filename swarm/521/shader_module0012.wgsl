struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: vec4<bool>,
    b: bool,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: bool,
    d: Struct_1,
    e: u32,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: vec2<bool>,
    b: vec2<u32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: vec2<f32>) -> i32 {
    let var_0 = Struct_2(vec4<bool>(false, true, true, true), true, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0 * _wgslsmith_f_op_vec2_f32(arg_0 + vec2<f32>(1499f, arg_0.x)))), ~(87192u << (0u % 32u)) >> (0u % 32u), all(vec4<bool>(true, true, true, true))), !(!(arg_0.x > _wgslsmith_div_f32(-1693f, 1000f))));
    var var_1 = var_0.c;
    var var_2 = true;
    let var_3 = var_1.b;
    var_2 = all(vec2<bool>(var_1.c, true));
    return 9254i;
}

fn func_2(arg_0: vec2<bool>, arg_1: f32, arg_2: vec4<u32>) -> Struct_3 {
    let var_0 = vec4<bool>(!arg_0.x, any(!select(select(vec3<bool>(true, false, true), vec3<bool>(true, arg_0.x, arg_0.x), true), vec3<bool>(false, arg_0.x, false), any(vec4<bool>(arg_0.x, false, false, true)))), arg_0.x, arg_0.x | arg_0.x);
    return Struct_3(var_0.zyy, vec4<i32>(-reverseBits(~49135i), 59565i, -1i, func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1205f, -2266f)))), var_0.x, Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(850f * -1000f), 822f)), 0u, var_0.x || true), u_input.a.x);
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: vec2<f32>) -> vec4<bool> {
    var var_0 = ~(~_wgslsmith_mult_vec4_u32(reverseBits(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, arg_0.d.b, arg_0.d.b, arg_0.e), vec4<u32>(arg_0.e, 1u, arg_0.e, arg_0.e))), ~(~vec4<u32>(u_input.a.x, u_input.a.x, 28807u, arg_0.d.b))));
    var_0 = abs(select(_wgslsmith_div_vec4_u32(~vec4<u32>(arg_0.e, 9557u, 44428u, arg_0.d.b), max(abs(vec4<u32>(1u, arg_0.e, 0u, 1u)), vec4<u32>(u_input.a.x, 4294967295u, 25650u, u_input.a.x))), countOneBits(~vec4<u32>(var_0.x, 10881u, 37049u, var_0.x)), arg_1));
    var_0 = ~select(vec4<u32>(var_0.x, _wgslsmith_add_u32(var_0.x, ~4294967295u), 22110u, min(9516u, var_0.x >> (var_0.x % 32u))), _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(55764u, 37792u), var_0.x, ~1u, 1u), ~(~vec4<u32>(1u, var_0.x, arg_0.d.b, arg_0.d.b))), arg_0.c);
    var_0 = ~vec4<u32>(1u, _wgslsmith_dot_vec3_u32(var_0.yxw << (reverseBits(vec3<u32>(0u, 27681u, 91736u)) % vec3<u32>(32u)), firstLeadingBit(vec3<u32>(20549u, u_input.a.x, 0u))), 0u, _wgslsmith_add_u32(~(~0u), ~select(var_0.x, arg_0.d.b, false)));
    let var_1 = Struct_4(Struct_2(!select(!vec4<bool>(arg_0.c, arg_0.a.x, true, arg_1), !vec4<bool>(arg_0.d.c, arg_1, true, arg_0.c), false != arg_0.a.x), true, arg_0.d, arg_0.d.c));
    return var_1.a.a;
}

fn func_1(arg_0: u32) -> i32 {
    let var_0 = !func_4(func_2(select(select(vec2<bool>(true, false), vec2<bool>(false, true), false), vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false))), -372f, vec4<u32>(arg_0, 4294967295u, u_input.a.x, arg_0) << ((vec4<u32>(1u, u_input.a.x, 0u, 0u) & vec4<u32>(25173u, u_input.a.x, 4294967295u, u_input.a.x)) % vec4<u32>(32u))), true | any(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(853f, -1370f) - vec2<f32>(756f, 651f))))));
    let var_1 = func_2(vec2<bool>(!var_0.x, !(!(arg_0 >= 11114u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-1124f, -1345f))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - 1093f)), countOneBits(_wgslsmith_mod_vec4_u32(select(vec4<u32>(u_input.a.x, 69460u, arg_0, arg_0), vec4<u32>(arg_0, 4294967295u, 4294967295u, 6489u), !vec4<bool>(true, true, var_0.x, var_0.x)), vec4<u32>(~arg_0, ~arg_0, arg_0, 4294967295u))));
    var var_2 = abs(abs(~_wgslsmith_add_vec4_u32(vec4<u32>(var_1.e, 1u, var_1.d.b, arg_0), ~vec4<u32>(1u, var_1.e, 34927u, 29476u))));
    return 0i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -255f;
    let var_1 = _wgslsmith_div_vec4_u32(countOneBits(select(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, u_input.a.x, u_input.a.x, 49347u), vec4<u32>(u_input.a.x, u_input.a.x, 0u, 0u)) ^ ~vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.a.x), ~(~vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x)), vec4<bool>(true, true, true, true))), vec4<u32>(0u, _wgslsmith_div_u32(31117u, 1u), _wgslsmith_dot_vec4_u32(~(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 1u) << (vec4<u32>(u_input.a.x, 1u, 76887u, 50606u) % vec4<u32>(32u))), vec4<u32>(_wgslsmith_div_u32(u_input.a.x, 4294967295u), 0u, ~4294967295u, _wgslsmith_div_u32(1u, u_input.a.x))), ~(u_input.a.x & _wgslsmith_mod_u32(u_input.a.x, 52028u))));
    let var_2 = vec3<u32>(firstLeadingBit(_wgslsmith_dot_vec4_u32(select(var_1, vec4<u32>(115192u, u_input.a.x, 90573u, var_1.x), true), min(var_1, var_1)) | abs(_wgslsmith_clamp_u32(4294967295u, var_1.x, 5689u))), select(_wgslsmith_div_u32(45709u, ~_wgslsmith_dot_vec3_u32(var_1.yyy, vec3<u32>(var_1.x, 59918u, 27235u))), _wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.a.x, ~17940u), u_input.a.x), !any(vec4<bool>(true, true, true, true))), var_1.x);
    let var_3 = (countOneBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, 0i, 0i) << (var_2 % vec3<u32>(32u)), vec3<i32>(1i, 1i, 1i), vec3<i32>(1i, 10974i, -1i))) & vec3<i32>(~11508i, ~(~2147483647i), i32(-1i) * -1i)) ^ (vec3<i32>(~(~(-19072i)), _wgslsmith_div_i32(-19282i, ~16078i), func_1(var_2.x)) | _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_add_i32(30233i, 0i), 1i, -21368i), _wgslsmith_mult_vec3_i32(firstTrailingBit(vec3<i32>(-2147483647i, 31971i, 2147483647i)), vec3<i32>(0i, 17784i, 22350i) >> (var_1.www % vec3<u32>(32u)))));
    let var_4 = func_2(!vec2<bool>(select(select(true, true, true), true, select(false, true, true)), true), var_0, var_1);
    let var_5 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(floor(-492f))), _wgslsmith_f_op_f32(floor(var_0))) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-var_4.d.a)))), 4294967295u, all(func_2(var_4.a.yz, _wgslsmith_f_op_f32(round(126f)), abs(var_1) ^ ~var_1).a));
    let var_6 = Struct_3(vec3<bool>(true, !((1i ^ var_4.b.x) > countOneBits(55077i)), all(vec3<bool>(true, false, 14046u >= u_input.a.x))), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(38404i, countOneBits(var_3.x), -33424i), vec3<i32>(var_4.b.x, var_4.b.x, var_3.x)), _wgslsmith_mod_i32(var_4.b.x, -25613i), abs(0i), var_4.b.x), all(select(vec2<bool>(!var_5.c, false), var_4.a.zy, vec2<bool>(true, var_4.c))), Struct_1(var_4.d.a, _wgslsmith_sub_u32(_wgslsmith_div_u32(4294967295u | var_2.x, u_input.a.x), min(func_2(var_4.a.yy, var_5.a.x, vec4<u32>(var_4.e, 147357u, var_1.x, u_input.a.x)).d.b, _wgslsmith_sub_u32(var_2.x, 0u))), false), _wgslsmith_dot_vec2_u32(var_2.xz, _wgslsmith_mult_vec2_u32(var_1.yw, vec2<u32>(var_2.x, 80061u)) | (_wgslsmith_add_vec2_u32(vec2<u32>(23556u, 0u), vec2<u32>(1u, 2559u)) << ((var_2.xz | u_input.a) % vec2<u32>(32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(-1i, max(i32(-1i) * -22599i, 0i)));
}

