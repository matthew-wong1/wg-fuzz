struct Struct_1 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: u32,
    d: vec3<u32>,
    e: i32,
}

struct Struct_2 {
    a: i32,
    b: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: i32,
    d: f32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: f32,
    c: Struct_3,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<i32>, arg_1: bool, arg_2: Struct_3) -> vec4<f32> {
    let var_0 = select(arg_2.a.a, ~arg_2.a.a, select(vec4<bool>(true, !arg_1, false, false), !select(!vec4<bool>(arg_1, arg_1, arg_1, arg_1), !vec4<bool>(arg_1, arg_1, false, arg_1), any(vec3<bool>(arg_1, false, false))), true));
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(arg_2.b.b.x, arg_2.b.b.x)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1043f - arg_2.b.b.x) + _wgslsmith_f_op_f32(-arg_2.b.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.d - _wgslsmith_f_op_f32(f32(-1f) * -167f))), _wgslsmith_f_op_f32(1269f - _wgslsmith_f_op_f32(floor(-1088f)))));
    let var_2 = false;
    global0 = _wgslsmith_mod_vec4_u32(vec4<u32>(firstTrailingBit(countOneBits(arg_2.a.d.x)) << (global0.x % 32u), abs(13024u), _wgslsmith_mod_u32(1u, 1u), ~_wgslsmith_div_u32(_wgslsmith_div_u32(var_0.x, 0u), var_0.x)), _wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(var_0, max(~arg_2.a.a, var_0), var_0), ~vec4<u32>(_wgslsmith_mod_u32(global0.x, arg_2.a.a.x), arg_2.a.d.x, ~var_0.x, _wgslsmith_div_u32(var_0.x, global0.x))));
    var var_3 = Struct_5(arg_2.a);
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -253f), arg_2.d, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(arg_2.d * 413f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b.b.x)))));
}

