struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: bool,
    b: vec2<u32>,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 29> = array<vec4<bool>, 29>(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true));

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> i32 {
    var var_0 = Struct_2(all(vec2<bool>(all(vec3<bool>(true, false, false)) | true, true)), vec2<u32>(select(u_input.a.x, _wgslsmith_dot_vec2_u32(u_input.a.zy, u_input.a.xx), any(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)))), u_input.a.x << (u_input.a.x % 32u)), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1727f, 1290f), _wgslsmith_f_op_f32(ceil(-1000f)))), 2421f), false), Struct_1(-152f, any(vec2<bool>(true, all(vec2<bool>(true, false))))));
    var_0 = Struct_2(true, var_0.b, Struct_1(1f, select(var_0.a, false | any(vec3<bool>(false, true, var_0.a)), !var_0.c.b)), var_0.c);
    global0 = array<vec4<bool>, 29>();
    let var_1 = Struct_2(var_0.a && any(vec2<bool>(true, true)), _wgslsmith_mod_vec2_u32(vec2<u32>(min(u_input.a.x, u_input.a.x), _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(83815u, u_input.a.x, 0u), _wgslsmith_mod_u32(var_0.b.x, 4294967295u), countOneBits(u_input.a.x))), vec2<u32>(var_0.b.x, 4294967295u)), var_0.c, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1935f, _wgslsmith_f_op_f32(exp2(var_0.d.a)))) + var_0.c.a), true));
    global0 = array<vec4<bool>, 29>();
    return _wgslsmith_div_i32(_wgslsmith_mod_i32(1i, -firstLeadingBit(2147483647i)), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), countOneBits(vec4<i32>(1i, 1i, 1i, 1i)))) | (_wgslsmith_dot_vec4_i32(min(countOneBits(vec4<i32>(-40346i, -38330i, 0i, 2147483647i)), -vec4<i32>(-2321i, 0i, -13059i, 5643i)), vec4<i32>(i32(-1i) * -4353i, 1i, 0i, _wgslsmith_mult_i32(-1i, -1i))) << (1u % 32u));
}

fn func_2(arg_0: u32) -> bool {
    let var_0 = Struct_2(-1i > min(_wgslsmith_add_i32(1i, i32(-1i) * -1i), _wgslsmith_sub_i32(func_3(), ~(-1i))), vec2<u32>(~select(u_input.a.x, ~4294967295u, true), ~(~24768u | _wgslsmith_sub_u32(arg_0, arg_0))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(529f + 409f))), true), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(990f - -835f) * _wgslsmith_f_op_f32(960f - -597f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-987f + -1267f))), true));
    let var_1 = Struct_2(!var_0.a, countOneBits(var_0.b), var_0.c, var_0.c);
    let var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(var_0.d.a)))))))));
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.c.a, _wgslsmith_f_op_f32(abs(var_1.d.a)), -299f, _wgslsmith_f_op_f32(min(1076f, _wgslsmith_f_op_f32(485f - 1142f)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, -1028f, 1319f, -546f)) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1134f, var_0.d.a, var_0.d.a, var_0.d.a)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1595f, -1467f, var_1.c.a, var_1.c.a), vec4<f32>(701f, var_0.c.a, var_0.d.a, var_2), var_1.c.b)))))))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d.a, var_2, var_2, var_2)))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.a, var_2, 768f, var_1.c.a))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, -279f, var_2, 443f))))))));
    var_3 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(926f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(var_2)))), -1835f, 569f)));
    return any(vec3<bool>(1i > _wgslsmith_dot_vec2_i32(select(vec2<i32>(1i, 18182i), vec2<i32>(-1i, 2147483647i), var_0.c.b), ~vec2<i32>(-13440i, -14336i)), var_0.c.b, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 0i, -1i, 2147483647i), vec4<i32>(1i, 1i, 1i, 1i)) == ~19018i));
}

fn func_4(arg_0: vec3<bool>, arg_1: i32, arg_2: vec4<u32>) -> Struct_2 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-354f, -714f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(844f * 446f))))), all(select(select(!arg_0.yz, arg_0.xy, !arg_0.x), select(vec2<bool>(arg_0.x, false), select(arg_0.zx, arg_0.zy, true), arg_0.yx), any(arg_0.yy))));
    global0 = array<vec4<bool>, 29>();
    var_0 = Struct_1(_wgslsmith_f_op_f32(round(var_0.a)), var_0.b || arg_0.x);
    let var_1 = 35129u;
    global0 = array<vec4<bool>, 29>();
    return Struct_2(false, _wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.a.yw, min(arg_2.wx, vec2<u32>(46213u, arg_2.x))), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(u_input.a, vec4<u32>(4294967295u, 0u, var_1, arg_2.x)), vec4<u32>(38463u, 1u, 1u, var_1))), _wgslsmith_mult_vec2_u32(vec2<u32>(6687u, 12718u), min(vec2<u32>(33913u, 0u), vec2<u32>(0u, u_input.a.x)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1193f - var_0.a) * _wgslsmith_f_op_f32(-487f + -541f))), all(vec4<bool>(arg_0.x, var_0.b, var_0.b, var_0.b)) != arg_0.x), Struct_1(var_0.a, true));
}

