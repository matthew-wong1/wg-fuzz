struct Struct_1 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: u32,
    d: u32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec3<i32>,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 14>;

var<private> global1: array<Struct_5, 11> = array<Struct_5, 11>(Struct_5(vec4<i32>(i32(-2147483648), -1i, -10056i, 1i)), Struct_5(vec4<i32>(-4456i, 53788i, -2902i, -14934i)), Struct_5(vec4<i32>(3448i, 2147483647i, 11140i, 22050i)), Struct_5(vec4<i32>(-39993i, i32(-2147483648), 29092i, -14326i)), Struct_5(vec4<i32>(2147483647i, 54006i, 55748i, -39282i)), Struct_5(vec4<i32>(23263i, 0i, i32(-2147483648), i32(-2147483648))), Struct_5(vec4<i32>(12696i, 0i, i32(-2147483648), -46828i)), Struct_5(vec4<i32>(2147483647i, 9750i, -45134i, 0i)), Struct_5(vec4<i32>(0i, 2147483647i, -19815i, 1i)), Struct_5(vec4<i32>(1i, -25635i, 1i, 0i)), Struct_5(vec4<i32>(38060i, i32(-2147483648), 37026i, 75674i)));

var<private> global2: vec4<u32>;

var<private> global3: array<bool, 28> = array<bool, 28>(true, false, true, true, false, false, true, true, false, true, false, true, true, true, false, true, false, true, false, true, false, false, false, true, true, true, true, true);

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> vec3<i32> {
    global0 = array<vec4<i32>, 14>();
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-489f - _wgslsmith_div_f32(299f, -973f)) - 1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2107f))))), -2198f);
    let var_1 = Struct_2(Struct_1(~(~_wgslsmith_mult_vec2_u32(u_input.a.zy, u_input.a.yz)), !vec3<bool>(!global3[_wgslsmith_index_u32(82883u, 28u)], true, false), ~(global2.x & u_input.b) << (0u % 32u), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 39318u, global2.x), ~global2.zwx), u_input.b), ~_wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 92490u), global2.wzw), vec3<u32>(global2.x, global2.x, 1u))), Struct_1(abs(vec2<u32>(1u, _wgslsmith_mod_u32(u_input.a.x, global2.x))), vec3<bool>(true, true & global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.c, 1u), 28u)], any(vec3<bool>(true, global3[_wgslsmith_index_u32(1u, 28u)], global3[_wgslsmith_index_u32(14709u, 28u)]))), ~(~global2.x), ~u_input.c, vec3<u32>(4294967295u, select(_wgslsmith_mult_u32(u_input.c, 4294967295u), abs(55277u), any(vec2<bool>(true, global3[_wgslsmith_index_u32(1u, 28u)]))), u_input.a.x & 1u)));
    let var_2 = u_input.a;
    global3 = array<bool, 28>();
    return ~(select(min(vec3<i32>(-46631i, -25376i, 1i), vec3<i32>(-11111i, 1i, -42185i)), vec3<i32>(-1i, -57692i, -1i) << (vec3<u32>(u_input.b, 13809u, 52521u) % vec3<u32>(32u)), true) & select(select(vec3<i32>(1i, -29980i, -2147483647i), vec3<i32>(1i, -25577i, -2147483647i), global3[_wgslsmith_index_u32(var_1.a.e.x, 28u)]), vec3<i32>(0i, -34135i, 2147483647i), var_1.a.b.x)) ^ select(_wgslsmith_mult_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(i32(-1i) * -2409i, _wgslsmith_mod_i32(34059i, 1i), 1i >> (var_2.x % 32u))), -abs(~vec3<i32>(29368i, -13587i, -2147483647i)), all(var_1.b.b));
}

