struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: u32,
    c: u32,
    d: f32,
    e: i32,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: u32,
    d: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: vec4<bool>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -17212i;

var<private> global1: Struct_4;

var<private> global2: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(vec3<i32>(-1i, 2147483647i, 0i)), Struct_1(vec3<i32>(-3152i, 0i, 2147483647i)), Struct_1(vec3<i32>(-1i, -1i, 2147483647i)), Struct_1(vec3<i32>(26961i, 18065i, i32(-2147483648))), Struct_1(vec3<i32>(-1i, 2147483647i, 0i)), Struct_1(vec3<i32>(-41304i, -1i, i32(-2147483648))), Struct_1(vec3<i32>(1i, 8382i, i32(-2147483648))), Struct_1(vec3<i32>(6811i, 11570i, 45716i)), Struct_1(vec3<i32>(-1i, 21152i, 4088i)), Struct_1(vec3<i32>(-5662i, -1i, -36489i)), Struct_1(vec3<i32>(-11021i, -51816i, 29707i)), Struct_1(vec3<i32>(2147483647i, -28390i, -29378i)), Struct_1(vec3<i32>(1i, 1i, 40064i)), Struct_1(vec3<i32>(26591i, -8634i, 1i)), Struct_1(vec3<i32>(i32(-2147483648), 9234i, -65580i)), Struct_1(vec3<i32>(6662i, -1i, -16102i)), Struct_1(vec3<i32>(-1i, 0i, 30943i)), Struct_1(vec3<i32>(-19976i, -26495i, 1i)), Struct_1(vec3<i32>(1i, -7015i, -34298i)), Struct_1(vec3<i32>(2147483647i, -1i, 1i)), Struct_1(vec3<i32>(23220i, -1i, 0i)), Struct_1(vec3<i32>(-65962i, -2081i, -66888i)), Struct_1(vec3<i32>(24933i, 2147483647i, 2147483647i)), Struct_1(vec3<i32>(2147483647i, 1i, 0i)), Struct_1(vec3<i32>(68015i, 12609i, -83459i)), Struct_1(vec3<i32>(-37064i, 2147483647i, -5652i)), Struct_1(vec3<i32>(-33821i, 1i, -44905i)));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> bool {
    var var_0 = Struct_1(~(~vec3<i32>(~u_input.b, i32(-1i) * -22032i, reverseBits(-1i))));
    let var_1 = vec2<u32>(1u, ~4294967295u);
    var_0 = global2[_wgslsmith_index_u32(select(var_1.x ^ 30481u, 1u >> ((_wgslsmith_add_u32(u_input.c, global1.b) << (1u % 32u)) % 32u), any(vec4<bool>(true, true, true, global1.c.x))), 27u)];
    var var_2 = global1.c.xz;
    var var_3 = Struct_3(62906i, Struct_1(-var_0.a), 8397u, all(vec3<bool>(!(var_2.x | var_2.x), global1.c.x, global1.c.x)));
    return global1.c.x;
}

fn func_4(arg_0: Struct_3) -> vec2<u32> {
    global2 = array<Struct_1, 27>();
    var var_0 = _wgslsmith_f_op_vec2_f32(-global1.a.a.ww);
    global2 = array<Struct_1, 27>();
    var var_1 = global1.a.e;
    let var_2 = Struct_1(arg_0.b.a);
    return vec2<u32>(1u, 59321u) | vec2<u32>(global1.b, abs(u_input.c));
}

fn func_2(arg_0: vec2<f32>, arg_1: f32, arg_2: vec2<i32>, arg_3: bool) -> Struct_2 {
    global2 = array<Struct_1, 27>();
    var var_0 = select(!vec3<bool>(global1.a.e < _wgslsmith_clamp_i32(-29382i, arg_2.x, 13484i), 0u > abs(global1.a.b), global1.c.x), select(global1.c.yxx, select(global1.c.xzz, global1.c.wwz, !(!global1.c.xxx)), global1.c.zww), global1.c.x);
    var var_1 = ~u_input.b >> (min(37215u, u_input.a) % 32u);
    var var_2 = vec4<u32>(_wgslsmith_clamp_u32(1u, abs(_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 86198u, 1u, 4294967295u), _wgslsmith_mult_vec4_u32(vec4<u32>(global1.b, u_input.c, 0u, u_input.a), vec4<u32>(global1.b, u_input.c, 57277u, global1.a.b)))), _wgslsmith_div_u32(global1.b, 4294967295u)), u_input.a, global1.a.b, 16195u);
    let var_3 = func_4(Struct_3(firstTrailingBit(_wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(arg_2.x, -2147483647i, global1.a.e)), -vec3<i32>(u_input.d, 1i, global1.a.e))), Struct_1(firstLeadingBit(vec3<i32>(25392i, 2147483647i, 2147483647i))), ~(~(global1.a.b | 42440u)), func_3()));
    return Struct_2(_wgslsmith_f_op_vec4_f32(-global1.a.a), ~abs(~(~0u)), global1.b, arg_0.x, arg_2.x);
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: u32, arg_3: vec4<f32>) -> Struct_2 {
    return func_2(_wgslsmith_f_op_vec2_f32(global1.a.a.yz - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_3.x, -496f), vec2<f32>(-924f, -1340f), vec2<bool>(arg_0, global1.c.x))), _wgslsmith_f_op_vec2_f32(-arg_3.ww), arg_0)) - global1.a.a.ww)), -650f, vec2<i32>(1i ^ u_input.d, _wgslsmith_div_i32(reverseBits(62698i), ~(-30584i & u_input.d))), !any(vec4<bool>(false, -734f != global1.d, all(vec4<bool>(true, global1.c.x, true, arg_0)), global1.c.x)));
}

