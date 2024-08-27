struct Struct_1 {
    a: vec3<u32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: u32,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 5> = array<vec4<i32>, 5>(vec4<i32>(0i, 25206i, -35890i, -4733i), vec4<i32>(-1i, -58567i, 0i, -21976i), vec4<i32>(14446i, -1i, -4361i, 2147483647i), vec4<i32>(13899i, 18550i, i32(-2147483648), -82354i), vec4<i32>(24113i, 0i, -21133i, 4221i));

var<private> global1: vec4<u32> = vec4<u32>(59628u, 0u, 29379u, 42007u);

var<private> global2: Struct_1 = Struct_1(vec3<u32>(33878u, 4779u, 81412u), 0i);

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: Struct_3) -> vec3<u32> {
    var var_0 = _wgslsmith_div_vec3_u32(u_input.a, ~(~(~(~vec3<u32>(9742u, 72151u, global1.x)))));
    return vec3<u32>(u_input.d, _wgslsmith_div_u32(_wgslsmith_add_u32(_wgslsmith_div_u32(90077u, var_0.x), 102971u), ~_wgslsmith_div_u32(~73827u, 6610u)), 21277u);
}

fn func_2() -> Struct_4 {
    global2 = Struct_1(select(global2.a, _wgslsmith_clamp_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(global1.x, u_input.a.x, u_input.a.x), u_input.a), ~u_input.a & _wgslsmith_div_vec3_u32(vec3<u32>(32895u, 1u, 0u), vec3<u32>(u_input.a.x, global2.a.x, 5122u)), global2.a), vec3<bool>(_wgslsmith_div_i32(-3472i, -2147483647i) < global2.b, true, true | select(true, true, true))), ~(-(~abs(-24284i))));
    global2 = Struct_1(select(_wgslsmith_mult_vec3_u32(~(vec3<u32>(15689u, 0u, global1.x) << (global2.a % vec3<u32>(32u))), u_input.a), ~u_input.a, ~76399u == _wgslsmith_add_u32(1u, global2.a.x ^ 13719u)), _wgslsmith_div_i32(abs(0i), -12221i));
    var var_0 = select(func_3(Struct_3(-firstTrailingBit(vec4<i32>(global2.b, global2.b, 1i, 27748i)), -331f)), abs(select(global2.a, firstTrailingBit(vec3<u32>(global1.x, 1u, 11521u)), vec3<bool>(true, true, true))), select(!select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), false), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), false)), false), any(vec4<bool>(true, true, true, true)) || true));
    var_0 = ~global2.a;
    let var_1 = !(!any(vec3<bool>(true, true, global2.b > 1i)));
    return Struct_4(Struct_3(global0[_wgslsmith_index_u32(10173u, 5u)], -1887f), var_1, select(_wgslsmith_dot_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(41360u, 33282u, 0u, var_0.x), vec4<u32>(global2.a.x, global2.a.x, u_input.a.x, 31723u)), vec4<u32>(_wgslsmith_mult_u32(8954u, 28300u), ~32488u, u_input.a.x, min(4294967295u, 26336u))), var_0.x, var_1), Struct_1(~u_input.a, -_wgslsmith_dot_vec2_i32(vec2<i32>(17434i, -2147483647i), u_input.c)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(1002f))))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(300f, _wgslsmith_f_op_f32(1565f + 1161f)), _wgslsmith_f_op_f32(f32(-1f) * -255f))))));
}

fn func_4(arg_0: Struct_4) -> Struct_2 {
    let var_0 = u_input.a;
    var var_1 = vec2<i32>(max(-36122i, u_input.c.x), max(-_wgslsmith_dot_vec2_i32(max(u_input.b.zx, u_input.b.xz), u_input.c), -u_input.c.x));
    var var_2 = arg_0;
    var_2 = Struct_4(arg_0.a, _wgslsmith_add_i32(2147483647i, -u_input.c.x) < firstTrailingBit(global2.b), ~arg_0.c, Struct_1(~_wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(12909u, 1u, u_input.d), vec3<u32>(var_2.c, global2.a.x, arg_0.d.a.x)), ~vec3<u32>(1u, 71175u, 4294967295u)), 1i), 1000f);
    let var_3 = 1u;
    return Struct_2(func_2().d, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(180f, var_2.e))) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-943f, var_2.a.b) * vec2<f32>(-1000f, var_2.e))))))), func_2().d, func_2().d);
}

