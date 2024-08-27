struct Struct_1 {
    a: bool,
    b: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
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

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2() -> vec3<bool> {
    let var_0 = 2147483647i;
    return vec3<bool>(true, true, !(_wgslsmith_div_u32(73325u, firstTrailingBit(u_input.d)) >= ~u_input.d));
}

fn func_1() -> bool {
    let var_0 = Struct_1(all(select(vec3<bool>(u_input.e.x == u_input.a.x, true, any(vec4<bool>(true, false, true, true))), select(func_2(), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), vec3<bool>(false, false, true))), u_input.a.x);
    var var_1 = func_2();
    let var_2 = u_input.c;
    var_1 = select(func_2(), select(!(!select(vec3<bool>(var_0.a, var_1.x, true), vec3<bool>(var_0.a, true, var_1.x), vec3<bool>(var_1.x, false, var_0.a))), func_2(), select(vec3<bool>(any(vec4<bool>(var_1.x, var_0.a, var_1.x, var_1.x)), true, var_1.x & false), vec3<bool>(true, true, true), !vec3<bool>(var_0.a, var_1.x, true))), !((abs(var_0.b) <= 2147483647i) && var_1.x));
    var var_3 = Struct_1(var_1.x, _wgslsmith_div_i32(u_input.e.x | -20861i, u_input.a.x) ^ ~_wgslsmith_div_i32(2147483647i & var_2.x, _wgslsmith_dot_vec3_i32(var_2.zzz, var_2.zwy)));
    return var_2.x != -1i;
}

fn func_3(arg_0: f32, arg_1: vec3<u32>, arg_2: vec3<u32>, arg_3: Struct_1) -> vec2<bool> {
    let var_0 = Struct_1(true, ~1i);
    let var_1 = any(!select(func_2().yx, !func_2().xy, var_0.a));
    let var_2 = any(select(select(vec2<bool>(false && arg_3.a, false), vec2<bool>(all(vec3<bool>(var_1, var_0.a, true)), true), select(select(vec2<bool>(true, var_0.a), vec2<bool>(var_0.a, false), vec2<bool>(true, arg_3.a)), !vec2<bool>(true, arg_3.a), false)), vec2<bool>(true, (var_1 || true) == (arg_1.x == 35149u)), !vec2<bool>(all(vec2<bool>(arg_3.a, var_0.a)), false)));
    let var_3 = Struct_1(select(var_2, var_0.a, any(func_2().zx)), abs(~abs(-9910i)));
    let var_4 = _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(countOneBits(firstLeadingBit(vec2<u32>(arg_2.x, 4294967295u))), vec2<u32>(countOneBits(arg_2.x), arg_1.x)), countOneBits(vec2<u32>(arg_1.x & 6236u, ~arg_2.x) | _wgslsmith_add_vec2_u32(reverseBits(arg_1.yy), vec2<u32>(15253u, u_input.d))));
    return !func_2().xx;
}

fn func_4(arg_0: vec3<bool>, arg_1: vec2<u32>, arg_2: Struct_1) -> bool {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1019f + -623f) - -349f))))));
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -375f);
    var var_1 = min(-firstTrailingBit(select(min(arg_2.b, -21965i), countOneBits(24326i), arg_0.x)), 0i);
    var_1 = ~(-1i);
    var var_2 = arg_2;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!vec4<bool>(true, func_1(), false, false));
    var var_1 = Struct_1(true, (-8464i & -u_input.e.x) | ~_wgslsmith_sub_i32(max(u_input.c.x, 0i), -u_input.c.x));
    let var_2 = vec3<bool>(true, func_4(var_0.wyz, ~(~(vec2<u32>(u_input.d, u_input.d) | vec2<u32>(1u, u_input.d))), Struct_1(all(func_3(-454f, vec3<u32>(1u, 48854u, 1u), vec3<u32>(0u, u_input.d, 4294967295u), Struct_1(var_1.a, -2147483647i))), ~u_input.c.x)), !all(vec4<bool>(func_1(), func_4(var_0.zxy, vec2<u32>(0u, u_input.d), Struct_1(var_0.x, var_1.b)), true, true)));
    let var_3 = func_2();
    let var_4 = ~select(vec2<i32>(select(u_input.c.x & 1637i, -1i, var_0.x), -1i << (u_input.d % 32u)), select(u_input.a.yw, _wgslsmith_clamp_vec2_i32(u_input.b.zy, ~u_input.e.xy, u_input.b.yz >> (vec2<u32>(0u, 1u) % vec2<u32>(32u))), !func_2().yz), !(!(!var_0.xz)));
    var var_5 = Struct_1(false, var_1.b);
    var var_6 = _wgslsmith_f_op_vec3_f32(vec3<f32>(869f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(785f * 1873f))), -1260f) * _wgslsmith_div_vec3_f32(vec3<f32>(1f, 1f, 1f), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1038f), _wgslsmith_f_op_f32(select(-220f, _wgslsmith_f_op_f32(min(-2093f, 1000f)), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    let var_7 = ~vec2<u32>(~u_input.d, u_input.d);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(var_5.b), vec2<i32>(~34867i, u_input.c.x));
}

