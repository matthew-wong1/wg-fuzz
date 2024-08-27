struct Struct_1 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: vec3<u32>,
    d: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: vec2<i32>,
    d: vec3<bool>,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<u32>,
    c: u32,
    d: bool,
    e: vec2<i32>,
}

struct Struct_5 {
    a: vec4<f32>,
    b: f32,
    c: bool,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 20> = array<vec3<u32>, 20>(vec3<u32>(1u, 32196u, 15204u), vec3<u32>(40570u, 2530u, 15924u), vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(1u, 0u, 30211u), vec3<u32>(0u, 0u, 4294967295u), vec3<u32>(7781u, 4294967295u, 36338u), vec3<u32>(0u, 9940u, 4294967295u), vec3<u32>(0u, 1u, 1u), vec3<u32>(42225u, 4294967295u, 700u), vec3<u32>(0u, 4294967295u, 44162u), vec3<u32>(0u, 1165u, 0u), vec3<u32>(1u, 4294967295u, 21566u), vec3<u32>(25298u, 1u, 4294967295u), vec3<u32>(0u, 38096u, 4294967295u), vec3<u32>(142u, 37703u, 1u), vec3<u32>(1u, 1u, 46050u), vec3<u32>(0u, 0u, 25620u), vec3<u32>(0u, 1u, 73260u), vec3<u32>(4294967295u, 1u, 28597u), vec3<u32>(0u, 4294967295u, 16488u));

var<private> global1: Struct_3;

var<private> global2: Struct_4;

var<private> global3: bool = true;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: Struct_3) -> vec2<f32> {
    return vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global1.a.d * _wgslsmith_div_f32(arg_0.e.b.d, _wgslsmith_div_f32(551f, 886f))))), 895f);
}

fn func_3(arg_0: bool, arg_1: Struct_4, arg_2: bool, arg_3: vec2<bool>) -> vec2<i32> {
    let var_0 = global1.b | (arg_1.e.x & arg_1.e.x);
    global1 = Struct_3(Struct_1(~global1.a.a, global1.e.b.b, u_input.c.xxx, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(1720f, 1123f)))))), _wgslsmith_dot_vec4_i32(select(select(vec4<i32>(-14387i, -1i, u_input.a, -1i), reverseBits(vec4<i32>(global1.b, 0i, -1i, u_input.a)), all(global1.a.b)), abs(~vec4<i32>(u_input.a, -26115i, u_input.a, arg_1.e.x)), arg_0), vec4<i32>(_wgslsmith_sub_i32(arg_1.e.x, 0i) & -24934i, _wgslsmith_dot_vec4_i32(~vec4<i32>(global1.b, u_input.a, global2.e.x, 23890i), vec4<i32>(-2147483647i, -25607i, -2147483647i, 9520i) | vec4<i32>(-39464i, -29097i, global1.e.c.x, arg_1.e.x)), firstLeadingBit(global1.c.x << (17363u % 32u)), _wgslsmith_mult_i32(u_input.a, 1i))), select(abs(arg_1.e), _wgslsmith_sub_vec2_i32(~vec2<i32>(global2.e.x, global2.e.x), global2.e << (vec2<u32>(global1.e.b.c.x, 0u) % vec2<u32>(32u))) ^ ~arg_1.e, !select(vec2<bool>(global2.a.b.x, global1.a.b.x), select(global1.d.xz, arg_3, global2.a.b.zy), all(vec3<bool>(global1.e.b.b.x, arg_0, global2.d)))), vec3<bool>(true, true, global2.e.x < (i32(-1i) * -2147483647i)), Struct_2(-vec2<i32>(arg_1.e.x << (6796u % 32u), -u_input.a), Struct_1(u_input.c, vec3<bool>(true, true, true), ~global2.a.a.zwx | ~global0[_wgslsmith_index_u32(90162u, 20u)], _wgslsmith_f_op_f32(-848f + global2.a.d)), -(~vec3<i32>(2147483647i, arg_1.e.x, global1.b))));
    global2 = Struct_4(arg_1.a, firstLeadingBit(~(vec3<u32>(0u, 1u, 1u) << (~u_input.c.zxz % vec3<u32>(32u)))), global1.e.b.c.x, !arg_2, -vec2<i32>(~(global1.c.x >> (global1.a.a.x % 32u)), -6385i));
    global0 = array<vec3<u32>, 20>();
    global3 = any(vec2<bool>(!arg_0, global2.a.b.x));
    return vec2<i32>(-u_input.a, ~(-(~1i))) | _wgslsmith_clamp_vec2_i32(global1.c, abs(~(~vec2<i32>(var_0, -1i))), vec2<i32>(abs(0i), select(-arg_1.e.x, -global1.c.x, false)));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_5, arg_2: i32, arg_3: vec2<i32>) -> Struct_1 {
    let var_0 = global1.d.yx;
    return Struct_1(u_input.c, select(select(vec3<bool>(var_0.x, true, !global2.d), select(select(global1.a.b, global2.a.b, global1.a.b), vec3<bool>(var_0.x, true, true), vec3<bool>(global2.a.b.x, global2.a.b.x, false)), global2.a.b.x), vec3<bool>(arg_1.d.b.b.x & true, true, select(var_0.x | true, true, true)), any(select(vec2<bool>(var_0.x, var_0.x), select(arg_1.d.b.b.zy, global2.a.b.zx, true), any(vec2<bool>(false, true))))), u_input.b, -1261f);
}

