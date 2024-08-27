struct Struct_1 {
    a: vec4<f32>,
    b: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec4<bool>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3() -> vec3<bool> {
    var var_0 = countOneBits(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 2586i), vec2<i32>(-1i, 3648i)), 48213i) << (_wgslsmith_add_u32(_wgslsmith_div_u32(6464u, u_input.a.x), firstLeadingBit(0u)) % 32u), 1i, -1i));
    var_0 = ~select(-3875i, -2147483647i, !select(any(vec4<bool>(false, false, false, true)), true, false));
    var var_1 = Struct_2(35196u, Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(651f, 1838f, 1522f, -981f), _wgslsmith_div_vec4_f32(vec4<f32>(-2009f, 201f, -244f, 1422f), vec4<f32>(712f, 353f, 583f, 2840f)))) - vec4<f32>(-795f, _wgslsmith_f_op_f32(f32(-1f) * -588f), 1146f, _wgslsmith_f_op_f32(135f - 1420f))), all(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false))) | true));
    var_0 = ~(-firstLeadingBit(-52380i));
    let var_2 = vec3<bool>(var_1.b.a.x > _wgslsmith_f_op_f32(644f * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.b.a.x)))), var_1.b.b, !var_1.b.b);
    return vec3<bool>((any(!var_2.yy) | false) && all(vec3<bool>(u_input.a.x > u_input.a.x, var_2.x, var_2.x && false)), true, any(select(select(select(vec3<bool>(true, true, var_1.b.b), vec3<bool>(var_2.x, var_2.x, var_1.b.b), vec3<bool>(false, false, true)), select(vec3<bool>(false, var_2.x, var_2.x), vec3<bool>(var_1.b.b, var_1.b.b, var_1.b.b), var_1.b.b), select(vec3<bool>(false, var_1.b.b, true), vec3<bool>(false, var_2.x, var_1.b.b), var_1.b.b)), select(vec3<bool>(false, true, true), vec3<bool>(var_1.b.b, var_2.x, true), !var_2), vec3<bool>(var_1.b.b || false, !var_2.x, false))));
}

fn func_2() -> Struct_1 {
    let var_0 = vec2<bool>(any(!func_3()) | true, false);
    var var_1 = Struct_3(firstTrailingBit(vec2<i32>(1i, 1i)), Struct_1(vec4<f32>(162f, _wgslsmith_f_op_f32(floor(-190f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1543f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -639f))), var_0.x), !select(vec4<bool>(var_0.x, var_0.x, 1u >= u_input.a.x, !var_0.x), !vec4<bool>(var_0.x, var_0.x, true, false), func_3().x), vec2<i32>(-1i, _wgslsmith_dot_vec2_i32(firstLeadingBit(~vec2<i32>(39856i, 11410i)), ~_wgslsmith_mult_vec2_i32(vec2<i32>(-1i, 40096i), vec2<i32>(-1i, 20115i)))));
    var_1 = Struct_3(select(var_1.d, var_1.a, vec2<bool>(var_1.b.b, any(var_1.c.zy))), var_1.b, var_1.c, var_1.d);
    let var_2 = var_1.b.a.x;
    var_1 = Struct_3(firstTrailingBit(vec2<i32>(min(var_1.d.x, var_1.a.x), ~(21604i ^ var_1.a.x))), Struct_1(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(807f, var_1.b.a.x, _wgslsmith_f_op_f32(-var_1.b.a.x), _wgslsmith_f_op_f32(var_1.b.a.x - var_1.b.a.x)))), !var_0.x), select(!vec4<bool>(var_1.b.a.x < var_1.b.a.x, var_1.c.x, var_1.c.x, u_input.a.x <= u_input.a.x), !var_1.c, vec4<bool>(var_1.b.b, firstTrailingBit(41866u) >= 0u, all(vec2<bool>(false, var_0.x)), var_1.c.x)), abs(~(abs(vec2<i32>(59059i, var_1.d.x)) | (var_1.a << (vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u))))));
    return var_1.b;
}

