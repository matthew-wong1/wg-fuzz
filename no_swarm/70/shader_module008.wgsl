struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: f32,
    d: vec3<bool>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<bool>,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec3<i32>,
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

var<private> global0: vec2<i32> = vec2<i32>(-17968i, -41562i);

var<private> global1: array<vec2<f32>, 26> = array<vec2<f32>, 26>(vec2<f32>(-1028f, -1140f), vec2<f32>(208f, -388f), vec2<f32>(-485f, 433f), vec2<f32>(1000f, -544f), vec2<f32>(1133f, 535f), vec2<f32>(340f, 142f), vec2<f32>(885f, 421f), vec2<f32>(-645f, -141f), vec2<f32>(-765f, -1533f), vec2<f32>(863f, -1558f), vec2<f32>(-654f, -185f), vec2<f32>(-502f, -739f), vec2<f32>(945f, 2078f), vec2<f32>(674f, 948f), vec2<f32>(-892f, -1291f), vec2<f32>(-1049f, -1196f), vec2<f32>(4014f, -267f), vec2<f32>(1006f, -1349f), vec2<f32>(632f, -1233f), vec2<f32>(1438f, 752f), vec2<f32>(649f, 232f), vec2<f32>(1250f, 2345f), vec2<f32>(-1091f, 786f), vec2<f32>(357f, 813f), vec2<f32>(1068f, 1354f), vec2<f32>(643f, 968f));

var<private> global2: i32;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32) -> vec4<i32> {
    let var_0 = Struct_1(_wgslsmith_mult_i32(global0.x, 0i) > global0.x, !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(true, true, any(vec2<bool>(false, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2468f) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-761f, -1730f))))), !vec3<bool>(any(vec4<bool>(true, false, true, false)), false, true), reverseBits(-(~(-vec4<i32>(3i, -3140i, 2147483647i, 2147483647i)))));
    let var_1 = Struct_2(!var_0.d.x, var_0.b.xx, Struct_1(var_0.a, vec3<bool>(all(select(vec3<bool>(var_0.a, true, true), var_0.b, true)), true, all(!vec4<bool>(true, false, var_0.b.x, true))), -1186f, select(select(vec3<bool>(true, var_0.b.x, true), vec3<bool>(true, var_0.b.x, false), false), select(var_0.d, select(var_0.d, vec3<bool>(var_0.a, var_0.d.x, false), var_0.a), vec3<bool>(var_0.a, var_0.a, var_0.a)), select(!vec3<bool>(var_0.b.x, var_0.d.x, var_0.d.x), vec3<bool>(var_0.b.x, var_0.a, false), all(vec4<bool>(false, false, var_0.b.x, var_0.b.x)))), _wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(var_0.e, var_0.e), var_0.e, var_0.e)), Struct_1(var_0.a == (var_0.a & false), var_0.d, var_0.c, select(select(vec3<bool>(var_0.b.x, false, false), vec3<bool>(var_0.a, var_0.b.x, true), !var_0.d.x), !var_0.d, select(!var_0.d, select(var_0.d, var_0.d, var_0.d), !vec3<bool>(false, var_0.a, var_0.a))), vec4<i32>(u_input.e.x, abs(_wgslsmith_sub_i32(u_input.d.x, var_0.e.x)), _wgslsmith_div_i32(_wgslsmith_mult_i32(var_0.e.x, var_0.e.x), ~var_0.e.x), 9328i)));
    global2 = reverseBits(-global0.x);
    global0 = select(vec2<i32>(global0.x, 16281i), vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(-7130i, u_input.d.x, var_0.e.x), i32(-1i) * -75335i, 1i), max(-u_input.d.x, -27589i)), true) | u_input.d.xy;
    let var_2 = Struct_1(-_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.c, var_1.d.e.x, var_0.e.x), select(vec4<i32>(u_input.c, global0.x, var_0.e.x, 0i), var_0.e, true)) > _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(var_1.d.e.yzy, _wgslsmith_mod_vec3_i32(var_1.d.e.wwy, var_0.e.yxx)), global0.x), vec3<bool>(!all(select(vec4<bool>(false, var_1.d.a, var_1.b.x, false), vec4<bool>(var_0.b.x, var_1.a, false, true), vec4<bool>(true, var_1.a, false, var_1.a))), true, !var_0.b.x), var_0.c, var_0.d, reverseBits(var_1.c.e));
    return vec4<i32>(abs(u_input.d.x), -1i >> (_wgslsmith_mult_u32(arg_0, arg_0) % 32u), ~(~1i), -2147483647i << (arg_0 % 32u));
}

