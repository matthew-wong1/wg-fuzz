struct Struct_1 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: f32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: f32,
    d: vec2<i32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: vec4<i32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 26> = array<vec3<bool>, 26>(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>) -> vec2<bool> {
    var var_0 = Struct_1(select(!(!select(arg_0.a, vec4<bool>(true, arg_0.a.x, true, arg_0.a.x), true)), !select(!arg_0.a, select(vec4<bool>(false, true, false, arg_0.b.x), arg_0.a, arg_0.b.x), any(global0[_wgslsmith_index_u32(u_input.b, 26u)])), vec4<bool>(!(!arg_0.b.x), true, arg_0.a.x || true, !(true && arg_0.b.x))), vec2<bool>(false | arg_0.a.x, true), arg_0.c, _wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(arg_1.yzw >> (abs(vec3<u32>(u_input.b, u_input.a.x, u_input.b)) % vec3<u32>(32u)), vec3<i32>(arg_0.d.x, -3364i >> (u_input.a.x % 32u), abs(20350i))), reverseBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_1.x, 43499i, 16813i), _wgslsmith_mult_vec3_i32(vec3<i32>(-27595i, arg_1.x, arg_0.d.x), arg_0.d), vec3<i32>(arg_0.d.x, arg_1.x, arg_0.d.x))), vec3<i32>(abs(arg_0.d.x << (u_input.b % 32u)), -(i32(-1i) * -2147483647i), arg_0.d.x)));
    var var_1 = _wgslsmith_f_op_f32(var_0.c * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -428f), _wgslsmith_f_op_f32(f32(-1f) * -3261f)) + -746f))));
    var var_2 = ~vec3<u32>(~u_input.a.x, u_input.b, _wgslsmith_sub_u32(u_input.a.x, reverseBits(u_input.b) << (11350u % 32u)));
    var var_3 = Struct_2(arg_1.x, Struct_1(!vec4<bool>(arg_0.a.x, any(vec4<bool>(true, true, arg_0.b.x, true)), !var_0.a.x, any(var_0.b)), var_0.b, var_0.c, var_0.d & _wgslsmith_div_vec3_i32(vec3<i32>(11044i, -24266i, arg_0.d.x), ~vec3<i32>(arg_0.d.x, 1i, 41195i))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.c), _wgslsmith_div_f32(-789f, 139f))))))), arg_1.xw, vec3<f32>(-2008f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-558f, -731f)), var_0.c)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0.c * var_0.c)))));
    var var_4 = Struct_2(arg_0.d.x, Struct_1(select(!select(var_0.a, var_0.a, true), select(!arg_0.a, var_0.a, !var_0.a.x), all(var_0.a.xw) == var_3.b.a.x), select(!vec2<bool>(arg_0.a.x, false), !var_3.b.b, !vec2<bool>(false, var_3.b.b.x)), 488f, vec3<i32>(-var_0.d.x, var_3.a, abs(_wgslsmith_mod_i32(arg_1.x, var_0.d.x)))), _wgslsmith_f_op_f32(-var_0.c), ~max(-vec2<i32>(-3929i, -43805i) | arg_1.zx, var_0.d.yy), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-var_3.e), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-var_3.e), var_3.e)))));
    return var_4.b.a.yw;
}

