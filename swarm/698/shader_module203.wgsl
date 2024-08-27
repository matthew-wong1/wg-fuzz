struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: bool,
    d: vec2<f32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 10> = array<vec4<u32>, 10>(vec4<u32>(3925u, 1u, 9679u, 8365u), vec4<u32>(39576u, 1u, 0u, 100002u), vec4<u32>(4294967295u, 4294967295u, 50748u, 0u), vec4<u32>(0u, 3918u, 2710u, 21826u), vec4<u32>(0u, 46085u, 27903u, 20043u), vec4<u32>(0u, 27820u, 11528u, 337u), vec4<u32>(1u, 89615u, 5219u, 125459u), vec4<u32>(0u, 27636u, 0u, 4294967295u), vec4<u32>(0u, 4294967295u, 3817u, 0u), vec4<u32>(0u, 0u, 22733u, 1u));

var<private> global1: array<Struct_1, 15>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: Struct_2) -> i32 {
    global0 = array<vec4<u32>, 10>();
    let var_0 = arg_2.b.d.x;
    let var_1 = arg_2;
    global1 = array<Struct_1, 15>();
    var var_2 = select(vec2<bool>(select(!(arg_2.a.c && arg_2.b.b.x), select(arg_1 < 586f, !var_1.a.b.x, any(vec4<bool>(false, false, arg_2.b.b.x, var_1.a.b.x))), all(select(vec3<bool>(var_1.a.c, true, true), var_1.a.e.ywy, arg_2.a.c))), true), var_1.b.e.yw, !(!select(vec2<bool>(var_1.a.c, var_1.b.e.x), vec2<bool>(var_1.b.e.x, var_1.b.c), any(vec4<bool>(arg_2.a.b.x, true, arg_2.a.b.x, true)))));
    return ~_wgslsmith_mod_i32(var_1.b.a, min(_wgslsmith_mult_i32(1i, var_1.a.a), 10516i));
}

fn func_1() -> vec3<i32> {
    let var_0 = true;
    global1 = array<Struct_1, 15>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(577f + -324f));
    let var_2 = max(-(i32(-1i) * -2147483647i), min(~(-30026i), -_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 0i), vec2<i32>(12752i, 31361i))));
    global0 = array<vec4<u32>, 10>();
    return abs(_wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(max(vec3<i32>(0i, var_2, 6152i), vec3<i32>(var_2, 15014i, 2147483647i)), vec3<i32>(2147483647i, var_2, -1i) << (u_input.a.wzw % vec3<u32>(32u))) ^ vec3<i32>(10148i, func_2(var_2, 675f, Struct_2(global1[_wgslsmith_index_u32(9363u, 15u)], Struct_1(var_2, vec2<bool>(true, true), true, vec2<f32>(715f, 438f), vec4<bool>(var_0, true, var_0, var_0)), u_input.a)), 11731i), vec3<i32>(var_2, _wgslsmith_dot_vec4_i32(-vec4<i32>(var_2, var_2, var_2, var_2), vec4<i32>(2875i, var_2, var_2, var_2)), _wgslsmith_add_i32(1i, _wgslsmith_add_i32(1i, 12182i)))));
}

fn func_3(arg_0: Struct_1) -> bool {
    var var_0 = Struct_1(firstLeadingBit(min(arg_0.a, arg_0.a) | (~1i >> (u_input.a.x % 32u))), !select(arg_0.b, vec2<bool>(false, false), all(vec2<bool>(true, true))), any(arg_0.e.wzz), arg_0.d, !arg_0.e);
    global0 = array<vec4<u32>, 10>();
    var var_1 = Struct_1(_wgslsmith_dot_vec4_i32(~(~(-vec4<i32>(var_0.a, -1i, var_0.a, 17702i))), ~_wgslsmith_add_vec4_i32(vec4<i32>(var_0.a, 0i, arg_0.a, 2147483647i) >> (vec4<u32>(28764u, 4294967295u, u_input.a.x, 1u) % vec4<u32>(32u)), -vec4<i32>(29573i, 1i, 28008i, var_0.a))), select(vec2<bool>(select(true, u_input.a.x < u_input.a.x, arg_0.c), !var_0.e.x), select(vec2<bool>(!var_0.c, arg_0.b.x), vec2<bool>(var_0.b.x, arg_0.b.x && var_0.e.x), select(vec2<bool>(var_0.c, true), vec2<bool>(arg_0.c, true), !var_0.e.yz)), vec2<bool>(arg_0.b.x, all(!vec4<bool>(arg_0.c, true, arg_0.e.x, true)))), all(select(vec4<bool>(any(vec4<bool>(var_0.c, var_0.b.x, var_0.e.x, var_0.e.x)), arg_0.b.x, true, arg_0.e.x), vec4<bool>(var_0.b.x, false, false, -1i != arg_0.a), select(false, arg_0.e.x, false) | true)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.d.x), _wgslsmith_f_op_f32(-arg_0.d.x), u_input.a.x < 4294967295u)), _wgslsmith_f_op_f32(-var_0.d.x))), arg_0.e);
    let var_2 = Struct_2(Struct_1(var_1.a, var_0.e.xw, ~u_input.a.x != 1u, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(var_1.d.x, var_0.d.x), vec2<f32>(var_0.d.x, arg_0.d.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.d.x, 881f)), select(arg_0.e.xw, vec2<bool>(var_1.e.x, true), false))))), select(!var_0.e, !var_0.e, select(vec4<bool>(var_1.b.x, arg_0.c, false, var_1.e.x), !vec4<bool>(true, true, var_1.c, arg_0.e.x), vec4<bool>(var_0.b.x, true, var_0.e.x, var_1.b.x)))), Struct_1(arg_0.a, !vec2<bool>(true, var_1.c || var_1.c), var_0.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1020f, var_1.d.x) + var_1.d) + vec2<f32>(var_1.d.x, -1359f))), vec4<bool>(true, arg_0.b.x, !any(vec2<bool>(true, true)), true)), min(u_input.a, vec4<u32>(max(~u_input.a.x, ~u_input.a.x), ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.a.x), vec2<u32>(u_input.a.x, 1u)), ~(~4294967295u), ~4294967295u)));
    let var_3 = _wgslsmith_f_op_f32(-var_1.d.x);
    return select(var_1.c != any(!(!arg_0.e.wzx)), true, false);
}

