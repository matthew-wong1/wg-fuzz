struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: f32,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: u32,
    b: vec2<bool>,
    c: vec3<f32>,
    d: vec2<u32>,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 17> = array<u32, 17>(0u, 1u, 0u, 0u, 24206u, 31372u, 1u, 90331u, 1u, 56325u, 27689u, 76644u, 25455u, 13627u, 34207u, 22560u, 4294967295u);

var<private> global1: vec2<u32> = vec2<u32>(5958u, 1u);

var<private> global2: bool;

var<private> global3: vec3<f32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_3) -> vec2<bool> {
    let var_0 = Struct_2(global1.x, vec2<bool>(!(-1000f >= arg_0.x), false), arg_0.ywy, ~vec2<u32>(~0u, abs(80626u)) >> (_wgslsmith_add_vec2_u32(u_input.b, vec2<u32>(1u, 57057u) << (~vec2<u32>(arg_1.a.x, 0u) % vec2<u32>(32u))) % vec2<u32>(32u)));
    var var_1 = _wgslsmith_dot_vec4_i32(max(~select(~vec4<i32>(1i, -2147483647i, 24766i, -12054i), ~vec4<i32>(2147483647i, u_input.c, 2147483647i, u_input.c), vec4<bool>(var_0.b.x, false, false, var_0.b.x)), -(vec4<i32>(u_input.c, u_input.c, 4885i, u_input.c) ^ vec4<i32>(-33818i, u_input.c, -1i, u_input.c)) & ~select(vec4<i32>(u_input.c, -7350i, -10475i, 3238i), vec4<i32>(9154i, u_input.c, 2147483647i, 13468i), true)), countOneBits(vec4<i32>(-2147483647i, -39286i, -(~u_input.c), u_input.c)));
    global3 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(min(428f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x)))), _wgslsmith_f_op_f32(f32(-1f) * -357f), -748f)));
    global1 = firstLeadingBit(~vec2<u32>(30441u, firstTrailingBit(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(global1.x, 17u)], 4294967295u))));
    var var_2 = ~(~(~40583u));
    return var_0.b;
}

fn func_2(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: bool, arg_3: u32) -> u32 {
    let var_0 = -u_input.c;
    global2 = !select(false, arg_2, (u_input.c | ~var_0) > 1i);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_1.x)) - -174f);
    let var_2 = Struct_2(64697u, func_3(vec4<f32>(global3.x, global3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(909f + -107f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.x, global3.x))), arg_0), arg_1.yyw, vec2<u32>(arg_3 & _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(arg_0.a.zw, vec2<u32>(60181u, 78562u), u_input.b), vec2<u32>(4294967295u, arg_0.a.x)), _wgslsmith_clamp_u32(select(global1.x, ~global0[_wgslsmith_index_u32(26483u, 17u)], true | arg_2), abs(_wgslsmith_sub_u32(u_input.b.x, global0[_wgslsmith_index_u32(global1.x, 17u)])), (34687u | arg_0.a.x) & abs(global0[_wgslsmith_index_u32(global1.x, 17u)]))));
    var var_3 = Struct_1(~reverseBits(vec4<u32>(0u, global0[_wgslsmith_index_u32(9630u, 17u)], 0u, 8756u)) >> (_wgslsmith_sub_vec4_u32(countOneBits(vec4<u32>(0u, u_input.b.x, global1.x, global0[_wgslsmith_index_u32(arg_3, 17u)])), _wgslsmith_div_vec4_u32(arg_0.a, vec4<u32>(1u, var_2.a, var_2.a, 42283u))) % vec4<u32>(32u)), arg_2, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.x, _wgslsmith_f_op_f32(max(global3.x, -307f)))))), 0u, var_0);
    return min(~arg_0.a.x, abs(1u) & ~_wgslsmith_dot_vec2_u32(vec2<u32>(9771u, u_input.b.x), u_input.b)) ^ u_input.b.x;
}

