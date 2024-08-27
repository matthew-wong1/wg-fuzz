struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: i32,
    d: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 16>;

var<private> global1: vec2<f32> = vec2<f32>(-839f, -919f);

var<private> global2: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(false, vec4<i32>(-1i, 0i, 49677i, -25998i), 38213i, 432f), Struct_1(true, vec4<i32>(-1i, 5680i, -410i, 1i), 24423i, -1850f), Struct_1(false, vec4<i32>(2147483647i, 2147483647i, -21757i, 1i), i32(-2147483648), -555f), Struct_1(false, vec4<i32>(-34504i, 1i, -1i, -39450i), 40133i, -1156f), Struct_1(true, vec4<i32>(2147483647i, -78493i, -15089i, -71642i), 2147483647i, 263f), Struct_1(false, vec4<i32>(-767i, 1i, -1i, -41797i), i32(-2147483648), 645f), Struct_1(true, vec4<i32>(-1i, 51850i, -12598i, i32(-2147483648)), 1i, 792f), Struct_1(false, vec4<i32>(34957i, 0i, i32(-2147483648), 0i), -19745i, -1749f), Struct_1(true, vec4<i32>(2147483647i, 1278i, i32(-2147483648), 0i), -6014i, 325f), Struct_1(true, vec4<i32>(32218i, i32(-2147483648), -56899i, -758i), -1i, 1696f), Struct_1(false, vec4<i32>(i32(-2147483648), -1i, 1i, 27157i), 0i, -903f), Struct_1(true, vec4<i32>(-1i, 1i, 6330i, 1i), -1i, -1264f), Struct_1(false, vec4<i32>(-1i, 2147483647i, -37376i, 2147483647i), -1i, -200f), Struct_1(false, vec4<i32>(-57331i, 17984i, 2147483647i, i32(-2147483648)), -1i, -366f), Struct_1(true, vec4<i32>(-1i, i32(-2147483648), 2147483647i, i32(-2147483648)), -13426i, -274f), Struct_1(true, vec4<i32>(i32(-2147483648), i32(-2147483648), -31359i, 0i), i32(-2147483648), 356f), Struct_1(false, vec4<i32>(0i, -13318i, -16791i, 25988i), 8702i, 829f), Struct_1(true, vec4<i32>(-17242i, -1i, -16635i, 2147483647i), 66617i, 2740f), Struct_1(false, vec4<i32>(15424i, 16756i, -1i, 2283i), 38165i, -1361f), Struct_1(true, vec4<i32>(-57691i, -58253i, -9909i, 23510i), 66989i, 202f), Struct_1(false, vec4<i32>(-34918i, 2147483647i, 0i, -3327i), 15173i, -587f), Struct_1(false, vec4<i32>(4499i, 0i, -77316i, -1i), 24215i, -343f));

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: f32, arg_3: vec2<u32>) -> f32 {
    global2 = array<Struct_1, 22>();
    let var_0 = -(~(~select(arg_1.b.yw, vec2<i32>(-48261i, 18044i), false))) ^ vec2<i32>(110169i, u_input.a.x);
    let var_1 = arg_1.d;
    var var_2 = global2[_wgslsmith_index_u32(0u, 22u)];
    let var_3 = countOneBits(~_wgslsmith_add_vec2_u32(~(~arg_3), arg_3));
    return global1.x;
}

fn func_2(arg_0: f32) -> vec4<i32> {
    var var_0 = -_wgslsmith_sub_vec4_i32(min(reverseBits(vec4<i32>(u_input.d, u_input.d, u_input.a.x, 4624i) | vec4<i32>(u_input.d, 2147483647i, 0i, u_input.d)), vec4<i32>(-1i) * -vec4<i32>(1i, 30500i, 1i, u_input.d)), -(~(~vec4<i32>(u_input.a.x, -2147483647i, u_input.d, u_input.d))));
    return ~vec4<i32>(-2147483647i, i32(-1i) * -(-36508i >> (u_input.b % 32u)), -(-67917i & u_input.a.x), reverseBits(~u_input.a.x));
}

