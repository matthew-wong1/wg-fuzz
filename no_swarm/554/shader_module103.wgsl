struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: u32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<bool>,
    c: vec4<f32>,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: bool,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_2, arg_2: Struct_3, arg_3: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(arg_1.c.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-716f, arg_3.b.x), arg_3.b.x, !arg_0.a.c))))));
    return var_0;
}

fn func_2(arg_0: i32) -> u32 {
    var var_0 = vec2<bool>(true, true);
    let var_1 = Struct_1(20898i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_3(Struct_4(Struct_3(true, var_0.x, var_0.x, Struct_2(vec2<i32>(-18743i, arg_0), vec3<bool>(false, true, true), vec4<f32>(1185f, -432f, -656f, -1100f)))), Struct_2(vec2<i32>(17090i, arg_0), vec3<bool>(var_0.x, true, var_0.x), vec4<f32>(-1386f, 1249f, -578f, 796f)), Struct_3(true, false, var_0.x, Struct_2(vec2<i32>(arg_0, 10785i), vec3<bool>(var_0.x, false, false), vec4<f32>(-1596f, -1235f, 1231f, -695f))), Struct_1(arg_0, vec3<f32>(536f, -702f, -532f), 0u, vec3<i32>(arg_0, -22103i, -1i)))), _wgslsmith_f_op_f32(min(562f, _wgslsmith_f_op_f32(f32(-1f) * -998f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(254f)))))), _wgslsmith_div_u32(_wgslsmith_clamp_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 0u, 12978u), vec4<u32>(70807u, 0u, 2559u, 63567u)), _wgslsmith_mod_u32(_wgslsmith_add_u32(1u, 1u), 1u), ~1u), 1u << (_wgslsmith_mod_u32(_wgslsmith_clamp_u32(0u, 64754u, 0u), _wgslsmith_div_u32(63735u, 4294967295u)) % 32u)), firstTrailingBit(~(~vec3<i32>(arg_0, 1i, -55127i)) << (vec3<u32>(~4294967295u, select(34628u, 23635u, var_0.x), 1u) % vec3<u32>(32u))));
    let var_2 = var_1;
    let var_3 = ~_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, _wgslsmith_dot_vec3_i32(-var_1.d, var_1.d), _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.a, u_input.a, arg_0) << (vec3<u32>(var_2.c, 4825u, 1u) % vec3<u32>(32u)), ~vec3<i32>(-10085i, -20084i, arg_0)), 1i | max(var_1.a, arg_0)), vec4<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(var_1.a, -21792i), var_1.d.zz), -vec2<i32>(14440i, u_input.a)), _wgslsmith_div_i32(-1i, arg_0) << (abs(0u) % 32u), -(var_2.d.x << (var_2.c % 32u)), reverseBits(-838i)));
    let var_4 = Struct_4(Struct_3(true, any(!vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)), var_0.x, Struct_2(_wgslsmith_mod_vec2_i32(var_2.d.yx, -vec2<i32>(1i, var_2.a)), select(select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, true), var_0.x), vec3<bool>(true, false, var_0.x), false), vec4<f32>(_wgslsmith_f_op_f32(-var_1.b.x), -1216f, _wgslsmith_f_op_f32(select(-1003f, -1021f, false)), _wgslsmith_f_op_f32(-var_2.b.x)))));
    return 31946u;
}

