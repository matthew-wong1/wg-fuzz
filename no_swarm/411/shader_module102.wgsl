struct Struct_1 {
    a: vec2<f32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: vec4<i32>,
    e: bool,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: vec2<i32>,
    d: f32,
    e: Struct_1,
}

struct Struct_5 {
    a: bool,
    b: Struct_4,
    c: Struct_3,
    d: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 28>;

var<private> global1: array<vec4<u32>, 16>;

var<private> global2: vec3<u32> = vec3<u32>(69736u, 1u, 1u);

var<private> global3: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(vec2<f32>(-626f, 185f), vec2<i32>(i32(-2147483648), 12874i)), Struct_1(vec2<f32>(740f, 1133f), vec2<i32>(-9578i, 21668i)), Struct_1(vec2<f32>(-1798f, -458f), vec2<i32>(-1i, 25532i)), Struct_1(vec2<f32>(978f, 645f), vec2<i32>(i32(-2147483648), i32(-2147483648))), Struct_1(vec2<f32>(674f, 535f), vec2<i32>(-5720i, -1i)), Struct_1(vec2<f32>(1925f, -531f), vec2<i32>(1i, 4244i)), Struct_1(vec2<f32>(-1174f, -1257f), vec2<i32>(-1i, -1i)), Struct_1(vec2<f32>(-247f, 1040f), vec2<i32>(4550i, 1i)), Struct_1(vec2<f32>(-999f, 637f), vec2<i32>(0i, 10849i)), Struct_1(vec2<f32>(1000f, -165f), vec2<i32>(i32(-2147483648), 2147483647i)), Struct_1(vec2<f32>(-594f, -1280f), vec2<i32>(1i, 1i)), Struct_1(vec2<f32>(2017f, 2375f), vec2<i32>(i32(-2147483648), -1i)), Struct_1(vec2<f32>(-510f, -622f), vec2<i32>(2147483647i, i32(-2147483648))), Struct_1(vec2<f32>(-1000f, -893f), vec2<i32>(1i, i32(-2147483648))));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: u32) -> i32 {
    let var_0 = abs(_wgslsmith_sub_vec2_u32(global2.zz, ~u_input.b.yx));
    let var_1 = Struct_4(~(~vec4<u32>(u_input.b.x, 0u, 23064u, 13776u)), vec3<bool>(all(select(vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(true, true), false), any(vec4<bool>(true, true, true, true)))), false, u_input.a.x > ~34317u), vec2<i32>(abs(-2147483647i), -2147483647i), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.b.x, 28u)] + _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_0, 16133u), 28u)]))))), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -159f), _wgslsmith_f_op_f32(step(-1126f, 148f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(1104u, 28u)], global0[_wgslsmith_index_u32(48616u, 28u)]) - vec2<f32>(-1526f, global0[_wgslsmith_index_u32(arg_0, 28u)])))), max(~vec2<i32>(-2147483647i, 24996i), vec2<i32>(-1i) * -vec2<i32>(62840i, -1i))));
    global3 = array<Struct_1, 14>();
    var var_2 = !(!select(var_1.b.x && (global0[_wgslsmith_index_u32(arg_0, 28u)] > var_1.d), true, all(!vec4<bool>(var_1.b.x, var_1.b.x, false, true))));
    global1 = array<vec4<u32>, 16>();
    return -24134i;
}

