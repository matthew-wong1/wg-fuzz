struct Struct_1 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, true, true, true);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec3<u32> {
    return max(reverseBits(_wgslsmith_mult_vec3_u32(~max(vec3<u32>(u_input.c, 23440u, 49019u), vec3<u32>(u_input.c, 4294967295u, u_input.c)), reverseBits(abs(vec3<u32>(u_input.c, u_input.a, 0u))))), min(vec3<u32>(1u, u_input.c, ~1u), vec3<u32>(1u, ~35797u, ~61941u) & _wgslsmith_mod_vec3_u32(reverseBits(vec3<u32>(0u, 0u, u_input.c)), vec3<u32>(u_input.c, 1u, u_input.a))));
}

fn func_2() -> bool {
    var var_0 = Struct_1(vec4<i32>(-1i) * -min(vec4<i32>(-4593i, 20147i, u_input.b.x, 1i), vec4<i32>(u_input.b.x, 4558i, -14827i, -6493i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(710f, 323f)), _wgslsmith_f_op_f32(trunc(-541f)), _wgslsmith_f_op_f32(f32(-1f) * -225f), _wgslsmith_f_op_f32(select(319f, -870f, true))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(838f, -1427f, 421f, -1000f), vec4<f32>(-954f, 1112f, 528f, -1039f), vec4<bool>(false, false, global0.x, false)))))), vec2<u32>(abs(~u_input.c), _wgslsmith_add_u32(~4294967295u, _wgslsmith_sub_u32(1u, u_input.c))) << (countOneBits(firstLeadingBit(vec2<u32>(u_input.a, u_input.a) & vec2<u32>(u_input.c, u_input.c))) % vec2<u32>(32u)), -u_input.b);
    var var_1 = vec4<bool>(global0.x, !global0.x, true, true);
    let var_2 = global0.x;
    var_0 = Struct_1(var_0.a, _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(158f * var_0.b.x))), -303f, 1000f, 1000f))), vec2<u32>(1u, var_0.c.x), vec2<i32>(-56619i, -2147483647i));
    var var_3 = Struct_1(var_0.a << ((~vec4<u32>(u_input.c, var_0.c.x, 1u, 0u) | ~(~vec4<u32>(var_0.c.x, 833u, var_0.c.x, u_input.a))) % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-913f, -981f, var_0.b.x, var_0.b.x), var_0.b) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-268f, var_0.b.x, var_0.b.x, var_0.b.x) * var_0.b)) - var_0.b)), var_0.c, max(var_0.a.zw, countOneBits(vec2<i32>(var_0.a.x, var_0.a.x)) >> (((vec2<u32>(99281u, 0u) & vec2<u32>(var_0.c.x, 3023u)) | vec2<u32>(u_input.c, 35949u)) % vec2<u32>(32u))));
    return (var_0.c.x >> (_wgslsmith_dot_vec3_u32(func_3(), abs(~vec3<u32>(15081u, 87709u, var_0.c.x))) % 32u)) < u_input.c;
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    global0 = vec4<bool>(func_2(), !any(!vec2<bool>(global0.x, false)) && any(arg_0), (~firstLeadingBit(u_input.b.x) | -u_input.b.x) < 38652i, true);
    var var_0 = arg_0.x;
    global0 = !(!vec4<bool>(arg_0.x, func_2(), all(arg_0.yy), global0.x));
    let var_1 = Struct_1(~(-countOneBits(vec4<i32>(1i, u_input.b.x, 2147483647i, u_input.b.x)) >> ((min(vec4<u32>(61703u, 4294967295u, u_input.a, arg_2.c.x), vec4<u32>(arg_2.c.x, 38280u, 4294967295u, 4294967295u)) ^ (vec4<u32>(arg_1.c.x, arg_2.c.x, arg_2.c.x, u_input.a) >> (vec4<u32>(4036u, arg_1.c.x, 1u, arg_1.c.x) % vec4<u32>(32u)))) % vec4<u32>(32u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b.x, arg_2.b.x, arg_1.b.x, arg_1.b.x))), _wgslsmith_f_op_vec4_f32(-arg_2.b), false)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_2.b)))), arg_1.c, _wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(arg_2.a.zy, _wgslsmith_sub_vec2_i32(vec2<i32>(arg_2.d.x, arg_2.d.x), ~arg_1.d)), vec2<i32>(arg_2.a.x, arg_1.a.x)));
    global0 = !select(!(!(!vec4<bool>(global0.x, false, arg_0.x, true))), vec4<bool>(false, global0.x, true, true), vec4<bool>(any(arg_0.zz), arg_0.x, arg_0.x, any(global0.yy)));
    return -45175i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(min(~min(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, 0i), vec4<i32>(2147483647i, -1i, u_input.b.x, u_input.b.x)), abs(vec4<i32>(-2147483647i, 2147483647i, 2147483647i, -59076i))), vec4<i32>(func_1(global0.xxy, Struct_1(vec4<i32>(-2147483647i, -1i, -1i, -38876i), vec4<f32>(-995f, -901f, 1542f, -1178f), vec2<u32>(u_input.c, u_input.a), vec2<i32>(u_input.b.x, u_input.b.x)), Struct_1(vec4<i32>(16704i, 2147483647i, 2147483647i, -2147483647i), vec4<f32>(-349f, 187f, -1040f, 1000f), vec2<u32>(1u, u_input.a), u_input.b)) ^ -u_input.b.x, u_input.b.x << (~4294967295u % 32u), ~(i32(-1i) * -52115i), 1i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(899f, -1406f, 914f, -1300f))))))), vec2<u32>(_wgslsmith_add_u32(u_input.c, u_input.a) ^ reverseBits(1u), u_input.a), vec2<i32>(u_input.b.x, _wgslsmith_mult_i32(_wgslsmith_mod_i32(u_input.b.x, 36256i), -1i) ^ u_input.b.x));
    global0 = vec4<bool>(any(!vec3<bool>(global0.x, !global0.x, false)), all(global0.xyw), true, all(vec3<bool>(true, global0.x & any(vec4<bool>(false, global0.x, global0.x, true)), global0.x & (u_input.a <= u_input.a))));
    let var_1 = func_2();
    global0 = select(select(!vec4<bool>(any(vec4<bool>(var_1, true, var_1, false)), any(global0.xw), false, true & var_1), select(vec4<bool>(true, any(vec4<bool>(false, true, false, var_1)), false, any(global0.wxw)), select(!vec4<bool>(true, var_1, true, var_1), select(vec4<bool>(false, var_1, var_1, global0.x), vec4<bool>(global0.x, false, false, false), false), func_2()), true), var_0.c.x > (1u << (_wgslsmith_dot_vec4_u32(vec4<u32>(27249u, u_input.c, var_0.c.x, 4294967295u), vec4<u32>(111324u, var_0.c.x, 4294967295u, var_0.c.x)) % 32u))), select(select(select(select(vec4<bool>(var_1, false, global0.x, true), vec4<bool>(true, false, var_1, true), vec4<bool>(true, false, true, false)), !vec4<bool>(var_1, true, false, true), true), vec4<bool>(false, true, var_0.b.x > -128f, any(vec4<bool>(true, global0.x, true, false))), vec4<bool>(true, global0.x & var_1, true, true)), vec4<bool>(var_1, true, all(vec2<bool>(false, var_1)), var_1), !global0.x), false);
    let var_2 = vec2<u32>(_wgslsmith_mult_u32(13127u, var_0.c.x), ~51084u);
    let x = u_input.a;
    s_output = StorageBuffer(1i, vec4<f32>(_wgslsmith_f_op_f32(173f - 620f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1777f, -1000f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-433f + _wgslsmith_f_op_f32(f32(-1f) * -608f)), _wgslsmith_f_op_f32(var_0.b.x - -944f))), var_0.b.x));
}

