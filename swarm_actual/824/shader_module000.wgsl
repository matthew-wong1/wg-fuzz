struct Struct_1 {
    a: vec4<bool>,
    b: vec2<u32>,
    c: vec2<f32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 23>;

var<private> global1: Struct_2;

var<private> global2: Struct_1;

var<private> global3: array<u32, 3> = array<u32, 3>(50988u, 13862u, 88686u);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>) -> bool {
    let var_0 = arg_0.a.yx;
    let var_1 = !(!arg_0.a.x);
    let var_2 = select(vec2<bool>(true, global2.a.x), select(select(select(vec2<bool>(var_0.x, true), global1.d.xz, var_0.x), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(false, global1.c.x > arg_0.c.x), !select(vec2<bool>(false, global1.b.a.x), global1.d.wy, global1.b.a.xz), true), select(!vec2<bool>(arg_0.a.x, global2.a.x), var_0, 2147483647i > -arg_1.x)), true);
    return !(!var_2.x || select((true & arg_0.a.x) & (4294967295u > global2.b.x), true, select(true, all(vec3<bool>(global1.a.a.x, arg_0.a.x, global2.a.x)), arg_0.a.x)));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: Struct_1) -> vec2<bool> {
    global1 = Struct_2(Struct_1(vec4<bool>(!(!global1.b.a.x), arg_3.a.x, true, all(!vec4<bool>(true, arg_3.a.x, false, false))), vec2<u32>(abs(arg_2.b.x) | ~17752u, abs(u_input.a)), vec2<f32>(_wgslsmith_f_op_f32(-arg_3.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f)))), select(reverseBits(vec3<u32>(4294967295u, u_input.a, 78052u)), vec3<u32>(55909u, 80549u, 22662u) & global2.d, select(!global2.a.wwy, vec3<bool>(true, false, false), select(vec3<bool>(false, arg_3.a.x, false), vec3<bool>(true, arg_2.a.x, global2.a.x), global2.a.x)))), global1.b, vec4<f32>(_wgslsmith_div_f32(global1.c.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_3.c.x * 365f), -1166f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.c.x, _wgslsmith_f_op_f32(ceil(arg_0.c.x)))), 434f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(global2.c.x)), _wgslsmith_f_op_f32(round(-910f)))))), !arg_3.a);
    var var_0 = Struct_2(Struct_1(arg_0.a, arg_3.d.zy, arg_0.c, vec3<u32>(~(0u << (1u % 32u)), ~_wgslsmith_mod_u32(global1.a.b.x, 0u), ~abs(14463u))), global1.a, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(891f + _wgslsmith_f_op_f32(-981f * arg_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.c.x)), -1340f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -798f)))), vec4<bool>(true, true, true, true));
    global0 = array<vec2<u32>, 23>();
    global0 = array<vec2<u32>, 23>();
    let var_1 = vec2<f32>(arg_2.c.x, _wgslsmith_f_op_f32(-arg_3.c.x));
    return vec2<bool>(global2.a.x, ~(arg_3.b.x >> (0u % 32u)) <= ~(8738u << (1u % 32u)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2, arg_2: bool) -> Struct_1 {
    let var_0 = Struct_1(select(select(arg_0.a, global1.a.a, arg_0.c.x < _wgslsmith_f_op_f32(floor(global2.c.x))), !(!select(vec4<bool>(true, true, true, true), vec4<bool>(arg_2, global2.a.x, arg_1.b.a.x, false), vec4<bool>(false, arg_0.a.x, arg_1.a.a.x, true))), arg_1.b.c.x < 316f), ~(~vec2<u32>(1u, 1u)) ^ arg_1.b.b, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_0.c.x - arg_1.c.x), 428f), vec2<f32>(-1081f, arg_0.c.x)))), abs(_wgslsmith_clamp_vec3_u32(arg_0.d, arg_0.d, vec3<u32>(global2.d.x, global2.b.x, _wgslsmith_sub_u32(45654u, u_input.a)))));
    var var_1 = func_4(Struct_1(vec4<bool>(all(select(vec4<bool>(var_0.a.x, var_0.a.x, global2.a.x, true), var_0.a, arg_1.a.a.x)), true, select(all(var_0.a.yz), global2.a.x, func_3(Struct_1(global1.b.a, global1.a.b, arg_0.c, vec3<u32>(1396u, global3[_wgslsmith_index_u32(1u, 3u)], 12680u)), vec4<i32>(0i, -37321i, -18825i, 0i))), arg_2), vec2<u32>(_wgslsmith_div_u32(10434u, global2.d.x), 70159u), _wgslsmith_f_op_vec2_f32(ceil(arg_1.c.zy)), _wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, global2.b.x, u_input.a), ~vec3<u32>(2115u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 3u)], 3u)], 10577u)), _wgslsmith_add_vec3_u32(vec3<u32>(arg_1.b.b.x, global2.d.x, 1u), ~vec3<u32>(global2.b.x, arg_1.a.d.x, 10664u)))), vec4<f32>(global2.c.x, arg_1.b.c.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.c.x, global2.c.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.c.x)))))), Struct_1(vec4<bool>(true, false, !any(vec3<bool>(global1.d.x, true, arg_2)), any(select(global1.d, var_0.a, var_0.a.x))), ~abs(~global2.b), var_0.c, ~reverseBits(vec3<u32>(global1.b.b.x, 25737u, 13465u))), Struct_1(!select(global2.a, vec4<bool>(true, false, arg_1.d.x, true), select(vec4<bool>(global2.a.x, false, true, true), vec4<bool>(true, var_0.a.x, true, var_0.a.x), global2.a)), _wgslsmith_sub_vec2_u32(~arg_0.b, ~arg_0.b), _wgslsmith_f_op_vec2_f32(select(global2.c, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(arg_0.c + global1.c.ww))), vec2<bool>(!global1.b.a.x, global2.a.x))), _wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(14366u, 4294967295u, 61548u), ~vec3<u32>(7775u, 0u, 15951u)), ~reverseBits(arg_1.b.d))));
    var var_2 = Struct_1(var_0.a, var_0.b, vec2<f32>(arg_0.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1628f, _wgslsmith_f_op_f32(ceil(-1684f)), true)) - 403f)), vec3<u32>(abs(~u_input.a), global1.b.b.x, ~42854u));
    var var_3 = global1.c.xzz;
    global3 = array<u32, 3>();
    return Struct_1(var_2.a, vec2<u32>(~(~var_0.b.x), 0u), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_2.c.x, arg_0.c.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(round(arg_0.c))))))), ~firstTrailingBit(~global1.a.d & vec3<u32>(74587u, 7722u, u_input.a)));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2) -> Struct_2 {
    var var_0 = arg_0;
    var var_1 = countOneBits(~var_0.a.d.zx);
    var var_2 = arg_1.b;
    var var_3 = _wgslsmith_mod_i32(1i, abs(1475i));
    var var_4 = _wgslsmith_f_op_f32(arg_1.a.c.x - func_2(func_2(arg_0.a, arg_1, any(global2.a.wwx) && !arg_0.d.x), arg_1, arg_0.a.a.x).c.x);
    return arg_1;
}