fn func_2(arg_0: vec2<u32>) -> Struct_3 {
    global2 = ~(~u_input.c.wzy);
    let var_0 = vec2<i32>(-(i32(-1i) * -func_3(29139u)), _wgslsmith_clamp_i32(1i, ~1i, countOneBits(-7664i)));
    let var_1 = Struct_2(Struct_1(vec2<f32>(-2218f, _wgslsmith_f_op_f32(-861f * _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(0u, 28u)])))), abs(vec2<i32>(28716i, 10354i)) ^ var_0), global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, _wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(3607u, arg_0.x, u_input.a.x)), ~global2.x, ~21408u), max(abs(u_input.c), _wgslsmith_clamp_vec4_u32(u_input.c, vec4<u32>(4294967295u, 32517u, 1u, global2.x), u_input.c))), abs(_wgslsmith_dot_vec2_u32(arg_0, vec2<u32>(arg_0.x, 16269u))) | _wgslsmith_mult_u32(min(20898u, u_input.c.x), 117323u), _wgslsmith_sub_u32(60121u ^ global2.x, countOneBits(_wgslsmith_add_u32(61209u, u_input.b.x)))), 14u)], !(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~u_input.c.x, 28u)]) < _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(51029u, 28u)])), firstTrailingBit(vec4<i32>(1i, 1i, ~var_0.x | 32572i, reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -24649i), vec2<i32>(var_0.x, 21433i))))), true);
    global3 = array<Struct_1, 14>();
    global1 = array<vec4<u32>, 16>();
    return Struct_3(arg_0);
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_4, arg_2: Struct_5) -> vec4<i32> {
    let var_0 = arg_2.d;
    let var_1 = arg_1.b;
    let var_2 = select(-arg_2.b.c, arg_0.yx, true) | arg_2.b.e.b;
    var var_3 = arg_2.b;
    global3 = array<Struct_1, 14>();
    return select(vec4<i32>(abs(arg_1.c.x), var_2.x, arg_2.b.e.b.x, -39783i), max(vec4<i32>(countOneBits(var_3.c.x), func_3(arg_2.b.a.x), _wgslsmith_clamp_i32(-22395i, 0i, arg_1.c.x), var_3.e.b.x >> (var_3.a.x % 32u)) << (_wgslsmith_mult_vec4_u32(var_3.a, reverseBits(vec4<u32>(0u, 1u, global2.x, arg_2.b.a.x))) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(arg_0.x, 19505i, 1i, var_3.c.x), vec4<i32>(-2147483647i, arg_0.x, -19420i, arg_2.b.c.x)), -vec4<i32>(-1i, -32514i, var_3.c.x, arg_0.x)), -firstTrailingBit(vec4<i32>(0i, var_2.x, arg_2.b.c.x, arg_2.b.c.x)), abs(reverseBits(vec4<i32>(arg_0.x, -1i, arg_2.b.e.b.x, var_3.c.x))))), all(var_3.b.zx) || false);
}

fn func_1(arg_0: Struct_4, arg_1: vec4<f32>, arg_2: Struct_4, arg_3: vec2<f32>) -> vec4<i32> {
    var var_0 = ~(-vec4<i32>(countOneBits(18164i) >> (global2.x % 32u), _wgslsmith_mult_i32(_wgslsmith_mod_i32(1i, -1844i), 2293i), min(_wgslsmith_add_i32(arg_0.e.b.x, -2147483647i), 1i), arg_2.c.x));
    var var_1 = arg_0.e.a.x;
    let var_2 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.d - 1174f)), arg_1.x), -var_0.xw);
    global1 = array<vec4<u32>, 16>();
    var var_3 = arg_2.e.a;
    return select(~func_4(abs(max(var_0.xxy, vec3<i32>(-2147483647i, arg_2.e.b.x, 1i))), arg_2, Struct_5(true, Struct_4(u_input.c, vec3<bool>(arg_2.b.x, true, false), arg_2.c, arg_2.d, Struct_1(var_2.a, var_0.xw)), func_2(arg_0.a.yy), _wgslsmith_f_op_f32(f32(-1f) * -1404f))), abs((_wgslsmith_div_vec4_i32(vec4<i32>(arg_2.e.b.x, 41262i, arg_2.c.x, var_2.b.x), vec4<i32>(arg_0.c.x, 0i, arg_2.e.b.x, -58411i)) | _wgslsmith_add_vec4_i32(vec4<i32>(var_0.x, 1i, 48624i, -60142i), vec4<i32>(2976i, arg_0.c.x, arg_2.e.b.x, -1i))) >> (vec4<u32>(~global2.x, ~arg_2.a.x, 45717u, ~120088u) % vec4<u32>(32u))), false);
}

