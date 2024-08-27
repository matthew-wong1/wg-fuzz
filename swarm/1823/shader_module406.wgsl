struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: vec2<f32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec4<bool>,
}

struct Struct_3 {
    a: i32,
    b: vec4<f32>,
    c: vec3<u32>,
    d: Struct_1,
    e: i32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: Struct_2 = Struct_2(Struct_1(false, vec4<i32>(-1i, 819i, i32(-2147483648), -20244i), vec2<f32>(1139f, 236f), 1u), vec2<u32>(12525u, 14601u), vec4<bool>(false, true, true, true));

var<private> global2: array<Struct_3, 19>;

var<private> global3: array<Struct_4, 17>;

var<private> global4: vec3<u32> = vec3<u32>(0u, 0u, 4404u);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_2(arg_0: vec2<f32>, arg_1: i32, arg_2: vec4<bool>, arg_3: u32) -> Struct_3 {
    return global2[_wgslsmith_index_u32(~_wgslsmith_sub_u32(19928u, abs(global1.a.d)), 19u)];
}

fn func_3(arg_0: i32, arg_1: vec2<bool>, arg_2: u32, arg_3: vec4<f32>) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(arg_3, vec4<f32>(arg_3.x, arg_3.x, -722f, arg_3.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-229f, -823f, arg_3.x, global1.a.c.x))))));
    var var_1 = global3[_wgslsmith_index_u32(0u, 17u)];
    let var_2 = vec3<i32>(global0.x, ~global0.x, global0.x | -47104i);
    var var_3 = Struct_2(global1.a, _wgslsmith_mod_vec2_u32(firstTrailingBit(max(global4.yz ^ vec2<u32>(102480u, var_1.b.d), firstLeadingBit(global4.yy))), vec2<u32>(firstTrailingBit(~var_1.b.d), ~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2, global4.x, arg_2), vec3<u32>(var_1.b.d, arg_2, 1u)))), vec4<bool>(firstLeadingBit(abs(arg_2)) < (_wgslsmith_add_u32(u_input.b, global4.x) >> (~32235u % 32u)), true, true, !any(!vec2<bool>(true, arg_1.x))));
    let var_4 = -1i;
    return _wgslsmith_f_op_f32(f32(-1f) * -366f);
}

fn func_4(arg_0: vec4<f32>, arg_1: vec2<i32>, arg_2: Struct_3) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec2_f32(select(arg_0.zy, _wgslsmith_f_op_vec2_f32(-arg_2.b.yz), vec2<bool>(false, true))), firstTrailingBit(-23903i), global1.c, global1.b.x).b.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * -838f)) * 324f)));
    let var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, 1000f)) - _wgslsmith_f_op_f32(-arg_2.b.x)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(arg_2.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(arg_2.d.c.x)), _wgslsmith_f_op_f32(-global1.a.c.x), 1135f, arg_0.x)))));
    global1 = Struct_2(func_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.xx), _wgslsmith_f_op_vec2_f32(-var_2.yz)), arg_1.x, select(vec4<bool>(1319f == global1.a.c.x, true, arg_2.d.a, any(vec3<bool>(arg_2.d.a, global1.c.x, false))), !vec4<bool>(arg_2.d.a, true, true, true), global1.c), firstLeadingBit(~1u)).d, vec2<u32>(~global1.a.d, 0u) & (global4.yy << (_wgslsmith_mult_vec2_u32(firstLeadingBit(arg_2.c.yz), global1.b) % vec2<u32>(32u))), global1.c);
    var var_3 = func_2(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-574f, global1.a.c.x))))))))), 31425i, select(global1.c, select(!global1.c, vec4<bool>(select(global1.c.x, global1.a.a, false), true, true, !global1.a.a), false), global1.c), arg_2.d.d).b;
    return _wgslsmith_mod_u32(4294967295u, _wgslsmith_dot_vec2_u32(global1.b, abs(~(vec2<u32>(global1.b.x, 0u) >> (vec2<u32>(5330u, 0u) % vec2<u32>(32u))))));
}

fn func_1(arg_0: vec2<bool>, arg_1: bool, arg_2: bool) -> u32 {
    var var_0 = global1.a;
    let var_1 = global2[_wgslsmith_index_u32(1372u, 19u)];
    global4 = vec3<u32>(_wgslsmith_mult_u32(3137u, 0u), firstLeadingBit(_wgslsmith_dot_vec4_u32(~vec4<u32>(78072u, 1u, 71144u, 9457u), firstLeadingBit(vec4<u32>(global4.x, 57237u, 13882u, 4294967295u)))), ~(~global4.x)) >> (firstLeadingBit(firstTrailingBit(var_1.c)) % vec3<u32>(32u));
    var var_2 = func_2(_wgslsmith_f_op_vec2_f32(-var_0.c), (_wgslsmith_mod_i32(_wgslsmith_sub_i32(u_input.a.x, 2147483647i), 2147483647i) & -5011i) << (~(~(~var_1.c.x)) % 32u), !vec4<bool>(!(var_0.a && var_1.d.a), var_1.b.x <= -295f, !global1.a.a, _wgslsmith_f_op_f32(global1.a.c.x - 855f) > -972f), ~(~var_0.d));
    global1 = Struct_2(var_1.d, var_2.c.yz, global1.c);
    return _wgslsmith_add_u32(func_4(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1815f)), -1514f, _wgslsmith_f_op_f32(func_3(countOneBits(var_0.b.x), vec2<bool>(false, var_1.d.a), _wgslsmith_mult_u32(global4.x, global1.a.d), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.d.c.x, global1.a.c.x, -1000f, global1.a.c.x) - var_1.b))), var_2.d.c.x), min(-(~vec2<i32>(-1i, global0.x)), vec2<i32>(-34888i, global0.x)), Struct_3(min(u_input.a.x, var_0.b.x) << (52513u % 32u), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(var_1.b - vec4<f32>(var_2.b.x, var_2.b.x, -393f, var_0.c.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-183f, var_0.c.x, var_1.d.c.x, global1.a.c.x) - var_2.b))), ~vec3<u32>(u_input.b, 0u, 5153u), Struct_1(global1.a.b.x == var_0.b.x, vec4<i32>(2147483647i, global0.x, global0.x, 66505i), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.c.x, 1000f))), var_1.d.d), var_1.d.b.x)), 24199u);
}

