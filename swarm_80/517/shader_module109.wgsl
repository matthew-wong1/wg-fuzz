struct Struct_1 {
    a: vec2<u32>,
    b: vec4<i32>,
    c: bool,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8>;

var<private> global1: Struct_4 = Struct_4(Struct_3(0u), -22897i);

var<private> global2: Struct_1 = Struct_1(vec2<u32>(49681u, 48089u), vec4<i32>(-37677i, 1i, 0i, 37619i), true, 2147483647i, -7417i);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec2<i32>) -> bool {
    let var_0 = u_input.b;
    global1 = Struct_4(Struct_3(max(4294967295u, 1u)), _wgslsmith_add_i32(i32(-1i) * -16016i, 1i));
    global0 = array<Struct_1, 8>();
    let var_1 = Struct_1(_wgslsmith_sub_vec2_u32(vec2<u32>(45u, _wgslsmith_add_u32(27547u, firstTrailingBit(2515u))), ~(~(~global2.a))), vec4<i32>(10293i, firstTrailingBit(min(_wgslsmith_mod_i32(u_input.a.x, u_input.a.x), -37165i)), u_input.a.x, ~arg_0.x), global2.c, global1.b, global2.d >> (4294967295u % 32u));
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -716f);
    return all(vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2 + -1184f)) < _wgslsmith_f_op_f32(trunc(var_2)), var_1.c, var_1.c, any(!select(vec3<bool>(false, true, true), vec3<bool>(var_1.c, true, var_1.c), vec3<bool>(false, global2.c, var_1.c)))));
}

fn func_2(arg_0: Struct_4, arg_1: Struct_2, arg_2: Struct_3, arg_3: Struct_3) -> bool {
    let var_0 = false;
    global2 = global0[_wgslsmith_index_u32(1u, 8u)];
    return func_3(~_wgslsmith_mult_vec2_i32(~vec2<i32>(-21793i, global1.b), u_input.a.zx >> (~vec2<u32>(102u, arg_1.a.a.x) % vec2<u32>(32u))));
}

