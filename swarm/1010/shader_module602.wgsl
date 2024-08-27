struct Struct_1 {
    a: vec4<bool>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
    d: vec4<f32>,
    e: vec3<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_1,
    d: u32,
    e: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-25430i, 2147483647i, 33924i);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> vec4<bool> {
    global0 = vec3<i32>(_wgslsmith_mult_i32(1i, _wgslsmith_div_i32(u_input.c, u_input.c)), select(u_input.c, 3973i, true), u_input.c);
    var var_0 = vec2<u32>(~max(u_input.a.x & u_input.b.x, firstLeadingBit(select(42000u, u_input.b.x, false))), _wgslsmith_clamp_u32(countOneBits(~max(u_input.b.x, 0u)), ~abs(u_input.a.x) << (((1u >> (u_input.a.x % 32u)) << (1u % 32u)) % 32u), u_input.b.x));
    var_0 = firstTrailingBit(min(u_input.a, vec2<u32>(u_input.b.x, ~3232u)) ^ vec2<u32>(1878u, 0u));
    let var_1 = u_input.a;
    let var_2 = firstLeadingBit(vec3<u32>(var_1.x, _wgslsmith_div_u32(_wgslsmith_mod_u32(0u, var_1.x), u_input.a.x), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(110781u, var_0.x))) | vec3<u32>(var_1.x, u_input.a.x, _wgslsmith_dot_vec2_u32(var_1 | u_input.b, vec2<u32>(var_0.x, 0u))));
    return vec4<bool>(true, all(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true)) == true, all(vec3<bool>(true, false, true)), !((~4294967295u ^ var_0.x) > reverseBits(min(1u, var_1.x))));
}