fn func_6(arg_0: Struct_2, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    let var_0 = ~(~_wgslsmith_clamp_u32(_wgslsmith_sub_u32(global2.b.x, 4294967295u), 24417u, ~1u));
    var var_1 = vec4<i32>(-arg_2 >> ((24501u ^ abs(var_0)) % 32u), 27504i, _wgslsmith_mult_i32(-arg_2 >> (u_input.a % 32u), -59399i), -2147483647i);
    let var_2 = 785f;
    global0 = array<vec2<u32>, 23>();
    var var_3 = ~var_1.x;
    return Struct_1(func_2(Struct_1(vec4<bool>(!global2.a.x, func_2(Struct_1(vec4<bool>(arg_1.a.x, false, true, global1.a.a.x), global1.b.d.zy, vec2<f32>(-774f, -911f), global1.b.d), arg_0, arg_1.a.x).a.x, false, func_3(Struct_1(vec4<bool>(global1.d.x, false, true, true), arg_0.b.d.yy, vec2<f32>(-566f, global2.c.x), vec3<u32>(u_input.a, global1.b.d.x, 13213u)), vec4<i32>(-27175i, arg_2, -19563i, arg_2))), ~arg_0.a.d.yx, global1.a.c, vec3<u32>(0u, 65967u, 7749u) << (abs(global1.b.d) % vec3<u32>(32u))), Struct_2(Struct_1(global2.a, _wgslsmith_sub_vec2_u32(global1.a.d.yx, vec2<u32>(1u, 4294967295u)), vec2<f32>(462f, 706f), arg_1.d), Struct_1(select(arg_1.a, global2.a, false), ~arg_1.d.zy, _wgslsmith_f_op_vec2_f32(-global1.c.zw), _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, arg_0.b.d.x, 121067u), vec3<u32>(29021u, arg_1.d.x, 4294967295u))), func_5(arg_0, arg_0).c, !vec4<bool>(false, true, global1.a.a.x, false)), true).a, ~_wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.a, 28222u), _wgslsmith_add_vec2_u32(arg_1.d.yz ^ vec2<u32>(var_0, var_0), ~vec2<u32>(1u, global1.b.b.x))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(global2.c.x)))), arg_0.c.x))), reverseBits(arg_1.d) & global1.b.d);
}

