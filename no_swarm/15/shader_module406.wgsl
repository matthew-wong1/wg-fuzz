struct Struct_1 {
    a: u32,
    b: f32,
    c: i32,
    d: f32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: i32,
    b: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
}

struct Struct_5 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec4<f32>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: i32;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: f32) -> i32 {
    let var_0 = Struct_4(Struct_1(28198u, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 + arg_1)))), 1i, _wgslsmith_f_op_f32(f32(-1f) * -576f), vec3<f32>(arg_1, -1170f, -109f)), ~u_input.a.x, Struct_1(u_input.a.x, _wgslsmith_f_op_f32(sign(-708f)), _wgslsmith_dot_vec3_i32(u_input.b.xzz, vec3<i32>(~1i, -4568i, -2147483647i)), _wgslsmith_f_op_f32(-arg_1), vec3<f32>(_wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(round(-328f))), 810f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)))));
    global0 = all(vec4<bool>(select(!(var_0.b <= u_input.a.x), !all(vec4<bool>(false, false, false, false)), all(vec4<bool>(true, true, true, true))), !(true | any(vec2<bool>(false, true))), all(vec3<bool>(false, select(false, false, false), all(vec4<bool>(true, false, true, true)))), !(-1754f > _wgslsmith_f_op_f32(-var_0.c.b))));
    global0 = false;
    let var_1 = var_0;
    let var_2 = var_0.b;
    return arg_0;
}

fn func_2(arg_0: Struct_3, arg_1: f32) -> f32 {
    let var_0 = u_input.b.wx;
    let var_1 = arg_0.a;
    let var_2 = vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(firstLeadingBit(var_0.x), var_1.a, _wgslsmith_mult_i32(u_input.b.x, var_0.x), 1i), ~u_input.b) << (~(u_input.a.x << (1u % 32u)) % 32u), _wgslsmith_add_i32((countOneBits(u_input.b.x) ^ _wgslsmith_sub_i32(var_1.a, -1i)) ^ func_3(_wgslsmith_mult_i32(arg_0.c.a, 1i), -412f), ~countOneBits(var_0.x)), -1i, _wgslsmith_mult_i32((select(1i, -2147483647i, arg_0.c.b) << ((1u ^ u_input.a.x) % 32u)) & var_0.x, -19516i));
    var var_3 = Struct_1(_wgslsmith_mult_u32(~1u, u_input.a.x), _wgslsmith_f_op_f32(exp2(arg_0.b.x)), -abs(-2147483647i), _wgslsmith_f_op_f32(arg_1 * 389f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-646f - -498f), _wgslsmith_f_op_f32(exp2(arg_0.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(845f, arg_0.b.x)) - _wgslsmith_f_op_f32(-705f - arg_1)), _wgslsmith_f_op_f32(step(1f, 274f)), arg_1), !select(select(vec3<bool>(true, true, var_1.b), vec3<bool>(true, false, false), true), vec3<bool>(var_1.b, true, true), any(vec2<bool>(false, var_1.b))))));
    var_3 = Struct_1(_wgslsmith_mult_u32(reverseBits(_wgslsmith_sub_u32(firstLeadingBit(1u), var_3.a)), max(17524u, ~0u)), 513f, var_2.x << (1591u % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -646f)), _wgslsmith_f_op_vec3_f32(select(arg_0.b.www, var_3.e, any(select(select(vec3<bool>(false, false, true), vec3<bool>(var_1.b, arg_0.c.b, var_1.b), true), select(vec3<bool>(false, var_1.b, true), vec3<bool>(false, true, true), var_1.b), all(vec2<bool>(var_1.b, var_1.b)))))));
    return arg_1;
}

