struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec2<u32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
}

struct Struct_4 {
    a: vec3<f32>,
    b: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 26> = array<bool, 26>(true, true, true, true, false, true, false, false, true, false, false, true, false, true, true, false, true, true, false, true, true, true, true, false, true, false);

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3() -> vec4<i32> {
    global0 = array<bool, 26>();
    let var_0 = -1097f;
    let var_1 = countOneBits(abs(u_input.a & abs(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, 2147483647i, u_input.a.x), u_input.a))));
    var var_2 = Struct_1(vec4<i32>(~reverseBits(i32(-1i) * -23637i), -min(~16283i, 1i), 1i, 2147483647i));
    var var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(459f, -618f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_f32(824f - var_0))));
    return ~(_wgslsmith_sub_vec4_i32(var_2.a, ~vec4<i32>(var_1.x, var_1.x, 0i, var_1.x)) ^ var_2.a);
}

fn func_2(arg_0: vec2<i32>, arg_1: f32, arg_2: vec3<bool>) -> u32 {
    let var_0 = _wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0.x, u_input.a.x, -57726i, -10465i), vec4<i32>(0i, -1i, -17101i, arg_0.x), -vec4<i32>(u_input.a.x, 1i, arg_0.x, arg_0.x)), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, _wgslsmith_mult_i32(arg_0.x, -1i))), vec4<i32>(u_input.a.x, -1i, -2147483647i, ~(-11280i)) << (vec4<u32>(_wgslsmith_mult_u32(2301u, 1u), _wgslsmith_mod_u32(1u, 4294967295u), _wgslsmith_mult_u32(1u, 4294967295u), countOneBits(11839u)) % vec4<u32>(32u))), _wgslsmith_mod_vec4_i32(vec4<i32>(~arg_0.x, i32(-1i) * -u_input.a.x, _wgslsmith_sub_i32(u_input.a.x, -u_input.a.x), -1i), func_3()));
    let var_1 = 19407i;
    var var_2 = -(~(-func_3().xx));
    let var_3 = arg_2.x;
    global0 = array<bool, 26>();
    return 4294967295u;
}

fn func_1(arg_0: vec3<bool>, arg_1: vec2<i32>, arg_2: Struct_2) -> Struct_2 {
    var var_0 = !vec3<bool>(global0[_wgslsmith_index_u32(func_2((u_input.a.zx ^ vec2<i32>(-38486i, 0i)) >> (~vec2<u32>(arg_2.d.x, 0u) % vec2<u32>(32u)), -855f, !select(vec3<bool>(global0[_wgslsmith_index_u32(arg_2.d.x, 26u)], arg_0.x, true), arg_0, vec3<bool>(arg_0.x, false, true))), 26u)], false, !(u_input.a.x != 17565i));
    var_0 = vec3<bool>(var_0.x, select(var_0.x, true, true), arg_0.x);
    var var_1 = arg_2.a.a;
    let var_2 = ~_wgslsmith_mult_u32(arg_2.d.x, reverseBits(~116977u)) >> (5455u % 32u);
    global0 = array<bool, 26>();
    return Struct_2(Struct_1(abs(~vec4<i32>(40869i, 9981i, 1i, -32960i))), Struct_1(vec4<i32>(arg_2.c.a.x, 5009i, min(max(-30655i, 1i), 1i), _wgslsmith_div_i32(-8562i, u_input.a.x))), Struct_1(_wgslsmith_sub_vec4_i32(-_wgslsmith_mod_vec4_i32(arg_2.a.a, vec4<i32>(arg_2.c.a.x, 1i, var_1.x, 1i)), _wgslsmith_add_vec4_i32(func_3(), arg_2.a.a))), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(firstLeadingBit(var_2), 1u, reverseBits(arg_2.d.x)), ~(~vec3<u32>(104847u, arg_2.d.x, 1u))), ~(~_wgslsmith_dot_vec2_u32(arg_2.d, vec2<u32>(var_2, 29868u)))));
}

