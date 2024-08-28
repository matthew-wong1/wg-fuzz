struct Struct_1 {
    a: i32,
    b: bool,
    c: u32,
    d: vec3<i32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec3<i32>,
    c: Struct_2,
    d: Struct_2,
    e: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_1, 7>;

var<private> global2: Struct_2;

var<private> global3: vec2<f32> = vec2<f32>(-302f, -485f);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec2<f32> {
    let var_0 = Struct_1(-18519i, true, firstTrailingBit(global0.a.c) << (1737u % 32u), min(_wgslsmith_add_vec3_i32(global2.b.d, global0.a.d), ~u_input.b.zzz) << (~_wgslsmith_div_vec3_u32(vec3<u32>(1u, 47545u, global0.b.c), ~vec3<u32>(global0.a.c, 36626u, global0.b.c)) % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(global2.a.e, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(2258f, global2.b.e.x) + vec2<f32>(-577f, -262f)) - _wgslsmith_f_op_vec2_f32(step(global0.a.e, vec2<f32>(global0.a.e.x, global0.a.e.x)))))))));
    var var_1 = ~(-(31485i | ~var_0.d.x));
    var var_2 = ~reverseBits(~(~vec3<u32>(global0.b.c, 84982u, var_0.c)));
    var var_3 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global3.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(1f)))), _wgslsmith_f_op_f32(abs(-793f)))));
    global1 = array<Struct_1, 7>();
    return vec2<f32>(global2.b.e.x, global2.b.e.x);
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2) -> i32 {
    var var_0 = min(2147483647i, arg_1.b.a) >= ~(0i >> (global2.b.c % 32u));
    var_0 = !arg_1.b.b;
    var var_1 = !vec3<bool>(false, true, arg_0.a.b);
    global3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3()) * arg_1.b.e));
    var var_2 = arg_1.b.c >> (arg_0.a.c % 32u);
    return ~max(arg_0.b.a, -global0.a.d.x);
}

fn func_4(arg_0: Struct_3, arg_1: vec2<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_div_vec2_u32(~vec2<u32>(~27801u, min(_wgslsmith_div_u32(global0.b.c, 0u), arg_1.x)), select(firstLeadingBit(arg_1), arg_1, select(vec2<bool>(arg_0.c.b.b, true), vec2<bool>(-2147483647i < u_input.a.x, arg_0.c.b.b), select(select(vec2<bool>(global0.a.b, global2.a.b), vec2<bool>(false, global2.b.b), global0.b.b), vec2<bool>(global0.a.b, arg_0.d.b.b), !arg_0.c.b.b))));
    var var_1 = vec3<i32>(-min(~firstTrailingBit(global2.b.a), ~arg_0.e), reverseBits(_wgslsmith_clamp_i32(0i, _wgslsmith_dot_vec4_i32(u_input.b, u_input.a) << (~1u % 32u), global0.a.d.x)), reverseBits(-global2.b.a));
    let var_2 = arg_0;
    let var_3 = arg_0;
    let var_4 = 57158u;
    return global2.a;
}

