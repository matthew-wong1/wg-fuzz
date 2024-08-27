struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: u32,
    d: vec2<u32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 29>;

var<private> global1: array<Struct_3, 19>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_3) -> u32 {
    var var_0 = !(arg_2.c.x & false);
    let var_1 = Struct_3(arg_2.a, firstTrailingBit(vec2<u32>(~0u, _wgslsmith_sub_u32(_wgslsmith_clamp_u32(arg_0.b.x, arg_1.b.x, 27889u), ~0u))), select(select(vec2<bool>(all(vec2<bool>(arg_1.c.x, false)), arg_2.c.x && false), select(arg_0.c, select(arg_2.c, vec2<bool>(true, arg_1.c.x), arg_1.c.x), true), any(!vec3<bool>(false, false, arg_2.c.x))), select(!(!vec2<bool>(arg_1.c.x, true)), !(!arg_1.c), vec2<bool>(true, true)), !(select(arg_1.c.x, false, arg_1.c.x) | (arg_2.b.x <= arg_2.b.x))));
    var var_2 = Struct_2(Struct_1(~_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(0u, 4294967295u, 3878u)), _wgslsmith_sub_vec3_u32(u_input.b.zyx, vec3<u32>(41318u, arg_2.b.x, 4294967295u)))), ~(~u_input.b.wxz), arg_0.b.x, reverseBits(abs(arg_2.b)));
    global0 = array<vec4<u32>, 29>();
    let var_3 = _wgslsmith_dot_vec4_i32(vec4<i32>(firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.a.x, u_input.a.x, 0i), -vec3<i32>(arg_1.a.x, 60766i, -2147483647i))), 9893i, (var_1.a.x | 17093i) & 19273i, -(_wgslsmith_clamp_i32(u_input.a.x, arg_0.a.x, -1i) << (arg_1.b.x % 32u))), -arg_0.a);
    return ~(~29378u);
}

