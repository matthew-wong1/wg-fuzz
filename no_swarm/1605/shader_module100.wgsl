struct Struct_1 {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec3<i32>,
    d: i32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
    c: u32,
    d: vec4<u32>,
    e: Struct_2,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: u32,
}

struct Struct_5 {
    a: bool,
    b: Struct_4,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<vec2<bool>, 16>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: i32, arg_1: u32) -> vec4<u32> {
    global0 = !select(vec3<bool>(!global0.x, any(select(vec3<bool>(false, global0.x, global0.x), vec3<bool>(global0.x, true, true), vec3<bool>(false, global0.x, true))), false), !vec3<bool>(global0.x, global0.x, true), vec3<bool>(all(vec3<bool>(true, true, global0.x)), any(!global0.xy), true));
    var var_0 = Struct_3(abs(vec2<i32>(i32(-1i) * -2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, arg_0), -vec2<i32>(arg_0, arg_0)))), Struct_2(Struct_1(~arg_0, ~firstTrailingBit(0i), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, arg_1, 1u, u_input.a.x), vec4<u32>(u_input.b, 0u, u_input.a.x, u_input.b), vec4<u32>(42266u, 0u, 4294967295u, u_input.b)), true), vec4<i32>(_wgslsmith_sub_i32(9522i, arg_0), -64773i, _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(arg_0, -2147483647i, arg_0, arg_0)), reverseBits(vec4<i32>(arg_0, 20860i, -6439i, arg_0))), arg_0 << (~4294967295u % 32u)), vec3<i32>(-34071i, ~(~(-2147483647i)), arg_0), _wgslsmith_mod_i32(_wgslsmith_sub_i32(arg_0, firstTrailingBit(arg_0)), _wgslsmith_mod_i32(1i, countOneBits(arg_0)))), 44655u, select(_wgslsmith_sub_vec4_u32(select(vec4<u32>(u_input.b, u_input.a.x, arg_1, 41128u), reverseBits(vec4<u32>(u_input.a.x, u_input.b, 22224u, 97107u)), !vec4<bool>(false, false, false, global0.x)), _wgslsmith_div_vec4_u32(vec4<u32>(arg_1, 1u, 21758u, u_input.b), vec4<u32>(0u, 16224u, u_input.a.x, 98051u)) << ((vec4<u32>(arg_1, arg_1, arg_1, u_input.b) >> (vec4<u32>(0u, u_input.b, arg_1, 55786u) % vec4<u32>(32u))) % vec4<u32>(32u))), ~(~vec4<u32>(0u, u_input.b, arg_1, u_input.a.x)) >> (countOneBits(vec4<u32>(arg_1, 1u, 27509u, u_input.a.x) ^ vec4<u32>(arg_1, 0u, u_input.b, 6431u)) % vec4<u32>(32u)), !(!(!vec4<bool>(global0.x, true, true, false)))), Struct_2(Struct_1(-(i32(-1i) * -2147483647i), -26059i, abs(vec4<u32>(u_input.b, u_input.b, 20127u, 4294967295u)), global0.x || true), vec4<i32>(~1i, arg_0, arg_0, _wgslsmith_clamp_i32(arg_0, 2147483647i & arg_0, arg_0)), select(~(vec3<i32>(arg_0, arg_0, arg_0) | vec3<i32>(arg_0, arg_0, 0i)), _wgslsmith_mult_vec3_i32(vec3<i32>(arg_0, -12186i, 2147483647i), vec3<i32>(-40963i, arg_0, arg_0)) | (vec3<i32>(3877i, arg_0, -501i) | vec3<i32>(arg_0, -2147483647i, arg_0)), vec3<bool>(any(vec3<bool>(true, true, true)), any(global0.zy), !global0.x)), 1i));
    global0 = !select(vec3<bool>(var_0.b.a.d, false, true), select(vec3<bool>(true, any(vec4<bool>(true, global0.x, true, global0.x)), global0.x), vec3<bool>(arg_0 < -1i, true, true), vec3<bool>(global0.x, false, any(vec3<bool>(var_0.b.a.d, var_0.e.a.d, true)))), any(select(!vec3<bool>(true, var_0.e.a.d, global0.x), select(vec3<bool>(global0.x, false, false), vec3<bool>(false, var_0.e.a.d, global0.x), false), select(vec3<bool>(global0.x, false, global0.x), vec3<bool>(global0.x, false, true), vec3<bool>(false, global0.x, global0.x)))));
    var var_1 = Struct_1(0i, ~(~arg_0), ~var_0.d, false);
    var var_2 = Struct_3(var_0.b.c.xx, var_0.b, arg_1 | ~(1u | arg_1), vec4<u32>(35431u, var_1.c.x, var_0.e.a.c.x, _wgslsmith_clamp_u32(36891u, countOneBits(17050u), _wgslsmith_add_u32(var_1.c.x, 1u)) ^ ~abs(u_input.b)), Struct_2(Struct_1(i32(-1i) * -2147483647i, _wgslsmith_div_i32(var_1.a | var_0.b.d, select(arg_0, 1i, true)), select(vec4<u32>(arg_1, var_1.c.x, 4294967295u, 4294967295u), vec4<u32>(85004u, var_1.c.x, 6479u, u_input.b) & var_0.e.a.c, var_0.e.a.d), select(all(vec3<bool>(var_1.d, true, false)), true, !var_0.b.a.d)), vec4<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(28408i, arg_0, 5043i), vec3<i32>(61356i, var_1.a, 27000i)), _wgslsmith_sub_i32(~(-32828i), 1i), var_0.e.a.a, -1i), _wgslsmith_div_vec3_i32(~(var_0.e.c ^ vec3<i32>(var_0.a.x, -10316i, 13889i)), var_0.b.c), 57341i));
    return firstLeadingBit(vec4<u32>(var_0.e.a.c.x, 15546u, min(17767u, min(var_2.b.a.c.x | var_1.c.x, 18819u)), _wgslsmith_dot_vec2_u32(~_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_1, var_0.b.a.c.x), u_input.a.xx, vec2<u32>(var_0.b.a.c.x, 4294967295u)), countOneBits(~vec2<u32>(0u, var_2.d.x)))));
}

