struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec4<u32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
    c: u32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec4<f32>(-1790f, 215f, 446f, 1056f), vec4<bool>(false, true, false, false));

var<private> global1: array<i32, 7>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    var var_0 = false;
    let var_1 = arg_0;
    let var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(global0.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.d.x, var_1.a.d.x, var_1.d.d.x, 1254f))), global0.a)), select(global0.b, !(!global0.b), select(global0.b, global0.b, global0.b.x)));
    var var_3 = !vec3<bool>(global0.b.x, true, !(_wgslsmith_add_u32(var_1.e.x, var_1.e.x) > arg_0.e.x));
    let var_4 = var_1.e.x;
    return Struct_1(_wgslsmith_sub_vec3_i32(var_1.a.a, -u_input.a), _wgslsmith_div_i32(2147483647i, 2147483647i), -2147483647i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.a.zzw) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(arg_0.d.d)) - arg_0.b.d)) - global0.a.zww));
}

fn func_3(arg_0: bool) -> Struct_1 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(global0.a, global0.a, vec4<bool>(arg_0, global0.b.x, arg_0, false))))) + vec4<f32>(_wgslsmith_f_op_f32(367f - global0.a.x), _wgslsmith_div_f32(1000f, global0.a.x), _wgslsmith_f_op_f32(exp2(global0.a.x)), _wgslsmith_f_op_f32(abs(global0.a.x))))), vec4<bool>(global0.b.x, all(!global0.b.wy), global0.b.x, any(!vec3<bool>(false, global0.b.x, arg_0))));
    global0 = Struct_3(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.a) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, var_0.a.x, global0.a.x, var_0.a.x) * var_0.a))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-581f, var_0.a.x, global0.a.x, -651f)) + _wgslsmith_f_op_vec4_f32(-global0.a)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(596f, -1480f, global0.a.x, global0.a.x))))), var_0.b);
    global0 = var_0;
    global0 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.a.x, var_0.a.x, arg_0)))), 251f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_0.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)) + 1f), var_0.a.x), vec4<bool>(true, false && (_wgslsmith_div_f32(1000f, 1168f) > _wgslsmith_f_op_f32(-global0.a.x)), any(global0.b.wxy), !global0.b.x & (~1u < _wgslsmith_dot_vec2_u32(vec2<u32>(59770u, 0u), vec2<u32>(46193u, 15907u)))));
    let var_1 = select(vec4<bool>(true, any(select(vec3<bool>(var_0.b.x, true, var_0.b.x), select(vec3<bool>(arg_0, var_0.b.x, var_0.b.x), var_0.b.zyz, true), any(global0.b))), var_0.b.x, !arg_0), vec4<bool>(global0.b.x, true | all(global0.b), any(vec2<bool>(global0.b.x, !global0.b.x)), !(true != any(global0.b.www))), global0.b);
    return Struct_1(firstTrailingBit(-select(_wgslsmith_div_vec3_i32(vec3<i32>(11849i, -1i, u_input.b), vec3<i32>(0i, 21084i, global1[_wgslsmith_index_u32(4294967295u, 7u)])), ~u_input.a, !vec3<bool>(false, false, arg_0))), ~2147483647i, ~(-26338i), vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)))), -1038f, _wgslsmith_f_op_f32(-var_0.a.x)));
}

