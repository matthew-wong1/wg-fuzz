struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: vec2<bool>,
    d: vec3<i32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: bool,
    d: i32,
    e: bool,
}

struct Struct_4 {
    a: i32,
    b: f32,
    c: u32,
    d: vec2<bool>,
}

struct Struct_5 {
    a: vec4<bool>,
    b: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec4<u32>,
    d: vec2<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 26>;

var<private> global1: array<bool, 32> = array<bool, 32>(false, true, false, false, true, false, true, true, true, true, false, true, false, false, false, false, true, true, false, false, false, false, true, false, true, true, false, true, true, true, false, true);

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> bool {
    global1 = array<bool, 32>();
    global0 = array<u32, 26>();
    global0 = array<u32, 26>();
    global1 = array<bool, 32>();
    let var_0 = (countOneBits(vec3<u32>(global0[_wgslsmith_index_u32(34405u, 26u)], _wgslsmith_div_u32(933u, 1u), 82438u)) >> (abs(abs(~vec3<u32>(global0[_wgslsmith_index_u32(1u, 26u)], global0[_wgslsmith_index_u32(u_input.a, 26u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 26u)], 26u)]))) % vec3<u32>(32u))) << (~vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(u_input.e, vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 26u)], 26u)], 25933u, u_input.a, 77073u)), ~1u), 8632u, 4294967295u) % vec3<u32>(32u));
    return true;
}

fn func_2() -> Struct_3 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1689f * -748f) * _wgslsmith_f_op_f32(select(-1487f, 247f, global1[_wgslsmith_index_u32(31310u, 32u)])))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(349f)), 1196f))), -1370f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-187f * _wgslsmith_f_op_f32(f32(-1f) * -126f)), 1099f))));
    var var_1 = var_0.yz;
    var_1 = var_0.zy;
    let var_2 = Struct_1(global1[_wgslsmith_index_u32(u_input.b, 32u)], vec4<i32>(17611i, _wgslsmith_mult_i32(-10123i, 23430i << (global0[_wgslsmith_index_u32(0u, 26u)] % 32u)), _wgslsmith_clamp_i32(-36811i, -28919i, -1i) << (_wgslsmith_dot_vec4_u32(vec4<u32>(34080u, u_input.a, u_input.a, global0[_wgslsmith_index_u32(1u, 26u)]), u_input.e) % 32u), i32(-1i) * -1i) >> (~_wgslsmith_mult_vec4_u32(min(u_input.e, vec4<u32>(127619u, 1u, 0u, 0u)), ~vec4<u32>(14492u, 0u, u_input.b, global0[_wgslsmith_index_u32(u_input.b, 26u)])) % vec4<u32>(32u)), !(!(!select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 32u)], global1[_wgslsmith_index_u32(1u, 32u)]), vec2<bool>(global1[_wgslsmith_index_u32(17633u, 32u)], true), vec2<bool>(true, true)))), select(_wgslsmith_add_vec3_i32(vec3<i32>(-1i, 0i, -2147483647i), vec3<i32>(-1i, 30380i, 1i)) << ((u_input.c | vec3<u32>(53165u, u_input.d, global0[_wgslsmith_index_u32(31179u, 26u)])) % vec3<u32>(32u)), firstLeadingBit(~vec3<i32>(43179i, 17153i, -18425i)), global1[_wgslsmith_index_u32(u_input.a, 32u)]) >> (~_wgslsmith_sub_vec3_u32(reverseBits(vec3<u32>(24962u, global0[_wgslsmith_index_u32(104935u, 26u)], 1u)), ~u_input.e.zzw) % vec3<u32>(32u)), true);
    let var_3 = _wgslsmith_f_op_f32(-var_0.x);
    return Struct_3(var_2.c.x, 62565u, global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(abs(~20895u & global0[_wgslsmith_index_u32(19726u, 26u)]), ~4294967295u), 32u)], -var_2.b.x, func_3() || false);
}

fn func_1(arg_0: vec2<i32>) -> Struct_5 {
    global0 = array<u32, 26>();
    let var_0 = global0[_wgslsmith_index_u32(25777u, 26u)];
    let var_1 = func_2();
    global1 = array<bool, 32>();
    global0 = array<u32, 26>();
    return Struct_5(!(!(!(!vec4<bool>(true, global1[_wgslsmith_index_u32(1552u, 32u)], true, false)))), Struct_3(true, u_input.d, all(select(vec2<bool>(true, true), vec2<bool>(true, var_1.a), true)), 1i, true));
}

