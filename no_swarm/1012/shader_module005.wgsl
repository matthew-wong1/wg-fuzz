struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: f32,
    d: Struct_2,
    e: vec4<f32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: vec4<f32>,
}

struct Struct_5 {
    a: u32,
    b: u32,
    c: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec2<u32>, 12> = array<vec2<u32>, 12>(vec2<u32>(1u, 18631u), vec2<u32>(1243u, 2046u), vec2<u32>(1u, 1u), vec2<u32>(1u, 13229u), vec2<u32>(41820u, 64941u), vec2<u32>(47980u, 49584u), vec2<u32>(1u, 4294967295u), vec2<u32>(63629u, 4294967295u), vec2<u32>(24193u, 2864u), vec2<u32>(38454u, 4294967295u), vec2<u32>(0u, 1u), vec2<u32>(4294967295u, 1u));

var<private> global2: bool;

var<private> global3: Struct_5;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_5) -> u32 {
    var var_0 = vec4<u32>(abs(~12703u), ~min(global3.b, ~max(u_input.a, global3.b)), _wgslsmith_sub_u32(reverseBits(global3.c.d.b.a << (17634u % 32u)) & ~24901u, ~reverseBits(34796u)), ~countOneBits(29746u) ^ (~select(34534u, 0u, false) >> (~(~4294967295u) % 32u)));
    global1 = array<vec2<u32>, 12>();
    var var_1 = global0.b.x;
    var var_2 = Struct_1(0u, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.x)), _wgslsmith_f_op_f32(-global0.b.x)), !(!(true | global3.c.b.c.c)) | arg_0.c.d.b.c);
    var var_3 = vec2<u32>(4294967295u, var_2.a);
    return abs(_wgslsmith_dot_vec3_u32(select(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 92764u, arg_0.a), vec3<u32>(1u, var_3.x, u_input.c.x)), vec3<u32>(4294967295u, var_0.x, u_input.b), !var_2.c), ~var_0.zyw ^ var_0.wzz) << (var_3.x % 32u));
}

fn func_2() -> bool {
    let var_0 = -_wgslsmith_mod_vec3_i32(-(~vec3<i32>(1i, 1i, 1i)), _wgslsmith_clamp_vec3_i32(~(-vec3<i32>(23195i, 21385i, -26425i)), -vec3<i32>(1i, 3243i, 14788i), ~(-vec3<i32>(2147483647i, -16863i, 0i))));
    var var_1 = ~(-vec3<i32>(~_wgslsmith_clamp_i32(var_0.x, var_0.x, var_0.x), 1i, -2147483647i ^ var_0.x));
    var var_2 = Struct_3(true, global3.c.d, _wgslsmith_div_f32(global3.c.e.x, _wgslsmith_f_op_f32(853f - global3.c.d.b.b.x)), global3.c.d, global3.c.e);
    let var_3 = true;
    var var_4 = Struct_4(vec2<u32>(func_3(Struct_5(global3.b | 0u, ~1u, Struct_3(false, var_2.b, -573f, Struct_2(var_2.e.zx, Struct_1(4294967295u, var_2.e.wz, false), global3.c.b.b), global3.c.e))), (~35057u | _wgslsmith_dot_vec2_u32(global1[_wgslsmith_index_u32(global0.a, 12u)], vec2<u32>(var_2.b.c.a, 24029u))) & ~_wgslsmith_dot_vec4_u32(u_input.c, u_input.c)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(global0.b))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(106f, -331f) * vec2<f32>(global0.b.x, 209f)), vec2<f32>(-1553f, 628f)))), global3.c.d.a), _wgslsmith_f_op_vec4_f32(global3.c.e + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-global3.c.e)))));
    return false;
}

