struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: vec3<f32>,
    d: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: vec2<i32>,
    d: bool,
    e: u32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
    d: vec2<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 19>;

var<private> global1: array<u32, 29> = array<u32, 29>(54182u, 53441u, 0u, 513u, 1u, 56419u, 0u, 0u, 4294967295u, 52477u, 15572u, 5682u, 1u, 70383u, 41957u, 0u, 0u, 0u, 54841u, 4294967295u, 95109u, 48978u, 0u, 1u, 66717u, 32867u, 0u, 4294967295u, 1u);

var<private> global2: array<u32, 22>;

var<private> global3: array<Struct_3, 15>;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: u32) -> u32 {
    let var_0 = Struct_1(arg_1.a, ~1u, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -384f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x - 822f)) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(arg_0.x)), _wgslsmith_f_op_f32(1136f * arg_2.x), true))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(arg_0.x))))), 47402i);
    var var_1 = arg_1;
    var var_2 = 1i;
    var var_3 = Struct_2(~vec4<i32>(-6415i, u_input.e, abs(u_input.e), abs(1i)) | ~_wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(57866i, -2147483647i, -4130i, -68778i), vec4<i32>(arg_1.d, u_input.c, var_1.d, 22987i), vec4<i32>(arg_1.d, -55688i, -55266i, 428i)), _wgslsmith_mod_vec4_i32(vec4<i32>(var_0.d, arg_1.d, -1i, 2147483647i), vec4<i32>(12801i, arg_1.d, -9248i, var_0.d))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(21104u, 19u)] + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, -439f, arg_0.x, 1253f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-112f, arg_2.x, var_1.c.x, -380f), global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 29u)], 19u)], true)) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1000f, -1292f, arg_0.x, arg_0.x), global0[_wgslsmith_index_u32(1u, 19u)])))) - vec4<f32>(_wgslsmith_f_op_f32(select(-709f, 1f, any(vec4<bool>(true, false, false, true)))), 1505f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)), var_0.c.x)), _wgslsmith_div_vec2_i32(-(~var_0.a.xx), countOneBits(vec2<i32>(-var_0.d, -213i))), !all(vec4<bool>(true, true, true, true)), 1u);
    let var_4 = Struct_3(var_3.a, _wgslsmith_sub_vec2_u32(~_wgslsmith_mult_vec2_u32(vec2<u32>(1u, global1[_wgslsmith_index_u32(var_1.b, 29u)]), u_input.a.wz), vec2<u32>(var_0.b, 4294967295u)), u_input.a.zwx);
    return ~max(var_1.b, arg_3);
}

fn func_2(arg_0: Struct_3) -> Struct_1 {
    let var_0 = Struct_2(vec4<i32>(arg_0.a.x, arg_0.a.x, ~7499i, -1i), global0[_wgslsmith_index_u32(u_input.a.x & ~_wgslsmith_clamp_u32(61317u, ~u_input.d.x, 33699u), 19u)], _wgslsmith_sub_vec2_i32(arg_0.a.xy, countOneBits(vec2<i32>(u_input.c, 57190i)) >> (max(vec2<u32>(global2[_wgslsmith_index_u32(1u, 22u)], u_input.d.x), ~u_input.a.wx) % vec2<u32>(32u))), ~(~func_3(vec2<f32>(552f, -1410f), Struct_1(arg_0.a.zxy, 1u, vec3<f32>(-1000f, 558f, 1050f), u_input.b), vec3<f32>(-794f, -777f, -221f), 4294967295u)) > 29285u, 1u ^ global1[_wgslsmith_index_u32(firstLeadingBit(u_input.d.x), 29u)]);
    let var_1 = Struct_3(var_0.a, _wgslsmith_add_vec2_u32(min(~max(vec2<u32>(var_0.e, 4294967295u), vec2<u32>(4294967295u, 115908u)), vec2<u32>(31611u >> (global1[_wgslsmith_index_u32(arg_0.b.x, 29u)] % 32u), 1u)), abs(arg_0.c.yy)), firstLeadingBit(_wgslsmith_add_vec3_u32(~vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.e, 29u)], 29u)], global1[_wgslsmith_index_u32(u_input.a.x, 29u)], u_input.d.x), reverseBits(arg_0.c))));
    let var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(-754f)), -204f, -937f)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.x * 932f) + var_0.b.x), _wgslsmith_div_f32(387f, _wgslsmith_f_op_f32(ceil(1360f))), var_0.b.x)), vec3<f32>(var_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)), _wgslsmith_f_op_f32(ceil(-419f))), var_0.d));
    var var_3 = u_input.d;
    let var_4 = Struct_3(select(vec4<i32>(u_input.e, firstTrailingBit(~var_1.a.x), 1i, ~2147483647i), abs(max(vec4<i32>(var_0.c.x, u_input.b, -2147483647i, 0i), _wgslsmith_div_vec4_i32(vec4<i32>(39879i, -1i, 78841i, arg_0.a.x), vec4<i32>(1i, -42522i, u_input.c, -5052i)))), var_0.d), vec2<u32>(arg_0.b.x, ~arg_0.c.x), ~(~vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 4275u, arg_0.b.x, var_1.c.x), vec4<u32>(var_3.x, 0u, var_1.c.x, arg_0.c.x)), var_0.e, _wgslsmith_mod_u32(var_0.e, var_3.x))));
    return Struct_1(firstTrailingBit(-(~_wgslsmith_clamp_vec3_i32(vec3<i32>(17283i, var_4.a.x, 40778i), var_4.a.wyx, vec3<i32>(var_4.a.x, 1i, var_0.c.x)))), _wgslsmith_mod_u32(abs(firstLeadingBit(var_1.c.x)), select(_wgslsmith_div_u32(min(39557u, 581u), 4294967295u), _wgslsmith_sub_u32(var_4.c.x >> (global1[_wgslsmith_index_u32(u_input.a.x, 29u)] % 32u), firstLeadingBit(41581u)), true)), vec3<f32>(var_2.x, -1670f, var_0.b.x), 25576i);
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: vec4<i32>) -> vec2<i32> {
    global2 = array<u32, 22>();
    global0 = array<vec4<f32>, 19>();
    var var_0 = global3[_wgslsmith_index_u32(select(81056u, _wgslsmith_clamp_u32(40630u >> (1u % 32u), 107277u, arg_1.b), false), 15u)];
    let var_1 = global3[_wgslsmith_index_u32(arg_1.b, 15u)];
    global3 = array<Struct_3, 15>();
    return firstTrailingBit(_wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(var_1.a.wx, var_0.a.yx), firstTrailingBit(vec2<i32>(_wgslsmith_dot_vec3_i32(var_0.a.zxx, arg_1.a), 0i))));
}

