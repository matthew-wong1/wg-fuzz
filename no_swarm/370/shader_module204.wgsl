struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: vec3<bool>,
    d: vec4<bool>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec3<bool>,
    d: f32,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: f32,
    b: u32,
    c: vec3<bool>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: u32,
    d: vec3<i32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_2;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2) -> i32 {
    let var_0 = ~_wgslsmith_div_u32(_wgslsmith_clamp_u32(~(~19659u), ~(~70516u), 87575u), 45651u);
    global1 = arg_0;
    var var_1 = !select(!(!select(arg_0.a.c, global1.a.c, global0.c)), global0.d.wzz, !vec3<bool>(arg_0.a.b.x >= u_input.a, true, global1.c.x & true));
    let var_2 = _wgslsmith_f_op_f32(global1.d - _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-174f, global1.d, true)), arg_0.d));
    var_1 = arg_0.a.c;
    return _wgslsmith_mod_i32(i32(-1i) * -arg_0.b.x, _wgslsmith_dot_vec2_i32(arg_0.b.xx, arg_0.b.yy));
}

fn func_2(arg_0: vec3<f32>, arg_1: i32, arg_2: vec2<i32>) -> f32 {
    var var_0 = func_3(Struct_2(global1.a, _wgslsmith_add_vec3_i32(global1.b, global1.b) ^ ~(-global1.b), vec3<bool>(any(global1.a.c.zz), global0.d.x, !(global1.a.e != global1.a.e)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.d + _wgslsmith_f_op_f32(f32(-1f) * -356f)) * global1.d)));
    var var_1 = Struct_1(countOneBits(firstLeadingBit(min(-global0.b.x, 1i))), arg_2, select(global1.c, global1.c, true), !vec4<bool>(!any(vec4<bool>(true, true, true, true)), global1.a.c.x, any(global0.c.yz), global0.d.x), arg_1);
    var_1 = Struct_1(abs(2147483647i), arg_2, var_1.d.wzy, !(!vec4<bool>(any(vec4<bool>(var_1.d.x, var_1.c.x, global1.a.d.x, var_1.c.x)), true, true, any(vec3<bool>(global0.c.x, var_1.c.x, var_1.d.x)))), countOneBits(var_1.e));
    var var_2 = global1.d;
    var_2 = _wgslsmith_f_op_f32(-arg_0.x);
    return global1.d;
}

