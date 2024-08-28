struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: u32,
    b: vec2<u32>,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec4<f32>,
    c: vec3<i32>,
    d: f32,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: vec2<bool>,
    d: f32,
    e: bool,
}

struct Struct_5 {
    a: f32,
    b: i32,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
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

var<private> global0: array<bool, 2>;

var<private> global1: vec3<f32>;

var<private> global2: array<vec3<bool>, 28>;

var<private> global3: array<vec4<bool>, 6> = array<vec4<bool>, 6>(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true));

var<private> global4: array<vec2<bool>, 31>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec4<i32>, arg_1: i32, arg_2: Struct_1, arg_3: u32) -> i32 {
    global1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, -1006f, _wgslsmith_f_op_f32(global1.x - -738f)));
    global4 = array<vec2<bool>, 31>();
    let var_0 = Struct_3(abs(vec4<u32>(~firstLeadingBit(1u), 23725u, min(arg_3, 1u), 26484u)), vec4<f32>(-842f, global1.x, _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(floor(global1.x))), -(~(~(arg_0.yxy ^ arg_0.xxx))), global1.x, Struct_2(abs(u_input.b.x), firstTrailingBit(vec2<u32>(arg_3, u_input.b.x)), Struct_1(arg_2.a), 0i));
    var var_1 = Struct_5(_wgslsmith_f_op_f32(-global1.x), abs(~_wgslsmith_clamp_i32(arg_2.a, arg_1, -2147483647i)) | (abs(-2147483647i) & ~_wgslsmith_mult_i32(arg_1, var_0.e.c.a)), arg_1 & _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(arg_2.a, var_0.e.d, arg_1), firstTrailingBit(var_0.c)), max(vec3<i32>(-32174i, -3686i, -48559i), arg_0.xxw)));
    let var_2 = Struct_2(44612u, reverseBits(~var_0.a.ww), var_0.e.c, _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.c, _wgslsmith_dot_vec2_i32(firstTrailingBit(arg_0.wy), arg_0.wx)), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.c.x, -47284i, var_0.e.d, 2147483647i), -vec4<i32>(var_0.e.c.a, arg_0.x, var_1.c, -1861i)), _wgslsmith_sub_i32(var_1.b, arg_0.x))));
    return _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.e.c.a, var_0.e.d, arg_1, _wgslsmith_div_i32(countOneBits(8398i), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(1i, arg_1, -2147483647i), arg_0.yyx), firstLeadingBit(arg_0.yzw)))), _wgslsmith_clamp_vec4_i32(firstLeadingBit(select(vec4<i32>(arg_2.a, arg_0.x, 37355i, 3144i), -vec4<i32>(arg_2.a, -16496i, arg_2.a, arg_1), !global3[_wgslsmith_index_u32(33391u, 6u)])), abs(vec4<i32>(max(arg_0.x, 0i), -1i, _wgslsmith_dot_vec2_i32(arg_0.ww, vec2<i32>(0i, -49275i)), ~arg_0.x)), abs(vec4<i32>(1i, -33606i, -30337i, _wgslsmith_mult_i32(-14432i, var_2.c.a)))));
}

fn func_2(arg_0: Struct_4) -> Struct_4 {
    let var_0 = vec2<i32>(0i, func_3(_wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(-vec4<i32>(arg_0.b.c.a, 85107i, arg_0.b.d, -43138i), _wgslsmith_sub_vec4_i32(vec4<i32>(arg_0.b.d, 32925i, -36569i, 0i), vec4<i32>(arg_0.a.a, 0i, -2634i, arg_0.b.d))), vec4<i32>(~arg_0.b.d, -4243i, i32(-1i) * -26491i, -arg_0.a.a)), ~arg_0.a.a, arg_0.a, 36917u));
    global4 = array<vec2<bool>, 31>();
    let var_1 = !(firstLeadingBit(_wgslsmith_sub_i32(-2147483647i, arg_0.a.a) | _wgslsmith_sub_i32(-266i, var_0.x)) > var_0.x);
    let var_2 = arg_0.b.d;
    var var_3 = _wgslsmith_mod_u32(arg_0.b.b.x << ((~arg_0.b.b.x << (4294967295u % 32u)) % 32u), _wgslsmith_mod_u32(0u, ~0u)) ^ arg_0.b.b.x;
    return Struct_4(Struct_1(var_0.x), arg_0.b, !(!select(!arg_0.c, global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, arg_0.b.b.x), vec2<u32>(arg_0.b.b.x, 5447u)), 31u)], global0[_wgslsmith_index_u32(arg_0.b.b.x, 2u)] && true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global1.x * 764f), -931f, all(arg_0.c))) * arg_0.d), true);
}

