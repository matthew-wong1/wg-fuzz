struct Struct_1 {
    a: vec3<i32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<i32>,
    c: vec3<bool>,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: i32,
    d: vec2<u32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 31> = array<vec2<u32>, 31>(vec2<u32>(32423u, 46168u), vec2<u32>(43476u, 506u), vec2<u32>(27734u, 101035u), vec2<u32>(40306u, 11657u), vec2<u32>(66196u, 111573u), vec2<u32>(0u, 4294967295u), vec2<u32>(63660u, 4294967295u), vec2<u32>(1u, 49031u), vec2<u32>(1u, 0u), vec2<u32>(4294967295u, 26950u), vec2<u32>(12890u, 4294967295u), vec2<u32>(127026u, 33800u), vec2<u32>(0u, 32049u), vec2<u32>(69398u, 1u), vec2<u32>(43251u, 1404u), vec2<u32>(1u, 4294967295u), vec2<u32>(48266u, 4294967295u), vec2<u32>(42437u, 33548u), vec2<u32>(0u, 4294967295u), vec2<u32>(134569u, 3343u), vec2<u32>(16977u, 1u), vec2<u32>(0u, 1u), vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 48162u), vec2<u32>(1u, 9821u), vec2<u32>(31933u, 15953u), vec2<u32>(0u, 5078u), vec2<u32>(70851u, 0u), vec2<u32>(1u, 1u), vec2<u32>(14303u, 1u), vec2<u32>(4294967295u, 4476u));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> f32 {
    global0 = array<vec2<u32>, 31>();
    global0 = array<vec2<u32>, 31>();
    let var_0 = Struct_1(u_input.a, vec4<f32>(_wgslsmith_f_op_f32(sign(-616f)), _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(814f))))), _wgslsmith_f_op_f32(1482f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-159f + 689f))), -701f));
    global0 = array<vec2<u32>, 31>();
    var var_1 = Struct_2(-573f, ~firstTrailingBit(~reverseBits(vec4<i32>(-1i, -7813i, -15247i, var_0.a.x))), select(vec3<bool>(false, all(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false))), all(vec2<bool>(true, false))), select(vec3<bool>(var_0.b.x >= 286f, 38153u > u_input.b.x, true), vec3<bool>(true, all(vec2<bool>(true, false)), select(true, false, true)), any(vec4<bool>(true, true, true, true))), true), reverseBits(~u_input.b.x) & abs(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b.x, u_input.b.x), ~u_input.b.zx)), Struct_1(select(u_input.a, var_0.a & countOneBits(vec3<i32>(4771i, -15818i, -13217i)), select(vec3<bool>(false, false, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), false), vec3<bool>(true, true, false))), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-609f + var_0.b.x), 410f, all(vec2<bool>(true, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) - var_0.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)), var_0.b.x)));
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-609f, var_1.e.b.x)))))));
}

fn func_2(arg_0: vec3<f32>, arg_1: i32, arg_2: u32) -> vec3<bool> {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + arg_0.x) * -578f)) - arg_0.x), min(-(~firstLeadingBit(vec4<i32>(-1i, 24216i, 2147483647i, arg_1))), -vec4<i32>(u_input.a.x ^ 28133i, _wgslsmith_clamp_i32(11657i, u_input.a.x, 31882i), -24318i, i32(-1i) * -2147483647i)), select(select(vec3<bool>(true, true, true), vec3<bool>(arg_0.x <= 1000f, false, any(vec2<bool>(true, true))), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), false), false)), vec3<bool>(false, true, true), select(select(vec3<bool>(true, false, true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false)), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true)), vec3<bool>(true, any(vec3<bool>(true, true, false)), true), vec3<bool>(false, all(vec4<bool>(true, false, false, false)), false))), _wgslsmith_mult_u32(29684u, arg_2), Struct_1(~(u_input.a << (select(vec3<u32>(u_input.b.x, 1u, arg_2), vec3<u32>(u_input.b.x, 1u, 16539u), vec3<bool>(true, true, false)) % vec3<u32>(32u))), vec4<f32>(-445f, _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(exp2(arg_0.x)), _wgslsmith_f_op_f32(-arg_0.x))));
    let var_1 = arg_0.xy;
    var_0 = Struct_2(_wgslsmith_f_op_f32(func_3()), _wgslsmith_clamp_vec4_i32(-_wgslsmith_sub_vec4_i32(~var_0.b, firstLeadingBit(vec4<i32>(var_0.e.a.x, arg_1, 33357i, -1833i))), vec4<i32>(_wgslsmith_div_i32(-1i, var_0.b.x), 11702i, 3828i, _wgslsmith_mult_i32(max(arg_1, var_0.e.a.x), abs(-2147483647i))), ~(vec4<i32>(35736i, -2953i, 23926i, 21861i) & vec4<i32>(-2147483647i, -1i, var_0.b.x, arg_1))), select(!(!(!var_0.c)), var_0.c, !(!any(vec3<bool>(false, var_0.c.x, true)))), 51099u, var_0.e);
    var var_2 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * var_0.e.b.x)), -2120f, any(select(vec4<bool>(var_0.c.x, var_0.c.x, var_0.c.x, var_0.c.x), vec4<bool>(false, var_0.c.x, var_0.c.x, var_0.c.x), vec4<bool>(true, true, var_0.c.x, true))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(948f))))), -var_0.b, select(var_0.c, select(vec3<bool>(select(true, true, true), false, any(vec3<bool>(var_0.c.x, false, var_0.c.x))), vec3<bool>(false, false, all(var_0.c)), var_0.c.x), select(vec3<bool>(false != var_0.c.x, true, all(vec3<bool>(var_0.c.x, var_0.c.x, var_0.c.x))), !var_0.c, select(!var_0.c.x, var_0.c.x, !var_0.c.x))), min(~arg_2 >> (4294967295u % 32u), var_0.d), var_0.e);
    var_0 = Struct_2(var_2.a, _wgslsmith_mult_vec4_i32(~vec4<i32>(arg_1, firstLeadingBit(u_input.a.x), 2147483647i, var_0.b.x), vec4<i32>(-1i) * -vec4<i32>(0i, u_input.a.x, u_input.a.x, u_input.a.x)), var_2.c, 4294967295u, var_0.e);
    return !(!vec3<bool>(var_0.c.x, (1027i != u_input.a.x) != select(var_2.c.x, var_0.c.x, var_0.c.x), var_2.c.x));
}

