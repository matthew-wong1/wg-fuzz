struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec3<f32> = vec3<f32>(351f, 661f, -2175f);

var<private> global2: bool;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: Struct_1, arg_1: vec2<u32>) -> Struct_1 {
    let var_0 = arg_0.a;
    return arg_0;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec3<bool> {
    let var_0 = arg_1;
    global2 = true;
    var var_1 = 498f;
    var_1 = global1.x;
    let var_2 = !vec2<bool>(true || !var_0.a, arg_0.a);
    return !select(!vec3<bool>(true, var_2.x, func_2(Struct_1(var_0.a, vec4<u32>(u_input.c, 11274u, 8934u, 47826u), var_0.c), u_input.b.yz).a), !select(vec3<bool>(arg_1.a, arg_0.a, arg_1.a), vec3<bool>(arg_0.a, var_0.a, true), var_2.x), any(vec3<bool>(all(vec4<bool>(true, true, arg_1.a, true)), true, var_2.x)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> vec3<bool> {
    var var_0 = _wgslsmith_dot_vec2_u32(~select(arg_0.b.xz, arg_0.b.wz, vec2<bool>(arg_1.a, !arg_2)), ~(_wgslsmith_add_vec2_u32(~vec2<u32>(arg_1.b.x, u_input.b.x), _wgslsmith_mod_vec2_u32(vec2<u32>(arg_1.b.x, arg_0.b.x), arg_0.b.zy)) << (_wgslsmith_sub_vec2_u32(~arg_0.b.yz, firstLeadingBit(arg_0.b.yx)) % vec2<u32>(32u))));
    var var_1 = ~vec4<u32>(1u, u_input.a, 0u, u_input.c);
    return select(select(!func_3(Struct_1(arg_0.a, arg_0.b, arg_0.c), func_2(Struct_1(false, vec4<u32>(arg_0.b.x, var_1.x, arg_0.b.x, 1u), arg_0.c), arg_1.b.zz)), !func_3(Struct_1(true, arg_0.b, arg_1.c), arg_1), select(!select(vec3<bool>(arg_2, arg_2, arg_0.a), vec3<bool>(arg_1.a, true, true), true), func_3(Struct_1(true, vec4<u32>(u_input.b.x, 12000u, var_1.x, arg_0.b.x), arg_1.c), Struct_1(arg_0.a, arg_0.b, -1i)), all(select(vec4<bool>(arg_0.a, arg_1.a, true, false), vec4<bool>(true, arg_2, true, false), vec4<bool>(false, true, arg_0.a, true))))), vec3<bool>(arg_0.a, -_wgslsmith_div_i32(arg_1.c, arg_0.c) <= (~arg_1.c << ((arg_0.b.x << (u_input.b.x % 32u)) % 32u)), arg_2), !select(arg_2, true, true) & true);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~u_input.a;
    global2 = false;
    global0 = 1u;
    var var_0 = -17993i ^ firstTrailingBit(select(_wgslsmith_div_i32(23261i >> (u_input.a % 32u), -1i), 28486i, any(vec4<bool>(false, false, true, true)) || true));
    let var_1 = select(!select(vec3<bool>(global1.x != -1869f, true, u_input.b.x > 44978u), select(func_1(Struct_1(false, vec4<u32>(u_input.b.x, u_input.b.x, u_input.a, u_input.c), -2147483647i), Struct_1(true, vec4<u32>(u_input.b.x, 6396u, 83502u, u_input.c), -2147483647i), true), vec3<bool>(false, true, true), vec3<bool>(true, false, true)), true), !(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), func_3(Struct_1(true, vec4<u32>(u_input.b.x, u_input.a, 0u, u_input.c), 2147483647i), Struct_1(false, vec4<u32>(u_input.a, 24821u, 65018u, u_input.b.x), 0i)).x)), vec3<bool>(true, !(true && func_1(Struct_1(false, vec4<u32>(u_input.a, 60658u, 19862u, 1u), -23154i), Struct_1(true, vec4<u32>(9343u, 60638u, 6713u, 59316u), -1i), true).x), true));
    var_0 = ~_wgslsmith_mod_i32(firstLeadingBit(abs(min(-2147483647i, -41618i))), _wgslsmith_dot_vec2_i32(~vec2<i32>(1i, 1i), _wgslsmith_mod_vec2_i32(vec2<i32>(-1i, -1i), _wgslsmith_clamp_vec2_i32(vec2<i32>(0i, 1i), vec2<i32>(30848i, -19744i), vec2<i32>(2147483647i, 0i)))));
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)) + _wgslsmith_f_op_f32(sign(global1.x))), vec4<i32>(~(-5218i), firstTrailingBit(firstLeadingBit(45191i)), -_wgslsmith_mod_i32(61433i, 21728i), select(2147483647i, 0i, var_1.x)) | min(_wgslsmith_add_vec4_i32(min(vec4<i32>(-2147483647i, 0i, -31852i, 0i), vec4<i32>(1i, -1i, -2147483647i, -1i)), select(vec4<i32>(23783i, -2147483647i, 3524i, 0i), vec4<i32>(-2147483647i, 2147483647i, 0i, 38202i), vec4<bool>(true, var_1.x, var_1.x, var_1.x))), vec4<i32>(_wgslsmith_mod_i32(-679i, 1i), _wgslsmith_mod_i32(74354i, 1i), 0i << (1u % 32u), _wgslsmith_div_i32(-125i, -1i))));
}

