struct Struct_1 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec2<i32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: i32,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3() -> vec3<bool> {
    global0 = select(vec3<bool>(any(select(vec4<bool>(true, false, global0.x, true), select(vec4<bool>(true, global0.x, false, false), vec4<bool>(global0.x, false, true, global0.x), true), select(vec4<bool>(global0.x, true, false, true), vec4<bool>(global0.x, global0.x, global0.x, true), vec4<bool>(false, global0.x, false, global0.x)))), select(true, true, false) || ((global0.x & global0.x) & true), global0.x), select(vec3<bool>(any(select(vec3<bool>(false, true, global0.x), vec3<bool>(false, global0.x, global0.x), vec3<bool>(global0.x, global0.x, global0.x))), true, all(!vec4<bool>(global0.x, false, global0.x, global0.x))), select(select(select(vec3<bool>(true, global0.x, global0.x), vec3<bool>(false, global0.x, true), vec3<bool>(global0.x, global0.x, global0.x)), vec3<bool>(false, global0.x, global0.x), false), !select(vec3<bool>(true, global0.x, global0.x), vec3<bool>(global0.x, false, global0.x), true), true), vec3<bool>(true, true, global0.x)), !(!vec3<bool>(any(vec3<bool>(false, global0.x, true)), global0.x, any(vec4<bool>(false, global0.x, true, global0.x)))));
    global0 = !select(vec3<bool>(false, !global0.x, all(vec3<bool>(global0.x, false, global0.x))), select(select(select(vec3<bool>(global0.x, true, global0.x), vec3<bool>(global0.x, true, global0.x), global0.x), !vec3<bool>(global0.x, global0.x, false), !vec3<bool>(global0.x, global0.x, false)), select(select(vec3<bool>(true, false, global0.x), vec3<bool>(false, false, global0.x), global0.x), select(vec3<bool>(true, true, global0.x), vec3<bool>(global0.x, false, global0.x), global0.x), vec3<bool>(true, true, true)), global0.x), !select(vec3<bool>(global0.x, global0.x, true), !vec3<bool>(global0.x, true, global0.x), select(vec3<bool>(global0.x, false, true), vec3<bool>(global0.x, true, global0.x), vec3<bool>(global0.x, global0.x, global0.x))));
    var var_0 = -1872f;
    var var_1 = -max(reverseBits(~(~vec3<i32>(u_input.a.x, u_input.a.x, 47405i))), select(-_wgslsmith_div_vec3_i32(u_input.d.wyx, u_input.a), ~(~u_input.a), select(select(vec3<bool>(true, global0.x, true), vec3<bool>(true, global0.x, false), vec3<bool>(false, global0.x, global0.x)), !vec3<bool>(false, global0.x, global0.x), false | global0.x)));
    let var_2 = Struct_1(_wgslsmith_div_vec2_u32(~(vec2<u32>(0u, 58279u) << (u_input.c.xx % vec2<u32>(32u))), ~u_input.c.yy), reverseBits(-var_1.zz), -_wgslsmith_add_vec3_i32(firstLeadingBit(u_input.d.zzz ^ vec3<i32>(2147483647i, 1i, u_input.a.x)), u_input.d.wxz));
    return !(!vec3<bool>(all(vec4<bool>(true, global0.x, global0.x, global0.x)), global0.x, all(vec2<bool>(false, global0.x)) == true));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_1) -> vec3<bool> {
    var var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-166f, 457f, -468f) + vec3<f32>(-231f, 824f, 1902f)) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-2749f, -1000f, 471f))))) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(413f, 845f, 277f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1000f, 252f)))))) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1918f, 795f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(907f, -2087f) - vec2<f32>(1000f, -906f)))))), arg_2.b.x | -_wgslsmith_mod_i32(-40889i & arg_2.c.x, arg_0.c.x), Struct_2(vec3<bool>(true, true, true), arg_2.c.yx));
    var_0 = Struct_3(vec3<f32>(1f, -924f, _wgslsmith_f_op_f32(f32(-1f) * -2119f)), vec2<f32>(var_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x * var_0.a.x)))), (_wgslsmith_add_i32(-u_input.a.x, _wgslsmith_mult_i32(-27532i, arg_2.b.x)) ^ abs(firstTrailingBit(-1i))) & (-6013i ^ _wgslsmith_mod_i32(u_input.a.x, arg_0.c.x)), var_0.d);
    var_0 = Struct_3(var_0.a, var_0.b, 32697i, Struct_2(select(!vec3<bool>(var_0.d.a.x, global0.x, true), select(vec3<bool>(global0.x, var_0.d.a.x, false), func_3(), false && var_0.d.a.x), !var_0.d.a), reverseBits(vec2<i32>(-2147483647i, var_0.d.b.x))));
    let var_1 = all(select(func_3(), select(vec3<bool>(true, false, true), func_3(), true), true));
    global0 = !select(func_3(), vec3<bool>(var_0.b.x > var_0.a.x, global0.x, func_3().x), select(func_3(), vec3<bool>(var_0.d.a.x, false, true), func_3()));
    return var_0.d.a;
}