fn func_4(arg_0: Struct_4, arg_1: vec3<u32>, arg_2: vec3<bool>, arg_3: f32) -> vec2<bool> {
    var var_0 = vec3<bool>(arg_0.a.d.a.b.x || true, true, global3[_wgslsmith_index_u32(arg_0.a.a.x, 28u)]);
    global0 = array<vec4<i32>, 14>();
    global0 = array<vec4<i32>, 14>();
    var_0 = !arg_2;
    var var_1 = arg_0.a.d.a;
    return select(select(vec2<bool>(true, true), !vec2<bool>(any(var_1.b), arg_1.x <= global2.x), select(var_0.zz, vec2<bool>(var_1.b.x, false), vec2<bool>(true, true))), select(!select(select(arg_0.a.b.b.yx, arg_2.zx, arg_0.a.d.a.b.x), select(vec2<bool>(false, var_1.b.x), vec2<bool>(false, arg_2.x), var_0.zz), var_1.b.yz), vec2<bool>(false, all(vec2<bool>(true, var_1.b.x))), !(!(arg_3 <= arg_3))), vec2<bool>(true, true));
}

fn func_2() -> f32 {
    var var_0 = func_4(Struct_4(Struct_3(max(~vec4<u32>(u_input.b, global2.x, 12478u, 21516u), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, global2.x, 22943u, u_input.a.x), vec4<u32>(0u, u_input.c, 9280u, 24395u), vec4<u32>(u_input.b, u_input.a.x, global2.x, global2.x))), Struct_1(_wgslsmith_mod_vec2_u32(u_input.a.zz, u_input.a.xz), vec3<bool>(global3[_wgslsmith_index_u32(9208u, 28u)], global3[_wgslsmith_index_u32(global2.x, 28u)], global3[_wgslsmith_index_u32(1u, 28u)]), global2.x, _wgslsmith_mod_u32(8300u, 57541u), _wgslsmith_mod_vec3_u32(global2.xxw, vec3<u32>(1u, global2.x, u_input.a.x))), func_3(), Struct_2(Struct_1(vec2<u32>(global2.x, 7465u), vec3<bool>(false, global3[_wgslsmith_index_u32(u_input.b, 28u)], true), 1u, 1u, vec3<u32>(0u, 33274u, u_input.c)), Struct_1(global2.yz, vec3<bool>(global3[_wgslsmith_index_u32(35350u, 28u)], global3[_wgslsmith_index_u32(4294967295u, 28u)], true), 1u, global2.x, vec3<u32>(991u, 46952u, u_input.a.x))))), vec3<u32>(global2.x << (abs(~u_input.a.x) % 32u), max(~0u, u_input.a.x), 4294967295u), select(select(!select(vec3<bool>(true, true, true), vec3<bool>(true, global3[_wgslsmith_index_u32(0u, 28u)], global3[_wgslsmith_index_u32(0u, 28u)]), false), !select(vec3<bool>(false, true, global3[_wgslsmith_index_u32(41331u, 28u)]), vec3<bool>(global3[_wgslsmith_index_u32(global2.x, 28u)], true, global3[_wgslsmith_index_u32(u_input.b, 28u)]), vec3<bool>(global3[_wgslsmith_index_u32(1u, 28u)], false, false)), !vec3<bool>(false, global3[_wgslsmith_index_u32(0u, 28u)], global3[_wgslsmith_index_u32(0u, 28u)])), !vec3<bool>(all(vec4<bool>(true, global3[_wgslsmith_index_u32(0u, 28u)], false, global3[_wgslsmith_index_u32(1u, 28u)])), any(vec4<bool>(true, false, global3[_wgslsmith_index_u32(u_input.a.x, 28u)], true)), global3[_wgslsmith_index_u32(~61413u, 28u)]), false == (global3[_wgslsmith_index_u32(~102928u, 28u)] && false)), _wgslsmith_f_op_f32(f32(-1f) * -1097f));
    global1 = array<Struct_5, 11>();
    var var_1 = global1[_wgslsmith_index_u32(0u, 11u)];
    var var_2 = select(!vec3<bool>(global3[_wgslsmith_index_u32(1u, 28u)], global3[_wgslsmith_index_u32(u_input.c, 28u)], firstLeadingBit(u_input.b) < global2.x), select(!vec3<bool>(global3[_wgslsmith_index_u32(4493u, 28u)], var_0.x, true), select(vec3<bool>(1i <= var_1.a.x, var_0.x || global3[_wgslsmith_index_u32(u_input.c, 28u)], !var_0.x), select(select(vec3<bool>(true, true, var_0.x), vec3<bool>(false, true, true), vec3<bool>(false, false, global3[_wgslsmith_index_u32(1u, 28u)])), select(vec3<bool>(var_0.x, true, false), vec3<bool>(true, global3[_wgslsmith_index_u32(global2.x, 28u)], global3[_wgslsmith_index_u32(global2.x, 28u)]), vec3<bool>(var_0.x, global3[_wgslsmith_index_u32(global2.x, 28u)], false)), true), vec3<bool>(true, true, true)), vec3<bool>(var_0.x, all(vec4<bool>(false, global3[_wgslsmith_index_u32(global2.x, 28u)], false, true)) | !global3[_wgslsmith_index_u32(4294967295u, 28u)], !global3[_wgslsmith_index_u32(~27744u, 28u)])), select(!(!select(vec3<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 28u)], global3[_wgslsmith_index_u32(4294967295u, 28u)], false), vec3<bool>(false, true, var_0.x), var_0.x)), vec3<bool>(false, select(true, true, false) || any(vec2<bool>(var_0.x, false)), any(select(vec3<bool>(var_0.x, global3[_wgslsmith_index_u32(global2.x, 28u)], false), vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(global3[_wgslsmith_index_u32(4294967295u, 28u)], global3[_wgslsmith_index_u32(28597u, 28u)], false)))), true && var_0.x));
    let var_3 = -1i < max(var_1.a.x, func_3().x);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(588f))))));
}

