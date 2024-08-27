struct Struct_1 {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: f32,
    d: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<bool>,
    c: vec2<bool>,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec4<f32>,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(vec4<i32>(-36470i, 9199i, -3252i, 1i), vec2<u32>(1u, 73625u)), Struct_1(vec4<i32>(13295i, -12607i, 2147483647i, 1i), vec2<u32>(0u, 67508u)), Struct_1(vec4<i32>(-6345i, i32(-2147483648), 63335i, 10318i), vec2<u32>(1u, 21685u)), Struct_1(vec4<i32>(-12413i, 21304i, 1i, -2774i), vec2<u32>(4294967295u, 0u)));

var<private> global1: Struct_1;

var<private> global2: u32;

var<private> global3: i32 = 32939i;

var<private> global4: u32 = 35967u;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> bool {
    let var_0 = global1.b;
    global2 = global1.b.x;
    global2 = var_0.x;
    var var_1 = 4294967295u;
    let var_2 = 2392u;
    return true;
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    var var_0 = arg_0;
    var var_1 = Struct_3(Struct_2(Struct_1(var_0.a, vec2<u32>(1u, ~u_input.a.x)), ~select(abs(vec3<u32>(54261u, 20348u, 4294967295u)), ~vec3<u32>(u_input.a.x, 29909u, var_0.b.x), any(vec3<bool>(true, false, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1516f)), select(_wgslsmith_add_vec3_u32(min(vec3<u32>(4294967295u, global1.b.x, 4294967295u), vec3<u32>(4294967295u, u_input.a.x, arg_0.b.x)), ~vec3<u32>(1u, 1u, arg_0.b.x)), vec3<u32>(arg_0.b.x, ~u_input.a.x, var_0.b.x), false)), select(select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true)), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false))), !vec4<bool>(true, global1.b.x != arg_0.b.x, false, true), !vec4<bool>(arg_0.b.x >= var_0.b.x, select(false, false, true), true, true)), select(select(vec2<bool>(false, any(vec4<bool>(false, true, false, false))), !select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)), true), select(vec2<bool>(true, true), vec2<bool>(func_3(), true), vec2<bool>(true, true)), true & any(vec3<bool>(true, true, true))), arg_0, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1559f + _wgslsmith_f_op_f32(trunc(-780f)))))));
    let var_2 = Struct_1(~firstLeadingBit(vec4<i32>(_wgslsmith_dot_vec3_i32(arg_0.a.xyw, vec3<i32>(-25910i, global1.a.x, -47793i)), arg_0.a.x, ~var_1.d.a.x, 2147483647i)), var_0.b);
    var var_3 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(2088f, _wgslsmith_f_op_f32(round(var_1.e)), _wgslsmith_f_op_f32(f32(-1f) * -170f)) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(615f, -127f, var_1.a.c) * vec3<f32>(-2145f, var_1.a.c, var_1.a.c)), vec3<f32>(var_1.e, var_1.a.c, 2028f)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2273f, -372f, -816f)))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.c, var_1.a.c, var_1.e) * vec3<f32>(1598f, -703f, var_1.e))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.a.c, var_1.e, -136f), vec3<f32>(var_1.e, -465f, -619f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.e, var_1.a.c, -875f))))))));
    let var_4 = Struct_3(var_1.a, vec4<bool>(true && (var_2.b.x < min(var_1.d.b.x, arg_0.b.x)), true, var_1.b.x, any(select(var_1.c, var_1.c, vec2<bool>(false, var_1.c.x))) && true), vec2<bool>(false, any(vec2<bool>(var_1.b.x, false)) && any(var_1.b)), Struct_1(global1.a, _wgslsmith_mult_vec2_u32(select(u_input.a, vec2<u32>(var_2.b.x, var_1.d.b.x), var_1.b.x), arg_0.b) ^ _wgslsmith_sub_vec2_u32(vec2<u32>(1572u, 4294967295u), ~vec2<u32>(4294967295u, 11930u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(var_1.a.c, var_1.a.c, false)), -317f)))));
    return var_4.a;
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: vec2<f32>) -> u32 {
    global1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~countOneBits(_wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(u_input.a, vec2<u32>(0u, global1.b.x)), global1.b)), vec2<u32>(_wgslsmith_sub_u32(firstLeadingBit(25828u), u_input.a.x), ~(~1u)) << (u_input.a % vec2<u32>(32u))), 4u)];
    let var_0 = arg_1.a;
    var var_1 = ~firstLeadingBit(global1.b.x);
    var_1 = 99242u;
    var_1 = ~(~(~func_2(global0[_wgslsmith_index_u32(0u, 4u)]).d.x)) & _wgslsmith_clamp_u32(min(abs(~17161u), ~_wgslsmith_sub_u32(arg_1.a.b.x, u_input.a.x)), ~4294967295u & _wgslsmith_div_u32(min(0u, var_0.b.x), 0u), 40237u);
    return _wgslsmith_add_u32(0u, u_input.a.x);
}