fn func_1(arg_0: Struct_2, arg_1: vec3<u32>) -> Struct_2 {
    global0 = array<vec4<bool>, 29>();
    global0 = array<vec4<bool>, 29>();
    let var_0 = Struct_1(arg_0.d.a, arg_0.c.b);
    global0 = array<vec4<bool>, 29>();
    global0 = array<vec4<bool>, 29>();
    return func_4(vec3<bool>(!(!select(var_0.b, true, false)), true, select(true, false, func_2(64346u))), ~(~select(func_3(), 1i, true || arg_0.d.b)), vec4<u32>(arg_0.b.x, _wgslsmith_dot_vec3_u32(select(~vec3<u32>(arg_1.x, u_input.a.x, arg_0.b.x), _wgslsmith_clamp_vec3_u32(u_input.a.wyw, vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u), arg_1), arg_0.d.b), ~u_input.a.zww | ~arg_1), _wgslsmith_dot_vec3_u32(countOneBits(_wgslsmith_sub_vec3_u32(u_input.a.www, vec3<u32>(53892u, 22535u, 1u))), _wgslsmith_mod_vec3_u32(arg_1, ~arg_1)), 4294967295u));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2) -> vec4<bool> {
    global0 = array<vec4<bool>, 29>();
    let var_0 = false;
    global0 = array<vec4<bool>, 29>();
    global0 = array<vec4<bool>, 29>();
    global0 = array<vec4<bool>, 29>();
    return !global0[_wgslsmith_index_u32(72920u, 29u)];
}

fn func_6(arg_0: vec3<bool>, arg_1: Struct_1) -> Struct_2 {
    global0 = array<vec4<bool>, 29>();
    let var_0 = _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.a.zyw, vec3<u32>(~_wgslsmith_add_u32(u_input.a.x, u_input.a.x), ~(u_input.a.x << (u_input.a.x % 32u)), max(_wgslsmith_div_u32(u_input.a.x, u_input.a.x), 0u))), _wgslsmith_mod_vec3_u32(u_input.a.yzx, u_input.a.yyx));
    let var_1 = abs(abs(max(_wgslsmith_dot_vec3_u32(u_input.a.yzx ^ vec3<u32>(11267u, 63000u, var_0), ~u_input.a.wwx), var_0)));
    let var_2 = var_0;
    global0 = array<vec4<bool>, 29>();
    return func_1(func_1(func_4(arg_0, _wgslsmith_sub_i32(1i, -6821i), vec4<u32>(_wgslsmith_add_u32(var_2, 6654u), 1u, var_0, u_input.a.x)), u_input.a.zwz), ~select(~firstLeadingBit(u_input.a.xxz), _wgslsmith_mod_vec3_u32(u_input.a.xzw, _wgslsmith_add_vec3_u32(u_input.a.yxx, u_input.a.www)), arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 29>();
    var var_0 = func_6(vec3<bool>(true, true, all(func_5(func_1(Struct_2(false, u_input.a.ww, Struct_1(-260f, true), Struct_1(-690f, true)), u_input.a.wxw), func_4(vec3<bool>(false, false, false), -2147483647i, u_input.a)))), Struct_1(-1000f, !func_4(vec3<bool>(false, true, true), -2147483647i, u_input.a & vec4<u32>(u_input.a.x, 0u, 4294967295u, 0u)).d.b));
    let var_1 = firstTrailingBit(~vec3<i32>((0i >> (u_input.a.x % 32u)) << ((var_0.b.x & var_0.b.x) % 32u), max(i32(-1i) * -46121i, -40044i), 1i));
    let var_2 = ~_wgslsmith_sub_vec4_u32(~(~(vec4<u32>(u_input.a.x, 30661u, 26284u, 43610u) ^ u_input.a)), ~select(vec4<u32>(u_input.a.x, 1u, var_0.b.x, u_input.a.x), vec4<u32>(var_0.b.x, 0u, 0u, 61702u), vec4<bool>(false, true, true, var_0.d.b)) | ~(~u_input.a));
    var var_3 = _wgslsmith_clamp_u32(~46845u, var_2.x << (21792u % 32u), u_input.a.x);
    var var_4 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1948f)), var_0.c.b);
    var_4 = func_6(select(select(vec3<bool>(!var_0.c.b, !var_0.a, func_5(Struct_2(var_0.d.b, var_0.b, Struct_1(var_4.a, var_0.c.b), Struct_1(var_4.a, false)), Struct_2(var_0.c.b, vec2<u32>(0u, var_0.b.x), Struct_1(-308f, var_0.d.b), Struct_1(var_4.a, var_4.b))).x), func_5(func_6(vec3<bool>(true, var_0.c.b, false), var_0.d), Struct_2(var_4.b, vec2<u32>(90498u, var_0.b.x), Struct_1(-101f, var_0.d.b), Struct_1(var_4.a, true))).yzx, !(!vec3<bool>(true, var_4.b, false))), select(vec3<bool>(true, true, var_0.a), !(!vec3<bool>(var_0.d.b, var_4.b, var_4.b)), vec3<bool>(true, true, any(vec2<bool>(var_0.a, var_0.a)))), var_0.a), var_0.d).c;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, vec3<u32>(var_2.x, ~func_4(vec3<bool>(false, var_0.c.b, true), 2289i, u_input.a).b.x, func_4(vec3<bool>(true, var_0.c.b, true), _wgslsmith_sub_i32(1i, -19229i), var_2).b.x) << (var_2.www % vec3<u32>(32u)), abs(~35493u), _wgslsmith_div_vec4_i32(-(~_wgslsmith_add_vec4_i32(vec4<i32>(var_1.x, -48206i, 30596i, 1i), vec4<i32>(var_1.x, var_1.x, var_1.x, var_1.x))), select(max(firstTrailingBit(vec4<i32>(var_1.x, var_1.x, -38764i, var_1.x)), vec4<i32>(var_1.x, var_1.x, var_1.x, var_1.x)), vec4<i32>(var_1.x, 84909i, var_1.x, var_1.x) ^ vec4<i32>(var_1.x, 1i, 16898i, -4514i), global0[_wgslsmith_index_u32(u_input.a.x, 29u)])));
}

