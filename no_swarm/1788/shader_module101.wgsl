struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
    d: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(4294967295u, 16921u, 54309u);

var<private> global1: array<vec4<u32>, 22> = array<vec4<u32>, 22>(vec4<u32>(62238u, 4294967295u, 4294967295u, 0u), vec4<u32>(41868u, 49826u, 35840u, 11055u), vec4<u32>(6069u, 27017u, 4294967295u, 88410u), vec4<u32>(1u, 4294967295u, 4294967295u, 1u), vec4<u32>(49568u, 1u, 0u, 1u), vec4<u32>(89253u, 0u, 1u, 93144u), vec4<u32>(0u, 4807u, 0u, 1u), vec4<u32>(0u, 16207u, 41153u, 4294967295u), vec4<u32>(4294967295u, 61154u, 4294967295u, 0u), vec4<u32>(62026u, 4294967295u, 54859u, 144981u), vec4<u32>(1u, 19644u, 1u, 0u), vec4<u32>(14494u, 26268u, 18980u, 4294967295u), vec4<u32>(0u, 4294967295u, 19433u, 0u), vec4<u32>(49156u, 30362u, 0u, 4294967295u), vec4<u32>(1u, 0u, 32379u, 51064u), vec4<u32>(39701u, 4294967295u, 35560u, 0u), vec4<u32>(20676u, 1171u, 0u, 1u), vec4<u32>(77196u, 0u, 1u, 64133u), vec4<u32>(24267u, 1u, 1u, 0u), vec4<u32>(0u, 50888u, 0u, 18468u), vec4<u32>(4294967295u, 1u, 4294967295u, 25973u), vec4<u32>(38568u, 32169u, 12463u, 4294967295u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: vec3<f32>) -> Struct_1 {
    global0 = ~u_input.a;
    var var_0 = ~abs(_wgslsmith_mod_u32(0u, ~(~u_input.a.x)));
    let var_1 = Struct_1(u_input.b.x);
    global1 = array<vec4<u32>, 22>();
    global1 = array<vec4<u32>, 22>();
    return Struct_1(~2147483647i);
}

fn func_3() -> vec3<i32> {
    global0 = select(firstTrailingBit(u_input.a | u_input.a) ^ ~reverseBits(u_input.a), select(vec3<u32>(u_input.a.x, ~0u, _wgslsmith_add_u32(4294967295u, global0.x) & u_input.a.x), vec3<u32>(4294967295u, global0.x, _wgslsmith_add_u32(1u, global0.x)), true), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(step(-1234f, 1483f)) <= _wgslsmith_f_op_f32(618f * -820f))));
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-824f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -216f))))));
    var var_1 = Struct_2(Struct_1(u_input.c.x), Struct_1(-1239i), u_input.c, true);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -105f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, var_0)))))));
    let var_3 = ~select(vec2<u32>(~u_input.a.x, ~_wgslsmith_dot_vec3_u32(u_input.a, u_input.a)), u_input.a.zx, true);
    return u_input.c;
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_2(func_1(vec3<f32>(_wgslsmith_f_op_f32(1534f + 1439f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-782f, -810f)) + _wgslsmith_f_op_f32(step(1000f, 1201f))), -280f)), func_1(vec3<f32>(1688f, _wgslsmith_f_op_f32(round(-579f)), 1337f)), ~vec3<i32>(~u_input.b.x, u_input.c.x, ~u_input.b.x), false);
    global0 = u_input.a;
    var_0 = Struct_2(var_0.b, Struct_1(-u_input.c.x), _wgslsmith_sub_vec3_i32(vec3<i32>(-1i) * -func_3(), ~vec3<i32>(max(var_0.a.a, var_0.c.x), _wgslsmith_add_i32(var_0.c.x, 4712i), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.c.x, 27406i, u_input.b.x, var_0.b.a), vec4<i32>(var_0.a.a, 23552i, u_input.b.x, var_0.a.a)))), true);
    let var_1 = min(_wgslsmith_mult_vec2_i32(vec2<i32>(abs(_wgslsmith_add_i32(u_input.b.x, u_input.c.x)), _wgslsmith_mult_i32(~u_input.b.x, -2147483647i)), func_3().yx ^ func_3().yz), var_0.c.xx);
    let var_2 = vec3<bool>(var_0.d, var_1.x >= -24086i, _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, global0.x, 1u, 34923u), ~vec4<u32>(global0.x, global0.x, global0.x, 0u)), _wgslsmith_sub_u32(u_input.a.x, u_input.a.x) | _wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, global0.x, global0.x), vec3<u32>(30877u, global0.x, 1u))) >= ~_wgslsmith_mod_u32(global0.x, _wgslsmith_mod_u32(22491u, u_input.a.x)));
    return Struct_2(var_0.b, func_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-713f * -940f)), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(528f - -1735f)))), var_0.c, _wgslsmith_dot_vec2_u32(~_wgslsmith_clamp_vec2_u32(global0.yy, vec2<u32>(global0.x, global0.x), global0.zz), vec2<u32>(global0.x, _wgslsmith_sub_u32(u_input.a.x, 1u))) > u_input.a.x);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> Struct_2 {
    let var_0 = any(select(!vec3<bool>(all(vec2<bool>(false, false)), arg_1.d | false, false), vec3<bool>((false && arg_1.d) & true, true, arg_1.d), !vec3<bool>(true, any(vec3<bool>(arg_1.d, false, arg_1.d)), false)));
    global0 = vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_add_u32(~u_input.a.x, 39323u), reverseBits(~4294967295u)), _wgslsmith_dot_vec3_u32(u_input.a, countOneBits(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, global0.x, 4294967295u), vec3<u32>(u_input.a.x, u_input.a.x, global0.x)))), 0u);
    let var_1 = _wgslsmith_f_op_f32(-1228f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-168f, 2298f)))) - 161f)));
    var var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_1), 1148f, _wgslsmith_div_f32(var_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1)) * _wgslsmith_f_op_f32(-var_1)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(133f, 976f, var_1))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1000f, 1615f, -774f))) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_1, -316f, var_1)))))));
    var var_3 = Struct_2(func_2().a, func_2().b, ~(max(-vec3<i32>(-13930i, u_input.c.x, arg_1.b.a), u_input.c) ^ vec3<i32>(-arg_0.a, u_input.b.x << (u_input.a.x % 32u), 27241i)), (any(select(vec3<bool>(false, arg_1.d, true), vec3<bool>(false, arg_1.d, var_0), vec3<bool>(true, var_0, arg_1.d))) && true) & true);
    return Struct_2(Struct_1(-(~2147483647i)), var_3.a, vec3<i32>(~(-5184i), -21546i, -93618i), all(vec2<bool>(u_input.a.x > firstTrailingBit(u_input.a.x), all(select(vec3<bool>(false, true, true), vec3<bool>(false, var_0, var_0), var_0)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.a;
    var var_0 = vec2<i32>(-1i, 41557i);
    let var_1 = func_4(func_1(vec3<f32>(_wgslsmith_f_op_f32(-1910f * _wgslsmith_div_f32(1310f, -1000f)), 1005f, 1f)), func_2());
    var_0 = ~(~vec2<i32>(var_1.a.a, var_1.c.x));
    var var_2 = !select(!select(!vec2<bool>(false, var_1.d), vec2<bool>(true, true), var_1.d), vec2<bool>(!(u_input.a.x == 26520u), func_2().d), false);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(838f, 342f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-823f, 962f))))));
}

