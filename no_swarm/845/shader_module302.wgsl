struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec2<u32>,
    c: f32,
    d: vec2<u32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_5 {
    a: Struct_4,
    b: vec2<f32>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(18532u, 47160u);

var<private> global1: bool;

var<private> global2: vec3<i32> = vec3<i32>(31235i, 2147483647i, i32(-2147483648));

var<private> global3: array<u32, 3> = array<u32, 3>(0u, 1u, 14547u);

var<private> global4: array<Struct_1, 7>;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec2<f32>) -> u32 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(max(1404f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1000f)) * _wgslsmith_f_op_f32(trunc(-526f))))), global4[_wgslsmith_index_u32(~(~48747u), 7u)], global4[_wgslsmith_index_u32(3732u, 7u)], global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(countOneBits(1u), 3u)], 7u)]);
    let var_1 = Struct_3(global2.x, arg_0.ww, var_0.a, vec2<u32>(4294967295u, _wgslsmith_dot_vec2_u32(~select(u_input.c.xx, vec2<u32>(global3[_wgslsmith_index_u32(5679u, 3u)], 83392u), false), ~arg_0.xw)));
    let var_2 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-995f, var_1.c, arg_1.x, arg_1.x))), vec4<f32>(1823f, _wgslsmith_div_f32(-314f, var_1.c), -1850f, _wgslsmith_f_op_f32(f32(-1f) * -611f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c, arg_1.x, var_1.c, arg_1.x)))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-774f, -402f, 1000f, arg_1.x) * vec4<f32>(var_1.c, var_1.c, 746f, 350f)) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1000f, 892f, 821f, arg_1.x)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1192f, 110f, arg_1.x, 535f)), vec4<f32>(arg_1.x, arg_1.x, var_0.c.a.x, 1000f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(763f, -826f, arg_1.x, var_0.a))))) + vec4<f32>(-490f, 761f, _wgslsmith_f_op_f32(exp2(arg_1.x)), var_0.b.a.x)))));
    var var_3 = vec3<u32>(_wgslsmith_clamp_u32(var_1.d.x, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u >> (arg_0.x % 32u), 1u, arg_0.x, global0.x), arg_0), min(_wgslsmith_sub_u32(0u, _wgslsmith_mult_u32(global0.x, 1u)), 0u)), ~(~(~4294967295u) << (_wgslsmith_mod_u32(arg_0.x, ~u_input.b) % 32u)), _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, select(global0.x, 63801u, false), global3[_wgslsmith_index_u32(1u, 3u)], abs(arg_0.x)), firstTrailingBit(countOneBits(u_input.c))), _wgslsmith_dot_vec2_u32(var_1.b, reverseBits(~vec2<u32>(u_input.a, global3[_wgslsmith_index_u32(arg_0.x, 3u)])))));
    let var_4 = true;
    return max(0u, ~(~(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.d.x, var_1.b.x, 83814u, u_input.a), arg_0) >> (var_1.b.x % 32u))));
}