fn func_1(arg_0: i32) -> f32 {
    let var_0 = func_2();
    var var_1 = vec4<bool>(!func_2().b, all(select(!func_3().yz, vec2<bool>(arg_0 < 50771i, !var_0.b), vec2<bool>(false, var_0.b))), false, true);
    var_1 = !(!select(select(!vec4<bool>(false, true, var_0.b, false), !vec4<bool>(var_0.b, false, var_1.x, false), select(var_1.x, var_1.x, false)), !(!vec4<bool>(var_1.x, var_1.x, var_0.b, var_1.x)), true));
    var_1 = select(!vec4<bool>(var_0.b, var_1.x, var_1.x | all(vec3<bool>(var_0.b, var_0.b, var_0.b)), true), select(!vec4<bool>(!var_1.x, true, !var_1.x, var_1.x), !select(vec4<bool>(var_1.x, false, var_1.x, false), !vec4<bool>(false, var_1.x, true, var_1.x), !vec4<bool>(var_0.b, true, var_1.x, false)), all(select(select(vec4<bool>(false, var_1.x, var_1.x, var_1.x), vec4<bool>(var_0.b, var_0.b, var_0.b, var_1.x), true), select(vec4<bool>(true, var_1.x, true, false), vec4<bool>(var_1.x, var_1.x, false, var_1.x), false), vec4<bool>(true, var_0.b, true, false)))), true);
    var_1 = vec4<bool>(61964u != (0u >> (_wgslsmith_add_u32(abs(u_input.a.x), ~4294967295u) % 32u)), var_0.a.x == _wgslsmith_f_op_f32(_wgslsmith_div_f32(487f, var_0.a.x) + -1000f), any(!select(var_1.wy, vec2<bool>(true, true), !var_1.x)), var_0.b);
    return var_0.a.x;
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    let var_0 = Struct_3(_wgslsmith_clamp_vec2_i32(abs(_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(-2147483647i, 33162i), vec2<i32>(1i, 1i))), ~vec2<i32>(-2147483647i << (u_input.a.x % 32u), ~(-2147483647i)), vec2<i32>(-(-1i >> (u_input.a.x % 32u)), max(0i, _wgslsmith_sub_i32(64455i, 2147483647i)))), arg_0, select(select(vec4<bool>(true, true, u_input.a.x > u_input.a.x, arg_0.b), vec4<bool>(true, false, true, !arg_0.b), all(vec2<bool>(arg_0.b, arg_0.b))), select(!(!vec4<bool>(arg_0.b, arg_0.b, false, false)), select(select(vec4<bool>(arg_0.b, true, true, false), vec4<bool>(arg_0.b, arg_0.b, arg_0.b, false), true), vec4<bool>(arg_0.b, arg_0.b, true, arg_0.b), vec4<bool>(true, false, arg_0.b, arg_0.b)), u_input.a.x > (u_input.a.x ^ 0u)), !(!(!vec4<bool>(arg_0.b, false, arg_0.b, true)))), -countOneBits(_wgslsmith_sub_vec2_i32(min(vec2<i32>(1108i, 7280i), vec2<i32>(-57636i, 2147483647i)), reverseBits(vec2<i32>(-55110i, 0i)))));
    var var_1 = !func_3();
    let var_2 = Struct_3(~select(var_0.d, vec2<i32>(var_0.a.x, abs(var_0.d.x)), func_3().yz), Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(987f, var_0.b.a.x, arg_0.a.x, var_0.b.a.x)), vec4<f32>(-219f, arg_0.a.x, arg_0.a.x, var_0.b.a.x)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(arg_0.a * arg_0.a), vec4<f32>(-1051f, arg_0.a.x, 1139f, -375f))))), true), vec4<bool>(any(!var_0.c) && select(var_0.a.x != var_0.a.x, true, arg_0.b || arg_0.b), true, var_0.c.x, any(vec2<bool>(arg_0.b, var_0.b.b))), _wgslsmith_mult_vec2_i32(firstLeadingBit(max(vec2<i32>(-1i, var_0.a.x), _wgslsmith_clamp_vec2_i32(var_0.d, vec2<i32>(2147483647i, 9379i), var_0.a))), var_0.d));
    var_1 = vec3<bool>(func_2().b, var_2.c.x, any(func_3()));
    var_1 = select(select(var_0.c.zwy, vec3<bool>(var_2.c.x, _wgslsmith_f_op_f32(-var_2.b.a.x) < -218f, all(!vec2<bool>(true, var_2.c.x))), select(select(vec3<bool>(var_0.c.x, true, false), !var_0.c.wyw, any(var_2.c.xxz)), vec3<bool>(arg_0.a.x <= var_2.b.a.x, any(vec2<bool>(var_0.c.x, true)), true), !select(vec3<bool>(var_1.x, arg_0.b, var_1.x), var_0.c.xyy, var_1.x))), !func_3(), vec3<bool>(var_1.x, true, !var_1.x && true));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = func_4(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -177f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(12715i)) * _wgslsmith_f_op_f32(sign(395f))), _wgslsmith_f_op_f32(sign(1265f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1423f, 1000f))), any(func_3())));
    let var_2 = 4294967295u;
    var_0 = true;
    var_0 = !(!func_3().x);
    let x = u_input.a;
    s_output = StorageBuffer(16955u, ~0u, vec2<i32>(_wgslsmith_mult_i32(-min(35015i, -5822i), -1i), firstTrailingBit(-15118i) ^ _wgslsmith_clamp_i32(1i, 1i, _wgslsmith_sub_i32(1i, 1i))), u_input.a.x);
}

