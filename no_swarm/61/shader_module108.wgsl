struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
    d: bool,
    e: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: i32,
    d: vec4<f32>,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: Struct_2,
    d: vec4<i32>,
}

struct Struct_5 {
    a: vec2<bool>,
    b: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<bool, 21>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32, arg_1: Struct_5, arg_2: Struct_5, arg_3: Struct_1) -> vec4<u32> {
    global1 = array<bool, 21>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(arg_0)), 283f, arg_0, arg_0)));
    var var_1 = vec2<bool>(global1[_wgslsmith_index_u32(abs(arg_2.b), 21u)], !(!(var_0.x <= _wgslsmith_f_op_f32(-var_0.x))));
    var var_2 = Struct_2(Struct_1(-32857i ^ -arg_3.a), Struct_1(_wgslsmith_mult_i32(_wgslsmith_mod_i32(-1i, max(1i, -2147483647i)), u_input.a.x ^ -u_input.a.x)), vec2<i32>(reverseBits(u_input.a.x), -min(min(-41109i, 4345i), -1i)), false, _wgslsmith_f_op_f32(1096f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0, arg_0)))) == _wgslsmith_f_op_f32(-arg_0));
    global0 = _wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(~vec4<i32>(u_input.a.x, var_2.b.a, 1i, 2147483647i) ^ (~vec4<i32>(var_2.a.a, global0.x, arg_3.a, 1i) << (_wgslsmith_mod_vec4_u32(vec4<u32>(arg_1.b, arg_1.b, 57519u, arg_2.b), vec4<u32>(51594u, 3426u, arg_2.b, 8340u)) % vec4<u32>(32u))), abs(~vec4<i32>(arg_3.a, var_2.a.a, 1i, u_input.a.x) | min(vec4<i32>(0i, 0i, 21707i, global0.x), vec4<i32>(u_input.a.x, var_2.b.a, arg_3.a, 0i)))), -firstLeadingBit(vec4<i32>(arg_3.a, -38682i, u_input.a.x, u_input.a.x)) | (vec4<i32>(-1i) * -max(vec4<i32>(var_2.b.a, 0i, 30673i, var_2.a.a), vec4<i32>(0i, 7806i, 31811i, -2147483647i))));
    return select(vec4<u32>(arg_2.b, _wgslsmith_add_u32(4294967295u, arg_2.b & arg_1.b), arg_1.b, 45342u), _wgslsmith_mod_vec4_u32(min(vec4<u32>(59906u, arg_1.b, arg_1.b, arg_2.b), abs(vec4<u32>(4294967295u, 15027u, arg_1.b, 59480u))), vec4<u32>(countOneBits(0u), ~arg_2.b, arg_1.b << (arg_1.b % 32u), arg_1.b & arg_2.b)), all(!(!vec3<bool>(false, global1[_wgslsmith_index_u32(0u, 21u)], true)))) >> (vec4<u32>(~(27535u << (_wgslsmith_mult_u32(arg_1.b, arg_2.b) % 32u)), 1u, ~45863u, ~(~arg_2.b)) % vec4<u32>(32u));
}

fn func_2(arg_0: f32, arg_1: vec3<bool>, arg_2: bool) -> i32 {
    global1 = array<bool, 21>();
    global0 = vec4<i32>(_wgslsmith_mod_i32(u_input.a.x, u_input.a.x), -1i, -(~(~2147483647i)), 24224i);
    let var_0 = ~vec4<u32>(countOneBits(~95778u), ~(~1u), _wgslsmith_mod_u32(firstTrailingBit(37809u), firstLeadingBit(15882u)), 1u) << (_wgslsmith_mult_vec4_u32(reverseBits(func_3(-736f, Struct_5(arg_1.zz, 0u), Struct_5(vec2<bool>(global1[_wgslsmith_index_u32(1u, 21u)], global1[_wgslsmith_index_u32(38796u, 21u)]), 64506u), Struct_1(-2147483647i))), abs(vec4<u32>(1u, 867u, countOneBits(4294967295u), 44945u))) % vec4<u32>(32u));
    let var_1 = 1i;
    let var_2 = arg_1.x;
    return u_input.a.x;
}

