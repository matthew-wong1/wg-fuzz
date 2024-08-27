struct Struct_1 {
    a: bool,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec3<bool>,
    d: Struct_1,
    e: vec2<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<u32>,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<f32>,
    d: vec3<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 16>;

var<private> global1: array<vec2<f32>, 20> = array<vec2<f32>, 20>(vec2<f32>(-888f, 2842f), vec2<f32>(-103f, 1000f), vec2<f32>(301f, 720f), vec2<f32>(774f, -1040f), vec2<f32>(-481f, -217f), vec2<f32>(362f, 1382f), vec2<f32>(1369f, 438f), vec2<f32>(-1000f, -317f), vec2<f32>(837f, 696f), vec2<f32>(-383f, 1334f), vec2<f32>(-330f, 1094f), vec2<f32>(775f, 1060f), vec2<f32>(-558f, -726f), vec2<f32>(712f, 2665f), vec2<f32>(1331f, -955f), vec2<f32>(-269f, 1573f), vec2<f32>(821f, 603f), vec2<f32>(-910f, -875f), vec2<f32>(543f, 131f), vec2<f32>(-504f, -1568f));

var<private> global2: f32 = -1000f;

var<private> global3: u32 = 0u;

var<private> global4: array<u32, 23>;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: u32, arg_1: vec3<f32>) -> u32 {
    global4 = array<u32, 23>();
    let var_0 = false;
    var var_1 = 1f;
    global0 = array<f32, 16>();
    var var_2 = u_input.b;
    return global4[_wgslsmith_index_u32(var_2.x, 23u)];
}

fn func_1(arg_0: u32, arg_1: vec3<bool>) -> vec2<i32> {
    global0 = array<f32, 16>();
    var var_0 = vec4<u32>(u_input.c.x, ~arg_0, _wgslsmith_dot_vec2_u32(u_input.c.xz, u_input.c.xx), min(0u, _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.c.x, 23u)], 23u)], 1u)), vec2<u32>(arg_0, arg_0)), global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(30303u, 23u)], 23u)])));
    global3 = 1u;
    var var_1 = !vec2<bool>(all(vec3<bool>(!arg_1.x, true, all(arg_1))), arg_1.x);
    let var_2 = Struct_2(global1[_wgslsmith_index_u32(~(global4[_wgslsmith_index_u32(var_0.x, 23u)] << (func_2(~81700u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(414f, global0[_wgslsmith_index_u32(45928u, 16u)], -632f))) % 32u)), 20u)], Struct_1(arg_1.x, abs(abs(~u_input.b))));
    return _wgslsmith_mult_vec2_i32(vec2<i32>(43607i, 1i), firstLeadingBit(vec2<i32>(u_input.a.x, ~(i32(-1i) * -41101i))));
}

fn func_3(arg_0: Struct_5, arg_1: u32, arg_2: u32, arg_3: vec2<i32>) -> bool {
    let var_0 = select(select(!vec2<bool>(arg_0.a.a.b.a | true, select(false, arg_0.b.a, arg_0.b.a)), !select(select(vec2<bool>(true, false), vec2<bool>(arg_0.a.a.b.a, arg_0.a.a.b.a), vec2<bool>(arg_0.a.a.b.a, arg_0.a.a.b.a)), select(vec2<bool>(false, true), vec2<bool>(arg_0.a.a.b.a, false), arg_0.b.a), vec2<bool>(arg_0.b.a, true)), arg_0.a.a.b.a), select(vec2<bool>(arg_0.b.a, -arg_3.x > -arg_3.x), select(!vec2<bool>(arg_0.b.a, false), vec2<bool>(true, false), false), true), !(!vec2<bool>(true, global4[_wgslsmith_index_u32(0u, 23u)] >= u_input.c.x)));
    global0 = array<f32, 16>();
    global4 = array<u32, 23>();
    global0 = array<f32, 16>();
    let var_1 = true;
    return var_1;
}

fn func_4(arg_0: bool, arg_1: vec3<bool>, arg_2: bool, arg_3: vec2<f32>) -> Struct_4 {
    let var_0 = min(abs(~vec4<i32>(u_input.a.x, -6871i, -u_input.a.x, ~12696i)), _wgslsmith_add_vec4_i32(countOneBits(vec4<i32>(-u_input.a.x, abs(u_input.a.x), 0i, u_input.a.x << (global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 23u)], 23u)], 23u)] % 32u))), _wgslsmith_div_vec4_i32(vec4<i32>(58238i, reverseBits(-2147483647i), ~1i, abs(u_input.a.x)), ~vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))));
    let var_1 = arg_1.zz;
    var var_2 = -u_input.a.x;
    global2 = arg_3.x;
    return Struct_4(Struct_2(arg_3, Struct_1(arg_0, abs(abs(u_input.b)))), u_input.c);
}

