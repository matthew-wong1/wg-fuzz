struct Struct_1 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: vec4<bool>,
    d: f32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26>;

var<private> global1: u32;

var<private> global2: vec2<bool>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_3, arg_1: f32) -> i32 {
    let var_0 = Struct_1(arg_0.a.b.yxz, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-784f, _wgslsmith_f_op_f32(arg_0.a.a.d * arg_1), _wgslsmith_div_f32(-257f, arg_1))) + arg_0.a.a.b), !select(vec4<bool>(arg_0.a.a.c.x, true, global2.x, all(arg_0.a.a.c.zzy)), select(vec4<bool>(false, true, global2.x, true), arg_0.a.a.c, arg_1 == arg_0.a.a.b.x), arg_0.a.a.c), _wgslsmith_f_op_f32(-arg_0.a.a.b.x), -(~vec4<i32>(2147483647i, u_input.a, 2147483647i, arg_0.a.a.e.x) << (~arg_0.a.b % vec4<u32>(32u))));
    global1 = 35898u;
    return _wgslsmith_sub_i32(~firstLeadingBit(~u_input.a), _wgslsmith_clamp_i32(u_input.a, ~_wgslsmith_div_i32(firstTrailingBit(-75957i), arg_0.a.a.e.x), ~select(-16674i, ~58725i, var_0.a.x < 4294967295u)));
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_1(countOneBits(~(~vec3<u32>(1u, 1u, 1u))), vec3<f32>(_wgslsmith_f_op_f32(round(223f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-218f * _wgslsmith_f_op_f32(1053f + 688f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1007f - -591f), _wgslsmith_div_f32(943f, -779f)))), 153f), vec4<bool>(false, false, global2.x, !global2.x), _wgslsmith_f_op_f32(trunc(1f)), -min(-vec4<i32>(18720i, u_input.a, u_input.b.x, 34082i) >> (firstLeadingBit(vec4<u32>(0u, 0u, 4294967295u, 1u)) % vec4<u32>(32u)), vec4<i32>(~(-10510i), u_input.a, u_input.b.x | u_input.a, _wgslsmith_sub_i32(u_input.a, -1i))));
    let var_1 = false;
    global1 = min(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(countOneBits(~vec3<u32>(119196u, var_0.a.x, var_0.a.x)), countOneBits(vec3<u32>(var_0.a.x, var_0.a.x, var_0.a.x)) << ((var_0.a & var_0.a) % vec3<u32>(32u))), ~(~(~69487u))), var_0.a.x);
    var var_2 = -1615f;
    var var_3 = Struct_1(var_0.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(2576f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-665f + -349f)), _wgslsmith_f_op_f32(-var_0.d))), vec4<bool>(var_0.a.x >= countOneBits(var_0.a.x), -func_3(Struct_3(Struct_2(Struct_1(vec3<u32>(64849u, 63936u, 4294967295u), var_0.b, vec4<bool>(false, false, true, false), var_0.b.x, var_0.e), vec4<u32>(var_0.a.x, var_0.a.x, var_0.a.x, 6544u), vec2<i32>(-1i, -2147483647i), vec4<u32>(var_0.a.x, 4294967295u, var_0.a.x, var_0.a.x))), var_0.b.x) >= -(~var_0.e.x), false, var_0.c.x), var_0.b.x, _wgslsmith_clamp_vec4_i32(-var_0.e, vec4<i32>(1i, ~(-2147483647i), countOneBits(-4786i), ~u_input.b.x) >> (vec4<u32>(var_0.a.x & var_0.a.x, 23224u, firstLeadingBit(0u), abs(var_0.a.x)) % vec4<u32>(32u)), vec4<i32>(-u_input.a, -(u_input.a << (var_0.a.x % 32u)), func_3(Struct_3(Struct_2(Struct_1(var_0.a, vec3<f32>(-129f, -658f, -426f), vec4<bool>(true, var_1, global2.x, global2.x), 362f, var_0.e), vec4<u32>(var_0.a.x, var_0.a.x, var_0.a.x, 49391u), var_0.e.zw, vec4<u32>(67974u, var_0.a.x, 1u, 20256u))), _wgslsmith_f_op_f32(trunc(var_0.d))), 1i)));
    return Struct_2(global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 6662u, var_0.a.x, 4294967295u), countOneBits(vec4<u32>(68800u, 7627u, var_3.a.x, 55095u))), 4294967295u), 26u)], ~vec4<u32>(var_3.a.x, firstTrailingBit(var_3.a.x), abs(1u >> (var_3.a.x % 32u)), 1u), _wgslsmith_clamp_vec2_i32(select(~vec2<i32>(-2147483647i, 0i), vec2<i32>(-45503i, var_0.e.x), global2.x), select(firstTrailingBit(firstLeadingBit(var_3.e.yw)), abs(vec2<i32>(2147483647i, var_0.e.x)), var_3.c.yx), vec2<i32>(~0i, _wgslsmith_dot_vec2_i32(vec2<i32>(-6860i, u_input.b.x), var_3.e.wz) | -30809i)), ~_wgslsmith_div_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(92549u, var_0.a.x, 4294967295u, 4294967295u), vec4<u32>(27843u, var_3.a.x, 1u, var_3.a.x)), _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(113299u, var_0.a.x, var_3.a.x, var_0.a.x), vec4<u32>(var_0.a.x, var_0.a.x, var_3.a.x, var_3.a.x)), ~vec4<u32>(var_0.a.x, var_0.a.x, 14254u, var_3.a.x))));
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    let var_0 = arg_0.a.b;
    let var_1 = false | (arg_0.a.b.x >= -643f);
    var var_2 = 1000f;
    var var_3 = !func_2().a.c.wz;
    let var_4 = true;
    return Struct_1(vec3<u32>(countOneBits(firstLeadingBit(min(73515u, 14792u))), ~_wgslsmith_div_u32(~0u, arg_0.d.x), _wgslsmith_add_u32(~arg_0.a.a.x, arg_0.d.x) >> ((_wgslsmith_dot_vec2_u32(arg_0.a.a.xx, vec2<u32>(arg_0.b.x, 4730u)) ^ ~4294967295u) % 32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.a.b)), !(!arg_0.a.c), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -336f))), abs(~(~(~vec4<i32>(2147483647i, arg_0.c.x, u_input.b.x, u_input.a)))));
}

