struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<f32>,
    d: i32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_1(vec3<bool>(false, true, false), 6605i, 762f), -1i, Struct_2(-39742i, 67711u, vec3<bool>(true, false, false)));

var<private> global1: Struct_1;

var<private> global2: Struct_3 = Struct_3(Struct_1(vec3<bool>(true, true, true), 28568i, 575f), -10283i, Struct_2(2147483647i, 0u, vec3<bool>(false, false, true)));

var<private> global3: vec4<bool>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>) -> vec3<u32> {
    global1 = Struct_1(!(!vec3<bool>(true, false, true | global1.a.x)), arg_0.b, _wgslsmith_f_op_f32(-arg_0.c));
    var var_0 = Struct_4(global0.a.c, !(!(!global2.c.c.xz)));
    global2 = Struct_3(Struct_1(!select(select(global1.a, vec3<bool>(true, global1.a.x, false), arg_0.a), vec3<bool>(true, global3.x, true), !vec3<bool>(false, global3.x, var_0.b.x)), global2.c.a, _wgslsmith_f_op_f32(select(716f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.a, 115f)) - -436f), false))), _wgslsmith_mult_i32(-arg_0.b, arg_0.b), global0.c);
    let var_1 = global2.c;
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0.c)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c) - _wgslsmith_f_op_f32(f32(-1f) * -2136f))))), -1345f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(abs(-201f))) * 1217f) * _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(1227f, _wgslsmith_f_op_f32(-var_0.a))))), -722f);
    return _wgslsmith_mod_vec3_u32(vec3<u32>(global0.c.b, _wgslsmith_add_u32(55931u, u_input.b.x) & ~global2.c.b, _wgslsmith_add_u32(global0.c.b, u_input.b.x)) << (abs(~(vec3<u32>(1u, 85651u, var_1.b) & vec3<u32>(46678u, global0.c.b, 1u))) % vec3<u32>(32u)), vec3<u32>(firstTrailingBit(var_1.b), var_1.b, _wgslsmith_mod_u32(~var_1.b, _wgslsmith_mod_u32(~global0.c.b, var_1.b))));
}

