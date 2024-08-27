struct Struct_1 {
    a: vec2<u32>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: array<f32, 18> = array<f32, 18>(-1043f, 1343f, 605f, -746f, 1020f, -548f, -498f, 142f, 912f, 807f, 310f, 978f, 1139f, -1053f, 949f, 2174f, -690f, 482f);

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: bool) -> f32 {
    let var_0 = -_wgslsmith_mult_i32(u_input.b.x, ~(-32951i ^ u_input.b.x));
    global1 = array<f32, 18>();
    let var_1 = global1[_wgslsmith_index_u32(0u, 18u)];
    let var_2 = _wgslsmith_clamp_vec4_u32(~_wgslsmith_mult_vec4_u32(firstLeadingBit(vec4<u32>(u_input.c, 61391u, 0u, u_input.c)), ~(~vec4<u32>(92516u, 0u, 69u, 51673u))), (vec4<u32>(49108u, u_input.e, 4383u, 58439u) ^ vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.e, 36855u), vec3<u32>(58175u, 23528u, u_input.c)), _wgslsmith_div_u32(0u, 50082u), u_input.c, ~1u)) << (vec4<u32>(u_input.c, ~(~1u), 1u, u_input.c) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.e, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.e), vec2<u32>(u_input.c, u_input.e))), ~u_input.e & u_input.c), 10632u, min(u_input.c, 1u), _wgslsmith_dot_vec4_u32(vec4<u32>(~u_input.e, select(1u, u_input.c, true), ~u_input.c, 26864u), ~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, u_input.e, u_input.e, u_input.e), vec4<u32>(1u, 32243u, 4294967295u, 0u)))));
    global1 = array<f32, 18>();
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(u_input.e, 18u)])), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 18u)]))))), _wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_mult_u32(1u, u_input.e)), 18u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(5096u, 18u)]) * 349f), arg_1))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(39104u, 18u)], _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 18u)])))) + _wgslsmith_div_f32(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(abs(990u), 4294967295u), 18u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1302f, global1[_wgslsmith_index_u32(var_2.x, 18u)])) * _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(51609u, 18u)])))));
}

fn func_2() -> vec3<f32> {
    global0 = vec3<i32>(1i, ~(-firstTrailingBit(1i)), u_input.d);
    global0 = vec3<i32>(0i, global0.x, -44111i);
    let var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 18u)], 2061f, 1000f, 407f))), vec4<f32>(593f, global1[_wgslsmith_index_u32(1u, 18u)], -482f, 1605f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(u_input.c, 18u)], -815f, -769f, global1[_wgslsmith_index_u32(31855u, 18u)]))))), vec4<f32>(global1[_wgslsmith_index_u32(u_input.c << (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, u_input.c), vec3<u32>(u_input.c, 1u, u_input.e)) % 32u), 18u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(true, true, false))), -1630f, 898f)))));
    var var_1 = Struct_1(max(min(_wgslsmith_add_vec2_u32(~vec2<u32>(4294967295u, 1u), ~vec2<u32>(4891u, u_input.c)), vec2<u32>(~17141u, u_input.c)), abs(max(vec2<u32>(u_input.e, 21983u), vec2<u32>(u_input.e, u_input.c))) >> (vec2<u32>(~4294967295u, ~4294967295u) % vec2<u32>(32u))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(var_0.yxw, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.x, var_0.x, global1[_wgslsmith_index_u32(u_input.e, 18u)])))), false)))));
    global1 = array<f32, 18>();
    return var_1.b;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec4<u32>, arg_3: Struct_1) -> f32 {
    let var_0 = 29524u;
    var var_1 = ~arg_2.xy;
    var var_2 = arg_3;
    let var_3 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-280f, arg_3.b.x, arg_3.b.x), arg_0.b) - vec3<f32>(919f, global1[_wgslsmith_index_u32(6614u, 18u)], arg_0.b.x)) - _wgslsmith_div_vec3_f32(vec3<f32>(-605f, arg_3.b.x, arg_1.x), arg_3.b))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-var_2.b.x), _wgslsmith_f_op_f32(-712f * -616f), _wgslsmith_div_f32(845f, var_2.b.x)))), vec3<f32>(_wgslsmith_f_op_f32(arg_1.x - arg_3.b.x), arg_3.b.x, -275f))));
    var var_4 = u_input.b.x;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_2()).x), var_3.x);
}

