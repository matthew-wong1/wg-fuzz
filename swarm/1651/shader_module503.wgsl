struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<bool>,
    c: vec4<bool>,
    d: vec4<bool>,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: i32,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 18> = array<vec3<i32>, 18>(vec3<i32>(0i, 1i, 1i), vec3<i32>(-28210i, -21252i, -22138i), vec3<i32>(-22667i, 0i, i32(-2147483648)), vec3<i32>(-1i, 1i, 45182i), vec3<i32>(0i, 24802i, -5394i), vec3<i32>(3974i, -66092i, -38492i), vec3<i32>(-1i, 36822i, i32(-2147483648)), vec3<i32>(-1i, 39516i, -1i), vec3<i32>(-26212i, 3734i, -1437i), vec3<i32>(2147483647i, 4142i, i32(-2147483648)), vec3<i32>(0i, -31994i, 1i), vec3<i32>(-1i, 0i, -2069i), vec3<i32>(2147483647i, 1i, 28289i), vec3<i32>(-45300i, -32048i, 18983i), vec3<i32>(0i, -4197i, 13571i), vec3<i32>(22132i, 1i, 21178i), vec3<i32>(30791i, i32(-2147483648), -18849i), vec3<i32>(-17075i, 0i, 2147483647i));

var<private> global1: Struct_3 = Struct_3(-847f, 31743i, 1i, Struct_2(vec2<i32>(2147483647i, -31526i), vec2<bool>(false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true)));

var<private> global2: Struct_1 = Struct_1(false, 19447u);

var<private> global3: vec2<u32> = vec2<u32>(1u, 86581u);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: i32) -> i32 {
    global1 = arg_0;
    let var_0 = _wgslsmith_mod_vec4_i32(-vec4<i32>(2717i, _wgslsmith_sub_i32(37901i, arg_1) << (~global3.x % 32u), -28019i, 29345i), ~(-(vec4<i32>(-40567i, arg_1, -922i, 25870i) << (~vec4<u32>(u_input.a, u_input.c.x, global2.b, 26359u) % vec4<u32>(32u)))));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-583f, 405f), _wgslsmith_f_op_f32(f32(-1f) * -756f))), u_input.d, arg_1, Struct_2(countOneBits(global1.d.a), select(vec2<bool>(true, global2.a), vec2<bool>(global2.a, true), arg_0.d.c.zx), select(!(!global1.d.c), vec4<bool>(any(vec4<bool>(global1.d.c.x, true, true, global1.d.b.x)), true, true, all(global1.d.c)), false), arg_0.d.d));
    let var_2 = _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, ~0i), global1.d.a) | ~(~(~(~arg_0.d.a.x)));
    let var_3 = var_1.c;
    return ~(~(-_wgslsmith_clamp_i32(firstTrailingBit(var_1.b), _wgslsmith_sub_i32(var_0.x, -1i), global1.c)));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec3<i32>, arg_2: Struct_3, arg_3: vec3<i32>) -> i32 {
    var var_0 = Struct_1(arg_2.c == 1i, 10290u);
    let var_1 = ((-_wgslsmith_add_i32(0i, 4103i) << (u_input.a % 32u)) ^ (_wgslsmith_sub_i32(arg_1.x, arg_2.b) & _wgslsmith_clamp_i32(13319i, arg_1.x, global1.b ^ -23826i))) << (4294967295u % 32u);
    let var_2 = ~(~(~(~arg_3.x) << (0u % 32u)));
    let var_3 = Struct_3(_wgslsmith_f_op_f32(-arg_2.a), -2147483647i, 1i, Struct_2(arg_1.yz, arg_2.d.b, arg_2.d.c, select(global1.d.d, select(global1.d.c, arg_2.d.d, global1.d.c.x), arg_1.x >= (i32(-1i) * -26651i))));
    let var_4 = 2127f;
    return _wgslsmith_dot_vec3_i32(firstLeadingBit(arg_1) << (((vec3<u32>(arg_0.x, 7478u, var_0.b) & vec3<u32>(40132u, 136253u, 30820u)) & ~(u_input.b.wwz ^ vec3<u32>(arg_0.x, var_0.b, 72250u))) % vec3<u32>(32u)), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(abs(0u) ^ global2.b, _wgslsmith_sub_u32(global2.b, ~firstLeadingBit(0u))), 18u)]);
}

