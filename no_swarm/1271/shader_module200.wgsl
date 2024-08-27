struct Struct_1 {
    a: vec2<i32>,
    b: vec3<bool>,
    c: bool,
    d: f32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 16> = array<vec4<f32>, 16>(vec4<f32>(278f, -529f, -408f, 216f), vec4<f32>(338f, -1181f, 681f, -1125f), vec4<f32>(1306f, -248f, -249f, -302f), vec4<f32>(569f, -806f, 1498f, 1355f), vec4<f32>(881f, 285f, 797f, 785f), vec4<f32>(107f, 1598f, -1062f, 2309f), vec4<f32>(688f, 1000f, 1147f, 681f), vec4<f32>(-439f, -580f, 1073f, -735f), vec4<f32>(959f, 1240f, -512f, -849f), vec4<f32>(212f, 1322f, 429f, -233f), vec4<f32>(-1791f, -912f, 1002f, -1000f), vec4<f32>(1048f, -1102f, -1518f, 948f), vec4<f32>(-1218f, 1336f, 1000f, 1000f), vec4<f32>(1000f, -1000f, 1590f, -1054f), vec4<f32>(-932f, -1416f, 198f, 426f), vec4<f32>(-1333f, 311f, 832f, 992f));

var<private> global1: array<Struct_2, 31>;

var<private> global2: f32;

var<private> global3: array<vec3<u32>, 16>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2) -> i32 {
    global2 = _wgslsmith_f_op_f32(ceil(arg_2.a.d));
    let var_0 = _wgslsmith_div_vec4_u32(reverseBits(vec4<u32>(select(4294967295u, 0u, false), 4294967295u, 15350u, u_input.a.x) << (~firstLeadingBit(vec4<u32>(52498u, arg_0.b.x, u_input.a.x, 47859u)) % vec4<u32>(32u))), vec4<u32>(select(~u_input.a.x & 1u, arg_2.b.x, abs(22099i) != ~arg_2.a.e.x), 49850u, firstLeadingBit(u_input.a.x), min(reverseBits(u_input.a.x), _wgslsmith_div_u32(arg_0.b.x, reverseBits(arg_0.b.x)))));
    global0 = array<vec4<f32>, 16>();
    global1 = array<Struct_2, 31>();
    let var_1 = (firstLeadingBit(arg_2.b) << (_wgslsmith_mult_vec2_u32(vec2<u32>(67136u, 39472u), u_input.a) % vec2<u32>(32u))) & vec2<u32>(u_input.a.x | ~arg_0.b.x, arg_0.b.x & firstLeadingBit(4294967295u));
    return -1i;
}

fn func_2() -> vec2<i32> {
    var var_0 = Struct_1(_wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(u_input.b.xy, _wgslsmith_sub_vec2_i32(~u_input.b.xy, max(u_input.b.xy, vec2<i32>(-33667i, -2185i)))), countOneBits(select(countOneBits(vec2<i32>(35692i, -44552i)), _wgslsmith_div_vec2_i32(vec2<i32>(16653i, u_input.b.x), u_input.b.zz), true))), select(vec3<bool>(~u_input.b.x == func_3(Struct_2(Struct_1(u_input.b.zz, vec3<bool>(false, false, true), true, -1075f, vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x)), u_input.a), Struct_1(vec2<i32>(20571i, 26184i), vec3<bool>(false, false, false), true, -2443f, vec3<i32>(-29428i, u_input.b.x, 1i)), global1[_wgslsmith_index_u32(1u, 31u)]), true, any(vec4<bool>(true, true, true, true))), !select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true)), true, -1006f, vec3<i32>(firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, -9363i, u_input.b.x, u_input.b.x), vec4<i32>(13930i, -5325i, u_input.b.x, u_input.b.x))), 0i, u_input.b.x) << (select(~vec3<u32>(u_input.a.x, u_input.a.x, 10469u), vec3<u32>(~u_input.a.x, ~u_input.a.x, 4965u), select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), all(vec2<bool>(false, false)))) % vec3<u32>(32u)));
    let var_1 = Struct_1(var_0.e.zx, vec3<bool>(!var_0.b.x & true, !all(!vec4<bool>(false, var_0.b.x, var_0.b.x, false)), var_0.c), var_0.c, _wgslsmith_f_op_f32(var_0.d - _wgslsmith_div_f32(-1011f, _wgslsmith_f_op_f32(-var_0.d))), ~vec3<i32>(var_0.a.x, abs(1i), -var_0.e.x) << (firstLeadingBit(vec3<u32>(firstTrailingBit(u_input.a.x), 0u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, 4294967295u, u_input.a.x), vec4<u32>(65946u, 4294967295u, 4294967295u, 1u)))) % vec3<u32>(32u)));
    global0 = array<vec4<f32>, 16>();
    global1 = array<Struct_2, 31>();
    let var_2 = abs(~(~vec4<u32>(~u_input.a.x, _wgslsmith_add_u32(52772u, u_input.a.x), u_input.a.x, u_input.a.x)));
    return var_1.e.yx;
}

