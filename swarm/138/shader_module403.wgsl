struct Struct_1 {
    a: vec4<f32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: u32,
    d: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<f32>(-306f, 917f, -194f, 793f), vec4<f32>(463f, -828f, 1026f, -690f));

var<private> global1: array<Struct_1, 19>;

var<private> global2: array<vec4<bool>, 18>;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: f32, arg_1: f32) -> u32 {
    var var_0 = ~(~u_input.a.x);
    global0 = global1[_wgslsmith_index_u32(~countOneBits(~6467u), 19u)];
    let var_1 = max(countOneBits(vec4<i32>(30774i, 35027i, -2147483647i, 554i)) & (vec4<i32>(1i, 1i, 1i, 1i) << (select(u_input.a, u_input.a, vec4<bool>(true, true, true, false)) % vec4<u32>(32u))), _wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, 1i, -19586i, 5752i) << (vec4<u32>(u_input.b, u_input.a.x, 29771u, u_input.a.x) % vec4<u32>(32u)), max(vec4<i32>(5868i, -2147483647i, -2147483647i, -16158i), vec4<i32>(-30349i, 1i, -21369i, 24239i)) << (~u_input.a % vec4<u32>(32u)))) >> (_wgslsmith_mult_vec4_u32(u_input.a, u_input.a) % vec4<u32>(32u));
    let var_2 = -2530f;
    var var_3 = Struct_2(true, global1[_wgslsmith_index_u32(1u, 19u)], ~u_input.b, ~min(~(-69541i) << (u_input.b % 32u), var_1.x));
    return ~min(u_input.a.x, max(~u_input.b, 4294967295u));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: f32) -> Struct_1 {
    let var_0 = select(func_3(arg_3, -634f) != ~_wgslsmith_add_u32(u_input.b, 25891u), any(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)))), all(vec4<bool>(true, true, true, true))) | select((select(false, false, false) || any(vec2<bool>(true, true))) | true, !all(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true)), false);
    let var_1 = arg_1;
    var var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-943f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.x)))));
    var var_3 = Struct_2(!var_0, Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, 633f, 869f, -1477f), var_1.a, global2[_wgslsmith_index_u32(17536u, 18u)])) * _wgslsmith_f_op_vec4_f32(arg_0.a - vec4<f32>(var_1.a.x, arg_3, global0.b.x, 282f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(2051f, -395f, -1000f, 105f))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.a.x))), _wgslsmith_f_op_f32(arg_1.a.x + 108f), _wgslsmith_f_op_f32(957f * _wgslsmith_f_op_f32(arg_1.a.x - global0.b.x)), _wgslsmith_f_op_f32(ceil(arg_2.x)))), 0u, -1i);
    var var_4 = min(-(~vec4<i32>(-var_3.d, var_3.d, 2147483647i, 202i)), vec4<i32>(-21900i >> ((~u_input.a.x & ~var_3.c) % 32u), _wgslsmith_dot_vec2_i32(-vec2<i32>(-47858i, var_3.d), ~_wgslsmith_clamp_vec2_i32(vec2<i32>(var_3.d, var_3.d), vec2<i32>(1i, 1i), vec2<i32>(var_3.d, var_3.d))), var_3.d, 39438i));
    return var_3.b;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: bool, arg_3: vec4<i32>) -> i32 {
    let var_0 = arg_0;
    global1 = array<Struct_1, 19>();
    let var_1 = func_2(func_2(func_2(func_2(arg_0.b, arg_1.b, _wgslsmith_f_op_vec3_f32(vec3<f32>(-1414f, 813f, -1463f) - vec3<f32>(1332f, var_0.b.b.x, 980f)), _wgslsmith_div_f32(arg_0.b.a.x, var_0.b.b.x)), func_2(Struct_1(vec4<f32>(-1000f, var_0.b.a.x, global0.b.x, global0.a.x), var_0.b.b), func_2(Struct_1(global0.a, vec4<f32>(arg_0.b.b.x, -483f, -1384f, -1582f)), Struct_1(arg_0.b.b, vec4<f32>(var_0.b.a.x, 1656f, -603f, var_0.b.b.x)), vec3<f32>(global0.a.x, 479f, var_0.b.a.x), var_0.b.a.x), global0.a.wyz, _wgslsmith_f_op_f32(round(-906f))), vec3<f32>(_wgslsmith_f_op_f32(select(arg_1.b.b.x, -1918f, true)), _wgslsmith_f_op_f32(-var_0.b.b.x), _wgslsmith_f_op_f32(-arg_0.b.b.x)), 439f), func_2(Struct_1(vec4<f32>(global0.b.x, arg_1.b.a.x, 1041f, global0.a.x), _wgslsmith_f_op_vec4_f32(arg_0.b.a * arg_1.b.b)), Struct_1(global0.a, vec4<f32>(1095f, arg_0.b.b.x, 1798f, 1458f)), _wgslsmith_f_op_vec3_f32(var_0.b.a.xww + _wgslsmith_f_op_vec3_f32(-arg_0.b.a.wyx)), _wgslsmith_f_op_f32(1670f + var_0.b.b.x)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(var_0.b.a.zxw + global0.a.xxw))), _wgslsmith_div_f32(-248f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b.a.x) - func_2(Struct_1(var_0.b.b, global0.b), arg_0.b, var_0.b.a.wyy, arg_0.b.b.x).b.x))), func_2(arg_0.b, arg_1.b, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(sign(var_0.b.a.yzx)), _wgslsmith_f_op_vec3_f32(var_0.b.a.zwz + global0.b.xwy))), vec3<f32>(130f, 110f, _wgslsmith_f_op_f32(trunc(1000f))), select(select(vec3<bool>(arg_2, arg_2, arg_1.a), vec3<bool>(true, false, false), vec3<bool>(true, true, false)), !vec3<bool>(false, arg_1.a, false), true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.a.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(var_0.b.a.ywx))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.b.a.x, global0.a.x)) * _wgslsmith_f_op_f32(-var_0.b.a.x))), _wgslsmith_div_f32(var_0.b.a.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-410f, -188f, true)))))));
    let var_2 = reverseBits(firstTrailingBit(u_input.a.yzx));
    var var_3 = arg_0;
    return ~countOneBits(abs(-firstTrailingBit(4482i)));
}

