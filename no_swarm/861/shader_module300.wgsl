struct Struct_1 {
    a: vec4<u32>,
    b: vec4<f32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec2<f32>,
    c: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: vec2<f32>,
    c: Struct_2,
}

struct Struct_5 {
    a: u32,
    b: bool,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 5>;

var<private> global1: array<Struct_5, 3>;

var<private> global2: Struct_5;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_1(arg_0: vec3<i32>, arg_1: u32, arg_2: Struct_3) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-118f))))));
    var var_1 = ~(_wgslsmith_sub_i32(min(abs(6275i), 2147483647i), -5668i) >> (countOneBits(abs(0u >> (0u % 32u))) % 32u));
    global1 = array<Struct_5, 3>();
    var var_2 = 85362u;
    var var_3 = arg_2;
    return vec3<bool>(false, _wgslsmith_clamp_u32(29284u, ~(~arg_1), min(firstTrailingBit(arg_1), 1u)) < 3085u, global2.b);
}

fn func_3(arg_0: bool, arg_1: vec2<i32>) -> vec2<u32> {
    var var_0 = arg_1.x;
    global1 = array<Struct_5, 3>();
    let var_1 = _wgslsmith_mult_vec3_i32(-_wgslsmith_add_vec3_i32(u_input.a, vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-43687i, u_input.a.x), vec2<i32>(-2147483647i, global0[_wgslsmith_index_u32(19650u, 5u)])), abs(u_input.a.x), ~global0[_wgslsmith_index_u32(global2.a, 5u)])), _wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(select(_wgslsmith_add_vec3_i32(vec3<i32>(32892i, arg_1.x, 26148i), vec3<i32>(-23368i, 1i, -17922i)), u_input.a, false), -_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, u_input.a.x, 0i), u_input.a)), firstTrailingBit(vec3<i32>(-11170i >> (0u % 32u), ~36995i, _wgslsmith_add_i32(u_input.a.x, u_input.a.x)))));
    let var_2 = _wgslsmith_add_vec3_u32(reverseBits(~vec3<u32>(abs(1u), _wgslsmith_sub_u32(global2.a, global2.a), global2.c.c.c)), ~(~vec3<u32>(_wgslsmith_mod_u32(17172u, u_input.c), u_input.c, ~5912u)));
    let var_3 = var_1.x;
    return u_input.d.yz;
}

fn func_2(arg_0: vec3<bool>) -> Struct_5 {
    let var_0 = !(!(!(all(vec4<bool>(true, arg_0.x, true, false)) & true)));
    global1 = array<Struct_5, 3>();
    global2 = Struct_5(~abs(42074u), !any(!vec2<bool>(global2.c.b, global2.b)) | arg_0.x, global2.c);
    let var_1 = _wgslsmith_mult_vec2_u32(func_3(func_1(u_input.a, abs(4294967295u), Struct_3(true, vec2<f32>(global2.c.c.b.x, global2.c.a.b.x), global2.c.c)).x, vec2<i32>(u_input.a.x, u_input.a.x) << (vec2<u32>(15230u, u_input.b) % vec2<u32>(32u))), u_input.d.zy) >> ((global2.c.c.a.xw | _wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(global2.c.a.a.xx, u_input.d.zx), max(~vec2<u32>(0u, global2.a), ~vec2<u32>(5337u, u_input.b)))) % vec2<u32>(32u));
    global1 = array<Struct_5, 3>();
    return Struct_5(25162u, arg_0.x & (~max(var_1.x, var_1.x) >= (11223u >> (var_1.x % 32u))), global2.c);
}

