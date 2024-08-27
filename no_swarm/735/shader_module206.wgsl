struct Struct_1 {
    a: u32,
    b: bool,
    c: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: Struct_1,
}

struct Struct_4 {
    a: vec4<bool>,
    b: i32,
    c: vec2<f32>,
    d: vec4<i32>,
    e: vec3<f32>,
}

struct Struct_5 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 8>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3() -> vec2<bool> {
    global0 = array<Struct_4, 8>();
    let var_0 = Struct_3(Struct_2(_wgslsmith_dot_vec2_u32(firstTrailingBit(select(vec2<u32>(64471u, 51668u), vec2<u32>(u_input.a, u_input.a), false)), ~vec2<u32>(5040u, u_input.a)), ~abs(select(u_input.b.x, u_input.b.x, false))), true, Struct_1(1u, true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(518f, -181f, 566f, -1000f))) + vec4<f32>(_wgslsmith_f_op_f32(-667f + 219f), _wgslsmith_f_op_f32(1292f * 1094f), -120f, _wgslsmith_f_op_f32(min(-1000f, -1000f))))));
    var var_1 = Struct_4(!vec4<bool>(true, all(!vec4<bool>(true, false, var_0.b, true)), all(!vec3<bool>(var_0.c.b, false, true)), false), u_input.b.x | -65207i, var_0.c.c.yw, firstLeadingBit(vec4<i32>(abs(i32(-1i) * -40969i), max(-20297i, u_input.b.x), -_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 0i), u_input.b), ~(-u_input.b.x))), var_0.c.c.zyy);
    var var_2 = all(!var_1.a);
    var var_3 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.x * var_0.c.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(706f - var_1.c.x)) * _wgslsmith_f_op_f32(-var_0.c.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.c.x)))));
    return var_1.a.ww;
}

fn func_2(arg_0: Struct_4) -> vec3<i32> {
    var var_0 = Struct_5(select(arg_0.a.zz, select(func_3(), vec2<bool>(2147483647i <= u_input.b.x, arg_0.a.x & false), true), arg_0.a.x));
    let var_1 = ~(~vec2<u32>(firstLeadingBit(~u_input.a), 35826u));
    let var_2 = 12722i;
    var var_3 = _wgslsmith_add_i32(arg_0.b, 40211i) | -(_wgslsmith_mult_i32(2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(-12180i, var_2, 0i, var_2), vec4<i32>(-1i, u_input.b.x, var_2, 2147483647i))) ^ _wgslsmith_sub_i32(-3700i << (var_1.x % 32u), var_2));
    let var_4 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.e.x) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(arg_0.e.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(414f)), _wgslsmith_div_f32(arg_0.c.x, arg_0.e.x)))))), -408f, arg_0.c.x, arg_0.e.x);
    return arg_0.d.xxw;
}