fn func_4(arg_0: vec4<i32>) -> vec3<bool> {
    var var_0 = Struct_1(all(vec3<bool>(true, true, true)) && true, !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))))), select(select(select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), true), vec3<bool>(true, true, true), any(vec4<bool>(false, false, false, false))), vec3<bool>(u_input.a != -2147483647i, all(vec2<bool>(false, true)), any(vec3<bool>(false, false, true))), vec3<bool>(true, false, any(vec2<bool>(false, true)))), vec3<bool>(true, true, true), vec3<bool>(true, !all(vec4<bool>(false, false, true, true)), false)), abs(-min(-vec4<i32>(u_input.d.x, u_input.c, global0.x, -1331i), max(vec4<i32>(0i, global0.x, 2147483647i, -63589i), vec4<i32>(u_input.a, u_input.e.x, arg_0.x, -9650i)))));
    var var_1 = _wgslsmith_f_op_f32(-1286f * var_0.c);
    var var_2 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c, -855f, var_0.c) + vec3<f32>(-416f, var_0.c, var_0.c)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -581f, var_0.c) * vec3<f32>(-641f, var_0.c, -1012f))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-602f, var_0.c, var_0.c), vec3<f32>(var_0.c, var_0.c, var_0.c)))) + vec3<f32>(1917f, _wgslsmith_f_op_f32(-var_0.c), var_0.c)))));
    let var_3 = !any(!vec4<bool>(var_0.a, true, false, var_0.b.x && false));
    let var_4 = Struct_2(var_3, !(!vec2<bool>(select(var_3, var_0.b.x, var_3), var_3 && true)), Struct_1(!(~u_input.b > 79999u), select(!(!vec3<bool>(var_0.b.x, var_3, true)), select(var_0.b, select(var_0.b, var_0.d, vec3<bool>(true, false, var_3)), !var_0.b.x), false), _wgslsmith_f_op_f32(var_2.x + var_2.x), vec3<bool>(all(!vec4<bool>(true, var_0.a, true, var_0.a)), !all(var_0.b.yx), all(vec2<bool>(false, var_3))), _wgslsmith_mult_vec4_i32(arg_0, func_3(_wgslsmith_sub_u32(4294967295u, 1u)))), Struct_1(all(select(var_0.b.xy, vec2<bool>(true, var_0.d.x), var_0.d.x)), vec3<bool>(var_3, true, all(var_0.b)), 1445f, var_0.d, abs(vec4<i32>(select(global0.x, arg_0.x, true), var_0.e.x, global0.x >> (45303u % 32u), global0.x))));
    return var_4.c.b;
}

fn func_2(arg_0: vec4<bool>, arg_1: u32) -> bool {
    let var_0 = ~vec4<u32>(_wgslsmith_mult_u32(71641u, _wgslsmith_dot_vec3_u32(~vec3<u32>(arg_1, 0u, u_input.b), vec3<u32>(u_input.b, arg_1, u_input.b))), 0u, min(u_input.b ^ 27598u, 1087u), ~1u);
    var var_1 = select(!select(vec3<bool>(true && arg_0.x, global0.x == -40947i, all(arg_0)), arg_0.zzz, !(!arg_0.x)), arg_0.xxx, func_4(-min(func_3(arg_1), _wgslsmith_mod_vec4_i32(vec4<i32>(14861i, -63322i, global0.x, global0.x), vec4<i32>(global0.x, u_input.d.x, u_input.d.x, 4926i)))));
    let var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(647f + 688f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1228f))))), _wgslsmith_f_op_f32(-387f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(168f, -208f, var_1.x)) * _wgslsmith_f_op_f32(trunc(1561f))))), var_1.x));
    let var_3 = !(true & all(vec3<bool>(global0.x <= u_input.d.x, false, true)));
    var var_4 = vec4<bool>(false & any(!var_1.zy), !func_4(~(vec4<i32>(-2147483647i, global0.x, u_input.d.x, global0.x) >> (var_0 % vec4<u32>(32u)))).x, !any(!vec3<bool>(var_1.x, var_3, true)) | true, all(func_4(select(vec4<i32>(global0.x, global0.x, -32081i, u_input.c), reverseBits(vec4<i32>(u_input.c, u_input.c, 851i, u_input.e.x)), vec4<bool>(var_3, true, arg_0.x, true)))));
    return !select(true, !var_1.x, var_1.x);
}

