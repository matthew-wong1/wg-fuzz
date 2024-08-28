struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
    c: i32,
    d: vec3<f32>,
    e: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<u32>,
}

struct Struct_5 {
    a: vec2<bool>,
    b: u32,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec2<i32>, 21>;

var<private> global2: Struct_5;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-295f, global0.b)))))) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.c.b, global0.b)))))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global2.c.b, global0.b), vec2<f32>(1212f, -305f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global2.c.b, arg_0.b), vec2<f32>(global0.b, global2.d.b)))))))));
    let var_1 = 45160i;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(856f, arg_0.b, global0.b, var_0.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1040f), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-1467f - arg_0.b), _wgslsmith_f_op_f32(var_0.x - global0.b)))));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_f_op_f32(var_0.x * 833f), _wgslsmith_f_op_f32(min(1008f, -1807f)), 831f), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(221f, arg_0.b, 1001f, 199f), vec4<f32>(-796f, global2.c.b, -1000f, var_0.x)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(740f, arg_0.b, 1000f, 316f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1450f, -307f, global0.b, -1419f))))))));
    var var_4 = !all(select(global2.d.c.yyw, vec3<bool>(true, false, arg_0.b == -1175f), vec3<bool>(true, true, global2.d.a.x & global2.c.a.x)));
    return select(vec3<i32>(select(-10105i, _wgslsmith_dot_vec2_i32(-vec2<i32>(var_1, var_1), countOneBits(global1[_wgslsmith_index_u32(1u, 21u)])), all(vec2<bool>(true, false))), -_wgslsmith_mult_i32(_wgslsmith_clamp_i32(1i, -1i, var_1), reverseBits(var_1)), -2147483647i), vec3<i32>(firstLeadingBit(var_1), select(-1i, -firstLeadingBit(var_1), arg_0.c.x), select(countOneBits(~0i), _wgslsmith_mult_i32(1i, _wgslsmith_add_i32(-18747i, var_1)), global2.b == max(u_input.a, 7764u))), global2.d.a);
}

fn func_2(arg_0: bool) -> Struct_5 {
    var var_0 = _wgslsmith_mult_vec3_i32(-func_3(global2.d), vec3<i32>(-52542i, -1i, ~(-14132i)));
    var var_1 = Struct_2(global2.d, var_0.x, Struct_1(global0.a, 1276f, !vec4<bool>(global0.a.x & arg_0, true, true, false)), Struct_1(global0.a, _wgslsmith_div_f32(-179f, 542f), !(!(!vec4<bool>(true, global0.c.x, global2.c.c.x, global2.a.x)))));
    var_0 = vec3<i32>(2147483647i, -_wgslsmith_div_i32(~var_0.x, -33784i), select(var_0.x, reverseBits(reverseBits(abs(-38463i))), any(!global2.c.c.yzw)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.b + global2.c.b))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.d.b - var_1.a.b)))), !any(vec3<bool>(global2.c.c.x, arg_0, false)))));
    let var_3 = !select(vec4<bool>(!global0.a.x, any(select(global0.c, global0.c, global0.a.x)), global0.a.x & !global0.a.x, var_1.d.c.x), vec4<bool>(all(select(var_1.d.c.xz, vec2<bool>(false, arg_0), vec2<bool>(true, var_1.d.a.x))), global2.c.c.x, !any(global0.a), var_1.d.a.x), !(!(!vec4<bool>(global2.c.a.x, global2.d.a.x, var_1.a.c.x, global2.c.a.x))));
    return Struct_5(var_1.d.c.xz, 10764u, var_1.a, var_1.a);
}

