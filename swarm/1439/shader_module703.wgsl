struct Struct_1 {
    a: vec3<i32>,
    b: vec4<bool>,
    c: f32,
}

struct Struct_2 {
    a: i32,
    b: vec3<f32>,
    c: u32,
    d: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: vec2<u32>;

var<private> global2: array<i32, 14>;

var<private> global3: vec3<i32>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
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

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: bool, arg_3: vec2<i32>) -> bool {
    let var_0 = ~_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(global0.b.a.x, u_input.a.x), _wgslsmith_add_i32(u_input.a.x, 1i), global3.x), u_input.a), u_input.a);
    var var_1 = any(vec2<bool>(arg_2, arg_1.b.x));
    let var_2 = Struct_1(abs(global0.a.a), select(vec4<bool>(true, false, global0.b.b.x, all(vec3<bool>(global0.b.b.x, arg_2, global0.a.b.x))), vec4<bool>(!global0.a.b.x, true, true, arg_1.b.x), !(!select(global0.a.b, vec4<bool>(global0.a.b.x, false, true, true), global0.a.b.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-447f, global0.a.c)))) + _wgslsmith_f_op_f32(abs(-1550f))));
    let var_3 = vec4<u32>(40250u, ~4294967295u, global1.x, _wgslsmith_dot_vec3_u32(min(vec3<u32>(0u, 0u, u_input.b), abs(vec3<u32>(0u, u_input.b, 137356u))), _wgslsmith_div_vec3_u32(abs(vec3<u32>(u_input.b, global1.x, 4364u)), ~vec3<u32>(u_input.b, 0u, global1.x)))) & (~(~(~vec4<u32>(2180u, 26698u, global1.x, u_input.b))) << (abs((vec4<u32>(27031u, u_input.b, global1.x, 40824u) << (vec4<u32>(15608u, global1.x, 4259u, 1u) % vec4<u32>(32u))) ^ vec4<u32>(u_input.b, global1.x, 21144u, 4294967295u)) % vec4<u32>(32u)));
    return true;
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: f32) -> vec4<i32> {
    let var_0 = arg_1.b.x;
    var var_1 = -625f;
    let var_2 = global0.b.b.x;
    let var_3 = select(!(!select(var_0, arg_1.b.x, false)) || true, !(!func_3(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, global2[_wgslsmith_index_u32(4294967295u, 14u)], -1i, -28319i), vec4<i32>(global2[_wgslsmith_index_u32(2363u, 14u)], u_input.a.x, arg_1.a.x, 60420i), vec4<i32>(global2[_wgslsmith_index_u32(32707u, 14u)], global0.b.a.x, 0i, global2[_wgslsmith_index_u32(0u, 14u)])), global0.a, var_0, vec2<i32>(global0.a.a.x, global0.a.a.x))), global1.x == ~u_input.b);
    var var_4 = vec3<bool>(false, !(-_wgslsmith_mod_i32(arg_1.a.x, -14079i) != global3.x), select(!var_3, true, max(-1i, u_input.a.x) >= -2147483647i) & true);
    return vec4<i32>(countOneBits(_wgslsmith_clamp_i32(1i, -16702i, _wgslsmith_dot_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(arg_0, 14u)], u_input.a.x), vec2<i32>(global0.a.a.x, global0.b.a.x)) >> (_wgslsmith_add_u32(0u, arg_0) % 32u))), ~1i, global3.x, -(~(global0.a.a.x ^ reverseBits(global2[_wgslsmith_index_u32(24328u, 14u)]))));
}

