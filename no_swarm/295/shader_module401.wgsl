struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: i32,
    c: Struct_1,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: vec2<i32>,
}

struct Struct_5 {
    a: u32,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(85408u, 28534u), Struct_1(1u, 1u), Struct_1(19495u, 1u), Struct_1(4294967295u, 1u), Struct_1(4294967295u, 17801u), Struct_1(0u, 0u), Struct_1(40115u, 15980u), Struct_1(0u, 1u), Struct_1(1u, 4294967295u), Struct_1(0u, 8465u), Struct_1(4294967295u, 1u), Struct_1(4294967295u, 58256u), Struct_1(23731u, 1u), Struct_1(6176u, 7900u), Struct_1(4592u, 9165u), Struct_1(33677u, 10176u), Struct_1(35660u, 0u), Struct_1(6213u, 0u), Struct_1(38585u, 0u), Struct_1(1u, 57590u), Struct_1(1u, 1u), Struct_1(4294967295u, 4294967295u), Struct_1(4294967295u, 0u), Struct_1(4294967295u, 1u), Struct_1(15050u, 40655u), Struct_1(1u, 0u), Struct_1(1u, 1u));

var<private> global1: vec4<bool> = vec4<bool>(false, false, true, true);

var<private> global2: vec2<f32> = vec2<f32>(-1455f, 1107f);

var<private> global3: array<f32, 16> = array<f32, 16>(-1653f, 896f, -168f, -177f, 546f, -519f, -153f, 738f, 397f, 928f, -276f, 224f, -1098f, -447f, 2148f, -733f);

var<private> global4: Struct_2 = Struct_2(vec3<bool>(false, true, false), 2147483647i, Struct_1(4294967295u, 4294967295u), false, Struct_1(4294967295u, 170157u));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_2(arg_0: i32) -> f32 {
    global4 = Struct_2(vec3<bool>(global1.x, global1.x, (global4.b >= global4.b) != false), _wgslsmith_clamp_i32(firstLeadingBit(-2147483647i), -2313i, _wgslsmith_add_i32(13670i, -global4.b)), global0[_wgslsmith_index_u32(1u, 27u)], true, Struct_1(~global4.e.b, _wgslsmith_add_u32(0u >> (_wgslsmith_add_u32(774u, global4.c.a) % 32u), global4.c.a)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, 0u | abs(global4.e.b)), 16u)] - global2.x));
}

fn func_3() -> vec3<bool> {
    global1 = !vec4<bool>(!all(global4.a), !(!(!global4.d)), select(_wgslsmith_div_i32(20673i, global4.b) >= min(-1i, u_input.a.x), false, any(vec4<bool>(true, global4.d, false, true)) | all(global4.a.yz)), !(!(global4.b == u_input.b.x)));
    let var_0 = Struct_2(global1.yzx, -reverseBits(1i) ^ _wgslsmith_mult_i32(max(abs(0i), _wgslsmith_mod_i32(-15720i, u_input.b.x)), global4.b), Struct_1(_wgslsmith_mult_u32(8987u, ~global4.e.a), 1u), global4.d, Struct_1(_wgslsmith_div_u32(~(global4.c.b | global4.e.b), ~_wgslsmith_dot_vec2_u32(vec2<u32>(global4.c.a, global4.e.a), vec2<u32>(global4.e.a, global4.c.a))), 0u));
    let var_1 = !select(select(select(!vec4<bool>(global1.x, global1.x, global1.x, true), vec4<bool>(global1.x, global1.x, false, false), global1.x), select(select(vec4<bool>(false, false, global1.x, global1.x), vec4<bool>(var_0.a.x, true, true, global4.d), true), !vec4<bool>(true, false, var_0.d, true), vec4<bool>(false, true, false, false)), vec4<bool>(false, true, any(vec2<bool>(global1.x, true)), global4.d)), !(!(!vec4<bool>(false, global1.x, false, global4.d))), !select(vec4<bool>(true, global4.a.x, false, false), !vec4<bool>(false, false, global4.d, global1.x), true));
    global4 = Struct_2(select(!(!(!vec3<bool>(global4.d, false, true))), var_1.zzz, select(select(!vec3<bool>(var_1.x, false, var_1.x), select(global1.zzw, vec3<bool>(var_1.x, var_0.a.x, var_0.d), var_0.d), var_1.x), vec3<bool>(any(var_1), !var_1.x, true), select(select(vec3<bool>(global1.x, false, true), var_1.yzw, global4.d), !vec3<bool>(var_1.x, true, false), var_0.e.b < 13371u))), _wgslsmith_dot_vec2_i32(u_input.b, ~(~_wgslsmith_mult_vec2_i32(u_input.b, u_input.b))), Struct_1(17660u, 1u), true, Struct_1(abs(_wgslsmith_add_u32(~86524u, ~global4.c.b)), var_0.c.b << (3439u % 32u)));
    global4 = var_0;
    return select(select(select(global1.xwx, vec3<bool>(true, true, true), select(global1.xzx, vec3<bool>(var_0.a.x, global1.x, false), global4.d)), !global1.wyx, true), !vec3<bool>(true, !(-2147483647i <= u_input.a.x), !any(var_0.a)), !select(vec3<bool>(!var_0.d, var_0.a.x, false), var_0.a, var_1.x));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_2) -> i32 {
    return -1i;
}