fn func_2(arg_0: vec3<i32>, arg_1: u32) -> vec3<bool> {
    var var_0 = Struct_1(_wgslsmith_div_u32(u_input.b.x, u_input.b.x));
    var var_1 = Struct_3(~(vec4<i32>(-1i) * -(vec4<i32>(u_input.c, 2147483647i, u_input.c, arg_0.x) << (vec4<u32>(arg_1, 51102u, 0u, var_0.a) % vec4<u32>(32u)))), vec2<u32>(func_3(Struct_3(select(vec4<i32>(2147483647i, arg_0.x, u_input.a.x, arg_0.x), vec4<i32>(-23796i, u_input.c, arg_0.x, u_input.a.x), false), u_input.b.zx, select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false))), global1[_wgslsmith_index_u32(firstTrailingBit(firstTrailingBit(arg_1)), 19u)], global1[_wgslsmith_index_u32(1u, 19u)]), countOneBits(~u_input.b.x)), !select(!select(vec2<bool>(false, true), vec2<bool>(true, true), false), vec2<bool>(true, true), any(vec3<bool>(false, true, true))));
    let var_2 = Struct_3(~max(var_1.a, var_1.a), ~(~(u_input.b.wx & vec2<u32>(35270u, 12187u)) ^ ~vec2<u32>(arg_1, 4294967295u)), select(vec2<bool>(all(vec2<bool>(var_1.c.x, var_1.c.x)), false), var_1.c, var_1.c));
    let var_3 = Struct_2(Struct_1(38425u), vec3<u32>(var_2.b.x >> (u_input.b.x % 32u), u_input.b.x, _wgslsmith_mod_u32(~abs(var_2.b.x), ~(~1u))), _wgslsmith_clamp_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(63840u, var_1.b.x) << (var_2.b % vec2<u32>(32u)), ~var_2.b), var_0.a, abs(_wgslsmith_sub_u32(5534u, arg_1))), vec2<u32>(firstLeadingBit(19747u), ~(~_wgslsmith_mod_u32(62847u, var_2.b.x))));
    return vec3<bool>(!all(!vec3<bool>(var_2.c.x, true, true)), all(var_1.c), true);
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: vec3<f32>, arg_3: Struct_1) -> i32 {
    var var_0 = vec3<f32>(-331f, _wgslsmith_f_op_f32(-arg_2.x), arg_2.x);
    let var_1 = ~select(u_input.b.zyw, ~u_input.b.wxy, any(select(select(vec3<bool>(arg_1, false, true), vec3<bool>(false, true, arg_1), arg_1), select(vec3<bool>(true, false, arg_1), vec3<bool>(false, true, false), arg_1), func_2(vec3<i32>(arg_0, 54013i, 50854i), 5846u))));
    let var_2 = Struct_3(_wgslsmith_sub_vec4_i32(~(_wgslsmith_mult_vec4_i32(vec4<i32>(-10312i, arg_0, -2147483647i, arg_0), vec4<i32>(u_input.c, u_input.c, arg_0, 2147483647i)) | ~vec4<i32>(u_input.c, 14586i, arg_0, -8482i)), abs(min(_wgslsmith_clamp_vec4_i32(vec4<i32>(466i, arg_0, -1i, arg_0), vec4<i32>(u_input.a.x, u_input.c, u_input.a.x, arg_0), vec4<i32>(u_input.c, -2131i, 1i, -16817i)), reverseBits(vec4<i32>(-59342i, 0i, 49604i, u_input.a.x))))), ~var_1.yz, !vec2<bool>(!any(vec3<bool>(arg_1, arg_1, arg_1)), !(!arg_1)));
    var var_3 = _wgslsmith_f_op_vec2_f32(sign(var_0.zx));
    var var_4 = Struct_2(Struct_1(arg_3.a), select(abs(_wgslsmith_mult_vec3_u32(var_1, ~u_input.b.wzy)), var_1, !vec3<bool>(false, !var_2.c.x, !arg_1)), firstLeadingBit(func_3(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, 18451u), 19u)], Struct_3(-vec4<i32>(-1i, -13718i, arg_0, arg_0), min(var_2.b, vec2<u32>(var_1.x, 4294967295u)), vec2<bool>(arg_1, arg_1)), global1[_wgslsmith_index_u32(0u, 19u)])), ~(~vec2<u32>(var_2.b.x, _wgslsmith_mod_u32(13119u, arg_3.a))));
    return 0i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<u32>, 29>();
    var var_0 = _wgslsmith_mod_vec4_i32(-vec4<i32>(_wgslsmith_div_i32(i32(-1i) * -19198i, 1i), -(~(-20727i)), -28522i, abs(u_input.c)), vec4<i32>(~func_1(reverseBits(u_input.c), true, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-193f, -237f, -1605f)), Struct_1(0u)), ~_wgslsmith_div_i32(select(-1i, -2147483647i, true), abs(1i)), 1i, ~u_input.a.x));
    var var_1 = Struct_2(Struct_1(1534u), ~vec3<u32>(u_input.b.x, countOneBits(u_input.b.x | 10942u), _wgslsmith_div_u32(0u, 17761u) << (_wgslsmith_div_u32(24734u, 4294967295u) % 32u)), _wgslsmith_clamp_u32(_wgslsmith_add_u32(8661u, _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, u_input.b.x, 64085u, u_input.b.x), u_input.b)), ~(~(~u_input.b.x)), u_input.b.x), _wgslsmith_add_vec2_u32(abs(countOneBits(u_input.b.wy) >> (vec2<u32>(1u, u_input.b.x) % vec2<u32>(32u))), u_input.b.zw));
    let var_2 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(857f, -1460f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-806f, -436f) - vec2<f32>(764f, -1167f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-702f, 141f))))));
    var var_3 = ~(~(~var_0.xxz));
    var_0 = vec4<i32>(var_0.x, reverseBits(-2147483647i), ~select(reverseBits(-var_0.x), _wgslsmith_mult_i32(~var_3.x, reverseBits(64195i)), true), -1i);
    global1 = array<Struct_3, 19>();
    var_0 = vec4<i32>(-1i) * -vec4<i32>(_wgslsmith_dot_vec3_i32(select(var_0.wxy, vec3<i32>(u_input.a.x, var_3.x, -1i), true), ~vec3<i32>(var_3.x, var_3.x, 1i)), ~_wgslsmith_dot_vec2_i32(vec2<i32>(1i, -9082i), var_3.xz), u_input.c, max(var_3.x & var_0.x, _wgslsmith_sub_i32(var_0.x, -2147483647i)));
    var_1 = Struct_2(var_1.a, ~var_1.b, _wgslsmith_mod_u32(firstTrailingBit(10731u), 4294967295u), _wgslsmith_add_vec2_u32((~vec2<u32>(4294967295u, var_1.a.a) ^ select(u_input.b.xy, var_1.d, vec2<bool>(true, true))) & vec2<u32>(u_input.b.x, u_input.b.x), vec2<u32>(_wgslsmith_clamp_u32(14412u << (u_input.b.x % 32u), 4294967295u, ~var_1.c), ~(~u_input.b.x))));
    let x = u_input.a;
    s_output = StorageBuffer(-1000f, var_0.xwx);
}