fn func_1() -> Struct_1 {
    var var_0 = 758f;
    var var_1 = 51935u;
    let var_2 = Struct_1(vec3<i32>(firstTrailingBit(u_input.a.x), abs(u_input.a.x), abs(u_input.a.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1456f, _wgslsmith_div_f32(-725f, -1000f), 561f, 1000f)));
    var var_3 = vec4<bool>(!(!(firstLeadingBit(u_input.a.x) != u_input.a.x)), all(select(func_2(_wgslsmith_f_op_vec3_f32(exp2(var_2.b.www)), 1i, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), vec2<u32>(u_input.b.x, u_input.b.x))), select(vec3<bool>(true, true, true), func_2(var_2.b.xwy, var_2.a.x, 25820u), false), vec3<bool>(true, true, true))), false, func_2(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_2.b.x, var_2.b.x, var_2.b.x), vec3<f32>(886f, 726f, -159f))), max(15721i, -11848i), 66952u).x | (true || (all(vec2<bool>(false, true)) | true)));
    var_1 = ~(~1u);
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<u32>, 31>();
    var var_0 = vec2<u32>(4294967295u, 1u);
    var_0 = firstTrailingBit(~_wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.b.xx, u_input.b.zy, global0[_wgslsmith_index_u32(5465u, 31u)]), vec2<u32>(u_input.b.x, var_0.x), u_input.b.xz | vec2<u32>(u_input.b.x, 64091u))) << (global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~u_input.b.x, _wgslsmith_add_u32(3470u, _wgslsmith_clamp_u32(15643u, 25044u, firstLeadingBit(u_input.b.x)))), 31u)] % vec2<u32>(32u));
    let var_1 = func_1();
    var_0 = global0[_wgslsmith_index_u32(u_input.b.x, 31u)];
    let var_2 = max(_wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_add_u32(u_input.b.x, var_0.x), u_input.b.x, 25395u), ~(var_0.x << (u_input.b.x % 32u)), ~(var_0.x ^ u_input.b.x)), u_input.b), u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(reverseBits(~(-57199i)), _wgslsmith_add_i32(firstLeadingBit(-21967i), _wgslsmith_add_i32(var_1.a.x, var_1.a.x))) ^ vec2<i32>(1i, _wgslsmith_div_i32(u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(9631i, -10521i, 365i, var_1.a.x), vec4<i32>(1i, 16669i, u_input.a.x, 54664i)))), ~(var_2 & _wgslsmith_clamp_vec3_u32(u_input.b << (u_input.b % vec3<u32>(32u)), ~var_2, var_2)), ~(~(-1i)), u_input.b.zz, ~_wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(select(vec4<i32>(-85524i, u_input.a.x, 5358i, u_input.a.x), vec4<i32>(u_input.a.x, var_1.a.x, 57512i, u_input.a.x), false), abs(vec4<i32>(var_1.a.x, -16645i, -2147483647i, u_input.a.x))), vec4<i32>(-1i) * -vec4<i32>(20249i, -56427i, var_1.a.x, 41296i)));
}