fn func_1() -> Struct_1 {
    let var_0 = 32038u;
    let var_1 = !(!vec4<bool>(any(vec4<bool>(false, false, false, true)), !all(vec4<bool>(false, true, false, true)), all(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true))), true));
    global2 = 1618f;
    var var_2 = _wgslsmith_dot_vec2_i32(func_2(), u_input.b.yz);
    var var_3 = Struct_1(_wgslsmith_div_vec2_i32(~abs(u_input.b.xy | vec2<i32>(u_input.b.x, u_input.b.x)), u_input.b.yx), vec3<bool>(false, var_1.x, all(var_1)), var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-886f, -861f))) * -158f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -832f), 1131f)))), (((vec3<i32>(u_input.b.x, u_input.b.x, 23727i) >> (vec3<u32>(0u, 0u, 0u) % vec3<u32>(32u))) ^ -u_input.b) ^ ~(-vec3<i32>(0i, u_input.b.x, u_input.b.x))) & u_input.b);
    return Struct_1(-(~vec2<i32>(~(-1i), var_3.a.x)), !vec3<bool>(any(select(vec2<bool>(true, false), vec2<bool>(var_3.b.x, true), var_1.ww)), !var_3.b.x, all(var_1.yz) | true), ((_wgslsmith_f_op_f32(select(var_3.d, 1380f, false)) > 557f) && !var_3.c) | var_3.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.d * -1347f)), max(~vec3<i32>(u_input.b.x, -1i, 2147483647i) ^ (u_input.b | var_3.e), select(select(vec3<i32>(-2147483647i, var_3.e.x, u_input.b.x), vec3<i32>(-2147483647i, 23817i, u_input.b.x), vec3<bool>(true, false, var_1.x)), -u_input.b, all(var_3.b))) & abs(firstLeadingBit(var_3.e) & vec3<i32>(-38282i, u_input.b.x, u_input.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1i;
    global1 = array<Struct_2, 31>();
    global1 = array<Struct_2, 31>();
    let var_1 = Struct_2(func_1(), countOneBits(select(u_input.a, min(u_input.a, u_input.a), false)));
    global2 = _wgslsmith_f_op_f32(abs(1f));
    let x = u_input.a;
    s_output = StorageBuffer(86984u, -2147483647i, reverseBits(~vec3<u32>(6872u, ~0u, ~var_1.b.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1.a.d, var_1.a.d, var_1.a.d), vec3<f32>(-1740f, var_1.a.d, var_1.a.d)))) - vec3<f32>(_wgslsmith_f_op_f32(var_1.a.d * -1000f), _wgslsmith_div_f32(-450f, -290f), -925f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_1.a.d, -519f, -1029f))) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_1.a.d, 1001f, var_1.a.d)))))));
}

