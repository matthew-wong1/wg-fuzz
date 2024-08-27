struct Struct_1 {
    a: i32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec2<f32>,
    c: vec2<bool>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 19>;

var<private> global1: array<Struct_4, 10>;

var<private> global2: array<u32, 8>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_4, arg_1: vec3<bool>) -> bool {
    let var_0 = select(vec3<bool>(arg_0.a.x, arg_0.a.x, !arg_0.a.x), vec3<bool>(~(u_input.a.x ^ 0i) <= _wgslsmith_mult_i32(-2147483647i, u_input.d), arg_1.x, all(select(vec2<bool>(false, arg_1.x), vec2<bool>(arg_0.a.x, false), vec2<bool>(arg_0.a.x, true))) | !(arg_1.x & false)), arg_0.a.zzx);
    global0 = array<vec4<f32>, 19>();
    global0 = array<vec4<f32>, 19>();
    let var_1 = u_input.c.x;
    return any(vec4<bool>(true, true, false, false));
}

fn func_2(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: vec4<bool>) -> vec3<u32> {
    global2 = array<u32, 8>();
    var var_0 = Struct_2(false);
    global1 = array<Struct_4, 10>();
    let var_1 = Struct_4(select(vec4<bool>(func_3(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_0.a.x, 38944u), 10u)], select(vec3<bool>(false, false, var_0.a), vec3<bool>(arg_2.x, arg_0.c.x, true), vec3<bool>(true, false, false))), arg_2.x, (arg_0.b.x > arg_0.b.x) || (1i == u_input.d), select(any(arg_2.zxy), var_0.a, any(vec2<bool>(true, false)))), arg_2, !select(arg_2, select(vec4<bool>(true, false, arg_0.c.x, true), vec4<bool>(false, true, arg_2.x, false), vec4<bool>(true, arg_2.x, arg_0.c.x, arg_2.x)), arg_2)), 1232f);
    let var_2 = _wgslsmith_f_op_f32(-1f);
    return arg_1;
}

fn func_4(arg_0: vec3<u32>, arg_1: i32, arg_2: vec4<bool>) -> bool {
    let var_0 = ~abs(~global2[_wgslsmith_index_u32(firstTrailingBit(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_0.x, 8u)], 8u)], 8u)]) ^ 1u, 8u)]);
    global2 = array<u32, 8>();
    var var_1 = Struct_3(~(vec4<u32>(var_0, 92667u, 1u, firstLeadingBit(4294967295u)) >> ((abs(vec4<u32>(global2[_wgslsmith_index_u32(1u, 8u)], 39492u, var_0, 0u)) & abs(vec4<u32>(arg_0.x, 4294967295u, 37761u, 18286u))) % vec4<u32>(32u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-954f, 1552f), vec2<f32>(258f, 397f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(575f, 872f))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1055f, 1064f) + vec2<f32>(-287f, 663f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2052f, 549f))))))), select(select(vec2<bool>(select(true, arg_2.x, arg_2.x), arg_2.x), arg_2.xx, arg_2.yw), select(select(select(vec2<bool>(true, arg_2.x), vec2<bool>(true, arg_2.x), arg_2.xx), vec2<bool>(arg_2.x, true), select(vec2<bool>(arg_2.x, false), vec2<bool>(false, true), arg_2.yy)), select(arg_2.wz, !arg_2.xw, arg_2.wy), arg_2.xw), false));
    global1 = array<Struct_4, 10>();
    let var_2 = arg_0.zy;
    return any(arg_2.wx);
}