fn func_5(arg_0: vec2<u32>, arg_1: u32, arg_2: Struct_3, arg_3: Struct_1) -> vec2<i32> {
    let var_0 = 1710u;
    global3 = array<Struct_4, 17>();
    var var_1 = ~(_wgslsmith_mult_i32(global0.x, _wgslsmith_mult_i32(1i, _wgslsmith_clamp_i32(1i, u_input.a.x, global0.x))) | -_wgslsmith_clamp_i32(~(-2147483647i), global0.x, arg_2.d.b.x));
    global1 = Struct_2(func_2(_wgslsmith_f_op_vec2_f32(arg_2.d.c * vec2<f32>(global1.a.c.x, _wgslsmith_div_f32(global1.a.c.x, 3268f))), _wgslsmith_add_i32(arg_2.d.b.x, arg_3.b.x) ^ 21742i, select(!global1.c, global1.c, vec4<bool>(false, any(global1.c.xw), !arg_3.a, true)), 28556u).d, ~max(firstTrailingBit(vec2<u32>(global4.x, 0u)), ~(~vec2<u32>(43575u, 4294967295u))), vec4<bool>(func_2(vec2<f32>(arg_3.c.x, arg_2.d.c.x), 48878i, vec4<bool>(true, true, true, true), 4294967295u).c.x == ~func_1(vec2<bool>(false, false), true, false), false, arg_3.a, true));
    global1 = Struct_2(Struct_1(_wgslsmith_mod_u32(~global4.x, 1u) > 4294967295u, _wgslsmith_mult_vec4_i32(firstLeadingBit(vec4<i32>(arg_3.b.x, global1.a.b.x, 2147483647i, arg_3.b.x)) >> ((vec4<u32>(var_0, global4.x, arg_0.x, var_0) << (vec4<u32>(var_0, arg_3.d, 17897u, 4294967295u) % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<i32>(-1i, arg_2.a ^ global0.x, countOneBits(arg_2.a), ~global1.a.b.x)), _wgslsmith_div_vec2_f32(vec2<f32>(-1509f, _wgslsmith_f_op_f32(func_3(global0.x, global1.c.yw, 1u, arg_2.b))), vec2<f32>(_wgslsmith_f_op_f32(sign(arg_2.b.x)), _wgslsmith_f_op_f32(-1160f - 220f))), 26114u >> ((~9964u >> (select(1u, u_input.b, true) % 32u)) % 32u)), global4.yy | _wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(arg_2.c.yy ^ global4.yy, arg_0), ~vec2<u32>(16027u, global1.a.d), firstTrailingBit(global1.b)), vec4<bool>(!select(all(global1.c.zyz), global4.x >= arg_2.c.x, false), all(global1.c), any(global1.c.ywy), !arg_3.a));
    return ~vec2<i32>(reverseBits(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(u_input.a.zy, vec2<i32>(arg_3.b.x, arg_2.d.b.x)), 0i)), _wgslsmith_sub_i32(~u_input.a.x, -2147483647i) >> (abs(var_0) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = vec3<u32>(global1.a.d, ~(~(~50558u)), 126602u);
    var var_0 = min(~_wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(global0.x, u_input.a.x, 28504i), vec3<i32>(global1.a.b.x, 1063i, -1i)) ^ ~global1.a.b.xzx, vec3<i32>(global0.x, _wgslsmith_sub_i32(28495i, -71052i), 0i)), global1.a.b.zyy);
    global0 = max(max(-func_5(global4.xy ^ vec2<u32>(global1.b.x, global1.a.d), func_1(global1.c.xy, true, false), func_2(global1.a.c, -2147483647i, vec4<bool>(false, false, global1.a.a, global1.c.x), global4.x), func_2(vec2<f32>(global1.a.c.x, -474f), 1i, global1.c, global1.a.d).d), ~reverseBits(~global1.a.b.xx)), vec2<i32>(var_0.x, firstLeadingBit(_wgslsmith_div_i32(u_input.a.x, global1.a.b.x))) ^ u_input.a.yz);
    let var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(187f, -889f, global1.a.c.x, global1.a.c.x) + vec4<f32>(global1.a.c.x, global1.a.c.x, global1.a.c.x, 180f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, global1.a.c.x, global1.a.c.x, -650f)), global1.a.a != global1.a.a)) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-122f, global1.a.c.x, -458f, global1.a.c.x)) + vec4<f32>(-752f, -217f, global1.a.c.x, global1.a.c.x))))), global1.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-global1.a.c.x), _wgslsmith_mod_i32(var_0.x, ~1i), ~(~firstLeadingBit(global4.yx)), func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-800f, 177f))), global1.a.b.x, global1.c, ~4294967295u).c);
}

