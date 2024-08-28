struct Struct_1 {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
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

var<private> global0: vec2<u32>;

var<private> global1: Struct_2;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec3<u32>) -> f32 {
    var var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1278f, 1120f, -522f, 364f), vec4<f32>(562f, 1365f, 1335f, -867f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1294f, 277f, 175f, -555f) * vec4<f32>(430f, -140f, -1385f, 245f)) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1000f, -430f, -1221f, -281f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1354f, 376f, -1000f, 910f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(383f, 613f, -1989f, -384f) - vec4<f32>(-989f, 1011f, 135f, 167f)))), global1.a)), global1.b);
    global0 = ~firstTrailingBit((~vec2<u32>(var_0.b.b.x, 37484u) | _wgslsmith_div_vec2_u32(arg_0.yx, arg_0.yy)) ^ var_0.b.b);
    var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(var_0.a, _wgslsmith_f_op_vec4_f32(var_0.a + _wgslsmith_f_op_vec4_f32(var_0.a + vec4<f32>(var_0.a.x, var_0.a.x, -2174f, -1443f))))), var_0.a)), Struct_1(var_0.b.a, _wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(~vec2<u32>(0u, global0.x), global1.b.b), ~vec2<u32>(global1.b.b.x, 4294967295u))));
    var var_1 = Struct_1(_wgslsmith_mult_vec4_i32(countOneBits(-vec4<i32>(1i, u_input.a, global1.b.a.x, -23317i)), var_0.b.a) ^ global1.b.a, reverseBits(vec2<u32>(var_0.b.b.x, u_input.b)));
    let var_2 = global1.a;
    return 778f;
}

fn func_2(arg_0: u32) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(func_3(vec3<u32>(u_input.c, 11029u, 20941u) << (vec3<u32>(arg_0, 4294967295u, u_input.b) % vec3<u32>(32u)))))), -729f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -985f))));
    let var_1 = Struct_3(global1.a, Struct_1(global1.b.a ^ ~(~global1.b.a), ~vec2<u32>(firstTrailingBit(u_input.b), min(1u, global1.b.b.x))));
    global1 = Struct_2(true, Struct_1(var_1.b.a, select(_wgslsmith_sub_vec2_u32(global1.b.b, vec2<u32>(var_1.b.b.x, 43215u)), _wgslsmith_clamp_vec2_u32(var_1.b.b, vec2<u32>(0u, global1.b.b.x), vec2<u32>(arg_0, var_1.b.b.x)), true) >> (~vec2<u32>(global1.b.b.x, var_1.b.b.x) % vec2<u32>(32u))));
    let var_2 = u_input.a;
    var var_3 = !var_1.a;
    return var_1.b.a.xz;
}

fn func_1(arg_0: vec4<bool>, arg_1: vec3<bool>) -> Struct_2 {
    var var_0 = global1.b.b.x <= 26766u;
    var var_1 = func_2(select(reverseBits(~0u), firstLeadingBit(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(43476u, 1u, 1u, global1.b.b.x), vec4<u32>(global0.x, 22678u, 1u, 954u)), global1.b.b.x)), !all(arg_0.zzz)));
    let var_2 = 45520u;
    var_0 = true;
    var var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2004f - -657f) + 326f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1619f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1414f + 308f) - _wgslsmith_f_op_f32(2196f * -135f)))));
    return Struct_2(!(!any(vec3<bool>(false, global1.a, arg_0.x))), global1.b);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1(!(!select(select(vec4<bool>(global1.a, true, false, true), vec4<bool>(global1.a, global1.a, global1.a, global1.a), vec4<bool>(true, false, global1.a, false)), vec4<bool>(true, false, global1.a, true), !vec4<bool>(global1.a, global1.a, global1.a, global1.a))), select(!(!vec3<bool>(global1.a, global1.a, global1.a)), vec3<bool>(all(vec2<bool>(global1.a, false)), all(vec4<bool>(true, global1.a, false, true)), !global1.a), true));
    var var_0 = Struct_3(true, func_1(vec4<bool>(global1.a, !global1.a, all(vec4<bool>(global1.a, false, true, global1.a)), (global1.a & global1.a) == true), select(!vec3<bool>(global1.a, global1.a, global1.a), vec3<bool>(true, true, true), true)).b);
    let var_1 = select(vec4<bool>(all(select(select(vec4<bool>(false, global1.a, false, true), vec4<bool>(true, true, var_0.a, false), vec4<bool>(var_0.a, true, global1.a, global1.a)), vec4<bool>(global1.a, global1.a, var_0.a, global1.a), vec4<bool>(false, global1.a, true, false))), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, var_0.b.a.x), vec2<i32>(9305i, var_0.b.a.x)) != _wgslsmith_div_i32(firstTrailingBit(-2147483647i), 897i), true, global1.a), select(select(vec4<bool>(!global1.a, all(vec4<bool>(true, var_0.a, global1.a, global1.a)), u_input.a < -2147483647i, !var_0.a), vec4<bool>(false, true, true, true), select(vec4<bool>(true, global1.a, false, var_0.a), select(vec4<bool>(global1.a, true, true, global1.a), vec4<bool>(true, global1.a, false, false), var_0.a), false)), !select(!vec4<bool>(global1.a, var_0.a, false, global1.a), !vec4<bool>(true, var_0.a, true, global1.a), any(vec4<bool>(false, false, false, global1.a))), true), !select(!select(vec4<bool>(false, true, true, var_0.a), vec4<bool>(var_0.a, true, false, false), vec4<bool>(global1.a, false, global1.a, false)), !(!vec4<bool>(var_0.a, true, var_0.a, true)), vec4<bool>(true, false, global1.a, var_0.a)));
    let var_2 = abs(abs(var_0.b.a.xxw));
    var var_3 = var_0.a;
    var_0 = Struct_3(!select(false, !var_0.a || false, !(!var_0.a)), global1.b);
    var var_4 = 12278u;
    var var_5 = Struct_3(any(vec4<bool>(true, any(vec2<bool>(false, var_0.a)) || true, !global1.a, global1.b.a.x >= select(global1.b.a.x, u_input.a, false))), Struct_1(vec4<i32>(~(~0i), -(~(-11295i)), _wgslsmith_div_i32(abs(var_2.x), ~u_input.a), (i32(-1i) * -1i) << (firstTrailingBit(global0.x) % 32u)), vec2<u32>(abs(_wgslsmith_mult_u32(0u, var_0.b.b.x)), u_input.c)));
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(29926u, var_5.b.b.x, 1805u) | vec3<u32>(0u, 7590u, var_5.b.b.x), countOneBits(vec3<u32>(global0.x, 4294967295u, 13941u))), ~vec3<u32>(1u, 15604u, var_0.b.b.x) & (vec3<u32>(40091u, var_0.b.b.x, var_0.b.b.x) >> (vec3<u32>(global1.b.b.x, 15747u, 0u) % vec3<u32>(32u)))), ~abs(_wgslsmith_div_vec3_u32(vec3<u32>(10027u, 6051u, global0.x), vec3<u32>(97235u, u_input.c, 46116u)))));
}

