struct Struct_1 {
    a: vec2<i32>,
    b: vec3<bool>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: i32,
    e: vec3<i32>,
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

var<private> global0: Struct_1;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: i32) -> vec2<i32> {
    return arg_0.a;
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1) -> vec3<bool> {
    global0 = arg_1;
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(336f)), _wgslsmith_f_op_f32(f32(-1f) * -147f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-383f, 281f, global0.b.x)), _wgslsmith_f_op_f32(floor(-443f)))) * _wgslsmith_f_op_f32(-1037f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -623f))))));
    let var_1 = arg_1;
    let var_2 = select(!vec4<bool>(true, true, arg_1.b.x, false), !(!(!vec4<bool>(var_1.b.x, false, true, true))), min(~0u, u_input.c) <= countOneBits(_wgslsmith_dot_vec2_u32(reverseBits(arg_0.wx), vec2<u32>(arg_0.x, 1u))));
    var var_3 = (-u_input.e ^ _wgslsmith_clamp_vec3_i32(~vec3<i32>(1i, u_input.e.x, -17059i), u_input.e, u_input.e)) & vec3<i32>(_wgslsmith_dot_vec2_i32(~global0.a, -firstTrailingBit(vec2<i32>(global0.a.x, arg_1.a.x))), -12333i, u_input.a);
    return select(select(!var_1.b, vec3<bool>(select(any(vec2<bool>(false, var_2.x)), 4830i >= global0.a.x, arg_1.b.x), true, var_1.c.x), !var_1.c.x), !var_1.b, select(select(vec3<bool>(var_1.c.x, arg_1.b.x, var_2.x | false), vec3<bool>(false, global0.b.x, false), select(arg_1.b, vec3<bool>(true, false, false), true)), !global0.b, global0.b));
}

fn func_2(arg_0: Struct_1) -> vec3<bool> {
    var var_0 = arg_0;
    var var_1 = Struct_1(-vec2<i32>(-u_input.e.x, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, arg_0.a.x, u_input.d, -1i), vec4<i32>(2147483647i, var_0.a.x, -1i, u_input.e.x)) & arg_0.a.x), arg_0.b, arg_0.b.zy);
    var var_2 = reverseBits(~_wgslsmith_mult_i32(~(var_0.a.x & arg_0.a.x), ~var_0.a.x));
    var_1 = Struct_1(u_input.b, select(!(!(!vec3<bool>(global0.b.x, global0.c.x, true))), select(var_1.b, global0.b, !func_3(vec4<u32>(29066u, u_input.c, u_input.c, u_input.c), Struct_1(vec2<i32>(1i, 0i), arg_0.b, var_0.b.zy))), !(false & arg_0.c.x)), select(!var_0.b.zx, select(arg_0.c, select(vec2<bool>(false, var_1.b.x), vec2<bool>(false, true), var_0.b.zx), global0.b.xx), var_1.b.zx));
    var_0 = arg_0;
    return arg_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(select(_wgslsmith_sub_vec2_i32(~_wgslsmith_mod_vec2_i32(vec2<i32>(global0.a.x, u_input.b.x), vec2<i32>(global0.a.x, -4924i)), (u_input.e.xx ^ global0.a) ^ func_1(Struct_1(u_input.b, vec3<bool>(global0.b.x, false, global0.c.x), global0.c), vec4<i32>(global0.a.x, u_input.b.x, u_input.e.x, global0.a.x), u_input.e.x)), vec2<i32>(~_wgslsmith_add_i32(-15120i, -1i), -_wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(u_input.b.x, global0.a.x))), false), !vec3<bool>(any(global0.c), !any(vec3<bool>(global0.c.x, global0.c.x, global0.c.x)), true), global0.b.xy);
    let var_0 = _wgslsmith_mult_vec3_i32(min(select(u_input.e, u_input.e, select(!global0.b, func_2(Struct_1(vec2<i32>(global0.a.x, global0.a.x), vec3<bool>(global0.c.x, global0.c.x, global0.b.x), global0.c)), func_3(vec4<u32>(u_input.c, 91127u, u_input.c, u_input.c), Struct_1(global0.a, global0.b, global0.c)))), min(~(u_input.e | vec3<i32>(-2147483647i, -3301i, 0i)), max(vec3<i32>(u_input.e.x, -5408i, 40677i), ~u_input.e))), firstLeadingBit(max(u_input.e, ~u_input.e ^ -vec3<i32>(u_input.b.x, -13854i, -87i))));
    var var_1 = select(vec3<bool>(any(!func_2(Struct_1(u_input.b, vec3<bool>(false, global0.c.x, global0.b.x), vec2<bool>(true, global0.b.x))).zy), all(vec2<bool>(global0.b.x, all(vec3<bool>(global0.c.x, true, global0.b.x)))), global0.c.x), func_3(vec4<u32>(1u, u_input.c, u_input.c, _wgslsmith_mod_u32(1u, u_input.c)), Struct_1(_wgslsmith_div_vec2_i32(countOneBits(vec2<i32>(u_input.d, -45138i)), abs(vec2<i32>(u_input.e.x, 34017i))), func_2(Struct_1(vec2<i32>(0i, var_0.x), vec3<bool>(false, false, false), global0.b.zz)), vec2<bool>(global0.b.x & global0.c.x, global0.c.x))), all(select(vec4<bool>(true, global0.b.x, select(global0.b.x, false, global0.c.x), !global0.c.x), select(!vec4<bool>(true, true, global0.b.x, false), select(vec4<bool>(global0.b.x, true, true, global0.b.x), vec4<bool>(false, false, global0.b.x, true), true), any(vec2<bool>(global0.b.x, global0.b.x))), !global0.c.x)));
    var_1 = global0.b;
    var var_2 = Struct_1(max(firstTrailingBit(_wgslsmith_mod_vec2_i32(global0.a ^ vec2<i32>(2147483647i, global0.a.x), var_0.yy)), ~global0.a), select(!select(select(vec3<bool>(var_1.x, true, global0.c.x), global0.b, vec3<bool>(false, global0.b.x, true)), !vec3<bool>(false, global0.c.x, false), any(vec4<bool>(global0.c.x, global0.c.x, global0.c.x, var_1.x))), !(!global0.b), global0.c.x | (~u_input.c == 112652u)), vec2<bool>(true, true));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~u_input.c));
}

