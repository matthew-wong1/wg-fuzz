struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<bool>,
    d: vec2<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_1,
    c: bool,
    d: Struct_2,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: f32,
    d: vec3<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec2<f32> = vec2<f32>(-190f, -737f);

var<private> global2: array<f32, 22>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec3<u32>, arg_2: Struct_3) -> bool {
    var var_0 = firstTrailingBit(firstTrailingBit(u_input.e));
    global0 = _wgslsmith_add_u32(~12672u, countOneBits(_wgslsmith_mod_u32(56263u, arg_1.x))) & 4294967295u;
    global2 = array<f32, 22>();
    let var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(arg_2.a.a.b.x))));
    var var_2 = arg_2.a.c.yz;
    return var_2.x;
}

fn func_2() -> u32 {
    global2 = array<f32, 22>();
    global0 = countOneBits(~u_input.d);
    var var_0 = Struct_1(0i, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global2[_wgslsmith_index_u32(4294967295u, 22u)], 1424f, 366f, -618f)))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global2[_wgslsmith_index_u32(u_input.d, 22u)], 920f, global1.x, -184f)))))), vec4<bool>(func_3(_wgslsmith_div_vec2_f32(vec2<f32>(global1.x, -505f), vec2<f32>(global1.x, global1.x)), ~vec3<u32>(9140u, u_input.d, 45820u), Struct_3(Struct_2(Struct_1(u_input.c.x, vec4<f32>(global2[_wgslsmith_index_u32(u_input.d, 22u)], 595f, 604f, global2[_wgslsmith_index_u32(0u, 22u)]), vec4<bool>(true, true, true, false)), Struct_1(u_input.e, vec4<f32>(global2[_wgslsmith_index_u32(u_input.d, 22u)], 709f, -362f, global1.x), vec4<bool>(false, true, false, true)), vec3<bool>(false, false, false), vec2<bool>(true, false), Struct_1(u_input.a, vec4<f32>(global1.x, -720f, -1256f, -1000f), vec4<bool>(false, false, false, false))), false)), all(vec2<bool>(false, false)) | any(vec4<bool>(true, true, true, false)), select(false, true, false), true))), select(!select(vec4<bool>(true, false, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(any(vec4<bool>(false, false, false, true)), !all(vec2<bool>(true, true)), select(true, false, false) | true, !(u_input.e < 2147483647i))));
    var var_1 = var_0.a;
    var var_2 = Struct_1(var_0.a, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1000f, global2[_wgslsmith_index_u32(9665u >> ((u_input.d ^ 19592u) % 32u), 22u)], var_0.b.x, global1.x), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) + global1.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(global1.x)))), -2602f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(var_0.b.x, var_0.b.x, var_0.c.x))))))), vec4<bool>(var_0.c.x & (_wgslsmith_f_op_f32(-var_0.b.x) >= 538f), select(!func_3(var_0.b.xz, vec3<u32>(4294967295u, u_input.d, u_input.d), Struct_3(Struct_2(Struct_1(var_0.a, vec4<f32>(-1000f, 1013f, 1946f, -1864f), var_0.c), Struct_1(31780i, var_0.b, var_0.c), var_0.c.yyx, var_0.c.xz, Struct_1(-2147483647i, var_0.b, var_0.c)), false)), all(select(var_0.c.ww, var_0.c.yx, false)), any(vec2<bool>(var_0.c.x, var_0.c.x))), !var_0.c.x, !select(false, true, select(false, var_0.c.x, var_0.c.x))));
    return ~u_input.d ^ reverseBits(1u);
}

