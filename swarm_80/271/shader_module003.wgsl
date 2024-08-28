struct Struct_1 {
    a: vec3<f32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: f32,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-28437i, -43352i);

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: bool) -> bool {
    return true;
}

fn func_2(arg_0: i32, arg_1: u32) -> vec2<bool> {
    let var_0 = !select(vec4<bool>(true, true | func_3(vec4<i32>(arg_0, global0.x, -9956i, u_input.b.x), Struct_1(vec3<f32>(650f, 135f, -237f), 44247u), false), func_3(min(vec4<i32>(global0.x, -29275i, 67786i, -32385i), vec4<i32>(-2147483647i, 5185i, global0.x, -1i)), Struct_1(vec3<f32>(869f, -784f, 1445f), arg_1), true), true), select(vec4<bool>(u_input.b.x < u_input.b.x, select(false, true, true), true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), func_3(-vec4<i32>(arg_0, u_input.b.x, -7961i, 0i), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(268f, -1161f, -760f) * vec3<f32>(-1750f, -249f, 403f)), ~0u), false));
    let var_1 = ~abs(max(firstTrailingBit(~23101u), arg_1));
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1184f, 568f, 118f))) * vec3<f32>(509f, 470f, -876f))))), 1u);
    var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(var_2.a * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-250f)) + _wgslsmith_f_op_f32(var_2.a.x * var_2.a.x)), -1399f, var_2.a.x)), 1u >> ((~(var_1 ^ 80134u) >> (arg_1 % 32u)) % 32u));
    var var_3 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(var_2.a)) * vec3<f32>(306f, -282f, -838f)), var_2.b), select(var_0.yx, select(select(!var_0.xx, vec2<bool>(true, true), !var_0.x), !vec2<bool>(var_0.x, var_0.x), vec2<bool>(any(var_0.yyw), var_2.a.x < -653f)), var_0.ww), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_2.a.x))), var_0.zx);
    return vec2<bool>(true, true);
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_2 {
    global0 = u_input.a;
    let var_0 = 1438f;
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_1.a.x, -261f, -1220f)))))), ~abs(33640u));
    let var_2 = arg_1;
    var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1333f, -185f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1961f), 1167f) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(248f, var_1.a.x, true))))), -878f), reverseBits(_wgslsmith_sub_u32(1u, arg_2.b)));
    return Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-var_1.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_2.a.x, -644f, -1300f)))))), ~_wgslsmith_dot_vec4_u32(vec4<u32>(122429u, 56685u, arg_1.b, 0u), vec4<u32>(4294967295u, 21421u, var_1.b, var_1.b)) << (~(~56726u) % 32u)), !select(vec2<bool>(true, true), select(vec2<bool>(true, true), func_2(global0.x, 4294967295u), vec2<bool>(true, true)), true), var_1.a.x, !select(!select(vec2<bool>(false, true), vec2<bool>(false, false), true), vec2<bool>(all(vec3<bool>(false, false, true)), all(vec3<bool>(true, true, true))), select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec2<bool>(false, false)))));
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: f32) -> vec2<u32> {
    let var_0 = !func_1(~(_wgslsmith_sub_vec3_u32(vec3<u32>(arg_1, arg_0.a.b, 4294967295u), vec3<u32>(1u, arg_1, 108145u)) >> ((vec3<u32>(arg_0.a.b, arg_0.a.b, arg_1) ^ vec3<u32>(arg_1, 0u, arg_1)) % vec3<u32>(32u))), func_1(firstTrailingBit(~vec3<u32>(5079u, arg_0.a.b, 1u)), func_1(abs(vec3<u32>(arg_0.a.b, 1u, 4294967295u)), arg_0.a, func_1(vec3<u32>(arg_1, arg_0.a.b, arg_0.a.b), Struct_1(vec3<f32>(arg_0.c, 1350f, -1460f), arg_0.a.b), arg_0.a).a).a, Struct_1(arg_0.a.a, _wgslsmith_div_u32(arg_0.a.b, arg_1))).a, arg_0.a).b.x;
    let var_1 = 4294967295u;
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.a.a.yz) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.a.a.zx)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a.a.x, arg_0.c) * arg_0.a.a.zx) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-107f, arg_2) + vec2<f32>(arg_2, arg_2)), _wgslsmith_div_vec2_f32(arg_0.a.a.yy, vec2<f32>(-1000f, 1052f))))));
    var var_3 = abs(min(~(~(1u >> (arg_1 % 32u))), ~_wgslsmith_div_u32(abs(0u), var_1 | arg_0.a.b)));
    let var_4 = u_input.a;
    return firstLeadingBit(select(reverseBits(~vec2<u32>(arg_1, arg_0.a.b)) << (firstTrailingBit(~vec2<u32>(arg_0.a.b, arg_1)) % vec2<u32>(32u)), vec2<u32>(0u, ~(~var_1)), arg_0.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.a;
    var var_0 = u_input.a;
    var_0 = _wgslsmith_div_vec2_i32(select(u_input.a << (func_4(func_1(vec3<u32>(0u, 17435u, 1u), Struct_1(vec3<f32>(-1132f, -1128f, 508f), 4294967295u), Struct_1(vec3<f32>(-794f, -800f, 1306f), 1u)), 4294967295u, _wgslsmith_f_op_f32(-313f - 1000f)) % vec2<u32>(32u)), vec2<i32>(1i, 14797i) >> (reverseBits(~vec2<u32>(4294967295u, 4294967295u)) % vec2<u32>(32u)), select(all(vec4<bool>(true, true, true, false)), any(vec3<bool>(true, true, true)), all(vec2<bool>(true, true)))), max(u_input.a, u_input.a));
    var var_1 = ~(~vec2<u32>(1u, 1u));
    var_0 = abs(vec2<i32>(global0.x, reverseBits(_wgslsmith_mult_i32(var_0.x, _wgslsmith_clamp_i32(-2147483647i, global0.x, global0.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(firstTrailingBit(countOneBits(var_1.x >> (var_1.x % 32u))), var_1.x));
}

