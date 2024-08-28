struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<u32>,
    d: vec2<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 19>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: u32, arg_1: u32) -> u32 {
    let var_0 = vec3<i32>(u_input.e.x, _wgslsmith_dot_vec4_i32(u_input.a, ~(vec4<i32>(-14758i, 29607i, u_input.b, u_input.b) >> (vec4<u32>(u_input.c.x, 43142u, arg_1, arg_0) % vec4<u32>(32u))) & u_input.a), ~(~(i32(-1i) * -9525i)));
    let var_1 = -u_input.a;
    let var_2 = _wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, ~_wgslsmith_mult_u32(23068u, arg_0)), u_input.d), _wgslsmith_mod_vec2_u32(abs(vec2<u32>(arg_0, ~62470u)), vec2<u32>(84320u ^ arg_0, arg_0) & vec2<u32>(arg_0 ^ u_input.d.x, 4294967295u)));
    var var_3 = global0[_wgslsmith_index_u32(~firstLeadingBit(~select(min(0u, arg_0), 47810u, any(vec4<bool>(false, false, true, true)))), 19u)];
    var_3 = Struct_1(true, min(_wgslsmith_clamp_vec2_i32(-firstTrailingBit(u_input.a.xx), var_3.b, vec2<i32>(-1i << (var_2.x % 32u), var_0.x)), u_input.e), var_2.x);
    return _wgslsmith_add_u32(1173u, 1u);
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> u32 {
    global0 = array<Struct_1, 19>();
    let var_0 = Struct_1(~func_3(_wgslsmith_dot_vec4_u32(u_input.c, u_input.c), u_input.c.x) < firstLeadingBit(0u), vec2<i32>(abs(_wgslsmith_div_i32(u_input.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.b.x, 62275i), vec2<i32>(-1i, -2147483647i)))), arg_0.b.x), 4294967295u);
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_1, -558f), vec2<f32>(arg_1, arg_1)))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, arg_1) * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-469f, 714f)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-570f, arg_1)))));
    var var_2 = global0[_wgslsmith_index_u32(~1u, 19u)];
    var var_3 = _wgslsmith_dot_vec3_u32(~(~select(u_input.c.xyw, vec3<u32>(var_0.c, var_2.c, 4294967295u), vec3<bool>(false, arg_0.a, true)) & u_input.c.zxz), vec3<u32>(u_input.c.x, 56094u, u_input.d.x));
    return arg_0.c;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: bool) -> Struct_1 {
    let var_0 = Struct_1(true, countOneBits(_wgslsmith_mult_vec2_i32(-(arg_0.b ^ arg_0.b), _wgslsmith_clamp_vec2_i32(~u_input.a.xz, arg_0.b, u_input.a.yw ^ vec2<i32>(arg_0.b.x, 20078i)))), arg_0.c);
    global0 = array<Struct_1, 19>();
    var var_1 = countOneBits(vec4<i32>(min(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, arg_0.b.x, arg_0.b.x, u_input.a.x) >> (vec4<u32>(var_0.c, var_0.c, u_input.c.x, 2939u) % vec4<u32>(32u)), ~vec4<i32>(u_input.b, u_input.e.x, var_0.b.x, -1i)), -17554i), -firstLeadingBit(u_input.e.x >> (16324u % 32u)), (arg_0.b.x << (0u % 32u)) & max(1i, _wgslsmith_clamp_i32(0i, 7537i, u_input.e.x)), max(firstTrailingBit(arg_0.b.x), ~1i)));
    let var_2 = !select(select(!select(vec2<bool>(arg_2, false), vec2<bool>(true, arg_0.a), vec2<bool>(var_0.a, false)), !(!vec2<bool>(false, var_0.a)), vec2<bool>(true, true)), !vec2<bool>(arg_2, true), select(select(!vec2<bool>(var_0.a, arg_0.a), vec2<bool>(arg_0.a, true), any(vec4<bool>(true, false, arg_0.a, arg_0.a))), !select(vec2<bool>(true, var_0.a), vec2<bool>(arg_2, false), var_0.a), any(vec2<bool>(arg_0.a, false))));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, arg_1.x, 420f, -751f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, arg_1.x, 336f, arg_1.x) + vec4<f32>(-1000f, arg_1.x, arg_1.x, -476f)), _wgslsmith_div_vec4_f32(vec4<f32>(641f, -701f, -1003f, arg_1.x), vec4<f32>(804f, 917f, arg_1.x, -1545f))))));
    return var_0;
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: i32) -> Struct_1 {
    let var_0 = !arg_1;
    global0 = array<Struct_1, 19>();
    var var_1 = global0[_wgslsmith_index_u32(u_input.c.x, 19u)];
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1801f, 1058f, -1353f, -359f), vec4<f32>(-1940f, -1000f, 1340f, -281f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -477f, -927f, 594f))))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-858f))), _wgslsmith_f_op_f32(-1f), -1569f, _wgslsmith_f_op_f32(round(-439f))));
    var var_3 = arg_0;
    return Struct_1(0u != u_input.c.x, vec2<i32>(-14469i, func_4(func_4(arg_0, var_2.xzw, var_0), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1917f, -1389f, var_2.x)), false).b.x) | ~(~(-vec2<i32>(u_input.b, arg_0.b.x))), var_1.c);
}

