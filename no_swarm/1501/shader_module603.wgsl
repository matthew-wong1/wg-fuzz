struct Struct_1 {
    a: f32,
    b: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 13>;

var<private> global1: array<vec4<bool>, 4>;

var<private> global2: vec4<bool> = vec4<bool>(true, false, false, false);

var<private> global3: array<i32, 31> = array<i32, 31>(26093i, 5941i, -71144i, 0i, 16993i, -1i, -1i, -16731i, i32(-2147483648), 27881i, -1i, 37611i, -18621i, i32(-2147483648), -1i, 0i, 51636i, 1i, 1922i, -50360i, -5882i, -20354i, -35050i, i32(-2147483648), -29370i, 52739i, -6610i, -33934i, 2147483647i, i32(-2147483648), -38120i);

var<private> global4: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(-439f, -1i), Struct_1(-1168f, -1i), Struct_1(-1867f, -4290i), Struct_1(-869f, 36765i), Struct_1(283f, 41919i), Struct_1(1212f, -62070i), Struct_1(1000f, 42861i), Struct_1(-2431f, 0i), Struct_1(-308f, 1i), Struct_1(501f, 1i), Struct_1(-842f, -58869i), Struct_1(1000f, 2147483647i), Struct_1(-860f, 0i), Struct_1(1854f, -12201i), Struct_1(-519f, -43408i), Struct_1(705f, 54090i), Struct_1(1660f, -13642i), Struct_1(206f, i32(-2147483648)), Struct_1(-701f, 33183i), Struct_1(363f, 9645i), Struct_1(-1000f, 9654i), Struct_1(1018f, 17372i), Struct_1(-1637f, 2147483647i), Struct_1(886f, -23953i), Struct_1(-1271f, 14352i), Struct_1(-1001f, 2147483647i), Struct_1(-1853f, 1i), Struct_1(-178f, 2147483647i), Struct_1(-834f, 2147483647i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.a), 544f))));
    global4 = array<Struct_1, 29>();
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -817f)), var_0);
    global2 = global1[_wgslsmith_index_u32(min(1u, ~1u | u_input.a.x), 4u)];
    global1 = array<vec4<bool>, 4>();
    return _wgslsmith_f_op_f32(-var_0);
}

fn func_3(arg_0: vec2<bool>, arg_1: vec2<i32>, arg_2: vec2<i32>) -> i32 {
    let var_0 = _wgslsmith_clamp_vec4_i32(abs(_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(arg_1.x, 1i, -34207i, arg_2.x), vec4<i32>(-65645i, 1i, 8271i, 0i)), vec4<i32>(-1843i, arg_2.x, -1i, arg_2.x))), vec4<i32>(1i, abs(-42861i ^ global3[_wgslsmith_index_u32(u_input.a.x, 31u)]), 2147483647i | firstTrailingBit(arg_2.x), abs(-arg_2.x)), vec4<i32>(max(select(arg_2.x, -10358i, global2.x), countOneBits(arg_1.x)), -1i << (1u % 32u), _wgslsmith_sub_i32(0i, abs(0i)), _wgslsmith_add_i32(arg_2.x, -2147483647i) | countOneBits(0i))) << (vec4<u32>(1u, u_input.a.x, (_wgslsmith_dot_vec2_u32(u_input.a.zx, u_input.a.zz) ^ u_input.a.x) >> (u_input.a.x % 32u), ~_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 82924u), vec4<u32>(u_input.a.x, 13194u, 45907u, u_input.a.x))) % vec4<u32>(32u));
    global0 = array<vec3<u32>, 13>();
    var var_1 = _wgslsmith_div_i32(-30443i, _wgslsmith_mod_i32(-(~arg_1.x), global3[_wgslsmith_index_u32(u_input.a.x, 31u)])) != ~(_wgslsmith_clamp_i32(arg_2.x, arg_1.x, abs(arg_2.x)) << (firstTrailingBit(4294967295u) % 32u));
    var var_2 = global4[_wgslsmith_index_u32(u_input.a.x >> (_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x << (u_input.a.x % 32u), ~4294967295u), select(_wgslsmith_div_vec2_u32(u_input.a.zy, u_input.a.xx), vec2<u32>(30007u, 1u), !vec2<bool>(global2.x, arg_0.x))), _wgslsmith_sub_vec2_u32(vec2<u32>(27924u << (1u % 32u), _wgslsmith_sub_u32(u_input.a.x, u_input.a.x)), vec2<u32>(u_input.a.x, ~4294967295u))) % 32u), 29u)];
    var_1 = any(select(!select(vec3<bool>(arg_0.x, global2.x, true), select(vec3<bool>(global2.x, true, global2.x), vec3<bool>(false, arg_0.x, false), global2.x), !global2.yxx), select(vec3<bool>(u_input.a.x > u_input.a.x, true, any(global2.zxw)), select(select(global2.zyx, global2.zxz, false), global2.xxz, vec3<bool>(global2.x, global2.x, arg_0.x)), vec3<bool>(true, all(global1[_wgslsmith_index_u32(4294967295u, 4u)]), 4294967295u <= u_input.a.x)), global2.zyz));
    return abs(_wgslsmith_dot_vec2_i32(-vec2<i32>(-50866i, 0i), arg_1 & ~vec2<i32>(33931i, 8123i))) << (~0u % 32u);
}

