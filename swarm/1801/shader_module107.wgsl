struct Struct_1 {
    a: i32,
    b: bool,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 28> = array<vec4<bool>, 28>(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true));

var<private> global1: array<Struct_1, 13>;

var<private> global2: array<vec2<f32>, 12> = array<vec2<f32>, 12>(vec2<f32>(551f, 1046f), vec2<f32>(-978f, -1355f), vec2<f32>(-725f, 359f), vec2<f32>(249f, -457f), vec2<f32>(-1000f, 133f), vec2<f32>(-254f, -1000f), vec2<f32>(261f, -722f), vec2<f32>(-647f, 538f), vec2<f32>(367f, -1117f), vec2<f32>(-117f, -573f), vec2<f32>(-399f, -323f), vec2<f32>(1259f, -1000f));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-874f, 1081f, 1f))));
    let var_1 = !(!vec4<bool>(!select(true, false, true), true, any(vec3<bool>(false, false, true)), true));
    var var_2 = global1[_wgslsmith_index_u32(max(~1u, min(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(1u, 1u, 1u)), 70195u)), 13u)];
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -712f), _wgslsmith_f_op_f32(ceil(var_0.x)), _wgslsmith_f_op_f32(ceil(-2017f)), 627f);
    var var_4 = var_1.x;
    return ~vec4<i32>(-(abs(-2147483647i) | (var_2.a >> (4294967295u % 32u))), -14186i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.c.x, u_input.b, var_2.c.x, var_2.c.x), vec4<i32>(var_2.c.x, var_2.c.x, -2147483647i, var_2.a) | var_2.c) >> (~_wgslsmith_mult_u32(1u, 4294967295u) % 32u), _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(var_2.c.x, u_input.b), var_2.c.zx), var_2.c.wz >> (vec2<u32>(49303u, 1u) % vec2<u32>(32u))), ~_wgslsmith_mod_i32(-66495i, -2147483647i)));
}

fn func_2(arg_0: vec3<i32>, arg_1: u32) -> vec4<bool> {
    let var_0 = vec2<f32>(-439f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -193f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1149f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1276f, -1552f)) + _wgslsmith_f_op_f32(f32(-1f) * -319f)))));
    var var_1 = Struct_1(_wgslsmith_dot_vec4_i32(~vec4<i32>(arg_0.x, u_input.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, arg_0.x), u_input.a.zy), -2147483647i & arg_0.x), ~(vec4<i32>(14031i, u_input.b, arg_0.x, -59302i) >> (vec4<u32>(1u, arg_1, 4294967295u, 52345u) % vec4<u32>(32u))) ^ _wgslsmith_add_vec4_i32(-vec4<i32>(0i, u_input.a.x, -2147483647i, u_input.a.x), firstLeadingBit(vec4<i32>(u_input.a.x, 0i, 6685i, arg_0.x)))), -1020f < _wgslsmith_f_op_f32(350f * _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-var_0.x))), func_3());
    let var_2 = _wgslsmith_div_i32(arg_0.x, ~arg_0.x) >> (~22254u % 32u);
    let var_3 = arg_1 >> (_wgslsmith_dot_vec2_u32(~_wgslsmith_add_vec2_u32(~vec2<u32>(3484u, arg_1), vec2<u32>(35251u, arg_1)), ~(~max(vec2<u32>(arg_1, arg_1), vec2<u32>(arg_1, arg_1)))) % 32u);
    let var_4 = true;
    return !vec4<bool>(all(select(!vec2<bool>(var_4, false), select(vec2<bool>(false, false), vec2<bool>(var_1.b, var_4), vec2<bool>(true, var_1.b)), select(vec2<bool>(var_1.b, true), vec2<bool>(var_4, false), var_4))), select(var_4, select(653f == var_0.x, false, true), !all(vec2<bool>(var_1.b, var_4))), true, var_1.b);
}

fn func_1(arg_0: vec3<f32>, arg_1: vec3<i32>, arg_2: bool) -> i32 {
    var var_0 = -2051f;
    var_0 = _wgslsmith_f_op_f32(-2122f * arg_0.x);
    let var_1 = func_2(_wgslsmith_mult_vec3_i32(vec3<i32>(-(~(-24738i)), _wgslsmith_mod_i32(arg_1.x, -30922i) & (arg_1.x >> (0u % 32u)), 19222i), abs(vec3<i32>(10828i, -2147483647i, _wgslsmith_add_i32(0i, 54022i)))), abs(~_wgslsmith_div_u32(~1u, 4294967295u)));
    var var_2 = false;
    let var_3 = 1i;
    return abs(var_3);
}

