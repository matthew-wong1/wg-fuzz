struct Struct_1 {
    a: bool,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec3<f32>,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec4<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec2<i32>, 30> = array<vec2<i32>, 30>(vec2<i32>(0i, -29254i), vec2<i32>(14501i, 2147483647i), vec2<i32>(-46655i, -1i), vec2<i32>(57247i, 2147483647i), vec2<i32>(48443i, 19434i), vec2<i32>(-37630i, -21990i), vec2<i32>(-51029i, 0i), vec2<i32>(i32(-2147483648), -38874i), vec2<i32>(1i, -1i), vec2<i32>(0i, -48131i), vec2<i32>(-24797i, 23488i), vec2<i32>(-17487i, -6624i), vec2<i32>(-40826i, 2147483647i), vec2<i32>(70312i, -22029i), vec2<i32>(-20809i, 0i), vec2<i32>(-541i, -1i), vec2<i32>(-67935i, 26577i), vec2<i32>(18401i, i32(-2147483648)), vec2<i32>(-5678i, -43895i), vec2<i32>(2147483647i, -1i), vec2<i32>(0i, 18126i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(40781i, i32(-2147483648)), vec2<i32>(-14144i, i32(-2147483648)), vec2<i32>(1i, -7861i), vec2<i32>(405i, -21643i), vec2<i32>(17705i, -4535i), vec2<i32>(-1i, -1i), vec2<i32>(-1i, 1i), vec2<i32>(-19194i, -24967i));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> f32 {
    global1 = array<vec2<i32>, 30>();
    var var_0 = reverseBits(u_input.a);
    let var_1 = ~(~abs(~abs(vec2<u32>(0u, u_input.a))));
    return _wgslsmith_f_op_f32(abs(182f));
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: Struct_2, arg_3: i32) -> bool {
    let var_0 = arg_2;
    var var_1 = var_0;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) * _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(f32(-1f) * -557f)))));
    let var_3 = Struct_3(u_input.b.x, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(779f, -1000f, 1441f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2209f, -144f, 1906f) - vec3<f32>(-194f, -1681f, 1259f)) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-217f, -158f, -286f), vec3<f32>(-1101f, -544f, 284f))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(2190f, -1651f, -1542f)))))))), countOneBits(33362u), arg_2.a);
    let var_4 = 6699i;
    return false;
}

fn func_1(arg_0: vec2<f32>, arg_1: vec2<i32>) -> Struct_2 {
    global1 = array<vec2<i32>, 30>();
    global0 = u_input.a;
    global1 = array<vec2<i32>, 30>();
    let var_0 = !select(select(!select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true)), vec4<bool>(true, true, true, true), any(vec2<bool>(true, true))), vec4<bool>(false, false, func_2(select(arg_1.x, -17261i, false), max(u_input.b.x, u_input.b.x), Struct_2(Struct_1(true, u_input.b.zy), Struct_1(true, vec2<i32>(-1i, u_input.b.x)), Struct_1(false, global1[_wgslsmith_index_u32(u_input.a, 30u)])), ~(-7164i)), false), all(vec3<bool>(false, true, true)));
    var var_1 = _wgslsmith_f_op_f32(sign(arg_0.x));
    return Struct_2(Struct_1(true, global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(firstTrailingBit(5458u), ~firstLeadingBit(21771u)), 30u)]), Struct_1(false, vec2<i32>(firstTrailingBit(1i), ~u_input.b.x)), Struct_1(var_0.x, vec2<i32>(~(arg_1.x >> (u_input.a % 32u)), 0i)));
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: vec3<u32>) -> vec2<i32> {
    let var_0 = Struct_2(Struct_1(!arg_1.b.a, ~arg_1.c.b), Struct_1(!all(select(vec3<bool>(true, arg_1.b.a, false), vec3<bool>(false, false, false), vec3<bool>(true, arg_1.b.a, true))), u_input.b.yz), Struct_1(!all(select(vec3<bool>(arg_1.b.a, false, arg_1.c.a), vec3<bool>(arg_1.c.a, true, arg_1.b.a), true)), vec2<i32>(u_input.b.x, abs(u_input.b.x))));
    let var_1 = vec2<bool>(true, false);
    var var_2 = Struct_3(-_wgslsmith_sub_i32(_wgslsmith_div_i32(arg_0, _wgslsmith_dot_vec3_i32(u_input.b, u_input.b)), ~_wgslsmith_clamp_i32(var_0.a.b.x, -1i, -45060i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(102f, -281f, 616f)))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(662f, -758f, -767f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1235f, -432f, 830f))))), _wgslsmith_clamp_u32(firstLeadingBit(~u_input.a << (_wgslsmith_div_u32(0u, 53321u) % 32u)), ~(~_wgslsmith_mod_u32(47555u, arg_2.x)), 1u), func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(-925f, 367f), vec2<f32>(338f, 1201f)))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1163f, -1182f) - vec2<f32>(655f, 1485f))), min(vec2<i32>(var_0.b.b.x, _wgslsmith_sub_i32(0i, -1i)), firstLeadingBit(global1[_wgslsmith_index_u32(1u, 30u)]))).b);
    return abs(_wgslsmith_sub_vec2_i32(vec2<i32>(-40758i, var_2.d.b.x), vec2<i32>(arg_0, u_input.b.x)));
}

fn func_5(arg_0: Struct_2) -> u32 {
    var var_0 = arg_0.b;
    return abs(4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(~u_input.b.x);
    global0 = func_5(Struct_2(Struct_1(true, func_4(-var_0, func_1(vec2<f32>(598f, -551f), vec2<i32>(u_input.b.x, var_0)), abs(vec3<u32>(u_input.a, u_input.a, u_input.a)))), func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1818f, 181f) * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(923f, 691f)))), vec2<i32>(_wgslsmith_div_i32(u_input.b.x, u_input.b.x), -var_0)).a, func_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(985f, 925f) + vec2<f32>(-316f, -1097f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-373f, 192f)), true)), vec2<i32>(var_0 & -587i, -1i)).b));
    var var_1 = -(~(vec2<i32>(-var_0, var_0) >> (countOneBits(firstLeadingBit(vec2<u32>(u_input.a, 4294967295u))) % vec2<u32>(32u))));
    var var_2 = func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)) + vec2<f32>(1048f, _wgslsmith_f_op_f32(step(924f, _wgslsmith_f_op_f32(step(1494f, -127f)))))), vec2<i32>(abs(2147483647i) & var_1.x, _wgslsmith_clamp_i32(_wgslsmith_mult_i32(~var_0, firstTrailingBit(var_0)), reverseBits(-1i), _wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.b.x, 2147483647i), abs(vec2<i32>(u_input.b.x, -1i))))));
    global0 = _wgslsmith_mult_u32(19112u, ~u_input.a);
    var var_3 = _wgslsmith_f_op_f32(floor(220f));
    var var_4 = min(firstTrailingBit(vec3<i32>(min(i32(-1i) * -1i, var_1.x), select(~var_2.a.b.x, u_input.b.x, all(vec2<bool>(var_2.c.a, false))), _wgslsmith_sub_i32(0i, var_1.x) | 15589i)), ~vec3<i32>(var_1.x, firstTrailingBit(1i), 2147483647i));
    global0 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -391f))), -114f, 1879f), vec4<u32>(1u, ~(select(u_input.a, 55567u, false) << (~1u % 32u)), ~u_input.a | abs(reverseBits(u_input.a)), firstLeadingBit(u_input.a << (1u % 32u))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1152f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1273f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1239f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-213f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1000f, 1267f, var_2.c.a)), _wgslsmith_div_f32(-559f, -276f)))));
}

