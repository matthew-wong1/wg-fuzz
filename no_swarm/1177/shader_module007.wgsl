struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: bool,
    d: i32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: vec2<i32>,
    d: Struct_1,
    e: vec2<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: vec2<i32>,
    d: vec3<f32>,
    e: Struct_1,
}

struct Struct_5 {
    a: f32,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec4<i32>,
    e: i32,
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

var<private> global0: vec3<f32>;

var<private> global1: vec3<u32>;

var<private> global2: Struct_5;

var<private> global3: array<u32, 24>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: f32) -> i32 {
    global3 = array<u32, 24>();
    var var_0 = global2.b.d;
    return 2147483647i;
}

fn func_2() -> vec2<u32> {
    let var_0 = Struct_4(Struct_2(0u), Struct_3(global0.x, global2.b.d.c, u_input.a.xy, Struct_1(-704f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a, -1099f, global0.x, global0.x)), select(false, global2.b.d.b.x <= -713f, global2.b.b), -(~u_input.e), vec4<i32>(-30212i, -1i, global2.b.c.x, reverseBits(u_input.d.x))), global1.zz), abs(vec2<i32>(func_3(-u_input.d.x, firstLeadingBit(1i), _wgslsmith_f_op_f32(abs(2330f))), abs(_wgslsmith_mult_i32(27468i, global2.b.c.x)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, global2.b.d.b.x)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(global2.b.d.b.xwx, vec3<f32>(-1249f, global0.x, -1571f))))), select(!vec3<bool>(global2.b.b, global2.b.b, global2.b.d.c), vec3<bool>(true, false, global2.b.d.c), all(vec3<bool>(global2.b.b, false, global2.b.d.c))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, _wgslsmith_f_op_f32(round(global0.x)), global0.x)), true)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.b.a) * _wgslsmith_f_op_f32(sign(global2.b.d.b.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(578f, global2.a, false)), -771f, global2.a, _wgslsmith_f_op_f32(-1294f + -1447f))), 334f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.x))), global2.b.d.e.x, ~u_input.d));
    global3 = array<u32, 24>();
    var var_1 = select(!select(vec3<bool>(5024i <= u_input.e, all(vec4<bool>(true, true, true, global2.b.d.c)), true), select(vec3<bool>(global2.b.b, global2.b.b, var_0.e.c), !vec3<bool>(global2.b.d.c, var_0.e.c, true), select(vec3<bool>(var_0.b.d.c, false, var_0.e.c), vec3<bool>(true, var_0.b.d.c, var_0.e.c), var_0.e.c)), vec3<bool>(var_0.e.c, -379f == global2.a, global2.b.b)), !select(!vec3<bool>(true, false, var_0.b.d.c), vec3<bool>(var_0.e.c, false, select(false, global2.b.d.c, false)), select(!vec3<bool>(false, global2.b.b, false), select(vec3<bool>(true, var_0.e.c, var_0.b.b), vec3<bool>(global2.b.d.c, false, false), vec3<bool>(true, global2.b.b, global2.b.b)), vec3<bool>(global2.b.d.c, true, var_0.e.c))), vec3<bool>(var_0.b.b, true, false));
    global0 = global2.b.d.b.wyx;
    global1 = abs(max(vec3<u32>(_wgslsmith_add_u32(global2.b.e.x, global2.b.e.x), 0u, ~u_input.c.x), ~vec3<u32>(var_0.a.a, 62137u, 1u))) ^ vec3<u32>(57263u, ~(~_wgslsmith_sub_u32(1u, u_input.c.x)), var_0.a.a);
    return var_0.b.e;
}

fn func_1(arg_0: u32, arg_1: vec2<bool>, arg_2: Struct_5) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b.d.a));
    global1 = vec3<u32>(~global2.b.e.x, _wgslsmith_dot_vec2_u32(min(countOneBits(vec2<u32>(4294967295u, 0u)), func_2()) & u_input.c, global2.b.e), 1u);
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global0.x, global2.a))) + _wgslsmith_f_op_vec2_f32(-global0.yy))))));
    let var_2 = arg_2;
    var var_3 = vec3<i32>(21989i, max(1i, ~(-1i)), abs(u_input.d.x));
    return Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(433f, _wgslsmith_f_op_f32(step(global0.x, global0.x)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1024f + global2.a))) + _wgslsmith_f_op_f32(f32(-1f) * -2430f)), false, vec2<i32>(min(~(-2147483647i), global2.b.c.x), countOneBits(~5153i) >> (~global1.x % 32u)), Struct_1(_wgslsmith_f_op_f32(exp2(global2.a)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(var_2.b.d.b, vec4<f32>(-2146f, 423f, -312f, 823f), global2.b.d.c)) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(var_2.b.d.b)), arg_2.b.d.b)), false, 10589i, u_input.d), vec2<u32>(~22753u, 24802u));
}

