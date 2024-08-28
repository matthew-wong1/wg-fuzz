struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: bool,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: f32,
    c: i32,
    d: f32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: Struct_2,
    d: Struct_2,
    e: vec4<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: Struct_2,
}

struct Struct_5 {
    a: vec3<u32>,
    b: bool,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: i32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 27> = array<vec4<i32>, 27>(vec4<i32>(2147483647i, 0i, i32(-2147483648), 58430i), vec4<i32>(1i, -23954i, 2147483647i, -25529i), vec4<i32>(-37329i, 1i, -32631i, 2147483647i), vec4<i32>(-1320i, i32(-2147483648), 1i, 22298i), vec4<i32>(i32(-2147483648), 38215i, 17253i, 29758i), vec4<i32>(1i, -1i, -64739i, i32(-2147483648)), vec4<i32>(2147483647i, 26697i, -38093i, -38345i), vec4<i32>(2147483647i, -4752i, -14733i, 4487i), vec4<i32>(-1i, i32(-2147483648), 17383i, -19606i), vec4<i32>(1i, 0i, i32(-2147483648), 0i), vec4<i32>(-31361i, i32(-2147483648), -23708i, 32957i), vec4<i32>(2147483647i, 2147483647i, 39520i, 24580i), vec4<i32>(i32(-2147483648), -25492i, 5855i, 2147483647i), vec4<i32>(i32(-2147483648), 0i, 5588i, 14044i), vec4<i32>(2147483647i, 27864i, 0i, 1i), vec4<i32>(-51554i, -1i, -30006i, 19428i), vec4<i32>(29974i, i32(-2147483648), 2147483647i, -29785i), vec4<i32>(-29314i, 13138i, 0i, -1i), vec4<i32>(i32(-2147483648), 2147483647i, 2147483647i, -98704i), vec4<i32>(-6434i, -11616i, 2147483647i, -20088i), vec4<i32>(0i, 2147483647i, 28930i, -27850i), vec4<i32>(16982i, -79275i, 23545i, 0i), vec4<i32>(-1i, -6003i, 0i, -1i), vec4<i32>(7032i, 1i, i32(-2147483648), 6871i), vec4<i32>(-44791i, -6322i, -1i, 0i), vec4<i32>(-5567i, i32(-2147483648), 0i, i32(-2147483648)), vec4<i32>(-1i, -46593i, 23015i, 0i));

var<private> global1: array<vec4<i32>, 23> = array<vec4<i32>, 23>(vec4<i32>(-43295i, -40116i, 0i, 0i), vec4<i32>(2147483647i, -49976i, 24599i, 1i), vec4<i32>(4468i, -1i, -4518i, 27892i), vec4<i32>(2147483647i, -6522i, 8030i, 2147483647i), vec4<i32>(0i, 20091i, 13238i, 27149i), vec4<i32>(-1i, -15196i, 0i, 54151i), vec4<i32>(11539i, 49120i, 39551i, -36797i), vec4<i32>(0i, 1i, 0i, i32(-2147483648)), vec4<i32>(0i, 2147483647i, -49574i, 3921i), vec4<i32>(-39713i, 0i, 0i, -36970i), vec4<i32>(i32(-2147483648), 1i, -21450i, 2147483647i), vec4<i32>(1i, 11427i, i32(-2147483648), 78153i), vec4<i32>(2147483647i, -1i, 2147483647i, 6208i), vec4<i32>(-25935i, 33655i, i32(-2147483648), -22200i), vec4<i32>(12863i, 1i, 51037i, 7186i), vec4<i32>(0i, -15443i, -67462i, i32(-2147483648)), vec4<i32>(43688i, 2147483647i, -74810i, -1i), vec4<i32>(45732i, 1i, 0i, 1i), vec4<i32>(2147483647i, 2147483647i, 1314i, i32(-2147483648)), vec4<i32>(10114i, -56322i, 28506i, 2147483647i), vec4<i32>(3346i, -41830i, 0i, 1i), vec4<i32>(2147483647i, -1i, 2147483647i, 1i), vec4<i32>(-1i, -48419i, 2147483647i, 0i));

var<private> global2: Struct_2 = Struct_2(vec4<f32>(536f, 473f, 604f, 750f), -797f, i32(-2147483648), -554f);

var<private> global3: f32 = 398f;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3() -> i32 {
    var var_0 = 21438i;
    return _wgslsmith_dot_vec4_i32(max(~global0[_wgslsmith_index_u32(46219u, 27u)], vec4<i32>(-56607i, -2147483647i, _wgslsmith_dot_vec2_i32(u_input.a.zx, vec2<i32>(44119i, -2147483647i)), firstTrailingBit(-2147483647i))), -firstTrailingBit(countOneBits(global1[_wgslsmith_index_u32(28274u, 23u)]))) >> (4294967295u % 32u);
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_5, arg_3: bool) -> f32 {
    let var_0 = Struct_3(u_input.a.xy, global2.a.ww, Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(global2.a)))), _wgslsmith_f_op_f32(min(377f, global2.d)), func_3(), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.b, global2.a.x) - global2.b) * -2603f)), Struct_2(global2.a, global2.d, ~func_3(), 1216f), reverseBits(vec4<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(global2.c, -43987i), u_input.a.zz), firstLeadingBit(u_input.a.x), firstLeadingBit(27025i), global2.c)));
    let var_1 = Struct_4(arg_1, Struct_1(arg_3, arg_1.d.yyz, (-global2.c != -var_0.a.x) | !arg_3, !vec4<bool>(false, arg_3, -1049f < var_0.c.b, arg_1.b.x)), -392f, var_0.c);
    var var_2 = any(select(!select(!vec4<bool>(false, false, arg_2.d.b.x, true), select(vec4<bool>(true, true, true, false), vec4<bool>(arg_1.b.x, false, arg_1.b.x, arg_2.d.a), var_1.a.d), select(vec4<bool>(true, var_1.b.d.x, false, false), vec4<bool>(var_1.a.d.x, true, false, false), vec4<bool>(var_1.b.c, false, true, arg_1.a))), !vec4<bool>(var_1.a.a, true, !arg_1.a, var_1.a.a), true));
    var_2 = arg_1.b.x;
    var var_3 = var_1;
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_3.d.a.x * -1586f), _wgslsmith_f_op_f32(var_0.c.b - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(var_0.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + global2.a.x)))))));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_5) -> vec2<i32> {
    global3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.c.d * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1944f, _wgslsmith_div_f32(1502f, arg_0.d.b)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1312f * arg_0.b.x))) + _wgslsmith_f_op_f32(min(arg_0.d.d, _wgslsmith_f_op_f32(-global2.b)))))));
    var var_0 = Struct_3(-vec2<i32>(1i, arg_0.e.x), vec2<f32>(1000f, arg_0.d.b), Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(global2.b, global2.d, -721f, -690f), vec4<f32>(arg_0.d.d, global2.b, arg_0.c.b, -1026f)))) + vec4<f32>(_wgslsmith_f_op_f32(-global2.b), _wgslsmith_f_op_f32(func_2(arg_1.a.xx, Struct_1(true, vec3<bool>(false, true, arg_1.d.c), arg_1.d.a, arg_1.d.d), Struct_5(arg_1.a, arg_1.d.a, arg_1.b, Struct_1(true, vec3<bool>(true, arg_1.d.d.x, false), arg_1.d.a, arg_1.d.d)), arg_1.c)), -242f, _wgslsmith_f_op_f32(arg_0.b.x * arg_0.c.b))), _wgslsmith_f_op_f32(-arg_0.c.d), 20109i, -700f), Struct_2(global2.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.c.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.b - arg_0.d.b))), 43646i, -1103f), -(firstLeadingBit(global0[_wgslsmith_index_u32(4294967295u, 27u)] >> (vec4<u32>(5282u, u_input.b, arg_1.a.x, u_input.b) % vec4<u32>(32u))) << ((reverseBits(vec4<u32>(17591u, arg_1.a.x, arg_1.a.x, 1504u)) << (_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 47871u, 46046u, arg_1.a.x), vec4<u32>(1u, 18978u, 4294967295u, 4294967295u)) % vec4<u32>(32u))) % vec4<u32>(32u))));
    let var_1 = arg_0.c.a.yw;
    let var_2 = abs(select(max(max(u_input.a, _wgslsmith_div_vec3_i32(vec3<i32>(var_0.c.c, var_0.e.x, -1i), arg_0.e.yxx)), -var_0.e.xyz), select(vec3<i32>(global2.c, arg_0.a.x, -13816i), arg_0.e.xzw, select(arg_1.d.b, arg_1.d.d.wwz, true)), true));
    var_0 = Struct_3(arg_0.e.xx, _wgslsmith_f_op_vec2_f32(-var_0.d.a.xx), Struct_2(vec4<f32>(-1079f, 1357f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(var_1.x, -840f)))), _wgslsmith_f_op_f32(f32(-1f) * -1131f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1019f))), global2.b)), _wgslsmith_div_i32(_wgslsmith_div_i32(var_2.x, -1i), -global2.c), _wgslsmith_f_op_f32(-var_1.x)), Struct_2(vec4<f32>(-2216f, global2.a.x, _wgslsmith_f_op_f32(-arg_0.c.d), var_1.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-571f * global2.a.x), 2381f)))), 0i, arg_0.d.a.x), arg_0.e);
    return arg_0.e.wz;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -(_wgslsmith_mod_vec2_i32(func_1(Struct_3(u_input.a.zx, vec2<f32>(global2.d, 869f), Struct_2(global2.a, global2.b, 1i, 1510f), Struct_2(global2.a, 848f, u_input.a.x, 138f), global1[_wgslsmith_index_u32(u_input.b, 23u)]), Struct_5(vec3<u32>(57369u, u_input.b, 1u), true, false, Struct_1(false, vec3<bool>(true, false, true), false, vec4<bool>(true, true, false, true)))) >> (reverseBits(vec2<u32>(4294967295u, 67064u)) % vec2<u32>(32u)), _wgslsmith_add_vec2_i32(~u_input.a.zx, u_input.a.xz << (vec2<u32>(48213u, u_input.b) % vec2<u32>(32u)))) | abs(select(u_input.a.yy, u_input.a.xx ^ u_input.a.zx, vec2<bool>(true, false))));
    var_0 = abs(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a.x, global2.c ^ 20610i), vec2<i32>(abs(var_0.x), var_0.x), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a.x, -36179i), _wgslsmith_add_vec2_i32(vec2<i32>(global2.c, 2147483647i), vec2<i32>(var_0.x, var_0.x)))) ^ ~abs(vec2<i32>(global2.c, u_input.a.x)));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-209f, -1303f, true)))), global2.b);
    var var_2 = -vec3<i32>(abs(1i), func_1(Struct_3(u_input.a.yy, vec2<f32>(-258f, 1578f), Struct_2(global2.a, 2569f, var_0.x, 1269f), Struct_2(vec4<f32>(-386f, -359f, var_1, 1414f), -705f, var_0.x, var_1), global0[_wgslsmith_index_u32(4294967295u, 27u)]), Struct_5(vec3<u32>(u_input.b, u_input.b, u_input.b), true, true, Struct_1(true, vec3<bool>(true, true, true), true, vec4<bool>(false, true, false, true)))).x ^ 0i, _wgslsmith_mod_i32(global2.c, -var_0.x)) << (~_wgslsmith_clamp_vec3_u32(vec3<u32>(~44087u, _wgslsmith_mod_u32(u_input.b, 3237u), _wgslsmith_clamp_u32(0u, 4294967295u, u_input.b)), ~vec3<u32>(0u, 4294967295u, 0u) | max(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(50221u, 1u, 0u)), vec3<u32>(firstTrailingBit(0u), u_input.b, u_input.b)) % vec3<u32>(32u));
    var_0 = var_2.zy;
    let var_3 = Struct_4(Struct_1(-101f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -404f) - global2.a.x), select(select(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), true), true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true)), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false))), false), false, !select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true)), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true))), Struct_1(all(vec2<bool>(false, all(vec3<bool>(false, true, false)))), vec3<bool>(false, _wgslsmith_sub_u32(0u, 0u) <= min(u_input.b, 1u), !all(vec2<bool>(true, true))), true, select(vec4<bool>(true, any(vec4<bool>(false, true, true, false)), false, false), !select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true)), true)), var_1, Struct_2(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1000f, _wgslsmith_f_op_f32(round(var_1)), _wgslsmith_f_op_f32(step(global2.b, var_1)), var_1))), _wgslsmith_f_op_f32(1810f - -1443f), 0i, global2.d));
    global3 = -567f;
    global3 = 954f;
    var_0 = u_input.a.yy;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(var_2.x, ~_wgslsmith_dot_vec3_i32(u_input.a, ~u_input.a), ~18690i), vec2<i32>(u_input.a.x, _wgslsmith_dot_vec2_i32(abs(var_2.zx), abs(u_input.a.xy)) | abs(-global2.c)), select(~var_3.d.c >> (min(37891u >> (u_input.b % 32u), u_input.b >> (u_input.b % 32u)) % 32u), 3132i, true), var_2.zx);
}