fn func_5(arg_0: Struct_4, arg_1: vec3<bool>) -> Struct_1 {
    global1 = arg_0;
    let var_0 = Struct_3(_wgslsmith_mult_i32(global1.a.e, u_input.b ^ _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, arg_0.a.e, global1.a.e, u_input.d), vec4<i32>(u_input.d, 2147483647i, u_input.b, -1i)), u_input.b)), global2[_wgslsmith_index_u32(~u_input.a << (_wgslsmith_add_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(60521u, arg_0.b, 0u, 139936u), vec4<u32>(1u, 0u, global1.b, global1.a.b)), 29594u) % 32u), 27u)], _wgslsmith_mult_u32(func_1(all(vec2<bool>(arg_1.x, false)), u_input.c, 1u, arg_0.a.a).c << (_wgslsmith_div_u32(~1u, _wgslsmith_mult_u32(global1.a.b, arg_0.b)) % 32u), _wgslsmith_clamp_u32(4294967295u, u_input.a, firstLeadingBit(_wgslsmith_sub_u32(arg_0.b, 0u)))), any(arg_0.c));
    global1 = Struct_4(func_1(var_0.d, ~_wgslsmith_add_u32(~0u, u_input.c), arg_0.a.b | var_0.c, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(global1.a.a, arg_0.a.a))), arg_0.a.a, true))), _wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.c, 1u, u_input.c, ~1448u), ~_wgslsmith_add_vec4_u32(~vec4<u32>(arg_0.b, arg_0.a.c, 52833u, 52733u), reverseBits(vec4<u32>(1u, 0u, 0u, var_0.c)))), global1.c, _wgslsmith_f_op_f32(select(arg_0.d, 1234f, -var_0.b.a.x != _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, var_0.a, u_input.b), vec4<i32>(-20693i, arg_0.a.e, u_input.b, -29636i)))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -192f) - _wgslsmith_f_op_f32(step(func_1(abs(-2147483647i) > _wgslsmith_dot_vec2_i32(var_0.b.a.zz, var_0.b.a.xy), abs(_wgslsmith_mult_u32(0u, 4294967295u)), u_input.a, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-693f, arg_0.d, global1.d, 632f))))).a.x, _wgslsmith_f_op_f32(func_2(global1.a.a.zw, _wgslsmith_f_op_f32(1000f - global1.d), var_0.b.a.xz << (vec2<u32>(1u, 34576u) % vec2<u32>(32u)), true).a.x * 611f))));
    global0 = arg_0.a.e;
    return global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_add_u32(79587u, var_0.c), 1u), 27u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(_wgslsmith_div_i32(abs(-global1.a.e) & 2147483647i, max(_wgslsmith_clamp_i32(-27567i, -2147483647i, ~u_input.b), _wgslsmith_div_i32(global1.a.e, 1i))), func_5(Struct_4(func_1(false, firstLeadingBit(0u), 4294967295u, _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global1.d, 1000f, -1000f, -1107f), vec4<f32>(global1.a.a.x, global1.a.d, -1332f, global1.a.d)))), u_input.a, !select(global1.c, vec4<bool>(global1.c.x, global1.c.x, global1.c.x, global1.c.x), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-132f * 111f))), vec3<bool>(any(select(vec2<bool>(global1.c.x, true), vec2<bool>(false, global1.c.x), global1.c.x)), all(select(vec4<bool>(false, global1.c.x, global1.c.x, global1.c.x), global1.c, vec4<bool>(global1.c.x, global1.c.x, global1.c.x, global1.c.x))), true)), _wgslsmith_dot_vec2_u32(abs(~vec2<u32>(4294967295u, u_input.a)), vec2<u32>(~global1.a.c, abs(4294967295u))), global1.c.x && global1.c.x);
    var var_1 = reverseBits(~min(1u, reverseBits(4294967295u))) >> (~var_0.c % 32u);
    let var_2 = 0u < func_2(vec2<f32>(116f, 1078f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-2402f, global1.d)) - _wgslsmith_f_op_f32(global1.a.a.x * global1.d))), var_0.b.a.xx, !global1.c.x).b;
    global0 = var_0.a;
    global0 = u_input.d >> (~6933u % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-1i) * -select(-vec4<i32>(-8049i, 2147483647i, var_0.b.a.x, 298i), abs(vec4<i32>(-1i, global1.a.e, u_input.d, -2147483647i)), !global1.c), u_input.a, ~u_input.c, vec3<i32>(11599i, _wgslsmith_div_i32(3128i & ~u_input.b, -5183i), global1.a.e));
}

