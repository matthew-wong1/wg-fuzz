struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: vec2<bool>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: u32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_2, 20>;

var<private> global2: f32 = -110f;

var<private> global3: array<bool, 32> = array<bool, 32>(false, true, false, true, false, false, false, false, true, true, true, false, true, true, false, true, false, false, false, false, true, true, true, true, true, true, false, false, true, true, false, false);

var<private> global4: array<Struct_1, 30>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: vec4<f32>) -> i32 {
    var var_0 = 17940u & _wgslsmith_clamp_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(countOneBits(u_input.a.x), 1u), 17225u), 28802u, _wgslsmith_mod_u32(1u, 42611u));
    var var_1 = _wgslsmith_mult_vec3_i32(u_input.b.zww, ~u_input.b.zxx);
    global0 = -(~var_1.x);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)));
    let var_3 = vec3<bool>(arg_1.a | !arg_1.a, true, true);
    return 1i;
}

fn func_2() -> f32 {
    global4 = array<Struct_1, 30>();
    global0 = _wgslsmith_dot_vec2_i32(vec2<i32>(-37389i, func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(1512f, -327f) * vec2<f32>(-1227f, -1632f)), global1[_wgslsmith_index_u32(~0u, 20u)], _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-2191f, -1000f, -783f, -950f), vec4<f32>(-901f, 1086f, 2937f, 1106f))))) >> (min(vec2<u32>(~30946u, 1u), u_input.a.yz) % vec2<u32>(32u)), countOneBits(-_wgslsmith_sub_vec2_i32(u_input.b.yy, u_input.b.wx) ^ u_input.b.yz));
    global3 = array<bool, 32>();
    let var_0 = Struct_2(true);
    global2 = _wgslsmith_f_op_f32(abs(-237f));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1017f));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_1) -> Struct_3 {
    let var_0 = Struct_2(false);
    var var_1 = arg_2;
    var var_2 = Struct_3(select(!vec4<bool>(false, global3[_wgslsmith_index_u32(1u, 32u)], arg_1.x, true), !vec4<bool>(!global3[_wgslsmith_index_u32(1u, 32u)], true, true, global3[_wgslsmith_index_u32(18949u, 32u)]), true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-arg_2.b)))) - arg_2.b), arg_2, Struct_1(~_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, arg_2.a, 23207u, 45887u), vec4<u32>(1u, 40650u, arg_2.a, u_input.a.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(arg_2.b - vec2<f32>(var_1.c, 896f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1520f, -258f))))), _wgslsmith_f_op_f32(arg_2.c * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2()), 1126f))), _wgslsmith_f_op_f32(-318f + var_1.d)));
    var_2 = Struct_3(!select(!vec4<bool>(arg_1.x, false, var_2.a.x, arg_1.x), var_2.a, true), vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_2.c.c), arg_0.d, arg_1.x)), 418f), Struct_1(_wgslsmith_mult_u32(0u, 0u), var_2.c.b, -221f, -736f), Struct_1(var_2.d.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_2.c, arg_0.d), vec2<f32>(var_2.c.d, 1000f), arg_1)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b.x, -1179f))) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1360f, 730f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -865f) + _wgslsmith_f_op_f32(ceil(-429f)))), _wgslsmith_f_op_f32(func_2())));
    var var_3 = vec4<u32>(arg_0.a, u_input.a.x, _wgslsmith_dot_vec3_u32(~vec3<u32>(~0u, 0u << (var_1.a % 32u), var_2.c.a), ~u_input.a), max(abs(min(~u_input.a.x, _wgslsmith_div_u32(arg_2.a, arg_0.a))), ~min(4294967295u | arg_2.a, var_1.a & arg_2.a)));
    return Struct_3(select(select(!(!var_2.a), vec4<bool>(all(arg_1), true, all(var_2.a.xyw), false), false), var_2.a, global3[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_2.a, _wgslsmith_div_u32(_wgslsmith_div_u32(u_input.a.x, arg_0.a), 0u)), 32u)]), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_2.d.c, _wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-562f, 355f) * vec2<f32>(-852f, arg_2.d)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.b.x, arg_0.d)))))), Struct_1(var_1.a, _wgslsmith_f_op_vec2_f32(var_2.d.b + _wgslsmith_f_op_vec2_f32(floor(arg_0.b))), _wgslsmith_f_op_f32(func_2()), 175f), Struct_1(max(u_input.a.x, (arg_2.a & var_1.a) << (var_1.a % 32u)), _wgslsmith_f_op_vec2_f32(var_1.b * arg_2.b), _wgslsmith_f_op_f32(ceil(-710f)), -182f));
}

