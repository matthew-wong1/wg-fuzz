struct Struct_1 {
    a: vec3<f32>,
    b: vec4<bool>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: vec3<i32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 23> = array<bool, 23>(false, true, true, false, true, true, false, true, true, false, true, false, true, true, false, true, true, false, false, false, false, false, true);

var<private> global1: array<bool, 24> = array<bool, 24>(true, true, false, false, false, true, false, true, false, true, true, true, false, false, true, false, true, true, true, true, true, true, true, true);

var<private> global2: Struct_1 = Struct_1(vec3<f32>(-411f, 1294f, -974f), vec4<bool>(false, false, true, false), i32(-2147483648));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(trunc(global2.a.zz)))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2.a.xx) * global2.a.zx), vec2<f32>(_wgslsmith_f_op_f32(min(global2.a.x, global2.a.x)), _wgslsmith_div_f32(global2.a.x, -1598f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1000f, global2.a.x))))))) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-277f, -583f), vec2<f32>(global2.a.x, global2.a.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2.a.yx))))), vec2<bool>(global2.b.x, global2.b.x & select(global0[_wgslsmith_index_u32(1u, 23u)], true, global1[_wgslsmith_index_u32(abs(0u), 24u)]))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a.x - 1881f)) >= global2.a.x;
    let var_2 = -global2.c;
    var var_3 = Struct_3(global0[_wgslsmith_index_u32(firstTrailingBit(7170u), 23u)], Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(global2.a, global2.a)) - _wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, global2.a.x, -958f), vec3<f32>(-1000f, global2.a.x, global2.a.x))), vec4<bool>(true, any(global2.b), true, true), var_2), min(45487u, _wgslsmith_div_u32(70942u, abs(u_input.c))), Struct_1(global2.a, !global2.b, 2147483647i), vec3<i32>(var_2, abs(27340i), 12343i)));
    let var_4 = 65696u;
    return 624f;
}

fn func_2(arg_0: u32) -> Struct_3 {
    global1 = array<bool, 24>();
    global2 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global2.a.x))), _wgslsmith_f_op_f32(f32(-1f) * -1256f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + -1742f)), vec4<bool>(global0[_wgslsmith_index_u32(0u, 23u)], any(select(!vec3<bool>(global2.b.x, global2.b.x, global1[_wgslsmith_index_u32(1u, 24u)]), !global2.b.yzz, select(vec3<bool>(false, false, global0[_wgslsmith_index_u32(4294967295u, 23u)]), vec3<bool>(false, false, global2.b.x), vec3<bool>(global1[_wgslsmith_index_u32(u_input.c, 24u)], true, true)))), !global2.b.x, false), ~0i);
    global1 = array<bool, 24>();
    return Struct_3(global2.c == ~reverseBits(~0i), Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2.a)), vec4<bool>(global0[_wgslsmith_index_u32(~0u, 23u)], true, any(vec4<bool>(global0[_wgslsmith_index_u32(arg_0, 23u)], global2.b.x, false, true)), false), -firstLeadingBit(global2.c)), arg_0, Struct_1(global2.a, !vec4<bool>(false, true, global1[_wgslsmith_index_u32(u_input.b, 24u)], true), ~_wgslsmith_sub_i32(0i, global2.c)), countOneBits(_wgslsmith_mod_vec3_i32(abs(u_input.a), vec3<i32>(2147483647i, u_input.a.x, 2147483647i)))));
}

fn func_4(arg_0: Struct_3, arg_1: u32, arg_2: vec4<u32>, arg_3: Struct_3) -> u32 {
    var var_0 = ~arg_0.b.d.yx;
    var var_1 = arg_0.b;
    var var_2 = _wgslsmith_f_op_f32(-223f * _wgslsmith_f_op_f32(-1407f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-355f))))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-314f, _wgslsmith_f_op_f32(-1f))));
    var_2 = global2.b.x;
    let var_3 = i32(-1i) * -(i32(-1i) * -1i);
    return abs(1u & arg_3.b.b);
}

fn func_1(arg_0: vec4<f32>, arg_1: vec3<u32>, arg_2: Struct_2) -> Struct_1 {
    global2 = arg_2.c;
    let var_0 = vec2<bool>(true, true);
    let var_1 = Struct_2(arg_2.a, abs(~func_4(Struct_3(false, arg_2), 16891u | arg_1.x, vec4<u32>(u_input.b, arg_2.b, 1421u, 13129u) & vec4<u32>(0u, 2071u, arg_1.x, arg_2.b), func_2(35851u))), func_2(arg_2.b).b.c, arg_2.d);
    global1 = array<bool, 24>();
    let var_2 = Struct_3(false, var_1);
    return func_2(4294967295u).b.c;
}

