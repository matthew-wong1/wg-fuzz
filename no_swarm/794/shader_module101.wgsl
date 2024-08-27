struct Struct_1 {
    a: vec2<bool>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: i32,
    d: bool,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec4<f32>(1226f, -914f, 1959f, 437f), Struct_2(Struct_1(vec2<bool>(true, true), true), 1u, 11677i, true));

var<private> global1: array<Struct_3, 4> = array<Struct_3, 4>(Struct_3(vec4<f32>(1000f, -2054f, -123f, 503f), Struct_2(Struct_1(vec2<bool>(false, true), false), 0u, i32(-2147483648), true)), Struct_3(vec4<f32>(-1068f, -243f, 212f, -663f), Struct_2(Struct_1(vec2<bool>(false, true), true), 0u, -20499i, true)), Struct_3(vec4<f32>(-701f, 3039f, 600f, -2439f), Struct_2(Struct_1(vec2<bool>(true, true), false), 72728u, 2147483647i, true)), Struct_3(vec4<f32>(950f, 677f, 1758f, 939f), Struct_2(Struct_1(vec2<bool>(false, true), true), 1u, -5417i, false)));

var<private> global2: Struct_1;

var<private> global3: Struct_3 = Struct_3(vec4<f32>(1187f, 766f, 1135f, -1000f), Struct_2(Struct_1(vec2<bool>(false, false), true), 0u, -12561i, true));

var<private> global4: array<u32, 10>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<u32>, arg_1: bool, arg_2: bool, arg_3: vec4<u32>) -> i32 {
    var var_0 = _wgslsmith_add_i32(-(~_wgslsmith_sub_i32(-global0.b.c, select(global0.b.c, -34948i, global2.a.x))), ~2147483647i);
    var_0 = 17814i;
    global4 = array<u32, 10>();
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~(~firstTrailingBit(0u)), abs(_wgslsmith_div_u32(1u, select(_wgslsmith_dot_vec4_u32(arg_3, vec4<u32>(1u, global0.b.b, 1u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(82347u, 10u)], 10u)])), ~global0.b.b, arg_2))), global4[_wgslsmith_index_u32(u_input.a.x ^ arg_3.x, 10u)]), 4u)];
    var_0 = min(0i, -(~(-2147483647i)));
    return ~firstTrailingBit(abs(_wgslsmith_mult_i32(firstLeadingBit(global0.b.c), 1i)));
}

fn func_2() -> vec2<u32> {
    let var_0 = _wgslsmith_add_vec4_i32(-vec4<i32>(2147483647i, reverseBits(abs(global3.b.c)), ~(~global3.b.c), func_3(_wgslsmith_div_vec4_u32(vec4<u32>(global4[_wgslsmith_index_u32(0u, 10u)], global4[_wgslsmith_index_u32(4294967295u, 10u)], 4294967295u, 4294967295u), vec4<u32>(4294967295u, global0.b.b, 81380u, 0u)), global0.b.a.b | false, global3.b.a.b, vec4<u32>(global0.b.b, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(55839u, 10u)], 10u)], 38878u, global3.b.b))), firstLeadingBit(vec4<i32>(23041i, max(firstTrailingBit(global3.b.c), _wgslsmith_dot_vec3_i32(vec3<i32>(global0.b.c, -41960i, u_input.b.x), u_input.b)), 1i, -31590i)));
    return vec2<u32>(34613u, ~global0.b.b);
}

fn func_1(arg_0: vec3<u32>, arg_1: vec3<i32>) -> Struct_1 {
    global1 = array<Struct_3, 4>();
    let var_0 = _wgslsmith_sub_vec2_i32(u_input.b.yz >> (func_2() % vec2<u32>(32u)), u_input.b.zx);
    global3 = Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.a.x - global0.a.x) + _wgslsmith_f_op_f32(f32(-1f) * -463f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.a.x, 2215f)), _wgslsmith_f_op_f32(select(global3.a.x, -691f, true)), global3.a.x)), Struct_2(global3.b.a, _wgslsmith_div_u32(arg_0.x, _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, global0.b.b, global3.b.b), vec4<u32>(u_input.a.x, arg_0.x, u_input.a.x, 1u)), 4294967295u)), _wgslsmith_mult_i32(~global0.b.c >> (0u % 32u), arg_1.x), global2.b & any(select(vec4<bool>(global3.b.a.b, true, global0.b.d, global2.b), vec4<bool>(false, true, global3.b.d, global0.b.a.a.x), vec4<bool>(global2.a.x, false, global0.b.d, false)))));
    let var_1 = var_0;
    let var_2 = select(_wgslsmith_add_i32(countOneBits(abs(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.x, -7872i, 2147483647i, arg_1.x), vec4<i32>(arg_1.x, var_1.x, u_input.b.x, global0.b.c)))), -31355i), -1i, all(select(!(!vec4<bool>(true, global0.b.a.a.x, global2.a.x, false)), !(!vec4<bool>(true, global0.b.d, false, false)), global3.b.a.b)));
    return global0.b.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3.b.a;
    let var_1 = global0.b.a;
    var var_2 = (vec2<i32>(_wgslsmith_mult_i32(global0.b.c, _wgslsmith_dot_vec4_i32(vec4<i32>(10439i, global3.b.c, -3208i, global3.b.c), vec4<i32>(u_input.b.x, global0.b.c, u_input.b.x, u_input.b.x))), global0.b.c) | select(reverseBits(u_input.b.zz), ~u_input.b.xz << (_wgslsmith_div_vec2_u32(vec2<u32>(0u, 1u), u_input.a) % vec2<u32>(32u)), global0.b.d)) >> (~vec2<u32>(global0.b.b, u_input.a.x) % vec2<u32>(32u));
    let var_3 = global3.b;
    let var_4 = func_1(~reverseBits(~vec3<u32>(4294967295u, 1u, var_3.b) | ~vec3<u32>(5830u, 60819u, 18033u)), u_input.b);
    var var_5 = vec2<i32>(-_wgslsmith_mult_i32(global3.b.c, func_3(vec4<u32>(global3.b.b, 0u, var_3.b, global3.b.b), false, global3.b.d, _wgslsmith_clamp_vec4_u32(vec4<u32>(global4[_wgslsmith_index_u32(global0.b.b, 10u)], global0.b.b, u_input.a.x, 15352u), vec4<u32>(var_3.b, global0.b.b, 30235u, 42081u), vec4<u32>(24779u, 18615u, 0u, u_input.a.x)))), ~(~global0.b.c));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(global3.a.x)), global3.a.x, vec2<u32>(_wgslsmith_add_u32(global4[_wgslsmith_index_u32(14411u, 10u)], ~abs(28654u)), global0.b.b), ~(~var_3.c));
}