fn func_2(arg_0: Struct_3) -> vec3<u32> {
    var var_0 = select(_wgslsmith_add_vec3_u32(func_3(global0.a, !select(vec4<bool>(global0.a.a.x, true, false, global3.x), vec4<bool>(global0.c.c.x, global3.x, true, false), global1.a.x)), vec3<u32>(23381u, u_input.b.x, 1u)), min(_wgslsmith_mod_vec3_u32(vec3<u32>(5866u, 25745u, u_input.b.x), ~vec3<u32>(u_input.b.x, global2.c.b, 1u)) << ((vec3<u32>(global2.c.b, u_input.b.x, 1u) >> (~vec3<u32>(0u, global2.c.b, arg_0.c.b) % vec3<u32>(32u))) % vec3<u32>(32u)), max(~firstTrailingBit(vec3<u32>(global2.c.b, 18833u, 38706u)), ~_wgslsmith_mod_vec3_u32(vec3<u32>(38774u, u_input.b.x, 4294967295u), vec3<u32>(u_input.b.x, 30277u, 2875u)))), global1.a);
    let var_1 = Struct_4(-958f, select(select(vec2<bool>(false, !global0.a.a.x), !vec2<bool>(global0.c.c.x, global1.a.x), global1.a.xz), vec2<bool>(true, true), vec2<bool>(any(select(vec4<bool>(global3.x, false, global0.a.a.x, global0.c.c.x), vec4<bool>(global0.a.a.x, false, true, global3.x), global1.a.x)), any(vec4<bool>(global3.x, arg_0.c.c.x, arg_0.c.c.x, false)))));
    var_0 = vec3<u32>(11714u, 5938u, func_3(global2.a, select(vec4<bool>(true, true, true, true), vec4<bool>(arg_0.c.c.x, global2.a.a.x, true, var_1.b.x), any(vec3<bool>(global3.x, global1.a.x, false)))).x) ^ ~func_3(global0.a, !select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), global1.a.x));
    var var_2 = ~61118u;
    let var_3 = select(-_wgslsmith_sub_vec4_i32(vec4<i32>(-6075i, global0.c.a, u_input.c, 2147483647i), vec4<i32>(global0.a.b, arg_0.a.b, global0.b, 1i)) >> (vec4<u32>(u_input.b.x, 4294967295u, reverseBits(arg_0.c.b), 1u) % vec4<u32>(32u)), vec4<i32>(-2147483647i >> (~4294967295u % 32u), global1.b, -global0.c.a, 2147483647i), any(vec3<bool>(all(global0.c.c), false, global0.c.c.x))) >> (~(~select(vec4<u32>(33318u, 20873u, arg_0.c.b, arg_0.c.b), vec4<u32>(global0.c.b, var_0.x, var_0.x, arg_0.c.b), global0.a.a.x) | vec4<u32>(~u_input.b.x, global0.c.b, u_input.b.x, 4294967295u)) % vec4<u32>(32u));
    return _wgslsmith_mod_vec3_u32(max(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, global2.c.b, global0.c.b), vec3<u32>(var_0.x, global0.c.b, 1u)) | countOneBits(vec3<u32>(1u, var_0.x, 1u)), _wgslsmith_div_vec3_u32(vec3<u32>(var_0.x, global0.c.b, global2.c.b), abs(vec3<u32>(u_input.b.x, arg_0.c.b, global2.c.b)))), ~(~(vec3<u32>(0u, 63907u, global0.c.b) << (vec3<u32>(var_0.x, 0u, global0.c.b) % vec3<u32>(32u))))) ^ vec3<u32>(~(abs(20709u) | ~u_input.b.x), global2.c.b, ~(~69091u | _wgslsmith_mod_u32(global0.c.b, 4294967295u)));
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: f32, arg_3: vec4<bool>) -> bool {
    global2 = Struct_3(global0.a, global2.a.b, global0.c);
    let var_0 = u_input.b;
    let var_1 = firstTrailingBit(~(~func_2(Struct_3(Struct_1(arg_1.c, 2147483647i, global0.a.c), 6580i, Struct_2(-53851i, 46758u, vec3<bool>(true, arg_1.c.x, global0.a.a.x)))) << (firstLeadingBit(max(vec3<u32>(1u, 7872u, global2.c.b), vec3<u32>(arg_1.b, global0.c.b, 4294967295u))) % vec3<u32>(32u))));
    var var_2 = Struct_1(select(select(!global0.a.a, !select(arg_1.c, vec3<bool>(true, arg_1.c.x, true), arg_1.c), true), vec3<bool>(!global1.a.x | any(vec3<bool>(global3.x, true, true)), any(arg_1.c), all(arg_3)), vec3<bool>(global2.c.c.x || (global0.c.c.x && true), !any(vec3<bool>(true, global1.a.x, global1.a.x)), !(!global2.c.c.x))), (global1.b | global2.c.a) & -10749i, arg_2);
    global0 = Struct_3(Struct_1(select(select(global0.a.a, !vec3<bool>(true, global3.x, arg_3.x), !arg_1.c.x), vec3<bool>(true && var_2.a.x, any(arg_3), global0.a.a.x), vec3<bool>(true, true, true)), firstTrailingBit(17982i), 1000f), ~0i, Struct_2(global0.c.a, 0u, !(!vec3<bool>(global3.x, arg_3.x, global3.x))));
    return arg_3.x;
}

