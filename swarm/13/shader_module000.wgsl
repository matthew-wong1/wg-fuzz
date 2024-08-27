struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec3<f32>,
    d: vec4<f32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(1u, 13055u);

var<private> global1: vec3<i32>;

var<private> global2: vec3<i32>;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_5, arg_1: vec2<bool>, arg_2: Struct_1) -> u32 {
    let var_0 = 0i;
    var var_1 = ~(-62498i);
    let var_2 = select(select(vec4<bool>((arg_1.x | arg_1.x) || arg_1.x, global1.x < global1.x, _wgslsmith_f_op_f32(max(arg_2.a, -1404f)) != _wgslsmith_f_op_f32(-1219f + -762f), false), !(!vec4<bool>(true, arg_1.x, arg_1.x, arg_1.x)), !vec4<bool>(!arg_1.x, 24186u < global0.x, any(vec2<bool>(true, arg_1.x)), arg_1.x | true)), select(vec4<bool>(true && !arg_1.x, any(!vec4<bool>(false, arg_1.x, arg_1.x, arg_1.x)), _wgslsmith_div_i32(global2.x, var_0) != abs(var_0), true), select(!select(vec4<bool>(arg_1.x, arg_1.x, true, true), vec4<bool>(arg_1.x, true, false, true), arg_1.x), select(!vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), select(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), vec4<bool>(false, false, false, true), arg_1.x), !vec4<bool>(arg_1.x, true, true, true)), !(0u < global0.x)), vec4<bool>(arg_1.x, false, arg_1.x, select(false, all(arg_1), any(vec2<bool>(arg_1.x, true))))), select(vec4<bool>(true, arg_1.x, any(arg_1), true), vec4<bool>(arg_1.x, false, any(arg_1), true), true));
    var var_3 = _wgslsmith_div_vec3_i32(vec3<i32>(arg_2.c.x, -1i, -(-u_input.b | _wgslsmith_mult_i32(arg_2.c.x, u_input.b))), abs(~select(-vec3<i32>(-1i, -19217i, arg_2.c.x), vec3<i32>(-1i, -1i, 2147483647i), var_2.x & arg_1.x)));
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(659f, arg_2.a, 343f)))) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.a, 698f, arg_2.a)))))));
    return arg_2.b.x;
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_2(Struct_1(1215f, _wgslsmith_sub_vec3_u32(abs(~vec3<u32>(0u, global0.x, u_input.a)), ~(~vec3<u32>(global0.x, u_input.a, u_input.a))), ~(~(global2.xy << (vec2<u32>(global0.x, u_input.a) % vec2<u32>(32u))))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-631f + -605f), 378f) * 1000f), vec3<u32>(~func_3(Struct_5(global2.x), vec2<bool>(false, true), Struct_1(465f, vec3<u32>(7633u, 4294967295u, u_input.a), vec2<i32>(-1i, global1.x))), firstLeadingBit(global0.x), u_input.a), vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(-1i, -2147483647i), -7044i, u_input.c.x), global2.x)));
    var_0 = Struct_2(var_0.a, var_0.b);
    let var_1 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-109f + -1865f) * 106f), var_0.b.a))));
    global0 = countOneBits(abs(var_0.a.b.yx)) & abs(~countOneBits(vec2<u32>(4294967295u, global0.x)));
    var var_2 = -1296i;
    return Struct_3(var_0.b, Struct_2(var_0.a, var_0.b));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec2<f32>, arg_2: u32, arg_3: Struct_3) -> i32 {
    let var_0 = vec2<bool>(all(select(vec2<bool>(false, false), vec2<bool>(true, any(vec2<bool>(false, false))), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, true)))), true);
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(arg_1, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(arg_1 * vec2<f32>(arg_1.x, arg_1.x)))))) * _wgslsmith_f_op_vec2_f32(abs(arg_1))), vec2<f32>(-695f, 672f));
    var var_2 = _wgslsmith_add_u32(~global0.x, _wgslsmith_add_u32(40846u & ~(97161u ^ arg_3.a.b.x), 131269u));
    var var_3 = arg_3.b;
    var var_4 = !(!(!select(vec3<bool>(true, true, true), vec3<bool>(var_0.x, var_0.x, var_0.x), !var_0.x)));
    return arg_0.x;
}

fn func_1(arg_0: Struct_4) -> u32 {
    var var_0 = arg_0.b.b & arg_0.b.b;
    var_0 = arg_0.b.b;
    global2 = -_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i) * -_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, global1.x, global1.x), vec3<i32>(u_input.b, -38395i, -1i)), _wgslsmith_mod_vec3_i32(-(~vec3<i32>(2147483647i, global1.x, u_input.c.x)), vec3<i32>(firstLeadingBit(global1.x), -global1.x, u_input.c.x)), vec3<i32>(func_4(select(vec4<i32>(-26085i, 17807i, global2.x, u_input.b), vec4<i32>(u_input.b, global2.x, -2147483647i, -2147483647i), true), vec2<f32>(arg_0.a.a, 321f), countOneBits(u_input.a), func_2()), 42489i, _wgslsmith_dot_vec4_i32(min(vec4<i32>(global2.x, global1.x, -1i, -2147483647i), vec4<i32>(u_input.c.x, arg_0.a.c.x, arg_0.b.c.x, arg_0.b.c.x)), vec4<i32>(-36003i, u_input.b, global2.x, 1i))));
    global2 = vec3<i32>(global2.x, -2147483647i, 19667i);
    global1 = -abs(vec3<i32>(global1.x, global1.x ^ -12360i, arg_0.a.c.x));
    return firstTrailingBit(func_3(Struct_5(global2.x), !select(vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(false, true), false), all(vec2<bool>(true, false))), Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.a.a), arg_0.b.a)), func_2().b.a.b, global1.zx)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-281f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(879f + 400f), -199f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1112f, _wgslsmith_f_op_f32(-1142f + 1095f))), 242f)), ~vec3<u32>(~global0.x, func_1(Struct_4(Struct_1(892f, vec3<u32>(u_input.a, u_input.a, 4294967295u), global1.yz), Struct_1(-167f, vec3<u32>(4294967295u, u_input.a, 67872u), vec2<i32>(global1.x, global1.x)), u_input.a)), 1u) | ~vec3<u32>(22384u, ~4294967295u, 2165u), vec2<i32>(_wgslsmith_dot_vec2_i32(~(~vec2<i32>(2147483647i, global1.x)), global2.zz), _wgslsmith_sub_i32(min(u_input.c.x, ~2147483647i), global2.x)));
    let var_1 = u_input.c.x;
    global0 = _wgslsmith_clamp_vec2_u32(abs(~var_0.b.zz), vec2<u32>(26971u, ~reverseBits(1u)), var_0.b.yz);
    global2 = vec3<i32>(countOneBits(var_1), global1.x, _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(var_0.c.x, var_1, func_2().b.a.c.x)), _wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(abs(vec3<i32>(-2147483647i, var_1, var_0.c.x)), -vec3<i32>(-1i, var_1, -71000i)), -vec3<i32>(var_1, var_1, 16109i))));
    var var_2 = !(all(vec2<bool>(true, false)) | true);
    let var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1149f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(574f - -1166f) * _wgslsmith_div_f32(1557f, 1125f))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(648f, var_0.a, var_0.a))))))))), _wgslsmith_mult_i32(-(~21457i), 14847i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, -271f, 1000f) + vec3<f32>(-1219f, -460f, -537f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, var_0.a, var_0.a, 1561f))))), ~vec4<u32>(var_0.b.x, abs(u_input.a >> (49361u % 32u)), var_0.b.x, global0.x));
}