fn func_5(arg_0: f32) -> Struct_2 {
    global1 = array<Struct_5, 11>();
    global0 = array<vec4<i32>, 14>();
    var var_0 = global3[_wgslsmith_index_u32(57707u ^ global2.x, 28u)];
    global2 = ~vec4<u32>(~(~(~u_input.b)), ~(~_wgslsmith_div_u32(u_input.a.x, global2.x)), 20039u, firstTrailingBit(global2.x));
    global2 = ~(abs(min(vec4<u32>(u_input.a.x, global2.x, global2.x, global2.x), ~vec4<u32>(u_input.c, u_input.a.x, 4294967295u, u_input.a.x))) ^ ~firstTrailingBit(countOneBits(vec4<u32>(u_input.c, global2.x, 1u, global2.x))));
    return Struct_2(Struct_1(~(~_wgslsmith_clamp_vec2_u32(u_input.a.yy, vec2<u32>(54811u, global2.x), vec2<u32>(global2.x, global2.x))), !select(vec3<bool>(true, true, global3[_wgslsmith_index_u32(93940u, 28u)]), vec3<bool>(true, global3[_wgslsmith_index_u32(u_input.b, 28u)], false), true), 1u, min(1u, global2.x), firstTrailingBit(vec3<u32>(reverseBits(global2.x), ~29234u, global2.x))), Struct_1(u_input.a.xy, select(!vec3<bool>(false, true, global3[_wgslsmith_index_u32(global2.x, 28u)]), vec3<bool>(global3[_wgslsmith_index_u32(select(global2.x, 4294967295u, global3[_wgslsmith_index_u32(u_input.a.x, 28u)]), 28u)], true, global2.x > 0u), vec3<bool>(false, true, false)), countOneBits(firstLeadingBit(~global2.x)), _wgslsmith_dot_vec3_u32(~(~vec3<u32>(0u, u_input.c, u_input.b)), min(u_input.a, ~vec3<u32>(0u, u_input.c, u_input.a.x))), u_input.a));
}

