struct Struct_1 {
    a: i32,
    b: bool,
    c: vec2<u32>,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
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

var<private> global0: vec2<bool> = vec2<bool>(false, false);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: i32) -> bool {
    let var_0 = _wgslsmith_add_vec4_u32(~abs(vec4<u32>(44378u, _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(4294967295u, u_input.a.x, 12503u)), ~0u, u_input.b)), _wgslsmith_add_vec4_u32(abs(min(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 49857u), vec4<u32>(37054u, 0u, 1u, 4294967295u))), ~(~firstTrailingBit(vec4<u32>(u_input.a.x, u_input.a.x, 0u, 1u)))));
    var var_1 = Struct_2(_wgslsmith_div_u32(1u, _wgslsmith_clamp_u32(max(4294967295u, 5034u) << ((var_0.x | u_input.b) % 32u), firstLeadingBit(~10029u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 4294967295u, 71406u), _wgslsmith_clamp_vec3_u32(u_input.a, u_input.a, vec3<u32>(77168u, 32799u, u_input.a.x))))));
    let var_2 = !(!select(vec2<bool>(select(true, global0.x, global0.x), any(vec2<bool>(true, global0.x))), vec2<bool>(true, true), !(!vec2<bool>(global0.x, true))));
    var var_3 = vec4<i32>(arg_0, _wgslsmith_sub_i32(-select(arg_0, 21909i, false), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, -49093i), min(vec2<i32>(arg_0, arg_0), vec2<i32>(36827i, -1172i)))) << (1u % 32u), 2147483647i, 1i);
    return !any(var_2);
}

fn func_2() -> bool {
    var var_0 = ~vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_mod_u32(3579u, u_input.a.x), u_input.b), u_input.b);
    let var_1 = select(!vec4<bool>(global0.x, any(vec4<bool>(true, true, true, true)), all(vec4<bool>(global0.x, false, global0.x, true)), true), !vec4<bool>(func_3(-2147483647i), (u_input.b | var_0.x) < ~u_input.b, true, global0.x), vec4<bool>(global0.x, false, true, all(!select(vec3<bool>(global0.x, global0.x, false), vec3<bool>(global0.x, false, global0.x), global0.x))));
    let var_2 = ~_wgslsmith_div_i32(countOneBits(-987i), -1i << (_wgslsmith_add_u32(u_input.b, var_0.x) % 32u)) != ~_wgslsmith_clamp_i32(-13454i, -46264i, 1i);
    var_0 = ~vec2<u32>(~abs(max(u_input.b, 33237u)), (4294967295u >> ((92663u >> (var_0.x % 32u)) % 32u)) | _wgslsmith_clamp_u32(var_0.x, 1u, 27961u));
    var var_3 = Struct_1(-_wgslsmith_dot_vec3_i32(select(vec3<i32>(5364i, 1i, -1i), vec3<i32>(21738i, 11822i, 19608i), true) << (vec3<u32>(69369u, 4294967295u, 29883u) % vec3<u32>(32u)), max(vec3<i32>(13905i, 1i, -1i), vec3<i32>(1i, 1i, 0i))), var_1.x, _wgslsmith_mod_vec2_u32(vec2<u32>(22182u, 4294967295u ^ var_0.x), u_input.a.xx) ^ vec2<u32>(max(~u_input.b, u_input.a.x >> (var_0.x % 32u)), ~(4294967295u & var_0.x)));
    return var_2 && true;
}

fn func_1(arg_0: Struct_2) -> vec2<bool> {
    global0 = !(!(!select(vec2<bool>(global0.x, global0.x), !vec2<bool>(global0.x, false), vec2<bool>(true, true))));
    global0 = vec2<bool>(false, func_2());
    var var_0 = Struct_1(_wgslsmith_mult_i32(i32(-1i) * -36685i, -1i), true, _wgslsmith_mod_vec2_u32(u_input.a.zz, abs(firstLeadingBit(u_input.a.yy) & reverseBits(vec2<u32>(u_input.b, 5433u)))));
    var_0 = Struct_1(_wgslsmith_sub_i32(_wgslsmith_div_i32(-var_0.a, _wgslsmith_add_i32(max(-21552i, 2147483647i), 0i)), -21i), ~(~u_input.a.x) > arg_0.a, var_0.c);
    var var_1 = -(~(-vec4<i32>(abs(var_0.a), ~26862i, -var_0.a, -13764i)));
    return !select(vec2<bool>((var_1.x < var_0.a) || true, true), vec2<bool>(var_0.b, var_0.b), vec2<bool>(all(select(vec4<bool>(true, false, true, false), vec4<bool>(var_0.b, false, true, var_0.b), global0.x)), var_0.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(u_input.a.x);
    global0 = !func_1(Struct_2(_wgslsmith_div_u32(~var_0.a, firstTrailingBit(30449u))));
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-158f)))) + _wgslsmith_f_op_f32(min(-654f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2171f + -308f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-1355f, -922f))))))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1354f, 478f)), _wgslsmith_f_op_f32(floor(560f)))));
    var var_2 = Struct_1(0i, func_3(~(~(-9167i))) || (1i == _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(36955i, 0i), vec2<i32>(0i, -35769i)), -vec2<i32>(26863i, 21482i))), ~_wgslsmith_mult_vec2_u32(max(u_input.a.yy, vec2<u32>(47219u, var_0.a)), _wgslsmith_mod_vec2_u32(u_input.a.xx, u_input.a.xz)) ^ select(select(vec2<u32>(u_input.a.x, 0u), firstLeadingBit(u_input.a.zx), any(vec2<bool>(global0.x, global0.x))), ~u_input.a.yx, vec2<bool>(func_1(Struct_2(4294967295u)).x, true)));
    let var_3 = Struct_2(min(min(reverseBits(41209u), 87257u), 4294967295u));
    var var_4 = Struct_2(min(~(~(u_input.b & var_2.c.x)), max(var_3.a, 24057u)));
    var var_5 = Struct_1(30357i, global0.x, (vec2<u32>(4294967295u, 1u & var_2.c.x) >> (~_wgslsmith_mod_vec2_u32(var_2.c, vec2<u32>(var_2.c.x, 1u)) % vec2<u32>(32u))) | firstTrailingBit(~select(var_2.c, var_2.c, var_2.b)));
    var var_6 = false;
    let var_7 = Struct_1(i32(-1i) * -2147483647i, true, ~vec2<u32>(abs(var_5.c.x) >> (min(42496u, 0u) % 32u), var_3.a));
    let x = u_input.a;
    s_output = StorageBuffer(~(~countOneBits(i32(-1i) * -2147483647i)), -reverseBits(vec2<i32>(4979i, var_5.a)));
}

