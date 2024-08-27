struct Struct_1 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(vec4<f32>(-465f, -923f, -632f, -252f)), Struct_1(vec4<f32>(-813f, 309f, -620f, -504f)), Struct_1(vec4<f32>(-349f, -1293f, -139f, 880f)), Struct_1(vec4<f32>(1297f, 612f, 174f, 1132f)), Struct_1(vec4<f32>(479f, -710f, 487f, -151f)), Struct_1(vec4<f32>(-808f, 731f, -255f, -127f)), Struct_1(vec4<f32>(1313f, 1000f, 219f, 852f)), Struct_1(vec4<f32>(1367f, 529f, 169f, -1448f)), Struct_1(vec4<f32>(123f, 361f, -449f, -790f)), Struct_1(vec4<f32>(-661f, -1596f, 1382f, 230f)));

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<f32>, arg_1: f32, arg_2: bool, arg_3: Struct_1) -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(arg_3.a.xxy, vec3<f32>(1000f, arg_1, 1258f), arg_2))))))), vec3<f32>(arg_1, _wgslsmith_div_f32(arg_3.a.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1)))), select(select(vec3<bool>(!arg_2, arg_2, !arg_2), !vec3<bool>(arg_2, arg_2, arg_2), vec3<bool>(true, true, true)), vec3<bool>(arg_0.x != -689f, arg_2, arg_2 | true), vec3<bool>(all(select(vec3<bool>(true, arg_2, false), vec3<bool>(false, true, arg_2), true)), -841f > _wgslsmith_f_op_f32(abs(arg_1)), true))));
    let var_1 = ~(~vec3<u32>(u_input.a.x & u_input.a.x, abs(1u), 10940u));
    var var_2 = Struct_1(arg_3.a);
    var_2 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a.x, 0u), 10u)];
    var_2 = arg_3;
    return 42804i;
}

fn func_2() -> vec3<bool> {
    var var_0 = global0[_wgslsmith_index_u32(min(u_input.a.x, u_input.a.x), 10u)];
    let var_1 = _wgslsmith_div_i32(38222i, func_3(_wgslsmith_div_vec2_f32(var_0.a.xz, var_0.a.wy), var_0.a.x, true, Struct_1(var_0.a)));
    let var_2 = -firstLeadingBit(reverseBits(_wgslsmith_clamp_vec2_i32(vec2<i32>(var_1, var_1), vec2<i32>(13236i, 0i), -vec2<i32>(var_1, var_1))));
    var var_3 = _wgslsmith_div_vec3_i32(~_wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_1, var_2.x, 0i), vec3<i32>(2147483647i, 0i, -50559i), vec3<i32>(-2147483647i, var_2.x, var_1)), _wgslsmith_sub_vec3_i32(vec3<i32>(var_1, -19406i, var_1), vec3<i32>(var_2.x, -31938i, 4593i))) | -(vec3<i32>(var_1, -1i, 1i) << (_wgslsmith_add_vec3_u32(vec3<u32>(0u, u_input.a.x, 1622u), vec3<u32>(38814u, 4294967295u, 4294967295u)) % vec3<u32>(32u))), _wgslsmith_clamp_vec3_i32(abs(vec3<i32>(-38095i, -2147483647i, 0i)), vec3<i32>(var_1, var_2.x, 33031i) | _wgslsmith_clamp_vec3_i32(vec3<i32>(var_2.x, var_2.x, 19287i), vec3<i32>(2147483647i, var_1, -1i), vec3<i32>(-2147483647i, var_2.x, 0i)), vec3<i32>(~var_1, _wgslsmith_dot_vec3_i32(vec3<i32>(-20278i, var_1, -16271i), vec3<i32>(2375i, var_1, var_2.x)), var_1)) | max(vec3<i32>(-var_2.x, countOneBits(var_2.x), 0i), max(vec3<i32>(var_2.x, 11268i, var_2.x), max(vec3<i32>(var_2.x, var_1, var_2.x), vec3<i32>(var_2.x, -2147483647i, var_1)))));
    var var_4 = ~(~u_input.a.x);
    return select(select(vec3<bool>(true, true, true), !select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), false), vec3<bool>(true, false, false)), select(!(55851u > u_input.a.x), true, false)), !(!vec3<bool>(true, any(vec2<bool>(false, false)), any(vec4<bool>(true, false, false, false)))), vec3<bool>(!all(vec3<bool>(true, true, true)), false, all(vec3<bool>(all(vec4<bool>(true, true, false, true)), true, true))));
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    let var_0 = select(!(!select(vec3<bool>(true, true, true), func_2(), true)), select(vec3<bool>(true, all(vec4<bool>(true, true, true, true)), true), !func_2(), true), func_2());
    var var_1 = arg_2.a;
    let var_2 = -2147483647i;
    var var_3 = ~_wgslsmith_sub_vec2_u32(firstLeadingBit(vec2<u32>(4294967295u, u_input.a.x)), abs(_wgslsmith_mult_vec2_u32(u_input.a, vec2<u32>(u_input.a.x, 71860u)))) & ~vec2<u32>(u_input.a.x, ~_wgslsmith_mod_u32(u_input.a.x, u_input.a.x));
    var_3 = vec2<u32>(0u, 21793u);
    return -1185f;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(-798f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(316f + -1110f), _wgslsmith_f_op_f32(func_1(u_input.a.x, global0[_wgslsmith_index_u32(u_input.a.x, 10u)], global0[_wgslsmith_index_u32(17731u, 10u)], Struct_1(vec4<f32>(-1000f, -1000f, 225f, -371f)))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-249f + 878f)))), -1140f));
}

