struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: vec4<f32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 697f;

var<private> global1: array<f32, 7>;

var<private> global2: u32 = 1u;

var<private> global3: bool;

var<private> global4: array<vec4<i32>, 10> = array<vec4<i32>, 10>(vec4<i32>(i32(-2147483648), 3867i, 4634i, 1i), vec4<i32>(-48448i, -9319i, -17097i, -7057i), vec4<i32>(-15519i, i32(-2147483648), 2147483647i, -1i), vec4<i32>(42396i, 2147483647i, 9200i, 6848i), vec4<i32>(-1i, -21038i, -1i, 23927i), vec4<i32>(1i, i32(-2147483648), 0i, 73962i), vec4<i32>(-5218i, 29022i, 7466i, -8378i), vec4<i32>(-19781i, i32(-2147483648), 6370i, 1i), vec4<i32>(0i, -16969i, -50766i, -8975i), vec4<i32>(-19707i, -20808i, 28693i, 68120i));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1(arg_0: u32) -> Struct_3 {
    global3 = true;
    let var_0 = ~(~arg_0) >> (15394u % 32u);
    global4 = array<vec4<i32>, 10>();
    var var_1 = true;
    return Struct_3(global1[_wgslsmith_index_u32(var_0, 7u)], Struct_1(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), arg_0, 1u));
}

fn func_3(arg_0: f32, arg_1: vec3<f32>) -> vec2<i32> {
    let var_0 = 1u;
    var var_1 = vec2<u32>(0u, max(461u, select(~firstTrailingBit(64819u), func_1(_wgslsmith_sub_u32(33111u, u_input.c)).b.c, false)));
    global3 = !any(!vec4<bool>(false, true, any(vec3<bool>(false, true, false)), all(vec3<bool>(true, false, false))));
    var var_2 = Struct_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 7u)]), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(arg_1.x)))), -1103f, _wgslsmith_f_op_f32(f32(-1f) * -876f))), global4[_wgslsmith_index_u32(100656u | (var_0 << (var_0 % 32u)), 10u)]);
    return u_input.b.xx;
}

fn func_4(arg_0: f32, arg_1: vec2<i32>) -> vec4<i32> {
    let var_0 = abs(max(~(-_wgslsmith_dot_vec2_i32(arg_1, u_input.b.xy)), ~_wgslsmith_mult_i32(arg_1.x, arg_1.x)));
    let var_1 = Struct_4(~(37463u ^ (u_input.a << (u_input.c % 32u))) & 38775u);
    var var_2 = Struct_2(~36269i & ~arg_1.x);
    global3 = abs(var_1.a) < 56023u;
    global0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0)));
    return global4[_wgslsmith_index_u32(var_1.a, 10u)];
}

fn func_2(arg_0: Struct_1, arg_1: Struct_5, arg_2: bool, arg_3: vec4<u32>) -> Struct_5 {
    let var_0 = Struct_2(-47240i >> (~(~(u_input.c ^ arg_3.x)) % 32u));
    let var_1 = func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(693f + _wgslsmith_f_op_f32(max(212f, arg_1.a.x))), arg_1.a.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1.a.x)))), ~func_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 126f), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.a.x, -569f, global1[_wgslsmith_index_u32(1u, 7u)]), arg_1.a.wzx) - _wgslsmith_f_op_vec3_f32(-arg_1.a.zyw))));
    return Struct_5(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1714f + 583f), _wgslsmith_f_op_f32(sign(arg_1.a.x))), func_1(abs(65379u)).a, arg_1.a.x, arg_1.a.x), vec4<f32>(771f, _wgslsmith_div_f32(861f, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(arg_0.b, 7u)] - -535f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-118f, arg_1.a.x))), 2198f), select(vec4<bool>(select(false, false, true), !arg_0.a.x, arg_1.a.x > 174f, arg_2), select(select(vec4<bool>(arg_2, false, arg_2, true), vec4<bool>(arg_2, arg_0.a.x, false, false), true), vec4<bool>(false, true, false, arg_2), select(vec4<bool>(arg_0.a.x, arg_2, false, true), vec4<bool>(arg_2, arg_2, true, arg_0.a.x), false)), select(select(vec4<bool>(arg_2, arg_2, arg_2, false), vec4<bool>(true, false, arg_2, arg_0.a.x), vec4<bool>(arg_0.a.x, true, arg_0.a.x, false)), !vec4<bool>(arg_2, arg_0.a.x, true, arg_0.a.x), true)))), -(vec4<i32>(1i, countOneBits(var_0.a), 0i, u_input.e.x) >> (~select(arg_3, vec4<u32>(1u, arg_0.b, arg_0.c, u_input.a), vec4<bool>(true, false, arg_2, arg_0.a.x)) % vec4<u32>(32u))));
}