fn func_4(arg_0: vec3<i32>, arg_1: vec2<f32>) -> Struct_3 {
    global0 = array<Struct_4, 8>();
    let var_0 = Struct_2(0u, i32(-1i) * -31506i);
    return Struct_3(var_0, !(u_input.b.x >= select(_wgslsmith_mod_i32(arg_0.x, 0i), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, 1i), arg_0.yy), true)), Struct_1(767u, all(vec3<bool>(true, false, true)), vec4<f32>(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1.x))), _wgslsmith_f_op_f32(floor(arg_1.x)), arg_1.x)));
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: i32) -> Struct_1 {
    var var_0 = func_4(_wgslsmith_sub_vec3_i32(func_2(Struct_4(vec4<bool>(true, false, false, true), 27261i | arg_2, vec2<f32>(545f, -1877f), vec4<i32>(arg_2, 44100i, arg_2, u_input.b.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(1172f, 296f, -1259f) + vec3<f32>(-2534f, -462f, -1754f)))), ~(~vec3<i32>(arg_2, -2147483647i, u_input.b.x)) >> (vec3<u32>(_wgslsmith_mod_u32(10033u, arg_1), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 29062u, 3374u), vec4<u32>(arg_0, 1u, 1771u, u_input.a)), arg_0) % vec3<u32>(32u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-499f, 222f)))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-309f, -1810f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(227f, -756f) - vec2<f32>(-425f, 107f))))));
    var var_1 = vec4<f32>(var_0.c.c.x, 249f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.c.x + var_0.c.c.x)) + var_0.c.c.x))), _wgslsmith_f_op_f32(var_0.c.c.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    var_1 = vec4<f32>(-252f, 1250f, _wgslsmith_f_op_f32(f32(-1f) * -649f), var_1.x);
    let var_2 = _wgslsmith_f_op_vec4_f32(-var_0.c.c);
    global0 = array<Struct_4, 8>();
    return Struct_1(_wgslsmith_dot_vec4_u32(~_wgslsmith_div_vec4_u32(firstTrailingBit(vec4<u32>(4294967295u, arg_1, var_0.a.a, var_0.c.a)), ~vec4<u32>(arg_0, 21118u, 13402u, u_input.a)), select(vec4<u32>(0u >> (arg_0 % 32u), _wgslsmith_add_u32(var_0.c.a, 82134u), 0u, 4294967295u), vec4<u32>(4294967295u, 81424u, 4294967295u, var_0.c.a & arg_1), select(select(vec4<bool>(var_0.b, true, false, true), vec4<bool>(var_0.c.b, true, false, false), var_0.b), vec4<bool>(var_0.c.b, var_0.b, var_0.c.b, var_0.c.b), var_0.b))), func_3().x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(var_1.x)), -714f, _wgslsmith_div_f32(var_2.x, -593f), var_0.c.c.x)) * _wgslsmith_f_op_vec4_f32(trunc(var_2))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 8>();
    var var_0 = func_1(u_input.a, ~(~(~u_input.a)) << (1u % 32u), -1i);
    var_0 = Struct_1(39871u, select(!any(vec2<bool>(var_0.b, true)), func_4(_wgslsmith_mult_vec3_i32(-vec3<i32>(1i, -22641i, u_input.b.x), vec3<i32>(-27138i, -1i, -1i)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(max(var_0.c.zz, var_0.c.ww))))).c.b, true), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-353f, -348f, var_0.c.x, -291f) * vec4<f32>(var_0.c.x, var_0.c.x, var_0.c.x, 386f))), var_0.c))));
    var_0 = func_4(vec3<i32>(i32(-1i) * -abs(u_input.b.x), -1i, -1i), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -258f), _wgslsmith_f_op_f32(f32(-1f) * -1652f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.c.yw * vec2<f32>(var_0.c.x, -1000f)) + var_0.c.zx)))).c;
    let var_1 = Struct_3(Struct_2(~21880u, u_input.b.x), !func_3().x, func_4(vec3<i32>(u_input.b.x, -u_input.b.x << (~var_0.a % 32u), func_2(global0[_wgslsmith_index_u32(var_0.a, 8u)]).x), var_0.c.wz).c);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.c.x))) + -370f) * _wgslsmith_f_op_f32(967f * var_1.c.c.x)));
    let var_3 = select(!(!vec4<bool>(select(false, false, true), var_0.b, var_1.b | var_0.b, !var_1.b)), !vec4<bool>(var_1.b, false, all(vec3<bool>(var_1.b, false, var_1.b)) && (26276u != var_0.a), var_0.b), select(!vec4<bool>(!var_0.b, var_1.c.b == false, false, true), !vec4<bool>(true, true, !var_0.b, !var_1.c.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c.c.x - var_1.c.c.x) + var_1.c.c.x) < var_0.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_u32(((vec3<u32>(u_input.a, var_1.a.a, 47009u) << (vec3<u32>(32182u, 1u, var_0.a) % vec3<u32>(32u))) << (countOneBits(vec3<u32>(var_0.a, 0u, 0u)) % vec3<u32>(32u))) >> (vec3<u32>(var_1.c.a, 0u, 34265u) % vec3<u32>(32u)), ~((vec3<u32>(var_1.a.a, var_1.c.a, 4294967295u) >> (vec3<u32>(var_1.a.a, 4294967295u, var_0.a) % vec3<u32>(32u))) ^ min(vec3<u32>(u_input.a, u_input.a, 4294967295u), vec3<u32>(var_1.c.a, 79022u, 0u))), vec3<u32>(func_1(u_input.a & 0u, ~1u, u_input.b.x).a, func_1(var_1.c.a, 4294967295u, select(0i, u_input.b.x, true)).a, var_0.a)));
}