fn func_3(arg_0: f32, arg_1: vec3<bool>, arg_2: Struct_1) -> i32 {
    var var_0 = arg_2.b;
    let var_1 = Struct_1(false, -_wgslsmith_div_vec4_i32(vec4<i32>(u_input.d, ~arg_2.b.x, arg_2.c, var_0.x), (arg_2.b ^ arg_2.b) >> (firstTrailingBit(vec4<u32>(104756u, u_input.b, 23205u, u_input.c)) % vec4<u32>(32u))), -7057i, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-969f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(arg_0)), global1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-global1.x))))));
    let var_2 = arg_1.zx;
    var var_3 = Struct_1(!all(!(!vec3<bool>(false, var_2.x, false))), _wgslsmith_div_vec4_i32(arg_2.b | (~vec4<i32>(15684i, -2147483647i, 1055i, arg_2.c) | var_1.b), vec4<i32>(u_input.d, _wgslsmith_clamp_i32(var_0.x, var_1.b.x, ~(-4768i)), var_0.x, _wgslsmith_mod_i32(select(1i, 64611i, true), ~arg_2.b.x))), ~var_1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_div_f32(arg_2.d, arg_2.d)))));
    let var_4 = 4294967295u;
    return _wgslsmith_clamp_i32(-31955i, _wgslsmith_dot_vec3_i32(~_wgslsmith_add_vec3_i32(countOneBits(var_0.xwy), _wgslsmith_sub_vec3_i32(var_0.yxy, vec3<i32>(arg_2.c, 2147483647i, var_3.c))), vec3<i32>(firstLeadingBit(i32(-1i) * -6003i), min(abs(-2147483647i), var_3.c), var_1.c)), var_3.c);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> StorageBuffer {
    let var_0 = 474f;
    var var_1 = select(select(!(!(!vec3<bool>(true, true, arg_0.a))), select(vec3<bool>(!arg_0.a, all(vec4<bool>(false, arg_0.a, arg_1.a, true)), !arg_0.a), select(vec3<bool>(true, false, arg_0.a), select(vec3<bool>(arg_1.a, false, arg_0.a), vec3<bool>(arg_0.a, false, true), arg_1.a), arg_1.a), arg_0.a), !vec3<bool>(true, true, arg_0.a)), vec3<bool>(arg_1.a, all(select(!vec2<bool>(arg_1.a, arg_0.a), !vec2<bool>(true, arg_0.a), arg_0.a)), false && arg_0.a), vec3<bool>(arg_0.a, arg_1.a || all(!vec2<bool>(arg_1.a, false)), abs(-arg_1.c) >= -9151i));
    var var_2 = u_input.c;
    var_1 = vec3<bool>(true || any(select(select(vec3<bool>(true, true, true), vec3<bool>(arg_1.a, true, true), vec3<bool>(false, true, true)), vec3<bool>(arg_0.a, var_1.x, arg_0.a), true)), true, any(select(!(!vec4<bool>(false, var_1.x, arg_1.a, false)), select(!vec4<bool>(false, arg_1.a, false, false), select(vec4<bool>(var_1.x, arg_0.a, true, true), vec4<bool>(true, false, true, arg_1.a), vec4<bool>(arg_0.a, arg_1.a, arg_0.a, true)), !vec4<bool>(arg_0.a, arg_0.a, arg_1.a, arg_0.a)), false)));
    return StorageBuffer(_wgslsmith_f_op_f32(trunc(arg_0.d)), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, abs(8627i ^ arg_0.b.x), ~(-arg_0.b.x)), ~(~(-vec3<i32>(1i, -1i, -7093i))), ~(~(-arg_1.b.wxw))), select(u_input.c, ~41990u, !(true != arg_1.a)), arg_0.b.xwy);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1((!any(vec4<bool>(false, true, false, false)) | true) && true, vec4<i32>(u_input.d, u_input.a.x, u_input.d, u_input.a.x), 21547i, global1.x);
    global2 = array<Struct_1, 22>();
    var var_1 = global0[_wgslsmith_index_u32(u_input.c ^ u_input.b, 16u)];
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-686f, var_1.d, 851f) * vec3<f32>(1681f, 1000f, global1.x)), vec3<f32>(-284f, var_1.d, var_1.d))) - vec3<f32>(global1.x, -1352f, 2142f)) - vec3<f32>(var_0.d, _wgslsmith_f_op_f32(1419f + _wgslsmith_f_op_f32(global1.x - var_1.d)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(389f + global1.x), _wgslsmith_f_op_f32(func_1(vec2<bool>(false, true), Struct_1(true, var_1.b, var_0.b.x, -428f), global1.x, vec2<u32>(17368u, 1u))))))));
    let var_3 = Struct_1(true & all(select(vec4<bool>(var_0.a, var_1.a, true, false), vec4<bool>(var_0.a, false, var_1.a, var_0.a), select(vec4<bool>(true, true, var_0.a, var_1.a), vec4<bool>(var_0.a, true, false, true), var_1.a))), vec4<i32>(var_1.b.x, _wgslsmith_clamp_i32(countOneBits(var_0.b.x), var_0.b.x, select(var_0.c, 28238i, any(vec2<bool>(var_0.a, false)))), abs(u_input.a.x), u_input.a.x), 2147483647i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(950f))));
    let x = u_input.a;
    s_output = func_4(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(330f + global1.x) + -360f) >= -315f, vec4<i32>(~(u_input.d | u_input.a.x), firstTrailingBit(-24964i & var_0.b.x), -541i, _wgslsmith_mod_i32(u_input.a.x, var_1.c)), var_1.c, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.x - var_2.x), _wgslsmith_f_op_f32(sign(var_0.d))) - 390f)), Struct_1(true, select(func_2(var_3.d) << ((vec4<u32>(u_input.b, u_input.c, 27242u, u_input.c) ^ vec4<u32>(u_input.c, 7771u, u_input.c, u_input.b)) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(var_0.b, var_0.b) ^ var_1.b, select(vec4<bool>(var_1.a, var_0.a, var_1.a, var_3.a), !vec4<bool>(var_0.a, var_1.a, var_3.a, false), var_1.a)), func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global1.x)) - _wgslsmith_f_op_f32(153f + var_3.d)), !vec3<bool>(var_1.a, var_3.a, var_3.a), Struct_1(var_3.a && var_1.a, _wgslsmith_div_vec4_i32(var_0.b, var_1.b), i32(-1i) * -7720i, _wgslsmith_div_f32(var_3.d, 442f))), 1000f));
}