fn func_1() -> Struct_5 {
    var var_0 = ~(~global1.c.x);
    var var_1 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.a.d), global1.a.d), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(579f))))), -608f, global2.a.d);
    let var_2 = Struct_3(func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(Struct_3(Struct_1(vec4<u32>(1u, u_input.d, 27649u, 6997u), vec3<bool>(false, global1.d.x, global1.a.b.x), vec3<u32>(global1.a.a.x, u_input.c.x, global2.a.c.x), global1.e.b.d), 19031i, vec2<i32>(2147483647i, -3058i), global2.a.b, Struct_2(global2.e, global2.a, global1.e.c))))) * vec2<f32>(_wgslsmith_f_op_vec2_f32(func_2(Struct_3(global1.a, 21952i, global1.e.a, global1.e.b.b, Struct_2(global1.c, global1.a, vec3<i32>(global1.e.c.x, 18910i, global2.e.x))))).x, _wgslsmith_f_op_f32(min(-366f, -1452f)))), Struct_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(613f, global2.a.d, global1.a.d, var_1.x) * vec4<f32>(var_1.x, var_1.x, -1321f, -315f))), _wgslsmith_f_op_f32(-1f), 1i <= u_input.a, Struct_2(func_3(global2.a.b.x, Struct_4(global1.a, vec3<u32>(global2.a.a.x, 1u, 73895u), global2.a.c.x, true, global1.c), false, global1.a.b.zy), Struct_1(vec4<u32>(54020u, 70548u, 1u, 1u), global1.e.b.b, u_input.c.zwy, global1.e.b.d), firstTrailingBit(global1.e.c))), global2.e.x, countOneBits(~global2.e)), -18027i, vec2<i32>(abs(~(~794i)), _wgslsmith_div_i32(abs(_wgslsmith_dot_vec2_i32(global2.e, vec2<i32>(0i, -2147483647i))), global1.c.x)), func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1538f, _wgslsmith_f_op_vec2_f32(func_2(Struct_3(global2.a, global1.e.c.x, vec2<i32>(1i, 2147483647i), global1.e.b.b, Struct_2(global1.c, Struct_1(global1.e.b.a, vec3<bool>(global1.e.b.b.x, false, global1.a.b.x), global1.a.a.yxw, global2.a.d), global1.e.c)))).x) + vec2<f32>(_wgslsmith_f_op_f32(step(global1.e.b.d, var_1.x)), _wgslsmith_f_op_f32(-1068f * var_1.x))), Struct_5(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.x, global2.a.d, global1.a.d, -347f), vec4<f32>(-1245f, 1000f, 678f, 515f), global1.a.b.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-178f, -899f, global1.e.b.d, 891f)))), _wgslsmith_f_op_f32(select(var_1.x, _wgslsmith_f_op_f32(global2.a.d * global2.a.d), global2.a.b.x)), true, Struct_2(abs(vec2<i32>(-8126i, global2.e.x)), global2.a, global1.e.c ^ vec3<i32>(u_input.a, global2.e.x, -36961i))), (~global1.e.c.x >> (4294967295u % 32u)) << (u_input.c.x % 32u), _wgslsmith_add_vec2_i32(global1.e.a, global2.e)).b, global1.e);
    let var_3 = firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(u_input.a, global2.e.x), ~var_2.b, _wgslsmith_mod_i32(u_input.a, var_2.e.c.x), 0i), ~max(vec4<i32>(global2.e.x, global1.e.c.x, global1.e.a.x, global1.b), vec4<i32>(global2.e.x, 2147483647i, u_input.a, u_input.a)))) | countOneBits(firstTrailingBit(min(~global2.e.x, -2147483647i)));
    var var_4 = _wgslsmith_div_vec4_i32(abs(_wgslsmith_mod_vec4_i32(~(~vec4<i32>(u_input.a, 36105i, global2.e.x, -2147483647i)), vec4<i32>(-1i, var_2.c.x, _wgslsmith_mod_i32(-77863i, 2147483647i), 1i))), ~(_wgslsmith_mod_vec4_i32(firstTrailingBit(vec4<i32>(global1.b, u_input.a, 1930i, u_input.a)), vec4<i32>(var_3, 0i, 2147483647i, 30491i)) ^ (-vec4<i32>(-41339i, u_input.a, var_2.b, global2.e.x) >> (~var_2.e.b.a % vec4<u32>(32u)))));
    return Struct_5(vec4<f32>(global1.e.b.d, var_1.x, 459f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-229f)) * _wgslsmith_f_op_f32(global1.a.d * var_2.a.d))), _wgslsmith_f_op_f32(step(-1000f, var_2.e.b.d)), true, var_2.e);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = firstTrailingBit(~_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(max(global0[_wgslsmith_index_u32(34994u, 20u)], vec3<u32>(46959u, 12200u, 52241u)), ~vec3<u32>(44315u, global2.b.x, global2.a.a.x)), ~(~global0[_wgslsmith_index_u32(26951u, 20u)])));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, global1.e.b.d) * global1.a.d)), -588f, var_0.d.b.c.x, var_0.d.a.x, var_0.d.c.x >> (~(abs(u_input.b.x) ^ firstTrailingBit(51181u)) % 32u));
}