fn func_2() -> vec3<bool> {
    var var_0 = Struct_2(Struct_1(~(-(i32(-1i) * -2695i)), 21506i, max(func_3(2147483647i, 1u) << (func_3(70928i, 20593u) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, u_input.b, 54848u, 33691u), reverseBits(vec4<u32>(u_input.a.x, u_input.b, 26940u, 30198u)))), true), -abs(abs(firstLeadingBit(vec4<i32>(-1622i, 2147483647i, -1i, -2147483647i)))), vec3<i32>(_wgslsmith_mod_i32(~(~12881i), 1i), firstLeadingBit(_wgslsmith_div_i32(~(-1i), _wgslsmith_mult_i32(1i, 1i))), 0i), 1i);
    let var_1 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(186f, 1388f)) - vec2<f32>(-220f, 691f))))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-610f, 550f))) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(581f, -900f), vec2<f32>(-1309f, 1000f), true))) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(2979f, 608f) * vec2<f32>(1314f, 2207f)))))))));
    let var_2 = -305f;
    global1 = array<vec2<bool>, 16>();
    let var_3 = _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(var_0.b.yw, var_0.b.yz), vec2<i32>(-14197i, -22012i)) >> (firstLeadingBit(vec2<u32>(countOneBits(29623u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), var_0.a.c.zz))) % vec2<u32>(32u)), var_0.c.yz);
    return !select(!vec3<bool>(select(global0.x, var_0.a.d, false), var_0.a.d || true, !var_0.a.d), !vec3<bool>(true, var_0.c.x < var_3, global0.x), vec3<bool>(true, true, true));
}