fn func_4(arg_0: bool, arg_1: Struct_2) -> bool {
    global0 = Struct_3(global0.a, i32(-1i) * -select(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, global0.b, 2147483647i, -22196i), vec4<i32>(-2147483647i, -1i, global2.a.b, 0i)), ~global1.b, arg_1.b > global2.c.b), global0.c);
    global1 = global0.a;
    var var_0 = global2.a.c;
    global3 = select(select(vec4<bool>(global2.a.c <= global0.a.c, any(vec3<bool>(true, true, true)), false, func_1(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, 2720i), vec2<i32>(-43226i, -1i)), Struct_2(2147483647i, 12327u, global1.a), global1.c, vec4<bool>(global1.a.x, global3.x, false, arg_1.c.x))), vec4<bool>(~4294967295u < u_input.b.x, arg_1.c.x, true, true), vec4<bool>(true, ~arg_1.b > u_input.b.x, any(global0.c.c), global2.c.c.x)), !select(select(select(vec4<bool>(arg_1.c.x, false, false, false), vec4<bool>(false, global3.x, global3.x, global3.x), arg_1.c.x), !vec4<bool>(true, true, global2.c.c.x, true), !vec4<bool>(arg_1.c.x, true, true, global1.a.x)), !(!vec4<bool>(arg_1.c.x, global3.x, true, true)), vec4<bool>(all(vec4<bool>(global1.a.x, true, false, global0.a.a.x)), true, !global3.x, global3.x)), !global0.a.a.x);
    let var_1 = true;
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(_wgslsmith_add_vec4_i32(firstTrailingBit(vec4<i32>(0i, u_input.c, global1.b, global0.c.a)), ~_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, global2.a.b, u_input.c, global2.c.a), vec4<i32>(-12266i, global2.c.a, global1.b, global0.b)))) ^ countOneBits(vec4<i32>(-(i32(-1i) * -11343i), 78051i, _wgslsmith_dot_vec4_i32(-vec4<i32>(54124i, 54118i, 2147483647i, global0.a.b), _wgslsmith_add_vec4_i32(vec4<i32>(global1.b, u_input.a, global0.b, -65991i), vec4<i32>(21680i, global1.b, global2.b, -2147483647i))), global1.b));
    var var_1 = -2147483647i;
    var var_2 = ~_wgslsmith_div_u32((~0u | ~u_input.b.x) | min(_wgslsmith_sub_u32(2230u, global2.c.b), ~global2.c.b), ~_wgslsmith_mult_u32(u_input.b.x, u_input.b.x));
    var var_3 = global1.b;
    var var_4 = Struct_4(global2.a.c, vec2<bool>(true, func_4(func_1(vec2<i32>(2302i, 1i), Struct_2(global0.a.b, 8343u, vec3<bool>(false, true, true)), -245f, !vec4<bool>(global2.a.a.x, global1.a.x, global1.a.x, global2.a.a.x)), global2.c)));
    var var_5 = global2.a;
    global3 = select(vec4<bool>(!var_4.b.x, !(!any(vec4<bool>(global3.x, global3.x, false, global1.a.x))), global2.c.c.x != (true || func_4(true, Struct_2(0i, 83071u, global1.a))), -587f == _wgslsmith_f_op_f32(sign(358f))), select(vec4<bool>(!(global1.a.x || global0.a.a.x), true, func_4(true, Struct_2(global1.b, global0.c.b, global0.a.a)), any(global3.wy)), vec4<bool>((2147483647i >> (global2.c.b % 32u)) >= 25301i, _wgslsmith_f_op_f32(1000f - var_5.c) <= _wgslsmith_f_op_f32(622f * global2.a.c), true, any(global1.a)), select(!select(vec4<bool>(false, true, global1.a.x, global1.a.x), vec4<bool>(var_5.a.x, false, false, true), global3.x), select(select(vec4<bool>(true, true, false, global1.a.x), vec4<bool>(var_4.b.x, false, var_5.a.x, false), vec4<bool>(false, var_5.a.x, global1.a.x, true)), select(vec4<bool>(false, global2.a.a.x, var_4.b.x, global1.a.x), vec4<bool>(true, false, global3.x, false), vec4<bool>(global1.a.x, true, false, global2.a.a.x)), true), !vec4<bool>(var_5.a.x, false, false, global0.a.a.x))), select(vec4<bool>(!(global2.c.c.x || global0.c.c.x), true, select(false, var_5.a.x, global1.a.x), any(global1.a.xy) & all(vec2<bool>(false, false))), vec4<bool>(false, false, any(select(vec4<bool>(global1.a.x, true, global3.x, global0.a.a.x), vec4<bool>(true, global3.x, global3.x, global2.a.a.x), vec4<bool>(false, true, global2.a.a.x, false))), all(!var_4.b)), !vec4<bool>(any(global0.c.c), global0.a.a.x, func_1(vec2<i32>(-9424i, -17695i), global2.c, var_5.c, vec4<bool>(false, global1.a.x, global2.a.a.x, false)), true)));
    var var_6 = ~_wgslsmith_mult_u32(28157u, global2.c.b);
    var var_7 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_u32(~_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 644u, 16794u, 0u), vec4<u32>(35308u, global2.c.b, u_input.b.x, 4294967295u)), ~vec4<u32>(90305u, 4294967295u, global0.c.b, 137240u)), _wgslsmith_add_vec4_u32(firstTrailingBit(~vec4<u32>(u_input.b.x, 1u, 17762u, global0.c.b)), _wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.b.x, 1u, 52235u, global0.c.b), firstLeadingBit(vec4<u32>(46491u, global2.c.b, global0.c.b, 4294967295u))))), u_input.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1000f, 970f)))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_5.c, -489f)))))), var_5.b, ~min(min(min(vec4<u32>(u_input.b.x, global2.c.b, global0.c.b, 2682u), vec4<u32>(u_input.b.x, global2.c.b, u_input.b.x, u_input.b.x)), _wgslsmith_div_vec4_u32(vec4<u32>(global0.c.b, 69587u, global0.c.b, global0.c.b), vec4<u32>(72131u, 1u, global0.c.b, global2.c.b))), firstTrailingBit(firstTrailingBit(vec4<u32>(17349u, 4294967295u, global2.c.b, u_input.b.x)))));
}

