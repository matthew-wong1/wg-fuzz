struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
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

var<private> global0: array<vec3<u32>, 12>;

var<private> global1: array<Struct_2, 3> = array<Struct_2, 3>(Struct_2(true, Struct_1(-73882i), -1i), Struct_2(false, Struct_1(i32(-2147483648)), 4487i), Struct_2(false, Struct_1(-10168i), -1415i));

var<private> global2: Struct_1;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: vec3<i32>, arg_2: f32) -> f32 {
    var var_0 = vec2<u32>(_wgslsmith_add_u32(~(~(~u_input.b.x)), _wgslsmith_mod_u32(~27854u, _wgslsmith_mult_u32(1u, u_input.b.x & u_input.a.x))), 1u);
    var var_1 = Struct_2(arg_0, Struct_1(global2.a), ~(_wgslsmith_add_i32(arg_1.x, arg_1.x) << (_wgslsmith_sub_u32(25340u, select(u_input.b.x, u_input.b.x, arg_0)) % 32u)));
    var var_2 = Struct_1(~((~global2.a & (-3006i | global2.a)) & firstLeadingBit(global2.a & 1i)));
    let var_3 = Struct_2(!arg_0, Struct_1(_wgslsmith_div_i32(54286i, var_1.c)), _wgslsmith_mod_i32(global2.a, 1i));
    let var_4 = !(!(true != (false != all(vec4<bool>(var_3.a, var_1.a, var_1.a, false)))));
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(228f - arg_2)));
}

fn func_2() -> f32 {
    var var_0 = Struct_1(firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(global2.a, global2.a, 200i), vec3<i32>(global2.a, -2147483647i, global2.a)) ^ abs(global2.a)) & global2.a);
    let var_1 = _wgslsmith_f_op_f32(func_3(false, -firstTrailingBit(abs(abs(vec3<i32>(2147483647i, 0i, -1i)))), _wgslsmith_div_f32(1133f, _wgslsmith_f_op_f32(1f + 427f))));
    var var_2 = Struct_2(_wgslsmith_add_i32(reverseBits(var_0.a), 30439i) <= (i32(-1i) * -1i), Struct_1(_wgslsmith_add_i32(min(-var_0.a, -1i), _wgslsmith_clamp_i32(global2.a, 2478i, 25368i) >> (u_input.b.x % 32u))), ~firstTrailingBit(_wgslsmith_add_i32(1i, -2147483647i)));
    let var_3 = Struct_1(select(var_0.a, var_0.a, true));
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1868f + _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(trunc(var_1))));
}

fn func_4(arg_0: f32, arg_1: vec4<bool>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), u_input.b.zz);
    var_0 = vec2<u32>(firstTrailingBit(u_input.a.x), ~reverseBits(~78179u) >> ((u_input.b.x >> (~_wgslsmith_sub_u32(99685u, var_0.x) % 32u)) % 32u));
    var_0 = max(_wgslsmith_mult_vec2_u32(u_input.a, ~(~(vec2<u32>(18923u, var_0.x) ^ vec2<u32>(var_0.x, 0u)))), abs(vec2<u32>(~var_0.x & ~u_input.a.x, firstTrailingBit(var_0.x >> (u_input.a.x % 32u)))));
    var var_1 = _wgslsmith_sub_vec3_u32(~(~(~firstLeadingBit(vec3<u32>(91646u, 60363u, var_0.x)))), global0[_wgslsmith_index_u32(14093u, 12u)]);
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(2296f, -578f)))), -689f, 1371f, _wgslsmith_f_op_f32(ceil(arg_0)));
    return arg_2;
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: u32) -> bool {
    global2 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-202f + -2557f), _wgslsmith_f_op_f32(func_2())) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(698f * 167f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(696f))))), !vec4<bool>(true, arg_2.x < (arg_1.a << (31345u % 32u)), all(vec3<bool>(arg_0, false, true)), arg_0), arg_1);
    global0 = array<vec3<u32>, 12>();
    var var_0 = _wgslsmith_div_vec4_i32(~_wgslsmith_div_vec4_i32(max(_wgslsmith_add_vec4_i32(vec4<i32>(3927i, global2.a, -2147483647i, 4562i), vec4<i32>(1i, arg_2.x, global2.a, -82745i)), abs(vec4<i32>(arg_2.x, global2.a, arg_2.x, 1i))), vec4<i32>(46185i, 2147483647i, _wgslsmith_clamp_i32(global2.a, 9290i, 20657i), _wgslsmith_dot_vec3_i32(vec3<i32>(9743i, -58719i, arg_2.x), vec3<i32>(arg_2.x, 2147483647i, 45592i)))), vec4<i32>(31016i, global2.a, select(-56875i, ~global2.a, arg_0), 18939i));
    var var_1 = reverseBits(var_0.x);
    var_1 = arg_2.x;
    return arg_0 & arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 41951u;
    let var_1 = vec2<bool>(!(!all(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)))), !select(true || all(vec3<bool>(true, true, false)), true, true || func_1(true, Struct_1(global2.a), vec2<i32>(global2.a, global2.a), u_input.a.x)));
    let var_2 = _wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(~_wgslsmith_mult_vec2_i32(-vec2<i32>(global2.a, 1i), min(vec2<i32>(global2.a, -3930i), vec2<i32>(40192i, global2.a))), vec2<i32>(firstTrailingBit(-1i), 0i)), _wgslsmith_sub_vec2_i32(vec2<i32>(-global2.a, _wgslsmith_dot_vec3_i32(~vec3<i32>(-7191i, global2.a, -29632i), -vec3<i32>(-42047i, 0i, global2.a))), min(countOneBits(vec2<i32>(global2.a, 1i) >> (u_input.b.zy % vec2<u32>(32u))), vec2<i32>(0i, -2147483647i) & ~vec2<i32>(global2.a, global2.a))));
    let var_3 = var_1.x;
    let var_4 = vec4<i32>(~(-29962i), global2.a, _wgslsmith_mult_i32(~(-1i << (u_input.a.x % 32u)), -_wgslsmith_sub_i32(1i, var_2.x)), ~(-85309i));
    var var_5 = vec3<i32>(global2.a, ~15499i, _wgslsmith_mod_i32(-13246i, ~(~70978i)));
    let var_6 = _wgslsmith_clamp_i32(~67659i, _wgslsmith_add_i32(-max(var_4.x, var_4.x ^ var_2.x), func_4(-1227f, !(!vec4<bool>(true, true, false, var_3)), Struct_1(abs(global2.a))).a), var_4.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(func_3(!func_1(true, func_4(293f, vec4<bool>(var_1.x, true, var_1.x, var_1.x), Struct_1(1i)), ~vec2<i32>(var_2.x, 20946i), 37902u), var_4.www, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2()), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -558f), 287f))))));
}

