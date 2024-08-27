struct Struct_1 {
    a: i32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: vec4<bool>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: Struct_2,
    d: vec2<bool>,
    e: vec3<f32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_2,
}

struct Struct_5 {
    a: Struct_2,
    b: bool,
    c: vec2<f32>,
    d: i32,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 10> = array<vec3<i32>, 10>(vec3<i32>(-11660i, -41390i, i32(-2147483648)), vec3<i32>(1i, 19709i, -8151i), vec3<i32>(-66854i, 0i, -8456i), vec3<i32>(-31969i, 31478i, 1i), vec3<i32>(-21335i, 2191i, -14079i), vec3<i32>(-1i, 2147483647i, -37171i), vec3<i32>(-1i, i32(-2147483648), i32(-2147483648)), vec3<i32>(-16911i, -26302i, 0i), vec3<i32>(42212i, 4540i, 2147483647i), vec3<i32>(i32(-2147483648), -1i, -27781i));

var<private> global1: vec2<bool>;

var<private> global2: vec4<u32>;

var<private> global3: Struct_5;

var<private> global4: Struct_1;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_5) -> Struct_5 {
    let var_0 = vec4<i32>(firstTrailingBit(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(global4.a, -43967i, u_input.d, global3.d), vec4<i32>(u_input.a.x, global4.a, 20936i, global3.d)), -46549i)), 2147483647i, _wgslsmith_dot_vec3_i32(~select(vec3<i32>(-1i, 3932i, -1i), global0[_wgslsmith_index_u32(u_input.e, 10u)], false), -firstTrailingBit(vec3<i32>(10901i, u_input.d, u_input.c))), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(arg_0, vec2<i32>(-2147483647i, global4.a)), global4.a)) >> (select(_wgslsmith_sub_vec4_u32(vec4<u32>(select(4294967295u, 29367u, false), 1u, u_input.b, global2.x), ~abs(vec4<u32>(1u, global2.x, 24479u, 0u))), _wgslsmith_div_vec4_u32(vec4<u32>(global2.x, 4294967295u, 1u, 88660u), vec4<u32>(1u, 18439u, global2.x, u_input.e)) & ~select(vec4<u32>(u_input.e, u_input.e, u_input.e, global2.x), vec4<u32>(4294967295u, global2.x, global2.x, global2.x), vec4<bool>(true, false, arg_1.b, false)), select(!all(vec4<bool>(false, global3.b, false, true)), !global3.b, false)) % vec4<u32>(32u));
    global4 = Struct_1(-abs(-4029i ^ _wgslsmith_div_i32(arg_1.d, 22035i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(global4.b))));
    let var_1 = arg_1.a.c.yxy;
    var var_2 = _wgslsmith_f_op_f32(arg_1.c.x * -1000f);
    var var_3 = global3.a;
    return arg_1;
}

fn func_3(arg_0: i32, arg_1: bool) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(global4.b)));
    let var_1 = !global3.a.c.x;
    var var_2 = 0i;
    let var_3 = u_input.b;
    let var_4 = ~_wgslsmith_sub_i32(-_wgslsmith_add_i32(-23278i, arg_0) >> (global2.x % 32u), _wgslsmith_sub_i32(global4.a, ~(1i << (var_3 % 32u))));
    return 81039u;
}

fn func_4(arg_0: Struct_2, arg_1: u32) -> Struct_5 {
    let var_0 = func_1(~vec2<i32>(-2147483647i, _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -22813i, global4.a, 1i), vec4<i32>(u_input.a.x, 7739i, u_input.d, global4.a)), _wgslsmith_clamp_i32(-32900i, global4.a, global3.d))), Struct_5(Struct_2(any(select(arg_0.c, arg_0.c, global3.b)), 853f, arg_0.c), false, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global3.c) * _wgslsmith_f_op_vec2_f32(-global3.c)), _wgslsmith_f_op_vec2_f32(select(global3.c, global4.b.zz, global3.a.a)), !vec2<bool>(false, global1.x))), -global3.d, -select(global3.e, -u_input.a, arg_1 <= 4294967295u)));
    global4 = Struct_1(func_1(_wgslsmith_sub_vec2_i32(global3.e, -vec2<i32>(global3.d, 2147483647i)), var_0).d, _wgslsmith_f_op_vec3_f32(-global4.b));
    global2 = countOneBits(~(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_1, u_input.e, u_input.e, u_input.b), vec4<u32>(u_input.b, arg_1, 1u, global2.x)) << (min(vec4<u32>(0u, 1u, 4294967295u, 50527u), vec4<u32>(arg_1, global2.x, u_input.b, arg_1)) % vec4<u32>(32u)))) >> (~_wgslsmith_clamp_vec4_u32(vec4<u32>(global2.x, arg_1, 55998u, 46118u) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.e, global2.x, global2.x, arg_1), vec4<u32>(u_input.e, global2.x, 25103u, arg_1)) % vec4<u32>(32u)), vec4<u32>(arg_1, arg_1, arg_1, 42887u) | vec4<u32>(arg_1, 4755u, u_input.b, arg_1), ~(~vec4<u32>(178213u, arg_1, 29365u, u_input.e))) % vec4<u32>(32u));
    let var_1 = _wgslsmith_mult_u32(global2.x, arg_1);
    var var_2 = !arg_0.c.zx;
    return var_0;
}