fn func_5(arg_0: Struct_4, arg_1: Struct_3, arg_2: Struct_1) -> vec4<bool> {
    var var_0 = -38692i << (~(~global4[_wgslsmith_index_u32(reverseBits(~4294967295u), 23u)]) % 32u);
    let var_1 = max(vec4<i32>(func_1(firstLeadingBit(23397u) << (arg_2.b.x % 32u), arg_1.c).x, -51132i, 0i, abs(select(~arg_1.e.x, arg_1.e.x, arg_2.a))), vec4<i32>(i32(-1i) * -2147483647i, _wgslsmith_add_i32(_wgslsmith_sub_i32(arg_1.e.x, -u_input.a.x), func_1(1u, select(arg_1.c, vec3<bool>(true, true, arg_1.c.x), true)).x), 1i, u_input.a.x));
    let var_2 = select(vec3<u32>(~u_input.d.x >> (global4[_wgslsmith_index_u32(0u, 23u)] % 32u), arg_2.b.x, ~(~(~arg_2.b.x))), select(vec3<u32>(_wgslsmith_sub_u32(4281u << (u_input.d.x % 32u), ~56642u), _wgslsmith_div_u32(68835u, ~1u), 9978u >> (_wgslsmith_mult_u32(1u, global4[_wgslsmith_index_u32(arg_2.b.x, 23u)]) % 32u)), countOneBits(vec3<u32>(4294967295u, arg_1.d.b.x, 43503u)) & u_input.c, !arg_1.c), !arg_1.c);
    return vec4<bool>(!((all(vec3<bool>(arg_0.a.b.a, false, false)) | !arg_2.a) != false), arg_2.a, arg_2.a | arg_2.a, any(vec4<bool>(all(vec3<bool>(false, arg_0.a.b.a, arg_1.c.x)), any(vec2<bool>(true, true)), select(false, true, false), arg_2.a || arg_1.b.a)) && arg_0.a.b.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_4(!func_3(Struct_5(Struct_4(Struct_2(global1[_wgslsmith_index_u32(0u, 20u)], Struct_1(false, vec4<u32>(34322u, 85907u, 54553u, global4[_wgslsmith_index_u32(50859u, 23u)]))), u_input.b.xxw), Struct_1(true, u_input.b), 65548u), firstLeadingBit(1u), ~2503u, func_1(u_input.d.x, vec3<bool>(false, true, false))), vec3<bool>(any(vec4<bool>(false, false, true, false)), u_input.c.x <= u_input.d.x, all(vec2<bool>(true, true))), !any(vec2<bool>(true, true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(84680u, 23u)], 20u)] - global1[_wgslsmith_index_u32(0u, 20u)]), _wgslsmith_div_vec2_f32(global1[_wgslsmith_index_u32(77142u, 20u)], vec2<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 16u)], global0[_wgslsmith_index_u32(u_input.b.x, 16u)])))))), Struct_3(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(307f, _wgslsmith_f_op_f32(round(-1249f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(30655u, 20u)])), true)), func_4(!any(vec3<bool>(false, false, false)), vec3<bool>(true, true, true), true, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(global4[_wgslsmith_index_u32(u_input.b.x, 23u)], 33249u, global4[_wgslsmith_index_u32(u_input.c.x, 23u)], global4[_wgslsmith_index_u32(u_input.b.x, 23u)]), vec4<u32>(1u, 4294967295u, 37095u, global4[_wgslsmith_index_u32(u_input.b.x, 23u)])), 20u)]).a.b, !select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, true)), Struct_1(any(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), true)), vec4<u32>(abs(40303u), _wgslsmith_div_u32(u_input.d.x, 0u), func_2(global4[_wgslsmith_index_u32(1u, 23u)], vec3<f32>(-373f, -3523f, global0[_wgslsmith_index_u32(0u, 16u)])), _wgslsmith_div_u32(0u, global4[_wgslsmith_index_u32(u_input.c.x, 23u)]))), _wgslsmith_mult_vec2_i32(~(u_input.a << (vec2<u32>(10708u, 65201u) % vec2<u32>(32u))), vec2<i32>(-2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 0i), vec2<i32>(-12683i, u_input.a.x))))), Struct_1(func_3(Struct_5(Struct_4(Struct_2(vec2<f32>(global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.b.x, 23u)], 16u)], global0[_wgslsmith_index_u32(70731u, 16u)]), Struct_1(true, vec4<u32>(0u, 54584u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 23u)], 23u)], 23u)], global4[_wgslsmith_index_u32(u_input.b.x, 23u)]))), u_input.c), func_4(false, vec3<bool>(true, false, true), true, global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 23u)], 20u)]).a.b, ~13962u), u_input.c.x, u_input.c.x | _wgslsmith_dot_vec2_u32(vec2<u32>(36125u, 66110u), u_input.d), u_input.a), ~select(vec4<u32>(global4[_wgslsmith_index_u32(16238u, 23u)], global4[_wgslsmith_index_u32(4294967295u, 23u)], u_input.b.x, 4294967295u), vec4<u32>(u_input.c.x, 9031u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(127189u, 23u)], 23u)], u_input.c.x), vec4<bool>(true, false, true, false)) ^ ~firstLeadingBit(u_input.b)));
    global0 = array<f32, 16>();
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.d.x, 16u)]), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(48147u, 16u)]), true))) <= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(1617f, -884f, var_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1553f - global0[_wgslsmith_index_u32(0u, 16u)])))), u_input.b);
    let var_2 = _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 12224u), ~max(~u_input.c.zx, vec2<u32>(1u, 112501u))) << (~func_4(var_0.x | any(var_0.wyz), var_0.zxz, true, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-573f, -685f)))))).a.b.b.x % 32u);
    global0 = array<f32, 16>();
    global0 = array<f32, 16>();
    let var_3 = Struct_3(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(firstLeadingBit(u_input.c << (min(u_input.b.www, vec3<u32>(0u, 4294967295u, global4[_wgslsmith_index_u32(0u, 23u)])) % vec3<u32>(32u))), var_1.b.yyx), 20u)], func_4(any(!vec3<bool>(var_0.x, true, true)), vec3<bool>(any(vec2<bool>(var_1.a, var_0.x)), var_1.a, var_0.x), func_3(Struct_5(func_4(var_0.x, vec3<bool>(true, false, true), false, global1[_wgslsmith_index_u32(1u, 20u)]), func_4(var_0.x, var_0.xwz, var_0.x, vec2<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 16u)], global0[_wgslsmith_index_u32(62126u, 16u)])).a.b, _wgslsmith_mod_u32(global4[_wgslsmith_index_u32(76681u, 23u)], global4[_wgslsmith_index_u32(8587u, 23u)])), 53358u, _wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(var_1.b.x, 120806u, 22168u, 10953u)), vec2<i32>(1i, u_input.a.x) | vec2<i32>(u_input.a.x, 2147483647i)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1523f, global0[_wgslsmith_index_u32(~77311u, 16u)]))).a.b, !var_0.yzw, var_1, -vec2<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(873i, u_input.a.x, -29371i), vec3<i32>(u_input.a.x, u_input.a.x, 38047i)), 72937i));
    global4 = array<u32, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(~(~firstLeadingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, var_3.e.x, u_input.a.x), vec4<i32>(var_3.e.x, 32485i, -2147483647i, var_3.e.x)))), 39047u ^ ~(~_wgslsmith_dot_vec2_u32(u_input.c.zy, vec2<u32>(u_input.d.x, 0u))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global1[_wgslsmith_index_u32(var_3.b.b.x, 20u)] + vec2<f32>(-257f, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(global4[_wgslsmith_index_u32(29471u, 23u)], var_3.d.b.x), 16u)])), vec2<f32>(-1099f, var_3.a.x)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1000f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u | var_2, 16u)] + _wgslsmith_f_op_f32(2251f * global0[_wgslsmith_index_u32(var_3.d.b.x, 16u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1437f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(3011u, 16u)]), global0[_wgslsmith_index_u32(var_1.b.x, 16u)], _wgslsmith_f_op_f32(sign(var_3.a.x)))))), global4[_wgslsmith_index_u32(~global4[_wgslsmith_index_u32(~(~(~var_2)), 23u)], 23u)]);
}

