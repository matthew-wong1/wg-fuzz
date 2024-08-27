struct Struct_1 {
    a: vec2<f32>,
    b: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec3<bool>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: f32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
}

struct Struct_5 {
    a: Struct_4,
    b: vec3<f32>,
    c: Struct_3,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: array<vec3<f32>, 28>;

var<private> global2: array<vec2<bool>, 12>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: f32, arg_1: vec3<bool>, arg_2: vec4<bool>) -> i32 {
    return _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(reverseBits(-62766i), 2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(global0.a.a, 2147483647i), vec2<i32>(global0.a.a, global0.a.a))), -global0.d << (u_input.b % vec3<u32>(32u))), -(~global0.a.a << (~0u % 32u))) ^ (_wgslsmith_mod_i32(4344i, -_wgslsmith_sub_i32(1i, global0.a.a)) | ((_wgslsmith_div_i32(global0.a.a, 0i) << (~u_input.c % 32u)) ^ global0.d.x));
}

fn func_3() -> f32 {
    let var_0 = select(!global0.c.a.x, any(select(!vec2<bool>(global0.c.a.x, global0.c.a.x), vec2<bool>(true, true), false)) & (_wgslsmith_f_op_f32(411f + 570f) == _wgslsmith_f_op_f32(sign(global0.a.b.a.x))), false);
    let var_1 = ~firstLeadingBit(~max(vec4<u32>(4294967295u, 9401u, global0.c.c.b, u_input.c), vec4<u32>(global0.c.c.b, 4294967295u, 1u, global0.c.d.b))) & ~firstTrailingBit(~vec4<u32>(u_input.a.x, global0.c.d.b, global0.a.b.b, u_input.a.x));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f)));
}

fn func_4(arg_0: vec4<i32>, arg_1: bool, arg_2: bool) -> Struct_4 {
    var var_0 = Struct_3(select(global0.c.a, vec3<bool>(any(select(vec3<bool>(false, global0.c.a.x, arg_2), vec3<bool>(true, true, arg_1), arg_2)), all(select(vec3<bool>(arg_1, arg_2, false), global0.c.a, global0.c.a)), false), select(vec3<bool>(true, false, global0.c.a.x), !vec3<bool>(arg_1, global0.c.a.x, arg_1), any(global0.c.a.xy))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0.a.b.a.x, 284f)) * global0.a.b.a.x), global0.a.b, global0.c.c);
    global0 = Struct_5(global0.a, _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.b.x, 750f, true))), var_0.c.a.x))), Struct_3(vec3<bool>(false, !all(vec3<bool>(false, arg_1, arg_2)), true), _wgslsmith_f_op_f32(step(558f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(var_0.d.a.x, -1696f)))))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.a.b.a) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1834f, -196f) - vec2<f32>(var_0.d.a.x, var_0.d.a.x))), 102327u), Struct_1(vec2<f32>(689f, global0.a.b.a.x), _wgslsmith_add_u32(72087u, 0u))), arg_0.zzw);
    var var_1 = ~(-arg_0.x);
    global0 = Struct_5(Struct_4(~func_2(-601f, select(vec3<bool>(arg_1, arg_2, var_0.a.x), global0.c.a, global0.c.a), select(vec4<bool>(arg_1, arg_1, true, arg_1), vec4<bool>(arg_1, var_0.a.x, var_0.a.x, var_0.a.x), arg_2)), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1623f, -679f), global0.b.xy, var_0.a.yx))), ~countOneBits(global0.c.c.b))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(273f)), _wgslsmith_div_f32(var_0.d.a.x, -951f), 687f)) + global0.b), Struct_3(select(!select(var_0.a, global0.c.a, true), vec3<bool>(false, false, true), false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-697f, 468f) - _wgslsmith_f_op_f32(f32(-1f) * -682f))), var_0.d, global0.c.c), ~vec3<i32>(arg_0.x, i32(-1i) * -1i, -20145i));
    var var_2 = global0.c;
    return Struct_4(global0.d.x, Struct_1(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-324f, -838f))), ~reverseBits(50536u & var_2.c.b)));
}

fn func_1() -> Struct_5 {
    var var_0 = 17951u > u_input.c;
    let var_1 = func_4(vec4<i32>(-2147483647i, max(global0.d.x, 25946i) ^ global0.a.a, _wgslsmith_mod_i32(func_2(_wgslsmith_div_f32(2269f, 607f), !global0.c.a, !vec4<bool>(true, true, true, global0.c.a.x)), global0.d.x), func_2(-1262f, select(!global0.c.a, global0.c.a, !global0.c.a.x), vec4<bool>(global0.c.a.x, !global0.c.a.x, global0.c.a.x, false))), _wgslsmith_f_op_f32(-global0.c.c.a.x) == _wgslsmith_f_op_f32(func_3()), !(!global0.c.a.x || (~global0.c.d.b != ~28220u)));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.a.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.a.x) * global0.b.x) * _wgslsmith_f_op_f32(-global0.a.b.a.x))));
    let var_3 = Struct_2(select(vec2<bool>(!global0.c.a.x, all(!global0.c.a.yy)), !vec2<bool>(true, any(global0.c.a)), all(select(!vec2<bool>(true, global0.c.a.x), !vec2<bool>(false, global0.c.a.x), any(global2[_wgslsmith_index_u32(19223u, 12u)])))), !select(!select(global0.c.a, global0.c.a, vec3<bool>(global0.c.a.x, false, true)), global0.c.a, (var_1.a != -22636i) || all(vec4<bool>(true, true, true, global0.c.a.x))));
    var_0 = !((true && select(true, !global0.c.a.x, var_3.b.x && true)) & !all(!vec3<bool>(false, false, var_3.a.x)));
    return Struct_5(Struct_4(var_1.a ^ countOneBits(global0.a.a), global0.c.c), global1[_wgslsmith_index_u32(u_input.a.x, 28u)], global0.c, _wgslsmith_clamp_vec3_i32(-(vec3<i32>(var_1.a, global0.d.x, -2147483647i) & vec3<i32>(var_1.a, 2147483647i, 2147483647i)), -(~vec3<i32>(var_1.a, var_1.a, 55210i)), ~vec3<i32>(select(-2147483647i, -5644i, true), _wgslsmith_add_i32(global0.d.x, var_1.a), var_1.a | 2147483647i)));
}

