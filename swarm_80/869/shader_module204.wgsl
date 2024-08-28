struct Struct_1 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
    d: vec3<u32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 14> = array<vec4<u32>, 14>(vec4<u32>(4294967295u, 24398u, 12182u, 17630u), vec4<u32>(112176u, 18642u, 58631u, 30399u), vec4<u32>(9913u, 31018u, 45060u, 10155u), vec4<u32>(52545u, 81201u, 50133u, 66082u), vec4<u32>(0u, 5991u, 22953u, 1u), vec4<u32>(74116u, 0u, 1u, 84393u), vec4<u32>(33371u, 81633u, 51743u, 63758u), vec4<u32>(0u, 0u, 1u, 0u), vec4<u32>(15242u, 2484u, 0u, 24883u), vec4<u32>(27888u, 23317u, 114u, 36076u), vec4<u32>(5379u, 1u, 65042u, 23896u), vec4<u32>(4294967295u, 32654u, 10264u, 4294967295u), vec4<u32>(15913u, 1u, 0u, 27411u), vec4<u32>(36461u, 1u, 56953u, 22944u));

var<private> global1: bool;

var<private> global2: vec4<i32> = vec4<i32>(-7511i, -45709i, i32(-2147483648), 1i);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_3) -> vec2<u32> {
    global0 = array<vec4<u32>, 14>();
    global2 = arg_0;
    global2 = arg_0;
    let var_0 = arg_1.c.x;
    var var_1 = Struct_1(_wgslsmith_mod_vec2_u32(~vec2<u32>(0u, _wgslsmith_sub_u32(0u, u_input.b)), firstLeadingBit(min(abs(vec2<u32>(u_input.d, 0u)), vec2<u32>(1u, u_input.b)))), vec4<bool>(var_0, all(arg_1.c) || true, arg_1.a.x <= _wgslsmith_dot_vec4_i32(vec4<i32>(7035i, 2147483647i, arg_0.x, arg_0.x), ~vec4<i32>(69238i, u_input.c, -9566i, global2.x)), !(false && arg_1.c.x)), _wgslsmith_clamp_vec2_i32(~vec2<i32>(i32(-1i) * -31582i, -590i << (u_input.e % 32u)), u_input.a, -reverseBits(firstTrailingBit(arg_1.a))));
    return vec2<u32>(_wgslsmith_clamp_u32(1u, countOneBits(u_input.b) << (_wgslsmith_mod_u32(var_1.a.x, 71579u) % 32u), 12324u), _wgslsmith_mod_u32(4294967295u, _wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(1u, 14u)], global0[_wgslsmith_index_u32(u_input.b, 14u)]))) << (firstTrailingBit(abs(select(var_1.a, vec2<u32>(51135u, var_1.a.x), vec2<bool>(true, var_1.b.x))) << (~(~var_1.a) % vec2<u32>(32u))) % vec2<u32>(32u));
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: Struct_2) -> vec3<i32> {
    let var_0 = countOneBits(~u_input.a);
    let var_1 = Struct_1(arg_2.c.a, arg_2.c.b, u_input.a);
    let var_2 = func_3(_wgslsmith_add_vec4_i32(-arg_2.a, arg_2.a), Struct_3(abs(~_wgslsmith_mult_vec2_i32(vec2<i32>(var_1.c.x, 1i), vec2<i32>(var_1.c.x, arg_1.a.x))), vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(step(arg_1.b.x, _wgslsmith_f_op_f32(f32(-1f) * -900f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(930f))))), !arg_2.c.b.yz));
    global2 = _wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(-vec4<i32>(20765i, ~arg_2.c.c.x, u_input.a.x, -1i), vec4<i32>(i32(-1i) * -2147483647i, var_0.x, _wgslsmith_mod_i32(16663i, abs(-16202i)), abs(abs(var_0.x)))), arg_2.a, arg_2.a);
    let var_3 = Struct_3(_wgslsmith_add_vec2_i32(-vec2<i32>(~var_0.x, -1i), vec2<i32>(2147483647i, ~_wgslsmith_mult_i32(arg_2.c.c.x, -32820i))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(arg_0.xxw)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b.x, arg_0.x, arg_1.b.x)))) - vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(-arg_0.x), 915f))), vec2<bool>(select(!var_1.b.x, !(!var_1.b.x), true), all(select(var_1.b, !vec4<bool>(var_1.b.x, true, arg_1.c.x, true), arg_2.b.b))));
    return vec3<i32>(_wgslsmith_div_i32(-(~0i), -firstLeadingBit(~(-2147483647i))), 1i, firstTrailingBit(_wgslsmith_mod_i32(-24262i, -4253i)));
}