fn func_4(arg_0: vec4<bool>, arg_1: f32) -> Struct_1 {
    let var_0 = Struct_2(Struct_1(global2.a << (global2.a % vec2<u32>(32u)), -(~global2.b), all(arg_0.yz), 58232i | abs(_wgslsmith_sub_i32(u_input.a.x, 19663i)), 0i), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -566f))), Struct_1(_wgslsmith_clamp_vec2_u32(~u_input.b, ~global2.a, vec2<u32>(4294967295u, 60319u)) & vec2<u32>(u_input.b.x, ~u_input.b.x), max(vec4<i32>(u_input.a.x, _wgslsmith_sub_i32(-2147483647i, global2.e), 1i, 1i), -vec4<i32>(global2.b.x, global2.e, 1i, 7105i)), global2.c, -44380i, -2147483647i), global2.c);
    var var_1 = vec2<bool>(true, true);
    var var_2 = global1.a;
    let var_3 = Struct_3(~_wgslsmith_dot_vec2_u32(~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c, var_2.a), vec2<u32>(39177u, u_input.c)), min(~vec2<u32>(var_2.a, u_input.b.x), global2.a)));
    global0 = array<Struct_1, 8>();
    return Struct_1(~(~vec2<u32>(55224u, var_0.c.a.x)) ^ select(~(~u_input.b), _wgslsmith_mult_vec2_u32(reverseBits(vec2<u32>(0u, var_2.a)), vec2<u32>(128168u, 4294967295u) & u_input.b), arg_0.zz), ~abs(reverseBits(var_0.c.b)), true, u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(select(global1.b, var_0.a.b.x, global2.c), i32(-1i) * -1i), 42061i, global1.b, var_0.a.e ^ abs(49629i)), vec4<i32>(max(max(u_input.a.x, 92162i), -8716i), -46734i, -10714i, u_input.a.x)));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec4<bool>, arg_2: f32, arg_3: vec2<i32>) -> vec3<bool> {
    var var_0 = arg_0;
    global2 = func_4(vec4<bool>(arg_1.x, true, !(true == func_2(Struct_4(Struct_3(global2.a.x), 2147483647i), Struct_2(Struct_1(u_input.b, global2.b, global2.c, -1i, global2.e), -1000f, Struct_1(vec2<u32>(u_input.c, global1.a.a), global2.b, arg_1.x, arg_3.x, 0i), true), Struct_3(global1.a.a), Struct_3(98092u))), false), _wgslsmith_f_op_f32(1657f - -370f));
    var var_1 = Struct_4(global1.a, ~(-700i));
    global2 = func_4(arg_1, _wgslsmith_f_op_f32(-611f * arg_2));
    let var_2 = global1.a;
    return select(arg_1.yyw, !(!arg_1.zzy), !arg_1.xyx);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_1(u_input.b, vec4<i32>(8899i, ~(~2147483647i | global1.b), _wgslsmith_clamp_i32(min(2147483647i & u_input.a.x, 1i), ~2147483647i, -(~global2.e)), 2147483647i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(584f, -402f))) <= _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-570f, _wgslsmith_f_op_f32(trunc(-1409f))), _wgslsmith_f_op_f32(select(-772f, -1580f, true)))), ~u_input.a.x, global1.b);
    var var_0 = vec3<u32>(~1u, _wgslsmith_add_u32(1u, 1u), ~firstTrailingBit(u_input.b.x));
    var_0 = _wgslsmith_mult_vec3_u32(select(~select(vec3<u32>(global1.a.a, 1u, global2.a.x), vec3<u32>(15198u, u_input.b.x, 4294967295u), global2.c) ^ ~vec3<u32>(66270u, 1569u, 4294967295u), _wgslsmith_sub_vec3_u32((vec3<u32>(4294967295u, global1.a.a, var_0.x) ^ vec3<u32>(0u, global1.a.a, global2.a.x)) & ~vec3<u32>(42999u, 1u, global1.a.a), ~vec3<u32>(51107u, 4294967295u, var_0.x)), func_1(select(global2.b.xx | u_input.a.zx, countOneBits(global2.b.wx), vec2<bool>(false, global2.c)), !(!vec4<bool>(false, global2.c, global2.c, global2.c)), _wgslsmith_f_op_f32(f32(-1f) * -369f), global2.b.yw)), firstTrailingBit(vec3<u32>(reverseBits(~313u), func_4(!vec4<bool>(global2.c, global2.c, global2.c, true), -1717f).a.x, 9739u)));
    var_0 = ~vec3<u32>(21851u, ~(~abs(global1.a.a)), ~0u);
    global0 = array<Struct_1, 8>();
    var_0 = vec3<u32>(var_0.x, func_4(!vec4<bool>(true, true, any(vec3<bool>(false, false, false)), global2.c | global2.c), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(996f, 665f)) + _wgslsmith_f_op_f32(f32(-1f) * -653f))))).a.x, u_input.b.x);
    global1 = Struct_4(global1.a, _wgslsmith_mult_i32(-1i, abs(~(-global2.e))));
    let var_1 = ~(~reverseBits(max(~vec4<u32>(u_input.b.x, u_input.b.x, global2.a.x, u_input.c), vec4<u32>(global2.a.x, global2.a.x, 23140u, global1.a.a) << (vec4<u32>(u_input.c, u_input.c, global2.a.x, u_input.b.x) % vec4<u32>(32u)))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-1202f)))), _wgslsmith_f_op_f32(1f * -974f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -915f)))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(abs(vec2<i32>(global2.b.x, firstTrailingBit(global1.b)))), firstTrailingBit(_wgslsmith_add_u32(1u, var_0.x)), ~u_input.a.x, global1.b);
}