fn func_2() -> Struct_2 {
    var var_0 = global0.b.x;
    let var_1 = Struct_2(Struct_1(u_input.a, _wgslsmith_sub_i32(~firstTrailingBit(u_input.b), u_input.b), global1[_wgslsmith_index_u32(~(~(~1u)), 7u)], _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1239f, global0.a.x, 200f)))))), func_1(Struct_2(func_1(Struct_2(Struct_1(vec3<i32>(-3666i, global1[_wgslsmith_index_u32(18786u, 7u)], global1[_wgslsmith_index_u32(1u, 7u)]), u_input.b, 0i, global0.a.yyw), Struct_1(vec3<i32>(u_input.a.x, 1i, u_input.a.x), -10083i, 18806i, global0.a.xzy), Struct_1(vec3<i32>(-2147483647i, global1[_wgslsmith_index_u32(1u, 7u)], 13640i), -29787i, -14781i, vec3<f32>(-1236f, 949f, 460f)), Struct_1(vec3<i32>(global1[_wgslsmith_index_u32(24769u, 7u)], global1[_wgslsmith_index_u32(1u, 7u)], -32076i), u_input.a.x, u_input.a.x, global0.a.xwx), vec4<u32>(1u, 1u, 90014u, 32475u))), func_3(true), func_3(!global0.b.x), Struct_1(firstTrailingBit(vec3<i32>(u_input.a.x, 1i, u_input.a.x)), 1i, u_input.b >> (3801u % 32u), _wgslsmith_f_op_vec3_f32(-global0.a.xwx)), ~(~vec4<u32>(5694u, 13463u, 0u, 52592u)))), func_3(!all(vec3<bool>(global0.b.x, true, global0.b.x))), Struct_1(vec3<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.a.x, global1[_wgslsmith_index_u32(48118u, 7u)], 2147483647i, u_input.a.x), ~vec4<i32>(-59839i, 22828i, u_input.a.x, -19803i)), 28332i, abs(global1[_wgslsmith_index_u32(4294967295u, 7u)])), _wgslsmith_add_i32(abs(1i), _wgslsmith_clamp_i32(-54710i, global1[_wgslsmith_index_u32(28212u, 7u)], u_input.b)) ^ global1[_wgslsmith_index_u32(44055u, 7u)], -(~u_input.a.x), global0.a.yxy), ~select(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(0u >> (1u % 32u), abs(0u), ~1u, firstTrailingBit(76614u)), vec4<bool>(select(false, true, global0.b.x), !global0.b.x, u_input.b == u_input.b, global0.b.x)));
    let var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-func_3(true).d.x), _wgslsmith_f_op_f32(trunc(var_1.d.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1082f, -332f)), var_1.d.d.x))), select(!(!vec4<bool>(true, global0.b.x, global0.b.x, true)), select(global0.b, !global0.b, any(vec3<bool>(false, false, global0.b.x)) & all(vec3<bool>(global0.b.x, true, global0.b.x))), global0.b));
    let var_3 = ~(min(1i, ~1i) >> (_wgslsmith_dot_vec3_u32(var_1.e.wyw, ~vec3<u32>(var_1.e.x, 12943u, 1u)) % 32u)) < (var_1.c.b ^ min(u_input.a.x, -u_input.a.x));
    var var_4 = var_1.e.x;
    return Struct_2(var_1.a, Struct_1(vec3<i32>(1i >> (var_1.e.x % 32u), global1[_wgslsmith_index_u32(0u, 7u)] | -1i, _wgslsmith_dot_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(69242u, 7u)], var_1.c.b, var_1.c.a.x), vec3<i32>(u_input.b, global1[_wgslsmith_index_u32(25262u, 7u)], -1i))) ^ countOneBits(min(vec3<i32>(0i, u_input.a.x, 0i), vec3<i32>(var_1.b.a.x, var_1.d.c, 2147483647i))), global1[_wgslsmith_index_u32(var_1.e.x & ~_wgslsmith_clamp_u32(27088u, var_1.e.x, var_1.e.x), 7u)], 2147483647i, _wgslsmith_f_op_vec3_f32(-global0.a.yxx)), func_3(any(!global0.b.wx)), var_1.c, vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(3094u, 1u, var_1.e.x, 0u) & var_1.e, vec4<u32>(var_1.e.x, var_1.e.x, var_1.e.x, var_1.e.x)), ~abs(14557u)), 4737u, 1921u, var_1.e.x));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2) -> Struct_2 {
    global1 = array<i32, 7>();
    var var_0 = Struct_1(_wgslsmith_add_vec3_i32(func_2().c.a, vec3<i32>(22270i, arg_1.d.b, func_1(Struct_2(Struct_1(u_input.a, global1[_wgslsmith_index_u32(1u, 7u)], u_input.b, vec3<f32>(arg_1.d.d.x, 1063f, arg_0.a.x)), arg_1.d, arg_1.a, arg_1.d, arg_1.e)).a.x)), -u_input.b, -9778i, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(292f, _wgslsmith_div_f32(245f, global0.a.x), _wgslsmith_div_f32(global0.a.x, -887f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -410f, arg_0.a.x)) * arg_1.a.d), vec3<bool>(_wgslsmith_f_op_f32(max(-1000f, arg_0.a.x)) < 1f, all(arg_0.b), arg_0.b.x))));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.a.x), -859f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -3549f), var_0.d.x)) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.d.x)))) + _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(282f, 123f)))), 174f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) - func_2().c.d.x), arg_0.a.x, ~(~arg_1.e.x) != arg_1.e.x)));
    global0 = arg_0;
    let var_2 = !vec3<bool>(any(select(!global0.b.zy, arg_0.b.zz, arg_0.b.xz)), !(_wgslsmith_f_op_f32(-arg_0.a.x) >= _wgslsmith_div_f32(var_0.d.x, -197f)), true);
    return arg_1;
}