fn func_2(arg_0: f32) -> Struct_5 {
    global4 = array<Struct_1, 7>();
    return Struct_5(Struct_4(_wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(global2.x, -4546i) << (vec2<u32>(0u, global0.x) % vec2<u32>(32u)), global2.yz), firstTrailingBit(global2.zy | global2.zy)), Struct_2(1230f, Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(630f, arg_0) - vec2<f32>(arg_0, arg_0))), global4[_wgslsmith_index_u32(~global0.x | func_3(u_input.c, vec2<f32>(arg_0, 145f)), 7u)], Struct_1(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1307f, -780f))))), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1199f, arg_0)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(273f, _wgslsmith_div_f32(arg_0, arg_0)) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -479f), _wgslsmith_f_op_f32(-arg_0))) * vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1845f, 869f), arg_0)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0 - arg_0), _wgslsmith_f_op_f32(-arg_0))))), vec3<u32>(_wgslsmith_dot_vec4_u32(max(vec4<u32>(global0.x, global3[_wgslsmith_index_u32(4294967295u, 3u)], u_input.b, 4294967295u), ~vec4<u32>(4294967295u, 669u, global3[_wgslsmith_index_u32(2964u, 3u)], 31648u)), select(vec4<u32>(global0.x, 1u, 1u, 1u) ^ vec4<u32>(global0.x, 37652u, 4294967295u, 104887u), u_input.c >> (vec4<u32>(global0.x, global0.x, 0u, global3[_wgslsmith_index_u32(4294967295u, 3u)]) % vec4<u32>(32u)), true)), global0.x, global3[_wgslsmith_index_u32(1u << (countOneBits(global3[_wgslsmith_index_u32(46970u >> (u_input.b % 32u), 3u)]) % 32u), 3u)]));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: Struct_5) -> Struct_3 {
    var var_0 = Struct_4(~((_wgslsmith_div_vec2_i32(vec2<i32>(1i, -1143i), vec2<i32>(-53172i, arg_2.a.a.x)) << (arg_2.c.xz % vec2<u32>(32u))) << (_wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(43139u, 23399u), u_input.c.xy), _wgslsmith_mult_vec2_u32(u_input.c.ww, vec2<u32>(global3[_wgslsmith_index_u32(u_input.b, 3u)], u_input.a))) % vec2<u32>(32u))), arg_2.a.b, Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a.x, arg_0) + _wgslsmith_f_op_vec2_f32(arg_2.a.c.a + arg_1.a)) - _wgslsmith_f_op_vec2_f32(step(arg_1.a, vec2<f32>(arg_2.a.c.a.x, 2558f))))));
    var var_1 = max(vec2<i32>(global2.x, arg_2.a.a.x), firstLeadingBit(vec2<i32>(~(-1i), 2147483647i)) | arg_2.a.a);
    global2 = vec3<i32>(-_wgslsmith_div_i32(2147483647i, abs(global2.x)), _wgslsmith_div_i32(~_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(36282i, -20954i, var_1.x, -50558i), vec4<i32>(var_1.x, var_1.x, var_0.a.x, -19652i), vec4<i32>(2147483647i, 31894i, arg_2.a.a.x, var_1.x)), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.a.x, var_1.x, -2147483647i, arg_2.a.a.x), vec4<i32>(-1i, -16859i, arg_2.a.a.x, 0i), vec4<i32>(var_0.a.x, -14978i, var_0.a.x, 1i))), -2147483647i), firstTrailingBit(max(_wgslsmith_clamp_i32(0i, ~(-21424i), ~(-49802i)), 1i)));
    var var_2 = Struct_5(Struct_4(~firstTrailingBit(global2.yy), var_0.b, arg_1), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(arg_2.a.b.d.a)) + vec2<f32>(_wgslsmith_f_op_f32(arg_1.a.x + var_0.b.d.a.x), _wgslsmith_f_op_f32(arg_1.a.x * -1251f)))), ~u_input.c.zwy << ((vec3<u32>(24590u, u_input.c.x, global0.x) & ~select(vec3<u32>(arg_2.c.x, global3[_wgslsmith_index_u32(arg_2.c.x, 3u)], u_input.b), u_input.c.zxx, true)) % vec3<u32>(32u)));
    var var_3 = true;
    return Struct_3(~max(func_2(var_0.c.a.x).a.a.x, -2147483647i & var_0.a.x), firstLeadingBit(reverseBits(u_input.c.yy)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -269f))), arg_2.c.xx);
}

fn func_1(arg_0: bool, arg_1: f32) -> bool {
    let var_0 = func_4(arg_1, Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - _wgslsmith_f_op_f32(-arg_1)))), func_2(_wgslsmith_f_op_f32(f32(-1f) * -1680f)));
    var var_1 = u_input.c;
    global2 = vec3<i32>(-1i, i32(-1i) * -_wgslsmith_add_i32(2147483647i, var_0.a), global2.x) << (_wgslsmith_div_vec3_u32(vec3<u32>(var_1.x, 1u, var_1.x), vec3<u32>(var_1.x, ~_wgslsmith_mult_u32(var_0.b.x, 1u), ~(global0.x & 4294967295u))) % vec3<u32>(32u));
    global4 = array<Struct_1, 7>();
    global1 = false;
    return !any(vec4<bool>(true, any(!vec4<bool>(false, arg_0, false, true)), true, arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<Struct_1, 7>();
    global1 = false;
    let var_0 = !select(vec4<bool>(func_1(any(vec3<bool>(true, true, true)), -805f), true, true, !any(vec3<bool>(true, false, false))), select(!select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), false), select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), false), vec4<bool>(true, true, true, true), true), any(vec2<bool>(false, true))), vec4<bool>(all(vec2<bool>(true, true)), true, global3[_wgslsmith_index_u32(reverseBits(13293u), 3u)] >= u_input.b, !(0u <= global3[_wgslsmith_index_u32(92889u, 3u)])));
    global1 = true;
    let var_1 = Struct_4(vec2<i32>(global2.x, 0i), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1268f * 777f) + _wgslsmith_f_op_f32(-371f - _wgslsmith_f_op_f32(select(583f, 609f, true)))), Struct_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-765f, 1677f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1526f, 879f)), var_0.x))), func_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-249f + 369f)))).a.b.d, global4[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(_wgslsmith_add_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(22051u, 3u)], 3u)], 3u)], 3u)], global3[_wgslsmith_index_u32(4294967295u, 3u)]) ^ ~0u, 3u)], 7u)]), global4[_wgslsmith_index_u32(global0.x, 7u)]);
    let x = u_input.a;
    s_output = StorageBuffer(-var_1.a.x, ~firstTrailingBit(abs(u_input.b ^ 45077u)));
}

