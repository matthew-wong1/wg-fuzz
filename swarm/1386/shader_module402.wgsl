struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>) -> bool {
    let var_0 = Struct_3(Struct_2(firstTrailingBit(arg_1.x), arg_0));
    var var_1 = vec2<i32>(~(-1i), -20361i);
    var_1 = _wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(max(-1i, -8951i), 2147483647i), -(vec2<i32>(u_input.a, var_1.x) | vec2<i32>(6891i, -1i)), vec2<i32>(var_1.x, u_input.a)) & -_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, -53233i)), (min(_wgslsmith_sub_vec2_i32(vec2<i32>(var_1.x, -2147483647i), vec2<i32>(u_input.a, 18761i)), min(vec2<i32>(u_input.a, -2147483647i), vec2<i32>(-24249i, u_input.a))) | _wgslsmith_mod_vec2_i32(countOneBits(vec2<i32>(var_1.x, 7527i)), abs(vec2<i32>(var_1.x, u_input.a)))) ^ ~vec2<i32>(-1i, ~u_input.a));
    return var_0.a.b.a;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec4<i32>, arg_3: f32) -> bool {
    var var_0 = vec4<bool>(arg_1.a.b.a, arg_0.a, !(-firstTrailingBit(arg_2.x) == _wgslsmith_div_i32(min(8379i, u_input.a), firstTrailingBit(-2147483647i))), (-714f > _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_3)))) != all(vec3<bool>(func_3(arg_0, vec2<u32>(4294967295u, 1u)), any(vec3<bool>(arg_1.a.b.a, false, false)), all(vec3<bool>(false, arg_0.a, false)))));
    let var_1 = vec4<i32>(u_input.a, ~abs(u_input.a) & _wgslsmith_dot_vec2_i32(~(vec2<i32>(25440i, 462i) & vec2<i32>(-1i, arg_2.x)), arg_2.xz), ~(-2147483647i), 3997i);
    var_0 = select(select(vec4<bool>(true, true, !var_0.x | var_0.x, arg_1.a.b.a), select(select(!vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<bool>(false, arg_0.a, arg_0.a, true), false), select(select(vec4<bool>(arg_1.a.b.a, false, arg_1.a.b.a, arg_1.a.b.a), vec4<bool>(true, var_0.x, false, arg_0.a), vec4<bool>(var_0.x, var_0.x, true, true)), select(vec4<bool>(arg_1.a.b.a, var_0.x, var_0.x, false), vec4<bool>(true, true, arg_1.a.b.a, var_0.x), arg_1.a.b.a), vec4<bool>(arg_0.a, var_0.x, true, var_0.x)), vec4<bool>(all(vec4<bool>(arg_1.a.b.a, true, true, arg_1.a.b.a)), all(vec2<bool>(false, arg_1.a.b.a)), !arg_1.a.b.a, arg_1.a.b.a && arg_0.a)), var_0.x), select(!vec4<bool>(true, all(vec4<bool>(arg_1.a.b.a, arg_1.a.b.a, var_0.x, arg_1.a.b.a)), true, 10652u > arg_1.a.a), vec4<bool>(select(true == arg_1.a.b.a, any(var_0.xx), arg_1.a.b.a), false, !func_3(Struct_1(false), vec2<u32>(arg_1.a.a, 19575u)), arg_0.a), true), false);
    var var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_3), arg_3, var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_3, 473f)) - _wgslsmith_f_op_f32(f32(-1f) * -618f)), arg_1.a.b.a));
    var_2 = _wgslsmith_f_op_f32(floor(arg_3));
    return var_0.x;
}

fn func_1(arg_0: bool) -> Struct_2 {
    var var_0 = !vec4<bool>(all(vec2<bool>(true, arg_0)), all(vec2<bool>(func_2(Struct_1(true), Struct_3(Struct_2(u_input.b, Struct_1(false))), vec4<i32>(37313i, u_input.a, -2147483647i, 0i), 279f), arg_0)), any(vec2<bool>(true, true)), arg_0 & arg_0);
    let var_1 = firstLeadingBit(~20345i);
    var var_2 = 33255u;
    let var_3 = Struct_1(!(any(select(vec4<bool>(true, arg_0, false, var_0.x), vec4<bool>(var_0.x, false, true, true), vec4<bool>(arg_0, var_0.x, var_0.x, arg_0))) != true));
    var var_4 = any(!var_0.zx);
    return Struct_2(~1u, Struct_1(!all(var_0.zx)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(sign(1000f));
    var var_1 = u_input.b;
    let var_2 = abs(select(vec2<u32>(1u, 1u), vec2<u32>(_wgslsmith_sub_u32(33069u, 1u), 1u), vec2<bool>(select(false, true, false), true)) ^ ~vec2<u32>(1u, _wgslsmith_div_u32(0u, u_input.b)));
    var var_3 = 2147483647i;
    let var_4 = Struct_3(func_1(any(vec4<bool>(true, true, all(vec4<bool>(false, true, true, true)), false))));
    let var_5 = func_1(var_4.a.b.a);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, vec3<u32>(~(~53073u), ~50105u, min(4294967295u, ~u_input.b)));
}

