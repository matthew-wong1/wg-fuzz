struct Struct_1 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> i32 {
    let var_0 = min(firstLeadingBit(vec3<u32>(firstLeadingBit(36549u), 1u, ~4294967295u)), firstLeadingBit(firstTrailingBit(abs(~vec3<u32>(u_input.a, 1u, 1u)))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-412f, _wgslsmith_f_op_f32(max(-594f, -114f)), 308f))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1136f, var_1.a.x, -995f))));
    let var_3 = vec4<i32>(1i, 17689i, ~select(1i, 1i, any(vec4<bool>(true, true, false, global0.x))), 0i);
    let var_4 = var_2;
    return select(_wgslsmith_add_i32(_wgslsmith_sub_i32(~1i, var_3.x), _wgslsmith_dot_vec4_i32(vec4<i32>(~var_3.x, abs(var_3.x), 65713i, _wgslsmith_dot_vec2_i32(var_3.wy, var_3.yw)), var_3 ^ var_3)), _wgslsmith_add_i32(firstLeadingBit(-40894i), var_3.x), true);
}

fn func_2(arg_0: vec3<u32>) -> vec4<i32> {
    let var_0 = 101089u;
    var var_1 = _wgslsmith_mult_vec3_i32(firstTrailingBit(reverseBits(firstTrailingBit(vec3<i32>(-18693i, 0i, -2147483647i)) << (arg_0 % vec3<u32>(32u)))), ~vec3<i32>(~(-67587i) << (_wgslsmith_mult_u32(54534u, var_0) % 32u), func_3() << (~u_input.a % 32u), ~(-1i)));
    let var_2 = ~countOneBits(var_1.x);
    global0 = !(!vec2<bool>(global0.x, false));
    let var_3 = !select(vec3<bool>(!global0.x, all(select(vec4<bool>(global0.x, true, false, global0.x), vec4<bool>(true, true, global0.x, true), vec4<bool>(global0.x, false, false, false))), true), !vec3<bool>(true, !global0.x, !global0.x), select(vec3<bool>(global0.x | global0.x, global0.x, global0.x & false), vec3<bool>(true, true, true), select(vec3<bool>(true, true, global0.x), select(vec3<bool>(true, global0.x, global0.x), vec3<bool>(global0.x, global0.x, true), vec3<bool>(true, global0.x, global0.x)), global0.x)));
    return -reverseBits(~vec4<i32>(-var_1.x, var_2, ~9558i, ~var_2));
}

fn func_1(arg_0: vec2<f32>, arg_1: u32, arg_2: f32, arg_3: Struct_1) -> vec3<f32> {
    let var_0 = true;
    let var_1 = -func_2(vec3<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 0u, u_input.a, arg_1), vec4<u32>(4294967295u, 4294967295u, 47613u, u_input.a)), ~(u_input.a << (4294967295u % 32u)), 4294967295u & arg_1));
    let var_2 = ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, ~(~u_input.a), abs(1u >> (u_input.a % 32u)), arg_1), _wgslsmith_mult_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(arg_1, arg_1, arg_1, arg_1), vec4<u32>(1u, u_input.a, arg_1, u_input.a)), vec4<u32>(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, 1u, arg_1), vec4<u32>(u_input.a, u_input.a, arg_1, 69157u)), ~arg_1, ~0u)));
    let var_3 = _wgslsmith_mult_i32(_wgslsmith_add_i32(i32(-1i) * -var_1.x, _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(var_1.wwx, vec3<i32>(var_1.x, 22611i, 6064i)), -var_1.x) ^ 1i), ~(-(~var_1.x)));
    global0 = vec2<bool>(true, global0.x);
    return _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, 627f, arg_0.x))) - vec3<f32>(-175f, _wgslsmith_f_op_f32(f32(-1f) * -1367f), arg_0.x)), vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_3.a.x - _wgslsmith_f_op_f32(-1000f + arg_2)), _wgslsmith_f_op_f32(-arg_3.a.x), true)), 2164f, arg_3.a.x), select(select(vec3<bool>(any(vec2<bool>(var_0, global0.x)), any(vec4<bool>(var_0, true, global0.x, var_0)), 65516u >= var_2), vec3<bool>(true, !global0.x, any(vec3<bool>(global0.x, false, false))), vec3<bool>(var_0, true, !var_0)), vec3<bool>(true, !var_0, !(!global0.x)), var_0)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<bool>) -> bool {
    var var_0 = arg_0.a;
    let var_1 = arg_2;
    var var_2 = !arg_2.x;
    var var_3 = vec2<i32>(select(func_2(vec3<u32>(4294967295u, u_input.a, 6691u)).x | _wgslsmith_mult_i32(-2147483647i, 1i), _wgslsmith_dot_vec4_i32(~vec4<i32>(0i, 2147483647i, 63991i, 22127i), vec4<i32>(1i, 1i, 1i, 1i)), true) ^ 1864i, ~firstLeadingBit(-2147483647i));
    let var_4 = select(_wgslsmith_add_i32(var_3.x | func_3(), var_3.x), 55299i, !var_1.x);
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec2<bool>(true, all(select(!select(vec3<bool>(false, true, global0.x), vec3<bool>(true, true, false), vec3<bool>(true, false, global0.x)), vec3<bool>(true, false, global0.x), true)));
    var var_0 = _wgslsmith_sub_vec3_u32(~(~vec3<u32>(70633u, 58011u, ~4187u)), ~vec3<u32>(~(~4294967295u), u_input.a, 0u));
    global0 = select(vec2<bool>(func_4(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(933f, -305f, 949f) + vec3<f32>(216f, 961f, 836f))), Struct_1(_wgslsmith_f_op_vec3_f32(func_1(vec2<f32>(-1000f, -1089f), var_0.x, -110f, Struct_1(vec3<f32>(-189f, 1040f, -1368f))))), vec3<bool>(true, true, true && global0.x)), (_wgslsmith_f_op_f32(step(1765f, 1136f)) < 472f) & global0.x), select(!select(vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, true), vec2<bool>(global0.x, false)), select(!select(vec2<bool>(global0.x, true), vec2<bool>(global0.x, global0.x), vec2<bool>(true, global0.x)), select(select(vec2<bool>(global0.x, global0.x), vec2<bool>(false, true), vec2<bool>(global0.x, global0.x)), select(vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, global0.x), vec2<bool>(true, global0.x)), true), select(vec2<bool>(true, false), select(vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, global0.x), vec2<bool>(true, global0.x)), global0.x)), vec2<bool>(true, global0.x)), !(!vec2<bool>(all(vec3<bool>(global0.x, global0.x, global0.x)), any(vec4<bool>(true, global0.x, false, false)))));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1769f) + -902f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -563f)) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(1f))))), _wgslsmith_f_op_f32(f32(-1f) * -461f), _wgslsmith_f_op_f32(f32(-1f) * -1382f));
    var_0 = ~vec3<u32>(_wgslsmith_mod_u32(abs(u_input.a), ~u_input.a) >> (abs(reverseBits(var_0.x)) % 32u), _wgslsmith_div_u32(1u, 19192u << (u_input.a % 32u)), _wgslsmith_add_u32(~var_0.x, ~_wgslsmith_add_u32(0u, var_0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(u_input.a));
}