fn func_4(arg_0: Struct_4, arg_1: i32, arg_2: f32, arg_3: Struct_1) -> u32 {
    var var_0 = -min(_wgslsmith_mult_vec3_i32(~(~vec3<i32>(arg_3.a, arg_0.a.a, -6500i)), _wgslsmith_mod_vec3_i32(~vec3<i32>(24079i, -2147483647i, -10469i), select(vec3<i32>(arg_1, arg_1, arg_1), vec3<i32>(arg_0.a.a, arg_0.b.c.a, arg_1), arg_0.e))), -vec3<i32>(arg_3.a & -2147483647i, arg_0.a.a ^ arg_0.b.c.a, -1i));
    let var_1 = -1i;
    global1 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(global1.x)))), arg_0.d, func_2(func_2(arg_0)).d), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(821f, 1000f, 1839f), vec3<f32>(arg_0.d, 355f, arg_2)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, arg_0.d, arg_0.d) * vec3<f32>(944f, -249f, -1175f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(517f, 1000f, arg_0.d), vec3<f32>(-881f, arg_2, -365f)))))));
    let var_2 = func_2(Struct_4(func_2(Struct_4(arg_3, arg_0.b, select(global4[_wgslsmith_index_u32(u_input.b.x, 31u)], vec2<bool>(true, false), arg_0.c), _wgslsmith_f_op_f32(exp2(global1.x)), all(vec3<bool>(global0[_wgslsmith_index_u32(arg_0.b.a, 2u)], true, global0[_wgslsmith_index_u32(38058u, 2u)])))).a, arg_0.b, select(arg_0.c, arg_0.c, any(!vec2<bool>(arg_0.c.x, false))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global1.x, global1.x)) - _wgslsmith_f_op_f32(step(global1.x, 431f))), _wgslsmith_div_f32(global1.x, 889f))), !(arg_1 > arg_0.a.a) || all(!global2[_wgslsmith_index_u32(u_input.a, 28u)]))).b;
    let var_3 = true;
    return 1u;
}

