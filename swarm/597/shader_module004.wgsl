struct Struct_1 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec4<f32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
    c: Struct_2,
    d: vec4<i32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<f32>,
    d: vec2<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, false, false);

var<private> global1: Struct_3 = Struct_3(vec4<i32>(21819i, -8164i, 4494i, -35340i), Struct_2(Struct_1(vec3<i32>(-1i, 2729i, -11467i), vec3<f32>(580f, 367f, -206f), vec4<f32>(1473f, 219f, 1241f, 1321f), -413f), vec2<u32>(1u, 27288u), Struct_1(vec3<i32>(560i, i32(-2147483648), 1i), vec3<f32>(-1969f, -112f, -584f), vec4<f32>(-1412f, 671f, -507f, -1143f), 1277f), Struct_1(vec3<i32>(18012i, 83452i, 39353i), vec3<f32>(-1514f, 2248f, -119f), vec4<f32>(-1397f, -839f, -732f, 955f), -1059f)), Struct_2(Struct_1(vec3<i32>(417i, 11087i, 0i), vec3<f32>(495f, -1000f, -604f), vec4<f32>(-976f, -1302f, 363f, -1941f), 138f), vec2<u32>(40260u, 4294967295u), Struct_1(vec3<i32>(1i, 4625i, -29160i), vec3<f32>(1224f, -1494f, -686f), vec4<f32>(-604f, 277f, 473f, -455f), 2173f), Struct_1(vec3<i32>(-47214i, 0i, 15478i), vec3<f32>(-1951f, 964f, 396f), vec4<f32>(-1004f, -1702f, -397f, 748f), 400f)), vec4<i32>(0i, 2147483647i, 0i, 9494i));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<u32>, arg_2: vec3<f32>, arg_3: Struct_3) -> i32 {
    global0 = !vec3<bool>(true, all(vec3<bool>(global0.x, false, !global0.x)), global0.x);
    let var_0 = Struct_2(global1.b.d, ~firstLeadingBit(_wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(arg_1.xx, arg_1.yy), global1.b.b, ~vec2<u32>(4294967295u, 1u))), arg_3.c.c, global1.c.a);
    let var_1 = arg_2.x;
    let var_2 = var_0.a;
    let var_3 = reverseBits(~0u) > ~global1.c.b.x;
    return ~(-1i);
}

fn func_4(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: f32, arg_3: Struct_2) -> vec3<bool> {
    var var_0 = true;
    var var_1 = arg_0.d.x;
    global0 = !(!select(!vec3<bool>(true, true, global0.x), !vec3<bool>(false, true, global0.x), !global0.x));
    var_0 = any(!global0.zx);
    var_1 = _wgslsmith_dot_vec2_i32(-vec2<i32>(max(u_input.a.x, _wgslsmith_mult_i32(-1i, 0i)), 1820i), abs(vec2<i32>(arg_3.d.a.x ^ arg_3.c.a.x, _wgslsmith_mod_i32(arg_0.a.x, arg_3.a.a.x)) | _wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(1i, global1.a.x), vec2<i32>(2147483647i, arg_0.d.x)), u_input.a.yx)));
    return select(select(select(vec3<bool>(global0.x && false, false, global0.x), !select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(global0.x, true, true), global0.x), !select(vec3<bool>(false, false, global0.x), vec3<bool>(global0.x, false, global0.x), vec3<bool>(true, global0.x, global0.x))), select(vec3<bool>(true, true, true), !vec3<bool>(global0.x, true, global0.x), -u_input.a.x >= arg_3.a.a.x), all(vec3<bool>(any(vec4<bool>(true, global0.x, global0.x, true)), true, false))), !(!select(select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(global0.x, global0.x, global0.x), global0.x), !vec3<bool>(global0.x, global0.x, false), !vec3<bool>(false, global0.x, false))), any(vec3<bool>(arg_0.c.d.b.x <= -1442f, all(vec3<bool>(global0.x, true, global0.x)), 13112i >= arg_3.c.a.x)) != global0.x);
}