fn func_1(arg_0: bool) -> vec3<bool> {
    var var_0 = ~(~(u_input.a.x << (u_input.a.x % 32u))) << (u_input.a.x % 32u);
    var_0 = ~56023u;
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(select(-188f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_3(Struct_2(-26777i, arg_0), vec4<f32>(1246f, 1727f, 605f, -1000f), Struct_2(u_input.b.x, arg_0), Struct_2(1i, arg_0)), 318f))), _wgslsmith_f_op_f32(f32(-1f) * -615f)), arg_0)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-523f)), 584f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(1748f)), _wgslsmith_f_op_f32(select(379f, _wgslsmith_div_f32(1186f, -1389f), arg_0))))));
    var var_2 = Struct_5(vec3<u32>(_wgslsmith_add_u32(4294967295u, _wgslsmith_div_u32(u_input.a.x, u_input.a.x << (23840u % 32u))), u_input.a.x, u_input.a.x >> (u_input.a.x % 32u)), Struct_1(u_input.a.x, var_1.x, -2147483647i, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1612f), _wgslsmith_f_op_f32(select(-520f, -1884f, false)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(var_1.x)), _wgslsmith_f_op_f32(round(1323f)), var_1.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1356f), _wgslsmith_f_op_f32(sign(var_1.x)), -637f, _wgslsmith_f_op_f32(var_1.x - var_1.x)) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(223f, var_1.x, var_1.x, var_1.x) + vec4<f32>(var_1.x, 931f, var_1.x, 800f)), _wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, -319f, -1000f, var_1.x), vec4<f32>(var_1.x, var_1.x, 264f, var_1.x)))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1188f)), var_1.x, var_1.x, _wgslsmith_f_op_f32(sign(1000f)))), select(vec2<bool>(arg_0, !arg_0), !vec2<bool>(true, arg_0), arg_0));
    var var_3 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(549f, 146f, var_2.c.x, var_1.x), vec4<f32>(var_2.c.x, var_2.b.b, var_2.b.b, -2186f)))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_2.b.e.x, var_2.c.x, var_1.x, var_1.x), vec4<f32>(439f, var_2.b.b, var_2.c.x, 386f))))) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(min(var_2.b.d, var_1.x)), _wgslsmith_div_f32(468f, var_1.x), _wgslsmith_f_op_f32(var_1.x * 885f), var_2.c.x), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.x, var_1.x, var_2.b.e.x, -1062f), vec4<f32>(var_1.x, var_2.b.e.x, 1236f, var_2.b.b), arg_0)), vec4<f32>(1560f, var_2.c.x, var_1.x, 118f)))))));
    return select(select(!select(!vec3<bool>(arg_0, true, false), vec3<bool>(arg_0, true, false), vec3<bool>(false, true, true)), vec3<bool>(any(select(vec2<bool>(false, var_2.d.x), var_2.d, arg_0)), !arg_0, any(var_2.d)), vec3<bool>(true, arg_0, true)), vec3<bool>(!any(!vec3<bool>(arg_0, true, false)), true, all(!vec3<bool>(arg_0, true, true))), select(vec3<bool>(true, var_2.d.x, var_2.d.x), select(select(vec3<bool>(arg_0, arg_0, true), select(vec3<bool>(true, true, arg_0), vec3<bool>(true, true, false), var_2.d.x), !vec3<bool>(arg_0, false, arg_0)), select(select(vec3<bool>(var_2.d.x, true, var_2.d.x), vec3<bool>(var_2.d.x, arg_0, var_2.d.x), vec3<bool>(var_2.d.x, true, false)), vec3<bool>(arg_0, false, var_2.d.x), select(vec3<bool>(arg_0, false, false), vec3<bool>(arg_0, var_2.d.x, arg_0), false)), !select(vec3<bool>(true, var_2.d.x, false), vec3<bool>(true, arg_0, arg_0), false)), !var_2.d.x));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec2<u32>, arg_2: vec3<bool>) -> vec2<f32> {
    let var_0 = Struct_1(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(615f)), _wgslsmith_f_op_f32(f32(-1f) * -895f)) - _wgslsmith_div_f32(-2039f, -566f))), -u_input.b.x, -705f, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(291f, 765f, -2727f))) + vec3<f32>(-937f, _wgslsmith_f_op_f32(116f - -423f), _wgslsmith_f_op_f32(round(1113f)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1160f))), -184f))));
    let var_1 = Struct_2(arg_0.x, any(!(!arg_2.zx)) & arg_2.x);
    var var_2 = vec2<i32>(arg_0.x, 2147483647i);
    global0 = arg_2.x;
    global0 = arg_2.x;
    return var_0.e.zy;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-827f - 317f) - 401f), -208f) - vec2<f32>(788f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, 1856f)))), _wgslsmith_f_op_vec2_f32(func_4(vec2<i32>(reverseBits(_wgslsmith_mod_i32(-29246i, u_input.b.x)), _wgslsmith_add_i32(_wgslsmith_sub_i32(4256i, -851i), u_input.b.x)), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a.x, 36924u), vec2<u32>(u_input.a.x, u_input.a.x), ~u_input.a.zz), func_1(true))));
    var var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -624f, -102f) - vec3<f32>(-1000f, var_0.x, var_0.x)) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1112f, 197f, -177f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, var_0.x)), !func_1(true)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(select(var_0.x, var_0.x, true)), _wgslsmith_f_op_f32(var_0.x + var_0.x), _wgslsmith_f_op_f32(step(-1000f, var_0.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1425f, 1000f, -502f), vec3<f32>(-811f, var_0.x, -389f))), select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, 1000f, var_0.x), vec3<f32>(-775f, var_0.x, 243f), vec3<bool>(false, false, true))))))), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(all(vec2<bool>(false, false)), select(true, false, true), var_0.x == -1744f), vec3<bool>(true, all(vec2<bool>(false, true)), true)), !vec3<bool>(true, all(vec2<bool>(true, false)), true))));
    var var_2 = !func_1(true).xx;
    var var_3 = 62370u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 1455f, 1000f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, var_1.x))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, -508f, var_0.x) + vec3<f32>(var_0.x, 1212f, var_1.x))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -304f) - _wgslsmith_f_op_f32(round(-336f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - var_0.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-560f, var_1.x))))))), u_input.a.yxx);
}