fn func_2() -> Struct_2 {
    let var_0 = !(all(vec4<bool>(any(vec4<bool>(true, false, false, true)), global0.x != global0.x, true, all(vec3<bool>(true, false, false)))) && (409f >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -531f), _wgslsmith_f_op_f32(trunc(978f)))));
    let var_1 = Struct_2(u_input.b, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(u_input.c, var_0, Struct_3(Struct_1(vec4<u32>(34989u, global0.x, global0.x, 0u), u_input.e, 16958u, vec3<u32>(global0.x, global0.x, global0.x), u_input.a), Struct_2(0i, vec4<f32>(-181f, -803f, -434f, 1025f)), 64427i, -1630f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1142f, 625f, 677f, 776f) - vec4<f32>(1174f, 1110f, 1422f, 1083f)))))));
    let var_2 = select(any(select(!select(vec3<bool>(false, false, false), vec3<bool>(true, false, var_0), vec3<bool>(false, var_0, var_0)), !select(vec3<bool>(var_0, var_0, var_0), vec3<bool>(var_0, var_0, var_0), true), _wgslsmith_f_op_f32(var_1.b.x * var_1.b.x) < _wgslsmith_f_op_f32(abs(var_1.b.x)))), !all(select(vec4<bool>(var_0, var_0, var_0, var_0), vec4<bool>(var_0, false, false, true), vec4<bool>(true, true, var_0, true))) | any(select(vec4<bool>(true, true, var_0, var_0), !vec4<bool>(var_0, false, var_0, true), !var_0)), false);
    var var_3 = var_1;
    var var_4 = _wgslsmith_f_op_f32(-725f + -234f);
    return Struct_2(var_1.a, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_1.b.x, 747f, var_1.b.x, 606f), vec4<f32>(var_3.b.x, var_1.b.x, var_1.b.x, -980f)))), var_3.b));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<bool>) -> vec2<bool> {
    var var_0 = arg_1.x;
    var var_1 = firstLeadingBit(arg_0.d.x);
    var var_2 = func_2();
    let var_3 = arg_1;
    var_2 = func_2();
    return select(vec2<bool>(any(vec4<bool>(arg_1.x, true, var_3.x, false)) && all(vec4<bool>(true, true, true, true)), true), select(arg_1.yx, !var_3.wy, select(var_3.xx, select(select(arg_1.zz, vec2<bool>(true, false), vec2<bool>(false, false)), arg_1.yz, vec2<bool>(false, arg_1.x)), true)), vec2<bool>(false, var_3.x));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec2<u32>) -> vec4<f32> {
    global0 = vec4<u32>(reverseBits(arg_1.x), reverseBits(_wgslsmith_sub_u32(max(0u, global0.x), min(41424u, 7655u))), countOneBits(_wgslsmith_add_u32(~(~global0.x), global0.x)), global0.x);
    global0 = _wgslsmith_clamp_vec4_u32(~vec4<u32>(~(~arg_1.x), arg_1.x, arg_1.x, ~arg_1.x ^ 0u), ~(~vec4<u32>(70671u, arg_1.x, 0u, arg_1.x) & _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1.x, 56042u, global0.x, 7810u), vec4<u32>(arg_1.x, 0u, global0.x, 44665u), vec4<u32>(global0.x, arg_1.x, global0.x, 1u))) << (countOneBits(~(vec4<u32>(arg_1.x, 0u, arg_1.x, arg_1.x) >> (vec4<u32>(4294967295u, global0.x, 0u, arg_1.x) % vec4<u32>(32u)))) % vec4<u32>(32u)), vec4<u32>(4294967295u, 42381u, 74905u, select(~0u, _wgslsmith_clamp_u32(global0.x, global0.x, _wgslsmith_clamp_u32(arg_1.x, 58072u, global0.x)), !(!arg_0.x))));
    let var_0 = vec3<bool>(!arg_0.x, true && (!(-2147483647i != u_input.b) || all(!vec3<bool>(true, arg_0.x, arg_0.x))), true);
    var var_1 = vec4<f32>(-2263f, 1122f, _wgslsmith_f_op_f32(floor(-433f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1590f - -236f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(vec4<i32>(-1i, 0i, -56652i, u_input.b), arg_0.x, Struct_3(Struct_1(vec4<u32>(0u, arg_1.x, 18402u, 4294967295u), vec2<i32>(u_input.d, u_input.b), arg_1.x, global0.wxx, -1i), Struct_2(-24980i, vec4<f32>(843f, -155f, 1192f, -1000f)), u_input.d, -315f))).x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -542f))));
    var_1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(110f, 2023f, var_1.x, var_1.x)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1222f, var_1.x, var_1.x, var_1.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.x, var_1.x, var_1.x, 1054f), vec4<f32>(-172f, var_1.x, -495f, 1108f), true)))))));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(var_1.x)), _wgslsmith_f_op_f32(var_1.x * 879f), _wgslsmith_f_op_f32(floor(-276f)), -1160f) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, 1000f, var_1.x) - vec4<f32>(var_1.x, var_1.x, var_1.x, 599f))))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(100f, var_1.x, var_1.x, -492f) - vec4<f32>(824f, var_1.x, var_1.x, var_1.x))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(select(u_input.c.x, u_input.d, any(select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), false), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), false), vec3<bool>(true, true, true)))), -u_input.a);
    var_0 = ~(select(_wgslsmith_clamp_vec2_i32(u_input.e, _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, 25688i), u_input.e), vec2<i32>(-2147483647i, var_0.x)), ~vec2<i32>(u_input.b, 1i), vec2<bool>(true, false)) >> (countOneBits(_wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(global0.zy, global0.zy), ~global0.wx)) % vec2<u32>(32u)));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-483f, 739f, 1015f, -1363f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1064f, 1317f, 213f, -118f)))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(select(vec2<bool>(false, true), vec2<bool>(true, true), func_1(Struct_1(vec4<u32>(global0.x, 0u, 4294967295u, global0.x), vec2<i32>(var_0.x, u_input.e.x), 11107u, global0.yzz, 2147483647i), vec4<bool>(false, false, true, true))), vec2<u32>(1u, 0u) | abs(global0.xx))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 1101f, -1145f, -737f)) - _wgslsmith_div_vec4_f32(vec4<f32>(-1000f, -1837f, -830f, 1067f), vec4<f32>(478f, -1139f, 1021f, -1000f))))));
    let x = u_input.a;
    s_output = StorageBuffer(-vec3<i32>(u_input.e.x, -1i & var_0.x, abs(func_2().a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)));
}