fn func_1(arg_0: Struct_3) -> vec4<f32> {
    let var_0 = func_4(Struct_3(arg_0.d.b.e.x, abs(u_input.b.ywx), Struct_2(global0.a, global0.a), arg_0.d, firstTrailingBit(func_2(arg_0.d, Struct_2(Struct_1(-35401i, global0.a.b, global0.b.c, u_input.b.ywz, vec2<f32>(1000f, global2.a.e.x)), global2.b)))), min(vec2<u32>(24583u, ~reverseBits(0u)), firstTrailingBit(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.a.c, arg_0.c.b.c, 15344u, arg_0.d.b.c), vec4<u32>(4294967295u, global2.a.c, global0.a.c, global0.b.c)), arg_0.d.b.c))));
    global3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(round(global2.a.e))))) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_0.e.x), _wgslsmith_f_op_f32(1000f + -979f)) * global0.b.e))));
    global2 = arg_0.c;
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.e.x, _wgslsmith_f_op_f32(global3.x + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global3.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.e.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-140f + _wgslsmith_f_op_f32(var_0.e.x * global0.a.e.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(Struct_3(global0.a.e.x, u_input.b.yyw, Struct_2(Struct_1(u_input.a.x, false, 21461u, vec3<i32>(global0.a.d.x, 1i, -6676i), global2.a.e), Struct_1(2147483647i, true, global0.b.c, vec3<i32>(u_input.b.x, 2147483647i, -2147483647i), global2.b.e)), Struct_2(Struct_1(-1218i, false, global2.b.c, u_input.b.xzx, global0.b.e), Struct_1(2147483647i, true, global0.b.c, vec3<i32>(0i, 7171i, -2147483647i), vec2<f32>(global2.b.e.x, global0.b.e.x))), global0.b.d.x)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1281f, 1176f, global2.a.e.x, global2.a.e.x) + vec4<f32>(1509f, 1275f, global2.a.e.x, global0.a.e.x))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global2.b.e.x, -1134f, global3.x, -1851f)))))), global2.b.b));
    global2 = Struct_2(Struct_1(-11633i, _wgslsmith_f_op_f32(floor(161f)) == _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.a.e.x, 1576f)), global2.a.c, global2.a.d, vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), Struct_1(abs(-22185i), _wgslsmith_mod_u32(1u, ~global2.a.c) < 0u, abs(global0.b.c), _wgslsmith_mult_vec3_i32(func_4(Struct_3(global3.x, vec3<i32>(global2.b.d.x, u_input.b.x, global0.b.a), Struct_2(Struct_1(5261i, global0.b.b, 57391u, vec3<i32>(-1i, global0.b.d.x, -1i), vec2<f32>(920f, global2.b.e.x)), global1[_wgslsmith_index_u32(48299u, 7u)]), Struct_2(global0.b, Struct_1(global0.b.a, true, 1u, global0.b.d, vec2<f32>(global3.x, var_0.x))), -1i), vec2<u32>(global0.b.c, global2.b.c)).d, global2.a.d | (vec3<i32>(u_input.b.x, 53449i, -1i) & vec3<i32>(u_input.b.x, global0.b.d.x, -2147483647i))), vec2<f32>(456f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-746f)) - _wgslsmith_f_op_vec4_f32(func_1(Struct_3(-698f, global0.a.d, Struct_2(global1[_wgslsmith_index_u32(13094u, 7u)], Struct_1(global0.b.a, true, global2.b.c, global0.a.d, var_0.zy)), Struct_2(Struct_1(global0.a.a, global2.b.b, global0.a.c, vec3<i32>(-28535i, -2147483647i, global0.b.d.x), global2.b.e), Struct_1(u_input.a.x, global2.b.b, global2.b.c, vec3<i32>(-15569i, global2.a.a, -39753i), global2.a.e)), u_input.a.x))).x))));
    var var_1 = false;
    let var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(func_1(Struct_3(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-global2.a.e.x)), global0.a.d, Struct_2(global0.a, global1[_wgslsmith_index_u32(select(13672u, global2.a.c, false), 7u)]), Struct_2(Struct_1(1i, global0.a.b, 0u, vec3<i32>(global2.a.d.x, global0.b.d.x, global2.a.d.x), vec2<f32>(352f, var_0.x)), func_4(Struct_3(1114f, vec3<i32>(-17949i, 0i, 0i), Struct_2(Struct_1(u_input.a.x, global0.a.b, global0.b.c, vec3<i32>(global2.b.a, 0i, global0.a.a), global2.a.e), Struct_1(-11559i, true, global0.b.c, u_input.b.xzz, vec2<f32>(global0.b.e.x, global0.a.e.x))), Struct_2(Struct_1(u_input.b.x, global0.a.b, global0.b.c, vec3<i32>(global2.a.a, global2.a.d.x, -31574i), var_0.yx), global2.b), -35105i), vec2<u32>(global0.b.c, global2.b.c))), min(0i, 24154i << (global0.b.c % 32u))))).x, global0.a.d, Struct_2(func_4(Struct_3(-1112f, _wgslsmith_mult_vec3_i32(vec3<i32>(global0.b.d.x, global0.b.a, -1i), vec3<i32>(global2.b.d.x, u_input.b.x, 18292i)), Struct_2(global1[_wgslsmith_index_u32(46501u, 7u)], global2.b), Struct_2(Struct_1(14384i, true, 0u, vec3<i32>(global2.b.a, u_input.b.x, 31378i), vec2<f32>(var_0.x, -115f)), global1[_wgslsmith_index_u32(global0.a.c, 7u)]), u_input.a.x), ~vec2<u32>(global2.b.c, global0.a.c)), global1[_wgslsmith_index_u32(global0.b.c, 7u)]), Struct_2(Struct_1(2147483647i, true, global0.b.c, _wgslsmith_div_vec3_i32(u_input.a.yxy, vec3<i32>(global0.a.d.x, global0.a.d.x, 1i)) & vec3<i32>(-24042i, global0.b.a, 2147483647i), var_0.xy), func_4(Struct_3(_wgslsmith_f_op_f32(558f - -896f), u_input.a.yxy, Struct_2(global1[_wgslsmith_index_u32(global0.b.c, 7u)], Struct_1(global2.a.d.x, true, global2.b.c, global0.a.d, global0.a.e)), Struct_2(global1[_wgslsmith_index_u32(global2.a.c, 7u)], Struct_1(-2147483647i, true, 66199u, vec3<i32>(-2147483647i, u_input.b.x, global0.b.d.x), vec2<f32>(667f, global3.x))), 37407i), min(vec2<u32>(global0.a.c, 1u) | vec2<u32>(global2.a.c, global0.a.c), vec2<u32>(33940u, global2.b.c)))), countOneBits(countOneBits((u_input.b.x ^ global0.b.a) | ~0i)));
    let var_3 = firstLeadingBit(1u);
    var_1 = !(-46320i >= u_input.a.x);
    var var_4 = ~(~(~1u));
    let var_5 = var_2.c.b;
    let x = u_input.a;
    s_output = StorageBuffer(~global2.a.c, 4294967295u, var_0);
}

