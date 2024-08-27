struct Struct_1 {
    a: vec2<f32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec2<i32>,
    c: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: vec3<i32> = vec3<i32>(1i, -1i, 25772i);

var<private> global2: vec2<u32> = vec2<u32>(4294967295u, 4294967295u);

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec4<u32>, arg_1: i32, arg_2: Struct_2, arg_3: Struct_2) -> vec2<f32> {
    let var_0 = countOneBits(vec3<i32>(global1.x, i32(-1i) * -2147483647i, arg_1));
    global2 = vec2<u32>(abs(1u), abs(10649u));
    let var_1 = arg_3.b;
    global0 = !(arg_2.b.a.x < 505f);
    let var_2 = Struct_4(!vec4<bool>(true, true | all(vec4<bool>(false, false, false, false)), max(78694u, arg_2.a.x) > _wgslsmith_clamp_u32(arg_2.a.x, global2.x, 23651u), true), arg_2.b.b.zz >> (_wgslsmith_sub_vec2_u32(u_input.a.yx, ~(vec2<u32>(u_input.a.x, global2.x) >> (vec2<u32>(4294967295u, global2.x) % vec2<u32>(32u)))) % vec2<u32>(32u)), _wgslsmith_clamp_u32(~_wgslsmith_sub_u32(u_input.b.x, 1u), 4294967295u, abs(select(~arg_2.a.x, ~18698u, true))));
    return vec2<f32>(_wgslsmith_f_op_f32(1703f * arg_3.b.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(181f)) * 952f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-225f - 224f) - arg_3.b.a.x))));
}

fn func_2(arg_0: vec4<i32>) -> Struct_2 {
    let var_0 = Struct_3(Struct_2(u_input.a, Struct_1(_wgslsmith_f_op_vec2_f32(func_3(~u_input.b, -12566i, Struct_2(u_input.b.yxz, Struct_1(vec2<f32>(-731f, 1323f), vec4<i32>(global1.x, arg_0.x, arg_0.x, -6886i))), Struct_2(u_input.b.zzz, Struct_1(vec2<f32>(835f, 1335f), vec4<i32>(31282i, -2147483647i, global1.x, 51158i))))), vec4<i32>(global1.x ^ 0i, _wgslsmith_dot_vec3_i32(vec3<i32>(global1.x, arg_0.x, -1i), arg_0.xxz), ~global1.x, _wgslsmith_mult_i32(global1.x, global1.x)))));
    var var_1 = var_0;
    var var_2 = var_1.a.a.xx;
    let var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(996f, 1373f, var_0.a.b.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.a.b.a.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-226f))))) + vec4<f32>(var_0.a.b.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(368f + var_1.a.b.a.x))), var_1.a.b.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1807f - 169f)), _wgslsmith_f_op_f32(-var_1.a.b.a.x))));
    let var_4 = _wgslsmith_f_op_f32(172f + var_0.a.b.a.x);
    return var_0.a;
}

fn func_4(arg_0: Struct_2, arg_1: u32) -> bool {
    var var_0 = vec4<bool>((false && any(vec3<bool>(true, true, true))) && (reverseBits(global1.x) <= ~(i32(-1i) * -24991i)), all(select(vec4<bool>(select(true, false, false), true, true, true), vec4<bool>(true, true, all(vec3<bool>(true, true, false)), true), any(vec4<bool>(false, true, true, true)))), false, false);
    var var_1 = u_input.b;
    global1 = -(_wgslsmith_div_vec3_i32(arg_0.b.b.xxx, max(arg_0.b.b.xzy, ~arg_0.b.b.wyy)) ^ vec3<i32>(arg_0.b.b.x, firstLeadingBit(arg_0.b.b.x), arg_0.b.b.x));
    var var_2 = arg_0.b.a;
    var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(928f, 186f)), _wgslsmith_f_op_f32(arg_0.b.a.x + 976f)))));
    return !any(vec4<bool>(true, !var_0.x, var_0.x || true, any(!vec3<bool>(var_0.x, false, true))));
}

fn func_1(arg_0: Struct_4, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: vec2<bool>) -> bool {
    var var_0 = -(~(-8613i));
    var var_1 = ~0u;
    var var_2 = func_4(func_2(~(~arg_1.b)), 1u) == (19671u == u_input.a.x);
    var var_3 = arg_1;
    var var_4 = u_input.b.wyz;
    return arg_0.a.x;
}

fn func_5(arg_0: Struct_4) -> StorageBuffer {
    var var_0 = Struct_2(firstLeadingBit(u_input.a), func_2(vec4<i32>(-global1.x, 2147483647i, -2147483647i, global1.x ^ global1.x) | (vec4<i32>(49537i, -2147483647i, -11527i, 33345i) >> (u_input.b % vec4<u32>(32u)))).b);
    global0 = arg_0.a.x & arg_0.a.x;
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(-var_0.b.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(var_0.b.a, _wgslsmith_div_vec2_f32(vec2<f32>(-948f, var_0.b.a.x), var_0.b.a))))), var_0.a.xx);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~firstTrailingBit(vec3<i32>(_wgslsmith_add_i32(~(-2147483647i), _wgslsmith_add_i32(-29124i, global1.x)), global1.x, select(_wgslsmith_mult_i32(global1.x, -1i), global1.x & 35970i, true)));
    let var_0 = -1548f;
    global2 = ~vec2<u32>(abs(u_input.c), ~_wgslsmith_add_u32(0u, 48970u));
    global0 = !(_wgslsmith_mult_u32(global2.x, 4294967295u) != ~(~1u));
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0, -1000f), vec2<f32>(224f, 111f), vec2<bool>(false, false))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, var_0) + vec2<f32>(-276f, 1685f)))))), -vec4<i32>(-global1.x, global1.x >> (1u % 32u), global1.x, 1i) & _wgslsmith_mult_vec4_i32(-_wgslsmith_clamp_vec4_i32(vec4<i32>(global1.x, global1.x, -1i, -1i), vec4<i32>(global1.x, global1.x, -1i, 16089i), vec4<i32>(1i, 1i, 2147483647i, 38903i)), vec4<i32>(0i, global1.x, 11404i, -77169i)));
    let x = u_input.a;
    s_output = func_5(Struct_4(vec4<bool>(!all(vec3<bool>(true, false, false)), any(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false))), false, func_1(Struct_4(vec4<bool>(false, true, true, false), global1.xy, global2.x), var_1, var_1.b, vec2<bool>(false, true))), -(~vec2<i32>(-46425i, var_1.b.x)) ^ vec2<i32>(firstTrailingBit(2147483647i), global1.x), func_2(-vec4<i32>(1i, var_1.b.x, 38862i, -79094i)).a.x));
}

