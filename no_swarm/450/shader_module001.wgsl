struct Struct_1 {
    a: bool,
    b: f32,
    c: vec4<u32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec4<i32>,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: vec3<u32>,
    d: vec2<i32>,
    e: vec4<bool>,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_2,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: Struct_3;

var<private> global2: array<Struct_1, 32>;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_2() -> i32 {
    let var_0 = _wgslsmith_mod_vec2_i32(vec2<i32>(global0.b.c.x, ~(_wgslsmith_mod_i32(30056i, 2147483647i) ^ max(-2147483647i, u_input.a))), -min(vec2<i32>(global0.a.c.x, 32388i), _wgslsmith_div_vec2_i32(vec2<i32>(0i, u_input.a), vec2<i32>(u_input.a, global0.b.c.x))) & vec2<i32>(2147483647i, firstLeadingBit(16096i)));
    var var_1 = !(~reverseBits(_wgslsmith_div_u32(global0.a.e.c.x, 69043u)) < ~(~_wgslsmith_dot_vec3_u32(global1.a.c.yxz, vec3<u32>(global1.a.c.x, 61283u, global1.a.c.x))));
    var var_2 = global0.a.c.x;
    let var_3 = global0.a.a;
    var_1 = false;
    return _wgslsmith_mult_i32(1i, countOneBits(global0.a.c.x));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>) -> bool {
    var var_0 = global0.a;
    var var_1 = vec3<bool>(_wgslsmith_mod_u32(~(21535u >> (global0.d.c.x % 32u)), global0.b.e.c.x) == reverseBits(~firstLeadingBit(4294967295u)), var_0.b.a, ((var_0.e.a || all(global0.a.a.yy)) & (var_0.c.x < (1i & var_0.c.x))) | select(true || (global0.b.b.c.x != var_0.b.c.x), false == (4294967295u == global1.a.c.x), all(vec4<bool>(global1.a.a, global1.a.a, false, arg_1.x)) | (false && arg_1.x)));
    let var_2 = Struct_5(Struct_2(global0.a.a, Struct_1(arg_0.a, _wgslsmith_f_op_f32(sign(-615f)), ~global1.a.c, _wgslsmith_f_op_vec3_f32(-global0.a.b.d)), var_0.c, 884f, Struct_1(false, _wgslsmith_f_op_f32(min(-727f, _wgslsmith_f_op_f32(-arg_0.b))), abs(vec4<u32>(var_0.e.c.x, global1.a.c.x, global1.a.c.x, 0u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(global0.b.b.d))))), Struct_2(!(!vec4<bool>(arg_0.a, false, true, true)), Struct_1(false, -722f, global1.a.c, vec3<f32>(_wgslsmith_f_op_f32(var_0.e.d.x + 1748f), _wgslsmith_f_op_f32(-1731f + -812f), _wgslsmith_f_op_f32(f32(-1f) * -188f))), -(~select(var_0.c, vec4<i32>(2147483647i, u_input.a, -47571i, var_0.c.x), false)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.a.b))), Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(25307u, 23307u, 0u), global0.a.e.c.ywz) == ~12141u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1097f))), ~(vec4<u32>(1u, 17612u, var_0.e.c.x, arg_0.c.x) | arg_0.c), vec3<f32>(-1595f, _wgslsmith_f_op_f32(var_0.b.d.x - 659f), global0.d.b))), var_0.e.a, Struct_1(true, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(global1.a.d.x)))), select(select(vec4<u32>(15368u, global0.a.b.c.x, global0.b.e.c.x, var_0.b.c.x), global0.b.e.c, var_1.x), ~global0.d.c, true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-412f, arg_0.d.x, -501f) - global0.a.b.d))))));
    global0 = Struct_5(var_2.b, var_2.a, true, Struct_1((abs(var_0.c.x) ^ -var_2.b.c.x) <= ~var_2.a.c.x, _wgslsmith_f_op_f32(exp2(arg_0.d.x)), vec4<u32>(var_0.b.c.x, firstTrailingBit(var_2.a.b.c.x), var_2.d.c.x, 4126u), vec3<f32>(-115f, var_0.b.b, 1f)));
    let var_3 = _wgslsmith_f_op_f32(-706f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-107f)) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.a.b), _wgslsmith_f_op_f32(floor(var_0.e.b)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0.b.d)) - var_0.d)))));
    return false;
}

