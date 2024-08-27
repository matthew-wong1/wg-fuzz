struct Struct_1 {
    a: f32,
    b: bool,
    c: vec4<i32>,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: u32,
    c: vec3<bool>,
    d: i32,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<f32>,
    c: bool,
    d: i32,
}

struct Struct_5 {
    a: vec4<f32>,
    b: u32,
    c: Struct_3,
    d: u32,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: f32 = 662f;

var<private> global2: array<f32, 3>;

var<private> global3: vec3<bool> = vec3<bool>(false, false, true);

var<private> global4: Struct_2;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: f32, arg_1: vec2<f32>) -> i32 {
    var var_0 = ~_wgslsmith_div_u32(global0.b, global4.b);
    var_0 = 22271u;
    global1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(global0.e, vec4<u32>(4294967295u, global4.b, global0.d, 21468u)) & ~0u, 3u)] * _wgslsmith_f_op_f32(floor(472f))) * global2[_wgslsmith_index_u32(4294967295u, 3u)])));
    var var_1 = global0.c;
    let var_2 = firstLeadingBit(global0.e.zx);
    return _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(27312i, -1i, -14776i, _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(global4.d, -11713i, 6527i, u_input.d.x)), countOneBits(vec4<i32>(1i, global4.d, 19157i, u_input.c)))), _wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(-vec4<i32>(1i, -23691i, 35977i, global4.d), countOneBits(vec4<i32>(21366i, u_input.b.x, u_input.a, global4.d))), -vec4<i32>(0i, -1i, 21644i, -25626i), abs(vec4<i32>(0i, global4.d, global4.d, -1i)))), ~abs(_wgslsmith_add_vec4_i32(vec4<i32>(0i, u_input.a, -1i, 2147483647i), vec4<i32>(u_input.d.x, u_input.a, u_input.d.x, global4.d)) ^ vec4<i32>(global4.d, -12651i, 21171i, global4.d)));
}

fn func_2() -> Struct_4 {
    var var_0 = _wgslsmith_mod_i32(-2147483647i ^ global4.d, _wgslsmith_sub_i32(1i ^ global4.d, abs(func_3(_wgslsmith_f_op_f32(f32(-1f) * -512f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-269f, -1745f) - global0.a.xz)))));
    let var_1 = _wgslsmith_clamp_u32(global4.b, _wgslsmith_add_u32(_wgslsmith_mod_u32(_wgslsmith_div_u32(global0.d, 1u), _wgslsmith_sub_u32(global0.e.x, 33789u)), global4.b & (global0.e.x ^ 0u)), _wgslsmith_dot_vec4_u32(reverseBits(~vec4<u32>(global4.b, global4.b, global0.b, global4.b)), vec4<u32>(abs(13921u), 1u, 45800u, max(26465u, 0u)))) | ~_wgslsmith_div_u32(~global0.b, ~abs(4294967295u));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(global4.a.x)), 1054f, !(global3.x != global4.c.x)))) * global4.a.x);
    global0 = Struct_5(global0.a, 1u, Struct_3(-684f), global4.b, select(global0.e, vec4<u32>(var_1, max(75066u & global0.d, ~13127u), abs(0u) >> (select(global4.b, var_1, global4.c.x) % 32u), ~var_1), !(!(!vec4<bool>(global3.x, global4.c.x, global3.x, global3.x)))));
    var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1000f + 1052f)));
    return Struct_4(Struct_1(global0.c.a, !all(!vec4<bool>(true, global3.x, false, true)), ~vec4<i32>(abs(-3448i), u_input.d.x, 2147483647i, ~(-1i)), global4.d, -27794i), global4.a, all(select(global4.c, select(select(global4.c, global4.c, global4.c.x), vec3<bool>(true, global4.c.x, global3.x), select(global4.c, global4.c, global4.c)), global4.c)), -(~26374i));
}

fn func_4(arg_0: Struct_4, arg_1: f32, arg_2: Struct_3, arg_3: Struct_3) -> Struct_4 {
    return arg_0;
}

fn func_1() -> f32 {
    global2 = array<f32, 3>();
    var var_0 = func_4(func_2(), _wgslsmith_f_op_f32(-908f + _wgslsmith_f_op_f32(abs(850f))), global0.c, global0.c);
    let var_1 = 0u;
    var_0 = func_4(Struct_4(func_2().a, func_2().b, func_4(func_2(), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(~1u, 3u)] - _wgslsmith_f_op_f32(-global4.a.x)), global0.c, Struct_3(_wgslsmith_f_op_f32(round(1000f)))).c, select(abs(global4.d), u_input.a, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.x * _wgslsmith_f_op_f32(min(-343f, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global4.b, 3u)])))) * -253f), Struct_3(-455f), global0.c);
    var_0 = func_4(Struct_4(var_0.a, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(var_1, 3u)]))), _wgslsmith_f_op_f32(select(-831f, _wgslsmith_f_op_f32(-global4.a.x), false))), !(true | !var_0.c), _wgslsmith_sub_i32(global4.d, -func_3(global2[_wgslsmith_index_u32(global0.e.x, 3u)], var_0.b))), var_0.a.a, global0.c, Struct_3(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.a.x, var_0.b.x) * _wgslsmith_f_op_f32(160f + -213f))));
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(abs(countOneBits(global0.d) & ~global4.b), 3u)], _wgslsmith_div_f32(444f, _wgslsmith_f_op_f32(-963f * global0.a.x)), func_2().b.x < _wgslsmith_f_op_f32(abs(553f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-209f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1()))))), global4.c.x, abs(vec4<i32>(abs(u_input.b.x), _wgslsmith_add_i32(~global4.d, _wgslsmith_mult_i32(60546i, 1i)), ~(i32(-1i) * -2147483647i), global4.d)), -9356i, 7244i);
    var var_1 = _wgslsmith_clamp_u32(0u << (global0.d % 32u), 4294967295u, global0.b);
    global3 = select(!(!select(select(global4.c, global4.c, global3.x), global4.c, true)), !vec3<bool>(any(vec4<bool>(true, true, true, var_0.b)), var_0.b, global3.x), true);
    let var_2 = (_wgslsmith_mod_i32(abs(u_input.a), _wgslsmith_add_i32(func_4(Struct_4(Struct_1(var_0.a, false, vec4<i32>(global4.d, -2147483647i, global4.d, 36722i), -28448i, -21254i), global0.a.yz, true, 13818i), -1003f, global0.c, Struct_3(-1061f)).d, global4.d & -30963i)) > -2147483647i) && any(global4.c);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a - _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1000f)), -817f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.a.x)));
    let var_4 = var_0;
    global0 = Struct_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(global0.a)) * _wgslsmith_f_op_vec4_f32(sign(global0.a))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(global0.a, vec4<f32>(global0.c.a, 471f, global0.c.a, -1000f))))))), _wgslsmith_add_u32(global0.d, 0u), Struct_3(-517f), abs(global0.b), vec4<u32>(firstTrailingBit(4294967295u), _wgslsmith_mult_u32(_wgslsmith_div_u32(1u, 45191u), global0.d), _wgslsmith_div_u32(79261u, 1u), global4.b));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~(var_4.c & vec4<i32>(global4.d, -2147483647i, -50944i, u_input.b.x))), var_0.a, (i32(-1i) * -func_3(var_4.a, vec2<f32>(global2[_wgslsmith_index_u32(global0.b, 3u)], var_0.a))) & reverseBits(2147483647i ^ u_input.a));
}