fn func_4(arg_0: Struct_5, arg_1: Struct_4, arg_2: Struct_2, arg_3: vec4<u32>) -> Struct_5 {
    global2 = func_2(vec3<bool>(!any(vec2<bool>(true, arg_2.b)), true, !(10058u <= ~arg_1.c.a.c)));
    let var_0 = arg_0;
    var var_1 = Struct_1(var_0.c.c.a, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.c.b.x, -1000f, -1692f, 322f) + vec4<f32>(arg_2.a.b.x, 286f, 858f, global2.c.a.b.x)))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.a.b.x, global2.c.a.b.x, global2.c.a.b.x, arg_2.a.b.x) - arg_2.a.b), vec4<f32>(arg_1.c.c.b.x, var_0.c.a.b.x, -184f, -506f), !vec4<bool>(true, false, false, arg_2.b)))), arg_2.c.b), _wgslsmith_mod_u32(_wgslsmith_div_u32(1u, 4542u), max(4294967295u, 1u)) | arg_3.x);
    var var_2 = 58739u;
    var_1 = func_2(!(!vec3<bool>(arg_1.c.c.b.x > arg_2.a.b.x, global2.c.b, select(true, global2.b, false)))).c.a;
    return func_2(func_1(-(~(-u_input.a)), countOneBits(~(~arg_2.a.a.x)), Struct_3(~u_input.a.x < ~1i, var_0.c.a.b.yx, arg_2.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_4(func_2(func_1(vec3<i32>(_wgslsmith_add_i32(60899i, global0[_wgslsmith_index_u32(79393u, 5u)]), ~global0[_wgslsmith_index_u32(0u, 5u)], 1i), 0u, Struct_3(true, global2.c.c.b.yz, global2.c.c))), Struct_4(false, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global2.c.c.b.x, -263f), vec2<f32>(868f, global2.c.a.b.x))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.c.c.b.x, global2.c.c.b.x) + vec2<f32>(-1000f, -941f))) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(step(global2.c.c.b.wx, global2.c.c.b.ww))))), func_2(vec3<bool>(global2.c.a.c < global2.c.a.c, false, select(global2.c.b, false, global2.b))).c), Struct_2(global2.c.a, func_2(vec3<bool>(!global2.c.b, global2.b, any(vec2<bool>(global2.c.b, global2.b)))).c.b, func_2(!(!vec3<bool>(global2.c.b, true, global2.b))).c.c), global2.c.c.a);
    global1 = array<Struct_5, 3>();
    global0 = array<i32, 5>();
    global1 = array<Struct_5, 3>();
    var var_0 = Struct_4(global2.b, vec2<f32>(-519f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.c.c.b.x * global2.c.c.b.x) * _wgslsmith_f_op_f32(min(global2.c.c.b.x, 519f)))))), Struct_2(func_4(func_4(global1[_wgslsmith_index_u32(global2.c.a.a.x, 3u)], Struct_4(true, global2.c.a.b.wz, global2.c), global2.c, global2.c.a.a), Struct_4(global2.c.b, vec2<f32>(-956f, -487f), global2.c), Struct_2(func_2(vec3<bool>(false, global2.b, false)).c.c, global2.c.b, Struct_1(vec4<u32>(43094u, 0u, 2736u, 1u), global2.c.c.b, 4294967295u)), select(func_4(global1[_wgslsmith_index_u32(1u, 3u)], Struct_4(false, global2.c.c.b.yx, global2.c), global2.c, global2.c.a.a).c.c.a, select(vec4<u32>(0u, global2.c.a.a.x, u_input.d.x, 46671u), global2.c.a.a, false), !vec4<bool>(global2.b, global2.b, global2.c.b, global2.b))).c.c, true, func_4(Struct_5(73783u, global2.c.b, global2.c), Struct_4(any(vec3<bool>(true, global2.c.b, false)), global2.c.a.b.yz, Struct_2(global2.c.a, global2.b, Struct_1(vec4<u32>(u_input.d.x, 55476u, global2.c.c.a.x, 1u), global2.c.a.b, u_input.c))), Struct_2(func_2(vec3<bool>(global2.b, false, global2.c.b)).c.a, func_1(u_input.a, global2.a, Struct_3(global2.c.b, vec2<f32>(2558f, global2.c.a.b.x), Struct_1(global2.c.a.a, global2.c.c.b, global2.c.c.c))).x, global2.c.a), vec4<u32>(global2.c.a.a.x >> (8615u % 32u), 28680u, u_input.b, 4294967295u)).c.a));
    global1 = array<Struct_5, 3>();
    let var_1 = func_2(vec3<bool>(global2.c.b, ~1u <= abs(u_input.d.x), true)).c.a;
    let var_2 = func_2(!func_1(u_input.a, ~36898u, Struct_3(!var_0.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(848f, -127f)), Struct_1(vec4<u32>(u_input.b, var_1.a.x, 1u, 85139u), vec4<f32>(-1179f, var_1.b.x, var_0.b.x, var_1.b.x), 44275u)))).c;
    let x = u_input.a;
    s_output = StorageBuffer(select(vec3<u32>(~0u, global2.c.a.a.x, global2.c.a.c), var_2.c.a.ywz, all(!vec2<bool>(var_0.c.b, false))) & var_2.a.a.ywx, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -989f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)) * _wgslsmith_f_op_f32(622f + global2.c.a.b.x))), ~_wgslsmith_add_vec2_u32(countOneBits(vec2<u32>(u_input.c, u_input.c)), _wgslsmith_div_vec2_u32(reverseBits(global2.c.a.a.wz), vec2<u32>(u_input.b, 4294967295u))));
}