fn func_1() -> Struct_4 {
    global2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(513f, 2082f)))))));
    global2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, -1114f))))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) + _wgslsmith_f_op_f32(round(-1000f))), global3[_wgslsmith_index_u32(~11690u, 16u)]) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-601f, _wgslsmith_f_op_f32(func_2(u_input.b.x))))));
    var var_0 = firstTrailingBit(-min(i32(-1i) * -1i, (i32(-1i) * -7001i) & _wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.b.x, u_input.a.x), vec3<i32>(31577i, global4.b, -35650i))));
    global4 = Struct_2(global1.zzy, 1i, global0[_wgslsmith_index_u32(4294967295u, 27u)], func_4(vec2<bool>(false != global1.x, any(vec2<bool>(true, false))), Struct_2(func_3(), global4.b, Struct_1(global4.c.b, 23274u), global1.x, Struct_1(global4.c.b, 0u))) <= _wgslsmith_clamp_i32(global4.b, _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(2147483647i, 32750i, u_input.b.x, u_input.a.x)), firstTrailingBit(vec4<i32>(global4.b, 1i, 2130i, 22630i))), -u_input.a.x), Struct_1(global4.e.a, _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(55041u, global4.e.a), vec2<u32>(955u, global4.e.b)), _wgslsmith_clamp_vec2_u32(vec2<u32>(22787u, 1u), vec2<u32>(1u, global4.e.a), vec2<u32>(0u, 1u))) << (~global4.c.a % 32u)));
    global4 = Struct_2(global4.a, -1i, Struct_1(_wgslsmith_div_u32(~57221u, global4.c.b), 0u), !all(global1.zyy), Struct_1(10425u, global4.c.b));
    return Struct_4(global4.c, Struct_2(vec3<bool>(global1.x, true, !(global4.d && false)), i32(-1i) * -1i, global4.e, true, Struct_1(global4.c.b, ~42973u)), _wgslsmith_clamp_vec2_i32(u_input.a, u_input.b, u_input.b) >> (abs(_wgslsmith_clamp_vec2_u32(~vec2<u32>(22588u, global4.c.a), ~vec2<u32>(global4.c.b, 17490u), vec2<u32>(4294967295u, 692u))) % vec2<u32>(32u)));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_4, arg_2: vec4<u32>) -> bool {
    let var_0 = -select(firstTrailingBit(_wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_1.c.x, 0i, arg_1.c.x), vec3<i32>(0i, -31351i, 2147483647i)), vec3<i32>(-1i, 9815i, u_input.a.x) << (vec3<u32>(global4.e.a, 56247u, arg_2.x) % vec3<u32>(32u)))), _wgslsmith_sub_vec3_i32(vec3<i32>(i32(-1i) * -56196i, -58031i, abs(2147483647i)), firstTrailingBit(vec3<i32>(u_input.b.x, 2147483647i, global4.b) & vec3<i32>(u_input.a.x, -26691i, -1i))), true);
    let var_1 = Struct_2(!vec3<bool>(true, !(arg_2.x < arg_1.a.b), true), _wgslsmith_mod_i32(~min(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, u_input.b.x, -2147483647i, global4.b), vec4<i32>(-21572i, var_0.x, -2147483647i, 26390i)), ~global4.b), ~var_0.x), Struct_1(_wgslsmith_sub_u32(0u, _wgslsmith_mod_u32(_wgslsmith_div_u32(0u, 4294967295u), func_1().b.e.a)), 1u >> (arg_1.b.e.b % 32u)), global4.d, global4.e);
    let var_2 = arg_1;
    global2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(global3[_wgslsmith_index_u32(~(arg_1.a.b ^ ~4294967295u), 16u)], global2.x) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-263f, global2.x), vec2<f32>(global3[_wgslsmith_index_u32(30410u, 16u)], 452f), true)) - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(global2.x, 572f), vec2<f32>(global2.x, -208f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3[_wgslsmith_index_u32(4294967295u, 16u)], global3[_wgslsmith_index_u32(var_2.a.a, 16u)])), _wgslsmith_div_vec2_f32(vec2<f32>(global3[_wgslsmith_index_u32(arg_2.x, 16u)], global3[_wgslsmith_index_u32(0u, 16u)]), vec2<f32>(global2.x, global3[_wgslsmith_index_u32(17472u, 16u)]))))))));
    let var_3 = Struct_5(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(~0u, 1u), _wgslsmith_add_u32(abs(arg_1.b.c.b), ~arg_1.a.a)), vec2<u32>(global4.c.a, ~abs(1u))), vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global2.x, -1000f)) - _wgslsmith_f_op_f32(f32(-1f) * -1103f)) >= global2.x, !arg_1.b.a.x, var_2.b.d));
    return func_1().b.d;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec4<bool>(true, global4.b <= global4.b, true, select(true, false, !select(true, global4.c.a < global4.c.b, select(true, global1.x, true))));
    global4 = Struct_2(vec3<bool>(!func_5(Struct_3(false), func_1(), reverseBits(vec4<u32>(global4.e.b, global4.c.a, global4.c.a, 28333u))), any(vec2<bool>(all(vec2<bool>(global4.d, true)), true)), global1.x), _wgslsmith_mult_i32(_wgslsmith_mod_i32(global4.b, u_input.b.x), 28069i), global4.c, global1.x, func_1().a);
    let var_0 = Struct_3(global3[_wgslsmith_index_u32(4294967295u, 16u)] <= _wgslsmith_f_op_f32(f32(-1f) * -632f));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(4294967295u, 16u)]), _wgslsmith_f_op_f32(max(global2.x, global3[_wgslsmith_index_u32(54496u, 16u)]))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(215f, global2.x, global4.a.x)))), -633f, _wgslsmith_f_op_f32(func_2(firstLeadingBit(1515i)))), vec4<f32>(-980f, _wgslsmith_f_op_f32(-global2.x), global2.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(global4.c.b, 16u)]), _wgslsmith_f_op_f32(ceil(global3[_wgslsmith_index_u32(global4.e.a, 16u)]))))))));
    var var_2 = min(_wgslsmith_sub_vec2_u32(vec2<u32>(~(~20875u), global4.e.b), min(vec2<u32>(4294967295u, ~global4.c.b), _wgslsmith_mod_vec2_u32(vec2<u32>(global4.c.b, global4.e.a), firstTrailingBit(vec2<u32>(global4.e.a, global4.e.b))))), vec2<u32>(56582u, global4.c.a));
    global1 = !(!(!vec4<bool>(!global1.x, !var_0.a, false, true)));
    global1 = !vec4<bool>(func_3().x, all(vec2<bool>(false, var_1.x >= -1884f)), ((var_0.a || global1.x) & true) | any(!vec4<bool>(false, false, true, global4.d)), _wgslsmith_dot_vec4_i32(min(vec4<i32>(-2147483647i, u_input.b.x, 1i, u_input.b.x), vec4<i32>(10408i, 2147483647i, -2628i, -1i)), firstTrailingBit(vec4<i32>(1i, global4.b, u_input.b.x, 16032i))) <= ((7753i >> (global4.c.a % 32u)) & ~u_input.b.x));
    let var_3 = global4.a.xz;
    var var_4 = Struct_3(!global1.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1137f + global3[_wgslsmith_index_u32(var_2.x, 16u)])), 1321f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(global4.c.b, 16u)] + global2.x))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.x, _wgslsmith_f_op_f32(global2.x + global2.x)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global3[_wgslsmith_index_u32(1u, 16u)], -701f), _wgslsmith_f_op_vec2_f32(var_1.ww + var_1.ww), false)), !(!vec2<bool>(global4.a.x, false))))), firstLeadingBit(vec4<i32>(global4.b, 1i, u_input.b.x, -(i32(-1i) * -1i))));
}

