struct Struct_1 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec3<bool>;

var<private> global2: vec4<u32> = vec4<u32>(1u, 81598u, 0u, 23541u);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    global0 = Struct_1(u_input.a, global0.b);
    var var_0 = Struct_1(-2147483647i, -874f);
    global0 = arg_0;
    global0 = Struct_1(1i, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_0.b)), 224f)), global1.x)));
    var var_1 = Struct_1(max(arg_0.a, -17709i), 891f);
    return Struct_1(_wgslsmith_mult_i32(_wgslsmith_mod_i32(~(arg_0.a ^ var_1.a), -(~arg_0.a)), 0i), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.b + 156f), arg_0.b, ~(~global2.x) < ~(~global2.x))));
}

fn func_3(arg_0: Struct_1) -> u32 {
    return ~firstLeadingBit(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(1u, 22587u, global2.x, global2.x)), abs(vec4<u32>(11201u, 16388u, global2.x, 44935u))));
}

fn func_1(arg_0: i32, arg_1: i32) -> f32 {
    let var_0 = ~global2.x;
    var var_1 = global2.yy;
    let var_2 = vec2<i32>(u_input.a, ~max(global0.a, firstTrailingBit(-15722i))) >> (global2.zz % vec2<u32>(32u));
    let var_3 = func_2(Struct_1(~62743i, global0.b));
    global2 = firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 20852u, var_1.x, global2.x), vec4<u32>(28192u, var_0, 10140u, 47486u)), 1u, global2.x ^ 0u, _wgslsmith_mult_u32(0u, var_1.x)), vec4<u32>(var_1.x, 9898u, 15772u, 22310u) << (_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 0u, 1u, var_1.x), vec4<u32>(var_0, var_1.x, var_0, 63278u)) % vec4<u32>(32u)))) & max(firstTrailingBit(~(~vec4<u32>(0u, 1u, var_1.x, 57819u))), vec4<u32>(global2.x, _wgslsmith_sub_u32(var_0, global2.x), countOneBits(4294967295u), func_3(var_3)) << (vec4<u32>(global2.x & 15604u, 1u, ~global2.x, 0u) % vec4<u32>(32u)));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_3.b, 100f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.b), _wgslsmith_f_op_f32(floor(1000f))), _wgslsmith_f_op_f32(f32(-1f) * -595f))), _wgslsmith_f_op_f32(func_1(-_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 12567i, 24595i), vec3<i32>(23003i, 2147483647i, global0.a)), 1i))));
    var var_1 = func_2(func_2(func_2(Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(global0.a, -52724i), vec2<i32>(0i, u_input.a)), _wgslsmith_f_op_f32(max(1787f, 1950f))))));
    var var_2 = select(select(select(select(vec3<bool>(false, global1.x, false), vec3<bool>(false, false, true), false), !select(vec3<bool>(global1.x, global1.x, false), vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(false, global1.x, false)), vec3<bool>(global2.x >= 4294967295u, var_0.x > -1739f, true)), select(vec3<bool>(!global1.x, global1.x, select(global1.x, global1.x, false)), !select(vec3<bool>(true, global1.x, false), vec3<bool>(global1.x, global1.x, true), vec3<bool>(global1.x, global1.x, global1.x)), select(vec3<bool>(true, global1.x, true), select(vec3<bool>(false, false, global1.x), vec3<bool>(true, global1.x, false), false), !vec3<bool>(true, true, global1.x))), global1.x), vec3<bool>(true, true, true), !(!(global2.x >= countOneBits(global2.x))));
    let var_3 = vec2<i32>(u_input.a, ~var_1.a);
    var var_4 = Struct_1(2147483647i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.b))));
    var var_5 = ~select(~(_wgslsmith_mod_u32(0u, global2.x) & min(global2.x, global2.x)), func_3(func_2(Struct_1(1i, 958f))), true);
    var var_6 = Struct_1(~_wgslsmith_add_i32(select(19245i, -var_1.a, true), -1117i), func_2(func_2(func_2(Struct_1(0i, 809f)))).b);
    let var_7 = func_2(Struct_1(-19875i, var_4.b));
    let x = u_input.a;
    s_output = StorageBuffer(~(var_1.a << (global2.x % 32u)) | min(_wgslsmith_clamp_i32(global0.a, 0i, var_6.a), _wgslsmith_dot_vec2_i32(var_3, vec2<i32>(15249i, -21377i) >> (vec2<u32>(4294967295u, global2.x) % vec2<u32>(32u)))));
}