fn func_2(arg_0: vec2<bool>, arg_1: vec2<u32>) -> vec3<bool> {
    var var_0 = vec3<bool>(!arg_0.x, all(arg_0), !global0.x || true);
    return func_4(Struct_3(vec4<i32>(global1.d.x, global1.b.c.a.x, global1.b.c.a.x, func_3(global1.b.d.a.zx, ~vec3<u32>(arg_1.x, 4294967295u, u_input.b.x), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global1.c.d.c.x, global1.c.a.c.x, global1.b.a.b.x))), Struct_3(global1.a, global1.c, Struct_2(global1.c.d, vec2<u32>(arg_1.x, global1.b.b.x), global1.b.c, Struct_1(global1.d.wwx, global1.b.c.c.yyy, vec4<f32>(-168f, 1000f, 412f, global1.b.d.b.x), 363f)), global1.d))), global1.b, global1.b, global1.d), ~vec4<u32>(0u, 0u, ~u_input.b.x, u_input.b.x), -506f, Struct_2(global1.b.d, ~_wgslsmith_sub_vec2_u32(u_input.b, global1.c.b), global1.b.d, Struct_1(u_input.a, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(global1.b.d.c.x, 394f, global1.b.a.b.x), vec3<f32>(1962f, 1657f, global1.c.a.c.x)))), _wgslsmith_div_vec4_f32(global1.b.c.c, global1.b.c.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1421f)))));
}