fn func_1(arg_0: vec2<u32>) -> u32 {
    var var_0 = !(!vec2<bool>(all(vec2<bool>(false, true)), true));
    let var_1 = select(func_4(~(_wgslsmith_dot_vec3_u32(u_input.a.ywy, u_input.a.zwx) | ~global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_0.x, 29u)], 22u)]), func_2(global3[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(4982u, 22u)], 85775u), 22u)], 15u)]), _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, u_input.e, u_input.c, -22886i), vec4<i32>(u_input.e, 2147483647i, u_input.c, -19792i)), firstTrailingBit(firstLeadingBit(vec4<i32>(28122i, u_input.e, 3056i, u_input.e))))), _wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, -1i) >> (vec2<u32>(_wgslsmith_div_u32(u_input.d.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 29u)], 29u)], 29u)]), ~84717u) % vec2<u32>(32u)), ~(vec2<i32>(u_input.e, -2147483647i) ^ vec2<i32>(20362i, 2147483647i))), vec2<bool>(var_0.x, any(!vec3<bool>(true, var_0.x, var_0.x))));
    let var_2 = true;
    var var_3 = global3[_wgslsmith_index_u32(countOneBits(~(~58803u)), 15u)];
    var_3 = global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(4294967295u, 29u)], 18067u), 29u)], 15u)];
    return global1[_wgslsmith_index_u32(firstTrailingBit(~((func_3(vec2<f32>(2943f, -109f), Struct_1(var_3.a.yzz, 510u, vec3<f32>(1153f, -1352f, 365f), -31555i), vec3<f32>(1199f, 152f, 339f), u_input.d.x) | 1u) >> ((21343u ^ _wgslsmith_dot_vec2_u32(vec2<u32>(2284u, 0u), var_3.c.yx)) % 32u))), 29u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(select(~(~(~(global2[_wgslsmith_index_u32(0u, 22u)] | 9605u))), 1u, any(vec2<bool>(true, true))), 19u)];
    global3 = array<Struct_3, 15>();
    global0 = array<vec4<f32>, 19>();
    var var_1 = ~_wgslsmith_dot_vec4_u32(vec4<u32>(~firstLeadingBit(global2[_wgslsmith_index_u32(1u, 22u)]), min(global2[_wgslsmith_index_u32(21978u, 22u)], 4294967295u) | _wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(u_input.a.x, 29u)], 28720u, u_input.d.x, 5360u), u_input.a), 4294967295u, _wgslsmith_div_u32(u_input.d.x, global2[_wgslsmith_index_u32(10909u, 22u)] | global1[_wgslsmith_index_u32(u_input.a.x, 29u)])), vec4<u32>(_wgslsmith_add_u32(~1u, countOneBits(u_input.d.x)), max(global2[_wgslsmith_index_u32(36439u, 22u)], _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, 4294967295u, 24569u, 4294967295u), vec4<u32>(90731u, 1u, u_input.a.x, u_input.d.x))), func_1(_wgslsmith_clamp_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(13633u, 22u)], 29u)], 29u)], 0u), u_input.d, u_input.a.zz)), abs(4294967295u & global1[_wgslsmith_index_u32(4294967295u, 29u)])));
    global2 = array<u32, 22>();
    var var_2 = ~_wgslsmith_mod_i32(1i, ~(~u_input.c));
    let var_3 = abs(max(vec2<u32>(~(~39285u), 72024u), _wgslsmith_mod_vec2_u32(u_input.d, _wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, global2[_wgslsmith_index_u32(1u, 22u)]), vec2<u32>(global2[_wgslsmith_index_u32(u_input.a.x, 22u)], 1u)), u_input.a.zy, reverseBits(u_input.d)))));
    global1 = array<u32, 29>();
    var var_4 = 2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, u_input.c, 370f, firstTrailingBit(_wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(57930i, u_input.b), vec2<i32>(0i, u_input.b)), -vec2<i32>(u_input.c, u_input.b)) << (var_3 % vec2<u32>(32u))), vec3<f32>(-1252f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(var_0.x)))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(833f, var_0.x)) * _wgslsmith_f_op_f32(-var_0.x))))));
}