fn func_2(arg_0: Struct_3) -> vec3<i32> {
    var var_0 = arg_0;
    var var_1 = select(select(!(!func_3()), !(!vec4<bool>(false, var_0.a.a.x, true, arg_0.a.a.x)), true), vec4<bool>(!(!(false == arg_0.a.a.x)), any(vec2<bool>(select(true, var_0.a.a.x, var_0.a.a.x), true)), false, !all(select(vec2<bool>(false, var_0.a.a.x), vec2<bool>(arg_0.a.a.x, true), arg_0.a.a.x))), vec4<bool>(arg_0.a.a.x, true, var_0.a.a.x, true));
    var_1 = !var_0.a.a;
    var_1 = select(vec4<bool>(true, true, !(arg_0.c.b.x != _wgslsmith_f_op_f32(sign(797f))), true), vec4<bool>(arg_0.a.a.x, any(func_3().wwy), true, _wgslsmith_f_op_f32(abs(arg_0.d.x)) >= _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.c.b.x, -2243f) + _wgslsmith_f_op_f32(f32(-1f) * -1176f))), arg_0.a.a);
    var_0 = arg_0;
    return vec3<i32>(firstTrailingBit(max(u_input.c, _wgslsmith_clamp_i32(u_input.c >> (2333u % 32u), _wgslsmith_sub_i32(-4609i, -2147483647i), global0.x))), arg_0.b.a & ~_wgslsmith_clamp_i32(firstTrailingBit(1i), -2147483647i, _wgslsmith_mult_i32(29373i, 1i)), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(~_wgslsmith_mod_vec4_i32(vec4<i32>(-24618i, u_input.c, global0.x, -38767i), vec4<i32>(-45982i, 2147483647i, -1i, var_0.b.a)), reverseBits(vec4<i32>(u_input.c, u_input.c, 0i, arg_0.b.a))), min(firstLeadingBit(-vec4<i32>(2147483647i, u_input.c, global0.x, 1i)), vec4<i32>(1i & var_0.c.a, u_input.c ^ global0.x, 33445i, abs(-23892i)))));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec2<f32>) -> i32 {
    global0 = ~_wgslsmith_mod_vec3_i32(~func_2(Struct_3(Struct_1(arg_0, vec4<u32>(0u, 28662u, u_input.a.x, 4294967295u)), Struct_2(-1i, arg_1), Struct_2(1i, vec2<f32>(-1952f, 722f)), vec4<f32>(-1526f, arg_1.x, 1681f, arg_1.x), vec3<i32>(global0.x, u_input.c, 60050i))), vec3<i32>(1i, 62689i ^ u_input.c, global0.x)) ^ (_wgslsmith_mult_vec3_i32(vec3<i32>(global0.x, u_input.c, 35046i) ^ vec3<i32>(u_input.c, 0i, global0.x), vec3<i32>(1i ^ global0.x, i32(-1i) * -32657i, _wgslsmith_dot_vec4_i32(vec4<i32>(39342i, 1i, global0.x, global0.x), vec4<i32>(global0.x, -38302i, -1i, u_input.c)))) ^ vec3<i32>(-2147483647i, -u_input.c, _wgslsmith_mod_i32(-u_input.c, u_input.c | 1i)));
    let var_0 = _wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, _wgslsmith_div_u32(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 47980u), vec3<u32>(u_input.a.x, u_input.a.x, u_input.b.x))), countOneBits(_wgslsmith_dot_vec2_u32(u_input.b, u_input.a))));
    var var_1 = Struct_4(Struct_1(arg_0, max(~(vec4<u32>(5526u, var_0, 4294967295u, var_0) & vec4<u32>(u_input.b.x, 21529u, 18866u, var_0)), countOneBits(vec4<u32>(u_input.a.x, var_0, u_input.b.x, u_input.b.x)))), abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b.x, 59072u, 1u), abs(vec3<u32>(u_input.a.x, u_input.b.x, 17508u)), vec3<u32>(u_input.b.x, var_0, var_0) | vec3<u32>(15563u, 4294967295u, var_0))) << (max(~select(vec3<u32>(65099u, u_input.b.x, u_input.b.x), vec3<u32>(7176u, 1u, u_input.b.x), true), ~vec3<u32>(4294967295u, u_input.b.x, var_0) | firstTrailingBit(vec3<u32>(16152u, u_input.b.x, 1u))) % vec3<u32>(32u)), Struct_1(!select(select(arg_0, arg_0, arg_0.x), arg_0, arg_0), vec4<u32>(~(4294967295u & u_input.a.x), 62832u, var_0, max(max(142920u, u_input.a.x), 12350u))), select(15523u, var_0, !arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -122f))));
    var var_2 = Struct_4(Struct_1(vec4<bool>(!(-829f >= arg_1.x), arg_1.x == _wgslsmith_f_op_f32(-var_1.e), !var_1.a.a.x, !(1i <= global0.x)), ~_wgslsmith_clamp_vec4_u32(var_1.c.b, var_1.c.b, vec4<u32>(var_0, u_input.a.x, 1u, var_1.c.b.x)) | _wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 0u, var_0), var_1.c.b), firstLeadingBit(vec4<u32>(var_0, var_1.c.b.x, 15588u, u_input.a.x)))), var_1.c.b.yzy, Struct_1(arg_0, vec4<u32>((1u >> (1u % 32u)) >> (var_0 % 32u), ~(~16314u), _wgslsmith_clamp_u32(0u, 1u, firstTrailingBit(142035u)), var_1.a.b.x)), var_1.b.x, _wgslsmith_f_op_f32(-arg_1.x));
    var var_3 = ~var_1.b;
    return -(u_input.c ^ u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_add_vec3_i32(~vec3<i32>(func_1(vec4<bool>(false, true, true, true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -540f))), 1i, ~(-1i)), vec3<i32>(0i, -42254i, u_input.c));
    let var_0 = 27557u;
    global0 = -(~((vec3<i32>(-1i) * -vec3<i32>(-2147483647i, -1i, u_input.c)) | countOneBits(select(vec3<i32>(2147483647i, global0.x, u_input.c), vec3<i32>(global0.x, global0.x, global0.x), true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(~(~_wgslsmith_clamp_u32(var_0, 29622u, 45176u)), _wgslsmith_dot_vec3_u32(select(select(vec3<u32>(41447u, u_input.a.x, 33078u), vec3<u32>(u_input.b.x, u_input.b.x, var_0), false), select(vec3<u32>(u_input.b.x, var_0, var_0), vec3<u32>(var_0, u_input.b.x, var_0), vec3<bool>(false, false, true)), any(vec2<bool>(false, true))), _wgslsmith_clamp_vec3_u32(firstLeadingBit(vec3<u32>(var_0, u_input.b.x, 11307u)), vec3<u32>(1u, var_0, var_0) | vec3<u32>(var_0, u_input.b.x, u_input.b.x), countOneBits(vec3<u32>(var_0, var_0, 0u))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1f, 1f, 1f))) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1457f, -665f, 152f) + vec3<f32>(-2595f, -261f, -325f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-171f, -329f, -1317f) * vec3<f32>(-451f, -1000f, 1773f))))))), countOneBits(0i));
}