fn func_2() -> Struct_1 {
    let var_0 = select(!(!vec2<bool>(true, any(global0[_wgslsmith_index_u32(1u, 26u)]))), func_3(Struct_1(vec4<bool>(true, true, true, true), vec2<bool>(true, any(vec4<bool>(true, true, false, true))), _wgslsmith_f_op_f32(min(-111f, _wgslsmith_f_op_f32(round(-437f)))), -vec3<i32>(-61725i, 2147483647i, 2147483647i)), abs(vec4<i32>(1i, 1i, 1i, 1i))), !(!vec2<bool>(any(vec2<bool>(false, true)), true)));
    global0 = array<vec3<bool>, 26>();
    global0 = array<vec3<bool>, 26>();
    let var_1 = Struct_2(-1i, Struct_1(select(vec4<bool>(false, var_0.x, !var_0.x, var_0.x & true), select(select(vec4<bool>(var_0.x, false, var_0.x, var_0.x), vec4<bool>(true, false, true, true), false), select(vec4<bool>(false, var_0.x, var_0.x, var_0.x), vec4<bool>(true, var_0.x, false, var_0.x), vec4<bool>(var_0.x, var_0.x, false, true)), true), var_0.x), !select(vec2<bool>(var_0.x, var_0.x), select(var_0, vec2<bool>(var_0.x, var_0.x), var_0), select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, true), var_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-452f - -1000f) - 539f) + -1237f), max(vec3<i32>(0i, min(-46311i, 1i), 0i), vec3<i32>(1i, 1i, 1i))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1103f))), firstTrailingBit(~_wgslsmith_add_vec2_i32(vec2<i32>(2214i, 1i), _wgslsmith_mult_vec2_i32(vec2<i32>(-39964i, 6423i), vec2<i32>(0i, 0i)))), vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1899f)), _wgslsmith_f_op_f32(f32(-1f) * -1231f)))), -440f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-819f, _wgslsmith_f_op_f32(abs(-673f))) * 1514f)));
    global0 = array<vec3<bool>, 26>();
    return Struct_1(!vec4<bool>(true, true, any(vec4<bool>(false, var_1.b.a.x, var_1.b.b.x, true)), var_0.x && var_0.x), vec2<bool>(select(any(var_1.b.a), any(!global0[_wgslsmith_index_u32(53457u, 26u)]), false), var_0.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(410f))) * _wgslsmith_f_op_f32(step(-158f, _wgslsmith_f_op_f32(var_1.e.x + var_1.e.x)))))), -(~vec3<i32>(_wgslsmith_clamp_i32(2147483647i, 16373i, var_1.d.x), ~var_1.b.d.x, min(var_1.d.x, var_1.a))));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> Struct_2 {
    var var_0 = ~select(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, u_input.a.x, 1u, 0u) & vec4<u32>(8385u, 4294967295u, 55719u, u_input.a.x), vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.a.x) | vec4<u32>(u_input.a.x, u_input.b, 1u, 4294967295u)), max(reverseBits(vec4<u32>(1u, u_input.b, 67529u, u_input.a.x)), vec4<u32>(u_input.a.x, u_input.b, 83740u, u_input.b)), _wgslsmith_sub_u32(u_input.a.x, 13697u) != u_input.b) | _wgslsmith_add_vec4_u32(~firstLeadingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, 60472u, u_input.a.x), vec4<u32>(u_input.b, u_input.b, 51363u, u_input.b))), _wgslsmith_add_vec4_u32(~(vec4<u32>(u_input.b, 30145u, u_input.a.x, 0u) & vec4<u32>(0u, 0u, u_input.b, u_input.b)), select(min(vec4<u32>(0u, 1u, 49950u, u_input.a.x), vec4<u32>(1u, 43087u, u_input.b, 25649u)), select(vec4<u32>(1u, 4294967295u, 0u, 1u), vec4<u32>(53896u, u_input.a.x, 1u, 8499u), vec4<bool>(false, true, arg_0, true)), arg_1.b.x)));
    var_0 = reverseBits(vec4<u32>(_wgslsmith_mod_u32(31855u, u_input.a.x), ~u_input.b, firstTrailingBit(16767u), u_input.b));
    var_0 = firstLeadingBit(reverseBits(vec4<u32>(~1u, 7925u, _wgslsmith_mod_u32(u_input.a.x, 22166u), var_0.x)));
    var var_1 = arg_1;
    global0 = array<vec3<bool>, 26>();
    return Struct_2(~(~_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -2147483647i) | var_1.d.xz, _wgslsmith_add_vec2_i32(vec2<i32>(var_1.d.x, -39514i), arg_1.d.zx))), arg_2, _wgslsmith_f_op_f32(-arg_2.c), var_1.d.xy, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1446f, var_1.c, var_1.c), vec3<f32>(-605f, var_1.c, -272f), global0[_wgslsmith_index_u32(32486u, 26u)])))) + vec3<f32>(-1000f, _wgslsmith_f_op_f32(-867f + 1644f), 823f))));
}

