struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: bool,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<u32>,
    d: vec3<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32) -> bool {
    var var_0 = Struct_1(!vec4<bool>(true, true, !any(vec2<bool>(true, true)), true), ~abs(_wgslsmith_clamp_i32(select(u_input.e.x, -2147483647i, true), -7454i, u_input.e.x)), (_wgslsmith_sub_i32(_wgslsmith_clamp_i32(14620i, 0i, 36641i), arg_0 | -74449i) ^ -11420i) != u_input.e.x, u_input.e.wzx, select(u_input.c.zwz, ~vec3<u32>(u_input.d.x, _wgslsmith_div_u32(u_input.a.x, 4294967295u), ~0u), !any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)))));
    var_0 = Struct_1(var_0.a, -53679i, all(vec3<bool>(var_0.c, var_0.a.x, var_0.e.x == ~u_input.c.x)), vec3<i32>(u_input.e.x, arg_0, 2940i) ^ (vec3<i32>(-u_input.e.x, -var_0.d.x, arg_0) | var_0.d), u_input.c.yxy);
    var_0 = Struct_1(var_0.a, _wgslsmith_clamp_i32(~2147483647i, u_input.e.x, ~(2147483647i << (_wgslsmith_mod_u32(0u, var_0.e.x) % 32u))), all(vec3<bool>(any(select(var_0.a, var_0.a, false)), var_0.c, true)), -u_input.e.xzy, ~(~(~u_input.c.wwz)));
    let var_1 = Struct_2(Struct_1(!var_0.a, 2162i, !(!(var_0.a.x || false)), vec3<i32>(14625i, u_input.e.x, reverseBits(0i) << (firstLeadingBit(69177u) % 32u)), var_0.e));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1450f - 1282f) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(426f + _wgslsmith_f_op_f32(max(110f, 1121f)))))), 281f);
    return var_1.a.c;
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: Struct_2) -> bool {
    let var_0 = 62043u;
    let var_1 = ~var_0;
    let var_2 = _wgslsmith_div_u32(0u, 72320u);
    let var_3 = arg_2;
    let var_4 = !arg_2.a.c && !arg_2.a.a.x;
    return any(vec4<bool>(func_3(1i), var_3.a.a.x, _wgslsmith_f_op_f32(min(-727f, -181f)) <= _wgslsmith_f_op_f32(round(306f)), var_4)) || true;
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: i32, arg_3: vec3<bool>) -> Struct_1 {
    var var_0 = _wgslsmith_mult_vec3_u32(vec3<u32>(63943u, arg_1.e.x << (u_input.b % 32u), _wgslsmith_div_u32(u_input.d.x, countOneBits(4294967295u))), select(~_wgslsmith_sub_vec3_u32(arg_1.e, vec3<u32>(u_input.c.x, u_input.a.x, 69949u)), ~vec3<u32>(arg_1.e.x, ~u_input.d.x, 0u), true));
    let var_1 = Struct_2(arg_1);
    let var_2 = var_1;
    var var_3 = !vec3<bool>(var_1.a.a.x, any(!(!arg_3.yy)), func_2(false, var_1.a.c && arg_0.x, var_1));
    var var_4 = var_2.a.e.xy;
    return Struct_1(vec4<bool>(any(var_2.a.a.ywy), func_3(~var_1.a.d.x) & var_1.a.a.x, all(!vec4<bool>(true, false, var_2.a.c, true)), all(vec4<bool>(any(var_1.a.a), true, true, -18158i <= u_input.e.x))), abs(~_wgslsmith_div_i32(abs(u_input.e.x), reverseBits(23556i))), true, countOneBits(min(-vec3<i32>(13777i, var_2.a.d.x, -1036i), var_2.a.d & var_2.a.d)), vec3<u32>(4294967295u, ~var_1.a.e.x, ~(~var_0.x) & arg_1.e.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    let var_1 = func_1(vec4<bool>(false, u_input.d.x <= u_input.c.x, all(vec2<bool>(all(vec3<bool>(true, true, false)), true)), true), Struct_1(vec4<bool>(true & any(vec3<bool>(false, true, true)), ~u_input.c.x < ~1u, true, false), reverseBits(u_input.e.x), !(!any(vec2<bool>(false, true))), vec3<i32>(-1i) * -u_input.e.xzx, u_input.a.xww), u_input.e.x, vec3<bool>(true, any(vec2<bool>(true, true)), any(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 1000f, -(i32(-1i) * -1i), vec3<i32>(-2147483647i, -var_1.d.x, u_input.e.x) ^ -var_1.d);
}