fn func_5(arg_0: u32, arg_1: vec3<f32>) -> Struct_2 {
    return Struct_2(global0[_wgslsmith_index_u32(u_input.a.x, 4u)], ~vec3<u32>(firstLeadingBit(arg_0) >> (2536u % 32u), 0u, 1u), arg_1.x, _wgslsmith_mod_vec3_u32(vec3<u32>(70887u, global1.b.x, 40032u), vec3<u32>(countOneBits(arg_0), global1.b.x, 4294967295u) >> (min(vec3<u32>(global1.b.x, 4294967295u, 1u) | vec3<u32>(40486u, 12789u, 75913u), vec3<u32>(1u, global1.b.x, 1u)) % vec3<u32>(32u))));
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: f32, arg_3: bool) -> Struct_2 {
    let var_0 = global0[_wgslsmith_index_u32(~global1.b.x, 4u)];
    global2 = firstLeadingBit(arg_0) | 0u;
    var var_1 = !vec3<bool>(false, any(select(vec2<bool>(false, arg_3), select(vec2<bool>(true, arg_3), vec2<bool>(false, arg_3), arg_3), arg_1)), arg_1);
    let var_2 = 38690i;
    global1 = global0[_wgslsmith_index_u32(0u, 4u)];
    return func_5(_wgslsmith_add_u32(firstTrailingBit(4294967295u), ~func_4(vec4<i32>(0i, 0i, global1.a.x, var_2), func_2(Struct_1(global1.a, vec2<u32>(38257u, u_input.a.x))), vec2<f32>(arg_2, arg_2))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-630f, _wgslsmith_f_op_f32(arg_2 * _wgslsmith_f_op_f32(422f + arg_2)), 127f)));
}