fn func_1(arg_0: f32) -> Struct_3 {
    global0 = !(!func_2(!global0.zz, u_input.b >> (_wgslsmith_mod_vec2_u32(global1.c.b, u_input.b) % vec2<u32>(32u))));
    global1 = Struct_3(-(min(~global1.d, _wgslsmith_mult_vec4_i32(vec4<i32>(global1.b.a.a.x, -2147483647i, global1.b.d.a.x, u_input.a.x), global1.d)) & vec4<i32>(44982i, u_input.a.x, global1.a.x, -u_input.a.x)), Struct_2(Struct_1(reverseBits(global1.d.wyz), vec3<f32>(_wgslsmith_f_op_f32(-arg_0), 1f, _wgslsmith_f_op_f32(global1.c.c.c.x - global1.c.c.c.x)), global1.c.d.c, _wgslsmith_f_op_f32(f32(-1f) * -536f)), select(u_input.b, vec2<u32>(17142u, ~24729u), (i32(-1i) * -49154i) > global1.a.x), global1.b.a, Struct_1(_wgslsmith_mod_vec3_i32(vec3<i32>(global1.d.x, global1.a.x, 2147483647i), vec3<i32>(global1.c.d.a.x, -6331i, 2147483647i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.c.a.d, -585f, -242f))), _wgslsmith_f_op_vec4_f32(global1.b.c.c - _wgslsmith_f_op_vec4_f32(-global1.b.a.c)), _wgslsmith_f_op_f32(sign(-1738f)))), global1.b, vec4<i32>(-1i) * -vec4<i32>(u_input.a.x, ~45815i, -33833i, countOneBits(u_input.a.x)));
    global0 = select(func_2(!vec2<bool>(1u == u_input.b.x, 1061f > global1.b.a.d), vec2<u32>(_wgslsmith_sub_u32(global1.c.b.x, 62564u), firstTrailingBit(u_input.b.x)) ^ u_input.b), vec3<bool>(func_4(Struct_3(vec4<i32>(u_input.a.x, u_input.a.x, -1i, u_input.a.x), Struct_2(global1.b.a, vec2<u32>(10055u, u_input.b.x), global1.b.c, global1.b.c), global1.b, global1.a), ~(~vec4<u32>(22398u, 8396u, 0u, 36336u)), arg_0, global1.b).x, false, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0 * -703f), _wgslsmith_f_op_f32(max(global1.b.d.b.x, -1585f))) == _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global1.b.a.c.x * arg_0)))), select(!(!func_4(Struct_3(vec4<i32>(-1i, -61738i, u_input.a.x, -76550i), global1.c, global1.b, global1.a), vec4<u32>(u_input.b.x, 1u, u_input.b.x, global1.b.b.x), 913f, global1.c)), vec3<bool>(false, global1.b.b.x < (u_input.b.x & 0u), func_4(Struct_3(global1.a, global1.b, Struct_2(Struct_1(vec3<i32>(global1.c.d.a.x, -2147483647i, u_input.a.x), vec3<f32>(-143f, 1000f, 982f), global1.b.a.c, arg_0), vec2<u32>(4401u, u_input.b.x), global1.c.c, global1.b.d), global1.a), ~vec4<u32>(1u, global1.b.b.x, global1.b.b.x, 57416u), _wgslsmith_f_op_f32(exp2(arg_0)), Struct_2(Struct_1(vec3<i32>(global1.c.d.a.x, global1.d.x, u_input.a.x), vec3<f32>(219f, -1736f, arg_0), vec4<f32>(global1.c.d.d, global1.b.d.b.x, 2014f, global1.b.a.b.x), arg_0), global1.c.b, global1.b.d, global1.b.d)).x), !all(vec4<bool>(global0.x, global0.x, global0.x, true))));
    let var_0 = 20284i;
    global1 = Struct_3(-_wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(19603i, global1.c.a.a.x), u_input.a.x, 1i, var_0), global1.a), Struct_2(global1.b.d, u_input.b, Struct_1(firstTrailingBit(vec3<i32>(u_input.a.x, -37746i, 1i)), _wgslsmith_f_op_vec3_f32(vec3<f32>(403f, arg_0, arg_0) * _wgslsmith_f_op_vec3_f32(-global1.b.d.c.xyy)), vec4<f32>(_wgslsmith_div_f32(-1062f, -101f), _wgslsmith_f_op_f32(-arg_0), -828f, global1.c.a.c.x), _wgslsmith_f_op_f32(global1.b.c.c.x * global1.c.d.c.x)), Struct_1(global1.b.a.a, _wgslsmith_f_op_vec3_f32(select(global1.b.a.b, vec3<f32>(-223f, 314f, 1000f), vec3<bool>(false, false, false))), _wgslsmith_div_vec4_f32(vec4<f32>(1492f, global1.b.a.b.x, 937f, global1.c.a.b.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-113f, 476f, 1000f, arg_0))), -2085f)), Struct_2(global1.b.d, ~vec2<u32>(_wgslsmith_sub_u32(global1.c.b.x, global1.b.b.x), global1.c.b.x >> (global1.c.b.x % 32u)), Struct_1(max(_wgslsmith_add_vec3_i32(u_input.a, vec3<i32>(u_input.a.x, global1.d.x, var_0)), ~vec3<i32>(1i, var_0, 0i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global1.c.a.c.xww, vec3<f32>(1000f, global1.c.d.b.x, arg_0))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.c.d.c)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), global1.c.d), vec4<i32>(-1i) * -vec4<i32>(abs(u_input.a.x), 0i & global1.c.d.a.x, min(var_0, 108148i), min(global1.d.x, -1i)));
    return Struct_3(_wgslsmith_sub_vec4_i32(~vec4<i32>(u_input.a.x << (4294967295u % 32u), -u_input.a.x, select(global1.b.c.a.x, 37305i, false), ~1i), global1.d), global1.b, Struct_2(global1.b.a, firstTrailingBit(~u_input.b), Struct_1(-countOneBits(global1.c.c.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1256f, 1336f, -844f))), global1.b.d.c, _wgslsmith_f_op_f32(ceil(arg_0))), global1.b.a), -reverseBits(~(-global1.d)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(-887f, 1f, -555f, 1000f);
    global1 = func_1(global1.b.a.b.x);
    let var_1 = func_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-218f, func_1(_wgslsmith_f_op_f32(1171f * global1.b.c.b.x)).c.d.b.x, !all(global0.xy))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1752f, _wgslsmith_f_op_f32(floor(-178f))))), global0.x)));
    var var_2 = Struct_4(u_input.b, Struct_3(vec4<i32>(-26260i, _wgslsmith_div_i32(global1.a.x, 27928i) ^ 31884i, min(~(-2147483647i), _wgslsmith_sub_i32(0i, -33152i)), var_1.d.x), func_1(global1.b.c.b.x).c, func_1(global1.b.d.d).c, global1.a));
    let var_3 = all(select(vec4<bool>(global0.x, any(vec4<bool>(false, global0.x, global0.x, true)), global0.x, !global0.x), select(select(vec4<bool>(global0.x, true, global0.x, false), vec4<bool>(false, global0.x, false, global0.x), vec4<bool>(global0.x, global0.x, global0.x, global0.x)), select(vec4<bool>(global0.x, global0.x, global0.x, false), vec4<bool>(false, global0.x, false, global0.x), global0.x), !vec4<bool>(true, global0.x, global0.x, global0.x)), select(select(vec4<bool>(global0.x, global0.x, true, true), vec4<bool>(global0.x, true, global0.x, global0.x), vec4<bool>(global0.x, true, global0.x, true)), !vec4<bool>(true, global0.x, global0.x, false), !vec4<bool>(false, false, true, global0.x)))) | true;
    let x = u_input.a;
    s_output = StorageBuffer(-1750f, _wgslsmith_f_op_f32(ceil(-983f)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.wz + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1740f, 399f) + var_0.xy)) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(791f, 526f)))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(669f, var_1.b.c.c.x) + _wgslsmith_f_op_vec2_f32(-var_1.c.c.b.zz)), ~var_1.b.b.x);
}

