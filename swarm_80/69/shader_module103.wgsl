struct Struct_1 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: vec2<i32>,
    d: bool,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 8>;

var<private> global1: array<vec4<f32>, 14>;

var<private> global2: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(vec4<i32>(2512i, 2147483647i, -1i, 2147483647i), vec4<f32>(-1443f, -836f, -1077f, -1213f), vec2<i32>(45987i, 0i), true, true), Struct_1(vec4<i32>(2147483647i, i32(-2147483648), -1i, -1i), vec4<f32>(-600f, 364f, 1000f, 1000f), vec2<i32>(1i, -45461i), false, false), Struct_1(vec4<i32>(23492i, 32449i, 73689i, -36157i), vec4<f32>(1000f, -863f, 453f, 1764f), vec2<i32>(-91733i, 7960i), true, true), Struct_1(vec4<i32>(-10910i, -7895i, 13972i, i32(-2147483648)), vec4<f32>(205f, 750f, 311f, -1499f), vec2<i32>(37902i, -48359i), true, true), Struct_1(vec4<i32>(-37169i, -49265i, 16467i, -24393i), vec4<f32>(211f, 340f, 861f, -468f), vec2<i32>(-7707i, 2147483647i), false, false));

var<private> global3: Struct_1;

var<private> global4: array<f32, 12> = array<f32, 12>(-812f, 1021f, 1641f, 761f, 1755f, 157f, 957f, -417f, -188f, 474f, 416f, 349f);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec4<bool> {
    var var_0 = vec3<bool>(~u_input.c.x <= (~select(u_input.c.x, 34906u, true) << (1u % 32u)), ~u_input.c.x >= reverseBits(0u), global3.d);
    var var_1 = vec2<f32>(168f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(1u, 12u)] * _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(19135u, 12u)])), _wgslsmith_f_op_f32(sign(-817f))) * global3.b.x));
    global0 = array<vec2<i32>, 8>();
    let var_2 = all(select(vec3<bool>(global3.e, var_0.x, all(select(vec2<bool>(false, var_0.x), var_0.yy, var_0.xz))), select(select(!vec3<bool>(var_0.x, false, var_0.x), select(vec3<bool>(false, global3.e, var_0.x), vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(true, global3.d, var_0.x)), select(vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(false, global3.d, true), vec3<bool>(global3.d, true, var_0.x))), !select(vec3<bool>(global3.d, var_0.x, var_0.x), vec3<bool>(true, var_0.x, true), vec3<bool>(false, global3.e, var_0.x)), !select(vec3<bool>(false, var_0.x, true), vec3<bool>(true, var_0.x, false), vec3<bool>(var_0.x, global3.d, false))), select(select(!vec3<bool>(var_0.x, true, false), !vec3<bool>(global3.d, global3.d, true), select(vec3<bool>(global3.e, true, global3.e), vec3<bool>(false, global3.e, var_0.x), var_0.x)), vec3<bool>(true, select(true, global3.e, global3.d), u_input.a < global3.a.x), true)));
    var var_3 = all(vec3<bool>(all(vec2<bool>(var_0.x, true)), firstTrailingBit(_wgslsmith_add_u32(1u, 0u)) < 0u, !all(select(vec3<bool>(global3.e, var_0.x, var_0.x), vec3<bool>(true, global3.e, true), vec3<bool>(global3.d, true, var_0.x)))));
    return vec4<bool>(var_0.x, true, var_0.x, _wgslsmith_div_i32(global3.c.x, 2147483647i) <= _wgslsmith_dot_vec2_i32(vec2<i32>(abs(global3.c.x), global3.c.x << (u_input.c.x % 32u)), reverseBits(global3.a.ww << (vec2<u32>(u_input.c.x, u_input.c.x) % vec2<u32>(32u)))));
}

