struct Struct_1 {
    a: vec3<i32>,
    b: vec2<u32>,
    c: bool,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 2>;

var<private> global1: array<vec3<f32>, 6>;

var<private> global2: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(vec3<i32>(-30754i, -639i, 477i), vec2<u32>(17953u, 82620u), true, vec3<u32>(4294967295u, 51585u, 70903u)), Struct_1(vec3<i32>(27012i, i32(-2147483648), 6972i), vec2<u32>(48561u, 4249u), false, vec3<u32>(27951u, 0u, 4834u)), Struct_1(vec3<i32>(0i, -13815i, 2147483647i), vec2<u32>(15230u, 21451u), false, vec3<u32>(1u, 45586u, 25748u)), Struct_1(vec3<i32>(0i, 2147483647i, 7805i), vec2<u32>(13397u, 0u), false, vec3<u32>(4294967295u, 0u, 16538u)), Struct_1(vec3<i32>(-28469i, i32(-2147483648), 8910i), vec2<u32>(576u, 19691u), false, vec3<u32>(0u, 1u, 1u)), Struct_1(vec3<i32>(-43440i, -4306i, -23053i), vec2<u32>(31124u, 0u), true, vec3<u32>(5927u, 4294967295u, 4294967295u)), Struct_1(vec3<i32>(-26245i, 0i, -21926i), vec2<u32>(1u, 20386u), true, vec3<u32>(70834u, 12390u, 41384u)), Struct_1(vec3<i32>(i32(-2147483648), -32605i, 2147483647i), vec2<u32>(4294967295u, 0u), false, vec3<u32>(4417u, 4294967295u, 4294967295u)), Struct_1(vec3<i32>(-12493i, 8184i, 1i), vec2<u32>(1u, 0u), true, vec3<u32>(0u, 4294967295u, 0u)), Struct_1(vec3<i32>(2147483647i, 4043i, -4127i), vec2<u32>(31904u, 4294967295u), true, vec3<u32>(31914u, 53202u, 10753u)), Struct_1(vec3<i32>(-25777i, 1i, 26838i), vec2<u32>(15491u, 0u), true, vec3<u32>(29477u, 7055u, 2444u)), Struct_1(vec3<i32>(-28118i, -2243i, i32(-2147483648)), vec2<u32>(4294967295u, 4294967295u), true, vec3<u32>(5450u, 1u, 37580u)), Struct_1(vec3<i32>(-7895i, -39340i, 2147483647i), vec2<u32>(0u, 1u), true, vec3<u32>(1u, 36553u, 50712u)), Struct_1(vec3<i32>(1i, 7438i, -72784i), vec2<u32>(1u, 103648u), false, vec3<u32>(4294967295u, 1u, 5095u)), Struct_1(vec3<i32>(12253i, 2147483647i, -23260i), vec2<u32>(49489u, 26224u), false, vec3<u32>(0u, 1u, 27740u)), Struct_1(vec3<i32>(-1i, -12113i, -1i), vec2<u32>(1u, 4294967295u), true, vec3<u32>(1u, 17170u, 18347u)));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<bool>, arg_1: vec4<f32>) -> vec2<f32> {
    global1 = array<vec3<f32>, 6>();
    var var_0 = u_input.a.yy;
    let var_1 = Struct_2(Struct_1(firstTrailingBit(~vec3<i32>(7233i, -2147483647i, 2083i)), max(_wgslsmith_mod_vec2_u32(~vec2<u32>(var_0.x, 52333u), vec2<u32>(0u, var_0.x)), firstLeadingBit(_wgslsmith_sub_vec2_u32(u_input.a.xz, vec2<u32>(var_0.x, var_0.x)))), all(!select(vec4<bool>(arg_0.x, false, true, arg_0.x), vec4<bool>(false, arg_0.x, true, arg_0.x), arg_0.x)), reverseBits(u_input.a & ~vec3<u32>(u_input.a.x, 0u, u_input.a.x))));
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, ~_wgslsmith_add_u32(~var_0.x, countOneBits(29846u)), u_input.a.x) >> (u_input.a.x % 32u), 2u)];
    let var_3 = Struct_2(Struct_1(vec3<i32>(-(var_2.b.a.x | var_2.b.a.x), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(var_2.b.a.x, -2147483647i, 740i, var_1.a.a.x), vec4<i32>(var_1.a.a.x, var_1.a.a.x, -17206i, var_1.a.a.x)), vec4<i32>(var_1.a.a.x, -51464i, 39113i, var_1.a.a.x)), -9058i), u_input.a.yz, any(select(vec4<bool>(arg_0.x, arg_0.x, var_1.a.c, var_1.a.c), vec4<bool>(var_1.a.c, arg_0.x, true, true), false)) && true, vec3<u32>(35354u, 0u, 0u)));
    return _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(step(arg_1.wx, arg_1.wx)), vec2<f32>(_wgslsmith_f_op_f32(sign(arg_1.x)), _wgslsmith_f_op_f32(-arg_1.x))))), vec2<f32>(arg_1.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x - 117f)), _wgslsmith_f_op_f32(step(arg_1.x, _wgslsmith_f_op_f32(arg_1.x + 894f))))))));
}

