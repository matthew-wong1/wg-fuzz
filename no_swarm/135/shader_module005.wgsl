struct Struct_1 {
    a: vec3<bool>,
    b: vec4<u32>,
    c: vec4<bool>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
    c: f32,
    d: Struct_2,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_3,
    c: bool,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: u32;

var<private> global2: vec4<i32>;

var<private> global3: array<Struct_2, 27> = array<Struct_2, 27>(Struct_2(Struct_1(vec3<bool>(true, true, false), vec4<u32>(20810u, 1u, 1u, 67213u), vec4<bool>(false, false, false, true), false)), Struct_2(Struct_1(vec3<bool>(false, false, true), vec4<u32>(18852u, 0u, 1u, 1u), vec4<bool>(false, true, false, true), true)), Struct_2(Struct_1(vec3<bool>(true, true, true), vec4<u32>(1u, 4294967295u, 12471u, 56289u), vec4<bool>(true, true, true, false), false)), Struct_2(Struct_1(vec3<bool>(false, false, true), vec4<u32>(1u, 1u, 23767u, 1u), vec4<bool>(true, false, true, true), true)), Struct_2(Struct_1(vec3<bool>(true, false, false), vec4<u32>(4294967295u, 59498u, 1u, 2186u), vec4<bool>(false, false, false, true), false)), Struct_2(Struct_1(vec3<bool>(true, false, false), vec4<u32>(4294967295u, 20477u, 8971u, 0u), vec4<bool>(false, false, true, true), true)), Struct_2(Struct_1(vec3<bool>(true, true, true), vec4<u32>(51154u, 4294967295u, 0u, 5319u), vec4<bool>(false, false, false, false), true)), Struct_2(Struct_1(vec3<bool>(true, false, true), vec4<u32>(1u, 0u, 2405u, 51710u), vec4<bool>(false, true, false, false), false)), Struct_2(Struct_1(vec3<bool>(true, false, false), vec4<u32>(0u, 4294967295u, 44836u, 4294967295u), vec4<bool>(false, false, false, false), true)), Struct_2(Struct_1(vec3<bool>(true, true, false), vec4<u32>(1u, 0u, 39784u, 0u), vec4<bool>(false, false, true, true), false)), Struct_2(Struct_1(vec3<bool>(true, true, true), vec4<u32>(4294967295u, 1u, 0u, 0u), vec4<bool>(false, true, true, true), false)), Struct_2(Struct_1(vec3<bool>(false, false, true), vec4<u32>(1u, 1u, 18129u, 0u), vec4<bool>(true, true, false, false), false)), Struct_2(Struct_1(vec3<bool>(true, true, true), vec4<u32>(22421u, 29113u, 1u, 72972u), vec4<bool>(true, true, true, true), false)), Struct_2(Struct_1(vec3<bool>(true, false, false), vec4<u32>(50666u, 4294967295u, 1u, 0u), vec4<bool>(true, false, false, false), false)), Struct_2(Struct_1(vec3<bool>(false, false, false), vec4<u32>(29197u, 0u, 47587u, 0u), vec4<bool>(true, true, false, true), false)), Struct_2(Struct_1(vec3<bool>(false, true, false), vec4<u32>(9786u, 0u, 4294967295u, 1u), vec4<bool>(true, false, true, true), false)), Struct_2(Struct_1(vec3<bool>(true, true, true), vec4<u32>(0u, 0u, 33852u, 35744u), vec4<bool>(false, false, false, true), false)), Struct_2(Struct_1(vec3<bool>(false, false, false), vec4<u32>(4294967295u, 55238u, 4294967295u, 17725u), vec4<bool>(false, true, false, true), true)), Struct_2(Struct_1(vec3<bool>(false, true, true), vec4<u32>(82310u, 0u, 3987u, 0u), vec4<bool>(true, true, true, true), true)), Struct_2(Struct_1(vec3<bool>(true, false, false), vec4<u32>(50016u, 0u, 34907u, 0u), vec4<bool>(true, false, false, true), true)), Struct_2(Struct_1(vec3<bool>(true, false, false), vec4<u32>(4294967295u, 0u, 1u, 39130u), vec4<bool>(true, false, false, false), true)), Struct_2(Struct_1(vec3<bool>(false, true, false), vec4<u32>(38795u, 1u, 20371u, 4294967295u), vec4<bool>(true, true, false, false), true)), Struct_2(Struct_1(vec3<bool>(true, false, false), vec4<u32>(4294967295u, 0u, 0u, 0u), vec4<bool>(false, true, true, false), false)), Struct_2(Struct_1(vec3<bool>(false, false, false), vec4<u32>(24205u, 0u, 55000u, 330u), vec4<bool>(false, true, false, true), true)), Struct_2(Struct_1(vec3<bool>(true, false, false), vec4<u32>(0u, 3613u, 81408u, 8497u), vec4<bool>(false, true, false, true), false)), Struct_2(Struct_1(vec3<bool>(true, false, false), vec4<u32>(4294967295u, 1u, 4294967295u, 1u), vec4<bool>(false, false, false, true), true)), Struct_2(Struct_1(vec3<bool>(true, false, false), vec4<u32>(0u, 40336u, 1939u, 0u), vec4<bool>(false, false, false, true), false)));

var<private> global4: array<Struct_1, 5>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    return 33124u;
}