fn func_4(arg_0: Struct_2) -> vec2<i32> {
    let var_0 = arg_0.a;
    let var_1 = -var_0.a.www;
    let var_2 = Struct_2(arg_0.a, arg_0.a, var_0, func_1(select(vec3<bool>(all(vec4<bool>(true, false, false, true)), all(vec3<bool>(false, true, true)), global0[_wgslsmith_index_u32(~arg_0.d.x, 26u)]), !(!vec3<bool>(global0[_wgslsmith_index_u32(arg_0.d.x, 26u)], global0[_wgslsmith_index_u32(arg_0.d.x, 26u)], true)), select(vec3<bool>(global0[_wgslsmith_index_u32(113359u, 26u)], global0[_wgslsmith_index_u32(18498u, 26u)], global0[_wgslsmith_index_u32(arg_0.d.x, 26u)]), vec3<bool>(false, true, true), true)), select(firstTrailingBit(var_0.a.yz), arg_0.b.a.xz << (vec2<u32>(14834u, arg_0.d.x) % vec2<u32>(32u)), vec2<bool>(true, global0[_wgslsmith_index_u32(53240u, 26u)])) >> (abs(_wgslsmith_div_vec2_u32(arg_0.d, vec2<u32>(1u, arg_0.d.x))) % vec2<u32>(32u)), func_1(select(select(vec3<bool>(false, true, false), vec3<bool>(false, global0[_wgslsmith_index_u32(39396u, 26u)], false), vec3<bool>(global0[_wgslsmith_index_u32(110311u, 26u)], true, false)), vec3<bool>(false, true, global0[_wgslsmith_index_u32(arg_0.d.x, 26u)]), !vec3<bool>(false, global0[_wgslsmith_index_u32(61393u, 26u)], global0[_wgslsmith_index_u32(arg_0.d.x, 26u)])), -var_0.a.yy, arg_0)).d);
    global0 = array<bool, 26>();
    return _wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(select(vec2<i32>(var_2.a.a.x, -30056i) | vec2<i32>(0i, u_input.a.x), _wgslsmith_sub_vec2_i32(arg_0.b.a.zw, vec2<i32>(-41718i, u_input.a.x)), global0[_wgslsmith_index_u32(10727u, 26u)]) >> (_wgslsmith_div_vec2_u32(firstTrailingBit(vec2<u32>(9036u, 69436u)), min(vec2<u32>(arg_0.d.x, arg_0.d.x), vec2<u32>(23827u, arg_0.d.x))) % vec2<u32>(32u)), -(u_input.a.xx ^ vec2<i32>(1i, -44598i))), _wgslsmith_mod_vec2_i32(-select(-var_2.b.a.zw, _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a.x, var_0.a.x), var_1.zy), select(vec2<bool>(global0[_wgslsmith_index_u32(arg_0.d.x, 26u)], global0[_wgslsmith_index_u32(arg_0.d.x, 26u)]), vec2<bool>(true, true), global0[_wgslsmith_index_u32(4294967295u, 26u)])), _wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(var_2.c.a.x, u_input.a.x), _wgslsmith_clamp_vec2_i32(var_2.c.a.wx, var_1.yy, var_2.b.a.ww), func_3().xz), min(~var_0.a.xz, ~var_0.a.yx))), abs(~(~(vec2<i32>(0i, -35759i) << (vec2<u32>(var_2.d.x, 0u) % vec2<u32>(32u))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 26>();
    global0 = array<bool, 26>();
    global0 = array<bool, 26>();
    var var_0 = _wgslsmith_dot_vec2_i32(u_input.a.yy, -func_4(func_1(vec3<bool>(global0[_wgslsmith_index_u32(22465u, 26u)], global0[_wgslsmith_index_u32(6379u, 26u)], global0[_wgslsmith_index_u32(1u, 26u)]), vec2<i32>(u_input.a.x, u_input.a.x), Struct_2(Struct_1(vec4<i32>(u_input.a.x, u_input.a.x, 0i, u_input.a.x)), Struct_1(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 16501i)), Struct_1(vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, u_input.a.x)), vec2<u32>(0u, 4294967295u))))) != -(func_3().x | 33503i);
    let var_1 = Struct_4(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + -1848f)) + _wgslsmith_f_op_f32(abs(-1432f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(302f * 1385f), _wgslsmith_f_op_f32(f32(-1f) * -923f)) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(1000f))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-2238f))))), 4294967295u);
    var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_1.b, 78499u), 26u)];
    let var_2 = ~_wgslsmith_dot_vec4_u32(firstLeadingBit(firstTrailingBit(~vec4<u32>(var_1.b, var_1.b, var_1.b, var_1.b))), ~(~(vec4<u32>(var_1.b, 12758u, var_1.b, var_1.b) | vec4<u32>(1u, 1u, var_1.b, var_1.b))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(~(4294967295u >> (var_2 % 32u)), var_2, min(_wgslsmith_add_u32(var_1.b, var_2), var_1.b), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, var_1.b, 38469u, 0u), vec4<u32>(var_1.b, 41194u, 66790u, var_1.b)), vec4<u32>(var_1.b, 0u, var_1.b, var_2))));
}

