struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec3<i32>,
    d: i32,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 32>;

var<private> global1: Struct_3 = Struct_3(Struct_2(4325i, Struct_1(1u), vec3<i32>(84385i, 16705i, 12206i), -561i));

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_2) -> Struct_3 {
    global0 = array<Struct_3, 32>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f));
    let var_1 = Struct_1(_wgslsmith_div_u32(~global1.a.b.a ^ arg_1.b.a, 7453u));
    global0 = array<Struct_3, 32>();
    let var_2 = vec2<bool>(true & all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), _wgslsmith_f_op_f32(select(-416f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(813f)))), true)) > _wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0.x)) + -207f)));
    return global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(11682u, 1u, arg_1.b.a, 1u), vec4<u32>(5803u, arg_1.b.a, global1.a.b.a, arg_1.b.a) >> (vec4<u32>(global1.a.b.a, 4294967295u, var_1.a, 22084u) % vec4<u32>(32u))) ^ ~vec4<u32>(var_1.a, arg_1.b.a, 2624u, 0u), vec4<u32>(var_1.a, min(_wgslsmith_div_u32(10338u, var_1.a), arg_1.b.a), arg_1.b.a, abs(arg_1.b.a))) & firstLeadingBit(_wgslsmith_mod_u32(var_1.a, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.b.a, 0u, 2883u), vec3<u32>(81758u, 1u, global1.a.b.a)), global1.a.b.a))), 32u)];
}

fn func_2(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: f32) -> i32 {
    global0 = array<Struct_3, 32>();
    var var_0 = arg_2.a;
    return 48704i;
}

fn func_3(arg_0: Struct_3) -> vec4<bool> {
    var var_0 = vec3<bool>(arg_0.a.a != reverseBits(func_1(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(219f, -839f, 955f, -1737f))), func_1(vec4<f32>(-816f, -604f, -840f, -620f), Struct_2(u_input.b, global1.a.b, global1.a.c, arg_0.a.c.x)).a).a.c.x), true, false);
    let var_1 = vec2<i32>(1i, abs(~15990i));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -539f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-938f, _wgslsmith_div_f32(500f, 2998f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1255f)) + -341f))), _wgslsmith_f_op_f32(1350f + -1304f), -1147f, _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    var var_3 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, global1.a.b.a), 32u)];
    let var_4 = _wgslsmith_f_op_vec4_f32(ceil(var_2));
    return vec4<bool>(true, true | all(vec4<bool>(var_0.x, true, var_0.x, all(var_0.xz))), false, true);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1030f - 1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1088f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1035f * 2064f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(431f)), _wgslsmith_f_op_f32(f32(-1f) * -1546f))))), _wgslsmith_f_op_f32(min(-745f, 941f))), global1.a);
    let var_0 = ~u_input.a.yw | u_input.c.xy;
    var var_1 = Struct_3(Struct_2(u_input.d, global1.a.b, global1.a.c | abs(firstTrailingBit(global1.a.c)), _wgslsmith_clamp_i32(-29977i, global1.a.d, _wgslsmith_div_i32(global1.a.d, ~1i))));
    var var_2 = Struct_1(firstLeadingBit(_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(var_1.a.b.a, var_1.a.b.a)), vec2<u32>(countOneBits(11583u), abs(15013u)))));
    var var_3 = func_3(Struct_3(Struct_2(min(~global1.a.c.x, u_input.a.x), func_1(vec4<f32>(1000f, -2775f, 567f, -639f), Struct_2(4742i, var_1.a.b, global1.a.c, global1.a.a)).a.b, vec3<i32>(-2147483647i, global1.a.d, -global1.a.d), func_2(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_2.a, 71714u), 32u)], _wgslsmith_mult_vec4_i32(u_input.a, u_input.a), func_1(vec4<f32>(1055f, -1000f, -3439f, -2187f), Struct_2(u_input.c.x, var_1.a.b, vec3<i32>(u_input.c.x, var_0.x, var_1.a.a), -41557i)).a.b, 409f))));
    global1 = global0[_wgslsmith_index_u32(~1u, 32u)];
    var var_4 = var_1.a.b;
    var_3 = select(select(select(vec4<bool>(any(vec3<bool>(var_3.x, var_3.x, var_3.x)), !var_3.x, !var_3.x, select(var_3.x, false, var_3.x)), select(vec4<bool>(true, true, true, true), func_3(global0[_wgslsmith_index_u32(global1.a.b.a, 32u)]), var_3.x), var_3.x), vec4<bool>(!(var_3.x || false), var_3.x, var_3.x, select(false, var_3.x, var_3.x && true)), !(false || var_3.x) && !all(var_3.xyw)), !func_3(func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 849f, 969f, -850f)), Struct_2(0i, global1.a.b, u_input.c, 0i))), select(vec4<bool>(false, false, !var_3.x, var_3.x), select(!(!vec4<bool>(true, var_3.x, var_3.x, var_3.x)), func_3(func_1(vec4<f32>(-1000f, -210f, -2450f, 1118f), Struct_2(u_input.d, global1.a.b, var_1.a.c, global1.a.a))), _wgslsmith_f_op_f32(f32(-1f) * -1216f) < _wgslsmith_f_op_f32(floor(560f))), var_3.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(~(~(~1u)), _wgslsmith_dot_vec4_u32(select(_wgslsmith_sub_vec4_u32(vec4<u32>(var_4.a, 16919u, 0u, 0u), vec4<u32>(var_1.a.b.a, 40076u, var_1.a.b.a, var_1.a.b.a)), ~vec4<u32>(var_1.a.b.a, 4294967295u, var_1.a.b.a, 38418u), vec4<bool>(var_3.x, false, true, true)), ~abs(vec4<u32>(global1.a.b.a, global1.a.b.a, global1.a.b.a, 48704u)))), abs(20636i), countOneBits(_wgslsmith_mult_vec2_i32(~_wgslsmith_mod_vec2_i32(vec2<i32>(var_0.x, 1i), vec2<i32>(17180i, global1.a.d)), func_1(vec4<f32>(-1000f, 1005f, 480f, 636f), global1.a).a.c.zx)), max(32139u, global1.a.b.a));
}