fn func_5(arg_0: f32, arg_1: i32, arg_2: Struct_2, arg_3: vec3<i32>) -> Struct_1 {
    global1 = select(~(~select(select(vec4<u32>(4294967295u, global1.x, 4294967295u, arg_2.c.a.x), vec4<u32>(28132u, global1.x, arg_2.d.a.x, arg_2.d.a.x), vec4<bool>(false, false, false, false)), vec4<u32>(4294967295u, arg_2.c.a.x, global2.a.x, 26142u) << (vec4<u32>(arg_2.d.a.x, 4294967295u, global2.a.x, 37037u) % vec4<u32>(32u)), true)), firstLeadingBit(vec4<u32>(4294967295u, ~1024u, _wgslsmith_mod_u32(~global2.a.x, ~u_input.a.x), arg_2.c.a.x)), 7180u > global1.x);
    var var_0 = _wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(global1.xxy, vec3<u32>(func_2().c, 2754u, 1u)), min(global2.a, countOneBits(~vec3<u32>(0u, u_input.d, 4294967295u))));
    let var_1 = true;
    global2 = func_4(Struct_4(Struct_3(~(-global0[_wgslsmith_index_u32(1038u, 5u)]), _wgslsmith_f_op_f32(sign(601f))), var_1, global1.x, Struct_1(u_input.a, u_input.b.x), -1059f)).a;
    var var_2 = abs(-(~(vec3<i32>(-1i) * -u_input.b.xyw)));
    return arg_2.a;
}

fn func_6(arg_0: Struct_1) -> u32 {
    let var_0 = func_2().a;
    global2 = arg_0;
    let var_1 = func_4(Struct_4(func_2().a, false, 1u, Struct_1(~(~vec3<u32>(67098u, global1.x, 4294967295u)), var_0.a.x), 763f));
    var var_2 = vec3<f32>(-1513f, -2304f, _wgslsmith_f_op_f32(var_1.b.x * var_1.b.x));
    global2 = func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)))), -5838i, func_4(Struct_4(func_2().a, any(vec2<bool>(true, true)), firstLeadingBit(~var_1.c.a.x), func_2().d, 565f)), vec3<i32>(u_input.c.x, countOneBits(~_wgslsmith_div_i32(-59455i, var_0.a.x)), 45065i));
    return reverseBits(arg_0.a.x);
}

fn func_1(arg_0: vec4<i32>) -> f32 {
    var var_0 = vec4<u32>(global2.a.x, 1u, ~(37825u & global2.a.x), func_6(func_5(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -823f))), ~_wgslsmith_div_i32(u_input.c.x, u_input.c.x), func_4(func_2()), abs(~u_input.b.yyz))));
    let var_1 = arg_0.x <= u_input.b.x;
    var var_2 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1f, 1f, 1f), vec3<f32>(-754f, -306f, -1183f)));
    var_2 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-727f, 444f, -273f) * vec3<f32>(-694f, 292f, var_2.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, var_2.x, var_2.x))))) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(step(-586f, 507f)), 898f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, -923f, 333f)))))));
    let var_3 = u_input.c | ((_wgslsmith_mod_vec2_i32(-vec2<i32>(u_input.c.x, u_input.b.x), vec2<i32>(arg_0.x, 1i) | vec2<i32>(global2.b, 0i)) >> (vec2<u32>(global2.a.x, _wgslsmith_dot_vec2_u32(u_input.a.yz, vec2<u32>(global1.x, u_input.a.x))) % vec2<u32>(32u))) << (reverseBits(global2.a.zx) % vec2<u32>(32u)));
    return -103f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -6425i;
    global0 = array<vec4<i32>, 5>();
    var var_1 = select(u_input.a.x >= ~(~(~0u)), true, true);
    global0 = array<vec4<i32>, 5>();
    let var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(339f, 1220f) - _wgslsmith_f_op_f32(step(659f, -154f))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-517f - -175f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-775f, 603f)))));
    let var_3 = _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(func_1(_wgslsmith_div_vec4_i32(~u_input.b | ~u_input.b, ~vec4<i32>(36101i, global2.b, u_input.b.x, -3587i) | ~u_input.b))));
    var var_4 = vec3<u32>(global1.x >> (_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(~global1.xyw, global2.a), ~countOneBits(u_input.a)) % 32u), ~u_input.a.x, ~0u ^ (global2.a.x & abs(1u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-494f * _wgslsmith_f_op_f32(floor(var_2))), _wgslsmith_f_op_f32(-var_3), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_3)))), ((0u << (_wgslsmith_sub_u32(global1.x, var_4.x) % 32u)) & 11791u) >> (reverseBits(1u << (0u % 32u)) % 32u));
}

