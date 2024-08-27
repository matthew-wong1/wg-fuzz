struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: u32,
    d: vec2<i32>,
    e: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: u32,
    c: vec2<bool>,
    d: vec3<i32>,
    e: i32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec2<i32>,
    d: vec4<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 12>;

var<private> global1: array<bool, 11> = array<bool, 11>(true, false, true, true, false, false, true, true, true, false, false);

var<private> global2: vec4<bool>;

var<private> global3: Struct_1;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: f32, arg_3: i32) -> vec4<bool> {
    var var_0 = _wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(abs(vec3<i32>(arg_3, arg_3, arg_0.d.x)), firstLeadingBit(arg_0.d)), vec3<i32>(_wgslsmith_clamp_i32(-min(-11506i, 40244i), -arg_0.e, -56032i), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(arg_0.d << (vec3<u32>(0u, arg_0.b, 74128u) % vec3<u32>(32u)), countOneBits(vec3<i32>(11345i, 0i, arg_3))), max(arg_0.d, vec3<i32>(global3.d.x, u_input.a, 1i))), _wgslsmith_dot_vec3_i32(abs(arg_0.d), firstLeadingBit(vec3<i32>(u_input.a, 1i, arg_0.e))) >> (firstLeadingBit(~arg_0.b) % 32u)), vec3<i32>(i32(-1i) * -1i, i32(-1i) * -4494i, u_input.a));
    var var_1 = Struct_1(global3.a, true, ~42807u, vec2<i32>(~2147483647i, _wgslsmith_sub_i32(countOneBits(~(-32182i)), _wgslsmith_mod_i32(global3.d.x, ~(-2147483647i)))), arg_1.x);
    var var_2 = any(vec4<bool>(false, false || !select(true, true, arg_0.c.x), false, _wgslsmith_dot_vec2_u32(u_input.c.xx, ~vec2<u32>(global3.c, arg_0.b)) <= min(79225u, ~1u)));
    var_2 = (i32(-1i) * -firstTrailingBit(var_1.d.x)) != 0i;
    let var_3 = firstTrailingBit(-12012i << (firstLeadingBit(min(abs(u_input.c.x), firstTrailingBit(4294967295u))) % 32u));
    return !(!global3.a);
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: Struct_2) -> Struct_2 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-575f * 321f), 898f);
    let var_1 = Struct_1(!(!func_3(arg_2, _wgslsmith_div_vec2_f32(arg_2.a, arg_2.a), _wgslsmith_f_op_f32(sign(-169f)), -global3.d.x)), arg_2.c.x, 1u, global3.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.e)));
    global0 = array<vec3<bool>, 12>();
    global0 = array<vec3<bool>, 12>();
    global1 = array<bool, 11>();
    return Struct_2(var_0, _wgslsmith_clamp_u32(~1u, ~global3.c, max((arg_0 << (16609u % 32u)) >> ((62327u << (u_input.b % 32u)) % 32u), countOneBits(6374u))), !select(select(vec2<bool>(global1[_wgslsmith_index_u32(global3.c, 11u)], arg_2.c.x), arg_2.c, vec2<bool>(var_1.b, global3.a.x)), !vec2<bool>(arg_2.c.x, false), select(vec2<bool>(false, global3.a.x), vec2<bool>(global3.b, true), select(vec2<bool>(global1[_wgslsmith_index_u32(arg_2.b, 11u)], global1[_wgslsmith_index_u32(global3.c, 11u)]), var_1.a.yz, vec2<bool>(false, global2.x)))), _wgslsmith_add_vec3_i32(-min(arg_2.d << (u_input.c % vec3<u32>(32u)), countOneBits(arg_2.d)), -vec3<i32>(0i, i32(-1i) * -1i, arg_2.e)), _wgslsmith_mod_i32(_wgslsmith_mod_i32(u_input.a, 2147483647i), _wgslsmith_sub_i32(arg_2.e, 2147483647i)));
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: f32) -> Struct_1 {
    let var_0 = func_2(~_wgslsmith_mult_u32(~0u >> (u_input.e % 32u), 0u), u_input.e, Struct_2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_1, -756f))))), ~(~18819u), global2.yx, countOneBits(vec3<i32>(u_input.a, max(-20502i, 2147483647i), global3.d.x | global3.d.x)), -2147483647i));
    var var_1 = false;
    var var_2 = -u_input.a;
    let var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1343f, global3.e)) + _wgslsmith_f_op_f32(round(var_0.a.x))), 837f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-630f, global3.e) + _wgslsmith_f_op_f32(-global3.e)), var_0.a.x), vec4<f32>(_wgslsmith_f_op_f32(-245f - var_0.a.x), global3.e, _wgslsmith_f_op_f32(abs(434f)), -1000f))), Struct_2(var_0.a, firstTrailingBit(~u_input.e), select(!var_0.c, vec2<bool>(var_0.c.x, global3.e <= var_0.a.x), func_3(func_2(var_0.b, global3.c, var_0), vec2<f32>(arg_1, -401f), 1000f, 0i).wx), _wgslsmith_mult_vec3_i32(var_0.d, var_0.d), ~global3.d.x), Struct_2(_wgslsmith_f_op_vec2_f32(-var_0.a), firstTrailingBit(4294967295u), global2.zy, vec3<i32>(var_0.e, u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.d.x, global3.d.x, -1i), var_0.d & var_0.d)), _wgslsmith_sub_i32(max(firstLeadingBit(var_0.e), 38585i | global3.d.x), ~10529i)));
    global3 = Struct_1(!select(vec4<bool>(false, arg_2 < 142f, !arg_0, false), !global3.a, vec4<bool>(2147483647i == var_0.e, global3.e > global3.e, global3.b, any(global0[_wgslsmith_index_u32(var_0.b, 12u)]))), select(arg_0, func_2(_wgslsmith_mult_u32(min(10379u, var_3.c.b), var_0.b << (global3.c % 32u)), select(35106u, 43067u, global2.x | var_0.c.x), func_2(func_2(38813u, global3.c, Struct_2(vec2<f32>(-123f, -784f), global3.c, var_0.c, vec3<i32>(2147483647i, -5264i, 1i), var_0.d.x)).b, 67644u, var_3.b)).c.x, any(select(global3.a, func_3(var_0, var_3.b.a, -176f, global3.d.x), true))), max(countOneBits(_wgslsmith_add_u32(global3.c, global3.c)), var_0.b) | abs(1u), _wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(var_0.d.zz | abs(var_0.d.zz), abs(vec2<i32>(3088i, var_0.e)), var_0.d.xz), min(vec2<i32>(u_input.a, ~u_input.a), vec2<i32>(-16882i, -u_input.a))), func_2(abs(_wgslsmith_dot_vec4_u32(~vec4<u32>(72592u, global3.c, 0u, 0u), ~vec4<u32>(global3.c, var_3.c.b, global3.c, global3.c))), global3.c, var_3.b).a.x);
    return Struct_1(select(select(!(!global3.a), !global3.a, global3.a), vec4<bool>(all(vec2<bool>(var_0.c.x, global1[_wgslsmith_index_u32(u_input.b, 11u)])), select(false, !global1[_wgslsmith_index_u32(4294967295u, 11u)], var_3.c.c.x), func_3(var_3.b, _wgslsmith_f_op_vec2_f32(-var_3.a.zy), _wgslsmith_f_op_f32(f32(-1f) * -1419f), -1i).x, true), vec4<bool>(!arg_0 & (-5569i < var_0.e), true, true, (2147483647i == var_3.c.e) != true)), var_0.c.x, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(select(reverseBits(vec4<u32>(39214u, global3.c, var_0.b, 1u)), ~vec4<u32>(1u, var_0.b, 0u, var_3.b.b), !vec4<bool>(true, true, global3.b, false)), ~vec4<u32>(u_input.e, 4294967295u, u_input.d.x, var_0.b)), ~firstLeadingBit(~vec4<u32>(24546u, 1u, var_3.c.b, u_input.b))), select(abs(global3.d), vec2<i32>(1i, firstTrailingBit(firstLeadingBit(1i))), func_2(_wgslsmith_add_u32(49053u, u_input.c.x) << (var_0.b % 32u), 0u, var_3.c).c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-296f - var_3.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_1(_wgslsmith_f_op_f32(min(-821f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global3.e))))) == 523f, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-2492f, 180f))), global3.e);
    global3 = Struct_1(select(func_3(func_2(global3.c >> (u_input.d.x % 32u), 1u, Struct_2(vec2<f32>(global3.e, global3.e), 0u, vec2<bool>(true, global3.a.x), vec3<i32>(1i, global3.d.x, global3.d.x), 0i)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-579f, 1402f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1876f, 1244f)) - 1011f), u_input.a), global3.a, any(!vec4<bool>(true, global2.x, global3.b, true))), any(func_3(func_2(u_input.c.x, _wgslsmith_mod_u32(u_input.e, global3.c), func_2(10482u, u_input.d.x, Struct_2(vec2<f32>(-866f, -1176f), 4294967295u, global3.a.ww, vec3<i32>(-40242i, global3.d.x, u_input.a), u_input.a))), vec2<f32>(global3.e, global3.e), _wgslsmith_f_op_f32(floor(-546f)), -(-60054i & global3.d.x))), global3.c, vec2<i32>(-71267i, _wgslsmith_clamp_i32(select(-11916i, global3.d.x & 1i, global2.x), 1i, 1i)), -794f);
    global1 = array<bool, 11>();
    var var_0 = !func_1(!all(global3.a.wz), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(697f, -1280f))))), -533f).b;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(func_2(_wgslsmith_mult_u32(49027u, _wgslsmith_clamp_u32(4294967295u, u_input.b, global3.c)), ~(~global3.c), func_2(reverseBits(u_input.d.x), u_input.d.x, Struct_2(vec2<f32>(-577f, global3.e), 0u, vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.d.x, 11u)]), vec3<i32>(24225i, 1i, global3.d.x), global3.d.x))).b, ~(1u << ((global3.c << (u_input.c.x % 32u)) % 32u)), u_input.e), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1789f, 926f, global3.e, global3.e) - vec4<f32>(global3.e, 1000f, -1000f, 1000f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.e, global3.e, global3.e, -441f) - vec4<f32>(global3.e, 1000f, -1000f, global3.e))))), select(global3.d, _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, -global3.d.x), vec2<i32>(2147483647i, _wgslsmith_mod_i32(0i, -1i))), true), firstTrailingBit(select(~vec4<i32>(-60636i, global3.d.x, 1i, 58827i), countOneBits(vec4<i32>(58469i, 35897i, 0i, u_input.a)), true) >> (~countOneBits(vec4<u32>(50272u, u_input.c.x, 0u, 4294967295u)) % vec4<u32>(32u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(424f, global3.e), vec2<f32>(global3.e, global3.e), false)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1021f, 1000f) + vec2<f32>(global3.e, -1421f))))));
}