fn func_5(arg_0: Struct_1) -> vec4<u32> {
    var var_0 = true;
    global1 = array<bool, 24>();
    return vec4<u32>(u_input.c, u_input.b, u_input.b, ~func_2(4294967295u).b.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_mod_u32(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(~u_input.c, u_input.b, 4294967295u), 4294967295u, u_input.b & u_input.c), _wgslsmith_dot_vec4_u32(func_5(func_1(vec4<f32>(136f, global2.a.x, global2.a.x, global2.a.x), vec3<u32>(u_input.b, 0u, 0u), Struct_2(Struct_1(global2.a, global2.b, u_input.a.x), 25262u, Struct_1(vec3<f32>(global2.a.x, global2.a.x, global2.a.x), global2.b, u_input.a.x), u_input.a))), vec4<u32>(u_input.c, u_input.b, 7991u, 1u << (0u % 32u))));
    var var_1 = select(_wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.b, _wgslsmith_dot_vec3_u32(select(vec3<u32>(1u, u_input.b, u_input.b), vec3<u32>(0u, u_input.b, u_input.b), true), vec3<u32>(64926u, 0u, 4294967295u))), ~abs(4294967295u >> (u_input.b % 32u))), 1u, true);
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-629f, _wgslsmith_f_op_f32(-global2.a.x), -1348f) * global2.a), select(vec4<bool>(!global0[_wgslsmith_index_u32(0u, 23u)], global2.c < global2.c, all(global2.b.wy), any(vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 24u)], global1[_wgslsmith_index_u32(15337u, 24u)]))), global2.b, 26629u == _wgslsmith_sub_u32(u_input.b, 43356u)), u_input.a.x), 1u >> (~(~select(u_input.b, u_input.c, false)) % 32u), func_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.x)), -117f, global2.a.x, _wgslsmith_f_op_f32(f32(-1f) * -839f)), vec3<u32>(u_input.b, 48182u << (u_input.c % 32u), u_input.b >> (1u % 32u)) ^ ~vec3<u32>(u_input.c, 12399u, u_input.b), Struct_2(func_2(u_input.b).b.a, func_5(Struct_1(vec3<f32>(global2.a.x, global2.a.x, global2.a.x), global2.b, u_input.a.x)).x << (_wgslsmith_add_u32(86890u, 0u) % 32u), func_1(vec4<f32>(-541f, 1249f, 944f, global2.a.x), vec3<u32>(1301u, u_input.b, u_input.b), func_2(57923u).b), _wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, -2147483647i, u_input.a.x), vec3<i32>(global2.c, 1i, global2.c)), -u_input.a))), abs((u_input.a >> ((vec3<u32>(u_input.b, 4294967295u, 0u) >> (vec3<u32>(1u, u_input.b, 80709u) % vec3<u32>(32u))) % vec3<u32>(32u))) >> (vec3<u32>(~61546u, ~84389u, 41298u) % vec3<u32>(32u))));
    let var_3 = ~(~4294967295u);
    let var_4 = 0i;
    var_1 = u_input.b;
    let var_5 = !(!(1i >= global2.c)) || false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.c.a.x, 890f, _wgslsmith_f_op_f32(sign(-2640f))) * func_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2.a.x, -2461f, var_2.c.a.x, global2.a.x), vec4<f32>(var_2.c.a.x, 557f, 1284f, -1054f), vec4<bool>(global0[_wgslsmith_index_u32(var_2.b, 23u)], var_2.c.b.x, true, global2.b.x))), ~vec3<u32>(15451u, u_input.b, var_2.b), Struct_2(Struct_1(vec3<f32>(-873f, global2.a.x, global2.a.x), vec4<bool>(true, var_2.a.b.x, global1[_wgslsmith_index_u32(u_input.c, 24u)], global1[_wgslsmith_index_u32(var_3, 24u)]), 0i), u_input.c, Struct_1(vec3<f32>(-1221f, var_2.c.a.x, var_2.a.a.x), global2.b, global2.c), u_input.a)).a)), global2.a.xx);
}

