struct Struct_1 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec4<i32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<bool>(false, true, true), vec3<i32>(12742i, 0i, -11449i), vec4<f32>(336f, 1505f, -345f, 1650f));

var<private> global1: Struct_1 = Struct_1(vec3<bool>(true, false, false), vec3<i32>(1i, -736i, 0i), vec4<f32>(132f, -2126f, -1495f, -1000f));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> vec4<bool> {
    global0 = Struct_1(!(!vec3<bool>(true, !global0.a.x, arg_1.a.x & arg_1.a.x)), min(vec3<i32>(arg_0, -24798i, -global0.b.x), max(u_input.a.xxz, arg_1.b)) << (select(vec3<u32>(~1u, ~u_input.c, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.c, 8531u, 1u), vec4<u32>(1u, 25575u, 0u, u_input.c))), vec3<u32>(u_input.c, ~3873u, ~0u), select(select(vec3<bool>(true, global0.a.x, global1.a.x), vec3<bool>(global1.a.x, arg_1.a.x, false), vec3<bool>(global0.a.x, global1.a.x, true)), vec3<bool>(false, global1.a.x, true), !global1.a.x)) % vec3<u32>(32u)), vec4<f32>(global0.c.x, arg_1.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-887f)) * _wgslsmith_f_op_f32(ceil(-225f)))), global0.c.x));
    let var_0 = Struct_1(vec3<bool>(any(vec4<bool>(global0.a.x, global1.a.x, arg_1.b.x >= u_input.a.x, arg_1.a.x && false)), true, true), select(_wgslsmith_add_vec3_i32(countOneBits(-vec3<i32>(u_input.a.x, global0.b.x, -21894i)), abs(~vec3<i32>(global1.b.x, global0.b.x, arg_0))), u_input.a.wwx, true), _wgslsmith_div_vec4_f32(global0.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(arg_1.c)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1362f, 940f, arg_1.c.x, global1.c.x))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(global0.c))))));
    var var_1 = vec2<bool>(arg_1.a.x, !global0.a.x);
    var_1 = !vec2<bool>(!global0.a.x, global0.a.x);
    var var_2 = Struct_1(!select(!vec3<bool>(arg_1.a.x, false, var_0.a.x), !(!arg_1.a), !(!vec3<bool>(true, global0.a.x, var_0.a.x))), -max(global1.b, ~(~global0.b)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-856f, -244f, _wgslsmith_f_op_f32(1202f + arg_1.c.x), _wgslsmith_f_op_f32(global1.c.x + global0.c.x)))) - arg_1.c));
    return select(vec4<bool>(u_input.c >= countOneBits(~u_input.c), true, all(!var_0.a) && var_1.x, any(select(vec2<bool>(var_2.a.x, true), !global0.a.xx, var_2.a.x | var_0.a.x))), select(vec4<bool>(arg_1.a.x, true, true, select(false, true, var_0.a.x)), select(select(select(vec4<bool>(false, true, true, true), vec4<bool>(var_1.x, var_2.a.x, global0.a.x, false), true), vec4<bool>(var_0.a.x, true, global0.a.x, true), !vec4<bool>(var_1.x, true, var_1.x, global1.a.x)), select(select(vec4<bool>(var_2.a.x, true, arg_1.a.x, arg_1.a.x), vec4<bool>(global1.a.x, arg_1.a.x, arg_1.a.x, false), global0.a.x), !vec4<bool>(global0.a.x, false, true, true), vec4<bool>(true, false, var_1.x, true)), any(select(vec2<bool>(false, true), global0.a.zz, true))), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(global1.a.x, true, var_0.a.x, var_0.a.x), vec4<bool>(var_2.a.x, false, false, var_2.a.x), vec4<bool>(global0.a.x, true, true, var_0.a.x)), vec4<bool>(var_0.a.x, false, var_2.a.x, true), !global1.a.x), select(vec4<bool>(global0.a.x, false, true, false), !vec4<bool>(global0.a.x, global1.a.x, false, true), true))), all(arg_1.a));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> i32 {
    var var_0 = ~_wgslsmith_div_vec2_u32(~(~vec2<u32>(22791u, 8476u)), vec2<u32>(31332u, _wgslsmith_add_u32(1u, 0u))) >> (~(~(~vec2<u32>(u_input.c, u_input.c))) % vec2<u32>(32u));
    let var_1 = Struct_1(global0.a, vec3<i32>(reverseBits((2147483647i | u_input.a.x) | -arg_2.b.x), ~(-arg_1.b.x ^ 2147483647i), -(_wgslsmith_mod_i32(15092i, global0.b.x) | global0.b.x)), arg_2.c);
    let var_2 = _wgslsmith_clamp_i32(0i, _wgslsmith_div_i32(-(~var_1.b.x), _wgslsmith_div_i32(var_1.b.x << (u_input.c % 32u), global1.b.x | 2147483647i)), countOneBits(global0.b.x)) | _wgslsmith_add_i32(firstTrailingBit(i32(-1i) * -2147483647i) ^ arg_2.b.x, _wgslsmith_sub_i32(var_1.b.x, -abs(-1i)));
    let var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.c.x), var_1.c.x, !global0.a.x));
    var_0 = _wgslsmith_add_vec2_u32(vec2<u32>(reverseBits(1u), ~(~_wgslsmith_mult_u32(0u, 4294967295u))), abs(select(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(88543u, 24065u, u_input.c, u_input.c), vec4<u32>(var_0.x, 55530u, var_0.x, 4294967295u)), 0u), _wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.c, 24328u), vec2<u32>(u_input.c, u_input.c)), vec2<u32>(var_0.x, u_input.c) >> (vec2<u32>(50824u, u_input.c) % vec2<u32>(32u))), false)));
    return i32(-1i) * -10427i;
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: vec2<u32>) -> Struct_1 {
    global0 = arg_1;
    var var_0 = vec4<i32>(func_4(select(select(vec4<bool>(false, true, arg_1.a.x, arg_2.x), !vec4<bool>(arg_2.x, global0.a.x, arg_1.a.x, global0.a.x), !global0.a.x), func_3(_wgslsmith_dot_vec3_i32(arg_1.b, arg_1.b), arg_1), any(global1.a.xx)), arg_1, Struct_1(arg_2, _wgslsmith_sub_vec3_i32(max(vec3<i32>(global1.b.x, u_input.b, -2147483647i), vec3<i32>(-5804i, arg_1.b.x, 2147483647i)), vec3<i32>(-1i, -2147483647i, 2655i)), vec4<f32>(-1601f, _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-2017f * global1.c.x), _wgslsmith_div_f32(1696f, global1.c.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(global1.c.x)), -1311f, any(select(vec3<bool>(false, false, global0.a.x), global0.a, true))))), _wgslsmith_clamp_i32(1i ^ -_wgslsmith_mult_i32(global0.b.x, 29429i), 1i, select(firstLeadingBit(arg_1.b.x), _wgslsmith_dot_vec3_i32(global1.b, vec3<i32>(u_input.d.x, u_input.b, -60616i)), false)), -1i, ~(firstLeadingBit(u_input.a.x) ^ -37909i));
    let var_1 = Struct_1(vec3<bool>(arg_1.a.x, all(vec2<bool>(false, any(vec2<bool>(false, global1.a.x)))), !(!all(arg_2))), abs(select(max(-vec3<i32>(25263i, -30481i, 1i), var_0.zww), ~global0.b, vec3<bool>(func_3(-2432i, arg_1).x, arg_1.a.x, true))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(388f, 575f, arg_0.x, arg_1.c.x)) + _wgslsmith_f_op_vec4_f32(-global1.c)) * global0.c), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.c.x, -592f, arg_1.c.x, arg_0.x)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(793f, arg_1.c.x, 405f, arg_1.c.x)))))))));
    var var_2 = vec2<f32>(829f, -1410f);
    return Struct_1(!(!arg_2), ~vec3<i32>(2147483647i, global1.b.x, 1i), _wgslsmith_div_vec4_f32(global1.c, global1.c));
}