fn func_2(arg_0: vec2<bool>) -> vec3<i32> {
    var var_0 = min(-abs(func_3(select(arg_0, arg_0, arg_0), min(vec2<i32>(0i, global3[_wgslsmith_index_u32(0u, 31u)]), vec2<i32>(24178i, 51730i)), -vec2<i32>(-41687i, 1i))), func_3(vec2<bool>(true, true), (vec2<i32>(global3[_wgslsmith_index_u32(u_input.a.x, 31u)], -2107i) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(0u, 7321u), u_input.a.xy) % vec2<u32>(32u))) | reverseBits(select(vec2<i32>(global3[_wgslsmith_index_u32(0u, 31u)], global3[_wgslsmith_index_u32(0u, 31u)]), vec2<i32>(-2147483647i, global3[_wgslsmith_index_u32(38904u, 31u)]), vec2<bool>(true, true))), -vec2<i32>(1i, 1i)));
    var var_1 = true;
    global2 = vec4<bool>(true, any(select(select(vec3<bool>(global2.x, global2.x, global2.x), vec3<bool>(global2.x, false, global2.x), global2.x), vec3<bool>(arg_0.x, arg_0.x, arg_0.x), true)) & global2.x, select(arg_0.x, true, true), false);
    var var_2 = global4[_wgslsmith_index_u32(~u_input.a.x, 29u)];
    global3 = array<i32, 31>();
    return select(vec3<i32>(global3[_wgslsmith_index_u32(~116231u, 31u)], abs(_wgslsmith_mult_i32(global3[_wgslsmith_index_u32(u_input.a.x | u_input.a.x, 31u)], _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.b, global3[_wgslsmith_index_u32(1u, 31u)], global3[_wgslsmith_index_u32(u_input.a.x, 31u)], 0i), vec4<i32>(-2147483647i, -22027i, global3[_wgslsmith_index_u32(0u, 31u)], var_2.b)))), var_2.b >> (~73180u % 32u)), select(vec3<i32>(func_3(!arg_0, -vec2<i32>(var_2.b, global3[_wgslsmith_index_u32(4294967295u, 31u)]), vec2<i32>(1i, -49422i)), ~countOneBits(-39322i), -reverseBits(41470i)), max(_wgslsmith_mult_vec3_i32(-vec3<i32>(4299i, global3[_wgslsmith_index_u32(u_input.a.x, 31u)], -4348i), firstLeadingBit(vec3<i32>(global3[_wgslsmith_index_u32(17645u, 31u)], 1i, 2147483647i))), vec3<i32>(-23619i, -1i, global3[_wgslsmith_index_u32(u_input.a.x, 31u)]) | ~vec3<i32>(global3[_wgslsmith_index_u32(8409u, 31u)], -34177i, var_2.b)), !any(vec2<bool>(true, true))), false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(global3[_wgslsmith_index_u32(4294967295u, 31u)], global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, 30489u), 29u)])) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-821f + 1213f) - -614f))), global3[_wgslsmith_index_u32(u_input.a.x, 31u)]);
    global4 = array<Struct_1, 29>();
    var var_1 = !vec4<bool>(true, false, !global2.x | (global2.x || all(global2.zy)), global2.x);
    var_1 = !global1[_wgslsmith_index_u32(~0u, 4u)];
    var var_2 = !select(!global2.xw, select(select(select(vec2<bool>(global2.x, false), var_1.zw, false), !var_1.wy, global2.x), vec2<bool>(true, true), true), vec2<bool>(false, var_0.a != -441f));
    var var_3 = -1729f;
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.a))));
    var var_5 = reverseBits(func_2(global2.yx));
    let x = u_input.a;
    s_output = StorageBuffer(global3[_wgslsmith_index_u32(reverseBits(u_input.a.x), 31u)], _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_4, 903f, var_0.a))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-264f, var_0.a, -418f) * vec3<f32>(-283f, 920f, -1636f)))))), var_4, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(993f - 285f)) + _wgslsmith_f_op_f32(step(1250f, 1230f))));
}