fn func_1() -> vec2<i32> {
    var var_0 = Struct_2(all(!vec3<bool>(all(vec2<bool>(false, false)), any(vec3<bool>(false, true, true)), true)), vec2<bool>(true, true), Struct_1(!(2147483647i != global0.x) | select(true, true, func_2(vec4<bool>(false, true, true, false), u_input.b)), vec3<bool>(select(u_input.b, 72627u, true) != select(4294967295u, 41282u, true), all(vec2<bool>(true, true)), !(u_input.e.x < -44485i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -869f)))), func_4(~vec4<i32>(2147483647i, u_input.e.x, global0.x, u_input.c)), vec4<i32>(reverseBits(~global0.x), max(global0.x, global0.x) & u_input.c, _wgslsmith_mod_i32(i32(-1i) * -2147483647i, 1i), 1i)), Struct_1(true, vec3<bool>(true, true, true), _wgslsmith_f_op_f32(f32(-1f) * -918f), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), abs(~(-vec4<i32>(0i, 83456i, global0.x, u_input.e.x)))));
    global1 = array<vec2<f32>, 26>();
    let var_1 = Struct_2(var_0.d.b.x != true, select(vec2<bool>((true != var_0.c.a) == var_0.a, any(vec4<bool>(var_0.a, var_0.a, false, var_0.c.d.x)) && !var_0.a), func_4(vec4<i32>(~var_0.d.e.x, -6143i, _wgslsmith_mod_i32(global0.x, -2147483647i), -66550i)).zy, false), Struct_1(!(!(u_input.b < u_input.b)), select(!(!var_0.d.d), !var_0.c.d, vec3<bool>(-349f == var_0.c.c, false, var_0.a)), var_0.c.c, var_0.c.d, _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, _wgslsmith_add_i32(var_0.c.e.x, global0.x), _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.d.e.x, 87308i), vec2<i32>(1i, global0.x)), 1i), var_0.d.e)), Struct_1(false, !(!var_0.d.d), _wgslsmith_f_op_f32(-830f - _wgslsmith_f_op_f32(max(681f, _wgslsmith_f_op_f32(-var_0.c.c)))), !vec3<bool>(all(vec4<bool>(var_0.b.x, var_0.b.x, true, true)), true, var_0.d.c > var_0.d.c), vec4<i32>(-1i, var_0.d.e.x, 1i, 1i)));
    var var_2 = Struct_2(false, var_1.b, var_0.d, var_1.c);
    var var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_1.c.c, _wgslsmith_f_op_f32(-var_2.d.c))));
    return vec2<i32>(var_1.c.e.x, ~var_2.c.e.x);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = -2147483647i;
    let var_0 = true;
    var var_1 = firstTrailingBit(firstTrailingBit(-firstLeadingBit(u_input.d.xz)) | _wgslsmith_add_vec2_i32(func_1(), vec2<i32>(_wgslsmith_sub_i32(2147483647i, 27402i), 1i)));
    var var_2 = countOneBits(~_wgslsmith_mod_vec2_u32(select(vec2<u32>(20751u, u_input.b) << (vec2<u32>(0u, u_input.b) % vec2<u32>(32u)), vec2<u32>(u_input.b, u_input.b) & vec2<u32>(u_input.b, 1u), select(vec2<bool>(var_0, false), vec2<bool>(var_0, var_0), true)), select(vec2<u32>(4294967295u, u_input.b) & vec2<u32>(4294967295u, 0u), vec2<u32>(u_input.b, u_input.b), func_4(vec4<i32>(6719i, u_input.e.x, var_1.x, 1281i)).zx)));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 65579u, u_input.b), ~vec3<u32>(var_2.x, 0u, u_input.b)));
}