fn func_4(arg_0: Struct_3, arg_1: u32, arg_2: vec4<u32>) -> u32 {
    global3 = array<u32, 24>();
    let var_0 = select(vec2<bool>(global2.b.b, select(all(vec4<bool>(global2.b.d.c, global2.b.d.c, false, false)) && true, !all(vec4<bool>(global2.b.d.c, global2.b.b, global2.b.d.c, global2.b.b)), arg_0.d.c)), vec2<bool>(any(select(select(vec3<bool>(arg_0.d.c, true, true), vec3<bool>(true, false, arg_0.d.c), true), vec3<bool>(false, false, global2.b.b), false)), (16385i > _wgslsmith_dot_vec3_i32(vec3<i32>(global2.b.d.d, global2.b.d.d, -2147483647i), u_input.a)) == (~20818u == arg_2.x)), select(!vec2<bool>(true, arg_0.b), select(!(!vec2<bool>(global2.b.b, true)), select(vec2<bool>(false, true), vec2<bool>(false, true), !arg_0.b), !all(vec2<bool>(arg_0.b, true))), !(!(u_input.c.x <= global1.x))));
    var var_1 = !all(vec2<bool>(any(vec4<bool>(false, true, var_0.x, var_0.x)), !all(vec4<bool>(false, true, arg_0.d.c, global2.b.d.c))));
    global0 = global2.b.d.b.wwx;
    let var_2 = ~arg_0.e.x;
    return arg_1;
}

fn func_5(arg_0: u32) -> u32 {
    var var_0 = global2.a;
    var var_1 = Struct_2(4294967295u ^ (firstLeadingBit(global2.b.e.x ^ 13287u) << (46272u % 32u)));
    let var_2 = ~u_input.c.x;
    var var_3 = global2.b.c.x;
    let var_4 = Struct_4(Struct_2(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, 4294967295u, 49817u) >> ((vec3<u32>(40007u, 1u, var_2) >> (vec3<u32>(var_1.a, var_1.a, 4294967295u) % vec3<u32>(32u))) % vec3<u32>(32u)), min(vec3<u32>(76471u, 4294967295u, var_1.a), abs(vec3<u32>(27069u, 83537u, var_1.a))))), global2.b, vec2<i32>(-5859i, u_input.a.x), _wgslsmith_f_op_vec3_f32(-global2.b.d.b.wyz), Struct_1(func_1(~4294967295u, select(vec2<bool>(true, true), vec2<bool>(global2.b.d.c, true), all(vec2<bool>(global2.b.b, global2.b.b))), Struct_5(global2.a, Struct_3(global2.b.d.b.x, global2.b.d.c, vec2<i32>(u_input.e, -10400i), global2.b.d, global2.b.e))).a, _wgslsmith_f_op_vec4_f32(global2.b.d.b - _wgslsmith_f_op_vec4_f32(global2.b.d.b + global2.b.d.b)), any(select(!vec4<bool>(true, true, global2.b.b, global2.b.b), !vec4<bool>(false, true, global2.b.b, global2.b.d.c), vec4<bool>(global2.b.d.c, global2.b.b, true, global2.b.b))), -u_input.a.x, _wgslsmith_mod_vec4_i32(global2.b.d.e, _wgslsmith_add_vec4_i32(global2.b.d.e, vec4<i32>(6938i, global2.b.d.e.x, global2.b.c.x, 20101i)))));
    return 22176u >> (~(~(func_4(Struct_3(-523f, false, vec2<i32>(-77031i, 1i), var_4.e, vec2<u32>(var_2, 4294967295u)), global3[_wgslsmith_index_u32(13591u, 24u)], vec4<u32>(arg_0, 1322u, var_4.a.a, var_2)) ^ (global2.b.e.x << (1u % 32u)))) % 32u);
}