fn func_1(arg_0: Struct_3, arg_1: Struct_1) -> u32 {
    global1 = ~arg_0.a.xz & (vec2<u32>(arg_1.a.x, _wgslsmith_dot_vec2_u32(arg_1.a.zw, ~u_input.b)) ^ arg_1.a.wy);
    var var_0 = min(select(vec4<i32>(u_input.c, abs(1i & u_input.c), u_input.c, u_input.c), vec4<i32>(-48821i, ~(-117300i), _wgslsmith_dot_vec3_i32(-vec3<i32>(1i, 1i, 0i), vec3<i32>(-28345i, -183i, u_input.c)), ~(~20404i)), !(!(!vec4<bool>(arg_1.b, false, arg_1.b, arg_1.b)))), -countOneBits(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, -7705i, arg_1.e, u_input.c), vec4<i32>(21216i, arg_1.e, arg_1.e, arg_1.e))) << (vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.a.x, 1u, 0u), arg_0.a.zwy), vec3<u32>(62478u, 40911u, arg_1.d)), _wgslsmith_mod_u32(reverseBits(arg_0.a.x), _wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(1u, 17u)], global0[_wgslsmith_index_u32(77691u, 17u)]), arg_1.a.yy)), func_2(arg_0, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1517f, arg_1.c, arg_1.c, global3.x)), arg_1.b && false, 0u), 4294967295u) % vec4<u32>(32u)));
    global3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_1.c - 547f), _wgslsmith_f_op_f32(ceil(-1374f)), _wgslsmith_f_op_f32(f32(-1f) * -1043f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-849f, arg_1.c, arg_1.c)))), vec3<f32>(_wgslsmith_f_op_f32(floor(-871f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_1.c, -1856f)) + _wgslsmith_f_op_f32(arg_1.c * arg_1.c)), _wgslsmith_f_op_f32(global3.x + _wgslsmith_f_op_f32(arg_1.c + -225f))), !vec3<bool>(arg_1.b | true, u_input.c > arg_1.e, any(vec2<bool>(true, true))))) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.x, _wgslsmith_f_op_f32(arg_1.c * global3.x), _wgslsmith_f_op_f32(-global3.x)) - vec3<f32>(390f, global3.x, arg_1.c)))));
    var var_1 = arg_0;
    let var_2 = ~(i32(-1i) * -1i);
    return firstLeadingBit(_wgslsmith_clamp_u32(abs(arg_0.a.x) >> ((global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(min(global0[_wgslsmith_index_u32(17270u, 17u)], 0u), 17u)], 17u)] >> (~0u % 32u)) % 32u), global1.x, ~countOneBits(64432u << (1u % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.b, _wgslsmith_clamp_vec2_u32(u_input.b, u_input.b, ~u_input.b), vec2<u32>(_wgslsmith_mod_u32(u_input.b.x, 11826u), global0[_wgslsmith_index_u32(11095u, 17u)] ^ 16312u) ^ vec2<u32>(global0[_wgslsmith_index_u32(max(u_input.a, 16024u), 17u)], _wgslsmith_mult_u32(11738u, global1.x))), vec2<u32>(_wgslsmith_mod_u32(4294967295u, u_input.b.x), _wgslsmith_sub_u32(func_1(Struct_3(vec4<u32>(1u, 7831u, u_input.a, global0[_wgslsmith_index_u32(u_input.a, 17u)])), Struct_1(vec4<u32>(63360u, 1u, 56641u, u_input.b.x), true, global3.x, 1u, -2147483647i)), ~(u_input.a & 25970u))), u_input.b);
    var var_0 = func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(2125f * -643f), _wgslsmith_f_op_f32(-global3.x), global3.x, _wgslsmith_f_op_f32(163f * 1060f)) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-816f, global3.x, global3.x, global3.x) + vec4<f32>(670f, 619f, global3.x, 266f)))))), Struct_3(vec4<u32>(79189u >> (~global1.x % 32u), ~firstTrailingBit(u_input.b.x), 14175u, _wgslsmith_clamp_u32(u_input.a ^ 43993u, global1.x << (u_input.b.x % 32u), 17476u)))).x;
    var var_1 = select(select(vec4<bool>(true, global3.x == -150f, true, !(global3.x > global3.x)), !select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true)), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false)), select(false, true, false)), !((0i << (1u % 32u)) > u_input.c)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, all(vec4<bool>(true, false, false, false)), select(true, false, false), u_input.a < global1.x), vec4<bool>(0i != u_input.c, true, false, true)), select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), true), vec4<bool>(any(vec2<bool>(true, false)), true, false, select(false, true, false)), false), 1u >= ~(~u_input.b.x)), (!any(vec2<bool>(false, false)) & false) & true);
    var var_2 = vec4<u32>(func_1(Struct_3(~vec4<u32>(35877u, 1u, 4294967295u, u_input.b.x)), Struct_1(vec4<u32>(4294967295u, 0u, 0u, global0[_wgslsmith_index_u32(4294967295u, 17u)]), false, global3.x, max(12402u, global1.x), u_input.c)), _wgslsmith_dot_vec4_u32(firstTrailingBit(~vec4<u32>(global0[_wgslsmith_index_u32(0u, 17u)], 18920u, 1u, global0[_wgslsmith_index_u32(global1.x, 17u)])), ~(~vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 17u)], global1.x, 0u, u_input.a))), 85567u, ~_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.b, vec2<u32>(global0[_wgslsmith_index_u32(0u, 17u)], global1.x)), _wgslsmith_sub_vec2_u32(vec2<u32>(0u, 117362u), u_input.b))) & ~vec4<u32>(global0[_wgslsmith_index_u32(abs(~4294967295u), 17u)], 1u, ~global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b.x, global1.x), 17u)], global1.x);
    let var_3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(766f)) + 1024f)));
    global3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-714f, global3.x, global3.x)))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(378f, 253f, global3.x)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_3, var_3, global3.x)))))));
    var var_4 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(select(min(_wgslsmith_sub_vec3_u32(vec3<u32>(global1.x, u_input.a, 8571u), vec3<u32>(u_input.b.x, 55070u, 1u)), reverseBits(~vec3<u32>(var_2.x, 34581u, 4294967295u))), vec3<u32>(4294967295u, var_2.x, ~var_2.x), select(!vec3<bool>(false, var_1.x, var_1.x), !var_1.zwx, vec3<bool>(select(var_1.x, true, var_1.x), !var_1.x, var_1.x))), vec3<u32>(var_2.x, ~abs(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, global1.x, 34210u, 7587u), vec4<u32>(14798u, global1.x, 0u, global1.x))), 1u)), 17u)];
    var_1 = vec4<bool>(!(!all(vec3<bool>(var_1.x, true, true))), var_1.x, (false || (32768u <= (global1.x << (var_2.x % 32u)))) & var_1.x, true);
    var var_5 = _wgslsmith_clamp_vec4_i32(min(vec4<i32>(_wgslsmith_mod_i32(u_input.c, -36272i), -5967i, _wgslsmith_mult_i32(2147483647i, -1i), _wgslsmith_mult_i32(u_input.c, -12932i)), abs(~vec4<i32>(u_input.c, 0i, -2147483647i, 11768i))), ~min(vec4<i32>(12931i, u_input.c, u_input.c, -2147483647i), vec4<i32>(9820i, u_input.c, u_input.c, u_input.c)), ~(~(~vec4<i32>(u_input.c, u_input.c, 19722i, -76608i)))) & select(select(select(vec4<i32>(u_input.c, -2147483647i, 44502i, u_input.c), vec4<i32>(44172i, u_input.c, u_input.c, 2147483647i), vec4<bool>(false, true, var_1.x, true)) << (min(vec4<u32>(4294967295u, global1.x, var_2.x, 53125u), vec4<u32>(global1.x, global0[_wgslsmith_index_u32(u_input.a, 17u)], var_2.x, 0u)) % vec4<u32>(32u)), vec4<i32>(-1i) * -vec4<i32>(u_input.c, 911i, 2147483647i, u_input.c), vec4<bool>(var_1.x, any(var_1.wz), all(var_1.zw), true)), select(~_wgslsmith_mod_vec4_i32(vec4<i32>(1i, 6367i, 44755i, u_input.c), vec4<i32>(38067i, u_input.c, 0i, -45319i)), ~(vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c) & vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c)), any(!vec3<bool>(false, var_1.x, var_1.x))), select(vec4<bool>(false, true, global3.x < -369f, any(vec4<bool>(true, var_1.x, false, true))), !(!vec4<bool>(false, false, var_1.x, false)), select(!vec4<bool>(false, false, var_1.x, var_1.x), select(vec4<bool>(var_1.x, var_1.x, var_1.x, true), vec4<bool>(true, false, true, var_1.x), vec4<bool>(true, false, var_1.x, var_1.x)), select(vec4<bool>(true, false, var_1.x, var_1.x), vec4<bool>(false, var_1.x, true, var_1.x), vec4<bool>(var_1.x, var_1.x, false, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x + var_3) - -276f))), _wgslsmith_f_op_f32(-global3.x)), _wgslsmith_f_op_vec2_f32(-global3.xx), _wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(countOneBits(var_5.xzw), abs(max(var_5.zwx, var_5.xwx))), vec3<i32>(abs(_wgslsmith_clamp_i32(44557i, 1i, var_5.x)), var_5.x, 3924i)));
}