fn func_1() -> vec3<bool> {
    global0 = !select(!select(vec3<bool>(true, global0.x, false), vec3<bool>(global0.x, true, true), select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(global0.x, global0.x, false), false)), select(vec3<bool>(true, global0.x, global0.x), !(!vec3<bool>(global0.x, global0.x, false)), vec3<bool>(false, global0.x, any(vec3<bool>(global0.x, false, true)))), false);
    global0 = select(!select(!(!vec3<bool>(true, global0.x, global0.x)), select(vec3<bool>(global0.x, global0.x, global0.x), select(vec3<bool>(global0.x, true, false), vec3<bool>(true, global0.x, global0.x), global0.x), global0.x), all(vec4<bool>(global0.x, true, global0.x, true))), !vec3<bool>(true || (u_input.b != u_input.b), !global0.x, true), !(!select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(global0.x, global0.x, true), global0.x))));
    global0 = !select(vec3<bool>(true, any(!vec3<bool>(false, global0.x, true)), false), !(!vec3<bool>(global0.x, global0.x, false)), !(!func_2(Struct_1(u_input.c.yy, vec2<i32>(0i, 26888i), vec3<i32>(u_input.a.x, 1i, -53193i)), vec4<u32>(1u, 20523u, 0u, u_input.b), Struct_1(u_input.c.xy, vec2<i32>(14174i, u_input.d.x), u_input.d.xyx))));
    let var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_div_f32(-1176f, -906f), _wgslsmith_f_op_f32(select(1328f, -334f, false)), _wgslsmith_f_op_f32(f32(-1f) * -695f)))))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-604f, -1276f))))), -2147483647i >> (1u % 32u), Struct_2(!func_2(Struct_1(u_input.c.yy, u_input.d.yx, u_input.d.zxw), select(u_input.c, u_input.c, global0.x), Struct_1(u_input.c.ww, vec2<i32>(u_input.d.x, u_input.d.x), vec3<i32>(u_input.a.x, u_input.a.x, -52083i))), _wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_div_i32(u_input.d.x, 2147483647i), 1i), countOneBits(vec2<i32>(u_input.d.x, u_input.d.x)))));
    let var_1 = global0.x;
    return !func_3();
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !(!func_1());
    global0 = func_2(Struct_1(u_input.c.xy, ~vec2<i32>(_wgslsmith_div_i32(u_input.a.x, u_input.d.x), u_input.a.x), _wgslsmith_clamp_vec3_i32(-_wgslsmith_mod_vec3_i32(u_input.a, u_input.a), vec3<i32>(~0i, countOneBits(u_input.d.x), u_input.a.x), ~abs(vec3<i32>(1i, -12472i, u_input.a.x)))), u_input.c, Struct_1(~(u_input.c.xz << ((u_input.c.xz ^ vec2<u32>(u_input.b, 44542u)) % vec2<u32>(32u))), _wgslsmith_sub_vec2_i32(vec2<i32>(1i, _wgslsmith_dot_vec4_i32(u_input.d, u_input.d)), select(u_input.a.yx, u_input.a.yx, global0.yy)), -countOneBits(~vec3<i32>(u_input.a.x, 41265i, -2147483647i))));
    global0 = func_3();
    global0 = func_2(Struct_1(u_input.c.xw, ~(~vec2<i32>(u_input.a.x, u_input.a.x)), (vec3<i32>(-1i) * -u_input.a) ^ vec3<i32>(~34445i, ~9601i, ~0i)), _wgslsmith_mult_vec4_u32(~u_input.c, ~vec4<u32>(47273u, u_input.b, _wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(u_input.b, 1u, 1u, 1u)), 0u)), Struct_1(~u_input.c.ww, u_input.a.zy, -(~(-vec3<i32>(u_input.d.x, u_input.d.x, u_input.a.x)))));
    let var_0 = u_input.c;
    global0 = !func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_u32(~_wgslsmith_add_vec2_u32(u_input.c.wx, vec2<u32>(32999u, 1u)) | _wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(var_0.x, var_0.x), u_input.c.zy), u_input.c.zz), ~(vec2<u32>(u_input.c.x, u_input.b) ^ vec2<u32>(var_0.x, u_input.b))), _wgslsmith_f_op_f32(-774f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-481f + -2234f) - _wgslsmith_f_op_f32(abs(296f))), 222f, false))));
}