fn func_1(arg_0: bool, arg_1: vec4<u32>, arg_2: vec3<f32>) -> vec2<f32> {
    let var_0 = func_4(Struct_1(select(~arg_1.x, _wgslsmith_mult_u32(~arg_1.x, 28484u), global3[_wgslsmith_index_u32(~_wgslsmith_mod_u32(71380u, 4294967295u), 32u)]), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_2.x, arg_2.x), vec2<f32>(arg_2.x, arg_2.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_2()))), 1505f), select(select(vec2<bool>(false, global3[_wgslsmith_index_u32(u_input.a.x, 32u)] && arg_0), !vec2<bool>(arg_0, arg_0), vec2<bool>(true, true)), select(select(!vec2<bool>(false, arg_0), !vec2<bool>(false, arg_0), select(vec2<bool>(false, true), vec2<bool>(true, false), arg_0)), !(!vec2<bool>(global3[_wgslsmith_index_u32(44038u, 32u)], true)), global3[_wgslsmith_index_u32(4294967295u, 32u)]), select(!select(vec2<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 32u)], false), vec2<bool>(global3[_wgslsmith_index_u32(1u, 32u)], global3[_wgslsmith_index_u32(69303u, 32u)]), vec2<bool>(false, arg_0)), select(vec2<bool>(true, true), vec2<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 32u)], global3[_wgslsmith_index_u32(19372u, 32u)]), !vec2<bool>(global3[_wgslsmith_index_u32(arg_1.x, 32u)], false)), !select(vec2<bool>(arg_0, global3[_wgslsmith_index_u32(arg_1.x, 32u)]), vec2<bool>(arg_0, arg_0), arg_0))), Struct_1(arg_1.x & firstTrailingBit(0u), arg_2.yz, arg_2.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1177f - -130f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(463f - arg_2.x))))));
    let var_1 = arg_0;
    var var_2 = select(vec4<bool>(select(arg_0, !global3[_wgslsmith_index_u32(~1u, 32u)], false), true, true, !(!var_0.a.x)), select(vec4<bool>(func_4(var_0.c, vec2<bool>(var_0.a.x, arg_0), func_4(Struct_1(0u, vec2<f32>(arg_2.x, 1664f), 204f, arg_2.x), var_0.a.zx, global4[_wgslsmith_index_u32(12564u, 30u)]).d).a.x, var_1, false, var_0.a.x), vec4<bool>(arg_0 & !var_0.a.x, false, all(func_4(Struct_1(4294967295u, vec2<f32>(arg_2.x, 1717f), arg_2.x, var_0.c.d), var_0.a.xw, global4[_wgslsmith_index_u32(0u, 30u)]).a.zy), _wgslsmith_add_i32(-11270i, -9048i) <= ~u_input.d), true), var_1);
    var_2 = !(!(!func_4(func_4(Struct_1(4294967295u, var_0.c.b, var_0.d.c, -797f), var_0.a.wz, Struct_1(var_0.d.a, var_0.c.b, -318f, -482f)).c, func_4(Struct_1(0u, arg_2.yx, -354f, 1000f), var_0.a.yz, var_0.d).a.wy, func_4(Struct_1(arg_1.x, var_0.d.b, var_0.b.x, arg_2.x), var_0.a.yz, Struct_1(0u, var_0.c.b, -1000f, 1440f)).d).a));
    var var_3 = arg_2.x;
    return vec2<f32>(_wgslsmith_f_op_f32(-935f - arg_2.x), arg_2.x);
}

fn func_5(arg_0: vec3<u32>, arg_1: f32, arg_2: Struct_3) -> Struct_4 {
    let var_0 = arg_2;
    var var_1 = Struct_2(true);
    let var_2 = ~(vec3<i32>(-1i) * -u_input.b.xzy) & u_input.b.ywy;
    let var_3 = vec4<bool>(false | all(!select(var_0.a.xz, var_0.a.xx, var_0.a.x)), var_1.a, !(4294967295u <= _wgslsmith_sub_u32(max(4442u, 39195u), var_0.d.a)), true);
    var var_4 = _wgslsmith_div_i32(-_wgslsmith_sub_i32(_wgslsmith_mod_i32(u_input.b.x, _wgslsmith_add_i32(0i, var_2.x)), abs(~var_2.x)), var_2.x);
    return Struct_4(var_0.a.x, arg_2, var_0.a.wz, -reverseBits(-u_input.b.zx | abs(vec2<i32>(u_input.d, u_input.d))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(vec3<u32>(~(firstTrailingBit(0u) ^ u_input.a.x), 17508u, u_input.a.x), _wgslsmith_f_op_f32(-382f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-474f - -977f), -795f))), Struct_3(vec4<bool>(true, true, true, true), vec2<f32>(-676f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1095f * 1025f)))), global4[_wgslsmith_index_u32(u_input.a.x, 30u)], Struct_1(~0u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(false, vec4<u32>(4294967295u, 1u, 66586u, u_input.a.x), vec3<f32>(819f, -482f, -652f))) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1379f, 1000f)))), _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) - _wgslsmith_f_op_f32(sign(145f))))));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    global0 = 39706i;
    var var_2 = Struct_2(func_4(var_0.b.d, var_0.c, func_5(u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1000f))), var_0.b).b.d).a.x);
    let var_3 = _wgslsmith_f_op_f32(exp2(var_0.b.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(var_0.b.d.a, ~39528u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a.x, u_input.a.x, 4294967295u), vec4<u32>(1u, var_0.b.c.a, u_input.a.x, u_input.a.x)) % 32u), var_0.b.d.a) ^ u_input.a, func_4(func_4(func_4(Struct_1(u_input.a.x, vec2<f32>(var_1, var_3), -213f, -1489f), vec2<bool>(false, true), Struct_1(var_0.b.d.a, vec2<f32>(-577f, var_1), var_3, var_0.b.b.x)).d, var_0.c, Struct_1(1u, var_0.b.d.b, _wgslsmith_div_f32(var_0.b.d.d, -505f), -1003f)).c, var_0.c, func_5(vec3<u32>(1u, 94283u, _wgslsmith_div_u32(var_0.b.d.a, 0u)), var_0.b.b.x, var_0.b).b.c).b.x, ~u_input.a.x >> (var_0.b.c.a % 32u), u_input.a.x, u_input.a.x);
}

