struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: vec2<bool>,
    d: Struct_2,
    e: vec4<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 10>;

var<private> global1: bool = false;

var<private> global2: Struct_4;

var<private> global3: vec3<bool>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec3<u32> {
    global2 = Struct_4(Struct_2(global2.b.d.a), global2.b, vec3<bool>(!all(vec3<bool>(global3.x, global3.x, global3.x)), false, global3.x & (-u_input.b != u_input.b)));
    global0 = array<vec2<i32>, 10>();
    global1 = select(!(u_input.b > firstLeadingBit(2147483647i)), (any(!global2.c) && global2.b.e.x) && true, all(vec2<bool>(true, global2.b.e.x)));
    global0 = array<vec2<i32>, 10>();
    var var_0 = global3.x;
    return countOneBits(~(~(~vec3<u32>(115170u, 16515u, 1u)))) & (vec3<u32>(~_wgslsmith_sub_u32(u_input.d, 66358u), global2.a.a.x, ~u_input.a) ^ max(select(global2.a.a, firstLeadingBit(vec3<u32>(u_input.d, 23652u, global2.a.a.x)), vec3<bool>(global3.x, true, false)), abs(~global2.b.d.a)));
}

fn func_2(arg_0: vec3<bool>) -> u32 {
    var var_0 = _wgslsmith_mod_i32(u_input.b, u_input.b);
    var var_1 = Struct_2(_wgslsmith_clamp_vec3_u32(func_3(), vec3<u32>(u_input.a, 24265u, ~global2.b.d.a.x) >> (_wgslsmith_add_vec3_u32(~global2.a.a, countOneBits(global2.b.d.a)) % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(global2.b.d.a, global2.b.d.a << (vec3<u32>(33491u, global2.b.d.a.x, 0u) % vec3<u32>(32u)))));
    global2 = Struct_4(global2.a, Struct_3(vec4<bool>(abs(13089u) <= (1u & global2.a.a.x), _wgslsmith_f_op_f32(trunc(-683f)) <= -381f, true, !all(global2.b.a)), vec4<bool>(any(vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x)), global2.b.e.x, select(global2.b.b.x, global3.x, arg_0.x), !arg_0.x), !vec2<bool>(arg_0.x & arg_0.x, any(global2.b.e)), Struct_2(select(vec3<u32>(4294967295u, 30504u, 14345u), vec3<u32>(u_input.d, var_1.a.x, global2.b.d.a.x), arg_0.x)), vec4<bool>(global3.x, global3.x, reverseBits(u_input.b) <= 0i, true)), !global2.c);
    let var_2 = _wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(41188u, ~var_1.a.x, 1u), _wgslsmith_mult_u32(1u, global2.b.d.a.x), _wgslsmith_mult_u32(~u_input.c, abs(u_input.d)) & max(~var_1.a.x, 40257u), ~_wgslsmith_mod_u32(0u, abs(var_1.a.x))), _wgslsmith_mod_vec4_u32(vec4<u32>(4257u, _wgslsmith_dot_vec2_u32(global2.b.d.a.zz, var_1.a.xy), 72982u, ~1u) | vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(36476u, u_input.a, 0u), var_1.a), 4294967295u, _wgslsmith_add_u32(global2.a.a.x, 27110u), 7851u), ~reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(1902u, 42537u, 36654u, 0u), vec4<u32>(var_1.a.x, 45044u, global2.a.a.x, u_input.c)))), vec4<u32>(_wgslsmith_add_u32(~global2.b.d.a.x, ~26052u) & 4294967295u, global2.b.d.a.x, 0u, 43454u));
    var_0 = max(_wgslsmith_dot_vec2_i32(vec2<i32>(i32(-1i) * -35340i, u_input.b), max(vec2<i32>(2147483647i, u_input.b), vec2<i32>(53059i, ~u_input.b))), (-2147483647i | u_input.b) & ~min(25551i, u_input.b));
    return u_input.a;
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: Struct_4, arg_3: f32) -> vec2<bool> {
    global3 = vec3<bool>(global3.x, ~_wgslsmith_dot_vec3_u32(vec3<u32>(13004u, 2289u, 0u) & global2.a.a, arg_1.a) >= ((countOneBits(18463u) | global2.a.a.x) | ~func_2(vec3<bool>(false, true, false))), true);
    return !(!vec2<bool>(true, -arg_0.x < ~u_input.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(global2.b.a, !vec4<bool>(global3.x, true, all(global2.b.a), global2.b.a.x), select(global3.zz, !(!(!vec2<bool>(global3.x, false))), select(vec2<bool>(!global2.b.c.x, global3.x), !(!global3.xz), !func_1(global0[_wgslsmith_index_u32(u_input.a, 10u)], global2.a, Struct_4(global2.b.d, global2.b, global2.c), -198f))), Struct_2(~_wgslsmith_mult_vec3_u32(global2.b.d.a >> (vec3<u32>(1u, 67236u, 39874u) % vec3<u32>(32u)), func_3())), !select(select(select(global2.b.e, vec4<bool>(false, true, true, true), global2.b.b), vec4<bool>(true, global3.x, false, true), global2.b.e), global2.b.e, vec4<bool>(false, true, true, global3.x)));
    global2 = Struct_4(Struct_2(_wgslsmith_sub_vec3_u32(vec3<u32>(global2.b.d.a.x, 1u, var_0.d.a.x), ~vec3<u32>(var_0.d.a.x, u_input.a, 39900u) | var_0.d.a)), global2.b, select(select(select(select(var_0.e.xxz, var_0.b.wxy, true), global2.b.e.xxw, all(vec3<bool>(var_0.c.x, var_0.b.x, false))), select(global2.c, global2.c, vec3<bool>(true, true, true)), true), !(!var_0.e.wyw), select(var_0.e.zzx, vec3<bool>(!var_0.a.x, all(vec4<bool>(var_0.a.x, var_0.c.x, global3.x, false)), global2.b.a.x), abs(20709u) <= _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.d.a.x, var_0.d.a.x, 104398u, 4294967295u), vec4<u32>(1u, var_0.d.a.x, var_0.d.a.x, u_input.c)))));
    global1 = false;
    let var_1 = _wgslsmith_add_u32(_wgslsmith_div_u32(~_wgslsmith_add_u32(_wgslsmith_clamp_u32(global2.b.d.a.x, 26663u, 4294967295u), ~global2.a.a.x), u_input.a), global2.b.d.a.x);
    let var_2 = 0u;
    global0 = array<vec2<i32>, 10>();
    var var_3 = var_0.c.x;
    global0 = array<vec2<i32>, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(418f, -1119f), 1000f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-341f + _wgslsmith_f_op_f32(582f * -2180f))) * vec4<f32>(1684f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1211f) - _wgslsmith_f_op_f32(f32(-1f) * -214f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(1308f, -504f)))))), vec4<i32>(~reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, -2147483647i), vec2<i32>(1i, u_input.b))), -53430i, -firstLeadingBit(2147483647i), (~(-49962i) >> (var_0.d.a.x % 32u)) | -1i), _wgslsmith_f_op_f32(584f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-240f))))));
}