fn func_2(arg_0: Struct_4, arg_1: bool, arg_2: vec2<bool>) -> vec3<u32> {
    let var_0 = global3.d;
    global3 = func_4(Struct_2(arg_0.b.c.x, _wgslsmith_f_op_f32(-global4.b.x), vec4<bool>(true, -6590i < -global3.d, global1.x, arg_1)), ~(~_wgslsmith_div_u32(func_3(-1854i, arg_0.b.c.x), _wgslsmith_mod_u32(global2.x, 12277u))));
    var var_1 = firstTrailingBit(~u_input.d);
    var var_2 = _wgslsmith_div_vec4_i32(-select(vec4<i32>(-1i) * -vec4<i32>(global3.e.x, u_input.a.x, u_input.a.x, u_input.a.x), firstLeadingBit(vec4<i32>(global3.d, -8558i, 0i, u_input.c)) >> (vec4<u32>(1u, arg_0.a.x, 3787u, u_input.e) % vec4<u32>(32u)), arg_0.b.c), vec4<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(-vec3<i32>(global3.d, -2147483647i, u_input.c), firstTrailingBit(global0[_wgslsmith_index_u32(global2.x, 10u)])), global0[_wgslsmith_index_u32(~(~arg_0.a.x), 10u)]), ~40021i, -52740i, -7878i));
    var var_3 = 2147483647i;
    return max(_wgslsmith_mod_vec3_u32(~vec3<u32>(~arg_0.a.x, ~12488u, _wgslsmith_div_u32(4294967295u, 38307u)), arg_0.a), arg_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3.a;
    var var_1 = true;
    let var_2 = global4.b.x;
    global3 = func_1(vec2<i32>(0i, ~(-7457i)), Struct_5(global3.a, global3.a.c.x, _wgslsmith_f_op_vec2_f32(-global4.b.zz), abs(-max(2147483647i, -1i)), ~vec2<i32>(u_input.d, ~global4.a)));
    global2 = select(_wgslsmith_div_vec4_u32(~vec4<u32>(_wgslsmith_div_u32(u_input.e, global2.x), 1u, _wgslsmith_div_u32(u_input.e, 0u), u_input.b), vec4<u32>(u_input.b, _wgslsmith_sub_u32(~u_input.e, 0u), _wgslsmith_dot_vec2_u32(~global2.zx, select(vec2<u32>(11037u, 0u), global2.ww, var_0.c.x)), _wgslsmith_mult_u32(global2.x, 1u))), vec4<u32>(u_input.e ^ (~0u << (~global2.x % 32u)), _wgslsmith_sub_u32(~42795u >> (global2.x % 32u), _wgslsmith_div_u32(1u, u_input.b)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(54891u, u_input.e, 6469u), func_2(Struct_4(global2.yww, Struct_2(true, global3.c.x, var_0.c)), true, var_0.c.xy)), 39446u), true);
    var var_3 = (global3.e | vec2<i32>(0i, -2147483647i >> (u_input.e % 32u))) << ((vec2<u32>(~(global2.x ^ global2.x), u_input.b) ^ ~vec2<u32>(44111u, ~u_input.e)) % vec2<u32>(32u));
    let var_4 = var_0.c.wxx;
    var var_5 = vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -484f))), 1390f, _wgslsmith_f_op_f32(-global4.b.x));
    global3 = Struct_5(func_4(global3.a, _wgslsmith_dot_vec3_u32(global2.xwx >> (vec3<u32>(u_input.e, 0u, u_input.b) % vec3<u32>(32u)), ~global2.zww)).a, var_4.x, vec2<f32>(_wgslsmith_f_op_f32(global4.b.x - -420f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(506f - -351f) + 1816f)))), ~global3.d | _wgslsmith_sub_i32(_wgslsmith_sub_i32(49922i, _wgslsmith_add_i32(2147483647i, -80946i)), 0i), vec2<i32>(_wgslsmith_mod_i32(10049i, var_3.x), global4.a));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(global3.e.x, countOneBits(global4.a), max(reverseBits(global3.d >> (u_input.e % 32u)), global3.d), ~global4.a), var_3.x, abs(reverseBits(firstTrailingBit(-1i))));
}