fn func_7(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = func_4(global1.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(global1.c, global1.c) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2304f, _wgslsmith_f_op_f32(global2.c.x * global2.c.x), _wgslsmith_f_op_f32(global2.c.x - 208f), _wgslsmith_f_op_f32(trunc(1309f))))), func_6(func_5(func_5(func_5(Struct_2(global1.a, Struct_1(vec4<bool>(false, arg_1.a.x, arg_1.a.x, false), vec2<u32>(1u, 16415u), global2.c, arg_1.d), vec4<f32>(global2.c.x, global2.c.x, global2.c.x, 471f), vec4<bool>(global2.a.x, arg_1.a.x, true, global1.d.x)), Struct_2(arg_1, arg_1, global1.c, vec4<bool>(global2.a.x, global2.a.x, false, global1.d.x))), Struct_2(Struct_1(vec4<bool>(global2.a.x, global2.a.x, global1.d.x, global1.b.a.x), vec2<u32>(1u, 1u), vec2<f32>(527f, arg_1.c.x), vec3<u32>(0u, 27340u, global2.d.x)), Struct_1(global2.a, global1.b.d.yx, arg_1.c, vec3<u32>(u_input.a, 4294967295u, u_input.a)), vec4<f32>(830f, arg_1.c.x, -735f, global2.c.x), arg_1.a)), func_5(Struct_2(arg_1, global1.a, global1.c, vec4<bool>(true, global2.a.x, false, true)), Struct_2(Struct_1(vec4<bool>(global2.a.x, true, false, arg_1.a.x), vec2<u32>(59796u, 0u), arg_1.c, global1.b.d), global1.b, global1.c, arg_1.a))), Struct_1(arg_1.a, ~vec2<u32>(arg_1.d.x, global1.b.d.x), global2.c, global1.a.d), 1797i), global1.a);
    global3 = array<u32, 3>();
    var var_1 = Struct_2(func_6(Struct_2(global1.a, arg_1, global1.c, vec4<bool>(all(vec2<bool>(false, false)), global1.b.a.x, func_5(Struct_2(arg_1, global1.a, vec4<f32>(global1.a.c.x, -1078f, global2.c.x, arg_1.c.x), arg_1.a), Struct_2(global1.a, Struct_1(vec4<bool>(var_0.x, true, false, global2.a.x), vec2<u32>(4294967295u, 0u), vec2<f32>(arg_1.c.x, arg_1.c.x), vec3<u32>(1u, 1u, 161u)), global1.c, vec4<bool>(global1.b.a.x, false, global2.a.x, var_0.x))).a.a.x, any(vec2<bool>(true, global1.a.a.x)))), Struct_1(!select(vec4<bool>(true, true, true, var_0.x), vec4<bool>(var_0.x, arg_1.a.x, global2.a.x, true), vec4<bool>(var_0.x, false, true, global1.a.a.x)), min(~vec2<u32>(35434u, arg_1.d.x), vec2<u32>(u_input.a, 0u) & vec2<u32>(global2.d.x, global1.a.b.x)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -578f), _wgslsmith_f_op_f32(f32(-1f) * -685f)), abs(_wgslsmith_mod_vec3_u32(vec3<u32>(global1.a.d.x, arg_1.b.x, 32561u), global2.d))), 2147483647i), func_2(func_5(func_5(func_5(Struct_2(Struct_1(global1.b.a, vec2<u32>(34652u, global2.b.x), global2.c, vec3<u32>(arg_0, u_input.a, 4294967295u)), arg_1, vec4<f32>(global2.c.x, 952f, 1000f, 1000f), vec4<bool>(false, global1.d.x, false, global1.d.x)), Struct_2(arg_1, arg_1, global1.c, vec4<bool>(global2.a.x, global2.a.x, global1.b.a.x, false))), func_5(Struct_2(Struct_1(global2.a, global2.b, vec2<f32>(-1014f, 1000f), global2.d), arg_1, vec4<f32>(global1.a.c.x, global2.c.x, 1074f, 1000f), vec4<bool>(var_0.x, true, arg_1.a.x, true)), Struct_2(global1.b, Struct_1(vec4<bool>(var_0.x, var_0.x, true, global2.a.x), vec2<u32>(global2.d.x, global2.b.x), vec2<f32>(arg_1.c.x, -1000f), global2.d), global1.c, global1.d))), Struct_2(global1.a, arg_1, _wgslsmith_f_op_vec4_f32(select(global1.c, vec4<f32>(-875f, 437f, global1.c.x, -1621f), true)), select(global2.a, vec4<bool>(arg_1.a.x, true, global1.b.a.x, false), global1.b.a.x))).b, Struct_2(func_6(Struct_2(Struct_1(global1.d, arg_1.d.xx, vec2<f32>(626f, global1.a.c.x), global2.d), Struct_1(arg_1.a, vec2<u32>(26611u, arg_0), vec2<f32>(1256f, -312f), vec3<u32>(0u, u_input.a, 10491u)), global1.c, global1.a.a), Struct_1(vec4<bool>(true, arg_1.a.x, true, false), vec2<u32>(70840u, 4294967295u), global1.a.c, global2.d), i32(-1i) * -7362i), Struct_1(func_6(Struct_2(Struct_1(global1.a.a, vec2<u32>(46421u, 37186u), vec2<f32>(-157f, 859f), arg_1.d), global1.b, global1.c, vec4<bool>(true, global1.b.a.x, global2.a.x, true)), arg_1, 1i).a, global0[_wgslsmith_index_u32(4294967295u, 23u)], vec2<f32>(arg_1.c.x, 197f), select(global2.d, vec3<u32>(5958u, 0u, u_input.a), global2.a.xxy)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global1.c.x, 785f, 378f, global2.c.x))))), !func_5(Struct_2(arg_1, arg_1, vec4<f32>(1000f, -1229f, global1.a.c.x, -1228f), vec4<bool>(false, var_0.x, false, true)), Struct_2(arg_1, Struct_1(vec4<bool>(global2.a.x, global1.d.x, global2.a.x, global1.b.a.x), arg_1.b, vec2<f32>(378f, global2.c.x), vec3<u32>(0u, global3[_wgslsmith_index_u32(4294967295u, 3u)], arg_1.b.x)), vec4<f32>(global2.c.x, arg_1.c.x, 538f, -1628f), vec4<bool>(true, false, false, global2.a.x))).b.a), arg_1.a.x), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-862f, global2.c.x, global2.c.x, global1.a.c.x)), _wgslsmith_f_op_vec4_f32(sign(global1.c))))))), select(global1.d, vec4<bool>(!(!global1.d.x), all(global2.a.wxx), !(!global2.a.x), global2.a.x), (_wgslsmith_f_op_f32(-global2.c.x) <= _wgslsmith_f_op_f32(max(754f, 399f))) && false));
    var var_2 = func_5(func_5(func_5(Struct_2(func_6(Struct_2(global1.b, Struct_1(vec4<bool>(global2.a.x, true, true, false), global2.d.zx, vec2<f32>(global1.a.c.x, 1211f), vec3<u32>(42271u, 11690u, global1.a.d.x)), vec4<f32>(global1.a.c.x, 1531f, global1.c.x, var_1.c.x), vec4<bool>(arg_1.a.x, true, true, arg_1.a.x)), global1.a, 2147483647i), Struct_1(vec4<bool>(true, var_0.x, var_1.d.x, arg_1.a.x), vec2<u32>(global2.b.x, arg_0), var_1.b.c, vec3<u32>(global1.a.d.x, global2.d.x, 105121u)), global1.c, func_5(Struct_2(arg_1, Struct_1(vec4<bool>(false, false, false, var_0.x), arg_1.b, arg_1.c, global2.d), var_1.c, vec4<bool>(arg_1.a.x, var_0.x, var_1.a.a.x, global2.a.x)), Struct_2(Struct_1(vec4<bool>(global2.a.x, var_1.d.x, false, global1.a.a.x), vec2<u32>(var_1.b.b.x, 0u), vec2<f32>(1247f, 1000f), var_1.a.d), Struct_1(vec4<bool>(global1.a.a.x, var_0.x, var_1.d.x, global1.a.a.x), vec2<u32>(arg_0, global3[_wgslsmith_index_u32(global1.b.b.x, 3u)]), vec2<f32>(-130f, var_1.a.c.x), vec3<u32>(60299u, 2404u, 4294967295u)), vec4<f32>(2151f, var_1.a.c.x, global2.c.x, global1.c.x), vec4<bool>(false, true, arg_1.a.x, var_1.a.a.x))).d), Struct_2(func_5(Struct_2(Struct_1(arg_1.a, vec2<u32>(1u, 4294967295u), vec2<f32>(-743f, var_1.b.c.x), vec3<u32>(107395u, 41402u, arg_1.b.x)), Struct_1(vec4<bool>(global1.d.x, arg_1.a.x, true, var_1.b.a.x), global0[_wgslsmith_index_u32(20668u, 23u)], arg_1.c, vec3<u32>(1u, 16316u, u_input.a)), global1.c, arg_1.a), Struct_2(Struct_1(arg_1.a, vec2<u32>(26431u, 4294967295u), vec2<f32>(1740f, 1597f), arg_1.d), Struct_1(vec4<bool>(global1.a.a.x, true, var_1.b.a.x, true), arg_1.b, global2.c, global1.b.d), var_1.c, arg_1.a)).a, var_1.b, var_1.c, select(vec4<bool>(true, false, global2.a.x, var_0.x), var_1.a.a, arg_1.a))), Struct_2(Struct_1(vec4<bool>(var_0.x, var_1.b.a.x, global2.a.x, false), _wgslsmith_mod_vec2_u32(global1.a.d.xz, global0[_wgslsmith_index_u32(27934u, 23u)]), _wgslsmith_f_op_vec2_f32(-var_1.a.c), global1.b.d), func_5(Struct_2(global1.a, Struct_1(global2.a, vec2<u32>(4294967295u, 0u), vec2<f32>(var_1.c.x, 371f), global2.d), vec4<f32>(arg_1.c.x, 294f, 770f, -781f), vec4<bool>(false, false, var_0.x, false)), Struct_2(global1.b, Struct_1(vec4<bool>(true, var_1.b.a.x, arg_1.a.x, true), var_1.b.d.zx, arg_1.c, vec3<u32>(8294u, 35773u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(100834u, 3u)], 3u)])), var_1.c, arg_1.a)).b, _wgslsmith_f_op_vec4_f32(-var_1.c), vec4<bool>(global1.b.a.x, true, false, true))), func_5(Struct_2(func_6(func_5(Struct_2(arg_1, global1.b, var_1.c, global1.d), Struct_2(Struct_1(var_1.d, vec2<u32>(0u, global2.b.x), vec2<f32>(-1000f, -1310f), vec3<u32>(4294967295u, global1.b.d.x, global1.a.b.x)), global1.b, var_1.c, arg_1.a)), global1.a, _wgslsmith_mult_i32(20599i, -5963i)), func_6(func_5(Struct_2(Struct_1(global1.d, vec2<u32>(arg_0, u_input.a), vec2<f32>(1610f, global2.c.x), global2.d), Struct_1(vec4<bool>(true, false, global1.a.a.x, true), vec2<u32>(0u, u_input.a), vec2<f32>(321f, arg_1.c.x), vec3<u32>(global3[_wgslsmith_index_u32(global2.d.x, 3u)], 11246u, 4294967295u)), var_1.c, vec4<bool>(true, true, global2.a.x, false)), Struct_2(var_1.a, Struct_1(vec4<bool>(global2.a.x, arg_1.a.x, arg_1.a.x, global1.a.a.x), vec2<u32>(var_1.b.b.x, 0u), vec2<f32>(global1.b.c.x, global2.c.x), arg_1.d), var_1.c, global1.d)), func_6(Struct_2(var_1.b, global1.b, vec4<f32>(440f, -387f, -383f, var_1.b.c.x), vec4<bool>(true, global1.a.a.x, true, var_1.d.x)), arg_1, -24255i), 14007i), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global1.a.c.x, var_1.c.x, -291f, 228f), vec4<f32>(arg_1.c.x, 367f, arg_1.c.x, arg_1.c.x)) + func_5(Struct_2(Struct_1(var_1.a.a, vec2<u32>(4294967295u, 67388u), vec2<f32>(arg_1.c.x, arg_1.c.x), vec3<u32>(global3[_wgslsmith_index_u32(1748u, 3u)], 74258u, arg_0)), Struct_1(var_1.a.a, vec2<u32>(global2.b.x, global3[_wgslsmith_index_u32(118406u, 3u)]), vec2<f32>(global1.a.c.x, -314f), arg_1.d), vec4<f32>(-633f, arg_1.c.x, arg_1.c.x, global1.b.c.x), arg_1.a), Struct_2(Struct_1(global1.d, arg_1.d.xy, global2.c, vec3<u32>(12894u, var_1.a.d.x, 22427u)), Struct_1(vec4<bool>(true, false, var_1.b.a.x, arg_1.a.x), vec2<u32>(7460u, global3[_wgslsmith_index_u32(14813u, 3u)]), vec2<f32>(753f, -745f), vec3<u32>(global2.b.x, 1u, 4294967295u)), vec4<f32>(230f, -1000f, arg_1.c.x, 276f), var_1.d)).c), vec4<bool>(arg_1.a.x, false, var_0.x || false, true)), Struct_2(Struct_1(var_1.d, vec2<u32>(global2.d.x, 52192u), arg_1.c, vec3<u32>(23351u, global3[_wgslsmith_index_u32(1u, 3u)], 0u) | arg_1.d), func_2(Struct_1(vec4<bool>(global2.a.x, var_0.x, true, false), global2.b, global2.c, vec3<u32>(4294967295u, global3[_wgslsmith_index_u32(0u, 3u)], global1.b.d.x)), func_5(Struct_2(var_1.b, Struct_1(global2.a, var_1.a.b, vec2<f32>(854f, 849f), vec3<u32>(0u, global1.a.d.x, 68375u)), vec4<f32>(1387f, 1337f, 785f, global1.c.x), global2.a), Struct_2(global1.b, arg_1, var_1.c, arg_1.a)), true), global1.c, !vec4<bool>(global2.a.x, global2.a.x, false, arg_1.a.x))));
    var var_3 = -_wgslsmith_add_i32(firstLeadingBit(countOneBits(1i)), 0i >> (_wgslsmith_sub_u32(_wgslsmith_mult_u32(var_1.a.b.x, 34212u), var_1.b.b.x & global3[_wgslsmith_index_u32(var_2.a.d.x, 3u)]) % 32u));
    return arg_1;
}

