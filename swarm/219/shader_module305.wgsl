struct Struct_1 {
    a: vec4<bool>,
    b: vec3<u32>,
    c: vec4<f32>,
    d: u32,
}

struct Struct_2 {
    a: f32,
    b: vec2<u32>,
    c: vec4<f32>,
}

struct Struct_3 {
    a: u32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec3<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: f32,
    d: vec4<f32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> vec4<bool> {
    global0 = !all(vec2<bool>(true, any(vec4<bool>(true, true, true, true))));
    var var_0 = vec3<bool>(true, true, true);
    var_0 = vec3<bool>(true, var_0.x && var_0.x, false || (true || all(vec4<bool>(var_0.x, true, var_0.x, false))));
    return select(vec4<bool>(var_0.x | (true || any(vec3<bool>(var_0.x, true, var_0.x))), var_0.x, true, true), vec4<bool>(!(!(!var_0.x)), !(!(!var_0.x)), (any(vec4<bool>(var_0.x, var_0.x, false, false)) == var_0.x) == true, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.b), -vec2<i32>(u_input.b, 41109i)) <= countOneBits(u_input.b)), !any(vec4<bool>(var_0.x | true, true, var_0.x, false)));
}

fn func_2() -> bool {
    var var_0 = ~vec2<i32>(_wgslsmith_mod_i32(u_input.b, u_input.b), abs(1i));
    global0 = false;
    let var_1 = select(select(select(select(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), false), vec3<bool>(true, false, true), vec3<bool>(true, true, false)), select(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), true), vec3<bool>(true, true, true), any(vec3<bool>(false, true, false))), true), !select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true)), vec3<bool>(any(func_3()), true | (_wgslsmith_f_op_f32(813f + -397f) > _wgslsmith_f_op_f32(floor(1054f))), func_3().x), !select(vec3<bool>(true, var_0.x != var_0.x, true), select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true)), true), ~var_0.x >= _wgslsmith_clamp_i32(u_input.a, 34955i, var_0.x)));
    let var_2 = Struct_3(u_input.d.x, ~select(_wgslsmith_div_vec4_i32(vec4<i32>(0i, u_input.b, 2147483647i, u_input.b) >> (vec4<u32>(u_input.d.x, 49161u, 1526u, u_input.d.x) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(vec4<i32>(0i, -21731i, 21592i, 0i), vec4<i32>(u_input.b, 2147483647i, 0i, -3488i))), firstTrailingBit(vec4<i32>(u_input.a, 1814i, -1i, var_0.x) & vec4<i32>(-51834i, 36367i, 31924i, 37567i)), !any(vec2<bool>(true, var_1.x))));
    let var_3 = u_input.e;
    return all(select(!var_1.xx, select(!var_1.yx, !vec2<bool>(true, var_1.x), _wgslsmith_f_op_f32(select(-751f, -1403f, false)) <= _wgslsmith_f_op_f32(-999f * 318f)), func_3().yx));
}