fn func_4(arg_0: Struct_1) -> f32 {
    var var_0 = vec4<i32>(firstTrailingBit(-1i), 1i, _wgslsmith_div_i32(5460i, _wgslsmith_dot_vec2_i32(vec2<i32>(~630i, ~(-2147483647i)), vec2<i32>(1i, 1i))), (reverseBits(_wgslsmith_clamp_i32(1i, -27275i, 2147483647i)) | _wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(1i, -2147483647i)), ~vec2<i32>(-22650i, 37111i))) >> (94557u % 32u));
    let var_1 = !select(!select(select(vec4<bool>(true, false, global3.c.d.b.c, true), vec4<bool>(true, global0.c, arg_0.c, global3.c.a), vec4<bool>(global0.c, false, true, arg_0.c)), select(vec4<bool>(true, false, true, global0.c), vec4<bool>(global3.c.b.c.c, global3.c.d.c.c, global0.c, true), global3.c.d.b.c), !vec4<bool>(arg_0.c, global0.c, false, true)), !vec4<bool>(global3.c.d.b.c & global3.c.a, select(arg_0.c, false, true), false != arg_0.c, !global3.c.a), vec4<bool>(select(global0.c, any(vec2<bool>(false, true)), !global3.c.b.b.c), any(!vec4<bool>(arg_0.c, true, global0.c, false)), false, false || global3.c.a));
    var var_2 = Struct_3(true, global3.c.b, -650f, global3.c.d, global3.c.e);
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -503f);
    var var_4 = arg_0.a;
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-255f - _wgslsmith_f_op_f32(-var_2.b.b.b.x))));
}

fn func_1() -> Struct_5 {
    global3 = Struct_5(min(global0.a, 21623u), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(firstLeadingBit(u_input.c.x), u_input.c.x, global0.a, 31400u), min(vec4<u32>(global0.a, 110541u, 1u, global3.a) & vec4<u32>(42843u, 1u, global3.b, global3.a), ~vec4<u32>(global0.a, 30208u, 1u, global0.a))), u_input.c), Struct_3(global3.a <= 14672u, Struct_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1010f, -2292f))), vec2<f32>(global3.c.d.b.b.x, -183f), global3.c.d.b.c)), global3.c.b.b, Struct_1(global3.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(625f, global0.b.x)), true)), _wgslsmith_f_op_f32(func_4(Struct_1(u_input.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(global3.c.c, 670f) * vec2<f32>(-1303f, global0.b.x)), func_2()))), global3.c.b, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -760f), -717f, _wgslsmith_f_op_f32(ceil(-1176f)), _wgslsmith_f_op_f32(-global0.b.x)) * global3.c.e)));
    let var_0 = !select(vec2<bool>(global3.c.b.c.c, true), select(!select(vec2<bool>(true, global0.c), vec2<bool>(global3.c.b.c.c, true), vec2<bool>(global0.c, false)), select(select(vec2<bool>(false, global0.c), vec2<bool>(global3.c.b.c.c, global3.c.a), global0.c), vec2<bool>(false, global3.c.b.c.c), 4294967295u > global3.a), all(!vec2<bool>(global3.c.a, global0.c))), false);
    let var_1 = all(select(vec3<bool>(any(vec3<bool>(global0.c, global0.c, false)), select(true, global3.c.a, global0.c), var_0.x), !select(vec3<bool>(true, true, var_0.x), vec3<bool>(false, true, false), vec3<bool>(global3.c.a, false, true)), global3.b < 28527u)) != var_0.x;
    let var_2 = 0i;
    global1 = array<vec2<u32>, 12>();
    return Struct_5(_wgslsmith_dot_vec2_u32(global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(~u_input.a, func_3(Struct_5(u_input.a, 1u, global3.c))), 12u)], countOneBits(~global1[_wgslsmith_index_u32(global3.a, 12u)] & ~u_input.c.wz)), 22275u, Struct_3(var_0.x && any(var_0), global3.c.d, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.c.b.c.b.x), _wgslsmith_f_op_f32(-global0.b.x))), Struct_2(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1426f, -170f))), global3.c.d.b, global3.c.d.b), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.b.x), -807f), 324f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.b.x - 1029f))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(global3.c.d.b.b.x, 161f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_1();
    global1 = array<vec2<u32>, 12>();
    var var_0 = vec2<i32>(~(~(-(~98694i))), _wgslsmith_add_i32(_wgslsmith_mult_i32(1i << (abs(global0.a) % 32u), -2147483647i), _wgslsmith_sub_i32(-1i, -_wgslsmith_mod_i32(7991i, -29257i))));
    var var_1 = _wgslsmith_add_vec2_u32(vec2<u32>(global0.a, func_3(Struct_5(0u, 1u, global3.c))), vec2<u32>(~(0u >> (_wgslsmith_mod_u32(global0.a, 4294967295u) % 32u)), _wgslsmith_dot_vec4_u32(vec4<u32>(39315u, 4738u, ~global3.b, global3.a), _wgslsmith_add_vec4_u32(u_input.c, u_input.c ^ u_input.c))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global3.c.b.c.b.x), global3.c.d.a.x, -728f, global0.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.yxx, ~func_3(Struct_5(_wgslsmith_mod_u32(0u, 17507u), 4294967295u & global3.b, global3.c)));
}