fn func_6(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_2, arg_3: bool) -> vec3<f32> {
    var var_0 = select(arg_0.b.zwz, select(!select(vec3<bool>(false, arg_0.c.x, true), !vec3<bool>(arg_0.b.x, arg_3, true), true), vec3<bool>(true, false | any(arg_0.b.wzx), true), false), arg_3);
    global1 = func_1(1u, false, arg_0.e, var_0.x && var_0.x).a;
    global2 = ~(~arg_1.d.b.x);
    global3 = arg_1.a.a.a.x;
    var var_1 = Struct_3(func_2(func_1(4294967295u, true, _wgslsmith_div_f32(arg_0.e, _wgslsmith_f_op_f32(ceil(arg_2.c))), select(true, global1.b.x >= 49825u, arg_3)).a), !(!select(!vec4<bool>(true, arg_1.c.x, arg_0.b.x, var_0.x), vec4<bool>(false, true, arg_1.b.x, arg_0.c.x), arg_1.b)), vec2<bool>(false, reverseBits(u_input.c.x) >= ((-1i ^ arg_0.a.a.a.x) ^ _wgslsmith_mod_i32(8822i, 2147483647i))), global0[_wgslsmith_index_u32(arg_2.a.b.x, 4u)], arg_2.c);
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(790f - arg_1.e)) * _wgslsmith_f_op_f32(-var_1.a.c)), arg_0.e, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2(Struct_1(vec4<i32>(-17536i, -2147483647i, 29704i, 2147483647i), vec2<u32>(arg_1.d.b.x, 0u))).c * _wgslsmith_div_f32(545f, arg_0.a.c)), _wgslsmith_f_op_f32(min(arg_2.c, _wgslsmith_div_f32(-2094f, 1000f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1u;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_6(Struct_3(func_1(u_input.a.x, false, 924f, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), Struct_1(vec4<i32>(global1.a.x, global1.a.x, u_input.b.x, global1.a.x), u_input.a), 955f), Struct_3(Struct_2(Struct_1(vec4<i32>(31573i, global1.a.x, 2147483647i, -2147483647i), vec2<u32>(u_input.a.x, u_input.a.x)), vec3<u32>(43112u, 4294967295u, u_input.a.x), 954f, vec3<u32>(global1.b.x, 32988u, 25312u)), vec4<bool>(true, true, true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)), func_1(global1.b.x, false, -1000f, true).a, -620f), func_1(firstTrailingBit(20511u), any(vec4<bool>(false, true, false, true)), _wgslsmith_f_op_f32(1330f * 416f), all(vec3<bool>(false, false, true))), all(vec4<bool>(true, true, true, true)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-423f, -1000f, 800f) + vec3<f32>(-114f, 1485f, -643f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(3652f, 721f, 128f) * vec3<f32>(-421f, -735f, -774f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(2543f, 221f, 2189f) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1138f, -520f, -1099f), vec3<f32>(1013f, -646f, -197f)))), vec3<bool>(true, u_input.a.x == u_input.a.x, true)))));
    let var_2 = func_5(25303u, _wgslsmith_f_op_vec3_f32(vec3<f32>(func_1(61948u, true, var_1.x, true).c, 486f, 484f) * var_1)).c;
    var var_3 = func_2(global0[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_div_u32(u_input.a.x, max(func_2(global0[_wgslsmith_index_u32(0u, 4u)]).d.x, 1u))), 4u)]).a;
    let var_4 = vec4<bool>(!(all(vec3<bool>(true, true, true)) | !(-58713i != u_input.c.x)), all(select(vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(true, false), false), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, true))), true, false);
    let var_5 = Struct_3(func_5(21200u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(477f, var_2, -418f)) * _wgslsmith_f_op_vec3_f32(-var_1)))), select(vec4<bool>(_wgslsmith_f_op_f32(-var_2) > -169f, var_4.x, true, true), vec4<bool>(var_4.x, (-535f > var_1.x) | (1i >= u_input.d.x), all(select(vec2<bool>(var_4.x, var_4.x), var_4.zw, vec2<bool>(false, var_4.x))), var_4.x), var_4), vec2<bool>(true, var_4.x), func_1(var_3.b.x, (1u != max(84891u, global1.b.x)) && (!var_4.x && (-245f < var_1.x)), 725f, true && var_4.x).a, 870f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(632f)) * var_2)), _wgslsmith_f_op_vec4_f32(vec4<f32>(func_5(var_5.a.d.x, _wgslsmith_f_op_vec3_f32(abs(var_1))).c, var_2, _wgslsmith_f_op_f32(1718f * var_1.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-765f))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -142f), _wgslsmith_f_op_vec3_f32(func_6(var_5, Struct_3(Struct_2(global0[_wgslsmith_index_u32(14189u, 4u)], vec3<u32>(4294967295u, var_5.a.b.x, 4294967295u), var_5.a.c, vec3<u32>(u_input.a.x, 12396u, 1u)), vec4<bool>(var_4.x, var_4.x, false, var_5.b.x), var_5.b.zx, Struct_1(vec4<i32>(2147483647i, -44868i, -53635i, var_5.a.a.a.x), var_3.b), -1538f), Struct_2(global0[_wgslsmith_index_u32(global1.b.x, 4u)], var_5.a.d, var_1.x, vec3<u32>(13001u, u_input.a.x, u_input.a.x)), var_5.c.x)).x, _wgslsmith_f_op_f32(f32(-1f) * -1462f), -1000f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_2)), -435f), func_5(_wgslsmith_div_u32(4294967295u, 4294967295u), _wgslsmith_f_op_vec3_f32(select(var_1, var_1, false))).c, var_1.x, var_2)), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c.x, _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 1i, 18770i, -1i), vec4<i32>(14439i, -1i, var_3.a.x, 0i)), global1.a.x << (var_5.a.a.b.x % 32u)), -42202i), ~vec3<i32>(-u_input.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(global1.a.x, u_input.d.x), u_input.d.zz), _wgslsmith_mod_i32(global1.a.x, global1.a.x))), _wgslsmith_div_u32(reverseBits(8909u), _wgslsmith_sub_u32(0u, global1.b.x)));
}