fn func_1(arg_0: u32, arg_1: vec2<bool>, arg_2: Struct_3, arg_3: Struct_3) -> Struct_3 {
    let var_0 = _wgslsmith_div_u32(_wgslsmith_div_u32(abs(~abs(global2.b)), arg_0), ~(~arg_0) >> (43153u % 32u));
    let var_1 = arg_2.a.a.a.yz;
    global1 = array<vec2<i32>, 21>();
    global2 = func_2(arg_2.a.c.c.x);
    global2 = func_2(!arg_2.a.d.a.x);
    return Struct_3(Struct_2(Struct_1(func_2(func_2(false).a.x).d.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.d.b + -599f)), !select(vec4<bool>(arg_3.a.c.c.x, global0.a.x, true, var_1.x), arg_3.a.c.c, false)), _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(0i, -2147483647i) >> (u_input.b.xz % vec2<u32>(32u)), vec2<i32>(-33321i, arg_2.a.b)), -_wgslsmith_add_vec2_i32(vec2<i32>(arg_2.a.b, 2147483647i), global1[_wgslsmith_index_u32(global2.b, 21u)])), Struct_1(select(func_2(arg_3.a.d.c.x).d.a, !vec3<bool>(arg_1.x, arg_2.a.d.c.x, global2.c.c.x), any(vec4<bool>(true, global2.a.x, arg_1.x, true))), _wgslsmith_f_op_f32(global0.b + _wgslsmith_f_op_f32(-global0.b)), vec4<bool>(var_1.x, true && arg_3.a.c.a.x, true, true)), func_2(arg_3.a.d.c.x).c), arg_3.b, select(_wgslsmith_sub_i32(_wgslsmith_div_i32(_wgslsmith_mod_i32(arg_2.c, 2147483647i), -4263i), countOneBits(_wgslsmith_sub_i32(arg_3.c, arg_3.c))), -40195i, -728f != _wgslsmith_f_op_f32(global2.d.b - _wgslsmith_f_op_f32(-245f + arg_3.a.a.b))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(arg_3.b)) * _wgslsmith_f_op_vec3_f32(sign(arg_3.d))))), _wgslsmith_f_op_f32(global2.d.b + -1581f));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_4, arg_2: i32, arg_3: f32) -> Struct_3 {
    var var_0 = Struct_2(Struct_1(!arg_1.a.a.a.c.zxz, global2.c.b, global0.c), -1i, func_2(all(func_2(arg_1.a.a.d.a.x).d.a)).c, func_2(true).c);
    let var_1 = ~max(arg_1.a.a.b, 2147483647i);
    global1 = array<vec2<i32>, 21>();
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(global2.c.b - _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.d.b), _wgslsmith_f_op_f32(step(-658f, var_0.d.b)))), global0.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.d.b) - arg_3), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.b)), _wgslsmith_f_op_f32(ceil(1000f))))), -313f);
    global1 = array<vec2<i32>, 21>();
    return Struct_3(func_1(~_wgslsmith_dot_vec2_u32(arg_1.b ^ arg_1.b, _wgslsmith_add_vec2_u32(u_input.b.xx, arg_1.b)), vec2<bool>(_wgslsmith_f_op_f32(round(var_0.c.b)) >= _wgslsmith_f_op_f32(f32(-1f) * -860f), true), func_1(1u, select(!global2.c.a.yx, global2.d.c.zy, -199f < global0.b), arg_1.a, Struct_3(arg_1.a.a, vec3<f32>(global2.d.b, 305f, -834f), arg_2 ^ var_1, _wgslsmith_div_vec3_f32(arg_1.a.b, arg_1.a.b), _wgslsmith_f_op_f32(791f * arg_1.a.e))), Struct_3(Struct_2(func_1(u_input.a, global0.c.wx, Struct_3(Struct_2(arg_1.a.a.a, arg_2, Struct_1(vec3<bool>(global2.c.a.x, false, arg_1.a.a.c.c.x), var_0.d.b, vec4<bool>(false, true, false, true)), arg_1.a.a.c), var_2.yxz, arg_2, vec3<f32>(1142f, var_2.x, arg_3), 416f), Struct_3(Struct_2(global2.c, 2147483647i, Struct_1(var_0.a.c.ywy, arg_1.a.b.x, global2.c.c), Struct_1(vec3<bool>(true, true, global2.c.a.x), 1184f, vec4<bool>(true, false, false, false))), vec3<f32>(arg_1.a.b.x, global0.b, global0.b), -2147483647i, vec3<f32>(arg_1.a.e, arg_3, -1000f), -371f)).a.a, _wgslsmith_clamp_i32(1i, var_0.b, -1i), Struct_1(var_0.c.c.wyz, 998f, global0.c), Struct_1(vec3<bool>(var_0.a.a.x, global2.a.x, global0.a.x), 428f, vec4<bool>(false, var_0.c.a.x, global2.a.x, global2.a.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, -587f, 457f)), -8962i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.a.d)), arg_3)).a, _wgslsmith_f_op_vec3_f32(-arg_1.a.d), -3328i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.b, var_0.c.b, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1000f + 862f))))), var_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    var var_1 = Struct_1(vec3<bool>(all(select(global0.a, select(global0.a, vec3<bool>(global0.c.x, global2.c.a.x, var_0), vec3<bool>(global2.a.x, var_0, global2.a.x)), global2.d.c.yyy)), true, false), global2.d.b, select(global0.c, vec4<bool>(true, var_0, all(!vec4<bool>(global2.c.a.x, false, true, global0.c.x)), false), !vec4<bool>(true, any(vec3<bool>(false, global0.c.x, var_0)), true, true || global2.d.c.x)));
    var var_2 = func_4(u_input.b.yy, Struct_4(func_1(~_wgslsmith_dot_vec2_u32(u_input.b.xz, u_input.b.xz), select(!vec2<bool>(var_1.a.x, var_1.a.x), !global0.c.zz, select(vec2<bool>(false, var_1.c.x), vec2<bool>(var_1.a.x, true), vec2<bool>(false, var_0))), Struct_3(Struct_2(global2.d, 1391i, global2.d, global2.d), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1.b, -1674f, 472f), vec3<f32>(-319f, -110f, -1629f))), _wgslsmith_dot_vec4_i32(vec4<i32>(-51145i, -29598i, 2147483647i, 1i), vec4<i32>(-20531i, 0i, 1i, 29993i)), vec3<f32>(-1503f, var_1.b, var_1.b), 1557f), Struct_3(Struct_2(global2.c, -9851i, Struct_1(global0.a, -2364f, var_1.c), Struct_1(vec3<bool>(false, true, global2.d.a.x), 1914f, global2.c.c)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.b, -1193f, 964f), vec3<f32>(-2004f, var_1.b, global0.b), true)), reverseBits(29876i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(909f, global0.b, global2.d.b)), _wgslsmith_div_f32(global0.b, 132f))), ~vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.b, u_input.b), u_input.b.x)), firstLeadingBit(-func_1(_wgslsmith_add_u32(41817u, u_input.a), func_2(true).c.c.yz, Struct_3(Struct_2(Struct_1(vec3<bool>(true, true, global0.a.x), -954f, vec4<bool>(false, false, var_0, true)), -8309i, global2.c, global2.d), vec3<f32>(1513f, global0.b, -646f), 0i, vec3<f32>(-1000f, global0.b, global2.c.b), var_1.b), Struct_3(Struct_2(Struct_1(global0.a, var_1.b, var_1.c), 0i, Struct_1(var_1.c.zxz, -1268f, vec4<bool>(true, true, global2.d.a.x, global0.a.x)), global2.c), vec3<f32>(var_1.b, global2.d.b, global0.b), -1i, vec3<f32>(var_1.b, 253f, global0.b), global0.b)).c), _wgslsmith_f_op_f32(-876f - _wgslsmith_f_op_f32(max(var_1.b, 769f))));
    let var_3 = -38184i;
    global2 = Struct_5(select(vec2<bool>(func_2(!var_2.a.a.a.x).c.c.x, global2.c.a.x), func_2(false).c.c.zw, global2.c.a.x), ~global2.b, func_1(_wgslsmith_clamp_u32(~(global2.b >> (1u % 32u)), ~86894u, min(_wgslsmith_mult_u32(u_input.a, u_input.a), 109440u)), !vec2<bool>(true, global2.a.x), Struct_3(func_1(0u, func_1(31254u, global2.c.a.xz, Struct_3(Struct_2(Struct_1(vec3<bool>(false, false, false), var_2.a.c.b, vec4<bool>(var_2.a.a.a.x, true, global2.a.x, var_2.a.c.a.x)), 1381i, global2.d, global2.c), var_2.d, -1i, var_2.b, -242f), Struct_3(Struct_2(global2.c, -13312i, Struct_1(global2.c.a, var_2.e, var_2.a.a.c), Struct_1(vec3<bool>(var_1.c.x, var_2.a.a.a.x, var_2.a.a.c.x), var_1.b, vec4<bool>(global0.a.x, global2.c.a.x, var_2.a.a.a.x, true))), vec3<f32>(var_2.d.x, global0.b, var_1.b), var_2.a.b, var_2.b, global0.b)).a.a.c.wx, func_1(global2.b, vec2<bool>(var_2.a.d.c.x, true), Struct_3(Struct_2(var_2.a.d, 1i, var_2.a.c, global2.d), var_2.b, var_2.c, vec3<f32>(var_1.b, 983f, -659f), global2.d.b), Struct_3(Struct_2(global2.c, 69415i, var_2.a.d, Struct_1(vec3<bool>(global0.c.x, var_0, false), 651f, vec4<bool>(var_2.a.a.c.x, var_1.c.x, var_0, false))), vec3<f32>(1273f, 1093f, 657f), -9293i, vec3<f32>(209f, -1088f, 482f), var_2.d.x)), Struct_3(Struct_2(Struct_1(var_1.c.xxx, -147f, vec4<bool>(global0.c.x, false, true, false)), var_3, Struct_1(vec3<bool>(var_1.a.x, false, var_1.c.x), -575f, global0.c), Struct_1(var_1.a, var_2.e, vec4<bool>(var_2.a.d.a.x, true, var_1.c.x, false))), vec3<f32>(1000f, -658f, 1884f), 3663i, vec3<f32>(-284f, var_1.b, 1853f), 1379f)).a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b, 1482f, 1277f)), _wgslsmith_add_i32(_wgslsmith_div_i32(-35488i, -2147483647i), var_2.a.b >> (15023u % 32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b, var_2.e, -542f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(global0.b)), _wgslsmith_f_op_f32(-var_1.b))), func_1(~0u & ~global2.b, func_4(~u_input.b.xz, Struct_4(Struct_3(var_2.a, vec3<f32>(global2.d.b, global0.b, global2.d.b), var_2.a.b, var_2.d, 1549f), vec2<u32>(global2.b, 54602u)), func_1(global2.b, vec2<bool>(global0.c.x, true), Struct_3(Struct_2(Struct_1(vec3<bool>(false, var_2.a.a.c.x, var_0), -109f, vec4<bool>(true, false, var_2.a.a.a.x, var_0)), 1i, Struct_1(var_2.a.a.c.www, var_2.a.d.b, global0.c), Struct_1(vec3<bool>(true, var_0, true), global2.c.b, vec4<bool>(var_1.c.x, true, false, true))), vec3<f32>(var_2.a.c.b, 1149f, 284f), var_3, vec3<f32>(global0.b, -516f, var_1.b), -234f), Struct_3(var_2.a, vec3<f32>(-1401f, var_1.b, -1082f), 1i, var_2.d, -2637f)).a.b, _wgslsmith_f_op_f32(-var_1.b)).a.c.c.zz, func_4(~u_input.b.xy, Struct_4(Struct_3(Struct_2(Struct_1(vec3<bool>(global2.d.a.x, var_1.c.x, var_0), -950f, vec4<bool>(false, var_0, var_0, var_1.a.x)), 1i, Struct_1(global0.a, var_1.b, var_1.c), var_2.a.d), vec3<f32>(global2.d.b, var_1.b, var_2.a.d.b), -1i, vec3<f32>(global2.d.b, 564f, var_2.b.x), -418f), vec2<u32>(u_input.b.x, global2.b)), i32(-1i) * -1i, _wgslsmith_f_op_f32(var_2.b.x * var_2.e)), Struct_3(Struct_2(Struct_1(vec3<bool>(true, var_0, global0.c.x), 293f, vec4<bool>(var_2.a.d.a.x, var_0, false, var_0)), 18762i, Struct_1(vec3<bool>(global2.c.a.x, false, false), var_1.b, vec4<bool>(false, true, true, true)), var_2.a.d), var_2.b, var_2.c, vec3<f32>(830f, -623f, 1133f), _wgslsmith_f_op_f32(var_2.a.c.b * -432f)))).a.a, func_1(_wgslsmith_add_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(global2.b, 4294967295u), 15516u), 36856u), !vec2<bool>(true, select(var_1.c.x, var_2.a.a.a.x, global0.a.x)), func_1(4294967295u, global2.d.c.zw, func_4(firstTrailingBit(u_input.b.yx), Struct_4(Struct_3(Struct_2(Struct_1(global0.a, -669f, vec4<bool>(var_0, true, true, false)), var_3, var_2.a.d, Struct_1(vec3<bool>(false, false, true), -916f, vec4<bool>(var_2.a.d.a.x, global2.c.a.x, global0.a.x, false))), var_2.d, var_3, var_2.b, -2185f), vec2<u32>(global2.b, 4294967295u)), _wgslsmith_div_i32(0i, var_2.c), func_2(var_2.a.d.c.x).d.b), func_1(~global2.b, !vec2<bool>(false, var_0), Struct_3(Struct_2(var_2.a.d, 2147483647i, Struct_1(global0.a, -346f, var_1.c), Struct_1(vec3<bool>(var_1.a.x, false, var_2.a.d.a.x), -1000f, vec4<bool>(true, true, global2.c.c.x, var_0))), var_2.b, -14967i, vec3<f32>(561f, 220f, -104f), var_2.d.x), Struct_3(Struct_2(Struct_1(global0.c.zxw, var_2.d.x, var_1.c), 0i, Struct_1(vec3<bool>(var_2.a.c.a.x, var_0, true), -3148f, vec4<bool>(var_2.a.c.a.x, global0.a.x, true, global2.a.x)), Struct_1(vec3<bool>(var_1.c.x, false, false), var_2.e, global0.c)), vec3<f32>(1000f, -1617f, global0.b), var_2.a.b, vec3<f32>(-1949f, 1000f, -614f), global2.d.b))), Struct_3(var_2.a, _wgslsmith_f_op_vec3_f32(abs(func_4(vec2<u32>(global2.b, u_input.b.x), Struct_4(Struct_3(var_2.a, vec3<f32>(var_2.b.x, global2.c.b, 547f), 51480i, var_2.d, -816f), u_input.b.xy), var_3, 704f).b)), -1i, _wgslsmith_f_op_vec3_f32(-var_2.d), _wgslsmith_f_op_f32(ceil(913f)))).a.a);
    let var_4 = 138f;
    let x = u_input.a;
    s_output = StorageBuffer(-(~_wgslsmith_clamp_vec3_i32(vec3<i32>(var_3, 2147483647i, var_3), vec3<i32>(var_3, -6283i, 1i), vec3<i32>(1i, var_2.c, var_2.a.b))) >> (~abs(vec3<u32>(global2.b, 1u, 0u) >> (vec3<u32>(u_input.a, 0u, global2.b) % vec3<u32>(32u))) % vec3<u32>(32u)));
}