fn func_1() -> vec3<f32> {
    global0 = _wgslsmith_dot_vec2_u32(abs(~(~vec2<u32>(u_input.d, u_input.d))) | ~vec2<u32>(~0u, func_2()), _wgslsmith_clamp_vec2_u32(~vec2<u32>(1u, ~u_input.d), firstTrailingBit(vec2<u32>(reverseBits(u_input.d), u_input.d)), vec2<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 1u, u_input.d, u_input.d), vec4<u32>(u_input.d, 0u, 33508u, 0u)), _wgslsmith_mult_u32(u_input.d, u_input.d))));
    global2 = array<f32, 22>();
    let var_0 = firstTrailingBit(reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(-10724i, 1i, -32159i, 1i), _wgslsmith_mult_vec4_i32(select(vec4<i32>(u_input.c.x, 482i, -1i, 1i), vec4<i32>(1i, u_input.a, -1i, -35364i), vec4<bool>(true, true, true, false)), vec4<i32>(u_input.c.x, u_input.b.x, u_input.b.x, u_input.c.x)))));
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~u_input.d ^ 86136u, 22u)]), _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(f32(-1f) * -836f)) * vec3<f32>(-685f, _wgslsmith_f_op_f32(-862f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1.x)))), _wgslsmith_div_f32(225f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -130f)))));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: vec4<u32>) -> Struct_2 {
    var var_0 = arg_2.b.x;
    var var_1 = arg_2.a;
    global0 = arg_3.x;
    let var_2 = Struct_1(u_input.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_2.b - vec4<f32>(arg_1.x, -567f, 1000f, arg_0.x))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.x, global2[_wgslsmith_index_u32(arg_3.x, 22u)], global2[_wgslsmith_index_u32(arg_3.x, 22u)], global2[_wgslsmith_index_u32(u_input.d, 22u)]), vec4<f32>(global1.x, -589f, arg_1.x, global1.x), false)), _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.x, 691f, 620f, 599f), vec4<f32>(arg_2.b.x, global2[_wgslsmith_index_u32(arg_3.x, 22u)], -571f, arg_2.b.x)), true))) - arg_2.b), select(!arg_2.c, !vec4<bool>(true, arg_2.c.x, true, true), vec4<bool>(any(select(arg_2.c.wy, arg_2.c.yz, vec2<bool>(arg_2.c.x, false))), true & any(vec4<bool>(arg_2.c.x, arg_2.c.x, arg_2.c.x, true)), false, _wgslsmith_div_u32(1u, arg_3.x) != u_input.d)));
    global0 = _wgslsmith_clamp_u32(u_input.d, 1u, u_input.d);
    return Struct_2(arg_2, Struct_1(26798i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(global1.x)), 657f, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 22u)]), _wgslsmith_f_op_f32(-arg_2.b.x))), !vec4<bool>(any(vec4<bool>(true, arg_2.c.x, arg_2.c.x, arg_2.c.x)), !arg_2.c.x, true, false & var_2.c.x)), !select(var_2.c.yxz, arg_2.c.yxy, vec3<bool>(true, true, var_2.c.x)), !select(vec2<bool>(1u <= u_input.d, !var_2.c.x), arg_2.c.wx, select(arg_2.c.zx, vec2<bool>(false, var_2.c.x), !vec2<bool>(arg_2.c.x, var_2.c.x))), Struct_1(_wgslsmith_dot_vec2_i32(u_input.c, select(vec2<i32>(arg_2.a, u_input.e), u_input.c, select(vec2<bool>(var_2.c.x, var_2.c.x), var_2.c.wy, var_2.c.yx))), vec4<f32>(-1000f, global2[_wgslsmith_index_u32(~reverseBits(29167u), 22u)], _wgslsmith_f_op_f32(f32(-1f) * -203f), var_2.b.x), arg_2.c));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(574f, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(1u, 22u)] + 896f)));
    global0 = 1u;
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-585f, global1.x)) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(327f, -874f) + vec2<f32>(-628f, global2[_wgslsmith_index_u32(u_input.d, 22u)])), vec2<f32>(global2[_wgslsmith_index_u32(u_input.d, 22u)], global1.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(u_input.d, 22u)], -1725f) * vec2<f32>(-343f, global1.x))))))) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(-245f, -510f), vec2<f32>(_wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(u_input.d, 22u)], 1535f, true)), global1.x)))));
    let var_0 = Struct_3(func_4(_wgslsmith_f_op_vec3_f32(func_1()), vec3<f32>(-159f, global2[_wgslsmith_index_u32(13147u, 22u)], _wgslsmith_f_op_f32(ceil(1f))), Struct_1(2147483647i, _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1170f, 213f, global1.x, global1.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 551f, -221f, global2[_wgslsmith_index_u32(3407u, 22u)])))), select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true)), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, true))), abs(abs(~vec4<u32>(u_input.d, u_input.d, u_input.d, u_input.d)))), false);
    var var_1 = vec4<u32>(min(abs(reverseBits(u_input.d >> (1u % 32u))), _wgslsmith_sub_u32(~u_input.d << (u_input.d % 32u), 4294967295u)), u_input.d, ~u_input.d, ~(~54813u));
    var var_2 = func_4(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.x + 905f), _wgslsmith_f_op_f32(-global1.x))), global2[_wgslsmith_index_u32(1u, 22u)], _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(1656f))))), vec3<f32>(-275f, 127f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(1f)))), Struct_1(select(_wgslsmith_mod_i32(countOneBits(1i), firstTrailingBit(var_0.a.e.a)), _wgslsmith_mult_i32(~u_input.e, min(-15231i, u_input.a)), true), var_0.a.a.b, var_0.a.e.c), _wgslsmith_clamp_vec4_u32(abs(max(~vec4<u32>(17123u, 4294967295u, var_1.x, var_1.x), vec4<u32>(u_input.d, u_input.d, var_1.x, 10497u) << (vec4<u32>(u_input.d, 94487u, 5454u, var_1.x) % vec4<u32>(32u)))), _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(u_input.d, 57281u), ~var_1.x, firstTrailingBit(u_input.d), _wgslsmith_add_u32(u_input.d, 12003u)), firstTrailingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(16717u, var_1.x, var_1.x, 7708u), vec4<u32>(u_input.d, u_input.d, u_input.d, var_1.x)))), vec4<u32>(var_1.x, u_input.d, ~_wgslsmith_dot_vec3_u32(vec3<u32>(32514u, u_input.d, var_1.x), var_1.xww), 28192u)));
    let var_3 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_u32(~_wgslsmith_div_u32(u_input.d, 57697u), 4294967295u), vec2<i32>(_wgslsmith_add_i32(u_input.b.x, countOneBits(0i)) >> (var_1.x % 32u), 1i), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(~(~(var_1.x >> (u_input.d % 32u))), 22u)] * 839f), _wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(countOneBits(~vec3<u32>(u_input.d, u_input.d, 24406u)), min(~var_1.wxw, var_1.xwz ^ vec3<u32>(0u, 40709u, 52958u))), ~vec3<u32>(var_1.x, ~u_input.d, ~var_1.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -681f))));
}

