struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: vec4<u32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: f32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 12>;

var<private> global1: bool;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: u32) -> vec4<bool> {
    var var_0 = Struct_3(-(~(~vec3<i32>(-15260i, u_input.c.x, 44735i) ^ max(vec3<i32>(u_input.c.x, u_input.c.x, u_input.d.x), u_input.c))), all(select(select(vec3<bool>(global0[_wgslsmith_index_u32(39706u, 12u)], global0[_wgslsmith_index_u32(arg_0, 12u)], global0[_wgslsmith_index_u32(0u, 12u)]), vec3<bool>(global0[_wgslsmith_index_u32(0u, 12u)], false, global0[_wgslsmith_index_u32(5145u, 12u)]), global0[_wgslsmith_index_u32(arg_0, 12u)]), vec3<bool>(true, true, true), all(vec3<bool>(true, false, global0[_wgslsmith_index_u32(arg_0, 12u)])))) && false, 118f);
    var var_1 = Struct_2(var_0.a.x, -select(firstLeadingBit(-vec4<i32>(var_0.a.x, var_0.a.x, -2147483647i, -42884i)), ~(-vec4<i32>(var_0.a.x, 0i, u_input.d.x, u_input.b)), any(vec3<bool>(var_0.b, false, false))), arg_0, _wgslsmith_mult_vec4_u32(~u_input.e, (vec4<u32>(59308u, 1u, 4294967295u, 4364u) >> (select(vec4<u32>(arg_0, 22667u, arg_0, 0u), vec4<u32>(43202u, 0u, arg_0, u_input.a), vec4<bool>(true, var_0.b, global0[_wgslsmith_index_u32(u_input.a, 12u)], false)) % vec4<u32>(32u))) << (u_input.e % vec4<u32>(32u))));
    var var_2 = false;
    var_0 = Struct_3(-(vec3<i32>(var_0.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.b.x, var_0.a.x), var_0.a.zz), _wgslsmith_dot_vec2_i32(var_1.b.wx, var_1.b.zx)) | ~(vec3<i32>(-1i, -1i, var_1.b.x) ^ vec3<i32>(var_1.b.x, 0i, 0i))), false, var_0.c);
    var var_3 = !(!select(!vec4<bool>(var_0.b, false, true, false), vec4<bool>(false & var_0.b, false, false, u_input.a <= arg_0), vec4<bool>(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_1.c, var_1.d.x, arg_0), 12u)], var_0.b, global0[_wgslsmith_index_u32(~1u, 12u)], global0[_wgslsmith_index_u32(1u, 12u)])));
    return select(!vec4<bool>(all(var_3.zxz), true, true, any(vec4<bool>(var_0.b, false, true, false))), select(vec4<bool>(true, false, global0[_wgslsmith_index_u32(reverseBits(0u), 12u)], true), select(!(!vec4<bool>(var_3.x, true, var_0.b, var_0.b)), select(select(vec4<bool>(var_0.b, var_3.x, var_0.b, true), vec4<bool>(var_0.b, false, var_0.b, global0[_wgslsmith_index_u32(u_input.a, 12u)]), vec4<bool>(var_0.b, var_3.x, var_0.b, global0[_wgslsmith_index_u32(arg_0, 12u)])), vec4<bool>(false, false, false, false), !vec4<bool>(global0[_wgslsmith_index_u32(arg_0, 12u)], false, var_0.b, true)), vec4<bool>(false, global0[_wgslsmith_index_u32(~u_input.e.x, 12u)], true, false)), !select(select(vec4<bool>(var_3.x, var_3.x, true, var_0.b), vec4<bool>(var_3.x, false, true, true), var_3.x), select(vec4<bool>(var_0.b, true, var_3.x, var_0.b), vec4<bool>(global0[_wgslsmith_index_u32(91919u, 12u)], true, true, true), var_3.x), false)), !all(!select(vec4<bool>(var_0.b, true, var_0.b, true), vec4<bool>(var_0.b, var_3.x, var_3.x, global0[_wgslsmith_index_u32(4294967295u, 12u)]), false)));
}

fn func_2(arg_0: bool) -> i32 {
    global1 = true;
    let var_0 = Struct_3(~_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.d.x, 16026i, u_input.d.x) & -vec3<i32>(u_input.c.x, -2147483647i, u_input.c.x), min(-u_input.d, vec3<i32>(u_input.b, -2147483647i, u_input.d.x))), false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1107f), _wgslsmith_f_op_f32(790f * -126f), true)))));
    global1 = !global0[_wgslsmith_index_u32(33147u, 12u)];
    let var_1 = !func_3(~u_input.a);
    global0 = array<bool, 12>();
    return ~abs(abs(1i));
}