fn func_4(arg_0: bool) -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-1f), -2244f)));
    var var_1 = Struct_2(Struct_1(~22648i, select(vec2<bool>(true, true), select(select(vec2<bool>(arg_0, true), vec2<bool>(true, arg_0), vec2<bool>(false, true)), !vec2<bool>(arg_0, arg_0), arg_0 | true), select(vec2<bool>(arg_0, true), vec2<bool>(true, false), true)), false, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -2261f) + _wgslsmith_f_op_vec2_f32(-var_0))), select(!(!vec4<bool>(false, false, false, arg_0)), select(vec4<bool>(arg_0, false, true, arg_0), vec4<bool>(true, arg_0, arg_0, true), !arg_0), !(arg_0 & arg_0))), Struct_1(-77363i, !vec2<bool>(true, !arg_0), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(var_0.x, var_0.x)))) < _wgslsmith_f_op_f32(trunc(var_0.x)), var_0, select(vec4<bool>(!arg_0, !arg_0, arg_0 | arg_0, arg_0), !vec4<bool>(true, arg_0, true, true), !vec4<bool>(arg_0, arg_0, arg_0, false))), vec4<u32>(78310u, min(1u, ~u_input.a.x), 4294967295u, u_input.a.x));
    var var_2 = var_1.b.e.xyy;
    global1 = array<Struct_1, 15>();
    var var_3 = Struct_1(reverseBits(var_1.b.a >> (~_wgslsmith_mult_u32(var_1.c.x, 16348u) % 32u)), select(var_1.b.e.xz, !var_1.b.b, var_2.xx), all(var_2.zz), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -782f), _wgslsmith_div_f32(-1532f, 2095f))), select(var_1.b.e, vec4<bool>(false, arg_0, false, var_2.x), select(!vec4<bool>(arg_0, false, true, var_1.b.b.x), vec4<bool>(true, var_1.a.c, var_2.x, var_1.b.c), vec4<bool>(150f < var_1.a.d.x, !arg_0, true, false))));
    return any(select(vec2<bool>(false, any(select(var_3.e.zxw, vec3<bool>(false, false, var_1.a.e.x), var_1.b.e.x))), select(vec2<bool>(true, var_3.c), !var_1.b.e.xx, select(var_2.yx, select(vec2<bool>(false, false), vec2<bool>(true, false), true), var_3.d.x >= var_3.d.x)), var_1.b.a < -(~39413i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~_wgslsmith_dot_vec3_i32(func_1(), ~max(vec3<i32>(2147483647i, -14622i, -1i), vec3<i32>(-1i, 32213i, -1i))), vec2<bool>(true, all(vec4<bool>(true, true, true, true)) & false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1208f, -712f)) - -1000f) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1470f - 1078f)))) < _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-213f + -1498f))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1157f, -448f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(712f, -666f))) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1402f, 150f)), vec2<f32>(-1000f, 229f)))))), vec4<bool>(!any(vec4<bool>(true, false, false, true)) & true, true, select(func_4(func_3(global1[_wgslsmith_index_u32(u_input.a.x, 15u)])), false, select(true, all(vec4<bool>(false, false, true, true)), true)), false));
    var var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(-1467f)), _wgslsmith_f_op_f32(select(350f, 151f, true))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 1228f)), var_0.d)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.d))));
    global1 = array<Struct_1, 15>();
    global1 = array<Struct_1, 15>();
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -703f);
    var var_3 = min((_wgslsmith_mult_vec4_i32(vec4<i32>(var_0.a, var_0.a, var_0.a, var_0.a), vec4<i32>(var_0.a, -39418i, 23988i, -1680i)) & abs(vec4<i32>(var_0.a, -1i, -2147483647i, var_0.a))) & vec4<i32>(-1i, -_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 5423i, var_0.a, var_0.a), vec4<i32>(var_0.a, var_0.a, var_0.a, var_0.a)), -(var_0.a >> (88692u % 32u)), var_0.a), vec4<i32>(reverseBits(43478i ^ var_0.a), var_0.a, var_0.a, 2147483647i ^ ~_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 2147483647i), vec2<i32>(-49666i, 27595i))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.xy, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d.x * 376f)), _wgslsmith_f_op_f32(var_0.d.x - 1208f), true || var_0.b.x)))), u_input.a.zy);
}