fn func_5(arg_0: Struct_5, arg_1: vec4<u32>) -> bool {
    global3 = true != !func_1(~_wgslsmith_dot_vec2_u32(arg_1.zw, vec2<u32>(arg_1.x, u_input.c))).b.a.x;
    var var_0 = true & !func_1(firstLeadingBit(4294967295u)).b.a.x;
    var var_1 = arg_0;
    global2 = 0u;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.a))));
    return all(vec4<bool>(!all(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), true)), any(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true))) != false, ~arg_1.x == arg_1.x, true));
}

fn func_6(arg_0: Struct_3, arg_1: vec4<bool>) -> Struct_1 {
    let var_0 = select(select(select(vec3<bool>(true, any(arg_1.xxw), all(arg_1)), !(!arg_1.yxx), arg_1.www), !select(select(arg_1.xzx, vec3<bool>(false, true, arg_0.b.a.x), vec3<bool>(arg_1.x, true, arg_1.x)), select(arg_1.yxx, vec3<bool>(arg_1.x, arg_1.x, arg_1.x), arg_1.wxz), true), arg_1.x | true), select(arg_1.wzz, !vec3<bool>(arg_0.a > 256f, arg_0.b.a.x, true | arg_1.x), !vec3<bool>(4294967295u <= arg_0.b.c, arg_1.x, !arg_0.b.a.x)), all(arg_1.zxz));
    global0 = arg_0.a;
    global0 = global1[_wgslsmith_index_u32(arg_0.b.b, 7u)];
    global3 = any(!select(vec4<bool>(arg_1.x, all(vec3<bool>(var_0.x, false, false)), arg_1.x, true), vec4<bool>(true, false & arg_1.x, var_0.x, !var_0.x), select(select(arg_1, vec4<bool>(true, var_0.x, arg_0.b.a.x, arg_1.x), arg_1.x), vec4<bool>(true, false, true, false), var_0.x)));
    let var_1 = ~countOneBits(vec2<u32>(~0u & abs(arg_0.b.c), 4294967295u));
    return func_1(~0u).b;
}

fn func_7(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    var var_0 = func_6(Struct_3(-213f, arg_1), !vec4<bool>(all(!arg_0.a), true, true && func_1(4294967295u).b.a.x, !arg_0.a.x));
    global0 = 1725f;
    let var_1 = vec4<u32>(8169u, _wgslsmith_add_u32(~(~max(19172u, var_0.b)), select(6879u, ~(~u_input.c), true)), _wgslsmith_dot_vec4_u32(~select(vec4<u32>(arg_1.c, u_input.c, 4294967295u, arg_0.c) & vec4<u32>(4294967295u, 0u, var_0.c, 98824u), vec4<u32>(4294967295u, arg_0.b, arg_1.b, 0u), arg_0.a.x || arg_1.a.x), vec4<u32>(~var_0.c, ~1u, _wgslsmith_add_u32(min(0u, 40678u), u_input.c & arg_0.b), firstTrailingBit(arg_0.b))), abs(~(~arg_1.b)));
    return arg_1.b | _wgslsmith_mod_u32(~func_6(Struct_3(global1[_wgslsmith_index_u32(34630u, 7u)], arg_1), vec4<bool>(arg_0.a.x, false, true, arg_0.a.x)).c, func_1(_wgslsmith_sub_u32(arg_0.c >> (94647u % 32u), u_input.a)).b.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(i32(-1i) * -1i);
    let var_1 = global1[_wgslsmith_index_u32(func_7(func_6(func_1(abs(u_input.a) ^ ~u_input.c), vec4<bool>(true, true, select(false, u_input.d > 1i, any(vec3<bool>(false, false, true))), func_5(func_2(Struct_1(vec2<bool>(false, false), u_input.c, u_input.a), Struct_5(vec4<f32>(641f, global1[_wgslsmith_index_u32(u_input.c, 7u)], -782f, 1000f), global4[_wgslsmith_index_u32(u_input.c, 10u)]), false, vec4<u32>(u_input.c, 1u, 0u, 72539u)), abs(vec4<u32>(u_input.c, 1u, u_input.c, 15237u))))), Struct_1(select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)), select(func_1(54234u).b.a, vec2<bool>(true, true), vec2<bool>(true, true)), 47939u <= (u_input.a & 4294967295u)), 29600u, 4294967295u)), 7u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.a, 7u)] - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(1u, 7u)])) + _wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(0u, 7u)])))))), _wgslsmith_clamp_vec4_u32(~abs(vec4<u32>(u_input.a, 1241u, 54438u, 7720u)), ~abs(~vec4<u32>(u_input.a, 1u, u_input.c, u_input.c)), vec4<u32>(11607u, u_input.c, u_input.a & func_7(Struct_1(vec2<bool>(true, false), u_input.a, u_input.c), Struct_1(vec2<bool>(true, true), u_input.a, u_input.c)), u_input.c)), u_input.c);
}