fn func_6(arg_0: vec2<u32>, arg_1: u32, arg_2: vec3<u32>, arg_3: Struct_2) -> Struct_3 {
    global3 = array<bool, 28>();
    return Struct_3(min(vec4<u32>(func_5(-1790f).a.e.x, 4209u, ~_wgslsmith_mod_u32(u_input.c, arg_2.x), arg_1), _wgslsmith_div_vec4_u32(min(firstLeadingBit(vec4<u32>(4294967295u, 4294967295u, u_input.a.x, global2.x)), vec4<u32>(arg_0.x, arg_0.x, arg_0.x, arg_3.a.a.x)), vec4<u32>(15743u, arg_2.x, global2.x, arg_3.a.c) << (abs(vec4<u32>(77691u, arg_3.b.d, 18537u, 0u)) % vec4<u32>(32u)))), Struct_1(_wgslsmith_mod_vec2_u32(countOneBits(vec2<u32>(0u, global2.x)), _wgslsmith_div_vec2_u32(select(arg_2.xz, vec2<u32>(global2.x, arg_0.x), global3[_wgslsmith_index_u32(global2.x, 28u)]), _wgslsmith_sub_vec2_u32(u_input.a.yx, global2.wy))), select(arg_3.a.b, func_5(_wgslsmith_f_op_f32(max(-617f, 1716f))).a.b, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.x, 4294967295u, 63072u, u_input.c) << (vec4<u32>(1u, 0u, arg_3.a.a.x, 117901u) % vec4<u32>(32u)), ~vec4<u32>(0u, global2.x, 0u, 1u)), 28u)]), arg_3.a.a.x, arg_0.x << (4294967295u % 32u), vec3<u32>(firstTrailingBit(1u), arg_2.x, 0u)), vec3<i32>(_wgslsmith_dot_vec4_i32(global0[_wgslsmith_index_u32(arg_1, 14u)], _wgslsmith_mod_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_add_vec4_i32(vec4<i32>(-22021i, -39607i, 12746i, -2147483647i), vec4<i32>(-6546i, 1i, -25692i, 17434i)))), ~_wgslsmith_mod_i32(-1507i, -35857i) << (arg_0.x % 32u), 0i), Struct_2(func_5(_wgslsmith_f_op_f32(-1162f + _wgslsmith_f_op_f32(463f + 190f))).a, Struct_1(max(~arg_3.b.a, _wgslsmith_div_vec2_u32(vec2<u32>(24831u, arg_3.a.c), global2.zx)), arg_3.b.b, ~(~1u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_3.a.c, 0u, arg_1, 0u), vec4<u32>(global2.x, 22841u, arg_1, 26285u)), ~firstLeadingBit(vec3<u32>(40091u, arg_3.a.c, u_input.a.x)))));
}

fn func_7(arg_0: f32, arg_1: Struct_3, arg_2: vec2<f32>) -> vec4<i32> {
    var var_0 = Struct_1(min(~(~vec2<u32>(u_input.c, u_input.a.x)), func_5(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0)))).a.a), func_6(_wgslsmith_div_vec2_u32(~min(arg_1.b.a, vec2<u32>(global2.x, 0u)), arg_1.d.a.e.yz), firstLeadingBit(u_input.a.x), vec3<u32>(~(~u_input.b), 1u, _wgslsmith_sub_u32(~0u, global2.x)), arg_1.d).d.b.b, abs((global2.x & arg_1.b.d) << (u_input.b % 32u)) & _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(abs(u_input.a.xy), min(vec2<u32>(u_input.a.x, 14828u), arg_1.d.a.e.xz)), arg_1.b.d), arg_1.a.x, ~_wgslsmith_mult_vec3_u32(u_input.a, func_6(~arg_1.d.b.a, global2.x, global2.yyx, func_6(vec2<u32>(0u, 1u), arg_1.d.b.e.x, vec3<u32>(4294967295u, arg_1.b.a.x, u_input.c), Struct_2(arg_1.d.b, Struct_1(arg_1.d.a.a, vec3<bool>(false, arg_1.d.a.b.x, global3[_wgslsmith_index_u32(u_input.b, 28u)]), 4294967295u, global2.x, vec3<u32>(arg_1.d.a.a.x, 22540u, global2.x)))).d).a.zzz));
    global0 = array<vec4<i32>, 14>();
    let var_1 = Struct_4(func_6(~(~(~var_0.e.yy)), u_input.b, max(u_input.a, vec3<u32>(4294967295u, global2.x, global2.x) ^ vec3<u32>(4294967295u, arg_1.b.a.x, 0u)) & var_0.e, Struct_2(Struct_1(global2.wx & var_0.e.xz, vec3<bool>(false, var_0.b.x, arg_1.d.a.b.x), 47534u, ~var_0.a.x, _wgslsmith_div_vec3_u32(u_input.a, u_input.a)), func_6(vec2<u32>(var_0.a.x, 682u), firstLeadingBit(arg_1.d.a.c), ~var_0.e, func_6(vec2<u32>(21379u, 1u), 4294967295u, arg_1.a.yzw, arg_1.d).d).b)));
    var var_2 = ~arg_1.c >> (~vec3<u32>(~22681u, ~(~9216u), select(~arg_1.b.e.x, abs(arg_1.b.d), var_0.b.x)) % vec3<u32>(32u));
    var var_3 = ~(~u_input.a);
    return vec4<i32>(func_3().x, -19677i, var_1.a.c.x, _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(arg_1.c, var_1.a.c), vec3<i32>(var_2.x, var_1.a.c.x, -37823i)) ^ _wgslsmith_mult_i32(~var_1.a.c.x, 0i), var_1.a.c.x));
}

