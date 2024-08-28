struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec2<u32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: i32,
    d: vec4<u32>,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_3,
    c: u32,
    d: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 31> = array<f32, 31>(-1677f, -618f, -694f, -1304f, 412f, -1342f, -1153f, 1000f, -1165f, 1119f, 121f, -1108f, -480f, -1273f, -332f, -1640f, -730f, -128f, 139f, 1227f, 405f, 103f, -861f, -1382f, 292f, -640f, 1010f, 1000f, 214f, -2047f, -1000f);

var<private> global1: array<vec4<i32>, 4> = array<vec4<i32>, 4>(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(-29126i, -19030i, -1i, 1i), vec4<i32>(i32(-2147483648), 4571i, 54073i, -13312i), vec4<i32>(-1i, 0i, i32(-2147483648), 2147483647i));

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32, arg_1: Struct_5, arg_2: Struct_1) -> vec3<u32> {
    let var_0 = arg_1;
    var var_1 = -3030i;
    let var_2 = ~0u;
    var_1 = -(~arg_0);
    global1 = array<vec4<i32>, 4>();
    return _wgslsmith_clamp_vec3_u32(vec3<u32>(min(~70190u, 59048u & u_input.a.x), arg_1.b.c.x, arg_2.c.x) >> (abs(arg_1.b.a.c.zyy) % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, ~(~arg_2.a.x), ~select(var_2, 4294967295u, arg_1.a.b)), vec3<u32>(max(_wgslsmith_div_u32(arg_1.b.a.c.x, var_0.c), var_0.c), select(var_2, 1u, all(var_0.b.b.xwx)), arg_2.a.x)), u_input.a.xyz);
}

fn func_2(arg_0: u32) -> Struct_3 {
    var var_0 = Struct_5(Struct_1(select(u_input.a.wxz, ~vec3<u32>(13845u, 7446u, u_input.a.x), vec3<bool>(true, true, true)), all(vec2<bool>(true, true)), ~reverseBits(u_input.a >> (u_input.a % vec4<u32>(32u)))), Struct_3(Struct_1(func_3(~u_input.c, Struct_5(Struct_1(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), false, vec4<u32>(u_input.a.x, 35209u, arg_0, arg_0)), Struct_3(Struct_1(vec3<u32>(10441u, arg_0, u_input.a.x), false, u_input.a), vec4<bool>(false, true, false, false), u_input.a.yw), 5968u, u_input.b.x), Struct_1(vec3<u32>(1u, u_input.a.x, 38700u), false, vec4<u32>(0u, u_input.a.x, 4294967295u, 396u))), !(521f == global0[_wgslsmith_index_u32(61706u, 31u)]), u_input.a), !vec4<bool>(any(vec2<bool>(false, true)), true, any(vec3<bool>(false, true, true)), true), vec2<u32>(~_wgslsmith_div_u32(34179u, u_input.a.x), arg_0)), ~_wgslsmith_add_u32(~arg_0, 39134u) ^ abs(~arg_0 << (countOneBits(4294967295u) % 32u)), u_input.c);
    var var_1 = Struct_1(~countOneBits(~_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 4294967295u, arg_0), u_input.a.yyx)), true || (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * 312f) * _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 31u)] * global0[_wgslsmith_index_u32(1u, 31u)])) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(arg_0, 31u)], -802f)))), abs(vec4<u32>(max(75613u, ~u_input.a.x), u_input.a.x >> ((42431u & var_0.b.c.x) % 32u), 68956u, max(4294967295u, ~4294967295u))));
    let var_2 = Struct_5(var_0.a, Struct_3(Struct_1(vec3<u32>(~var_0.b.a.a.x, abs(u_input.a.x), 301u), !all(vec2<bool>(true, var_0.a.b)), (vec4<u32>(0u, 38646u, u_input.a.x, 112261u) << (vec4<u32>(1u, var_0.c, 1u, arg_0) % vec4<u32>(32u))) ^ (vec4<u32>(var_0.c, var_0.b.a.a.x, 0u, u_input.a.x) << (vec4<u32>(0u, var_1.c.x, var_1.c.x, 1u) % vec4<u32>(32u)))), !select(vec4<bool>(false, false, true, var_1.b), vec4<bool>(var_1.b, var_1.b, var_1.b, false), var_0.b.b), var_1.a.yy), u_input.a.x, u_input.b.x);
    var_1 = Struct_1(~countOneBits(max(u_input.a.zxz ^ u_input.a.xwx, _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 1u), u_input.a.wwz))), true, vec4<u32>(~func_3(16732i, var_2, var_0.a).x, ~(arg_0 & 71800u), ~arg_0, _wgslsmith_sub_u32(var_0.c, arg_0)) >> (_wgslsmith_div_vec4_u32(abs(countOneBits(vec4<u32>(1u, 4294967295u, 24268u, var_1.c.x))), vec4<u32>(var_0.a.c.x, var_0.a.a.x, arg_0, 4294967295u) & vec4<u32>(u_input.a.x, var_1.c.x, 22386u, arg_0)) % vec4<u32>(32u)));
    global1 = array<vec4<i32>, 4>();
    return Struct_3(Struct_1(vec3<u32>(27986u & ~u_input.a.x, var_0.c, u_input.a.x), all(vec4<bool>(true, true, true != var_0.b.b.x, 18772i < var_0.d)), max(~(~var_1.c), abs(_wgslsmith_add_vec4_u32(var_2.b.a.c, vec4<u32>(var_2.a.c.x, var_2.c, 1u, var_1.c.x))))), vec4<bool>(false, true, !any(vec3<bool>(true, true, true)), false), vec2<u32>(44921u, max(1u, firstLeadingBit(3908u))) >> (vec2<u32>(_wgslsmith_mult_u32(u_input.a.x, 0u), ~(~var_0.c)) % vec2<u32>(32u)));
}

