struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: i32,
    b: vec2<u32>,
    c: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: i32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: vec4<f32>,
    d: vec3<bool>,
    e: Struct_3,
}

struct Struct_5 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_4,
    d: u32,
    e: Struct_4,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 18>;

var<private> global1: array<vec3<u32>, 1> = array<vec3<u32>, 1>(vec3<u32>(4294967295u, 20473u, 4412u));

var<private> global2: array<vec3<i32>, 17>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<u32>) -> f32 {
    var var_0 = _wgslsmith_mult_vec4_u32(~select(vec4<u32>(_wgslsmith_mod_u32(arg_2.x, u_input.a.x), arg_0.b.x, ~arg_2.x, select(4294967295u, arg_0.b.x, arg_1.a)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, arg_0.b.x, 10674u, 1u), vec4<u32>(arg_0.b.x, 1u, 4294967295u, 66435u)) ^ firstLeadingBit(vec4<u32>(35661u, arg_2.x, u_input.d.x, arg_0.b.x)), select(!vec4<bool>(arg_1.a, false, false, true), vec4<bool>(arg_1.a, arg_1.a, false, arg_1.a), true)), vec4<u32>(~(~firstTrailingBit(arg_2.x)), ~_wgslsmith_add_u32(arg_2.x, 88576u), 0u, ~(arg_2.x & (u_input.a.x | 4294967295u))));
    var_0 = _wgslsmith_div_vec4_u32(~vec4<u32>(33947u, arg_0.b.x & u_input.d.x, _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(82070u, 1u, arg_2.x)), global0[_wgslsmith_index_u32(arg_0.b.x, 18u)]), ~arg_0.b.x), ~_wgslsmith_add_vec4_u32(~(vec4<u32>(u_input.d.x, 18850u, 8333u, u_input.d.x) >> (vec4<u32>(arg_2.x, u_input.d.x, 109196u, 0u) % vec4<u32>(32u))), vec4<u32>(arg_0.b.x, var_0.x, arg_0.b.x, arg_0.b.x)));
    var var_1 = Struct_1(!arg_1.a & all(vec2<bool>(arg_1.a, true)), -firstLeadingBit(_wgslsmith_add_i32(-18567i, arg_0.a)));
    global1 = array<vec3<u32>, 1>();
    var var_2 = ~arg_1.b >> (61353u % 32u);
    return -360f;
}