fn func_1(arg_0: u32) -> i32 {
    let var_0 = ~(~vec4<u32>(~(~1012u), ~(~arg_0), _wgslsmith_dot_vec3_u32(select(vec3<u32>(arg_0, 48988u, arg_0), vec3<u32>(u_input.d, arg_0, u_input.e), false), vec3<u32>(27871u, u_input.b, 49019u) ^ vec3<u32>(19464u, u_input.d, 33392u)), arg_0));
    let var_1 = -min(global2.wzz, abs(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(249f, -1000f, 2001f, -2620f)), Struct_3(u_input.a, vec3<f32>(-305f, -930f, -368f), vec2<bool>(true, false)), Struct_2(vec4<i32>(u_input.a.x, 1i, u_input.c, -2147483647i), Struct_1(var_0.xz, vec4<bool>(true, true, true, true), vec2<i32>(u_input.a.x, u_input.c)), Struct_1(var_0.yy, vec4<bool>(true, true, true, true), vec2<i32>(u_input.a.x, 95i)), vec3<u32>(20882u, 0u, arg_0)))));
    let var_2 = u_input.a;
    let var_3 = _wgslsmith_mod_i32(14923i, var_1.x) & u_input.c;
    var var_4 = -184f;
    return _wgslsmith_div_i32(40021i, var_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<u32>, 14>();
    var var_0 = 4768i;
    var var_1 = Struct_1(vec2<u32>(u_input.e, _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e, u_input.d, u_input.e), vec3<u32>(1u, u_input.b, 4294967295u)), 61513u) & ~20581u), select(vec4<bool>(any(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false))), all(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), true)), select(true, any(vec3<bool>(false, false, false)), true), true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), true)), !select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), true), vec4<bool>(true, true, true, true)), all(vec4<bool>(true, true, true, true)) || !all(vec3<bool>(true, false, false))), select(vec2<i32>(func_1(~56342u), min(max(-1i, u_input.a.x), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -40646i, -8161i), global2.xyw))), _wgslsmith_clamp_vec2_i32(global2.xz << (~vec2<u32>(3935u, u_input.d) % vec2<u32>(32u)), reverseBits(u_input.a), -(u_input.a << (vec2<u32>(0u, u_input.b) % vec2<u32>(32u)))), !select(true, false, true)));
    var var_2 = Struct_1(func_3((select(vec4<i32>(-1i, 1i, -35119i, var_1.c.x), vec4<i32>(var_1.c.x, 2147483647i, u_input.a.x, 1i), var_1.b.x) | firstTrailingBit(vec4<i32>(1i, -1i, -10328i, global2.x))) << (global0[_wgslsmith_index_u32(var_1.a.x, 14u)] % vec4<u32>(32u)), Struct_3(-var_1.c, _wgslsmith_f_op_vec3_f32(vec3<f32>(-329f, 2184f, -673f) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-515f, -2061f, -854f)))), var_1.b.wy)), vec4<bool>(all(!var_1.b), var_1.b.x, !(!var_1.b.x | var_1.b.x), true), ~_wgslsmith_sub_vec2_i32(var_1.c, abs(vec2<i32>(-1i, 0i))));
    var var_3 = Struct_1(vec2<u32>(1u, 1u), vec4<bool>(all(vec2<bool>(var_2.b.x, var_2.b.x & var_1.b.x)), !all(!vec2<bool>(var_2.b.x, var_2.b.x)), true, var_2.b.x), _wgslsmith_mod_vec2_i32(abs(_wgslsmith_add_vec2_i32(var_1.c, countOneBits(vec2<i32>(-40336i, -2147483647i)))), select(_wgslsmith_div_vec2_i32(vec2<i32>(611i, 1i) << (var_1.a % vec2<u32>(32u)), global2.yx), u_input.a, var_2.b.yw)));
    let var_4 = Struct_1(~var_1.a, select(!select(!vec4<bool>(true, var_2.b.x, true, false), var_3.b, var_1.b), select(var_1.b, select(var_1.b, vec4<bool>(false, var_3.b.x, false, var_3.b.x), !var_2.b.x), !any(var_3.b)), var_1.b), countOneBits(~(-vec2<i32>(global2.x, 1839i))));
    var_0 = select(25236i, -45479i, var_2.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, _wgslsmith_f_op_f32(f32(-1f) * -875f), _wgslsmith_f_op_f32(1482f * 568f), _wgslsmith_f_op_f32(round(-689f))) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1525f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), -2083f, _wgslsmith_f_op_f32(max(-1725f, -159f)))))), ~(_wgslsmith_div_u32(select(u_input.b, 14301u, true), 21665u) << ((var_3.a.x ^ 0u) % 32u)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-817f, -1000f, 239f)) + vec3<f32>(222f, 731f, -1000f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1615f - 1701f), _wgslsmith_f_op_f32(-855f * -722f), -1815f) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-195f, 1288f, -524f))))));
}

