struct Struct_1 {
    a: bool,
    b: u32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec4<i32>,
    d: vec4<u32>,
    e: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: vec4<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(false, 41812u, vec4<i32>(i32(-2147483648), 59851i, 2147483647i, 0i)), false, vec4<i32>(1i, 1i, 11784i, 1i), vec4<u32>(14245u, 139513u, 0u, 4294967295u), -674f);

var<private> global1: array<bool, 14> = array<bool, 14>(false, true, false, false, true, false, true, true, false, false, true, false, false, true);

var<private> global2: bool;

var<private> global3: bool;

var<private> global4: array<vec3<i32>, 16> = array<vec3<i32>, 16>(vec3<i32>(3175i, 0i, 0i), vec3<i32>(-59411i, 0i, 2269i), vec3<i32>(0i, -29611i, 2147483647i), vec3<i32>(-6711i, 73031i, 6573i), vec3<i32>(-34478i, 38290i, i32(-2147483648)), vec3<i32>(-32850i, -11818i, i32(-2147483648)), vec3<i32>(-1i, -25888i, 1i), vec3<i32>(1i, 2147483647i, 1i), vec3<i32>(-41856i, 30218i, 2147483647i), vec3<i32>(i32(-2147483648), 2147483647i, -1i), vec3<i32>(1i, -31680i, i32(-2147483648)), vec3<i32>(2147483647i, 5936i, 2147483647i), vec3<i32>(-19261i, -13191i, -72787i), vec3<i32>(i32(-2147483648), 1832i, -41788i), vec3<i32>(1i, -4258i, 2147483647i), vec3<i32>(0i, 12962i, 2147483647i));

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.e) - _wgslsmith_f_op_f32(global0.e + _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global0.e)), _wgslsmith_f_op_f32(select(-951f, _wgslsmith_f_op_f32(f32(-1f) * -607f), true)))));
    global4 = array<vec3<i32>, 16>();
    let var_1 = arg_1;
    let var_2 = var_0;
    var var_3 = global0.a.b;
    return reverseBits(u_input.a);
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = global0.d.yyy | firstTrailingBit((_wgslsmith_mod_vec3_u32(global0.d.zzy, vec3<u32>(arg_1.b, 1u, 4294967295u)) ^ _wgslsmith_div_vec3_u32(global0.d.wwx, vec3<u32>(45807u, 0u, arg_1.b))) >> (global0.d.ywx % vec3<u32>(32u)));
    let var_1 = Struct_2(arg_1, global0.b, vec4<i32>(i32(-1i) * -(~global0.c.x), global0.c.x, _wgslsmith_sub_i32(func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.e, global0.e, global0.e, global0.e)), global0.a), countOneBits(global0.a.c.x >> (global0.a.b % 32u))), _wgslsmith_add_i32(-arg_0, -2147483647i)), global0.d, -311f);
    let var_2 = select(vec2<bool>(arg_1.c.x <= arg_0, true), vec2<bool>(true, true), true | select(true, ~arg_0 > -global0.a.c.x, !arg_1.a == true));
    global3 = any(!select(!select(vec4<bool>(var_1.a.a, false, true, false), vec4<bool>(false, var_2.x, global1[_wgslsmith_index_u32(60493u, 14u)], false), vec4<bool>(true, arg_1.a, false, false)), select(vec4<bool>(true, global1[_wgslsmith_index_u32(global0.a.b, 14u)], true, false), select(vec4<bool>(global1[_wgslsmith_index_u32(21854u, 14u)], true, true, var_2.x), vec4<bool>(true, global0.a.a, true, false), global0.a.a), !vec4<bool>(var_2.x, var_2.x, true, global0.b)), select(!vec4<bool>(global0.a.a, true, arg_1.a, global1[_wgslsmith_index_u32(var_1.d.x, 14u)]), select(vec4<bool>(global1[_wgslsmith_index_u32(arg_1.b, 14u)], global1[_wgslsmith_index_u32(global0.d.x, 14u)], true, var_1.a.a), vec4<bool>(false, var_2.x, true, arg_1.a), vec4<bool>(arg_1.a, var_1.a.a, var_2.x, arg_1.a)), all(vec3<bool>(var_2.x, arg_1.a, false)))));
    let var_3 = var_1.a;
    return var_3;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> Struct_2 {
    return arg_1;
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: f32, arg_3: f32) -> u32 {
    let var_0 = vec3<bool>(true, func_2(arg_1.c.x, func_2(global0.c.x >> (~0u % 32u), func_4(Struct_1(global0.b, global0.d.x, global0.a.c), Struct_2(Struct_1(arg_1.b, 24751u, arg_1.a.c), arg_1.a.a, vec4<i32>(arg_1.c.x, arg_1.c.x, arg_1.a.c.x, arg_1.a.c.x), vec4<u32>(68796u, arg_1.a.b, global0.a.b, arg_1.d.x), -2009f)).a)).a, true);
    var var_1 = func_4(Struct_1(!global0.a.a, 10214u, vec4<i32>(arg_1.a.c.x, -2147483647i, -(i32(-1i) * -8077i), ~firstLeadingBit(-2147483647i))), Struct_2(func_2(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.a.c.x, u_input.a), ~vec2<i32>(1i, -9944i)), Struct_1(any(vec2<bool>(global0.b, true)), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.d.x, arg_1.d.x, 4294967295u, 58481u), arg_1.d), global0.a.c)), arg_1.a.a, vec4<i32>(~global0.a.c.x, ~reverseBits(u_input.a), arg_1.a.c.x, _wgslsmith_mult_i32(-2147483647i, 1i) | arg_1.c.x), select(arg_1.d, ~min(arg_1.d, global0.d), vec4<bool>(false, !global1[_wgslsmith_index_u32(0u, 14u)], true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) + 1265f))));
    global3 = select(false, true, !arg_1.a.a);
    var var_2 = ~global0.d.x;
    var var_3 = !(!(!func_4(Struct_1(true, arg_1.d.x, arg_1.a.c), Struct_2(Struct_1(false, arg_1.a.b, vec4<i32>(u_input.a, global0.a.c.x, -6515i, 15780i)), false, vec4<i32>(global0.a.c.x, arg_1.a.c.x, global0.c.x, 2147483647i), vec4<u32>(1u, var_1.a.b, var_1.a.b, arg_1.d.x), arg_0.x)).a.a != global0.b));
    return func_2(_wgslsmith_div_i32(var_1.c.x, _wgslsmith_sub_i32(_wgslsmith_div_i32(0i & u_input.a, 1i), func_3(vec4<f32>(-132f, arg_3, 621f, arg_3), Struct_1(false, var_1.a.b, arg_1.a.c)))), func_4(global0.a, Struct_2(func_2(_wgslsmith_div_i32(arg_1.a.c.x, 1i), global0.a), any(var_0), select(arg_1.c, vec4<i32>(0i, arg_1.a.c.x, arg_1.a.c.x, var_1.a.c.x), any(vec4<bool>(arg_1.a.a, global1[_wgslsmith_index_u32(42205u, 14u)], var_1.a.a, var_0.x))), _wgslsmith_div_vec4_u32(~global0.d, reverseBits(arg_1.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(316f))))).a).b;
}