fn func_5(arg_0: Struct_4, arg_1: vec4<u32>, arg_2: Struct_5, arg_3: vec4<i32>) -> i32 {
    global2 = array<vec2<bool>, 12>();
    let var_0 = func_1().c;
    global1 = array<vec3<f32>, 28>();
    global1 = array<vec3<f32>, 28>();
    let var_1 = Struct_2(var_0.a.xy, vec3<bool>(any(vec3<bool>(false, arg_2.c.a.x != arg_2.c.a.x, arg_2.c.a.x & global0.c.a.x)), true, !all(select(global2[_wgslsmith_index_u32(u_input.c, 12u)], var_0.a.yx, vec2<bool>(true, global0.c.a.x)))));
    return global0.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b;
    var var_1 = global0.d.x | ~func_5(Struct_4(-81086i, Struct_1(vec2<f32>(1657f, 174f), 1u)), firstTrailingBit(max(vec4<u32>(var_0.x, 1u, 179u, u_input.b.x), vec4<u32>(27440u, global0.a.b.b, 1u, var_0.x))), func_1(), countOneBits(firstTrailingBit(vec4<i32>(-2147483647i, global0.a.a, 2147483647i, global0.a.a))));
    var var_2 = select(!vec4<bool>(false && (global0.a.b.a.x > -665f), !(!global0.c.a.x), false, _wgslsmith_f_op_f32(sign(-1537f)) == global0.c.c.a.x), select(select(vec4<bool>(false != global0.c.a.x, true, !global0.c.a.x, !global0.c.a.x), vec4<bool>(true, true, all(vec4<bool>(global0.c.a.x, true, global0.c.a.x, global0.c.a.x)), global0.c.a.x && global0.c.a.x), select(vec4<bool>(global0.c.a.x, true, global0.c.a.x, true), select(vec4<bool>(global0.c.a.x, false, global0.c.a.x, true), vec4<bool>(global0.c.a.x, true, true, global0.c.a.x), vec4<bool>(global0.c.a.x, false, global0.c.a.x, global0.c.a.x)), all(global0.c.a))), !(!vec4<bool>(true, global0.c.a.x, false, global0.c.a.x)), select(vec4<bool>(global0.c.a.x, global0.c.a.x, true, any(vec4<bool>(false, false, global0.c.a.x, true))), !(!vec4<bool>(true, false, global0.c.a.x, global0.c.a.x)), func_4(vec4<i32>(global0.a.a, 1i, 1i, 2147483647i), true, false).b.b <= (u_input.a.x << (u_input.a.x % 32u)))), !(!(all(global0.c.a) | false)));
    let var_3 = -_wgslsmith_mod_i32(-global0.a.a, _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(-global0.d.xz, -global0.d.yz), ~reverseBits(vec2<i32>(global0.a.a, 8459i))));
    global0 = func_1();
    var var_4 = u_input.a.x;
    var var_5 = vec4<bool>(true, true, !(false & any(func_1().c.a.yx)), !(u_input.b.x <= (var_0.x & 32023u)) | var_2.x);
    var var_6 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.a.b.a.x, -425f, global0.b.x, -902f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.x, -1120f, global0.a.b.a.x, global0.b.x)))) + _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -494f), -286f, 679f, _wgslsmith_div_f32(1328f, global0.c.c.a.x)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.b.a.x, -1000f, 1311f, -1679f) * vec4<f32>(global0.c.d.a.x, 449f, -1035f, global0.c.c.a.x)))))));
    var_5 = !vec4<bool>(var_5.x, !any(vec2<bool>(var_2.x, var_2.x)), !var_2.x, !global0.c.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(0u, u_input.a.x, ~select(_wgslsmith_mod_vec4_u32(firstLeadingBit(vec4<u32>(var_0.x, 78212u, 6419u, 1u)), vec4<u32>(u_input.a.x, global0.c.c.b, var_0.x, 5242u)), _wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(8245u, u_input.b.x, 64174u, var_0.x), vec4<u32>(101218u, 0u, u_input.b.x, 50718u)), vec4<u32>(1u, 4294967295u, global0.a.b.b, var_0.x) >> (vec4<u32>(u_input.a.x, u_input.b.x, 0u, u_input.a.x) % vec4<u32>(32u)), min(vec4<u32>(0u, global0.a.b.b, 25184u, global0.a.b.b), vec4<u32>(var_0.x, 0u, 1u, 4294967295u))), vec4<bool>(false, true, var_5.x, var_5.x)), ~(~reverseBits(u_input.b)), 1i);
}

