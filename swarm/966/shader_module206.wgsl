struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: vec2<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -788f;

var<private> global1: array<Struct_1, 29>;

var<private> global2: i32 = -10582i;

var<private> global3: vec2<bool>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> vec3<i32> {
    var var_0 = Struct_1(u_input.b, _wgslsmith_mod_vec3_u32(firstLeadingBit(vec3<u32>(13726u, 0u, 4294967295u)), _wgslsmith_sub_vec3_u32(~(~vec3<u32>(25706u, u_input.b, 57593u)), vec3<u32>(~u_input.b, ~u_input.b, _wgslsmith_div_u32(17024u, 65549u)))), any(!vec3<bool>(all(vec3<bool>(global3.x, global3.x, false)), global3.x, true)));
    var_0 = global1[_wgslsmith_index_u32(var_0.a, 29u)];
    global0 = 552f;
    var var_1 = Struct_1(~u_input.b, var_0.b, global3.x);
    var_1 = Struct_1(_wgslsmith_dot_vec2_u32(var_1.b.yx, _wgslsmith_div_vec2_u32(var_1.b.zx, countOneBits(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 37125u), vec2<u32>(u_input.b, u_input.b))))), vec3<u32>(_wgslsmith_div_u32(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, var_1.a), vec3<u32>(var_1.a, u_input.b, 1u) >> (vec3<u32>(4294967295u, 43103u, 1u) % vec3<u32>(32u)))), 59516u, _wgslsmith_sub_u32(var_1.b.x, 4294967295u)), var_0.c);
    return _wgslsmith_sub_vec3_i32(select(vec3<i32>(1i, _wgslsmith_mult_i32(u_input.c.x, u_input.a.x), -1i), u_input.c.wzw >> (var_1.b % vec3<u32>(32u)), !(!vec3<bool>(var_0.c, global3.x, var_1.c))), vec3<i32>(_wgslsmith_dot_vec2_i32(-vec2<i32>(1i, u_input.a.x), _wgslsmith_mult_vec2_i32(firstTrailingBit(vec2<i32>(u_input.a.x, u_input.c.x)), abs(vec2<i32>(1i, u_input.c.x)))), 0i, u_input.d | _wgslsmith_dot_vec2_i32(-u_input.a, abs(u_input.a))));
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: vec3<bool>) -> f32 {
    global1 = array<Struct_1, 29>();
    var var_0 = _wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(u_input.c.wxz, u_input.c.zyy), -func_3());
    var_0 = vec3<i32>(1i, select(_wgslsmith_mod_i32(24015i, _wgslsmith_div_i32(u_input.a.x, _wgslsmith_add_i32(23267i, var_0.x))), -firstLeadingBit(arg_1), false), u_input.a.x);
    let var_1 = vec2<u32>(34645u, 1u);
    var var_2 = vec4<i32>(var_0.x >> (var_1.x % 32u), 43854i, ~_wgslsmith_dot_vec3_i32(u_input.c.yww, u_input.c.zzz) ^ arg_1, _wgslsmith_dot_vec2_i32(u_input.c.yx, vec2<i32>(-u_input.a.x, _wgslsmith_mod_i32(1i, -1i)))) | -(~_wgslsmith_clamp_vec4_i32(-u_input.c, firstTrailingBit(vec4<i32>(var_0.x, 1612i, var_0.x, arg_1)), -vec4<i32>(arg_1, 1i, arg_1, 1i)));
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(245f - -773f)) * _wgslsmith_f_op_f32(trunc(-1177f))), -536f))));
}

fn func_1(arg_0: vec3<i32>) -> Struct_1 {
    global2 = 1i;
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-287f + -588f)), -1435f)) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-112f - 1000f) * _wgslsmith_f_op_f32(func_2(Struct_1(u_input.b, vec3<u32>(0u, 42890u, u_input.b), global3.x), 1i, vec3<bool>(false, true, true)))) * _wgslsmith_f_op_f32(-785f * -377f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(700f, _wgslsmith_f_op_f32(-229f * 1605f)))))));
    let var_1 = min(abs(vec4<u32>(85106u, 68722u, u_input.b, ~max(u_input.b, 68167u))), abs(~vec4<u32>(u_input.b, _wgslsmith_add_u32(u_input.b, 4294967295u), select(u_input.b, u_input.b, true), ~29556u)));
    global3 = select(!vec2<bool>(~63045u < u_input.b, var_0 >= 510f), !vec2<bool>(!all(vec4<bool>(global3.x, global3.x, global3.x, global3.x)), global3.x), select(vec2<bool>(true, !global3.x), !select(!vec2<bool>(global3.x, false), !vec2<bool>(global3.x, false), vec2<bool>(true, true)), global3.x));
    global0 = 883f;
    return Struct_1(~var_1.x, ~(~(~_wgslsmith_mod_vec3_u32(var_1.xzx, var_1.wyw))), global3.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(vec3<i32>(_wgslsmith_dot_vec4_i32(~u_input.c, u_input.c), _wgslsmith_dot_vec3_i32(-vec3<i32>(-2147483647i, u_input.d, 4836i), -u_input.c.wzy & -u_input.c.www), u_input.c.x));
    var var_1 = false;
    let var_2 = !(!(!vec2<bool>(!global3.x, any(vec2<bool>(true, var_0.c)))));
    var var_3 = ~_wgslsmith_mod_vec4_i32(firstTrailingBit(vec4<i32>(57001i, u_input.a.x, u_input.a.x, 0i)) << (select(~vec4<u32>(u_input.b, 38959u, 1u, 1u), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, var_0.b.x, 1u, u_input.b), vec4<u32>(1u, u_input.b, u_input.b, 64186u)), select(vec4<bool>(false, var_0.c, false, false), vec4<bool>(var_2.x, false, false, var_0.c), vec4<bool>(false, var_2.x, global3.x, true))) % vec4<u32>(32u)), vec4<i32>(-u_input.c.x, -u_input.c.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, 5706i, u_input.c.x), -u_input.c.xzw), -2147483647i ^ u_input.d));
    let var_4 = _wgslsmith_div_u32(_wgslsmith_add_u32(0u, ~reverseBits(33769u)), abs(var_0.a));
    var var_5 = _wgslsmith_mult_u32(~var_0.a, reverseBits(var_4 >> (1u % 32u)));
    var var_6 = vec3<f32>(-297f, _wgslsmith_div_f32(-271f, 1138f), -1724f);
    var var_7 = ~(~vec4<u32>(1u, 4294967295u, func_1(vec3<i32>(var_3.x, u_input.d, u_input.a.x)).b.x | max(var_0.a, u_input.b), 31695u));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_u32(0u | var_0.a, 47435u) << (var_0.a % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(select(u_input.d, i32(-1i) * -2147483647i, false), u_input.c.x), ~(~_wgslsmith_sub_vec2_i32(u_input.c.xx, vec2<i32>(-26271i, var_3.x)))), u_input.a, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(step(var_6.xy, var_6.xx)))), -(~(-1i)));
}