fn func_1() -> Struct_5 {
    let var_0 = ~vec4<u32>(~u_input.b.x, func_4(func_2(Struct_4(Struct_1(0i), Struct_2(4294967295u, vec2<u32>(4294967295u, 23898u), Struct_1(1i), 11647i), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 2u)], global0[_wgslsmith_index_u32(3854u, 2u)]), global1.x, global0[_wgslsmith_index_u32(15266u, 2u)])), 1i, -122f, Struct_1(0i)), _wgslsmith_mult_u32(max(u_input.b.x, 9466u), _wgslsmith_mod_u32(4294967295u, 34892u)), u_input.b.x) | (~_wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(59750u, u_input.a, 1u, 4294967295u), vec4<u32>(49829u, 13658u, u_input.b.x, 1u), vec4<u32>(73544u, u_input.b.x, 6124u, u_input.b.x)), ~vec4<u32>(u_input.a, u_input.b.x, 4294967295u, u_input.b.x)) | (vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.b.x), vec2<u32>(0u, 4294967295u)), ~u_input.b.x, 0u, _wgslsmith_div_u32(60495u, 4294967295u)) ^ (~vec4<u32>(28373u, u_input.b.x, 4294967295u, u_input.b.x) >> (min(vec4<u32>(u_input.a, 0u, 4294967295u, 4294967295u), vec4<u32>(u_input.a, u_input.a, 16980u, u_input.b.x)) % vec4<u32>(32u)))));
    var var_1 = func_2(func_2(func_2(Struct_4(func_2(Struct_4(Struct_1(2147483647i), Struct_2(var_0.x, u_input.b, Struct_1(-47232i), 2864i), vec2<bool>(true, false), 627f, global0[_wgslsmith_index_u32(1u, 2u)])).a, func_2(Struct_4(Struct_1(-2147483647i), Struct_2(29796u, var_0.zx, Struct_1(35386i), 0i), global4[_wgslsmith_index_u32(106197u, 31u)], -1577f, global0[_wgslsmith_index_u32(39935u, 2u)])).b, vec2<bool>(true, false), _wgslsmith_f_op_f32(global1.x + 603f), false & global0[_wgslsmith_index_u32(22251u, 2u)])))).b;
    var var_2 = func_2(func_2(Struct_4(func_2(Struct_4(var_1.c, Struct_2(1u, vec2<u32>(u_input.a, 4294967295u), Struct_1(23370i), -2147483647i), global4[_wgslsmith_index_u32(u_input.a, 31u)], global1.x, global0[_wgslsmith_index_u32(var_0.x, 2u)])).a, func_2(Struct_4(var_1.c, Struct_2(4294967295u, vec2<u32>(28318u, 23700u), Struct_1(-57670i), -51651i), vec2<bool>(false, global0[_wgslsmith_index_u32(2651u, 2u)]), global1.x, false)).b, global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(~var_0.x, var_0.x), 31u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + global1.x)), func_2(Struct_4(var_1.c, Struct_2(1329u, var_1.b, var_1.c, var_1.d), vec2<bool>(global0[_wgslsmith_index_u32(var_1.a, 2u)], false), global1.x, true)).e & true)));
    return Struct_5(-1792f, 2147483647i, var_2.a.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global1.x)), _wgslsmith_f_op_f32(-global1.x)) - _wgslsmith_f_op_f32(-global1.x)), global1.x));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x));
    global1 = _wgslsmith_f_op_vec3_f32(-var_0);
    global4 = array<vec2<bool>, 31>();
    global3 = array<vec4<bool>, 6>();
    global3 = array<vec4<bool>, 6>();
    var var_2 = func_1();
    var var_3 = Struct_3(firstLeadingBit(vec4<u32>(u_input.b.x, u_input.b.x & u_input.b.x, _wgslsmith_sub_u32(u_input.b.x, u_input.a), u_input.a & u_input.a) & vec4<u32>(106947u, ~u_input.a, ~0u, _wgslsmith_dot_vec2_u32(vec2<u32>(31984u, 0u), u_input.b))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_2.a, var_2.a, 642f, -145f), vec4<f32>(125f, global1.x, global1.x, global1.x))) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.x, var_2.a, global1.x, var_2.a)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-169f + -288f), -711f, _wgslsmith_f_op_f32(var_0.x - var_2.a), _wgslsmith_f_op_f32(sign(751f))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, global1.x, -947f, -1109f), vec4<f32>(global1.x, 120f, 709f, 515f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(937f, -120f, var_2.a, -612f))))))), vec3<i32>(-_wgslsmith_clamp_i32(_wgslsmith_add_i32(1i, var_2.c), var_2.b & -28691i, select(var_2.c, 0i, true)), var_2.b, _wgslsmith_add_i32(_wgslsmith_div_i32(1i, _wgslsmith_div_i32(var_2.b, var_2.b)), -(2147483647i ^ var_2.c))), 211f, Struct_2(max(u_input.b.x, firstTrailingBit(func_4(Struct_4(Struct_1(var_2.c), Struct_2(u_input.b.x, u_input.b, Struct_1(var_2.b), -2147483647i), global4[_wgslsmith_index_u32(10292u, 31u)], global1.x, false), -15025i, global1.x, Struct_1(0i)))), u_input.b, Struct_1(2147483647i), firstLeadingBit(abs(1i))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x);
}