fn func_6(arg_0: u32, arg_1: u32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(exp2(global0.e));
    global0 = func_4(global0.a, Struct_2(Struct_1(!(global0.a.b < 3836u), select(1u, countOneBits(arg_0), global0.b), ~vec4<i32>(global0.c.x, global0.c.x, u_input.a, global0.a.c.x)), !global1[_wgslsmith_index_u32(46794u, 14u)], -global0.a.c, abs(~max(global0.d, global0.d)), _wgslsmith_f_op_f32(select(1164f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.e - -1252f)), false | global0.a.a))));
    let var_1 = func_4(func_4(global0.a, func_4(func_2(u_input.a, func_4(Struct_1(false, arg_1, vec4<i32>(-40648i, -1i, u_input.a, 0i)), Struct_2(Struct_1(false, arg_0, vec4<i32>(0i, -2147483647i, -57159i, -1i)), global1[_wgslsmith_index_u32(46977u, 14u)], vec4<i32>(-21168i, u_input.a, 36741i, 2147483647i), vec4<u32>(4294967295u, 0u, arg_0, arg_0), global0.e)).a), func_4(global0.a, Struct_2(Struct_1(global0.b, 4294967295u, vec4<i32>(global0.c.x, global0.c.x, global0.c.x, u_input.a)), global0.b, global0.a.c, vec4<u32>(66343u, arg_0, 0u, global0.a.b), global0.e)))).a, func_4(global0.a, func_4(func_2(1i, Struct_1(global1[_wgslsmith_index_u32(0u, 14u)], 4294967295u, vec4<i32>(global0.a.c.x, 1i, global0.c.x, -2147483647i))), Struct_2(func_2(2147483647i, Struct_1(global0.b, arg_1, vec4<i32>(50700i, global0.c.x, -46735i, u_input.a))), func_4(Struct_1(false, arg_1, vec4<i32>(19715i, 1i, global0.a.c.x, u_input.a)), Struct_2(Struct_1(global1[_wgslsmith_index_u32(arg_0, 14u)], 4294967295u, vec4<i32>(60860i, global0.c.x, 503i, 0i)), false, global0.c, vec4<u32>(0u, 0u, 11019u, 28363u), -605f)).a.a, -vec4<i32>(global0.a.c.x, -1i, -2147483647i, global0.a.c.x), global0.d, _wgslsmith_f_op_f32(-global0.e)))));
    var var_2 = 806f;
    let var_3 = vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(global0.d.wzw, ~(global0.d.zxz >> (vec3<u32>(arg_1, var_1.a.b, var_1.a.b) % vec3<u32>(32u)))), var_1.a.b), _wgslsmith_div_u32(20914u, _wgslsmith_mod_u32(max(0u, _wgslsmith_dot_vec3_u32(var_1.d.zyz, global0.d.xzx)), global0.a.b)));
    return Struct_2(Struct_1(any(select(select(vec3<bool>(false, global1[_wgslsmith_index_u32(var_3.x, 14u)], false), vec3<bool>(false, global1[_wgslsmith_index_u32(14284u, 14u)], true), vec3<bool>(true, false, global1[_wgslsmith_index_u32(var_1.d.x, 14u)])), select(vec3<bool>(true, global0.a.a, false), vec3<bool>(false, global0.a.a, true), var_1.a.a), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(global0.d, global0.d), 14u)])), 0u, firstTrailingBit(var_1.a.c << (~var_1.d % vec4<u32>(32u)))), ~(-u_input.a) < (_wgslsmith_div_i32(var_1.c.x, abs(u_input.a)) << (~0u % 32u)), _wgslsmith_mult_vec4_i32(-abs(firstLeadingBit(vec4<i32>(u_input.a, global0.a.c.x, global0.c.x, -30321i))), -_wgslsmith_mod_vec4_i32(global0.a.c, var_1.c) ^ vec4<i32>(21785i, var_1.c.x & 10299i, 0i, 40586i)), ~global0.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.e * var_1.e)));
}

