struct Struct_1 {
    a: i32,
    b: f32,
    c: vec2<bool>,
    d: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec4<i32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
}

struct Struct_5 {
    a: Struct_4,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 19> = array<vec3<u32>, 19>(vec3<u32>(0u, 1u, 4294967295u), vec3<u32>(61355u, 4294967295u, 1u), vec3<u32>(4294967295u, 0u, 53708u), vec3<u32>(0u, 1u, 80001u), vec3<u32>(42400u, 1u, 86072u), vec3<u32>(102328u, 7012u, 34272u), vec3<u32>(4294967295u, 2575u, 82683u), vec3<u32>(0u, 104681u, 26941u), vec3<u32>(28464u, 1u, 1u), vec3<u32>(82293u, 1u, 0u), vec3<u32>(39848u, 30349u, 1u), vec3<u32>(0u, 69007u, 1u), vec3<u32>(13326u, 25147u, 1u), vec3<u32>(0u, 48991u, 4294967295u), vec3<u32>(91060u, 1u, 65873u), vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(0u, 0u, 0u), vec3<u32>(31348u, 70124u, 1u));

var<private> global1: Struct_1;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_4, arg_2: bool) -> i32 {
    let var_0 = true;
    var var_1 = select(vec3<i32>(-reverseBits(2147483647i), _wgslsmith_clamp_i32(u_input.b ^ global1.a, global1.a, -2147483647i), ~_wgslsmith_dot_vec4_i32(arg_1.a.b | vec4<i32>(-2147483647i, arg_1.b, 2147483647i, -2147483647i), reverseBits(arg_1.a.b))), vec3<i32>(_wgslsmith_mod_i32(0i, 1i), 55286i, -2147483647i), true);
    var var_2 = vec3<u32>(global1.d, 0u, global1.d);
    var_2 = countOneBits(vec3<u32>(max(0u, ~_wgslsmith_mod_u32(65724u, 4294967295u)), _wgslsmith_add_u32(~0u, _wgslsmith_dot_vec2_u32(u_input.c.zz, vec2<u32>(35910u, var_2.x))), 1u));
    let var_3 = !select(!(!(!vec3<bool>(false, false, global1.c.x))), !select(select(vec3<bool>(var_0, arg_2, true), vec3<bool>(true, true, var_0), false), select(vec3<bool>(arg_2, true, var_0), vec3<bool>(false, true, global1.c.x), vec3<bool>(false, true, true)), var_0), all(select(vec4<bool>(arg_2, true, false, true), vec4<bool>(true, true, true, true), global1.c.x)));
    return _wgslsmith_div_i32(14508i, _wgslsmith_dot_vec2_i32(-vec2<i32>(countOneBits(-1i), ~u_input.b), _wgslsmith_clamp_vec2_i32(firstLeadingBit(arg_1.a.b.xy), abs(vec2<i32>(arg_1.a.b.x, 2147483647i)), _wgslsmith_add_vec2_i32(arg_1.a.b.wy, vec2<i32>(2147483647i, arg_1.a.b.x))) << (~vec2<u32>(arg_1.a.a.x, arg_1.a.a.x) % vec2<u32>(32u))));
}