fn func_4(arg_0: Struct_5) -> Struct_3 {
    let var_0 = Struct_2(Struct_1(false, vec4<i32>(arg_0.b.d, -3185i, _wgslsmith_dot_vec4_i32(~vec4<i32>(arg_0.b.d, arg_0.b.d, arg_0.b.d, arg_0.b.d), vec4<i32>(-12553i, 42610i, -1i, arg_0.b.d) >> (u_input.e % vec4<u32>(32u))), _wgslsmith_add_i32(23294i, arg_0.b.d << (u_input.a % 32u))), arg_0.a.zy, vec3<i32>(-1i, -1i, 1i), true), Struct_1(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 26u)], 32u)], ((vec4<i32>(arg_0.b.d, 0i, arg_0.b.d, arg_0.b.d) & vec4<i32>(arg_0.b.d, arg_0.b.d, arg_0.b.d, 0i)) | select(vec4<i32>(-24894i, arg_0.b.d, arg_0.b.d, arg_0.b.d), vec4<i32>(arg_0.b.d, -5135i, arg_0.b.d, arg_0.b.d), global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(27349u, 26u)], 32u)])) ^ -_wgslsmith_mod_vec4_i32(vec4<i32>(47547i, arg_0.b.d, 31461i, 36227i), vec4<i32>(arg_0.b.d, 0i, -2147483647i, arg_0.b.d)), !arg_0.a.yz, vec3<i32>(_wgslsmith_div_i32(arg_0.b.d, _wgslsmith_div_i32(arg_0.b.d, -48330i)), arg_0.b.d, -1i), arg_0.a.x | all(arg_0.a.yyx)));
    var var_1 = vec4<u32>(arg_0.b.b, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_0.b.b, 4294967295u), 26u)], 26u)], 4294967295u, ~global0[_wgslsmith_index_u32(~(~(~u_input.e.x)), 26u)]);
    return arg_0.b;
}

fn func_5(arg_0: Struct_3) -> vec2<bool> {
    global0 = array<u32, 26>();
    var var_0 = u_input.c.xy;
    let var_1 = true;
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1368f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1007f)))));
    let var_3 = 22933u;
    return select(select(!select(vec2<bool>(false, true), !vec2<bool>(true, global1[_wgslsmith_index_u32(15635u, 32u)]), var_1), vec2<bool>(false, arg_0.d == _wgslsmith_sub_i32(2147483647i, 15806i)), !func_1(~vec2<i32>(0i, 26323i)).a.xw), !func_1(_wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(arg_0.d, -1281i), vec2<i32>(20294i, 2147483647i)), -vec2<i32>(arg_0.d, arg_0.d))).a.zx, select(!(!select(vec2<bool>(var_1, false), vec2<bool>(true, true), false)), select(func_1(~vec2<i32>(arg_0.d, arg_0.d)).a.yx, vec2<bool>(!global1[_wgslsmith_index_u32(1u, 32u)], true), false), !vec2<bool>(!var_1, var_1)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 32>();
    let var_0 = Struct_4(max(_wgslsmith_mod_i32(31380i, -39290i), ~_wgslsmith_sub_i32(i32(-1i) * -10466i, i32(-1i) * -17863i)), 367f, 1u, !func_5(func_4(func_1(vec2<i32>(2147483647i, -1i)))));
    var var_1 = u_input.e.yw;
    global0 = array<u32, 26>();
    global0 = array<u32, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(countOneBits(~(vec2<u32>(var_0.c, var_1.x) << (vec2<u32>(26648u, var_0.c) % vec2<u32>(32u))))), vec3<f32>(-490f, _wgslsmith_div_f32(-119f, var_0.b), var_0.b), ~_wgslsmith_div_vec4_u32(~(~u_input.e), _wgslsmith_mod_vec4_u32(u_input.e, vec4<u32>(1u, var_1.x, var_0.c, global0[_wgslsmith_index_u32(var_0.c, 26u)]))), vec2<i32>(0i, select(var_0.a, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a, var_0.a), firstTrailingBit(vec2<i32>(-1i, var_0.a))), var_0.d.x)), -60397i);
}

