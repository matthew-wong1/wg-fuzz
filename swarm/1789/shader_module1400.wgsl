struct Struct_1 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<f32>,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec2<u32>, arg_1: u32, arg_2: vec4<f32>, arg_3: Struct_1) -> i32 {
    var var_0 = arg_3;
    var var_1 = _wgslsmith_f_op_f32(arg_2.x * _wgslsmith_f_op_f32(461f * 2042f));
    var var_2 = ~2147483647i;
    let var_3 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_2.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_2.x))))));
    let var_4 = countOneBits(~vec3<u32>(firstTrailingBit(arg_1), ~(4294967295u >> (arg_1 % 32u)), ~7793u));
    return 0i;
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = arg_0.a.x;
    let var_1 = arg_0.a.xxy;
    let var_2 = vec3<i32>(func_3(~(~vec2<u32>(u_input.a, u_input.a)), u_input.a, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(463f, -139f, 1387f, 809f)))), Struct_1(arg_0.a)), func_3(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(1u, 4294967295u)), firstLeadingBit(1u)) >> (countOneBits(firstLeadingBit(vec2<u32>(77850u, 41415u))) % vec2<u32>(32u)), abs(u_input.c), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1564f, -1163f, 2156f, 1710f)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1403f, 233f, -1384f, 1683f))), Struct_1(~(-arg_0.a))), -1i);
    var_0 = _wgslsmith_add_i32(-36127i | _wgslsmith_dot_vec2_i32(firstTrailingBit(select(var_1.yy, vec2<i32>(27200i, -6637i), vec2<bool>(true, true))), abs(abs(var_1.xy))), max(-1i, arg_0.a.x));
    var_0 = -32184i;
    return arg_0;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: bool) -> vec3<bool> {
    let var_0 = ~_wgslsmith_sub_vec3_u32(reverseBits(_wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(17455u, 14531u, u_input.a), vec3<u32>(u_input.a, 1u, u_input.c)), vec3<u32>(0u, 28635u, u_input.c) & vec3<u32>(30180u, u_input.c, 58201u))), firstTrailingBit(firstTrailingBit(vec3<u32>(u_input.c, u_input.c, u_input.a))));
    let var_1 = firstLeadingBit(~(~_wgslsmith_sub_u32(reverseBits(1u), u_input.c)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(931f - -217f) + _wgslsmith_f_op_f32(f32(-1f) * -1139f)))))));
    return vec3<bool>(arg_3, !(select(u_input.b, arg_1.a.x << (u_input.a % 32u), true) < arg_1.a.x), !any(select(!vec3<bool>(false, arg_3, arg_3), !vec3<bool>(arg_3, true, arg_3), vec3<bool>(false, arg_3, true))));
}

fn func_1() -> vec3<bool> {
    var var_0 = any(select(select(vec3<bool>(true, true, true), func_4(func_2(Struct_1(vec4<i32>(u_input.b, -1i, u_input.b, u_input.b))), func_2(Struct_1(vec4<i32>(u_input.b, u_input.b, 2147483647i, -1i))), u_input.b & u_input.b, true), vec3<bool>(true, true, true)), select(func_4(func_2(Struct_1(vec4<i32>(u_input.b, 2147483647i, -62994i, u_input.b))), func_2(Struct_1(vec4<i32>(-2147483647i, u_input.b, 69386i, 2147483647i))), u_input.b, false), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), true), true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), false)), vec3<bool>(false, true, true)));
    var_0 = false;
    let var_1 = vec2<f32>(-1474f, 252f);
    var_0 = 37225u <= u_input.a;
    let var_2 = Struct_1(-vec4<i32>(13105i, -35275i, i32(-1i) * -20597i, i32(-1i) * -1i));
    return func_4(func_2(var_2), var_2, -527i, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1335f))) * _wgslsmith_f_op_f32(1270f + 1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-938f, 554f))))), ~(-1i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(2109f, -224f, 1057f) - vec3<f32>(976f, 258f, -555f)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-3122f, 1924f, -195f), vec3<f32>(530f, -949f, -210f))))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(201f, -800f)), _wgslsmith_div_f32(-455f, _wgslsmith_div_f32(281f, 2225f)), -569f)), ~firstLeadingBit(7772u) ^ ~(~_wgslsmith_add_u32(8024u, u_input.c)), ~(~vec2<u32>(~u_input.a, u_input.a ^ u_input.a)));
}