fn func_1(arg_0: u32, arg_1: vec3<i32>, arg_2: bool) -> vec3<bool> {
    var var_0 = func_7(1000f, func_6(~vec2<u32>(arg_0, global2.x | arg_0), ~(~arg_0), global2.wyy, func_5(_wgslsmith_f_op_f32(func_2()))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(503f, 850f))))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - -966f) - -597f), _wgslsmith_f_op_f32(func_2())), true)));
    let var_1 = _wgslsmith_div_vec2_u32(countOneBits(select(~vec2<u32>(arg_0, global2.x), func_6(_wgslsmith_mult_vec2_u32(u_input.a.zz, global2.yw), ~52626u, global2.wxy, func_6(vec2<u32>(global2.x, arg_0), arg_0, vec3<u32>(0u, global2.x, global2.x), Struct_2(Struct_1(u_input.a.xy, vec3<bool>(arg_2, arg_2, arg_2), u_input.c, u_input.a.x, global2.yyx), Struct_1(vec2<u32>(1u, u_input.b), vec3<bool>(global3[_wgslsmith_index_u32(4294967295u, 28u)], false, false), 6148u, global2.x, vec3<u32>(arg_0, u_input.b, arg_0)))).d).b.a, select(true, true, arg_2))), ~global2.zx | _wgslsmith_div_vec2_u32(~u_input.a.yy, vec2<u32>(1u, global2.x)));
    let var_2 = func_5(-1086f).b;
    global2 = ~(~(~select(vec4<u32>(104604u, 59654u, 28662u, 5173u), ~vec4<u32>(1u, 84156u, u_input.b, 34137u), vec4<bool>(true, arg_2, var_2.b.x, false))));
    var_0 = select(vec4<i32>(~1i, var_0.x | 1i, arg_1.x, -13633i >> (u_input.b % 32u)), global0[_wgslsmith_index_u32(~((_wgslsmith_add_u32(var_1.x, 62685u) & countOneBits(4294967295u)) ^ 30329u), 14u)], false && arg_2);
    return var_2.b;
}