fn func_1(arg_0: vec2<f32>, arg_1: bool, arg_2: vec3<f32>) -> Struct_3 {
    let var_0 = countOneBits(abs(max(vec3<i32>(min(u_input.b, u_input.a), _wgslsmith_sub_i32(u_input.b, 2147483647i), u_input.a), vec3<i32>(1i, -u_input.b, ~u_input.a))));
    let var_1 = reverseBits(var_0);
    global0 = !func_2();
    global0 = !func_3().x;
    var var_2 = Struct_3(_wgslsmith_sub_u32(29749u, 0u), vec4<i32>(2147483647i, firstTrailingBit(countOneBits(-2147483647i)), -30579i, u_input.a));
    return Struct_3(abs(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(~u_input.e, u_input.e), _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.a, 56112u, 1u, 1u), vec4<u32>(u_input.c, u_input.c, u_input.d.x, 57205u)), countOneBits(17654u)))), vec4<i32>(-8471i, var_0.x, _wgslsmith_clamp_i32(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -18927i), vec2<i32>(var_0.x, 13467i)), var_0.x), var_0.x, u_input.a), var_1.x));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_3) -> f32 {
    global0 = arg_1.a.x;
    let var_0 = _wgslsmith_mult_vec4_i32(countOneBits(vec4<i32>(firstLeadingBit(u_input.a) ^ -arg_0.x, arg_2.b.x, _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, arg_2.b.x, 2147483647i, arg_0.x), arg_2.b), vec4<i32>(arg_0.x, arg_2.b.x, arg_0.x, u_input.b)), 1i)), reverseBits(arg_2.b));
    global0 = !any(vec4<bool>(select(true, arg_1.a.x & arg_1.a.x, false), true, all(select(vec4<bool>(true, true, arg_1.a.x, arg_1.a.x), arg_1.a, true)), false));
    global0 = !(!(false & all(select(arg_1.a, arg_1.a, vec4<bool>(arg_1.a.x, arg_1.a.x, false, arg_1.a.x)))));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_1.c.x + arg_1.c.x))))))), ~(~(u_input.d.zx & u_input.d.yx)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_1.c)))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c.x) * 1218f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-698f, _wgslsmith_f_op_f32(func_4(vec2<i32>(u_input.a, u_input.b) ^ vec2<i32>(u_input.a, 1i), Struct_1(vec4<bool>(false, false, false, false), u_input.e.wzz, vec4<f32>(746f, -426f, -892f, -1280f), u_input.e.x), func_1(vec2<f32>(119f, -1000f), false, vec3<f32>(334f, 923f, -448f))))))));
    global0 = !func_2();
    var var_1 = Struct_2(var_0, abs(vec2<u32>(_wgslsmith_mult_u32(u_input.e.x, 4294967295u), 24653u) ^ (reverseBits(u_input.e.wx) << (_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(u_input.d.x, u_input.d.x)) % vec2<u32>(32u)))), vec4<f32>(var_0, var_0, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(var_0, var_0)), var_0)), _wgslsmith_f_op_f32(exp2(var_0))));
    var var_2 = Struct_3(_wgslsmith_mult_u32(u_input.e.x, u_input.e.x), vec4<i32>(reverseBits(-(u_input.b & u_input.b)), 1i, ~u_input.a, select(_wgslsmith_clamp_i32(-45134i, ~2147483647i, 1i), func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-570f, -1941f)), true, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1.a, var_0, 491f), vec3<f32>(-416f, -902f, var_1.a)))).b.x, any(vec4<bool>(true, true, false, false)) & select(true, false, true))));
    let var_3 = !(!select(func_3().ywx, vec3<bool>(true, var_2.b.x != -8303i, false), true));
    let x = u_input.a;
    s_output = StorageBuffer(select(~(-(~u_input.b)), _wgslsmith_mult_i32(35033i, 0i), !select(var_3.x, var_3.x || false, true)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1.a, -1546f, 944f), vec3<f32>(1230f, var_1.a, var_1.a))))))), _wgslsmith_f_op_f32(func_4(var_2.b.ww, Struct_1(!(!vec4<bool>(var_3.x, var_3.x, var_3.x, true)), ~vec3<u32>(var_2.a, 1u, var_1.b.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a, var_0, 1437f, var_1.a) * vec4<f32>(var_0, var_1.a, 2094f, var_1.c.x)), max(~50411u, reverseBits(var_2.a))), Struct_3(_wgslsmith_mod_u32(u_input.d.x, 4294967295u), min(_wgslsmith_div_vec4_i32(var_2.b, vec4<i32>(u_input.a, var_2.b.x, var_2.b.x, var_2.b.x)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, 12943i, 0i, var_2.b.x), vec4<i32>(13723i, 25971i, -1i, 20070i)))))), vec4<f32>(-2374f, _wgslsmith_div_f32(-469f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0))), _wgslsmith_f_op_f32(-291f + -1000f), _wgslsmith_f_op_f32(func_4(vec2<i32>(u_input.a, -u_input.a), Struct_1(!vec4<bool>(true, false, var_3.x, false), _wgslsmith_mod_vec3_u32(u_input.e.wxz, u_input.e.yxy), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, -573f, 1294f, var_0) - vec4<f32>(231f, var_0, -1000f, var_1.c.x)), var_2.a), func_1(vec2<f32>(var_1.c.x, 1864f), var_3.x, _wgslsmith_f_op_vec3_f32(sign(var_1.c.wyy)))))), vec2<f32>(-291f, -920f));
}