fn func_1(arg_0: vec3<i32>) -> bool {
    global0 = firstTrailingBit(select(_wgslsmith_clamp_vec4_i32(-reverseBits(vec4<i32>(1i, u_input.a.x, -2147483647i, -10894i)), (vec4<i32>(u_input.a.x, u_input.a.x, 0i, global0.x) | vec4<i32>(u_input.a.x, 0i, u_input.a.x, arg_0.x)) >> (select(vec4<u32>(1u, 4294967295u, 0u, 0u), vec4<u32>(94224u, 66623u, 4294967295u, 1u), vec4<bool>(false, true, false, true)) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_mult_i32(global0.x, arg_0.x), 0i, arg_0.x, ~1i)), firstLeadingBit(vec4<i32>(firstLeadingBit(global0.x), _wgslsmith_div_i32(arg_0.x, arg_0.x), ~30212i, -71334i)), !(!all(vec3<bool>(true, false, global1[_wgslsmith_index_u32(91519u, 21u)])))));
    global1 = array<bool, 21>();
    global0 = -_wgslsmith_mult_vec4_i32(vec4<i32>(-65063i, _wgslsmith_sub_i32(_wgslsmith_div_i32(arg_0.x, u_input.a.x), -global0.x), -(u_input.a.x ^ 59442i), -abs(-57236i)), _wgslsmith_mod_vec4_i32(vec4<i32>(select(global0.x, 14452i, global1[_wgslsmith_index_u32(62323u, 21u)]), u_input.a.x | -1i, _wgslsmith_div_i32(29394i, -1i), 1i), vec4<i32>(arg_0.x, -8427i, 32166i, arg_0.x) & vec4<i32>(arg_0.x, 48296i, global0.x, 1i)));
    global0 = vec4<i32>(arg_0.x, -1i, _wgslsmith_dot_vec4_i32(~(~(vec4<i32>(global0.x, 33247i, global0.x, 34388i) ^ vec4<i32>(-13009i, -1i, 16300i, arg_0.x))), vec4<i32>(~2147483647i, -arg_0.x, func_2(636f, vec3<bool>(global1[_wgslsmith_index_u32(50603u, 21u)], global1[_wgslsmith_index_u32(4294967295u, 21u)], global1[_wgslsmith_index_u32(9279u, 21u)]), global1[_wgslsmith_index_u32(4294967295u, 21u)]), 3820i) ^ _wgslsmith_add_vec4_i32(vec4<i32>(24659i, u_input.a.x, -24068i, 2147483647i), _wgslsmith_mult_vec4_i32(vec4<i32>(global0.x, 66512i, 31342i, u_input.a.x), vec4<i32>(u_input.a.x, global0.x, global0.x, 21081i)))), -_wgslsmith_mult_i32(~u_input.a.x, countOneBits(-13156i)));
    global1 = array<bool, 21>();
    return global1[_wgslsmith_index_u32(~(1u | _wgslsmith_sub_u32(63085u, ~47665u | func_3(-586f, Struct_5(vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 21u)], true), 61828u), Struct_5(vec2<bool>(global1[_wgslsmith_index_u32(1u, 21u)], false), 37270u), Struct_1(-64403i)).x)), 21u)];
}

