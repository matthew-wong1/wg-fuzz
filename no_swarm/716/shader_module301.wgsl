struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: bool,
    d: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 9> = array<vec2<i32>, 9>(vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(25358i, -942i), vec2<i32>(-42923i, -1i), vec2<i32>(-1i, 77318i), vec2<i32>(2147483647i, 11533i), vec2<i32>(0i, 49770i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(51614i, 2147483647i), vec2<i32>(0i, 2147483647i));

var<private> global1: f32;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec3<bool>) -> vec2<u32> {
    let var_0 = Struct_3(-u_input.a.x << (max(select(14717u, 6956u, false) | ~4294967295u, ~1u) % 32u), Struct_1(~abs(~vec2<u32>(0u, 4294967295u)), ~1i >= _wgslsmith_sub_i32(-u_input.a.x, u_input.a.x), all(select(vec3<bool>(arg_0.x, arg_0.x, arg_0.x), !vec3<bool>(arg_0.x, false, false), vec3<bool>(arg_0.x, arg_0.x, true))), vec4<f32>(_wgslsmith_f_op_f32(step(-159f, -1008f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-278f, 1066f, false)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-207f)), -1076f)), 201f)));
    global1 = _wgslsmith_f_op_f32(floor(var_0.b.d.x));
    let var_1 = Struct_1(var_0.b.a >> (select(vec2<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_0.b.a.x, 5051u, var_0.b.a.x), vec4<u32>(19688u, 16341u, var_0.b.a.x, 28959u))), ~var_0.b.a & vec2<u32>(61975u, 4294967295u), vec2<bool>(any(arg_0), arg_0.x)) % vec2<u32>(32u)), true | select(any(vec4<bool>(true, false, false, false)), false, !any(vec2<bool>(var_0.b.c, var_0.b.c))), !(!(_wgslsmith_f_op_f32(-var_0.b.d.x) != _wgslsmith_f_op_f32(var_0.b.d.x * var_0.b.d.x))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, _wgslsmith_f_op_f32(round(226f)), _wgslsmith_f_op_f32(-var_0.b.d.x), _wgslsmith_f_op_f32(trunc(-276f)))))));
    var var_2 = var_0;
    global1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - var_2.b.d.x), _wgslsmith_f_op_f32(-var_1.d.x)) - _wgslsmith_f_op_f32(var_0.b.d.x + var_0.b.d.x));
    return abs(var_2.b.a);
}

fn func_2(arg_0: i32) -> vec4<f32> {
    var var_0 = _wgslsmith_div_f32(-812f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-2841f - 1029f))));
    let var_1 = Struct_2(arg_0, Struct_1(~(vec2<u32>(27508u, 0u) | func_3(vec3<bool>(true, true, true))), false, all(vec4<bool>(true, any(vec4<bool>(true, false, true, false)), true, any(vec3<bool>(false, true, true)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -340f, 542f, -246f)) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-286f, 262f, -390f, 180f))))))), Struct_1(~vec2<u32>(abs(1u), max(1u, 42175u)), any(vec2<bool>(true, true)), any(vec4<bool>(true, true, any(vec2<bool>(true, true)), any(vec3<bool>(true, false, false)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-350f, -402f, 2020f, 976f)), vec4<f32>(1015f, -1045f, 163f, -1585f), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(795f, -543f, 1205f, 1000f), vec4<f32>(168f, -692f, -982f, 851f))))));
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(196f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1362f, _wgslsmith_f_op_f32(var_1.c.d.x + -264f)) + _wgslsmith_f_op_f32(f32(-1f) * -1498f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(2285f, var_1.b.d.x)) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1.c.d.x + 1510f)))), _wgslsmith_f_op_f32(f32(-1f) * -748f)));
}

