struct Struct_1 {
    a: f32,
    b: f32,
    c: vec4<bool>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 17> = array<vec2<bool>, 17>(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true));

var<private> global1: Struct_2;

var<private> global2: i32 = -13225i;

var<private> global3: array<bool, 29>;

var<private> global4: array<Struct_1, 31>;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec3<f32>) -> vec4<bool> {
    var var_0 = vec2<bool>(all(vec4<bool>(global1.c.x, !(!global3[_wgslsmith_index_u32(0u, 29u)]), !global1.c.x, global3[_wgslsmith_index_u32(17083u, 29u)])), true);
    var var_1 = ~reverseBits(firstLeadingBit(u_input.c));
    global1 = Struct_2(Struct_1(-170f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.x, -864f, global3[_wgslsmith_index_u32(u_input.c, 29u)] || global1.c.x))), select(global1.c, vec4<bool>(false, var_0.x, !var_0.x, true), global1.c), vec4<bool>(true, global1.c.x, all(global1.a.d), true)), firstTrailingBit(-17577i), global1.a.d);
    var var_2 = Struct_2(Struct_1(-200f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(400f * _wgslsmith_f_op_f32(trunc(362f))))), global1.a.c, global1.c), ~0i, !global1.a.d);
    let var_3 = -_wgslsmith_sub_vec2_i32(-vec2<i32>(var_2.b, global1.b), ~u_input.b.zx) << (select(_wgslsmith_add_vec2_u32(vec2<u32>(11940u, ~69878u), select(abs(vec2<u32>(495u, 4294967295u)), vec2<u32>(u_input.c, 44763u), var_2.a.c.wx)), vec2<u32>(2166u, ~u_input.c) << (~(vec2<u32>(1u, 100682u) ^ vec2<u32>(0u, u_input.c)) % vec2<u32>(32u)), !select(var_2.a.d.xz, select(vec2<bool>(true, var_0.x), global1.c.ww, global1.a.c.x), !global1.c.x)) % vec2<u32>(32u));
    return select(var_2.c, vec4<bool>(true, global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(abs(u_input.c), u_input.c), _wgslsmith_dot_vec2_u32(~vec2<u32>(0u, u_input.c), ~vec2<u32>(0u, u_input.c))), 29u)], true, all(select(select(vec2<bool>(var_0.x, true), vec2<bool>(false, true), var_2.a.d.wx), select(global0[_wgslsmith_index_u32(1u, 17u)], global1.a.c.xz, global1.c.x), vec2<bool>(false, global1.a.c.x)))), vec4<bool>(global1.a.c.x & (true != (776f <= var_2.a.a)), any(global1.c), var_0.x, false));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(global1.a.b, _wgslsmith_f_op_f32(global1.a.a - global1.a.b), select(!global1.a.d, global1.c, global1.a.c.x), !select(func_3(_wgslsmith_div_vec3_f32(vec3<f32>(-846f, 717f, global1.a.a), vec3<f32>(global1.a.b, global1.a.b, global1.a.b))), vec4<bool>(any(global1.c.zz), true, global3[_wgslsmith_index_u32(u_input.c << (u_input.c % 32u), 29u)], global1.a.d.x), global1.a.c));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 302f)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.a)), _wgslsmith_f_op_f32(ceil(global1.a.b)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(global1.a.b)), _wgslsmith_f_op_f32(trunc(-1021f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1269f, var_0.a)) * vec2<f32>(var_0.b, -402f)))));
    global1 = Struct_2(global4[_wgslsmith_index_u32(~(~((u_input.c | u_input.c) | ~1u)), 31u)], _wgslsmith_clamp_i32(~global1.b, ~select(22660i, i32(-1i) * -68711i, global1.c.x && var_0.c.x), 0i), func_3(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(select(var_0.b, 1324f, global3[_wgslsmith_index_u32(26665u, 29u)])), _wgslsmith_f_op_f32(max(-1286f, global1.a.a)), _wgslsmith_f_op_f32(-170f * var_0.a))))));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a + _wgslsmith_f_op_f32(exp2(var_1.x))))), !global1.c, var_0.c);
    var var_3 = Struct_2(global4[_wgslsmith_index_u32(~u_input.c, 31u)], _wgslsmith_add_i32(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(~u_input.a, ~(-39828i)), reverseBits(i32(-1i) * -13167i), 17504i), global1.b), vec4<bool>(u_input.a > _wgslsmith_mult_i32(max(global1.b, u_input.a), u_input.b.x), all(var_2.d.yxx), any(vec4<bool>(global1.a.d.x & false, u_input.c != u_input.c, true, false && var_2.c.x)), true));
    return var_3.a;
}

