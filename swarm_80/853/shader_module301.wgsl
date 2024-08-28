struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 7>;

var<private> global1: vec3<u32>;

var<private> global2: vec3<f32>;

var<private> global3: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(vec3<bool>(false, false, false), 2147483647i, -2295f), Struct_1(vec3<bool>(true, false, false), -1i, -187f), Struct_1(vec3<bool>(true, true, false), 0i, 400f), Struct_1(vec3<bool>(true, true, true), 57223i, -569f), Struct_1(vec3<bool>(true, false, false), 0i, 274f), Struct_1(vec3<bool>(true, true, false), 32475i, -860f), Struct_1(vec3<bool>(true, true, false), -16518i, -223f), Struct_1(vec3<bool>(true, false, false), 0i, 140f), Struct_1(vec3<bool>(false, true, true), 2147483647i, 382f), Struct_1(vec3<bool>(true, true, true), -1i, 927f), Struct_1(vec3<bool>(true, true, true), -35591i, 608f), Struct_1(vec3<bool>(true, true, true), -1i, 258f), Struct_1(vec3<bool>(false, true, true), 0i, 498f), Struct_1(vec3<bool>(true, false, true), -22429i, -315f), Struct_1(vec3<bool>(false, true, false), -45910i, 112f), Struct_1(vec3<bool>(false, true, false), -694i, 1398f), Struct_1(vec3<bool>(false, true, false), -4832i, -1887f), Struct_1(vec3<bool>(false, false, false), 2147483647i, 447f), Struct_1(vec3<bool>(false, true, false), 10474i, 422f));

var<private> global4: f32;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_1(arg_0: vec2<bool>) -> Struct_1 {
    global0 = array<Struct_2, 7>();
    let var_0 = global3[_wgslsmith_index_u32(26046u, 19u)];
    global1 = _wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(select(vec3<u32>(1u, 72996u, 0u), vec3<u32>(global1.x, 4294967295u, 27958u), arg_0.x), firstTrailingBit(vec3<u32>(global1.x, global1.x, 4294967295u))), ~vec3<u32>(global1.x, 1u, 0u)), ~(~(vec3<u32>(global1.x, 4294967295u, 1u) ^ vec3<u32>(21692u, 0u, global1.x)))), ~_wgslsmith_sub_vec3_u32(~(~vec3<u32>(global1.x, 59844u, global1.x)), (vec3<u32>(4294967295u, global1.x, global1.x) << (vec3<u32>(0u, 0u, global1.x) % vec3<u32>(32u))) ^ (vec3<u32>(global1.x, global1.x, 0u) >> (vec3<u32>(global1.x, global1.x, global1.x) % vec3<u32>(32u)))));
    global3 = array<Struct_1, 19>();
    let var_1 = global3[_wgslsmith_index_u32(~(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, global1.x), global1.yx))), 19u)];
    return Struct_1(select(!var_0.a, !vec3<bool>(-2147483647i >= var_1.b, false && var_1.a.x, var_1.a.x), all(!vec4<bool>(true, arg_0.x, true, false))), _wgslsmith_mod_i32(var_0.b, u_input.b), -1765f);
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<u32>, arg_2: Struct_2) -> Struct_2 {
    return global0[_wgslsmith_index_u32(firstTrailingBit(arg_1.x), 7u)];
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: Struct_2) -> u32 {
    let var_0 = _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(arg_2.x, global1.x, ~11750u) >> (select(vec3<u32>(39829u, arg_0, 4294967295u), ~vec3<u32>(4294967295u, arg_0, 1u), true) % vec3<u32>(32u))), vec3<u32>(arg_0, arg_3.c << (1u % 32u), 13556u));
    global3 = array<Struct_1, 19>();
    global2 = _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.b.c) * func_2(arg_2, global1.xx, Struct_2(arg_1.a.x, Struct_1(vec3<bool>(arg_1.a.x, false, true), arg_3.b.b, 1000f), 4294967295u)).b.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c) * _wgslsmith_f_op_f32(f32(-1f) * -573f)), func_1(vec2<bool>(arg_3.b.a.x, true)).c), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-527f, arg_3.b.c, arg_1.c))) - vec3<f32>(arg_1.c, 1452f, arg_1.c)))), vec3<f32>(_wgslsmith_f_op_f32(-global2.x), 901f, _wgslsmith_div_f32(1f, arg_1.c)));
    global4 = 1000f;
    var var_1 = Struct_2(any(!vec3<bool>(true, arg_3.b.a.x, arg_1.a.x)), arg_3.b, ~_wgslsmith_clamp_u32(arg_0, _wgslsmith_div_u32(~arg_3.c, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, arg_0), arg_2)), 4294967295u | _wgslsmith_div_u32(45235u, arg_0)));
    return _wgslsmith_mult_u32(arg_3.c, 4294967295u);
}