fn func_1() -> bool {
    var var_0 = any(!(!(!select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)))));
    let var_1 = func_5(func_4(Struct_1(all(vec4<bool>(true, false, true, false)), u_input.e, func_2(Struct_1(false, vec2<i32>(9702i, u_input.e.x), 4294967295u), _wgslsmith_f_op_f32(step(-2620f, 1000f)))), vec3<f32>(_wgslsmith_div_f32(-551f, _wgslsmith_f_op_f32(f32(-1f) * -386f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -687f) + -170f), _wgslsmith_f_op_f32(trunc(-317f))), !any(vec3<bool>(true, true, true))), (true | any(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)))) & all(vec2<bool>(false, func_4(global0[_wgslsmith_index_u32(u_input.d.x, 19u)], vec3<f32>(-324f, -661f, -1361f), true).a)), -_wgslsmith_div_i32(~(u_input.b << (29271u % 32u)), u_input.e.x | u_input.b));
    global0 = array<Struct_1, 19>();
    global0 = array<Struct_1, 19>();
    return any(select(!vec4<bool>(true, all(vec2<bool>(true, var_1.a)), var_1.a, var_1.a), vec4<bool>(any(vec2<bool>(var_1.a, false)), !var_1.a, false, any(select(vec2<bool>(var_1.a, false), vec2<bool>(false, false), false))), select(!vec4<bool>(var_1.a, false, true, true), !(!vec4<bool>(false, var_1.a, var_1.a, true)), select(!vec4<bool>(false, true, false, var_1.a), vec4<bool>(var_1.a, true, false, true), vec4<bool>(false, false, var_1.a, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec4<bool>(true, any(vec4<bool>(true, true, true, u_input.a.x > u_input.a.x)), any(vec3<bool>(false, false, false)) && true, u_input.c.x >= reverseBits(42170u)), vec4<bool>(true, all(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true))), true, false), !vec4<bool>(!(u_input.d.x != 4294967295u), true, true, true));
    var var_1 = u_input.c.xy;
    var_0 = !(!select(select(vec4<bool>(var_0.x, false, var_0.x, var_0.x), select(vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, var_0.x)), var_0.x), vec4<bool>(func_1(), true, func_5(Struct_1(var_0.x, vec2<i32>(-2147483647i, 44401i), u_input.d.x), false, -1i).a, false | var_0.x), func_5(Struct_1(false, u_input.e, 0u), var_0.x, u_input.b >> (var_1.x % 32u)).a));
    var var_2 = Struct_1(var_0.x, firstTrailingBit(_wgslsmith_add_vec2_i32(~u_input.e >> ((vec2<u32>(var_1.x, 4294967295u) & vec2<u32>(u_input.d.x, u_input.d.x)) % vec2<u32>(32u)), vec2<i32>(u_input.e.x, func_4(global0[_wgslsmith_index_u32(43027u, 19u)], vec3<f32>(-1000f, 1202f, -1000f), true).b.x))), u_input.c.x);
    var_2 = global0[_wgslsmith_index_u32(func_5(global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(_wgslsmith_add_u32(1u, 83621u), select(func_5(global0[_wgslsmith_index_u32(12673u, 19u)], false, u_input.e.x).c, 83793u ^ var_1.x, !var_0.x)), 19u)], true, u_input.a.x).c, 19u)];
    var var_3 = vec3<bool>(func_1(), true, !var_2.a);
    var_1 = _wgslsmith_mult_vec2_u32(~vec2<u32>(~var_1.x, ~92136u), u_input.c.yw);
    let var_4 = ~u_input.c;
    let var_5 = func_4(Struct_1(true, (firstTrailingBit(vec2<i32>(39290i, var_2.b.x)) << (abs(vec2<u32>(38219u, 13103u)) % vec2<u32>(32u))) ^ _wgslsmith_mod_vec2_i32(vec2<i32>(var_2.b.x, var_2.b.x), _wgslsmith_mod_vec2_i32(var_2.b, u_input.a.zw)), var_4.x << (24901u % 32u)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(888f - 256f), _wgslsmith_f_op_f32(-1205f * -538f), -421f))))), 1u <= u_input.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(1u);
}

