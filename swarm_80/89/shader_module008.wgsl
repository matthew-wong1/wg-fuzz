struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<u32>,
    c: Struct_1,
    d: vec3<i32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: bool,
    c: Struct_1,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: vec4<bool>,
    b: i32,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 29>;

var<private> global1: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(vec2<i32>(-31948i, 2147483647i)), Struct_1(vec2<i32>(22731i, -1i)), Struct_1(vec2<i32>(-23971i, 20501i)), Struct_1(vec2<i32>(15191i, -4073i)), Struct_1(vec2<i32>(-1158i, -32085i)), Struct_1(vec2<i32>(i32(-2147483648), 2147483647i)), Struct_1(vec2<i32>(1i, 0i)), Struct_1(vec2<i32>(-48459i, 2147483647i)), Struct_1(vec2<i32>(6030i, 1i)), Struct_1(vec2<i32>(0i, -15i)), Struct_1(vec2<i32>(-7913i, 2147483647i)), Struct_1(vec2<i32>(-1i, 0i)), Struct_1(vec2<i32>(-14452i, 12397i)), Struct_1(vec2<i32>(2147483647i, -5793i)), Struct_1(vec2<i32>(0i, -15583i)), Struct_1(vec2<i32>(0i, 2147483647i)), Struct_1(vec2<i32>(22372i, 2147483647i)), Struct_1(vec2<i32>(-1i, 2147483647i)), Struct_1(vec2<i32>(-13442i, -1i)), Struct_1(vec2<i32>(11572i, 2147483647i)), Struct_1(vec2<i32>(-3707i, 1i)), Struct_1(vec2<i32>(-54899i, 2147483647i)), Struct_1(vec2<i32>(-21544i, -10436i)), Struct_1(vec2<i32>(-6062i, -43628i)), Struct_1(vec2<i32>(1i, -13301i)), Struct_1(vec2<i32>(10981i, -22513i)));

var<private> global2: array<vec2<i32>, 16> = array<vec2<i32>, 16>(vec2<i32>(88951i, -17157i), vec2<i32>(-1i, -64996i), vec2<i32>(1i, -51084i), vec2<i32>(-30247i, 2147483647i), vec2<i32>(1i, -62578i), vec2<i32>(0i, -8048i), vec2<i32>(1i, 9766i), vec2<i32>(48495i, 0i), vec2<i32>(-43079i, i32(-2147483648)), vec2<i32>(1i, 54006i), vec2<i32>(50630i, 50099i), vec2<i32>(2147483647i, -8805i), vec2<i32>(-18339i, 39472i), vec2<i32>(-8014i, 0i), vec2<i32>(0i, 16400i), vec2<i32>(1i, 0i));

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> vec2<i32> {
    global2 = array<vec2<i32>, 16>();
    var var_0 = 344f;
    var var_1 = _wgslsmith_f_op_f32(-111f + _wgslsmith_f_op_f32(812f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(309f)) - -785f)));
    var var_2 = 124u;
    let var_3 = -_wgslsmith_mult_i32(~abs(1i), reverseBits(_wgslsmith_add_i32(-25695i, 42974i)));
    return select(max(~_wgslsmith_add_vec2_i32(~u_input.b.yx, ~vec2<i32>(var_3, arg_0.a.x)), abs(countOneBits(vec2<i32>(var_3, 1i)))), _wgslsmith_div_vec2_i32(vec2<i32>(var_3, -u_input.b.x), global2[_wgslsmith_index_u32(u_input.a, 16u)]) & (u_input.b.zx >> (~(~vec2<u32>(u_input.a, u_input.a)) % vec2<u32>(32u))), true);
}

fn func_2(arg_0: Struct_3, arg_1: u32) -> f32 {
    var var_0 = abs(_wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, 655i), func_3(arg_0.c), -u_input.b.xx), vec2<i32>(~u_input.b.x, u_input.b.x >> (1u % 32u))), vec2<i32>(reverseBits(abs(arg_0.e.a.x)), _wgslsmith_dot_vec4_i32(~vec4<i32>(14098i, arg_0.e.a.x, u_input.b.x, arg_0.d.c.a.x), ~vec4<i32>(44636i, arg_0.c.a.x, arg_0.c.a.x, u_input.b.x)))));
    var_0 = _wgslsmith_sub_vec2_i32(select(reverseBits(arg_0.c.a), -vec2<i32>(var_0.x, -23729i), select(select(vec2<bool>(arg_0.b, false), vec2<bool>(arg_0.b, arg_0.b), arg_0.b), vec2<bool>(arg_0.b, false), !arg_0.b)), vec2<i32>(firstLeadingBit(-1i), _wgslsmith_div_i32(var_0.x, arg_0.d.d.x)) | (max(vec2<i32>(0i, -2147483647i), global2[_wgslsmith_index_u32(64892u, 16u)]) >> (countOneBits(vec2<u32>(arg_1, arg_1)) % vec2<u32>(32u)))) >> (~arg_0.d.b.zy % vec2<u32>(32u));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.d.a, 1000f, arg_0.d.a), vec3<f32>(arg_0.d.a, 381f, 142f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1242f, 574f, 1000f) + vec3<f32>(arg_0.d.a, -1123f, 763f))))));
    var_0 = _wgslsmith_mult_vec2_i32(~firstTrailingBit(countOneBits(firstLeadingBit(global2[_wgslsmith_index_u32(u_input.a, 16u)]))), ~(~vec2<i32>(-u_input.b.x, -u_input.b.x)));
    let var_2 = !(!any(vec2<bool>(false, any(vec2<bool>(arg_0.b, false)))));
    return _wgslsmith_f_op_f32(ceil(var_1.x));
}