fn func_1(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: i32) -> u32 {
    let var_0 = arg_2;
    let var_1 = arg_0;
    var var_2 = abs(vec2<u32>(~(~var_1.a.x) & (_wgslsmith_dot_vec2_u32(arg_0.a, var_1.a) ^ (var_1.a.x << (arg_0.a.x % 32u))), 0u));
    var var_3 = var_1;
    var var_4 = _wgslsmith_f_op_f32(func_4(Struct_1(_wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, var_1.a.x), _wgslsmith_div_vec2_u32(vec2<u32>(arg_0.a.x, 53728u), arg_0.a)), ~vec2<u32>(u_input.e, 1u), vec2<u32>(9490u, arg_0.a.x)), var_3.b), _wgslsmith_f_op_vec3_f32(func_2()), countOneBits(~(vec4<u32>(30446u, 0u, 0u, 22199u) & vec4<u32>(0u, u_input.e, u_input.e, 1u))), arg_0));
    return ~0u;
}

fn func_5(arg_0: vec4<f32>, arg_1: vec3<i32>) -> Struct_1 {
    global1 = array<f32, 18>();
    let var_0 = 558f;
    var var_1 = arg_0.ww;
    var var_2 = Struct_1(~_wgslsmith_mult_vec2_u32(~(~vec2<u32>(15204u, u_input.e)), vec2<u32>(u_input.e, ~u_input.e)), arg_0.www);
    global0 = vec3<i32>(global0.x, -(firstTrailingBit(_wgslsmith_dot_vec3_i32(arg_1, arg_1)) & (u_input.d ^ -14089i)), (i32(-1i) * -35864i) >> (_wgslsmith_dot_vec2_u32(var_2.a, var_2.a) % 32u));
    return Struct_1(vec2<u32>(abs(~var_2.a.x), 1u), _wgslsmith_f_op_vec3_f32(max(arg_0.yxy, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-845f * global1[_wgslsmith_index_u32(1u, 18u)]), -724f, -498f), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(arg_0.yyy - var_2.b))), !any(vec2<bool>(true, true)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~max(_wgslsmith_sub_u32(countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.c, 0u, 4294967295u), vec4<u32>(u_input.c, u_input.e, 4587u, u_input.c))), 37542u), 6022u);
    var var_1 = ~reverseBits(_wgslsmith_div_vec4_u32((vec4<u32>(var_0, var_0, u_input.c, 63332u) >> (vec4<u32>(var_0, var_0, var_0, 37226u) % vec4<u32>(32u))) & max(vec4<u32>(32292u, var_0, var_0, 0u), vec4<u32>(1u, 4294967295u, 0u, var_0)), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, 33697u, var_0, 0u) ^ vec4<u32>(var_0, 30509u, u_input.c, var_0), select(vec4<u32>(u_input.e, 51355u, var_0, 0u), vec4<u32>(var_0, 4294967295u, var_0, 56974u), vec4<bool>(false, true, false, true)))));
    var var_2 = func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global1[_wgslsmith_index_u32(func_1(Struct_1(vec2<u32>(var_1.x, u_input.c), vec3<f32>(global1[_wgslsmith_index_u32(1u, 18u)], global1[_wgslsmith_index_u32(1u, 18u)], global1[_wgslsmith_index_u32(var_1.x, 18u)])), vec2<bool>(false, false), 28160i), 18u)], global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_1.x, var_1.x, var_0), 18u)], _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_0, 18u)]), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(var_0, var_0), 18u)]), vec4<f32>(global1[_wgslsmith_index_u32(u_input.e, 18u)], _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.c, 18u)]), global1[_wgslsmith_index_u32(~u_input.e, 18u)], 449f)))), vec3<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(2147483647i, u_input.d), -u_input.b), _wgslsmith_div_i32(~global0.x, 1i), firstLeadingBit(firstTrailingBit(-2147483647i)) >> (_wgslsmith_mult_u32(firstTrailingBit(var_1.x), var_1.x) % 32u)));
    var var_3 = func_5(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1552f, _wgslsmith_f_op_f32(step(-1045f, -1041f)), _wgslsmith_f_op_f32(max(var_2.b.x, global1[_wgslsmith_index_u32(var_2.a.x, 18u)])), global1[_wgslsmith_index_u32(max(var_2.a.x, 78157u), 18u)])), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b.x, var_2.b.x, global1[_wgslsmith_index_u32(var_0, 18u)], -1000f)) - _wgslsmith_div_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(75157u, 18u)], -760f, -590f, 543f), vec4<f32>(-445f, var_2.b.x, -1010f, 1073f))))), _wgslsmith_add_vec3_i32(~select(vec3<i32>(15926i, -2147483647i, u_input.d), vec3<i32>(2147483647i, global0.x, 2147483647i), vec3<bool>(true, false, false)) >> ((vec3<u32>(var_1.x, var_2.a.x, 61681u) & (var_1.zxw ^ vec3<u32>(u_input.e, 87358u, 146628u))) % vec3<u32>(32u)), vec3<i32>(53039i ^ -u_input.a, _wgslsmith_mult_i32(-global0.x, u_input.d), -1i)));
    var var_4 = !vec2<bool>(true && all(vec2<bool>(true, true)), false);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(0u, 0u, var_0, ~var_1.x));
}