fn func_4(arg_0: vec4<f32>, arg_1: vec4<bool>, arg_2: vec2<i32>, arg_3: i32) -> vec3<u32> {
    var var_0 = vec3<u32>(select(44765u, ~1u, arg_0.x > _wgslsmith_f_op_f32(step(arg_0.x, arg_0.x))), 1u, _wgslsmith_add_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(0u, 4294967295u), 1u), max(1u << (0u % 32u), 0u))) >> (_wgslsmith_div_vec3_u32(~(vec3<u32>(1u, 1u, 1u) << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))), vec3<u32>(76680u, _wgslsmith_sub_u32(~1u, func_3(989f, Struct_5(arg_1.xz, 1u), Struct_5(vec2<bool>(arg_1.x, arg_1.x), 4294967295u), Struct_1(-30947i)).x), ~(~0u))) % vec3<u32>(32u));
    var var_1 = Struct_2(Struct_1(max(_wgslsmith_mod_i32(48260i, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -60924i, -54214i, arg_2.x), vec4<i32>(0i, 2147483647i, -1i, arg_2.x))), 72644i)), Struct_1(13486i), vec2<i32>(global0.x, global0.x), global1[_wgslsmith_index_u32(var_0.x, 21u)], any(arg_1));
    var var_2 = var_1.a;
    var var_3 = Struct_5(!select(select(vec2<bool>(false, false), vec2<bool>(true, var_1.e), vec2<bool>(false, var_1.e)), arg_1.wy, arg_1.ww), abs(~abs(1u)));
    var_3 = Struct_5(vec2<bool>(false, all(!(!vec3<bool>(var_1.e, var_3.a.x, var_1.e)))), countOneBits(4294967295u));
    return ~_wgslsmith_div_vec3_u32(abs(_wgslsmith_sub_vec3_u32(countOneBits(vec3<u32>(var_3.b, var_0.x, 1u)), countOneBits(vec3<u32>(var_3.b, 4294967295u, var_3.b)))), vec3<u32>(~var_0.x, 0u, var_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1031f), -173f, -1000f, _wgslsmith_f_op_f32(1505f - -227f)), vec4<f32>(-805f, -1000f, _wgslsmith_f_op_f32(sign(-1000f)), -1000f)), !vec4<bool>(func_1(vec3<i32>(-8272i, u_input.a.x, -2147483647i)), true, true, global1[_wgslsmith_index_u32(1u, 21u)]), -global0.zy, ~reverseBits(_wgslsmith_add_i32(global0.x, u_input.a.x))) << (select(~_wgslsmith_mult_vec3_u32(abs(vec3<u32>(0u, 71177u, 4294967295u)), vec3<u32>(1u, 1u, 1u)), vec3<u32>(1u, 1u, 1u), !vec3<bool>(!global1[_wgslsmith_index_u32(0u, 21u)], false && global1[_wgslsmith_index_u32(1u, 21u)], true)) % vec3<u32>(32u));
    let var_1 = global0.zxz;
    global0 = select(~select(vec4<i32>(~u_input.a.x, u_input.a.x, ~2147483647i, var_1.x), select(vec4<i32>(global0.x, -28458i, var_1.x, var_1.x), vec4<i32>(1i, var_1.x, u_input.a.x, 2147483647i), !global1[_wgslsmith_index_u32(4294967295u, 21u)]), var_0.x >= var_0.x), ~(-min(vec4<i32>(u_input.a.x, var_1.x, u_input.a.x, global0.x) | vec4<i32>(0i, -96517i, var_1.x, -2147483647i), vec4<i32>(u_input.a.x, global0.x, u_input.a.x, var_1.x) | vec4<i32>(2147483647i, var_1.x, global0.x, 7405i))), false);
    var var_2 = Struct_4(Struct_1(49592i), 14510u ^ var_0.x, Struct_2(Struct_1(func_2(_wgslsmith_div_f32(-275f, 305f), select(vec3<bool>(global1[_wgslsmith_index_u32(var_0.x, 21u)], global1[_wgslsmith_index_u32(var_0.x, 21u)], true), vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 21u)], global1[_wgslsmith_index_u32(36222u, 21u)], global1[_wgslsmith_index_u32(22896u, 21u)]), global1[_wgslsmith_index_u32(var_0.x, 21u)]), false)), Struct_1(global0.x), global0.wy, all(vec4<bool>(true, false, false, false)) & any(select(vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 21u)], global1[_wgslsmith_index_u32(var_0.x, 21u)]), vec2<bool>(true, global1[_wgslsmith_index_u32(var_0.x, 21u)]), global1[_wgslsmith_index_u32(var_0.x, 21u)])), !all(!vec4<bool>(global1[_wgslsmith_index_u32(var_0.x, 21u)], global1[_wgslsmith_index_u32(var_0.x, 21u)], global1[_wgslsmith_index_u32(var_0.x, 21u)], true))), -firstTrailingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(-20996i, u_input.a.x, global0.x, u_input.a.x), vec4<i32>(global0.x, -2147483647i, global0.x, u_input.a.x))) | abs(-(vec4<i32>(5535i, 42495i, 12407i, -2147483647i) & vec4<i32>(global0.x, u_input.a.x, var_1.x, 1i))));
    let var_3 = _wgslsmith_mod_i32(_wgslsmith_mod_i32(u_input.a.x, -1i), ((0i << (~var_2.b % 32u)) >> (4294967295u % 32u)) | _wgslsmith_dot_vec2_i32(var_1.yz, var_1.xz));
    var var_4 = !vec3<bool>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(var_2.b, 1u, var_0.x, var_2.b), vec4<u32>(1u, var_0.x, 63401u, 41472u)), func_3(_wgslsmith_f_op_f32(f32(-1f) * -1169f), Struct_5(vec2<bool>(var_2.c.e, false), var_2.b), Struct_5(vec2<bool>(false, false), var_2.b), var_2.c.a)), 21u)], func_1(_wgslsmith_add_vec3_i32(u_input.a, vec3<i32>(u_input.a.x, global0.x, global0.x))), !var_2.c.e);
    var var_5 = !(true | all(select(vec3<bool>(true, var_2.c.d, true), vec3<bool>(var_2.c.d, false, false), vec3<bool>(var_2.c.e, var_4.x, var_2.c.e)))) | false;
    global1 = array<bool, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(-var_1.x, _wgslsmith_div_vec2_u32(abs(~vec2<u32>(var_2.b, 19796u)) | reverseBits(_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(10965u, var_2.b))), ~(~(vec2<u32>(31187u, 4294967295u) ^ var_0.xx))));
}