fn func_1() -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-701f + -232f), -876f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.a.a, global1.a.b))) + -2265f));
    global0 = array<vec2<bool>, 17>();
    let var_1 = _wgslsmith_div_i32(u_input.b.x, global1.b);
    var var_2 = func_2();
    let var_3 = Struct_2(global1.a, -(~var_1), vec4<bool>(!(any(vec4<bool>(global3[_wgslsmith_index_u32(u_input.c, 29u)], global1.a.d.x, true, false)) | all(vec3<bool>(global1.c.x, global3[_wgslsmith_index_u32(u_input.c, 29u)], false))), var_2.c.x & true, (_wgslsmith_sub_u32(0u, u_input.c) << (~9058u % 32u)) >= _wgslsmith_dot_vec4_u32(~vec4<u32>(5448u, 1u, u_input.c, u_input.c), _wgslsmith_sub_vec4_u32(vec4<u32>(18627u, u_input.c, u_input.c, u_input.c), vec4<u32>(u_input.c, u_input.c, 0u, 4294967295u))), 5469u <= ~(~u_input.c)));
    return ~(~u_input.b.zz);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<bool>, 17>();
    let var_0 = global1.c.x;
    var var_1 = -reverseBits(reverseBits(vec4<i32>(-2147483647i, -1i, u_input.b.x, 1i)) << (~_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, u_input.c, 4294967295u, 1u), vec4<u32>(u_input.c, 7203u, 0u, 4294967295u)) % vec4<u32>(32u)));
    var_1 = vec4<i32>(-_wgslsmith_div_i32(-3277i, i32(-1i) * -1i), global1.b, i32(-1i) * -var_1.x, u_input.a);
    global3 = array<bool, 29>();
    var var_2 = countOneBits(min(func_1(), var_1.xz));
    var_2 = vec2<i32>(((countOneBits(0i) >> (_wgslsmith_mult_u32(116090u, u_input.c) % 32u)) >> (u_input.c % 32u)) & _wgslsmith_mod_i32(~(-8849i), _wgslsmith_dot_vec4_i32(vec4<i32>(25117i, var_1.x, -14756i, var_1.x) << (vec4<u32>(4294967295u, u_input.c, u_input.c, 8371u) % vec4<u32>(32u)), vec4<i32>(2147483647i, var_2.x, -5835i, -2288i))), ~global1.b);
    let var_3 = _wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_add_i32(-global1.b, 1i), func_1().x | u_input.a), -select(vec2<i32>(global1.b, 11692i) >> (vec2<u32>(20448u, 0u) % vec2<u32>(32u)), vec2<i32>(-32713i, -1i), vec2<bool>(global3[_wgslsmith_index_u32(69836u, 29u)], false))) & vec2<i32>(_wgslsmith_mult_i32(var_2.x, _wgslsmith_dot_vec2_i32(vec2<i32>(var_2.x, global1.b), var_1.yw)) >> (~1u % 32u), 4612i);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(~var_3.x, 0i, _wgslsmith_mult_i32(u_input.b.x, _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_3.x, -2147483647i, 1341i), vec3<i32>(1i, 54186i, u_input.a)), 1i, 2147483647i)), -var_1.x));
}