fn func_1(arg_0: vec2<i32>) -> f32 {
    global1 = array<Struct_1, 19>();
    var var_0 = ~u_input.a.wx;
    global1 = array<Struct_1, 19>();
    let var_1 = Struct_2(true, global1[_wgslsmith_index_u32(select(var_0.x, u_input.a.x, false), 19u)], 47914u, _wgslsmith_clamp_i32(arg_0.x, _wgslsmith_sub_i32(i32(-1i) * -arg_0.x, -(arg_0.x << (u_input.b % 32u))), func_4(Struct_2(all(vec2<bool>(true, true)), func_2(Struct_1(vec4<f32>(global0.a.x, -125f, -1000f, global0.b.x), global0.b), Struct_1(vec4<f32>(-2105f, global0.a.x, 1252f, 1285f), global0.b), vec3<f32>(global0.a.x, global0.b.x, global0.b.x), global0.b.x), abs(37565u), arg_0.x), Struct_2(arg_0.x != -1i, Struct_1(vec4<f32>(1230f, 1034f, 294f, 701f), global0.b), func_3(-310f, -2075f), _wgslsmith_mod_i32(arg_0.x, 17029i)), all(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false))), -vec4<i32>(arg_0.x, arg_0.x, -2147483647i, -2147483647i) & vec4<i32>(1i, -2147483647i, -39614i, 10834i))));
    let var_2 = -(~firstTrailingBit(countOneBits(vec2<i32>(2147483647i, 1i))) << (countOneBits(~_wgslsmith_clamp_vec2_u32(u_input.a.yz, u_input.a.zy, u_input.a.ww)) % vec2<u32>(32u)));
    return _wgslsmith_f_op_f32(floor(var_1.b.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(152f - _wgslsmith_f_op_f32(f32(-1f) * -959f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-590f, -335f), 398f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec2<i32>(-2147483647i, -62495i))) - global0.a.x)), 175f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -490f), -591f)), global0.b);
    var var_0 = vec3<bool>(!any(!select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false))), any(vec2<bool>(true, true)), false);
    global1 = array<Struct_1, 19>();
    var var_1 = -1i;
    let var_2 = func_2(func_2(global1[_wgslsmith_index_u32(1u, 19u)], global1[_wgslsmith_index_u32(u_input.a.x | ~select(0u, 1u, var_0.x), 19u)], _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.b.xxx) + _wgslsmith_f_op_vec3_f32(select(global0.a.xzx, vec3<f32>(-640f, global0.b.x, global0.a.x), 371f > global0.a.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.a.x)))))), global1[_wgslsmith_index_u32(u_input.b, 19u)], _wgslsmith_f_op_vec3_f32(floor(global0.a.xzy)), _wgslsmith_div_f32(-332f, global0.b.x));
    let var_3 = _wgslsmith_mod_vec3_u32(u_input.a.yxx, vec3<u32>(1u, 0u, 66090u));
    let x = u_input.a;
    s_output = StorageBuffer(-1i | _wgslsmith_dot_vec4_i32(vec4<i32>(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-10902i, 1i, 26434i, 0i), vec4<i32>(-5268i, 0i, 1i, 0i)), -6851i, ~0i), ~vec4<i32>(1i, 1i, 1i, 1i)), max(firstTrailingBit(u_input.b), 81920u), ~(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -36444i), vec2<i32>(40927i, 46030i)), -28206i) << (~_wgslsmith_clamp_u32(2625u, u_input.a.x, 4294967295u) % 32u)), u_input.a.x, -(reverseBits(func_4(Struct_2(true, Struct_1(var_2.b, vec4<f32>(159f, -1191f, -187f, global0.a.x)), 1u, 2147483647i), Struct_2(false, Struct_1(vec4<f32>(1069f, global0.a.x, 601f, 462f), vec4<f32>(global0.a.x, global0.a.x, global0.b.x, 380f)), 1967u, 19664i), var_0.x, vec4<i32>(54618i, -1i, -1i, 0i))) | -1i));
}