fn func_2(arg_0: i32, arg_1: Struct_4, arg_2: vec2<bool>, arg_3: bool) -> vec4<i32> {
    global0 = array<vec3<u32>, 18>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_2(-29053i, vec2<u32>(arg_1.e.b.b.x, u_input.a.x), vec2<f32>(1273f, -928f)), Struct_1(arg_2.x, arg_1.e.b.a), firstTrailingBit(vec2<u32>(0u, 0u)))))) * _wgslsmith_f_op_f32(438f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-799f, -773f) - arg_1.e.a.c.x), _wgslsmith_div_f32(arg_1.e.a.c.x, _wgslsmith_f_op_f32(arg_1.c.x - arg_1.e.a.c.x))))));
    return vec4<i32>(~arg_0, -2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(-abs(-4153i), u_input.b.x), u_input.b.yy), abs(~(-arg_1.e.c)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec3<bool>) -> bool {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c.x));
    let var_1 = _wgslsmith_mult_vec4_i32(~max(-func_2(-1i, Struct_4(vec2<u32>(arg_1.b.x, u_input.a.x), vec3<bool>(false, arg_0.a, arg_2.x), vec4<f32>(908f, 253f, arg_1.c.x, -378f), vec3<bool>(arg_2.x, false, true), Struct_3(Struct_2(arg_0.b, arg_1.b, vec2<f32>(631f, 1000f)), Struct_2(-2147483647i, u_input.d, arg_1.c), -1i)), arg_2.xx, false), vec4<i32>(firstLeadingBit(22116i), arg_0.b, 2147483647i, 1i)), -reverseBits(firstLeadingBit(func_2(arg_0.b, Struct_4(vec2<u32>(arg_1.b.x, arg_1.b.x), vec3<bool>(true, arg_0.a, true), vec4<f32>(arg_1.c.x, arg_1.c.x, -1491f, -110f), vec3<bool>(arg_0.a, false, true), Struct_3(arg_1, Struct_2(1i, u_input.d, arg_1.c), 426i)), arg_2.xy, arg_0.a))));
    let var_2 = reverseBits(vec4<i32>(var_1.x | -1i, u_input.b.x, -42147i, arg_1.a));
    let var_3 = vec2<bool>(!arg_0.a, arg_2.x);
    var_0 = -1867f;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(vec4<bool>(true, any(vec4<bool>(1u <= u_input.d.x, u_input.b.x < u_input.b.x, true, func_1(Struct_1(true, -2147483647i), Struct_2(u_input.b.x, u_input.d, vec2<f32>(-1000f, -996f)), vec3<bool>(false, true, false)))), true, select(true, all(vec3<bool>(true, true, true)), all(vec2<bool>(true, true)))), Struct_1(true, _wgslsmith_mult_i32(i32(-1i) * -u_input.c.x, u_input.b.x)), Struct_4(~(~u_input.a), select(vec3<bool>(true, func_1(Struct_1(true, u_input.c.x), Struct_2(-1i, u_input.d, vec2<f32>(-1772f, -174f)), vec3<bool>(false, true, false)), true), vec3<bool>(false, true, false), vec3<bool>(all(vec2<bool>(false, false)), false, u_input.a.x >= 11976u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(673f, -863f, -1039f, 1000f), vec4<f32>(593f, -768f, -685f, -1322f), vec4<bool>(true, false, false, true))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1281f, -338f, -1060f, 1107f)))), !select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), Struct_3(Struct_2(i32(-1i) * -11870i, min(vec2<u32>(0u, 50168u), vec2<u32>(u_input.d.x, 1u)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(403f, 1102f), vec2<f32>(-1279f, -973f), true))), Struct_2(-1i, u_input.a, vec2<f32>(130f, -407f)), firstTrailingBit(0i))), 0u, Struct_4(max(vec2<u32>(u_input.d.x, u_input.d.x), min(~u_input.a, u_input.a)), select(vec3<bool>(true, true, true), vec3<bool>(any(vec2<bool>(false, true)), true, u_input.b.x < 59157i), vec3<bool>(true, true, true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(395f, -383f, 1104f, 299f)))), select(!select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false)), !select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false)), !select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true))), Struct_3(Struct_2(abs(-49455i), ~vec2<u32>(u_input.a.x, u_input.a.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-352f, 560f))), Struct_2(u_input.b.x & 52750i, max(vec2<u32>(22229u, 67928u), vec2<u32>(0u, 84296u)), _wgslsmith_div_vec2_f32(vec2<f32>(-1000f, -150f), vec2<f32>(-616f, -1208f))), -u_input.b.x << (abs(0u) % 32u))));
    var var_1 = vec2<bool>(all(vec3<bool>(var_0.b.a, true || !var_0.b.a, all(var_0.a))), var_0.e.b.x);
    var var_2 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.e.c.x, _wgslsmith_f_op_f32(-var_0.c.e.a.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-434f * var_0.e.e.a.c.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.c.x - var_0.e.c.x)))), var_0.e.c));
    let var_3 = Struct_5(vec4<bool>(var_1.x, var_0.c.b.x, select(!var_1.x, all(select(var_0.c.d.zy, vec2<bool>(var_0.a.x, var_1.x), var_1.x)), !var_0.e.d.x), !(-u_input.b.x < 1i)), var_0.b, var_0.c, _wgslsmith_mult_u32(abs(u_input.a.x), var_0.d), Struct_4(vec2<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(5033u, u_input.a.x), select(u_input.a, vec2<u32>(12420u, var_0.c.e.a.b.x), vec2<bool>(true, var_1.x))), _wgslsmith_sub_u32(~1u, 1u)), select(select(vec3<bool>(var_0.a.x, true, var_1.x), select(vec3<bool>(var_1.x, false, var_0.a.x), vec3<bool>(var_0.a.x, var_1.x, true), var_0.a.x), var_0.c.d), !select(vec3<bool>(var_1.x, false, false), vec3<bool>(true, false, false), var_0.e.b.x), true), vec4<f32>(-1050f, -242f, var_2.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1705f * -372f)))), vec3<bool>(any(select(vec2<bool>(var_1.x, true), var_0.e.d.zz, true)), var_0.c.d.x & all(var_0.c.b.zy), func_1(Struct_1(false, u_input.c.x), var_0.e.e.b, vec3<bool>(var_1.x, true, var_1.x))), Struct_3(Struct_2(u_input.c.x, u_input.d, var_2.wy), var_0.e.e.b, u_input.b.x)));
    var var_4 = Struct_5(!var_3.a, Struct_1(var_1.x, -41709i), Struct_4(firstLeadingBit(vec2<u32>(17909u, u_input.a.x)) | var_0.c.a, select(var_0.c.b, var_3.c.b, true), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_3.e.c.x * var_3.e.c.x), _wgslsmith_div_f32(var_3.c.c.x, -155f), 2652f, _wgslsmith_f_op_f32(trunc(-1024f))) * vec4<f32>(_wgslsmith_f_op_f32(-var_0.e.e.b.c.x), _wgslsmith_f_op_f32(func_3(var_0.e.e.a, var_0.b, vec2<u32>(var_0.c.e.b.b.x, u_input.a.x))), _wgslsmith_f_op_f32(-var_0.c.e.a.c.x), 634f)), select(select(vec3<bool>(var_3.a.x, var_1.x, false), vec3<bool>(true, false, false), true), var_3.c.b, true), Struct_3(var_3.e.e.b, var_3.c.e.b, u_input.b.x | 58523i)), firstTrailingBit(firstTrailingBit(select(94505u, 48636u, !var_0.c.b.x))), Struct_4(var_0.e.e.b.b, var_3.a.xwx, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.e.e.a.c.x, var_0.e.c.x, 641f, var_3.c.e.a.c.x))))), select(var_3.e.d, var_0.c.b, true | var_0.b.a), Struct_3(var_3.e.e.a, var_0.e.e.b, _wgslsmith_mod_i32(8336i, ~2147483647i))));
    global2 = array<vec3<i32>, 17>();
    let var_5 = ~u_input.c;
    var_1 = !(!vec2<bool>(true, var_4.e.b.x));
    let var_6 = var_2.yzx;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a);
}