fn func_1() -> vec3<u32> {
    let var_0 = func_4(true, func_2(), Struct_1(select(vec4<bool>(true, true, true, true), vec4<bool>(true, select(false, false, true), all(vec3<bool>(false, true, false)), true), true), vec2<bool>(true, true), _wgslsmith_f_op_f32(ceil(-848f)), vec3<i32>(~1i << (~u_input.a.x % 32u), ~max(1i, -6667i), _wgslsmith_dot_vec3_i32(vec3<i32>(36348i, -14654i, -2147483647i), vec3<i32>(72506i, 2147483647i, 1i)) & -2147483647i)));
    let var_1 = Struct_1(select(select(!vec4<bool>(var_0.b.b.x, false, var_0.b.b.x, var_0.b.b.x), vec4<bool>(func_3(Struct_1(var_0.b.a, var_0.b.a.xy, var_0.e.x, vec3<i32>(var_0.d.x, 2147483647i, -1i)), vec4<i32>(var_0.b.d.x, var_0.d.x, var_0.b.d.x, var_0.a)).x, true, var_0.b.a.x, true), any(var_0.b.a.yzx)), var_0.b.a, !var_0.b.a.x), func_3(Struct_1(func_2().a, vec2<bool>(var_0.b.a.x | var_0.b.a.x, true), -402f, -select(var_0.b.d, var_0.b.d, global0[_wgslsmith_index_u32(u_input.b, 26u)])), vec4<i32>(_wgslsmith_div_i32(1i, var_0.d.x << (58104u % 32u)), var_0.d.x, var_0.d.x, -var_0.d.x)), _wgslsmith_f_op_f32(f32(-1f) * -2655f), _wgslsmith_div_vec3_i32(var_0.b.d, select(~func_4(var_0.b.a.x, Struct_1(vec4<bool>(true, var_0.b.a.x, var_0.b.a.x, var_0.b.b.x), var_0.b.b, 1513f, var_0.b.d), var_0.b).b.d, vec3<i32>(37357i, -57915i, _wgslsmith_sub_i32(13559i, var_0.a)), var_0.b.b.x)));
    let var_2 = vec2<bool>(!var_1.a.x, all(vec4<bool>(var_0.b.b.x, var_0.b.a.x, false, true)));
    let var_3 = Struct_2(-27839i, var_1, _wgslsmith_f_op_f32(-369f - _wgslsmith_f_op_f32(floor(-1900f))), vec2<i32>(-var_0.d.x, -5200i), _wgslsmith_f_op_vec3_f32(var_0.e + _wgslsmith_f_op_vec3_f32(var_0.e - vec3<f32>(_wgslsmith_div_f32(var_0.b.c, var_0.b.c), _wgslsmith_f_op_f32(-var_1.c), func_4(var_0.b.b.x, Struct_1(var_0.b.a, vec2<bool>(var_0.b.a.x, var_1.a.x), var_1.c, var_0.b.d), Struct_1(vec4<bool>(var_0.b.a.x, false, var_1.a.x, false), var_0.b.a.zy, 575f, var_0.b.d)).c))));
    var var_4 = var_0.e.xz;
    return ~max(vec3<u32>(0u, ~0u, _wgslsmith_sub_u32(u_input.a.x, u_input.a.x)) & _wgslsmith_add_vec3_u32(vec3<u32>(1u, u_input.a.x, 4294967295u), ~vec3<u32>(24449u, 4294967295u, 4294967295u)), vec3<u32>(~u_input.b, abs(0u), abs(u_input.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<bool>, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(i32(-1i) * -8568i), reverseBits(func_1()), 28187i, -firstLeadingBit(_wgslsmith_mod_vec4_i32(-vec4<i32>(0i, -4726i, 1628i, 1i), -vec4<i32>(-25485i, -2147483647i, -1i, -68436i))), ~(~vec3<i32>(2147483647i, -47864i, 57655i)) | _wgslsmith_clamp_vec3_i32(vec3<i32>(func_4(true, Struct_1(vec4<bool>(true, true, true, false), vec2<bool>(true, false), -110f, vec3<i32>(961i, 46527i, -1i)), Struct_1(vec4<bool>(false, true, false, false), vec2<bool>(true, false), 772f, vec3<i32>(15i, -53278i, 1i))).d.x, min(74189i, 1i), i32(-1i) * -32663i), vec3<i32>(0i, _wgslsmith_mod_i32(-21500i, -73590i), ~2147483647i), ~vec3<i32>(-1i, -2147483647i, -42515i)));
}