fn func_1() -> Struct_3 {
    var var_0 = func_4(abs(func_2(Struct_3(~vec4<u32>(57159u, 18753u, 45949u, 0u), vec2<f32>(-2338f, 1000f), vec2<bool>(true, true)), reverseBits(~vec3<u32>(112396u, 1u, 4294967295u)), vec4<bool>(true, all(vec2<bool>(false, false)), true, true))), countOneBits(_wgslsmith_div_i32(1i, ~u_input.b)), select(vec4<bool>(2147483647i <= -u_input.a.x, true, false, false), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, func_3(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(2456u, 8u)], 36363u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 8u)], 8u)], 8u)], 8u)]), vec3<u32>(global2[_wgslsmith_index_u32(14979u, 8u)], 35824u, 1u)), 8u)], 10u)], select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true))))));
    global2 = array<u32, 8>();
    var var_1 = global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(~countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(74673u, global2[_wgslsmith_index_u32(93428u, 8u)]), vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(26090u, 8u)], 8u)], 8u)], global2[_wgslsmith_index_u32(0u, 8u)]))), ~firstLeadingBit(abs(27183u))), 10u)];
    var var_2 = !(!((false | any(vec2<bool>(var_1.a.x, var_1.a.x))) & (var_1.b <= _wgslsmith_f_op_f32(var_1.b - -1080f))));
    var var_3 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~abs(global2[_wgslsmith_index_u32(~1u, 8u)]), ~abs(global2[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(27997u, 8u)], 8u)], 1u, 25941u), 8u)])), 10u)];
    return Struct_3(_wgslsmith_div_vec4_u32(~vec4<u32>(min(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(39044u, 8u)], 8u)], 8u)], 1u), 0u, countOneBits(12794u), global2[_wgslsmith_index_u32(min(39253u, 0u), 8u)]), _wgslsmith_add_vec4_u32(reverseBits(max(vec4<u32>(global2[_wgslsmith_index_u32(0u, 8u)], global2[_wgslsmith_index_u32(0u, 8u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(20220u, 8u)], 8u)], global2[_wgslsmith_index_u32(1u, 8u)]), vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 8u)], 8u)], 8u)], 8u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(96617u, 8u)], 8u)], 8u)], global2[_wgslsmith_index_u32(0u, 8u)], global2[_wgslsmith_index_u32(1u, 8u)]))), firstTrailingBit(~vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 8u)], 8u)], 8u)], 8u)], 8u)], 4294967295u, 27665u, global2[_wgslsmith_index_u32(4294967295u, 8u)])))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-963f, var_1.b))), vec2<f32>(var_3.b, -592f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1165f, var_1.b)))))), select(!(!vec2<bool>(var_3.a.x, false)), select(vec2<bool>(true, all(var_3.a.www)), var_1.a.yx, var_3.a.x), var_1.a.xw));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(1867f, _wgslsmith_f_op_f32(select(var_0.b.x, var_0.b.x, var_0.c.x)), -34886i == u_input.a.x)))), var_0.b.x, _wgslsmith_f_op_f32(floor(var_0.b.x)), func_1().b.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(~1u, 19u)]) + _wgslsmith_f_op_vec4_f32(round(global0[_wgslsmith_index_u32(7563u, 19u)]))) * global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(func_1().a.x, 8u)], 8u)], 19u)])));
    global0 = array<vec4<f32>, 19>();
    global2 = array<u32, 8>();
    var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(1685f, -1070f, -1000f, _wgslsmith_f_op_f32(-var_1.x)));
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(var_0.a.x, 19u)]) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(exp2(global0[_wgslsmith_index_u32(31365u, 19u)])), global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~0u, 8u)], 19u)]))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.b.x, 387f, 1182f, var_1.x), vec4<f32>(var_1.x, 842f, var_1.x, var_0.b.x), vec4<bool>(true, var_0.c.x, var_0.c.x, true)))), _wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(var_0.a.x & var_0.a.x, 19u)] - _wgslsmith_f_op_vec4_f32(vec4<f32>(738f, var_1.x, -1173f, 1091f) * global0[_wgslsmith_index_u32(25344u, 19u)]))))));
    var var_2 = true;
    let var_3 = Struct_4(select(select(vec4<bool>(var_0.c.x, false, var_0.c.x, func_3(Struct_4(vec4<bool>(true, false, var_0.c.x, var_0.c.x), 576f), vec3<bool>(var_0.c.x, false, var_0.c.x))), !select(vec4<bool>(var_0.c.x, false, var_0.c.x, false), vec4<bool>(false, var_0.c.x, var_0.c.x, var_0.c.x), false), select(vec4<bool>(false, var_0.c.x, var_0.c.x, var_0.c.x), vec4<bool>(false, false, true, true), select(vec4<bool>(var_0.c.x, var_0.c.x, true, true), vec4<bool>(true, var_0.c.x, var_0.c.x, var_0.c.x), true))), select(vec4<bool>(all(vec4<bool>(false, false, true, true)), global2[_wgslsmith_index_u32(16805u, 8u)] < 0u, true, var_0.c.x), !select(vec4<bool>(true, var_0.c.x, false, var_0.c.x), vec4<bool>(var_0.c.x, var_0.c.x, true, true), vec4<bool>(false, var_0.c.x, var_0.c.x, var_0.c.x)), true), vec4<bool>(false, false, ~u_input.d == -u_input.d, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1().b.x * _wgslsmith_f_op_f32(-var_0.b.x))));
    var_1 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -561f), var_0.b.x, _wgslsmith_f_op_f32(var_3.b + var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + func_1().b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(~vec3<u32>(39653u, global2[_wgslsmith_index_u32(46939u, 8u)], 4294967295u), vec3<u32>(74374u, 22131u, 45963u), var_0.a.zxy), ~_wgslsmith_add_vec3_u32(var_0.a.zww, var_0.a.zxz)), ~min(_wgslsmith_add_vec3_u32(var_0.a.zxx, vec3<u32>(52928u, 4294967295u, 4294967295u)), func_1().a.zxz)), (-u_input.c << (_wgslsmith_div_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 8u)], 8u)], 26495u, 661u, global2[_wgslsmith_index_u32(var_0.a.x, 8u)]), _wgslsmith_mod_vec4_u32(var_0.a, vec4<u32>(var_0.a.x, 1u, 14454u, 4294967295u))) % vec4<u32>(32u))) >> (var_0.a % vec4<u32>(32u)));
}