fn func_2() -> f32 {
    global2 = array<Struct_1, 16>();
    var var_0 = all(!select(vec3<bool>(true, true, true), vec3<bool>(any(vec3<bool>(true, true, false)), true, true), true));
    let var_1 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(func_3(vec3<bool>(true, false, true), vec4<f32>(-1905f, -1168f, 639f, 509f)))))))));
    var var_2 = Struct_2(global2[_wgslsmith_index_u32(~_wgslsmith_mod_u32(~u_input.a.x, 3509u), 16u)]);
    global1 = array<vec3<f32>, 6>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-269f + var_1.x) + var_1.x));
}

fn func_1() -> Struct_2 {
    let var_0 = global2[_wgslsmith_index_u32(4294967295u, 16u)];
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(min(199f, -664f))) - _wgslsmith_f_op_vec2_f32(func_3(select(vec3<bool>(false == var_0.c, true, true), vec3<bool>(false, true, var_0.c), _wgslsmith_f_op_f32(-353f * 1171f) > _wgslsmith_f_op_f32(select(-660f, -1247f, var_0.c))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1789f, 123f, -1548f, -1000f)) * vec4<f32>(-826f, 759f, -1000f, -218f)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1757f, -414f, 215f, 1722f))))))));
    var var_2 = _wgslsmith_sub_u32(0u, _wgslsmith_dot_vec3_u32(~max(u_input.a, vec3<u32>(u_input.a.x, u_input.a.x, 34172u)), vec3<u32>(1u, u_input.a.x, min(14669u, 49202u)))) >= ~firstTrailingBit(var_0.d.x);
    let var_3 = _wgslsmith_f_op_f32(func_2());
    let var_4 = reverseBits(reverseBits(vec4<i32>(-1i) * -abs(vec4<i32>(var_0.a.x, 38504i, var_0.a.x, -12358i))));
    return Struct_2(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~select(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 47830u), vec4<u32>(4294967295u, 9653u, u_input.a.x, 0u), vec4<u32>(1u, 4294967295u, 31380u, 22602u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 0u, u_input.a.x), vec4<u32>(var_0.b.x, 1u, u_input.a.x, 50753u), vec4<u32>(var_0.b.x, var_0.d.x, 0u, u_input.a.x)), false), ~(~(vec4<u32>(var_0.d.x, u_input.a.x, var_0.b.x, 0u) >> (vec4<u32>(var_0.d.x, 0u, 51033u, var_0.b.x) % vec4<u32>(32u))))), 16u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global2 = array<Struct_1, 16>();
    let var_1 = !(!select(select(vec3<bool>(var_0.a.c, var_0.a.c, var_0.a.c), select(vec3<bool>(true, var_0.a.c, false), vec3<bool>(var_0.a.c, false, true), false), true), vec3<bool>(true, false, var_0.a.c | var_0.a.c), !select(vec3<bool>(false, true, var_0.a.c), vec3<bool>(false, var_0.a.c, false), var_0.a.c)));
    var var_2 = !(!select(vec4<bool>(!var_1.x, true, var_0.a.c, true), !(!vec4<bool>(false, var_1.x, true, var_0.a.c)), func_1().a.c));
    global2 = array<Struct_1, 16>();
    var var_3 = func_1().a;
    var var_4 = var_1.x;
    var_2 = select(select(select(!vec4<bool>(false, var_1.x, var_2.x, var_2.x), !select(vec4<bool>(var_3.c, false, true, var_0.a.c), vec4<bool>(false, false, var_3.c, var_2.x), vec4<bool>(true, var_3.c, true, var_0.a.c)), select(!vec4<bool>(false, false, true, var_2.x), select(vec4<bool>(true, var_0.a.c, var_3.c, var_1.x), vec4<bool>(var_2.x, var_2.x, false, false), var_1.x), true)), !vec4<bool>(!var_3.c, true & var_0.a.c, var_3.c & var_1.x, true), var_3.c), !vec4<bool>(!all(var_2.wz), var_1.x, any(var_2.wx), var_3.c), var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-650f * -1412f) - -1000f)));
}