fn func_4(arg_0: i32, arg_1: u32, arg_2: vec4<i32>, arg_3: Struct_4) -> Struct_5 {
    global0 = array<f32, 31>();
    return Struct_5(Struct_1(select(~(~vec3<u32>(2082u, 1u, arg_3.b.a.c.x)), min(firstTrailingBit(arg_3.d.yxy), ~u_input.a.wxw), !(!arg_3.b.b.x)), !select(false, any(arg_3.b.b.wwx), all(vec2<bool>(false, arg_3.a))), _wgslsmith_sub_vec4_u32(u_input.a, vec4<u32>(min(1u, 12441u), _wgslsmith_div_u32(10835u, 4294967295u), 4294967295u, ~4294967295u))), arg_3.b, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_3.b.a.a.x, 0u), vec2<u32>(arg_3.b.a.a.x, abs(reverseBits(arg_1)))), ~arg_3.c);
}

fn func_5(arg_0: Struct_5, arg_1: Struct_1) -> vec3<i32> {
    var var_0 = arg_1.c.x;
    global0 = array<f32, 31>();
    global0 = array<f32, 31>();
    var var_1 = Struct_4(!(any(arg_0.b.b.yww) && arg_1.b), func_4(68747i, select(countOneBits(arg_1.c.x & 37975u), 4294967295u, _wgslsmith_f_op_f32(trunc(-564f)) == global0[_wgslsmith_index_u32(25391u, 31u)]), vec4<i32>(2147483647i, _wgslsmith_div_i32(_wgslsmith_mult_i32(u_input.c, u_input.c), 0i), i32(-1i) * -1i, -29230i), Struct_4(true, Struct_3(Struct_1(vec3<u32>(u_input.a.x, 1u, 1u), arg_1.b, u_input.a), arg_0.b.b, u_input.a.zw), -54399i, _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(arg_0.b.a.c, vec4<u32>(arg_0.b.c.x, 0u, 43587u, arg_1.a.x)), vec4<u32>(arg_0.b.c.x, 4294967295u, u_input.a.x, arg_1.c.x) >> (vec4<u32>(25909u, 11234u, u_input.a.x, u_input.a.x) % vec4<u32>(32u))))).b, _wgslsmith_dot_vec4_i32(vec4<i32>(-u_input.b.x, arg_0.d, u_input.b.x, _wgslsmith_clamp_i32(u_input.b.x, -12717i, 1i) & arg_0.d), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(max(vec3<u32>(arg_0.c, 0u, 4294967295u), vec3<u32>(arg_0.a.a.x, 1u, arg_0.a.a.x)), select(vec3<u32>(0u, 16921u, 5097u), arg_0.b.a.a, vec3<bool>(arg_0.b.b.x, true, true))), vec3<u32>(u_input.a.x, _wgslsmith_div_u32(43805u, arg_0.a.c.x), _wgslsmith_clamp_u32(1u, u_input.a.x, arg_1.a.x))), 4u)]), _wgslsmith_add_vec4_u32(u_input.a, func_4(-125i | u_input.b.x, ~4294967295u, -vec4<i32>(0i, arg_0.d, 2147483647i, u_input.b.x), Struct_4(false, Struct_3(Struct_1(vec3<u32>(0u, 0u, 4294967295u), false, arg_1.c), arg_0.b.b, u_input.a.yy), -2147483647i, vec4<u32>(arg_1.c.x, arg_1.c.x, arg_0.a.c.x, arg_1.a.x))).a.c) & ~firstLeadingBit(_wgslsmith_div_vec4_u32(arg_1.c, arg_1.c)));
    global1 = array<vec4<i32>, 4>();
    return u_input.b.zwy & vec3<i32>(var_1.c, u_input.b.x, -_wgslsmith_clamp_i32(~var_1.c, var_1.c, u_input.b.x));
}

