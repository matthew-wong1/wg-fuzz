struct Struct_1 {
    a: vec4<u32>,
    b: vec4<f32>,
    c: i32,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec3<bool>,
    c: vec2<i32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 22> = array<vec2<bool>, 22>(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false));

var<private> global1: array<vec4<i32>, 21> = array<vec4<i32>, 21>(vec4<i32>(-5681i, -34825i, -55439i, -19426i), vec4<i32>(-8252i, 2147483647i, 0i, -64322i), vec4<i32>(0i, i32(-2147483648), 1541i, 0i), vec4<i32>(23638i, 2147483647i, 79768i, -5385i), vec4<i32>(1i, i32(-2147483648), -1i, 0i), vec4<i32>(26592i, 1i, 37560i, 1i), vec4<i32>(-1i, 5533i, 1i, i32(-2147483648)), vec4<i32>(-1i, -19578i, -32475i, 0i), vec4<i32>(-25222i, -26154i, -6378i, -14456i), vec4<i32>(i32(-2147483648), i32(-2147483648), 1i, i32(-2147483648)), vec4<i32>(1i, -1i, -6320i, i32(-2147483648)), vec4<i32>(-13428i, 1i, 1i, -9777i), vec4<i32>(10652i, 2147483647i, 0i, 20267i), vec4<i32>(34663i, -3374i, i32(-2147483648), -53740i), vec4<i32>(1i, -43576i, i32(-2147483648), 65974i), vec4<i32>(-39314i, -24596i, -1i, 6012i), vec4<i32>(-14877i, -8450i, 0i, 0i), vec4<i32>(-1i, -54983i, -1941i, 2147483647i), vec4<i32>(i32(-2147483648), 1i, -37436i, -2725i), vec4<i32>(28140i, -3688i, 0i, 2147483647i), vec4<i32>(-19405i, 29281i, 1i, -1i));

var<private> global2: Struct_3;

var<private> global3: array<vec4<f32>, 18>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_4, arg_3: bool) -> f32 {
    let var_0 = global2.b;
    var var_1 = arg_2;
    let var_2 = arg_2;
    let var_3 = vec4<bool>(false, arg_3, arg_0.e < _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.e), _wgslsmith_f_op_f32(global2.a - global2.a))))), select(_wgslsmith_div_u32(~var_1.a.x, 0u), var_1.a.x, !global2.b.x) != arg_2.a.x);
    var var_4 = Struct_1(max(select(vec4<u32>(~34751u, arg_0.a.x >> (var_1.a.x % 32u), ~arg_1.x, 4294967295u), vec4<u32>(arg_2.a.x, ~u_input.b.x, var_2.a.x, ~871u), !vec4<bool>(var_2.b.x, arg_2.b.x, true, arg_2.b.x)), vec4<u32>(57596u, 20372u, 0u, arg_0.a.x) << (~(~vec4<u32>(var_2.a.x, 33976u, arg_0.a.x, arg_1.x)) % vec4<u32>(32u))), global3[_wgslsmith_index_u32(countOneBits(~(~arg_2.a.x)) >> (~_wgslsmith_dot_vec3_u32(min(vec3<u32>(arg_2.a.x, arg_2.a.x, var_1.a.x), u_input.a.yxw), var_2.a.zwy) % 32u), 18u)], ~(_wgslsmith_mod_i32(2147483647i, countOneBits(global2.c.x)) | 1i), _wgslsmith_div_i32(~1i, _wgslsmith_mod_i32(-2987i, select(0i, arg_0.d, arg_3))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(907f, arg_0.b.x)), _wgslsmith_f_op_f32(arg_0.e * arg_0.b.x)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x));
}