fn func_5(arg_0: i32, arg_1: Struct_2) -> Struct_3 {
    global0 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -460f), -814f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.a.d.x), _wgslsmith_div_f32(global0.a.x, arg_1.b.d.x))), _wgslsmith_f_op_f32(floor(1017f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1695f)) * _wgslsmith_f_op_f32(f32(-1f) * -965f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(func_2().d.d.x, _wgslsmith_f_op_f32(f32(-1f) * -498f)))))), vec4<bool>(!(!any(global0.b)), !(~arg_1.e.x == 4294967295u), global0.b.x, 5435i > func_2().d.c));
    let var_0 = all(select(!(!vec3<bool>(global0.b.x, global0.b.x, global0.b.x)), global0.b.wyw, select(global0.b.yzy, vec3<bool>(true, true, true), true)));
    global1 = array<i32, 7>();
    var var_1 = true;
    var_1 = (func_2().b.a.x >> (arg_1.e.x % 32u)) > -1i;
    return Struct_3(global0.a, vec4<bool>(true, !global0.b.x, !var_0, false));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 7>();
    global1 = array<i32, 7>();
    global0 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + global0.a.x)), _wgslsmith_f_op_f32(1763f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) * _wgslsmith_f_op_f32(-global0.a.x))), _wgslsmith_f_op_f32(min(1f, _wgslsmith_div_f32(688f, _wgslsmith_f_op_f32(global0.a.x - 919f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.x - global0.a.x) - -1164f))), global0.b);
    global0 = func_5(24225i, func_4(Struct_3(global0.a, !vec4<bool>(global0.b.x, global0.b.x, global0.b.x, false)), Struct_2(func_1(Struct_2(Struct_1(u_input.a, -31137i, -39975i, global0.a.wwz), Struct_1(u_input.a, -2147483647i, 1i, global0.a.xxy), Struct_1(u_input.a, 2954i, global1[_wgslsmith_index_u32(0u, 7u)], vec3<f32>(global0.a.x, global0.a.x, global0.a.x)), Struct_1(vec3<i32>(u_input.b, -2147483647i, u_input.b), global1[_wgslsmith_index_u32(1u, 7u)], 23645i, vec3<f32>(global0.a.x, -557f, 1409f)), vec4<u32>(4294967295u, 56291u, 33394u, 4294967295u))), Struct_1(u_input.a, -25054i, reverseBits(7486i), vec3<f32>(-736f, global0.a.x, global0.a.x)), func_1(func_2()), Struct_1(func_3(false).a, global1[_wgslsmith_index_u32(select(41544u, 1870u, false), 7u)], -global1[_wgslsmith_index_u32(1u, 7u)], global0.a.zxw), reverseBits(vec4<u32>(0u, 9719u, 24174u, 45948u)))));
    let var_0 = global0.a.x;
    var var_1 = func_4(func_5(~func_1(func_4(Struct_3(global0.a, vec4<bool>(global0.b.x, true, true, true)), Struct_2(Struct_1(u_input.a, u_input.b, 14674i, vec3<f32>(-626f, global0.a.x, global0.a.x)), Struct_1(vec3<i32>(global1[_wgslsmith_index_u32(12573u, 7u)], -20730i, u_input.b), 2147483647i, global1[_wgslsmith_index_u32(1u, 7u)], global0.a.zyx), Struct_1(u_input.a, 9678i, -17907i, global0.a.zwx), Struct_1(u_input.a, u_input.a.x, -2147483647i, global0.a.wyy), vec4<u32>(80386u, 37555u, 38706u, 1u)))).a.x, func_4(func_5(~global1[_wgslsmith_index_u32(14195u, 7u)], func_2()), Struct_2(Struct_1(vec3<i32>(2147483647i, u_input.b, 0i), 2147483647i, 2147483647i, vec3<f32>(global0.a.x, global0.a.x, -1335f)), func_3(global0.b.x), func_4(Struct_3(global0.a, vec4<bool>(global0.b.x, true, true, false)), Struct_2(Struct_1(vec3<i32>(1i, 1i, -611i), -2147483647i, 12760i, global0.a.xxz), Struct_1(vec3<i32>(global1[_wgslsmith_index_u32(94909u, 7u)], global1[_wgslsmith_index_u32(0u, 7u)], u_input.a.x), u_input.a.x, -48254i, vec3<f32>(1000f, global0.a.x, 469f)), Struct_1(u_input.a, 1i, global1[_wgslsmith_index_u32(0u, 7u)], global0.a.zzz), Struct_1(vec3<i32>(global1[_wgslsmith_index_u32(85557u, 7u)], u_input.b, 0i), global1[_wgslsmith_index_u32(54114u, 7u)], -1652i, global0.a.yyx), vec4<u32>(1u, 15449u, 50910u, 21049u))).d, Struct_1(u_input.a, -27441i, u_input.a.x, vec3<f32>(global0.a.x, -1000f, -1657f)), ~vec4<u32>(0u, 46276u, 1u, 14942u)))), func_2());
    var var_2 = global0.b.x;
    let var_3 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-556f * _wgslsmith_f_op_f32(-var_1.c.d.x)), global0.a.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.b.d.x + _wgslsmith_f_op_f32(f32(-1f) * -524f))))), func_2().d.d);
    let x = u_input.a;
    s_output = StorageBuffer(func_2().e.xww, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global0.a.x), 563f) * _wgslsmith_f_op_vec2_f32(-func_2().c.d.yx)) * _wgslsmith_div_vec2_f32(var_3.zx, var_3.xx)), var_1.e.x, vec2<f32>(_wgslsmith_f_op_f32(-861f + -1000f), 225f));
}