fn func_2() -> Struct_3 {
    var var_0 = _wgslsmith_dot_vec4_i32(-max(_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, global2.x, u_input.a.x, -33053i) >> (vec4<u32>(45027u, 4294967295u, 26999u, 82267u) % vec4<u32>(32u)), ~u_input.a, vec4<i32>(u_input.a.x, global2.x, global2.x, -2147483647i)), select(u_input.a, vec4<i32>(global2.x, -27651i, u_input.a.x, u_input.a.x), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), false))), u_input.a);
    global4 = array<Struct_1, 5>();
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-645f, -1407f))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-159f, 1000f))), vec2<f32>(_wgslsmith_f_op_f32(ceil(-1276f)), _wgslsmith_f_op_f32(-642f - 1781f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1641f), _wgslsmith_f_op_f32(-440f + -310f))));
    global0 = ~(-1i);
    let var_2 = _wgslsmith_clamp_i32(10243i, global2.x, ~2147483647i);
    return Struct_3(~(vec4<u32>(func_3(), ~21737u, ~40480u, ~22489u) >> (vec4<u32>(func_3(), ~0u, ~4294967295u, 0u) % vec4<u32>(32u))), global4[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(~(~vec2<u32>(15106u, 8498u)), vec2<u32>(1u, 1u) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u))), 5u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-201f, var_1.x))))) - _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(-var_1.x))), Struct_2(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 1u), vec2<u32>(1u, 1u)), 5u)]));
}

fn func_1(arg_0: vec2<f32>, arg_1: u32, arg_2: vec3<bool>, arg_3: bool) -> bool {
    var var_0 = Struct_5(global3[_wgslsmith_index_u32(4294967295u, 27u)], func_2(), arg_3, Struct_2(func_2().b));
    let var_1 = select(-_wgslsmith_mult_vec3_i32(firstLeadingBit(u_input.a.xyx), vec3<i32>(~23234i, 40874i, -u_input.a.x)), vec3<i32>(~_wgslsmith_sub_i32(~0i, firstLeadingBit(44983i)), abs(-1i), abs(_wgslsmith_clamp_i32(min(0i, 1i), max(u_input.a.x, 748i), -global2.x))), !(all(vec2<bool>(var_0.d.a.d, var_0.a.a.a.x)) | false));
    global0 = global2.x;
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(-1286f - arg_0.x), _wgslsmith_f_op_f32(425f - arg_0.x), 1955f);
    let var_3 = var_0.d;
    return any(vec4<bool>(any(!var_0.b.d.a.c) || select(false, true, true), !(!(!arg_3)), true, all(!var_0.d.a.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    let var_1 = Struct_2(global4[_wgslsmith_index_u32(1u, 5u)]);
    let var_2 = _wgslsmith_f_op_f32(-217f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1197f + _wgslsmith_f_op_f32(-1000f * -940f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -461f) + _wgslsmith_f_op_f32(-442f * -491f)), -702f))));
    global0 = _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(u_input.a.x, global2.x, -10555i, abs(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, global2.x), global2.xy) ^ -u_input.a.x)));
    let var_3 = var_1.a.c.x;
    let var_4 = func_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -271f) * 374f), 864f), var_1.a.b.x, !vec3<bool>(var_3, false, var_3), var_3);
    let var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-329f, 279f)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1643f * _wgslsmith_f_op_f32(var_2 - 370f))), var_2), ~var_1.a.b.wyw);
}