fn func_1() -> u32 {
    global0 = func_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1130f, global0.c.x)), 823f, -2143f), Struct_1(select(vec3<bool>(true, !global1.a.x, true), !global1.a, vec3<bool>(true, true && global0.a.x, !global1.a.x)), select(vec3<i32>(global1.b.x, global1.b.x << (u_input.c % 32u), -26220i), ~global0.b >> (~vec3<u32>(36725u, 1u, u_input.c) % vec3<u32>(32u)), true), global1.c), global0.a, firstLeadingBit(~(~(~vec2<u32>(u_input.c, u_input.c)))));
    var var_0 = Struct_1(global1.a, ~(~func_2(global1.c.yww, Struct_1(global1.a, global1.b, vec4<f32>(680f, -951f, 1397f, 268f)), global0.a, vec2<u32>(416u, u_input.c)).b & ~vec3<i32>(-11486i, 1i, u_input.a.x)), _wgslsmith_f_op_vec4_f32(-global0.c));
    var var_1 = func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.x * global0.c.x)), _wgslsmith_div_f32(var_0.c.x, 221f), _wgslsmith_f_op_f32(-var_0.c.x))), Struct_1(var_0.a, var_0.b, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-148f, _wgslsmith_f_op_f32(774f + 614f), _wgslsmith_f_op_f32(select(var_0.c.x, -915f, false)), _wgslsmith_f_op_f32(-global1.c.x))))), vec3<bool>(global0.a.x, ~u_input.c >= _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c) >> (vec4<u32>(1u, 33917u, u_input.c, u_input.c) % vec4<u32>(32u)), vec4<u32>(u_input.c, u_input.c, 4294967295u, u_input.c) >> (vec4<u32>(4294967295u, u_input.c, 1u, u_input.c) % vec4<u32>(32u))), true), abs(~vec2<u32>(u_input.c & 58747u, abs(26921u))));
    global1 = Struct_1(global1.a, var_1.b, var_0.c);
    global1 = Struct_1(!select(func_3(min(global0.b.x, global1.b.x), func_2(var_0.c.zyz, Struct_1(vec3<bool>(var_0.a.x, false, var_1.a.x), vec3<i32>(2147483647i, 45131i, var_1.b.x), global0.c), var_1.a, vec2<u32>(u_input.c, u_input.c))).xzw, global0.a, func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2351f, global1.c.x, global0.c.x)), func_2(vec3<f32>(var_1.c.x, 690f, 1477f), Struct_1(vec3<bool>(true, var_0.a.x, var_1.a.x), u_input.a.wxx, vec4<f32>(var_0.c.x, global1.c.x, global0.c.x, 918f)), vec3<bool>(false, var_1.a.x, false), vec2<u32>(40942u, 4294967295u)), func_2(vec3<f32>(204f, var_1.c.x, 1000f), Struct_1(vec3<bool>(false, true, false), u_input.a.ywy, vec4<f32>(1657f, 106f, -1027f, var_0.c.x)), vec3<bool>(false, var_0.a.x, false), vec2<u32>(1u, u_input.c)).a, ~vec2<u32>(u_input.c, 1u)).a), _wgslsmith_div_vec3_i32((countOneBits(vec3<i32>(var_0.b.x, global1.b.x, global0.b.x)) | (vec3<i32>(global0.b.x, global0.b.x, var_0.b.x) & vec3<i32>(0i, var_0.b.x, u_input.a.x))) & ~global1.b, func_2(vec3<f32>(_wgslsmith_f_op_f32(sign(-329f)), 2237f, _wgslsmith_f_op_f32(floor(616f))), func_2(_wgslsmith_f_op_vec3_f32(step(var_1.c.xww, vec3<f32>(1414f, var_0.c.x, 1018f))), Struct_1(vec3<bool>(global0.a.x, true, global0.a.x), vec3<i32>(var_1.b.x, u_input.d.x, var_1.b.x), global0.c), global1.a, _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c, 103720u), vec2<u32>(u_input.c, 81413u), vec2<u32>(u_input.c, u_input.c))), select(vec3<bool>(true, var_0.a.x, global0.a.x), var_0.a, select(var_1.a, vec3<bool>(global0.a.x, var_1.a.x, global1.a.x), false)), countOneBits(~vec2<u32>(u_input.c, 0u))).b), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.c.x, var_1.c.x, 788f, var_0.c.x) + var_0.c), _wgslsmith_f_op_vec4_f32(-global0.c))))));
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = global0.c.x;
    var var_2 = _wgslsmith_add_i32(global0.b.x, -(~abs(global1.b.x)) >> (1u % 32u));
    var_1 = 1199f;
    let var_3 = _wgslsmith_f_op_vec4_f32(-global0.c);
    var_2 = global0.b.x;
    var var_4 = global0.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, var_3.xwz, vec4<i32>(-2152i, -_wgslsmith_clamp_i32(1i, -u_input.d.x, -global0.b.x), ~(~(~(-2147483647i))), min(u_input.d.x, 2147483647i) ^ -39652i), global1.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c.x)));
}