fn func_2(arg_0: f32) -> vec2<u32> {
    var var_0 = !select(!(!(!vec4<bool>(global3.e, false, false, global3.e))), !vec4<bool>(true, global3.d, true, true), func_3());
    var_0 = !select(vec4<bool>(var_0.x, !global3.d, true, !any(vec2<bool>(var_0.x, var_0.x))), vec4<bool>(true, false, (var_0.x && true) || all(var_0.xwz), false), !vec4<bool>(true, global3.d & var_0.x, !var_0.x, true));
    global0 = array<vec2<i32>, 8>();
    var var_1 = u_input.c.x;
    global1 = array<vec4<f32>, 14>();
    return abs(~(~(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c.x, 17338u), u_input.c) | reverseBits(vec2<u32>(u_input.c.x, u_input.c.x)))));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1) -> f32 {
    var var_0 = -651f;
    var var_1 = true & all(!vec2<bool>(func_3().x, false));
    var var_2 = vec2<i32>(abs(41435i), 1i);
    var var_3 = _wgslsmith_mult_vec3_u32(select(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c.x, arg_0.x, 4294967295u), firstTrailingBit(vec3<u32>(70033u, arg_0.x, u_input.c.x))), (vec3<u32>(u_input.c.x, 1u, arg_0.x) ^ vec3<u32>(u_input.c.x, u_input.c.x, 4294967295u)) | ~vec3<u32>(0u, 4294967295u, u_input.c.x), !(!vec3<bool>(true, false, arg_1.d))) >> (vec3<u32>(_wgslsmith_sub_u32(u_input.c.x, u_input.c.x), u_input.c.x, ~(~0u)) % vec3<u32>(32u)), ~_wgslsmith_div_vec3_u32(vec3<u32>(63802u, u_input.c.x, u_input.c.x) | firstTrailingBit(vec3<u32>(13753u, 66141u, arg_0.x)), ~vec3<u32>(0u, u_input.c.x, 66155u)));
    let var_4 = arg_1;
    return -878f;
}

fn func_1(arg_0: vec3<f32>, arg_1: bool) -> vec4<u32> {
    var var_0 = abs(-1i);
    var var_1 = vec2<bool>(arg_1, true);
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(func_4(select(func_2(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(11867u, 12u)] + global3.b.x)), vec2<u32>(~34479u, ~u_input.c.x), true), global2[_wgslsmith_index_u32(abs(u_input.c.x), 5u)])), global4[_wgslsmith_index_u32(u_input.c.x, 12u)], _wgslsmith_f_op_f32(1300f - -1642f));
    var var_3 = global2[_wgslsmith_index_u32(46710u, 5u)];
    var_0 = _wgslsmith_div_i32(countOneBits(-10576i), _wgslsmith_dot_vec4_i32(global3.a, _wgslsmith_mod_vec4_i32(select(global3.a, var_3.a, global3.e), _wgslsmith_sub_vec4_i32(var_3.a, vec4<i32>(0i, var_3.a.x, var_3.a.x, 1i)))) | (14646i | _wgslsmith_mult_i32(firstTrailingBit(2107i), global3.a.x)));
    return max(reverseBits(vec4<u32>(1u, ~_wgslsmith_add_u32(u_input.c.x, 0u), 33420u << (_wgslsmith_clamp_u32(u_input.c.x, u_input.c.x, u_input.c.x) % 32u), u_input.c.x)), countOneBits(countOneBits(_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.c.x, 8738u, 4294967295u, u_input.c.x), firstTrailingBit(vec4<u32>(u_input.c.x, 66237u, 0u, u_input.c.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_dot_vec4_u32(max(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 4294967295u), vec4<u32>(0u, 1u, u_input.c.x, u_input.c.x)), _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 40269u, 4294967295u, 4294967295u), vec4<u32>(u_input.c.x, 1u, 1u, u_input.c.x)), ~vec4<u32>(u_input.c.x, u_input.c.x, 1u, 0u))), func_1(global3.b.yzy, true));
    global0 = array<vec2<i32>, 8>();
    let var_1 = Struct_1(min(-(max(vec4<i32>(0i, u_input.b.x, -19121i, u_input.a), global3.a) >> (~vec4<u32>(u_input.c.x, 44578u, u_input.c.x, 30115u) % vec4<u32>(32u))), select(firstTrailingBit(-global3.a), abs(global3.a), false)), vec4<f32>(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(u_input.c, u_input.c), 14472u, 9356u), 12u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global4[_wgslsmith_index_u32(0u, 12u)])))), 1097f, -973f), vec2<i32>(_wgslsmith_div_i32(20993i, _wgslsmith_clamp_i32(-48136i, u_input.a, global3.a.x)), -2812i) & _wgslsmith_mod_vec2_i32(vec2<i32>(~(-48115i), -17949i), countOneBits(~u_input.d.xx)), false, false);
    global0 = array<vec2<i32>, 8>();
    let var_2 = var_1;
    global1 = array<vec4<f32>, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(1i, _wgslsmith_sub_vec4_i32(firstLeadingBit(vec4<i32>(-5337i, 1i, var_1.a.x, ~0i)), reverseBits(~vec4<i32>(var_1.c.x, -1i, 1i, 962i)) >> (_wgslsmith_div_vec4_u32(~vec4<u32>(0u, 21373u, u_input.c.x, u_input.c.x), vec4<u32>(67401u, u_input.c.x, 0u, u_input.c.x) << (vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 0u) % vec4<u32>(32u))) % vec4<u32>(32u))));
}