fn func_2(arg_0: vec3<f32>, arg_1: u32, arg_2: f32, arg_3: bool) -> u32 {
    var var_0 = vec4<i32>(-1i, -(func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, arg_2, 282f, -1318f) + vec4<f32>(arg_2, arg_2, arg_0.x, 1052f)), Struct_4(Struct_2(u_input.c, vec4<i32>(0i, global1.a, global1.a, -2147483647i)), u_input.a.x), true) & 1i), 2147483647i, countOneBits(min(u_input.b, 12051i)));
    global1 = Struct_1(u_input.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -109f)))), vec2<bool>(true, _wgslsmith_f_op_f32(523f * arg_0.x) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_2)))), u_input.c.x);
    let var_1 = any(select(vec4<bool>(true, !(-1553f != arg_2), false, true), vec4<bool>(true, global1.c.x, true, arg_3), any(select(select(vec3<bool>(true, false, true), vec3<bool>(global1.c.x, arg_3, true), arg_3), !vec3<bool>(arg_3, false, true), !vec3<bool>(global1.c.x, true, global1.c.x)))));
    let var_2 = Struct_1(global1.a, 1852f, global1.c, arg_1);
    global0 = array<vec3<u32>, 19>();
    return _wgslsmith_add_u32(0u, max(_wgslsmith_sub_u32(~firstTrailingBit(u_input.c.x), u_input.c.x), u_input.c.x));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec2<bool>) -> Struct_2 {
    global1 = Struct_1(global1.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(global1.b, global1.b)))), global1.c, min(_wgslsmith_mult_u32(1u, func_2(vec3<f32>(-1440f, -1000f, global1.b), arg_0.x, _wgslsmith_f_op_f32(round(240f)), false & arg_1.x)), _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(arg_0 ^ u_input.c.zx, vec2<u32>(arg_0.x, arg_0.x) | vec2<u32>(18659u, 29237u)), arg_0.x)));
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b, global1.b));
    var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(882f, var_0.x))))))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(524f, 338f), vec2<f32>(741f, global1.b)))))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global1.b, global1.b)))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, -356f) * vec2<f32>(1318f, global1.b)))))));
    var var_1 = Struct_3(!global1.c, Struct_1(-u_input.a.x, -169f, !vec2<bool>(global1.a > 0i, all(vec4<bool>(true, false, true, arg_1.x))), 3276u));
    var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -307f)), var_0.x));
    return Struct_2(u_input.c, vec4<i32>(firstTrailingBit(_wgslsmith_sub_i32(u_input.a.x, global1.a)), i32(-1i) * -countOneBits(var_1.b.a), _wgslsmith_mod_i32(-2147483647i, global1.a), countOneBits(_wgslsmith_mult_i32(1i, u_input.a.x))));
}

fn func_4(arg_0: u32, arg_1: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(step(global1.b, -3016f));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global1.b + _wgslsmith_f_op_f32(f32(-1f) * -191f)), 1000f) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global1.b)) + _wgslsmith_f_op_f32(abs(global1.b))), -1446f)) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(-639f)), _wgslsmith_div_f32(-286f, -1159f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-389f, 1000f)))), vec2<bool>(false, global1.c.x))));
    global0 = array<vec3<u32>, 19>();
    let var_2 = countOneBits(-vec3<i32>(countOneBits(select(u_input.b, -8970i, global1.c.x)), func_1(vec2<u32>(0u, arg_1.a.x), !vec2<bool>(global1.c.x, global1.c.x)).b.x, _wgslsmith_mod_i32(_wgslsmith_clamp_i32(u_input.a.x, 37362i, 17811i), func_3(vec4<f32>(global1.b, var_1.x, -699f, -2876f), Struct_4(arg_1, global1.a), global1.c.x))));
    let var_3 = !(!select(vec3<bool>(global1.c.x && true, true, all(vec3<bool>(true, true, true))), !vec3<bool>(global1.c.x, global1.c.x, global1.c.x), true));
    return Struct_1(max(countOneBits(global1.a) | -(~u_input.a.x), 2147483647i << (_wgslsmith_div_u32(~11528u, global1.d & 4294967295u) % 32u)), global1.b, !(!select(select(global1.c, vec2<bool>(true, global1.c.x), false), !global1.c, vec2<bool>(true, var_3.x))), global1.d);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_4(~firstTrailingBit(48101u), func_1(vec2<u32>(_wgslsmith_mult_u32(29533u, select(79814u, 0u, global1.c.x)), 1u), vec2<bool>(!(global1.a >= u_input.b), global1.c.x | global1.c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~select(~func_1(vec2<u32>(u_input.c.x, global1.d), vec2<bool>(global1.c.x, global1.c.x)).a.zww, global0[_wgslsmith_index_u32(global1.d, 19u)], !(!vec3<bool>(global1.c.x, global1.c.x, global1.c.x))), ~(~global1.d) | u_input.c.x, countOneBits(max(firstLeadingBit(vec4<i32>(-44716i, 16426i, u_input.b, 15405i) | vec4<i32>(u_input.a.x, 22732i, u_input.b, global1.a)), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(global1.a, 18838i, u_input.b, 1i), vec4<i32>(u_input.a.x, -31313i, u_input.a.x, -61352i), vec4<i32>(global1.a, global1.a, 20632i, global1.a)))));
}