fn func_4(arg_0: bool, arg_1: vec2<f32>, arg_2: Struct_2, arg_3: Struct_5) -> vec2<bool> {
    global2 = array<Struct_1, 32>();
    let var_0 = vec4<u32>(0u, _wgslsmith_dot_vec3_u32(reverseBits(~global0.b.b.c.xxx), global0.b.b.c.zzz), global0.d.c.x, global0.a.b.c.x);
    var var_1 = vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_mult_u32(global1.a.c.x, 16310u ^ arg_2.e.c.x), ~(~global0.d.c.x)) & (global1.a.c.x | 114347u), 68544u);
    global0 = Struct_5(Struct_2(arg_3.b.a, arg_2.b, _wgslsmith_add_vec4_i32(-arg_3.a.c, global0.a.c), arg_2.b.b, Struct_1(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(770f - 1000f)), global0.b.b.c, global0.d.d)), Struct_2(vec4<bool>(all(vec4<bool>(global1.a.a, arg_3.d.a, true, arg_0)) || true, true, any(select(vec2<bool>(false, true), vec2<bool>(arg_2.b.a, false), arg_2.a.yy)), global0.b.e.a), Struct_1(func_3(Struct_1(arg_0, -149f, vec4<u32>(0u, 4294967295u, global1.a.c.x, global0.d.c.x), global1.a.d), !vec2<bool>(arg_3.b.e.a, arg_3.b.e.a)), 1f, ~(~global0.d.c), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(894f, 510f, 109f)) + arg_3.d.d)), countOneBits(vec4<i32>(-1i) * -vec4<i32>(-89691i, 2147483647i, arg_2.c.x, -1i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-142f - -1204f)), arg_3.a.e), true, global1.a);
    let var_2 = global0.b;
    return !select(arg_2.a.wz, select(select(vec2<bool>(global0.d.a, true), select(var_2.a.zz, vec2<bool>(false, var_2.b.a), global0.c), select(vec2<bool>(true, arg_0), vec2<bool>(global1.a.a, global0.b.a.x), vec2<bool>(arg_0, false))), vec2<bool>(all(arg_2.a.ywy), any(arg_2.a.xz)), select(vec2<bool>(false, true), select(var_2.a.ww, var_2.a.wz, var_2.a.x), arg_2.a.zw)), vec2<bool>(true, true));
}

fn func_1() -> f32 {
    let var_0 = global0.a.c.zyw;
    let var_1 = 36251u;
    var var_2 = select(var_0.zy, vec2<i32>(1i, func_2()), select(!global0.b.a.zx, global0.b.a.yz, func_4(func_3(Struct_1(global0.c, 1631f, global1.a.c, vec3<f32>(global0.b.b.d.x, global1.a.d.x, global1.a.b)), global0.a.a.xw), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-273f, 2459f)), global0.b, Struct_5(global0.a, Struct_2(global0.b.a, global0.a.e, vec4<i32>(1390i, 2147483647i, var_0.x, u_input.a), 1764f, global2[_wgslsmith_index_u32(global1.a.c.x, 32u)]), global0.a.e.a, global2[_wgslsmith_index_u32(global1.a.c.x, 32u)])))) >> (vec2<u32>(global0.d.c.x, global0.a.e.c.x) % vec2<u32>(32u));
    let var_3 = -364f;
    let var_4 = 15801i;
    return _wgslsmith_f_op_f32(-global0.a.d);
}

fn func_5(arg_0: vec2<u32>, arg_1: bool, arg_2: Struct_2) -> Struct_3 {
    let var_0 = global2[_wgslsmith_index_u32(~24779u, 32u)];
    let var_1 = Struct_4(Struct_3(Struct_1(false, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.d, global0.a.d)), vec4<u32>(reverseBits(var_0.c.x), ~arg_2.e.c.x, ~0u, ~1u), _wgslsmith_f_op_vec3_f32(-global1.a.d))), arg_2, ~vec3<u32>(_wgslsmith_div_u32(arg_2.e.c.x, ~global1.a.c.x), 1u, ~(75504u >> (arg_0.x % 32u))), vec2<i32>(arg_2.c.x, ~_wgslsmith_clamp_i32(_wgslsmith_div_i32(u_input.a, -57631i), u_input.a, global0.b.c.x)), !global0.b.a);
    let var_2 = var_1.b.b.d.yz;
    let var_3 = _wgslsmith_dot_vec3_u32(global1.a.c.wwz, global0.b.e.c.xzw);
    let var_4 = Struct_3(arg_2.e);
    return Struct_3(Struct_1(!any(select(vec4<bool>(false, true, true, arg_2.e.a), arg_2.a, var_0.a)), 455f, _wgslsmith_sub_vec4_u32(vec4<u32>(95471u, arg_0.x, var_3, _wgslsmith_mod_u32(var_1.b.b.c.x, 1u)), var_0.c), _wgslsmith_f_op_vec3_f32(-var_1.b.e.d)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 32>();
    global1 = Struct_3(global1.a);
    var var_0 = global0.a.a.xzw;
    global2 = array<Struct_1, 32>();
    global1 = func_5(reverseBits(global1.a.c.xw), _wgslsmith_f_op_f32(func_1()) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b.e.b + global1.a.b) - _wgslsmith_f_op_f32(-1000f * 337f))), global0.a);
    let x = u_input.a;
    s_output = StorageBuffer(global0.b.b.c.x, global0.b.c.x & _wgslsmith_dot_vec4_i32(reverseBits(global0.a.c), -global0.a.c), global1.a.c, -(global0.a.c.yzw | vec3<i32>(global0.b.c.x, 0i ^ u_input.a, -u_input.a)));
}