fn func_1() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_2(Struct_3(vec3<u32>(u_input.a, u_input.a, u_input.a), true, Struct_1(vec2<i32>(-24484i, u_input.b.x)), Struct_2(-727f, vec3<u32>(0u, 1u, 0u), global1[_wgslsmith_index_u32(4294967295u, 26u)], vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x)), global1[_wgslsmith_index_u32(u_input.a, 26u)]), 4294967295u)))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1178f * -179f))), _wgslsmith_div_f32(-1282f, _wgslsmith_f_op_f32(sign(-592f))))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1267f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(805f))))));
    let var_1 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1247f, _wgslsmith_f_op_f32(f32(-1f) * -1060f))), _wgslsmith_f_op_f32(-998f + _wgslsmith_f_op_f32(f32(-1f) * -620f))), -170f);
    var var_2 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(sign(var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-209f * var_1.x), -1066f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + -886f), var_1.x)));
    global1 = array<Struct_1, 26>();
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(566f - var_2.x), _wgslsmith_f_op_f32(var_2.x - -1000f))))), ~abs(vec3<u32>(u_input.a, u_input.a, u_input.a)), global1[_wgslsmith_index_u32(~(u_input.a & ~firstLeadingBit(24100u)), 26u)], abs(global0[_wgslsmith_index_u32(u_input.a, 29u)]));
}

fn func_4(arg_0: Struct_2, arg_1: f32) -> vec3<bool> {
    var var_0 = any(!vec4<bool>(false, select(true, false, false) & false, ~u_input.b.x != countOneBits(arg_0.c.a.x), false));
    var var_1 = countOneBits(arg_0.b.xy);
    let var_2 = arg_0;
    var var_3 = select(vec2<bool>(true, true), select(vec2<bool>(true, false), !select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(false, true), true), !(all(vec4<bool>(false, false, false, true)) | false)), arg_1 <= func_1().a);
    return select(select(select(!(!vec3<bool>(false, var_3.x, var_3.x)), vec3<bool>(false, select(var_3.x, false, false), var_3.x), !vec3<bool>(false, var_3.x, var_3.x)), !vec3<bool>(true, true, var_3.x), select(!(!vec3<bool>(true, var_3.x, var_3.x)), !select(vec3<bool>(var_3.x, var_3.x, var_3.x), vec3<bool>(false, true, var_3.x), var_3.x), false)), select(vec3<bool>(true, all(vec4<bool>(false, var_3.x, var_3.x, true)), false), select(vec3<bool>(var_1.x < 0u, false, true), vec3<bool>(true, var_3.x | var_3.x, true), !vec3<bool>(var_3.x, true, true)), select(!vec3<bool>(var_3.x, false, var_3.x), vec3<bool>(any(vec3<bool>(var_3.x, false, var_3.x)), true, false), true)), select(select(vec3<bool>(true, var_3.x, var_3.x && var_3.x), !(!vec3<bool>(var_3.x, true, var_3.x)), true), vec3<bool>(!(var_3.x != var_3.x), false, false), select(1u, _wgslsmith_dot_vec2_u32(var_2.b.xx, arg_0.b.zx), true) > ~42089u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 0i;
    global1 = array<Struct_1, 26>();
    global1 = array<Struct_1, 26>();
    global1 = array<Struct_1, 26>();
    var var_1 = !select(func_4(func_1(), _wgslsmith_f_op_f32(sign(-870f))), !func_4(func_1(), _wgslsmith_f_op_f32(f32(-1f) * -1009f)), vec3<bool>(true == (u_input.b.x == 2147483647i), true || all(vec2<bool>(true, true)), any(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false)))));
    let var_2 = Struct_4(!vec4<bool>(u_input.a > ~u_input.a, select(false, !var_1.x, var_1.x), true, !(false | var_1.x)), -30931i, func_1());
    global0 = array<vec3<i32>, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(~(~u_input.a), var_2.c.a, firstLeadingBit(_wgslsmith_add_vec2_u32(~vec2<u32>(36623u, 7793u), firstTrailingBit(var_2.c.b.xz))));
}

