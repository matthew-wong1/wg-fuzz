struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: i32,
    b: vec3<bool>,
    c: vec3<u32>,
    d: vec4<u32>,
    e: vec2<u32>,
}

struct Struct_5 {
    a: bool,
    b: vec2<f32>,
    c: bool,
    d: Struct_2,
    e: Struct_4,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 22>;

var<private> global1: Struct_3 = Struct_3(vec2<f32>(-1178f, 573f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: vec3<f32>) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x * arg_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.x)), -847f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1.a.x, global1.a.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, arg_2.x, -1000f, -976f)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(2678f, 344f, global1.a.x, arg_2.x), vec4<f32>(global1.a.x, 1863f, global1.a.x, arg_2.x), true))))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(step(150f, global1.a.x)), -340f, _wgslsmith_f_op_f32(f32(-1f) * -2071f), global1.a.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.x, _wgslsmith_div_f32(global1.a.x, arg_2.x), _wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(-arg_2.x)))));
    global0 = array<vec3<u32>, 22>();
    var var_1 = ~u_input.d.zx;
    var var_2 = _wgslsmith_mod_i32(~(~(~(-2147483647i))), -var_1.x) | _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(u_input.d, u_input.d << (u_input.b % vec4<u32>(32u))), vec4<i32>(~var_1.x, select(var_1.x, var_1.x, true), 2147483647i, -1i) & ~_wgslsmith_div_vec4_i32(vec4<i32>(0i, var_1.x, var_1.x, 42116i), vec4<i32>(-4209i, u_input.d.x, u_input.d.x, 15417i)));
    let var_3 = Struct_2(Struct_1(vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_2.x))), !vec3<bool>(true, u_input.c.x < u_input.b.x, true)), Struct_1(!vec4<bool>(any(vec3<bool>(false, false, false)), arg_1 != 18634u, var_0.x > -490f, true), -2281f, vec3<bool>(false, any(vec2<bool>(true, true)), select(false, true, false))), Struct_1(select(vec4<bool>(true, any(vec2<bool>(true, true)), true, select(false, false, false)), vec4<bool>(true, true, true, true), true), _wgslsmith_f_op_f32(f32(-1f) * -1000f), vec3<bool>(any(vec3<bool>(false, true, true)), true, true)));
    return !var_3.c.c;
}

fn func_2(arg_0: vec4<bool>, arg_1: f32, arg_2: f32, arg_3: i32) -> Struct_2 {
    global0 = array<vec3<u32>, 22>();
    global0 = array<vec3<u32>, 22>();
    var var_0 = Struct_2(Struct_1(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.a.x))), !func_3(0u, _wgslsmith_add_u32(u_input.e, 97531u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(256f, arg_1, -464f)))), Struct_1(vec4<bool>(arg_0.x, !arg_0.x, any(!arg_0), any(select(arg_0, vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(true, false, true, arg_0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global1.a.x)) - -641f), select(!(!arg_0.xwx), arg_0.zzx, func_3(1u, 1u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1069f, 1000f, -1748f))))), Struct_1(select(arg_0, vec4<bool>(!arg_0.x, arg_0.x, true, true), true & func_3(u_input.e, 1u, vec3<f32>(arg_1, global1.a.x, -656f)).x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1), global1.a.x)), vec3<bool>(arg_0.x, false, all(vec3<bool>(true, arg_0.x, true)))));
    var_0 = Struct_2(var_0.c, Struct_1(arg_0, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(arg_1, _wgslsmith_f_op_f32(586f - -1002f))), arg_1)), !vec3<bool>(true, arg_0.x, arg_0.x)), var_0.a);
    global0 = array<vec3<u32>, 22>();
    return Struct_2(Struct_1(!arg_0, _wgslsmith_f_op_f32(-var_0.c.b), select(!select(var_0.c.a.xwy, vec3<bool>(false, true, true), var_0.a.a.zxx), vec3<bool>(true, true, true), vec3<bool>(true, select(false, true, true), true))), var_0.c, Struct_1(vec4<bool>(any(select(arg_0, arg_0, vec4<bool>(false, arg_0.x, true, true))), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, u_input.b.x), u_input.b.yyy) <= 1u, arg_0.x, !(u_input.c.x < 4294967295u)), 326f, select(!select(arg_0.xzz, var_0.a.c, arg_0.yww), var_0.b.c, arg_0.x)));
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: bool, arg_3: Struct_2) -> vec2<f32> {
    let var_0 = -(~(u_input.d.x | arg_0) ^ countOneBits(_wgslsmith_sub_i32(0i, -48817i))) <= 2147483647i;
    var var_1 = arg_3;
    let var_2 = u_input.a >> (min(~vec4<u32>(_wgslsmith_add_u32(u_input.e, 67100u), abs(3929u), firstTrailingBit(u_input.e), _wgslsmith_mod_u32(u_input.e, u_input.e)), ~(~vec4<u32>(u_input.e, 35924u, 0u, u_input.c.x))) % vec4<u32>(32u));
    let var_3 = global1.a.x >= var_1.a.b;
    global0 = array<vec3<u32>, 22>();
    return vec2<f32>(_wgslsmith_f_op_f32(func_2(!(!vec4<bool>(false, true, arg_3.b.a.x, false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1395f)) + _wgslsmith_f_op_f32(abs(arg_3.a.b))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-824f + global1.a.x), _wgslsmith_f_op_f32(max(arg_1.a.x, -1915f)))), ~arg_0).a.b + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(arg_1.a.x))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(148f, -595f))));
}