fn func_1(arg_0: f32, arg_1: Struct_2) -> i32 {
    global0 = func_6(func_5(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-919f, arg_0, arg_1.e)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-454f, arg_0, arg_0) + vec3<f32>(1000f, -1427f, -1006f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, global0.e)))), func_4(func_2(i32(-1i) * -2760i, Struct_1(global0.a.a, arg_1.a.b, vec4<i32>(-72082i, arg_1.c.x, -41635i, global0.c.x))), Struct_2(func_2(global0.a.c.x, global0.a), global0.a.a, vec4<i32>(0i, 9729i, global0.a.c.x, -2767i), global0.d, _wgslsmith_f_op_f32(f32(-1f) * -367f))), _wgslsmith_f_op_f32(ceil(arg_1.e)), global0.e), ~_wgslsmith_clamp_u32(1u, global0.d.x, countOneBits(min(22026u, 39824u))));
    var var_0 = !vec4<bool>(true, true, global1[_wgslsmith_index_u32(arg_1.d.x, 14u)], max(4294967295u, global0.d.x) != arg_1.d.x);
    var var_1 = func_6(_wgslsmith_sub_u32(1u, 1u) & global0.d.x, ~124502u).a;
    var_1 = func_6(1u, ~1u << (global0.d.x % 32u)).a;
    var_0 = !select(vec4<bool>(any(select(vec2<bool>(arg_1.a.a, global1[_wgslsmith_index_u32(50998u, 14u)]), var_0.yw, var_0.wz)), true, true, _wgslsmith_dot_vec3_u32(global0.d.wyw, vec3<u32>(arg_1.d.x, 0u, 65614u)) >= firstLeadingBit(1u)), !select(vec4<bool>(false, var_1.a, false, false), vec4<bool>(global0.b, false, false, false), true && arg_1.a.a), !select(vec4<bool>(var_0.x, var_0.x, var_0.x, arg_1.b), !vec4<bool>(var_1.a, var_0.x, true, var_1.a), vec4<bool>(var_0.x, true, false, global1[_wgslsmith_index_u32(0u, 14u)])));
    return -(~u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = !(!((max(0i, global0.c.x) & func_1(1000f, Struct_2(global0.a, global1[_wgslsmith_index_u32(46304u, 14u)], vec4<i32>(global0.a.c.x, global0.a.c.x, u_input.a, 1i), global0.d, global0.e))) > (firstTrailingBit(-9329i) << (~global0.a.b % 32u))));
    var var_0 = global0.a;
    let var_1 = vec4<i32>(-1i, 1i | global0.a.c.x, _wgslsmith_sub_i32(-103i, (i32(-1i) * -17031i) & u_input.a), -34772i);
    let var_2 = select(select(!vec2<bool>(global1[_wgslsmith_index_u32(global0.a.b, 14u)] & false, var_0.a), vec2<bool>(false, all(select(vec2<bool>(var_0.a, global0.b), vec2<bool>(global1[_wgslsmith_index_u32(var_0.b, 14u)], global1[_wgslsmith_index_u32(var_0.b, 14u)]), vec2<bool>(global0.a.a, false)))), true), select(select(!(!vec2<bool>(false, var_0.a)), !vec2<bool>(false, global1[_wgslsmith_index_u32(global0.a.b, 14u)]), func_6(global0.d.x, ~102968u).b), vec2<bool>(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~34412u, 53983u), 14u)], any(select(vec2<bool>(global0.b, global1[_wgslsmith_index_u32(1u, 14u)]), vec2<bool>(true, true), vec2<bool>(false, true)))), global1[_wgslsmith_index_u32(global0.a.b, 14u)]), global0.b);
    var_0 = func_2(18566i, func_4(Struct_1(1u != global0.a.b, 4294967295u ^ func_4(Struct_1(global0.a.a, 71577u, vec4<i32>(var_0.c.x, var_1.x, global0.c.x, u_input.a)), Struct_2(Struct_1(global0.a.a, global0.a.b, var_1), var_0.a, var_0.c, vec4<u32>(1u, var_0.b, var_0.b, var_0.b), -863f)).a.b, max(global0.a.c, abs(vec4<i32>(2147483647i, u_input.a, var_1.x, -32411i)))), Struct_2(func_4(global0.a, Struct_2(Struct_1(global1[_wgslsmith_index_u32(0u, 14u)], 1u, vec4<i32>(0i, 0i, var_0.c.x, u_input.a)), var_2.x, vec4<i32>(var_0.c.x, global0.c.x, var_0.c.x, u_input.a), vec4<u32>(var_0.b, 1u, global0.d.x, global0.a.b), -1315f)).a, all(select(vec4<bool>(var_2.x, false, var_2.x, true), vec4<bool>(true, global1[_wgslsmith_index_u32(var_0.b, 14u)], false, true), vec4<bool>(global0.a.a, false, var_2.x, global1[_wgslsmith_index_u32(global0.a.b, 14u)]))), vec4<i32>(~28988i, ~var_0.c.x, -var_1.x, global0.c.x), func_6(21400u, 46046u).d, _wgslsmith_f_op_f32(f32(-1f) * -797f))).a);
    var var_3 = ~_wgslsmith_dot_vec2_u32(reverseBits(_wgslsmith_mult_vec2_u32(vec2<u32>(var_0.b, 70908u), global0.d.xy)), ~(~(vec2<u32>(0u, var_0.b) & global0.d.wy)));
    let var_4 = global0.a;
    var var_5 = global0.a;
    let var_6 = ~(~reverseBits(1u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(510f, -1000f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global0.e)), func_6(0u, _wgslsmith_dot_vec3_u32(~vec3<u32>(var_4.b, var_5.b, var_0.b), vec3<u32>(var_6, 1u, 0u))).e), (14062u & func_4(Struct_1(true, var_4.b, var_4.c), func_4(Struct_1(false, 1u, vec4<i32>(u_input.a, -2147483647i, 0i, -24524i)), Struct_2(global0.a, true, global0.c, global0.d, global0.e))).a.b) & ~1u, abs(vec4<i32>(global0.a.c.x, var_4.c.x, abs(_wgslsmith_div_i32(u_input.a, global0.a.c.x)), var_0.c.x)), _wgslsmith_mod_i32(49487i, -2147483647i));
}