fn func_6(arg_0: vec2<f32>, arg_1: vec2<bool>, arg_2: vec4<u32>, arg_3: Struct_5) -> Struct_1 {
    let var_0 = _wgslsmith_div_u32(abs(global2.b.e.x), global2.b.e.x);
    global2 = Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_1(15771u, arg_1, arg_3).a) * global0.x), Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -759f), !any(vec4<bool>(arg_3.b.b, global2.b.d.c, false, arg_1.x)), arg_3.b.c, func_1(var_0 << (24999u % 32u), arg_1, arg_3).d, vec2<u32>(select(23091u, 10476u, false), reverseBits(_wgslsmith_add_u32(var_0, 0u)))));
    var var_1 = abs(arg_3.b.e.x ^ _wgslsmith_mod_u32(arg_3.b.e.x, _wgslsmith_dot_vec4_u32(~arg_2, firstTrailingBit(arg_2))));
    var var_2 = 14611u;
    var var_3 = vec3<i32>(max(_wgslsmith_sub_i32(_wgslsmith_mod_i32(-1i, -u_input.e), ~(~(-3585i))), u_input.e), firstLeadingBit(abs(max(43034i ^ arg_3.b.d.e.x, -global2.b.c.x))), -7274i);
    return Struct_1(186f, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(391f, 265f, global2.b.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), global2.a, _wgslsmith_f_op_f32(sign(-529f))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(630f, -816f, global2.b.d.a, global2.b.d.b.x))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -386f), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(step(arg_0.x, global0.x)), _wgslsmith_f_op_f32(-arg_3.a)))), true, abs(2147483647i), abs(_wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(arg_3.b.c.x, u_input.d.x, 2147483647i, -15384i), vec4<i32>(global2.b.c.x, -21100i, u_input.e, arg_3.b.d.d)), vec4<i32>(-2147483647i, arg_3.b.c.x, arg_3.b.d.d, 0i)), ~(vec4<i32>(40482i, -18370i, arg_3.b.d.d, var_3.x) << (vec4<u32>(16821u, arg_2.x, arg_2.x, global1.x) % vec4<u32>(32u))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~firstTrailingBit(_wgslsmith_sub_vec3_u32(~(~vec3<u32>(u_input.c.x, 13991u, global2.b.e.x)), firstLeadingBit(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c.x, 43233u, u_input.c.x), vec3<u32>(0u, 24545u, global1.x)))));
    var var_0 = func_6(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(global0.yy))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1220f, global2.b.a) - vec2<f32>(global0.x, 918f))))))), vec2<bool>(global2.b.d.c, true), vec4<u32>(_wgslsmith_div_u32(~global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global3[_wgslsmith_index_u32(u_input.c.x, 24u)], 4294967295u), vec2<u32>(76887u, u_input.c.x)), 24u)], ~(global3[_wgslsmith_index_u32(3515u, 24u)] ^ 55173u)), ~_wgslsmith_dot_vec2_u32(~global1.zy, firstTrailingBit(global2.b.e)), func_5(func_4(func_1(1u, vec2<bool>(true, global2.b.b), Struct_5(-703f, global2.b)), 20323u, select(vec4<u32>(12878u, 0u, u_input.c.x, global1.x), vec4<u32>(4294967295u, global3[_wgslsmith_index_u32(32795u, 24u)], u_input.c.x, u_input.c.x), true))), u_input.c.x), Struct_5(159f, Struct_3(-1231f, global2.b.d.c, -(vec2<i32>(5088i, u_input.b.x) >> (vec2<u32>(4294967295u, 0u) % vec2<u32>(32u))), Struct_1(892f, _wgslsmith_f_op_vec4_f32(-global2.b.d.b), any(vec3<bool>(false, global2.b.d.c, true)), global2.b.c.x, global2.b.d.e), ~vec2<u32>(35182u, 41176u))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_u32(global1.x, 4294967295u) << ((_wgslsmith_div_u32(u_input.c.x, global3[_wgslsmith_index_u32(min(u_input.c.x, 1u), 24u)]) | (9204u | min(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 24u)], 24u)], 19273u))) % 32u));
}