fn func_5(arg_0: f32, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: Struct_2) -> Struct_2 {
    global0 = array<Struct_1, 26>();
    global2 = vec2<bool>(false, false);
    global0 = array<Struct_1, 26>();
    let var_0 = arg_2;
    let var_1 = Struct_1(((vec3<u32>(35303u, var_0.a.x, arg_3.a.a.x) >> ((arg_3.a.a << (arg_3.a.a % vec3<u32>(32u))) % vec3<u32>(32u))) & func_2().b.xyz) << (vec3<u32>(0u, 14090u, ~1u) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_3.a.b + var_0.b)))), arg_3.a.b)), vec4<bool>(false, false, !(!(arg_2.c.x && arg_1.x)), select(false, true, select(arg_3.c.x >= arg_3.c.x, global2.x != global2.x, false))), _wgslsmith_f_op_f32(trunc(func_2().a.b.x)), vec4<i32>(func_2().a.e.x, var_0.e.x, 2147483647i, 2147483647i) >> (~_wgslsmith_sub_vec4_u32(select(vec4<u32>(arg_3.a.a.x, 0u, var_0.a.x, 70263u), vec4<u32>(0u, arg_2.a.x, 36934u, 1u), arg_2.c.x), _wgslsmith_sub_vec4_u32(arg_3.b, vec4<u32>(3699u, var_0.a.x, 9481u, var_0.a.x))) % vec4<u32>(32u)));
    return Struct_2(Struct_1(var_0.a, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_2.b - arg_2.b)))), arg_2.c, 3158f, vec4<i32>(max(_wgslsmith_dot_vec2_i32(var_1.e.wx, vec2<i32>(233i, 0i)), -u_input.a), ~arg_3.c.x, reverseBits(var_0.e.x), arg_3.a.e.x)), arg_3.d, vec2<i32>(-countOneBits(0i), -4636i), ~abs(~select(vec4<u32>(0u, 1u, var_1.a.x, 0u), vec4<u32>(var_1.a.x, 1u, 1u, var_1.a.x), true)));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<f32>) -> u32 {
    var var_0 = countOneBits(5635u);
    let var_1 = 12296u;
    let var_2 = func_5(arg_1.x, arg_0.c.wxw, func_4(func_2()), Struct_2(Struct_1(firstLeadingBit(arg_0.a) >> (vec3<u32>(var_1, var_1, 48432u) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(151f, -597f, arg_1.x), vec3<f32>(arg_1.x, arg_0.b.x, -1570f)))), arg_0.c, -123f, vec4<i32>(7663i, u_input.a, u_input.b.x, arg_0.e.x)), firstTrailingBit(vec4<u32>(1u, arg_0.a.x, 0u & arg_0.a.x, _wgslsmith_clamp_u32(1u, 28861u, 1u))), countOneBits(_wgslsmith_div_vec2_i32(u_input.b, vec2<i32>(-2147483647i, 7136i)) ^ vec2<i32>(1i, arg_0.e.x)), vec4<u32>(~arg_0.a.x, ~var_1 | ~0u, ~0u, _wgslsmith_sub_u32(4294967295u, arg_0.a.x))));
    return func_5(arg_0.d, !vec3<bool>(true, var_2.a.c.x, all(var_2.a.c.zww) & true), Struct_1(arg_0.a, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(-567f * var_2.a.b.x), arg_0.d), vec3<f32>(-681f, arg_0.b.x, arg_1.x))), !vec4<bool>(arg_0.c.x || false, true, all(arg_0.c), false), _wgslsmith_f_op_f32(-func_4(Struct_2(Struct_1(vec3<u32>(var_2.b.x, 45786u, arg_0.a.x), vec3<f32>(597f, arg_1.x, var_2.a.d), var_2.a.c, arg_0.b.x, vec4<i32>(var_2.a.e.x, u_input.a, -6434i, u_input.a)), vec4<u32>(var_2.a.a.x, var_2.d.x, 108693u, 1u), arg_0.e.yw, vec4<u32>(38588u, arg_0.a.x, var_2.a.a.x, 4294967295u))).d), arg_0.e), var_2).b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = abs(~(~func_1(global0[_wgslsmith_index_u32(~83842u, 26u)], vec4<f32>(-1148f, 915f, 1000f, -1036f))));
    var var_0 = firstTrailingBit(0u) | (~(~53458u) << (_wgslsmith_dot_vec2_u32(vec2<u32>(1u, _wgslsmith_div_u32(4294967295u, 105654u)), vec2<u32>(1u, 1u)) % 32u));
    global0 = array<Struct_1, 26>();
    let var_1 = func_4(func_5(-1000f, !select(vec3<bool>(true, true, true), vec3<bool>(true, global2.x, global2.x), !vec3<bool>(false, global2.x, global2.x)), func_4(func_5(_wgslsmith_f_op_f32(ceil(2390f)), !vec3<bool>(global2.x, global2.x, false), func_5(1290f, vec3<bool>(false, false, false), Struct_1(vec3<u32>(61814u, 31035u, 21864u), vec3<f32>(414f, 951f, 799f), vec4<bool>(true, false, true, false), -1000f, vec4<i32>(u_input.b.x, 2738i, 2147483647i, u_input.a)), Struct_2(global0[_wgslsmith_index_u32(0u, 26u)], vec4<u32>(4294967295u, 4294967295u, 74702u, 52173u), u_input.b, vec4<u32>(97928u, 0u, 50846u, 1u))).a, func_5(1000f, vec3<bool>(false, global2.x, global2.x), Struct_1(vec3<u32>(1u, 4294967295u, 63655u), vec3<f32>(-788f, 991f, 611f), vec4<bool>(true, false, global2.x, true), -279f, vec4<i32>(1i, u_input.b.x, -48159i, u_input.b.x)), Struct_2(Struct_1(vec3<u32>(4294967295u, 14085u, 1u), vec3<f32>(1275f, 418f, -932f), vec4<bool>(false, true, global2.x, true), 1009f, vec4<i32>(-10495i, u_input.a, u_input.a, u_input.a)), vec4<u32>(0u, 1u, 18481u, 76787u), u_input.b, vec4<u32>(1u, 4294967295u, 0u, 4294967295u))))), Struct_2(Struct_1(~vec3<u32>(0u, 55842u, 0u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(864f, -839f, -269f)), func_2().a.c, 1000f, _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x, 4622i, 1i, -62009i), vec4<i32>(0i, 69881i, 1i, u_input.a))), func_2().b, vec2<i32>(firstTrailingBit(u_input.b.x), -u_input.a), vec4<u32>(1u, 1u, 1u, 1u)))).a.yx;
    global2 = !(!(!(!vec2<bool>(false, global2.x))));
    global2 = func_5(_wgslsmith_div_f32(-950f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-295f)))), !(!(!(!vec3<bool>(global2.x, global2.x, global2.x)))), Struct_1(countOneBits(~(vec3<u32>(var_1.x, var_1.x, var_1.x) >> (vec3<u32>(var_1.x, var_1.x, var_1.x) % vec3<u32>(32u)))), _wgslsmith_div_vec3_f32(func_5(-1653f, select(vec3<bool>(global2.x, true, true), vec3<bool>(false, global2.x, false), global2.x), global0[_wgslsmith_index_u32(10892u, 26u)], func_2()).a.b, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-431f, 680f, -1736f) - vec3<f32>(-1000f, 1000f, 121f))))), select(vec4<bool>(func_5(995f, vec3<bool>(global2.x, global2.x, global2.x), global0[_wgslsmith_index_u32(0u, 26u)], Struct_2(Struct_1(vec3<u32>(var_1.x, var_1.x, 7618u), vec3<f32>(-1000f, 1046f, -1432f), vec4<bool>(false, global2.x, global2.x, global2.x), 128f, vec4<i32>(u_input.b.x, 2147483647i, 0i, u_input.a)), vec4<u32>(var_1.x, 10162u, 0u, 4294967295u), u_input.b, vec4<u32>(var_1.x, 1u, var_1.x, 48156u))).a.c.x, any(vec4<bool>(false, true, true, false)), all(vec3<bool>(global2.x, false, global2.x)), true), select(func_2().a.c, vec4<bool>(global2.x, global2.x, global2.x, true), func_4(Struct_2(Struct_1(vec3<u32>(9277u, 0u, 61596u), vec3<f32>(1000f, -350f, 1120f), vec4<bool>(false, global2.x, global2.x, true), -131f, vec4<i32>(0i, u_input.b.x, u_input.b.x, 1i)), vec4<u32>(60017u, 48824u, var_1.x, var_1.x), u_input.b, vec4<u32>(4294967295u, var_1.x, 81510u, 41229u))).c), false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1536f + _wgslsmith_div_f32(-854f, 2023f))), -vec4<i32>(min(21390i, -16075i), countOneBits(u_input.b.x), u_input.b.x, u_input.a)), Struct_2(func_4(func_2()), min(select(vec4<u32>(var_1.x, 64167u, var_1.x, 11341u), vec4<u32>(43413u, var_1.x, var_1.x, 4114u), vec4<bool>(global2.x, false, false, global2.x)) ^ (vec4<u32>(var_1.x, var_1.x, 0u, var_1.x) >> (vec4<u32>(2919u, var_1.x, var_1.x, 55950u) % vec4<u32>(32u))), vec4<u32>(firstLeadingBit(17576u), ~48730u, min(var_1.x, var_1.x), min(var_1.x, 8203u))), -u_input.b, _wgslsmith_mult_vec4_u32(countOneBits(~vec4<u32>(5356u, var_1.x, 25427u, 0u)), firstLeadingBit(vec4<u32>(58341u, var_1.x, 4294967295u, var_1.x))))).a.c.xw;
    var var_2 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-569f + 1731f), _wgslsmith_f_op_f32(116f + -417f))), -1650f, 669f))));
    global1 = 4294967295u;
    var var_3 = global0[_wgslsmith_index_u32(var_1.x, 26u)];
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a.x, select((~vec4<u32>(var_3.a.x, var_1.x, 4294967295u, 35590u) << ((vec4<u32>(var_1.x, var_1.x, 0u, var_3.a.x) ^ vec4<u32>(var_3.a.x, var_1.x, 0u, var_1.x)) % vec4<u32>(32u))) | ~vec4<u32>(4294967295u, var_3.a.x, var_1.x, var_3.a.x), firstLeadingBit(~vec4<u32>(4294967295u, var_3.a.x, var_1.x, 37628u)), true), var_1.x);
}