fn func_4(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: i32) -> Struct_2 {
    global3 = array<Struct_1, 19>();
    let var_0 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(~(~84844u), min(_wgslsmith_add_u32(1u, 0u), max(_wgslsmith_dot_vec4_u32(vec4<u32>(11352u, 1u, global1.x, arg_0.c), vec4<u32>(global1.x, 1u, 0u, arg_0.c)), ~global1.x)), 0u), ~abs(vec3<u32>(arg_0.c, global1.x, arg_0.c)) | max(_wgslsmith_mult_vec3_u32(vec3<u32>(global1.x, arg_0.c, global1.x), ~vec3<u32>(0u, 11826u, 1u)), max(vec3<u32>(global1.x, 0u, arg_0.c), vec3<u32>(arg_0.c, arg_0.c, 1u) & vec3<u32>(arg_0.c, 4294967295u, 23155u)))), 19u)];
    var var_1 = !vec3<bool>(var_0.a.x, arg_0.a, select(func_1(arg_0.b.a.zx).a.x, false, false && (true != var_0.a.x)));
    let var_2 = arg_0.b.c;
    let var_3 = vec2<u32>(~16171u, 1u);
    return func_2(vec2<u32>(reverseBits(1u), 55793u), var_3, global0[_wgslsmith_index_u32(global1.x, 7u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_2(!((u_input.b | u_input.b) <= _wgslsmith_clamp_i32(-1i, 3266i, 17371i)), func_1(vec2<bool>(0u < global1.x, global1.x == global1.x)), func_3(_wgslsmith_dot_vec2_u32(global1.zy, global1.zx), global3[_wgslsmith_index_u32(abs(global1.x | 41622u), 19u)], countOneBits(min(vec2<u32>(global1.x, 13347u), global1.yy)), func_2(vec2<u32>(global1.x, 34023u), ~global1.xz, Struct_2(true, Struct_1(vec3<bool>(false, false, true), 34987i, global2.x), 4294967295u)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-614f, 988f, global2.x, 358f), vec4<f32>(379f, 1071f, -866f, -693f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1725f, 165f, global2.x, -527f))))), 2147483647i);
    var var_1 = u_input.b;
    let var_2 = ~global1.x;
    global4 = _wgslsmith_f_op_f32(max(func_2(vec2<u32>(_wgslsmith_mult_u32(var_0.c | 25650u, var_2), var_0.c), vec2<u32>(~var_0.c, 0u) ^ vec2<u32>(1u, 4294967295u), Struct_2(var_0.a, Struct_1(var_0.b.a, u_input.b >> (26712u % 32u), var_0.b.c), ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_2, var_2, global1.x, global1.x), vec4<u32>(4294967295u, var_2, 1u, var_2)))).b.c, _wgslsmith_f_op_f32(floor(631f))));
    let var_3 = Struct_1(vec3<bool>(true, true, true), 0i, func_4(Struct_2(true, var_0.b, 1u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.c, _wgslsmith_f_op_f32(-var_0.b.c), var_0.b.c, var_0.b.c)), countOneBits(var_0.b.b)).b.c);
    let var_4 = global1.xz;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(_wgslsmith_add_i32(2626i, _wgslsmith_add_i32(~(-1i), u_input.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global2.x, _wgslsmith_div_f32(-491f, 555f)))) + var_0.b.c), vec2<u32>(var_4.x, ~max(1u, var_0.c)));
}