fn func_1() -> f32 {
    let var_0 = false;
    let var_1 = Struct_2(-reverseBits(vec2<i32>(u_input.a, u_input.a) ^ countOneBits(vec2<i32>(0i, -9650i))), vec3<bool>(all(!select(vec3<bool>(false, var_0, true), vec3<bool>(false, var_0, var_0), false)), any(!(!vec4<bool>(false, false, false, var_0))), var_0), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1233f, _wgslsmith_f_op_f32(step(-339f, 414f)), -1588f, _wgslsmith_f_op_f32(169f - 510f)))));
    let var_2 = vec3<u32>(~firstLeadingBit(_wgslsmith_div_u32(countOneBits(18150u), 1u)), 19597u << (min(func_2(i32(-1i) * -18603i), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(35716u, 4294967295u, 0u, 1u), vec4<u32>(0u, 0u, 0u, 0u)), firstTrailingBit(vec4<u32>(688u, 1u, 56710u, 35346u)))) % 32u), 68582u);
    var var_3 = vec4<bool>(var_0, true && (_wgslsmith_mult_i32(u_input.a, -21604i) >= max(u_input.a, -2147483647i)), var_0 || false, select(all(vec3<bool>(false, true, var_1.c.x < var_1.c.x)), var_1.b.x, (_wgslsmith_mult_u32(14028u, var_2.x) == ~1u) & all(select(var_1.b.xy, var_1.b.zy, false))));
    let var_4 = _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.c.x, _wgslsmith_f_op_f32(var_1.c.x * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.c.x))))) - var_1.c.yy);
    return 301f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-46328i, u_input.a)), -vec2<i32>(u_input.a, u_input.a), -vec2<i32>(-1i, 0i)) | vec2<i32>(u_input.a << (6174u % 32u), u_input.a), ~vec2<i32>(~u_input.a, 5038i)), !vec3<bool>(_wgslsmith_f_op_f32(step(363f, 752f)) != -1831f, false, true), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(1401f)), _wgslsmith_f_op_f32(482f * -1000f), _wgslsmith_div_f32(163f, 186f), _wgslsmith_f_op_f32(func_1()))))));
    let var_1 = vec3<i32>(u_input.a, _wgslsmith_add_i32(min(min(2147483647i & var_0.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-41581i, var_0.a.x, var_0.a.x), vec3<i32>(-1i, u_input.a, -12608i))), ~(-var_0.a.x)), ~_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.a, -1i, u_input.a, -65345i), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.a.x, u_input.a, u_input.a, var_0.a.x), vec4<i32>(34751i, -65646i, -23413i, 14444i), vec4<i32>(var_0.a.x, u_input.a, -238i, -9659i)))), _wgslsmith_sub_i32(_wgslsmith_mod_i32(var_0.a.x, var_0.a.x), -(i32(-1i) * -var_0.a.x)));
    var_0 = Struct_2(var_1.xx, select(select(select(select(vec3<bool>(false, false, true), var_0.b, false), var_0.b, select(vec3<bool>(var_0.b.x, var_0.b.x, false), vec3<bool>(var_0.b.x, true, false), false)), var_0.b, vec3<bool>(true, true, true)), !vec3<bool>(var_0.b.x, var_0.b.x, var_0.b.x), vec3<bool>(false, !any(vec3<bool>(var_0.b.x, var_0.b.x, true)), !(!var_0.b.x))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.x, _wgslsmith_div_f32(1504f, 1443f), _wgslsmith_div_f32(-1186f, var_0.c.x), 143f)))));
    var_0 = Struct_2(countOneBits(var_1.zy & ~vec2<i32>(var_1.x, u_input.a)), select(!var_0.b, select(vec3<bool>(var_0.b.x, true, select(var_0.b.x, var_0.b.x, var_0.b.x)), vec3<bool>(var_0.b.x, true, 734f <= var_0.c.x), !vec3<bool>(var_0.b.x, true, var_0.b.x)), var_0.b.x), var_0.c);
    var_0 = Struct_2(vec2<i32>(~_wgslsmith_mult_i32(-1i, min(var_1.x, -2147483647i)), max(1i, ~0i & _wgslsmith_dot_vec2_i32(var_1.xy, var_0.a))), select(select(select(var_0.b, !vec3<bool>(false, var_0.b.x, var_0.b.x), vec3<bool>(true, false, var_0.b.x)), var_0.b, !vec3<bool>(false, var_0.b.x, var_0.b.x)), var_0.b, false), vec4<f32>(var_0.c.x, _wgslsmith_f_op_f32(min(var_0.c.x, _wgslsmith_f_op_f32(func_1()))), var_0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-621f - var_0.c.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~select(4294967295u, max(0u, 0u), var_0.b.x | true), _wgslsmith_add_u32(~63213u, countOneBits(1u))), var_1.zz, 54565i);
}