fn func_4(arg_0: vec4<i32>, arg_1: bool) -> vec3<f32> {
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-609f, -2048f, -412f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(400f, -1127f, 1332f))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1786f, -1151f, -103f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))));
}

fn func_5(arg_0: vec3<f32>, arg_1: bool, arg_2: Struct_1) -> vec2<u32> {
    let var_0 = select(~(~vec2<u32>(4294967295u, 31566u)), vec2<u32>(1u, 1u), !select(func_2(arg_2.c.zyz, 7981u).yz, select(vec2<bool>(arg_2.b, arg_1), vec2<bool>(arg_2.b, false), true), !vec2<bool>(true, arg_1))) | select(~vec2<u32>(1u, 1u), vec2<u32>(14175u, _wgslsmith_sub_u32(abs(47141u), 1u)), func_2(_wgslsmith_clamp_vec3_i32(vec3<i32>(-47086i, -82250i, arg_2.a), arg_2.c.wyy << (vec3<u32>(4294967295u, 0u, 46999u) % vec3<u32>(32u)), vec3<i32>(-26143i, -50259i, arg_2.c.x)), ~4294967295u).x);
    let var_1 = arg_2;
    var var_2 = arg_0.zx;
    let var_3 = Struct_1(_wgslsmith_clamp_i32(arg_2.c.x, u_input.b, var_1.a), select(!(arg_2.b || arg_2.b), true, -338f >= _wgslsmith_f_op_f32(max(arg_0.x, 879f))) && (!(false && arg_2.b) && !(!arg_1)), vec4<i32>(95682i, min(-2147483647i, reverseBits(u_input.a.x)), reverseBits(var_1.a), var_1.c.x) | -vec4<i32>(~var_1.a, -u_input.b, i32(-1i) * -2077i, -6867i));
    global1 = array<Struct_1, 13>();
    return ~max(var_0, var_0);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(func_5(_wgslsmith_f_op_vec3_f32(func_4(vec4<i32>(func_1(vec3<f32>(1248f, -1002f, -775f), u_input.a, true), countOneBits(u_input.b), i32(-1i) * -2147483647i, ~u_input.b), any(vec3<bool>(true, true, true)))), true, global1[_wgslsmith_index_u32(38659u, 13u)]), vec2<u32>(1u, 1u));
    var var_1 = firstLeadingBit(~abs(select(vec3<u32>(1u, var_0.x, 4294967295u), vec3<u32>(52289u, var_0.x, var_0.x), all(vec3<bool>(false, false, false)))));
    var var_2 = global1[_wgslsmith_index_u32(~var_0.x, 13u)];
    let var_3 = max(abs(select(vec3<u32>(539u, var_1.x, 55690u), _wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.x, var_1.x, 4294967295u), vec3<u32>(var_0.x, 19839u, 1u), vec3<u32>(var_0.x, 24722u, 80779u)), !vec3<bool>(false, var_2.b, var_2.b))), max(~vec3<u32>(var_0.x, 4294967295u, 118091u), _wgslsmith_add_vec3_u32(~vec3<u32>(var_0.x, 4294967295u, 1u), vec3<u32>(1u, 4294967295u, 0u) | vec3<u32>(var_0.x, var_0.x, 8585u)))) | firstTrailingBit(~vec3<u32>(108085u, 23738u, 0u) | vec3<u32>(firstLeadingBit(4294967295u), ~46487u, var_1.x | 15920u));
    var_1 = (var_3 >> (_wgslsmith_div_vec3_u32(vec3<u32>(1u, ~8876u, 3290u & var_0.x), vec3<u32>(4294967295u, ~var_1.x, select(0u, 1u, false))) % vec3<u32>(32u))) & var_3;
    let var_4 = Struct_1(-(~0i), var_2.b, var_2.c);
    let var_5 = i32(-1i) * -2196i;
    let var_6 = 374f;
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_mod_vec2_i32(-vec2<i32>(var_5, 2147483647i), ~_wgslsmith_sub_vec2_i32(var_4.c.yy, vec2<i32>(-37637i, var_5))), -u_input.a.yz), vec3<f32>(_wgslsmith_f_op_f32(floor(-1833f)), 281f, 1000f));
}

