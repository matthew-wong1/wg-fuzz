struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: vec4<u32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 13> = array<Struct_2, 13>(Struct_2(false, 1u), Struct_2(false, 61989u), Struct_2(false, 12297u), Struct_2(false, 34056u), Struct_2(true, 4294967295u), Struct_2(false, 1u), Struct_2(false, 1940u), Struct_2(true, 0u), Struct_2(false, 0u), Struct_2(true, 0u), Struct_2(false, 4294967295u), Struct_2(false, 2933u), Struct_2(false, 8577u));

var<private> global1: i32 = 7061i;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_4, arg_1: u32, arg_2: Struct_4) -> u32 {
    let var_0 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1616f, -439f, -103f))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-287f, 670f, -918f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(-156f)), _wgslsmith_f_op_f32(floor(-297f)), 1805f))), false, ~(firstTrailingBit(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 0u, arg_1, 1u), vec4<u32>(13521u, arg_1, 23644u, arg_1))) | firstLeadingBit(vec4<u32>(80251u, 4294967295u, arg_1, arg_1))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(387f, 648f)));
    var var_1 = ~firstTrailingBit(var_0.c.zyx);
    let var_2 = Struct_3(var_0, Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(403f, var_0.d.x, true)) + _wgslsmith_f_op_f32(ceil(1029f))) <= 827f, ~5311u), Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.a + vec3<f32>(var_0.a.x, var_0.a.x, -2028f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(var_0.a, vec3<f32>(var_0.d.x, var_0.d.x, -281f))), vec3<f32>(447f, -1611f, var_0.a.x)), !select(vec3<bool>(true, true, false), vec3<bool>(arg_0.a, arg_0.a, false), arg_2.a))), !all(vec2<bool>(true, true)) && var_0.b, ~var_0.c >> (vec4<u32>(var_1.x ^ 11390u, 0u, _wgslsmith_dot_vec4_u32(var_0.c, vec4<u32>(1u, 4294967295u, 36952u, 18417u)), arg_1) % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(var_0.d)))), var_0);
    var var_3 = _wgslsmith_f_op_f32(var_2.d.a.x + -1884f);
    var var_4 = select(vec2<bool>(any(vec3<bool>(all(vec2<bool>(arg_2.a, false)), var_2.d.b | true, true)), all(!select(vec2<bool>(false, arg_0.a), vec2<bool>(true, var_0.b), vec2<bool>(false, var_2.a.b)))), !(!select(vec2<bool>(true, arg_2.a), vec2<bool>(var_2.a.b, true), var_0.b)), vec2<bool>(all(select(select(vec4<bool>(true, var_0.b, true, false), vec4<bool>(false, false, var_2.d.b, var_2.d.b), arg_2.a), vec4<bool>(false, false, var_0.b, var_0.b), var_0.b)), true));
    return var_2.a.c.x;
}

fn func_2(arg_0: vec2<f32>) -> bool {
    let var_0 = abs(vec2<u32>(func_3(Struct_4(true), abs(62398u), Struct_4(true)), min(4294967295u, 1u)) << (_wgslsmith_div_vec2_u32(~max(vec2<u32>(45560u, 25722u), vec2<u32>(4294967295u, 96495u)), firstTrailingBit(reverseBits(vec2<u32>(4294967295u, 0u)))) % vec2<u32>(32u)));
    var var_1 = _wgslsmith_mod_u32(41125u, var_0.x);
    let var_2 = ~u_input.a.x;
    var_1 = ~41009u;
    global0 = array<Struct_2, 13>();
    return false;
}

fn func_1() -> Struct_5 {
    var var_0 = !select(select(vec4<bool>(true, all(vec3<bool>(false, false, true)), true, func_2(vec2<f32>(255f, 823f))), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), !select(vec4<bool>(false, false, false, true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), false), vec4<bool>(true, true, false, true)), !vec4<bool>(select(false, false, true), true, true, true));
    global0 = array<Struct_2, 13>();
    var_0 = !vec4<bool>(true, all(select(vec2<bool>(var_0.x, var_0.x), select(vec2<bool>(var_0.x, true), var_0.wx, false), !var_0.yw)), all(vec4<bool>(true, false, var_0.x, true)), var_0.x);
    var var_1 = Struct_4(!(!var_0.x) != true);
    return Struct_5(Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(1017f, -562f, 295f) + _wgslsmith_div_vec3_f32(vec3<f32>(-297f, -289f, -949f), vec3<f32>(-668f, -550f, -507f))), true, _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(4294967295u, 62139u, 36777u, 0u), firstLeadingBit(vec4<u32>(1u, 1u, 20339u, 41705u))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -1380f) * vec2<f32>(275f, 426f)), vec2<f32>(1267f, 391f), func_2(vec2<f32>(-257f, 473f))))), global0[_wgslsmith_index_u32(max(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 106022u), vec2<u32>(1u, 1u)), select(~0u, ~0u, var_1.a | false)), 13u)], Struct_1(vec3<f32>(-1115f, _wgslsmith_f_op_f32(abs(184f)), 1f), !var_1.a, _wgslsmith_add_vec4_u32(~vec4<u32>(56401u, 54304u, 4294967295u, 59450u), _wgslsmith_clamp_vec4_u32(vec4<u32>(28819u, 119537u, 16845u, 27842u), vec4<u32>(4294967295u, 76488u, 0u, 29449u), vec4<u32>(1u, 4294967295u, 4294967295u, 53337u))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-114f, 1000f), _wgslsmith_div_vec2_f32(vec2<f32>(880f, 701f), vec2<f32>(1482f, 129f))))), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(745f * -331f), _wgslsmith_f_op_f32(f32(-1f) * -2388f), -677f), var_1.a, vec4<u32>(~3826u, 1u, ~0u, ~16519u), vec2<f32>(172f, -844f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global0 = array<Struct_2, 13>();
    var_0 = func_1();
    var var_1 = ~_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(~(vec3<u32>(90266u, 80170u, var_0.a.a.c.x) >> (var_0.a.a.c.wyx % vec3<u32>(32u))), _wgslsmith_clamp_vec3_u32(abs(vec3<u32>(var_0.a.b.b, 58756u, 90169u)), ~var_0.a.a.c.yxz, ~var_0.a.d.c.xzz)), countOneBits(_wgslsmith_clamp_vec3_u32(~vec3<u32>(0u, 4294967295u, 4294967295u), _wgslsmith_mult_vec3_u32(var_0.a.d.c.zxx, vec3<u32>(var_0.a.b.b, var_0.a.a.c.x, var_0.a.a.c.x)), var_0.a.a.c.wwy & vec3<u32>(var_0.a.d.c.x, var_0.a.a.c.x, 1u))));
    global0 = array<Struct_2, 13>();
    let var_2 = Struct_4(var_0.a.d.b);
    let var_3 = true;
    global1 = abs(u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.zy, _wgslsmith_f_op_f32(trunc(755f)));
}