fn func_1(arg_0: u32, arg_1: vec3<u32>, arg_2: vec4<u32>) -> Struct_3 {
    let var_0 = 1u >> (_wgslsmith_div_u32(arg_0, ~1u) % 32u);
    var var_1 = Struct_4(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global1.d, global1.d, _wgslsmith_f_op_f32(global1.d * global1.d)))), abs(_wgslsmith_div_i32(_wgslsmith_div_i32(global1.a.a, u_input.a), -63197i)), global1.b.xx << ((arg_2.zy ^ abs(arg_2.ww)) % vec2<u32>(32u)))), ~_wgslsmith_mult_u32(~(~var_0), arg_1.x), !(!global0.c), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.d, 325f, global1.d) - vec3<f32>(global1.d, global1.d, -1213f)), vec3<f32>(454f, global1.d, 1349f)))))));
    var var_2 = abs(select(_wgslsmith_mod_u32(var_1.b, _wgslsmith_dot_vec4_u32(~arg_2, ~vec4<u32>(arg_2.x, arg_0, arg_1.x, var_1.b))), var_1.b, all(select(vec2<bool>(global0.d.x, false), select(global1.c.zx, vec2<bool>(false, true), true), vec2<bool>(global1.c.x, global1.a.d.x)))));
    var var_3 = vec2<u32>(~_wgslsmith_mult_u32(arg_0 << (firstTrailingBit(0u) % 32u), 4294967295u), ~_wgslsmith_mult_u32(var_0, arg_1.x));
    var var_4 = (true || var_1.c.x) | true;
    return Struct_3(!(!(2147483647i == global1.a.e)) || false);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: f32) -> Struct_1 {
    global1 = arg_1;
    global0 = Struct_1(u_input.a, select(arg_1.b.xx, ~(-vec2<i32>(2147483647i, u_input.a)), !select(global0.d.zx, !vec2<bool>(global0.d.x, global1.c.x), arg_1.a.c.yy)), global1.c, global1.a.d, 0i);
    var var_0 = true;
    var_0 = global1.c.x;
    let var_1 = select(!vec3<bool>(true, arg_1.c.x, true), !vec3<bool>(true, all(global0.c.yz), false), select(!vec3<bool>(arg_0.a, true, true), !(!vec3<bool>(false, true, global0.c.x)), select(vec3<bool>(global1.a.b.x <= 2147483647i, !global0.d.x, arg_1.a.d.x), vec3<bool>(true, false, arg_1.c.x | arg_1.c.x), true)));
    return global1.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(func_1(64728u, vec3<u32>(1u, ~85097u, ~78281u) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)), vec4<u32>(1u, 1u, 1u, 1u)), Struct_2(global1.a, global1.b, global0.d.wxz, -215f), 1135f);
    global1 = Struct_2(global1.a, global1.b, vec3<bool>(!func_1(_wgslsmith_mult_u32(4294967295u, 1u), countOneBits(vec3<u32>(33458u, 1u, 0u)), reverseBits(vec4<u32>(4294967295u, 4294967295u, 36067u, 0u))).a, all(global1.c.xz), false), 1514f);
    let var_0 = Struct_3(((max(global0.e, u_input.a) != _wgslsmith_dot_vec4_i32(vec4<i32>(global1.a.e, 1192i, global0.a, -20382i), vec4<i32>(2147483647i, global1.a.a, global1.b.x, 0i))) == !global0.c.x) & !all(select(vec4<bool>(global1.a.c.x, false, false, global0.d.x), vec4<bool>(global1.c.x, global1.a.c.x, global0.d.x, global1.c.x), global1.c.x)));
    var var_1 = global1.d;
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(global1.d * _wgslsmith_f_op_f32(-global1.d)), -960f);
    var var_3 = Struct_1(min(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(-1i, -10763i, global0.b.x), 14876i) ^ -u_input.a, global1.b.x | ~_wgslsmith_mod_i32(6251i, 44364i)), abs(vec2<i32>(u_input.a, _wgslsmith_dot_vec3_i32(global1.b, global1.b))), !(!(!global0.d.zxy)), func_4(func_1(1u, vec3<u32>(max(6072u, 8428u), ~4294967295u, ~4294967295u), ~select(vec4<u32>(11263u, 4294967295u, 1u, 56989u), vec4<u32>(0u, 5574u, 0u, 1u), true)), Struct_2(Struct_1(1i, vec2<i32>(-2147483647i, global1.a.e), vec3<bool>(true, global1.a.c.x, global0.d.x), !vec4<bool>(global1.a.d.x, global0.d.x, global0.c.x, global1.c.x), _wgslsmith_clamp_i32(global0.a, global1.a.e, u_input.a)), _wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, 2147483647i, 6506i), global1.b), vec3<i32>(2432i, u_input.a, u_input.a)), select(global0.c, vec3<bool>(var_0.a, false, false), true), -523f), _wgslsmith_f_op_f32(f32(-1f) * -396f)).d, countOneBits(2147483647i));
    var var_4 = func_4(Struct_3(all(select(func_4(Struct_3(global0.d.x), Struct_2(global1.a, global1.b, var_3.c, global1.d), global1.d).d, var_3.d, vec4<bool>(var_0.a, var_0.a, var_3.c.x, false)))), Struct_2(global1.a, global1.b, !vec3<bool>(false, true, var_0.a), global1.d), _wgslsmith_f_op_f32(-var_2.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.b, _wgslsmith_f_op_f32(trunc(-2142f)), 1u, ~global1.b, abs((reverseBits(vec4<u32>(1u, 78630u, 16018u, 4294967295u)) ^ select(vec4<u32>(46945u, 24547u, 13188u, 0u), vec4<u32>(0u, 1u, 1u, 32993u), vec4<bool>(global1.c.x, global0.c.x, false, false))) >> (~(~vec4<u32>(53876u, 53772u, 4294967295u, 0u)) % vec4<u32>(32u))));
}