fn func_4(arg_0: u32, arg_1: Struct_2) -> i32 {
    var var_0 = func_3(~4294967295u).wzy;
    var var_1 = vec2<u32>(_wgslsmith_add_u32(25446u, abs(firstLeadingBit(0u))), ~arg_1.d.x << (_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(arg_1.d.x, arg_1.c, 6433u) & vec3<u32>(arg_0, 4294967295u, 4294967295u), vec3<u32>(4294967295u, arg_1.d.x, 1u) ^ vec3<u32>(4294967295u, 149253u, 0u)), ~vec3<u32>(107503u, arg_0, arg_1.c)) % 32u));
    global1 = true;
    var var_2 = vec4<bool>(true, func_3(~4294967295u).x, !((all(var_0.yx) & all(vec4<bool>(true, true, global0[_wgslsmith_index_u32(71444u, 12u)], true))) == true), arg_0 >= arg_1.d.x);
    var_1 = _wgslsmith_div_vec2_u32(~_wgslsmith_clamp_vec2_u32(vec2<u32>(var_1.x, 54194u), arg_1.d.zz, u_input.e.zz), vec2<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, var_1.x, 64491u), vec3<u32>(38354u, 26534u, 4294967295u) ^ vec3<u32>(u_input.a, arg_0, 115406u)), 4294967295u)) ^ _wgslsmith_add_vec2_u32(u_input.e.yw << (u_input.e.zw % vec2<u32>(32u)), _wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(arg_0, 2529u), u_input.e.yy) >> (vec2<u32>(u_input.a, 105339u) % vec2<u32>(32u)), _wgslsmith_sub_vec2_u32(vec2<u32>(arg_0, 19955u), ~u_input.e.xx)));
    return ~max(-arg_1.a, 2147483647i);
}

fn func_1() -> vec3<bool> {
    let var_0 = Struct_1(firstLeadingBit(~(-u_input.d.x)) & func_4(0u, Struct_2(func_2(false), -vec4<i32>(u_input.b, u_input.c.x, 11185i, -2147483647i), 4531u, _wgslsmith_add_vec4_u32(u_input.e, u_input.e))));
    let var_1 = (-u_input.d.zz & u_input.d.yy) & vec2<i32>(1018i, _wgslsmith_add_i32(u_input.b, -3701i));
    let var_2 = var_0;
    global1 = func_3(_wgslsmith_add_u32(1u, 0u) & ~(_wgslsmith_dot_vec3_u32(u_input.e.wwy, vec3<u32>(31826u, 33428u, 0u)) << (abs(80859u) % 32u))).x;
    let var_3 = false;
    return select(!func_3(14894u).yyy, select(select(vec3<bool>(any(vec2<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 12u)])), global0[_wgslsmith_index_u32(u_input.a ^ u_input.a, 12u)], global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a, 29609u), 12u)]), !(!vec3<bool>(var_3, false, global0[_wgslsmith_index_u32(49011u, 12u)])), !(!vec3<bool>(var_3, false, true))), func_3(28887u).zwx, global0[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e.x, 1u, 4294967295u), vec3<u32>(u_input.e.x, u_input.e.x, 58724u))) << (~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.e.x, u_input.e.x, 4294967295u), vec4<u32>(21146u, 0u, 92212u, 9416u)) % 32u), 12u)]), func_3(u_input.e.x >> (1u % 32u)).zwz);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = false;
    var var_0 = Struct_1(7815i);
    var_0 = Struct_1(1i);
    let var_1 = func_1();
    global1 = 490f < _wgslsmith_f_op_f32(select(232f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -604f) + _wgslsmith_f_op_f32(f32(-1f) * -611f))), func_3(u_input.e.x).x));
    global0 = array<bool, 12>();
    var var_2 = 4294967295u;
    var var_3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1000f, 351f)))))));
    global0 = array<bool, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(func_4(_wgslsmith_mod_u32(47351u, max(20538u, u_input.e.x)), Struct_2(~var_0.a, vec4<i32>(-14285i, var_0.a, u_input.b, 55966i), 101141u, countOneBits(vec4<u32>(4294967295u, u_input.a, 61411u, 2954u)))), -(_wgslsmith_div_i32(36061i, var_0.a) >> (_wgslsmith_div_u32(u_input.a, u_input.a) % 32u)), ~var_0.a >> ((50459u << (min(u_input.a, u_input.a) % 32u)) % 32u)), _wgslsmith_mod_vec4_i32(countOneBits((vec4<i32>(u_input.b, var_0.a, var_0.a, 44441i) << (vec4<u32>(65915u, 4294967295u, u_input.a, u_input.a) % vec4<u32>(32u))) ^ vec4<i32>(1i, -2147483647i, u_input.b, u_input.c.x)), -(vec4<i32>(1i, u_input.c.x, 0i, -46489i) & vec4<i32>(var_0.a, -1i, var_0.a, var_0.a)) << (vec4<u32>(_wgslsmith_clamp_u32(u_input.e.x, u_input.a, u_input.a), _wgslsmith_mult_u32(0u, 0u), _wgslsmith_dot_vec3_u32(u_input.e.wyz, vec3<u32>(60549u, 37365u, 4294967295u)), u_input.e.x) % vec4<u32>(32u))), -118f, ~abs(~u_input.e.xx));
}