fn func_5(arg_0: vec4<i32>, arg_1: vec2<u32>, arg_2: bool) -> Struct_2 {
    let var_0 = false;
    let var_1 = global2.x;
    var var_2 = _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(10266u, 28u)]);
    var var_3 = func_2(arg_1);
    var var_4 = ~arg_0.wz;
    return Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-708f, global0[_wgslsmith_index_u32(global2.x, 28u)]))))), vec2<i32>(i32(-1i) * -28683i, -1i)), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -551f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(83750u, 28u)]))), func_4(_wgslsmith_clamp_vec3_i32(select(vec3<i32>(19666i, 23811i, var_4.x), arg_0.wyw, true), min(arg_0.zzx, vec3<i32>(arg_0.x, arg_0.x, arg_0.x)), vec3<i32>(-2147483647i, 1i, var_4.x)), Struct_4(global1[_wgslsmith_index_u32(1u, 16u)], vec3<bool>(true, var_0, var_0), -vec2<i32>(0i, var_4.x), global0[_wgslsmith_index_u32(global2.x, 28u)], global3[_wgslsmith_index_u32(reverseBits(0u), 14u)]), Struct_5(true, Struct_4(vec4<u32>(var_3.a.x, 0u, u_input.b.x, global2.x), vec3<bool>(var_0, true, arg_2), arg_0.yx, global0[_wgslsmith_index_u32(var_3.a.x, 28u)], global3[_wgslsmith_index_u32(arg_1.x, 14u)]), Struct_3(vec2<u32>(var_3.a.x, 60216u)), -407f)).ww), true, arg_0, var_0);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_mult_vec4_i32(-func_1(Struct_4(vec4<u32>(1u, 4294967295u, u_input.b.x, global2.x), vec3<bool>(false, true, false), vec2<i32>(0i, -13493i), global0[_wgslsmith_index_u32(global2.x, 28u)], Struct_1(vec2<f32>(-451f, -1497f), vec2<i32>(-20727i, 20400i))), vec4<f32>(global0[_wgslsmith_index_u32(global2.x, 28u)], global0[_wgslsmith_index_u32(1u, 28u)], 129f, -908f), Struct_4(global1[_wgslsmith_index_u32(1u, 16u)], vec3<bool>(false, false, true), vec2<i32>(-2147483647i, 2147483647i), global0[_wgslsmith_index_u32(u_input.c.x, 28u)], Struct_1(vec2<f32>(-104f, global0[_wgslsmith_index_u32(u_input.c.x, 28u)]), vec2<i32>(-37627i, 2147483647i))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0[_wgslsmith_index_u32(22906u, 28u)], -665f), vec2<f32>(-724f, 496f)))), _wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, -9979i, ~2147483647i, _wgslsmith_add_i32(0i, 47591i)), countOneBits(vec4<i32>(1i, 1i, 1i, 1i)))), u_input.b.zz << (func_2(func_2(_wgslsmith_clamp_vec2_u32(vec2<u32>(global2.x, global2.x), vec2<u32>(u_input.a.x, 9014u), u_input.b.xx)).a).a % vec2<u32>(32u)), true);
    let var_1 = _wgslsmith_sub_vec2_i32(firstTrailingBit(vec2<i32>(1i, max(17792i, -1i))), abs(vec2<i32>(func_4(var_0.d.zyz, Struct_4(vec4<u32>(global2.x, u_input.b.x, global2.x, u_input.a.x), vec3<bool>(var_0.e, var_0.c, false), var_0.a.b, global0[_wgslsmith_index_u32(4294967295u, 28u)], Struct_1(vec2<f32>(1648f, -1930f), vec2<i32>(38458i, var_0.b.b.x))), Struct_5(true, Struct_4(vec4<u32>(0u, 4294967295u, 29483u, 8634u), vec3<bool>(var_0.e, var_0.e, var_0.c), var_0.a.b, 462f, Struct_1(vec2<f32>(var_0.b.a.x, -1028f), var_0.d.zx)), Struct_3(vec2<u32>(global2.x, 4294967295u)), -309f)).x, var_0.a.b.x))) >> (vec2<u32>(global2.x, _wgslsmith_mult_u32(_wgslsmith_mod_u32(global2.x, global2.x), ~_wgslsmith_div_u32(u_input.a.x, u_input.a.x))) % vec2<u32>(32u));
    var var_2 = Struct_1(var_0.b.a, -var_1);
    global2 = _wgslsmith_clamp_vec3_u32(vec3<u32>(abs(_wgslsmith_add_u32(26794u >> (global2.x % 32u), ~34498u)), global2.x, 4294967295u), u_input.a, min(u_input.c.xxz, ~_wgslsmith_mult_vec3_u32(vec3<u32>(global2.x, 4294967295u, u_input.a.x), vec3<u32>(4294967295u, 1u, global2.x))) & ~(vec3<u32>(u_input.b.x, global2.x, global2.x) >> (abs(vec3<u32>(0u, global2.x, global2.x)) % vec3<u32>(32u))));
    let var_3 = var_0.e & all(vec2<bool>(var_0.c, select(all(vec2<bool>(var_0.e, false)), true, all(vec3<bool>(var_0.c, var_0.c, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~u_input.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-437f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.x - -1677f)))));
}