fn func_2(arg_0: Struct_4) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(vec4<u32>(u_input.b.x, u_input.b.x, 10453u, 1u), vec4<f32>(-2554f, -363f, 693f, global2.a), 71396i, 21454i, 937f), u_input.a.zy, arg_0, true))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a) * -1000f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global2.a), global2.a)), -1000f)));
    global0 = array<vec2<bool>, 22>();
    let var_1 = true;
    let var_2 = Struct_2(Struct_1(abs(~(~u_input.a)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, global2.a)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a, 116f, var_0.x, global2.a))) + _wgslsmith_f_op_vec4_f32(global3[_wgslsmith_index_u32(1u, 18u)] * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a, var_0.x, global2.a, var_0.x)))), global2.c.x, -73244i, global2.a), Struct_1(vec4<u32>(~(~1u), u_input.a.x, 42105u, countOneBits(~0u)), vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(var_0.x)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1334f * global2.a), _wgslsmith_f_op_f32(global2.a - var_0.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-683f, var_0.x))), var_0.x), 15109i, global2.c.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-114f, var_0.x) - _wgslsmith_f_op_f32(trunc(-358f))), global2.a))));
    var var_3 = vec4<bool>(true, (var_2.b.a.x >> (reverseBits(abs(arg_0.a.x)) % 32u)) < var_2.b.a.x, all(!global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(u_input.b, arg_0.a.xy), 22u)]), !global2.b.x);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global2.a * 466f)))))) + 891f);
}

fn func_1() -> bool {
    let var_0 = _wgslsmith_f_op_f32(global2.a * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(Struct_4(u_input.a, global2.b))), _wgslsmith_f_op_f32(func_2(Struct_4(u_input.a, global2.b)))))));
    var var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global2.a), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0 + 1065f)))));
    var var_2 = u_input.a.x;
    var var_3 = _wgslsmith_mod_vec3_i32(reverseBits(~(~vec3<i32>(global2.c.x, 2147483647i, -10122i) ^ (vec3<i32>(global2.c.x, -1i, global2.c.x) & vec3<i32>(1i, global2.c.x, -28271i)))), ~(~_wgslsmith_div_vec3_i32(max(vec3<i32>(-2147483647i, 34934i, -32371i), vec3<i32>(47110i, global2.c.x, 0i)), vec3<i32>(0i, -1i, global2.c.x) << (vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) % vec3<u32>(32u)))));
    let var_4 = Struct_3(global2.a, vec3<bool>(global2.b.x, false, -1192f < _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0)))), var_3.xz << (select(u_input.a.xw, countOneBits(~vec2<u32>(u_input.b.x, u_input.a.x)), !(!vec2<bool>(true, global2.b.x))) % vec2<u32>(32u)));
    return 206f == _wgslsmith_f_op_f32(func_3(Struct_1(max(_wgslsmith_add_vec4_u32(u_input.a, vec4<u32>(u_input.b.x, u_input.a.x, u_input.b.x, 24568u)), u_input.a), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-global3[_wgslsmith_index_u32(31823u, 18u)]), _wgslsmith_f_op_vec4_f32(global3[_wgslsmith_index_u32(23097u, 18u)] + global3[_wgslsmith_index_u32(1u, 18u)])), ~max(global2.c.x, 10198i), 0i, _wgslsmith_f_op_f32(-var_4.a)), countOneBits(countOneBits(vec2<u32>(u_input.b.x, u_input.a.x))) | countOneBits(u_input.a.ww), Struct_4(_wgslsmith_add_vec4_u32(u_input.a & u_input.a, u_input.a & vec4<u32>(0u, u_input.a.x, 24569u, u_input.b.x)), vec3<bool>(false, any(global2.b), true)), all(vec2<bool>(all(var_4.b.zx), global2.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 1u, 1u, (u_input.b.x | 38615u) ^ _wgslsmith_mult_u32(u_input.a.x, 0u)), vec4<u32>(u_input.b.x, ~abs(3979u), ~14673u >> (u_input.a.x % 32u), ~64012u)), !(!vec3<bool>(true, all(vec4<bool>(false, false, global2.b.x, global2.b.x)), func_1())));
    global2 = Struct_3(global2.a, vec3<bool>(any(global2.b), true, global2.b.x), _wgslsmith_clamp_vec2_i32(global2.c, ~(global2.c | select(vec2<i32>(global2.c.x, -1i), vec2<i32>(global2.c.x, -1i), vec2<bool>(false, var_0.b.x))), global2.c));
    let var_1 = (global2.c.x >> (42514u % 32u)) & _wgslsmith_div_i32(global2.c.x, -global2.c.x);
    global3 = array<vec4<f32>, 18>();
    var var_2 = u_input.b.x;
    let var_3 = global2.c;
    global0 = array<vec2<bool>, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(14766u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1284f) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a))))));
}