fn func_1(arg_0: f32, arg_1: u32) -> vec3<u32> {
    var var_0 = Struct_5(true, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(-2147483647i & u_input.d.x, Struct_3(global1.a), true, func_2(vec4<bool>(false, false, true, true), global1.a.x, 978f, 2147483647i))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-400f, global1.a.x))))))), true, func_2(!vec4<bool>(true, all(vec2<bool>(false, true)), true, 0u != u_input.b.x), _wgslsmith_f_op_f32(select(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + global1.a.x), arg_1 <= 98771u)), global1.a.x, 1i), Struct_4(0i, !func_2(select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true)), _wgslsmith_f_op_f32(arg_0 * global1.a.x), _wgslsmith_f_op_f32(-global1.a.x), -16691i).a.a.yzy, vec3<u32>(_wgslsmith_dot_vec2_u32(u_input.c, u_input.b.yy & vec2<u32>(81527u, u_input.c.x)), 23714u, ~reverseBits(u_input.b.x)), ~vec4<u32>(~4198u, ~arg_1, 1u, abs(0u)), u_input.b.zw));
    global0 = array<vec3<u32>, 22>();
    global1 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1054f))), -285f));
    let var_1 = _wgslsmith_mod_u32(0u, max(~arg_1 | abs(abs(0u)), var_0.e.e.x));
    let var_2 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(floor(-2141f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -436f)))), vec3<f32>(-170f, -720f, _wgslsmith_f_op_f32(floor(434f)))));
    return var_0.e.d.zyx ^ (~min(var_0.e.c, min(var_0.e.c, var_0.e.d.zxw)) >> (~vec3<u32>(u_input.c.x, u_input.b.x, 1u) % vec3<u32>(32u)));
}

fn func_5(arg_0: i32, arg_1: vec3<u32>) -> Struct_2 {
    var var_0 = vec3<f32>(1298f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-903f, global1.a.x, false)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.x) * global1.a.x)));
    return func_2(!func_2(func_2(vec4<bool>(false, true, false, false), _wgslsmith_f_op_f32(floor(var_0.x)), 141f, u_input.a.x >> (19378u % 32u)).b.a, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -262f))), _wgslsmith_f_op_f32(var_0.x * -1000f), abs(~1i)).c.a, global1.a.x, func_2(vec4<bool>(true, !any(vec2<bool>(true, true)), select(false, false, true) != func_3(arg_1.x, 44239u, vec3<f32>(var_0.x, 1162f, global1.a.x)).x, any(vec4<bool>(true, false, true, false))), 567f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(var_0.x - 168f), true))), _wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, countOneBits(-arg_0))).b.b, ~(~(~arg_0 & -24425i)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<u32>, 22>();
    let var_0 = func_5(20720i, func_1(_wgslsmith_f_op_f32(max(179f, global1.a.x)), _wgslsmith_mod_u32(u_input.c.x ^ _wgslsmith_mod_u32(u_input.b.x, 1u), firstTrailingBit(u_input.b.x))));
    global1 = Struct_3(global1.a);
    let var_1 = global1.a;
    global0 = array<vec3<u32>, 22>();
    var var_2 = ((firstTrailingBit(max(u_input.d.zyw, u_input.a.xzy)) ^ (~vec3<i32>(u_input.a.x, -1405i, u_input.d.x) & vec3<i32>(1i, u_input.d.x, u_input.a.x))) >> (min(_wgslsmith_div_vec3_u32(func_1(var_1.x, 38657u), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c.x, 19734u, 0u), vec3<u32>(0u, u_input.c.x, 7581u))), global0[_wgslsmith_index_u32(u_input.b.x, 22u)]) % vec3<u32>(32u))) & (u_input.d.xww | u_input.a.wwy);
    let x = u_input.a;
    s_output = StorageBuffer(select(vec4<u32>(max(0u, u_input.e), 0u >> (0u % 32u), ~u_input.b.x, u_input.e), ~u_input.b, !vec4<bool>(!var_0.b.a.x, all(vec3<bool>(false, var_0.b.c.x, true)), func_2(vec4<bool>(var_0.a.c.x, false, var_0.c.c.x, true), var_0.a.b, 240f, -2147483647i).c.c.x, true)), u_input.b.x, vec4<f32>(var_1.x, _wgslsmith_f_op_f32(abs(-644f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(168f * 1337f)))), 438f), 165f);
}