fn func_1() -> Struct_4 {
    global0 = array<f32, 31>();
    global0 = array<f32, 31>();
    global1 = array<vec4<i32>, 4>();
    let var_0 = abs(func_5(func_4(2147483647i, 4294967295u, global1[_wgslsmith_index_u32(u_input.a.x, 4u)] >> (~vec4<u32>(u_input.a.x, 0u, u_input.a.x, 27829u) % vec4<u32>(32u)), Struct_4(any(vec4<bool>(false, false, false, true)), func_2(u_input.a.x), u_input.c, firstTrailingBit(vec4<u32>(30317u, 32550u, u_input.a.x, 55802u)))), Struct_1(firstTrailingBit(u_input.a.zxz), any(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false))), ~(~vec4<u32>(u_input.a.x, 865u, 0u, 64532u)))));
    global0 = array<f32, 31>();
    return Struct_4(false, Struct_3(func_2(68357u).a, func_4(-2147483647i, _wgslsmith_sub_u32(~76421u, _wgslsmith_sub_u32(1u, u_input.a.x)), -global1[_wgslsmith_index_u32(u_input.a.x << (u_input.a.x % 32u), 4u)], Struct_4(true, Struct_3(Struct_1(vec3<u32>(u_input.a.x, 34108u, u_input.a.x), true, vec4<u32>(u_input.a.x, 85154u, 50583u, 1u)), vec4<bool>(true, true, true, true), vec2<u32>(2829u, u_input.a.x)), func_5(Struct_5(Struct_1(u_input.a.wyw, false, vec4<u32>(17705u, u_input.a.x, u_input.a.x, u_input.a.x)), Struct_3(Struct_1(u_input.a.zxz, false, vec4<u32>(110548u, u_input.a.x, 0u, u_input.a.x)), vec4<bool>(false, false, true, true), u_input.a.zx), u_input.a.x, var_0.x), Struct_1(u_input.a.xxz, false, u_input.a)).x, ~u_input.a)).b.b, u_input.a.yz), 14079i, _wgslsmith_sub_vec4_u32(~u_input.a, ~_wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(1u, u_input.a.x, 0u, u_input.a.x), u_input.a), min(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 29845u), vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.a.x)))));
}

fn func_6(arg_0: Struct_4) -> vec3<u32> {
    var var_0 = 52i;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(4294967295u, 31u)])), -353f), global0[_wgslsmith_index_u32(u_input.a.x, 31u)], _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(arg_0.d.x, 31u)] - -522f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(arg_0.d.x, 31u)], 363f, global0[_wgslsmith_index_u32(u_input.a.x, 31u)]) - vec3<f32>(global0[_wgslsmith_index_u32(35693u, 31u)], -255f, global0[_wgslsmith_index_u32(0u, 31u)])))) * vec3<f32>(global0[_wgslsmith_index_u32(~0u, 31u)], _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 31u)]), global0[_wgslsmith_index_u32(~9977u, 31u)]))));
    let var_2 = func_4(-39084i, ~25621u, -(~(~global1[_wgslsmith_index_u32(u_input.a.x, 4u)])), arg_0);
    return firstTrailingBit(vec3<u32>(~(var_2.c & u_input.a.x), ~abs(0u), ~arg_0.d.x) & (vec3<u32>(0u, reverseBits(arg_0.b.c.x), arg_0.b.c.x << (arg_0.b.c.x % 32u)) >> (reverseBits(func_1().b.a.a) % vec3<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(abs(_wgslsmith_sub_u32(87037u, u_input.a.x) << (~12109u % 32u)), 31u)] - -1372f), 256f, _wgslsmith_add_vec3_u32(func_6(func_1()), u_input.a.zwz), u_input.b.x);
}