fn func_1() -> vec4<f32> {
    global1 = -746f;
    var var_0 = !vec2<bool>(true, any(vec4<bool>(true, select(true, true, true), true, true)));
    var var_1 = Struct_1(~(~(~vec2<u32>(6906u, 0u))), true, var_0.x & var_0.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1179f, -972f, 201f, 383f) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(237f, -1616f, -1000f, -1688f), vec4<f32>(1676f, 1135f, 1531f, 145f), vec4<bool>(false, true, true, false)))), _wgslsmith_f_op_vec4_f32(func_2(-u_input.a.x))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-543f, 1331f, -890f, _wgslsmith_f_op_f32(floor(-1733f))))));
    global1 = -975f;
    let var_2 = var_1.d.x;
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(1452f, var_1.d.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.d.x, -630f) + -1246f), var_1.d.x) - vec4<f32>(-1770f, var_1.d.x, 792f, -184f));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec4<f32>) -> bool {
    global1 = _wgslsmith_f_op_f32(-arg_1.x);
    global0 = array<vec2<i32>, 9>();
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_1.x)) * _wgslsmith_f_op_f32(f32(-1f) * -169f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(429f)), -1000f)) * 1120f));
    return true;
}

fn func_5(arg_0: bool, arg_1: vec4<i32>, arg_2: f32, arg_3: Struct_3) -> StorageBuffer {
    global0 = array<vec2<i32>, 9>();
    var var_0 = Struct_3(arg_1.x, Struct_1(_wgslsmith_mult_vec2_u32(abs(vec2<u32>(arg_3.b.a.x, 0u)), firstLeadingBit(arg_3.b.a)), all(!select(vec2<bool>(arg_0, arg_0), vec2<bool>(false, false), vec2<bool>(false, arg_0))), false, arg_3.b.d));
    let var_1 = u_input.a;
    var var_2 = _wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_div_i32(_wgslsmith_add_i32(arg_1.x, var_1.x), var_1.x), 2147483647i, arg_1.x, _wgslsmith_mod_i32(var_1.x, _wgslsmith_sub_i32(0i, var_0.a))), -firstTrailingBit(arg_1)), arg_1, arg_1);
    let var_3 = ~1u;
    return StorageBuffer(var_1.x, ~(~var_0.a), ~10566u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(961f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(2249f, _wgslsmith_f_op_f32(-1080f * 345f), select(false, false, true))))));
    var var_0 = false & any(select(!select(vec2<bool>(true, true), vec2<bool>(true, false), false), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), false), all(vec2<bool>(false, true))), vec2<bool>(true, true)));
    global1 = _wgslsmith_f_op_f32(-548f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-132f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -735f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1848f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(154f + -1153f) * -165f)))));
    global1 = 1f;
    let var_1 = 69310u;
    var var_2 = firstLeadingBit(_wgslsmith_dot_vec2_i32(global0[_wgslsmith_index_u32(1u, 9u)], ~firstTrailingBit(reverseBits(u_input.a.zz))));
    var_0 = true;
    let x = u_input.a;
    s_output = func_5(func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-715f, 589f, -777f, 263f)) * vec4<f32>(334f, -1000f, 1542f, 845f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(170f, 150f, 1209f, 871f)) * _wgslsmith_f_op_vec4_f32(func_1()))) | false, -_wgslsmith_sub_vec4_i32(firstTrailingBit(vec4<i32>(1i, 0i, 2147483647i, 1i)), vec4<i32>(34720i, u_input.a.x, -2147483647i, u_input.a.x) << (vec4<u32>(var_1, 4294967295u, 43350u, 22453u) % vec4<u32>(32u))) << ((vec4<u32>(abs(var_1), max(4398u, var_1), var_1, var_1) << (_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(0u, var_1, 13516u, 0u), vec4<u32>(73139u, var_1, var_1, var_1)), vec4<u32>(var_1, var_1, 15667u, var_1)) % vec4<u32>(32u))) % vec4<u32>(32u)), -773f, Struct_3(min(u_input.a.x, -33931i), Struct_1(~(vec2<u32>(0u, var_1) & vec2<u32>(40546u, 4294967295u)), false, true, vec4<f32>(_wgslsmith_div_f32(1114f, -2459f), 225f, 721f, -186f))));
}