fn func_1() -> Struct_2 {
    global2 = func_7(~_wgslsmith_div_u32(global3[_wgslsmith_index_u32(~_wgslsmith_div_u32(global1.a.d.x, 0u), 3u)], 22705u), func_6(func_5(Struct_2(func_2(Struct_1(global1.b.a, global2.b, vec2<f32>(-236f, global1.a.c.x), global1.b.d), Struct_2(Struct_1(global2.a, vec2<u32>(21806u, global3[_wgslsmith_index_u32(u_input.a, 3u)]), global1.c.yx, vec3<u32>(global2.b.x, global1.a.b.x, global2.d.x)), Struct_1(vec4<bool>(true, false, false, false), global0[_wgslsmith_index_u32(45669u, 23u)], vec2<f32>(1000f, global1.b.c.x), vec3<u32>(u_input.a, 3392u, 1u)), vec4<f32>(566f, -475f, global1.a.c.x, -1553f), global1.b.a), true), global1.b, _wgslsmith_div_vec4_f32(global1.c, vec4<f32>(global1.a.c.x, -784f, 1303f, 657f)), global1.d), Struct_2(func_2(Struct_1(global2.a, vec2<u32>(global3[_wgslsmith_index_u32(u_input.a, 3u)], u_input.a), vec2<f32>(265f, global1.b.c.x), vec3<u32>(40772u, u_input.a, 0u)), Struct_2(Struct_1(global1.a.a, vec2<u32>(global1.a.d.x, 1u), vec2<f32>(global1.a.c.x, global1.b.c.x), global2.d), Struct_1(global1.a.a, vec2<u32>(1u, 0u), vec2<f32>(-742f, global2.c.x), global2.d), vec4<f32>(-904f, global1.c.x, global2.c.x, global1.a.c.x), global2.a), global2.a.x), func_2(global1.a, Struct_2(global1.b, global1.b, global1.c, vec4<bool>(true, false, global1.b.a.x, global2.a.x)), global2.a.x), vec4<f32>(global2.c.x, -673f, global2.c.x, global2.c.x), vec4<bool>(true, global1.b.a.x, false, true))), global1.a, 30727i));
    global0 = array<vec2<u32>, 23>();
    let var_0 = true | (-max(-32286i, firstTrailingBit(15799i)) == -38396i);
    let var_1 = func_5(Struct_2(Struct_1(vec4<bool>(true, !global2.a.x, func_2(Struct_1(global2.a, global2.b, vec2<f32>(global2.c.x, 468f), vec3<u32>(1u, 46784u, 1u)), Struct_2(global1.b, Struct_1(global2.a, global0[_wgslsmith_index_u32(56301u, 23u)], global1.c.wy, vec3<u32>(global1.b.d.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(45851u, 3u)], 3u)], global2.b.x)), global1.c, vec4<bool>(global1.b.a.x, var_0, global1.d.x, var_0)), true).a.x, true), _wgslsmith_mod_vec2_u32(vec2<u32>(global3[_wgslsmith_index_u32(39739u, 3u)], 4562u), max(global2.d.yx, global0[_wgslsmith_index_u32(global2.b.x, 23u)])), func_5(func_5(Struct_2(global1.b, global1.b, global1.c, vec4<bool>(var_0, false, var_0, true)), Struct_2(Struct_1(vec4<bool>(true, false, global2.a.x, global2.a.x), vec2<u32>(u_input.a, 4294967295u), global2.c, global1.a.d), global1.a, global1.c, vec4<bool>(true, true, true, false))), Struct_2(Struct_1(global2.a, global0[_wgslsmith_index_u32(23835u, 23u)], global1.c.xy, global1.b.d), Struct_1(vec4<bool>(global1.d.x, true, var_0, global2.a.x), vec2<u32>(global1.a.b.x, 10220u), vec2<f32>(global2.c.x, global2.c.x), vec3<u32>(0u, global2.d.x, 35049u)), vec4<f32>(global2.c.x, -1000f, 798f, -204f), vec4<bool>(true, false, global1.d.x, global2.a.x))).b.c, vec3<u32>(global2.b.x, ~global3[_wgslsmith_index_u32(96262u, 3u)], global3[_wgslsmith_index_u32(global2.b.x, 3u)] | global2.b.x)), global1.b, _wgslsmith_f_op_vec4_f32(ceil(global1.c)), !vec4<bool>(-135f != global2.c.x, any(vec4<bool>(false, false, global1.d.x, false)), any(vec3<bool>(true, var_0, var_0)), var_0)), Struct_2(func_6(Struct_2(global1.a, func_6(Struct_2(global1.b, global1.a, global1.c, vec4<bool>(global2.a.x, var_0, true, true)), global1.b, 1i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-386f, global2.c.x, global1.c.x, global1.a.c.x)), !vec4<bool>(true, var_0, global2.a.x, var_0)), func_7(~23759u, global1.a), 1i), Struct_1(vec4<bool>(true, true, true, global1.a.a.x), reverseBits(~global0[_wgslsmith_index_u32(u_input.a, 23u)]), _wgslsmith_f_op_vec2_f32(abs(global1.b.c)), vec3<u32>(0u | u_input.a, 22153u & global2.b.x, func_2(global1.a, Struct_2(global1.a, global1.b, global1.c, global1.d), global1.b.a.x).b.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global1.c) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-432f, 202f, global2.c.x, -604f)))), !global1.d));
    global3 = array<u32, 3>();
    return func_5(Struct_2(Struct_1(global2.a, vec2<u32>(1u, 55028u), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(var_1.b.c)), _wgslsmith_f_op_vec2_f32(-global1.b.c)), vec3<u32>(14954u, global3[_wgslsmith_index_u32(var_1.a.d.x, 3u)], var_1.a.b.x) ^ vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(41305u, 3u)], 3u)], 1u, var_1.a.b.x)), Struct_1(vec4<bool>(true, true, true, true), abs(_wgslsmith_add_vec2_u32(vec2<u32>(26758u, 0u), vec2<u32>(var_1.b.b.x, global3[_wgslsmith_index_u32(var_1.a.d.x, 3u)]))), vec2<f32>(-306f, global2.c.x), vec3<u32>(u_input.a, 93715u >> (global3[_wgslsmith_index_u32(4294967295u, 3u)] % 32u), 4294967295u & global3[_wgslsmith_index_u32(1u, 3u)])), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.c))), global2.a), func_5(Struct_2(var_1.a, func_2(Struct_1(global2.a, vec2<u32>(u_input.a, 0u), global1.c.wz, global1.a.d), var_1, true), var_1.c, !select(vec4<bool>(true, false, var_0, var_1.d.x), vec4<bool>(var_0, false, false, true), global2.a.x)), Struct_2(global1.a, global1.b, vec4<f32>(_wgslsmith_f_op_f32(ceil(1848f)), global2.c.x, 609f, var_1.c.x), global1.a.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<u32, 3>();
    global3 = array<u32, 3>();
    global1 = func_1();
    let var_0 = _wgslsmith_add_i32(i32(-1i) * -1i, -(~1i)) & (i32(-1i) * -_wgslsmith_clamp_i32(firstLeadingBit(-2147483647i), i32(-1i) * -10091i, _wgslsmith_mult_i32(1i, -7728i)));
    var var_1 = u_input.a;
    let var_2 = global1.b;
    let x = u_input.a;
    s_output = StorageBuffer(abs(~16775i), -_wgslsmith_div_i32(abs(-32282i >> (global3[_wgslsmith_index_u32(1u, 3u)] % 32u)), countOneBits(~2147483647i)), vec4<i32>(var_0, var_0, _wgslsmith_clamp_i32(~var_0, abs(var_0), _wgslsmith_sub_i32(-2147483647i, var_0)), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, var_0) ^ vec2<i32>(0i, 1i), _wgslsmith_clamp_vec2_i32(vec2<i32>(var_0, var_0), vec2<i32>(var_0, -3650i), vec2<i32>(var_0, var_0)))) ^ (vec4<i32>(-1i) * -(vec4<i32>(-37858i, var_0, var_0, 19224i) << (vec4<u32>(var_2.d.x, var_2.b.x, u_input.a, u_input.a) % vec4<u32>(32u)))), countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(47528i, -4578i), 2147483647i), vec2<i32>(var_0, _wgslsmith_clamp_i32(var_0, 1i, 2147483647i)))));
}