fn func_1() -> vec3<u32> {
    var var_0 = vec4<u32>(~(~(~0u)), u_input.a.x, abs(~_wgslsmith_div_u32(29148u, min(u_input.b, u_input.b))), u_input.a.x);
    global1 = array<vec2<bool>, 16>();
    global0 = select(func_2(), !vec3<bool>(any(select(global1[_wgslsmith_index_u32(u_input.b, 16u)], global1[_wgslsmith_index_u32(44063u, 16u)], vec2<bool>(global0.x, false))), true, true), select(!(!select(vec3<bool>(global0.x, true, global0.x), vec3<bool>(global0.x, true, global0.x), global0.x)), vec3<bool>(~var_0.x >= 1u, global0.x || true, global0.x), !any(vec4<bool>(global0.x, true, global0.x, global0.x))));
    var_0 = func_3(firstLeadingBit(1i >> (var_0.x % 32u)), _wgslsmith_dot_vec2_u32(u_input.a.yy, vec2<u32>(~(~var_0.x), u_input.a.x)));
    let var_1 = Struct_2(Struct_1(~(-2147483647i), -max(16925i, -57881i), ~firstTrailingBit(max(vec4<u32>(var_0.x, var_0.x, 87264u, 65871u), vec4<u32>(u_input.b, u_input.b, u_input.a.x, 0u))), true), vec4<i32>(1i, ~(-_wgslsmith_dot_vec3_i32(vec3<i32>(3640i, -1i, -6396i), vec3<i32>(2455i, -1i, 2147483647i))), -(~(-23173i)), ~_wgslsmith_div_i32(1i, -15212i) >> (u_input.a.x % 32u)), ~(countOneBits(vec3<i32>(1i, 13858i, -2147483647i)) >> (vec3<u32>(u_input.b, u_input.b & 1u, ~var_0.x) % vec3<u32>(32u))), ~(~2147483647i));
    return var_0.xyx;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = vec4<u32>(0u, ~_wgslsmith_mod_u32(var_0.x, u_input.b), func_3(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(80570i, -1i, 48092i)) | _wgslsmith_dot_vec4_i32(vec4<i32>(20068i, -12753i, 0i, 0i), max(vec4<i32>(-58800i, 2147483647i, -2147483647i, 54630i), vec4<i32>(1i, 1i, 0i, 16014i))), u_input.a.x).x, ~(~(~select(var_0.x, var_0.x, false))));
    var var_2 = Struct_4(~firstLeadingBit(vec3<i32>(countOneBits(-10516i), _wgslsmith_dot_vec3_i32(vec3<i32>(32127i, 0i, -27675i), vec3<i32>(-2147483647i, -34057i, -26900i)), 0i)), select(vec4<u32>(firstLeadingBit(var_1.x), var_1.x, 44474u, 10585u), ~vec4<u32>(0u, _wgslsmith_sub_u32(u_input.a.x, 1u), reverseBits(4294967295u), max(u_input.a.x, var_0.x)), vec4<bool>(global0.x, any(!vec4<bool>(global0.x, global0.x, global0.x, true)), true, all(vec3<bool>(true, global0.x, true)))), _wgslsmith_add_u32(var_1.x, 52277u | ~u_input.a.x) | _wgslsmith_clamp_u32(~(~11880u), _wgslsmith_mult_u32(~var_1.x, var_0.x >> (0u % 32u)), abs(4294967295u)));
    global0 = !(!select(!(!vec3<bool>(true, global0.x, global0.x)), vec3<bool>(global0.x == global0.x, false, any(vec4<bool>(true, global0.x, global0.x, true))), global0.x));
    var var_3 = Struct_2(Struct_1(-68577i, _wgslsmith_mod_i32(~countOneBits(-2147483647i), countOneBits(-1371i)), vec4<u32>(~(var_0.x | 4294967295u), _wgslsmith_mult_u32(0u, ~var_1.x), _wgslsmith_add_u32(_wgslsmith_sub_u32(u_input.a.x, var_1.x), ~26321u), 1u), global0.x), ~(~select(min(vec4<i32>(var_2.a.x, 28432i, 0i, var_2.a.x), vec4<i32>(var_2.a.x, -17232i, 0i, -2147483647i)), -vec4<i32>(var_2.a.x, var_2.a.x, var_2.a.x, var_2.a.x), u_input.a.x >= var_0.x)), _wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_div_i32(2147483647i, abs(1i)), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(0i, var_2.a.x, var_2.a.x), var_2.a), ~vec3<i32>(var_2.a.x, var_2.a.x, 1i)), var_2.a.x), abs(vec3<i32>(var_2.a.x, 1i, -1774i)), ~select(var_2.a, var_2.a, vec3<bool>(true, global0.x, global0.x))), abs(_wgslsmith_clamp_i32(~max(var_2.a.x, -15052i), ~(-1i), var_2.a.x)));
    var var_4 = -2147483647i;
    var_0 = ~(~(~vec3<u32>(var_2.b.x, var_0.x, 4294967295u) ^ (vec3<u32>(var_3.a.c.x, var_1.x, 80697u) & ~vec3<u32>(1u, var_0.x, 4294967295u))));
    var_4 = reverseBits(min(-(i32(-1i) * -var_2.a.x), var_3.d));
    let var_5 = any(func_2());
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-211f, 574f), _wgslsmith_f_op_vec2_f32(vec2<f32>(1374f, -167f) * vec2<f32>(1081f, -482f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-290f, 1000f)) * _wgslsmith_div_vec2_f32(vec2<f32>(-1738f, 271f), vec2<f32>(-296f, 888f))))), _wgslsmith_f_op_f32(sign(1f)), vec2<u32>(firstLeadingBit(var_3.a.c.x), ~min(_wgslsmith_div_u32(var_3.a.c.x, 2148u), 1u)));
}