fn func_8(arg_0: vec4<i32>, arg_1: Struct_5, arg_2: vec3<bool>, arg_3: vec2<f32>) -> bool {
    global1 = array<Struct_5, 11>();
    let var_0 = arg_1;
    global0 = array<vec4<i32>, 14>();
    let var_1 = false;
    let var_2 = func_5(_wgslsmith_f_op_f32(f32(-1f) * -1000f)).a.b.yx;
    return global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(~(~vec2<u32>(0u, global2.x)), _wgslsmith_sub_vec2_u32(~global2.zy, vec2<u32>(4878u, 39728u))) & firstLeadingBit(~_wgslsmith_mod_u32(func_6(vec2<u32>(30748u, 7078u), u_input.b, global2.xyy, Struct_2(Struct_1(u_input.a.yz, vec3<bool>(global3[_wgslsmith_index_u32(22187u, 28u)], true, false), u_input.c, global2.x, vec3<u32>(35694u, 1u, global2.x)), Struct_1(vec2<u32>(36102u, 22770u), vec3<bool>(var_2.x, arg_2.x, global3[_wgslsmith_index_u32(0u, 28u)]), global2.x, global2.x, vec3<u32>(u_input.a.x, global2.x, global2.x)))).d.a.e.x, 1u)), 28u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(abs(abs(_wgslsmith_mult_vec2_u32(u_input.a.yx, global2.xw))), vec3<bool>(false, func_8(abs(vec4<i32>(51885i, 1i, 2147483647i, -2147483647i) & global0[_wgslsmith_index_u32(u_input.a.x, 14u)]), global1[_wgslsmith_index_u32(~reverseBits(global2.x), 11u)], select(vec3<bool>(false, false, global3[_wgslsmith_index_u32(global2.x, 28u)]), func_1(global2.x, vec3<i32>(0i, 12564i, 2147483647i), global3[_wgslsmith_index_u32(0u, 28u)]), !vec3<bool>(global3[_wgslsmith_index_u32(global2.x, 28u)], true, global3[_wgslsmith_index_u32(0u, 28u)])), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(683f, -581f)))), global3[_wgslsmith_index_u32(1u, 28u)]), ~((u_input.a.x << (u_input.a.x % 32u)) | global2.x), 32692u, u_input.a);
    global3 = array<bool, 28>();
    var var_1 = ~select(~(~vec4<u32>(4294967295u, 4294967295u, global2.x, u_input.c)), ~(vec4<u32>(global2.x, 35911u, u_input.c, 4294967295u) | countOneBits(vec4<u32>(47321u, 37089u, var_0.e.x, global2.x))), select(!global3[_wgslsmith_index_u32(~var_0.a.x, 28u)], global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(~u_input.c, ~global2.x), 28u)], var_0.b.x));
    let var_2 = Struct_3(abs(vec4<u32>(var_1.x, ~u_input.a.x, ~30758u, 113059u)) << (_wgslsmith_mult_vec4_u32(~vec4<u32>(var_1.x, 4294967295u, var_0.c, 54315u), _wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(39033u, u_input.a.x, 4294967295u, 1853u), vec4<u32>(u_input.a.x, global2.x, u_input.c, var_0.a.x)), vec4<u32>(88668u, 61492u, 4294967295u, var_1.x), ~vec4<u32>(17724u, 1u, 1u, global2.x))) % vec4<u32>(32u)), func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -199f))).a, ~(vec3<i32>(firstTrailingBit(-1i), _wgslsmith_div_i32(8930i, -1i), ~3813i) >> (~var_1.zzz % vec3<u32>(32u))), Struct_2(func_5(_wgslsmith_f_op_f32(-854f - _wgslsmith_f_op_f32(-2385f * -556f))).a, func_6(u_input.a.yz << (_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c, u_input.b), vec2<u32>(global2.x, 15239u)) % vec2<u32>(32u)), abs(~107258u), u_input.a, Struct_2(func_5(608f).a, func_6(var_0.e.xx, global2.x, var_1.xwx, Struct_2(Struct_1(var_0.e.xx, vec3<bool>(false, true, false), global2.x, 0u, vec3<u32>(28673u, 1u, 28297u)), Struct_1(vec2<u32>(1u, 47445u), vec3<bool>(false, true, true), u_input.b, 0u, u_input.a))).b)).d.b));
    let var_3 = var_2.a;
    global2 = select(var_3, _wgslsmith_mult_vec4_u32(vec4<u32>(abs(~4294967295u), 15081u, ~(34082u & var_0.e.x), 20128u), countOneBits(~var_3) << (var_3 % vec4<u32>(32u))), select((-1i | var_2.c.x) <= var_2.c.x, max(var_1.x, var_3.x) > reverseBits(23363u), false) != !(!(!global3[_wgslsmith_index_u32(45710u, 28u)])));
    var var_4 = Struct_4(var_2);
    let var_5 = 33103u;
    var var_6 = func_6(vec2<u32>(var_0.d, var_2.b.d), var_4.a.b.c, ~(_wgslsmith_mult_vec3_u32(func_5(814f).b.e, var_3.zzw) << (~global2.zyw % vec3<u32>(32u))), var_2.d).d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -703f));
}