fn func_1(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: vec4<u32>) -> bool {
    var var_0 = Struct_2(global0.a.a.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.c)), -1144f)), _wgslsmith_div_u32(~4294967295u, ~reverseBits(18956u)), vec2<bool>(any(vec3<bool>(arg_2.x < 26542u, any(global0.b.b), select(arg_0.a.b.x, global0.a.b.x, false))), global0.b.b.x));
    global3 = vec3<i32>(~65991i, -_wgslsmith_dot_vec4_i32(~vec4<i32>(global0.a.a.x, arg_1.x, var_0.a, -2147483647i), func_2(~global1.x, Struct_1(vec3<i32>(-1i, -2147483647i, -1i), vec4<bool>(true, true, false, true), var_0.b.x), _wgslsmith_f_op_f32(f32(-1f) * -902f))), min(_wgslsmith_clamp_i32(arg_0.a.a.x, _wgslsmith_mult_i32(firstLeadingBit(global2[_wgslsmith_index_u32(u_input.b, 14u)]), 40981i), min(0i, global2[_wgslsmith_index_u32(~global1.x, 14u)])), -1i));
    global1 = ~_wgslsmith_add_vec2_u32(vec2<u32>(arg_2.x, 0u), ~(vec2<u32>(arg_2.x, var_0.c) << (vec2<u32>(0u, 30669u) % vec2<u32>(32u))) << ((arg_2.xx ^ firstLeadingBit(arg_2.zy)) % vec2<u32>(32u)));
    let var_1 = arg_0;
    let var_2 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-var_0.b.xy)));
    return (_wgslsmith_sub_u32(4294967295u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.c, arg_2.x), arg_2.zx)) == abs(~global1.x)) && !(false && (_wgslsmith_f_op_f32(max(arg_0.a.c, var_0.b.x)) <= _wgslsmith_f_op_f32(-var_1.a.c)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(vec2<i32>(-(~(-1i >> (1u % 32u))), u_input.a.x), _wgslsmith_sub_vec2_i32(global3.xy, vec2<i32>(~firstLeadingBit(u_input.a.x), _wgslsmith_sub_i32(~u_input.a.x, ~46849i))));
    let var_1 = Struct_3(global0.b, Struct_1(u_input.a, vec4<bool>(false, true, global0.a.b.x, global0.a.c >= _wgslsmith_f_op_f32(-338f * 466f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.c + global0.a.c) + global0.b.c))));
    global3 = _wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(~global0.a.a, select(_wgslsmith_mod_vec3_i32(~vec3<i32>(0i, var_1.b.a.x, 34485i), -global0.b.a), vec3<i32>(_wgslsmith_clamp_i32(1i, 1i, global2[_wgslsmith_index_u32(u_input.b, 14u)]), firstLeadingBit(var_0.x), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, global3.x, 0i, 2147483647i), vec4<i32>(global3.x, -1i, 51390i, var_0.x))), select(var_1.b.b.x | var_1.b.b.x, 461f != var_1.a.c, func_1(var_1, vec4<i32>(global0.b.a.x, -1i, var_1.a.a.x, global0.b.a.x), vec4<u32>(global1.x, global1.x, 16074u, global1.x))))), vec3<i32>(abs(~global0.b.a.x), u_input.a.x, global3.x));
    var var_2 = func_2(~_wgslsmith_div_u32(0u, 23222u), Struct_1(reverseBits(-global0.a.a) | select(func_2(u_input.b, Struct_1(vec3<i32>(0i, 13648i, 26481i), vec4<bool>(true, var_1.b.b.x, var_1.a.b.x, var_1.a.b.x), var_1.b.c), 1372f).wxy, vec3<i32>(u_input.a.x, global2[_wgslsmith_index_u32(0u, 14u)], global3.x), !var_1.a.b.wzz), vec4<bool>(var_1.b.b.x, all(vec3<bool>(var_1.b.b.x, global0.b.b.x, true)), true, !(var_1.b.b.x && var_1.a.b.x)), var_1.b.c), global0.a.c).xw;
    var var_3 = var_1;
    let var_4 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(466f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_3.a.c, global0.b.c, any(vec2<bool>(true, var_1.b.b.x)))) + -864f)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-356f * 3322f), -486f) - vec2<f32>(2054f, -475f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_3.a.c), var_3.b.c))))));
    var var_5 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.b.c)));
    global0 = var_1;
    var var_6 = Struct_2(reverseBits(_wgslsmith_mult_i32(var_0.x >> (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 80353u, global1.x, 4294967295u), vec4<u32>(u_input.b, u_input.b, u_input.b, 105902u)) % 32u), 1i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.b.c, 543f, 181f))), global1.x, vec2<bool>(true, !(!(true || var_1.a.b.x))));
    let x = u_input.a;
    s_output = StorageBuffer(~1u, -global0.a.a.yz, vec3<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(var_2.x, global0.b.a.x), vec2<i32>(abs(var_2.x), var_0.x)), _wgslsmith_mod_i32(-2147483647i, _wgslsmith_mod_i32(-9443i, var_0.x)) | (i32(-1i) * -24469i), var_0.x));
}