fn func_2(arg_0: f32) -> bool {
    global1 = Struct_3(1011f, func_4(u_input.b.xyw, ~global0[_wgslsmith_index_u32(select(~global2.b, 52245u, true), 18u)], Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -210f), _wgslsmith_add_i32(_wgslsmith_clamp_i32(u_input.d, -1i, global1.d.a.x), u_input.d), (u_input.d ^ 31317i) | _wgslsmith_dot_vec2_i32(global1.d.a, global1.d.a), Struct_2(select(vec2<i32>(u_input.d, -77021i), global1.d.a, true), !global1.d.c.yw, global1.d.d, global1.d.d)), vec3<i32>(1i, u_input.d, func_3(Struct_3(global1.a, 1i, -56136i, Struct_2(vec2<i32>(global1.d.a.x, -18627i), global1.d.c.yw, global1.d.c, vec4<bool>(true, global2.a, global2.a, false))), global1.b))), _wgslsmith_dot_vec3_i32(firstLeadingBit((vec3<i32>(-2147483647i, 0i, u_input.d) | vec3<i32>(global1.c, u_input.d, global1.b)) << (u_input.b.yxz % vec3<u32>(32u))), global0[_wgslsmith_index_u32(17472u, 18u)]), global1.d);
    global2 = Struct_1(global1.d.d.x, global3.x);
    let var_0 = Struct_2(global1.d.a, global1.d.b, vec4<bool>(~(3202u ^ u_input.b.x) > global2.b, false, true, all(!vec4<bool>(global1.d.d.x, global2.a, global1.d.d.x, global1.d.c.x))), global1.d.c);
    var var_1 = Struct_3(_wgslsmith_f_op_f32(min(arg_0, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(465f, _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(global1.a)))))))), min(-2147483647i, -1i) << ((global3.x & _wgslsmith_clamp_u32(6087u, 1u, ~global3.x)) % 32u), -(global1.b << (~global3.x % 32u)), var_0);
    var var_2 = vec3<f32>(global1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1270f + 284f) - _wgslsmith_f_op_f32(var_1.a + 609f)))), _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -357f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) - _wgslsmith_f_op_f32(global1.a - 2331f)), all(vec4<bool>(global2.a, true, false, var_0.c.x))))));
    return true;
}

fn func_1(arg_0: u32) -> vec2<u32> {
    var var_0 = !vec2<bool>(!func_2(_wgslsmith_f_op_f32(global1.a - global1.a)), !global2.a);
    let var_1 = abs(_wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-37192i, 0i, u_input.d, -2147483647i), vec4<i32>(26167i, 89264i, u_input.d, u_input.d), vec4<i32>(-1i, u_input.d, u_input.d, u_input.d)), select(vec4<i32>(u_input.d, u_input.d, -15692i, -2884i), vec4<i32>(-1i, 0i, global1.b, 2147483647i), vec4<bool>(false, global2.a, var_0.x, global2.a))), -16726i, ~7082i << (countOneBits(0u) % 32u)), global0[_wgslsmith_index_u32(arg_0, 18u)]));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-250f)))) - global1.a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1.a))), global1.a));
    global0 = array<vec3<i32>, 18>();
    var_0 = !select(vec2<bool>(true, true), !(!select(vec2<bool>(global2.a, true), global1.d.c.xw, global1.d.b)), select(!(!vec2<bool>(true, global1.d.c.x)), select(vec2<bool>(global2.a, var_0.x), !vec2<bool>(global2.a, true), !global1.d.b), func_2(_wgslsmith_f_op_f32(-global1.a))));
    return vec2<u32>(10287u, min(countOneBits(global2.b ^ 65003u), global2.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = Struct_1(select(any(vec4<bool>(global1.d.c.x, var_0, global1.d.c.x, var_0)), select(false, global2.a, false) | any(vec3<bool>(var_0, global1.d.d.x, global1.d.c.x)), !(15251i <= u_input.d)) && global2.a, ~_wgslsmith_sub_u32(7001u, global2.b ^ ~31653u));
    global3 = ~(u_input.c & func_1(u_input.a));
    let var_2 = 325f;
    let var_3 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1221f, global1.a)), _wgslsmith_f_op_f32(sign(-1000f))), min(~1i, u_input.d), u_input.d, global1.d);
    let var_4 = !all(!global1.d.b);
    global1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1092f) - _wgslsmith_f_op_f32(global1.a * 935f)))), -_wgslsmith_add_i32(-(~global1.b), reverseBits(_wgslsmith_sub_i32(u_input.d, u_input.d))), _wgslsmith_dot_vec2_i32(global1.d.a, vec2<i32>(_wgslsmith_clamp_i32(global1.d.a.x, global1.b, u_input.d), u_input.d)), var_3.d);
    var var_5 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(661f)))), _wgslsmith_sub_i32(abs(22175i), -29543i), 2147483647i, Struct_2(vec2<i32>(_wgslsmith_add_i32(u_input.d, var_3.c) & u_input.d, abs(u_input.d) | func_3(var_3, 2147483647i)), select(vec2<bool>(func_2(var_3.a), any(global1.d.d)), !select(vec2<bool>(true, true), vec2<bool>(var_3.d.d.x, var_1.a), true), true), !var_3.d.d, !vec4<bool>(true, var_0, all(vec2<bool>(false, global2.a)), false)));
    let var_6 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_6.b, _wgslsmith_mult_u32(0u, global2.b), global3.x, _wgslsmith_dot_vec3_u32(u_input.b.zxx, u_input.b.zxw)), u_input.b));
}

