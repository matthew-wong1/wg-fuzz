struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: u32,
    d: bool,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: vec3<u32>,
    d: vec2<u32>,
    e: i32,
}

struct Struct_5 {
    a: Struct_2,
    b: vec4<i32>,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<i32>,
    d: vec3<u32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<Struct_4, 7>;

var<private> global2: Struct_1 = Struct_1(vec2<bool>(false, false));

var<private> global3: array<vec2<u32>, 18>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: vec4<f32>) -> Struct_3 {
    global2 = Struct_1(vec2<bool>(false, true));
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.x))));
    global0 = global1[_wgslsmith_index_u32(59530u, 7u)];
    var var_1 = select(vec4<bool>(global2.a.x, any(vec3<bool>(true, true, global0.a.x && global0.a.x)), global2.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x - global0.b.x) + arg_2.x) >= arg_2.x), global0.a, global0.a.x);
    let var_2 = u_input.a.zx;
    return Struct_3(Struct_2(_wgslsmith_clamp_i32(~_wgslsmith_mod_i32(1i, -1i), (arg_1 | 40871i) ^ 1i, max(global0.e, ~u_input.a.x)), global0.b.x), Struct_2(-1i, 1000f), abs(arg_0), false);
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: vec4<i32>, arg_3: vec4<u32>) -> Struct_2 {
    global3 = array<vec2<u32>, 18>();
    let var_0 = all(vec2<bool>(true, all(global0.a.xzz)));
    return Struct_2(0i, 1075f);
}

fn func_1(arg_0: vec2<f32>, arg_1: vec2<i32>, arg_2: vec4<bool>) -> f32 {
    var var_0 = select(_wgslsmith_mod_i32(~select(global0.e, global0.e, arg_2.x), ~firstLeadingBit(1i)) | (~(~(-28970i)) << (global0.d.x % 32u)), ~(-arg_1.x), true);
    global3 = array<vec2<u32>, 18>();
    global1 = array<Struct_4, 7>();
    var var_1 = Struct_5(func_3(vec4<u32>(global0.c.x, global0.d.x, (global0.c.x | global0.c.x) & _wgslsmith_div_u32(global0.c.x, 4294967295u), global0.d.x), func_2(global0.c.x, -global0.e, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.b.x, -911f, global0.b.x, global0.b.x))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1248f, arg_0.x, 1000f, -635f) + vec4<f32>(global0.b.x, -535f, arg_0.x, arg_0.x)))), u_input.a, ~(~vec4<u32>(1u, global0.d.x, global0.c.x, global0.d.x))), abs(vec4<i32>(18318i, arg_1.x | -389i, global0.e, global0.e)), arg_0.x, Struct_1(global2.a));
    let var_2 = global0.b;
    return 142f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.b.x, global0.b.x) * global0.b.yx)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.b.xz))), u_input.a.ww, select(!global0.a, vec4<bool>(global0.e <= global0.e, global0.a.x, global0.a.x, !global2.a.x), _wgslsmith_div_f32(global0.b.x, global0.b.x) < global0.b.x))) + -224f);
    var var_1 = select(~(-u_input.a.yw), -u_input.a.ww, any(global0.a));
    let var_2 = _wgslsmith_f_op_vec2_f32(-global0.b.yy);
    global0 = Struct_4(vec4<bool>((~global0.c.x | ~6725u) >= _wgslsmith_sub_u32(_wgslsmith_mod_u32(global0.d.x, 11945u), ~global0.d.x), global2.a.x, any(global0.a), func_2(8544u << (_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(global0.c.x, 30236u)) % 32u), func_3(vec4<u32>(global0.d.x, global0.c.x, global0.d.x, 0u), func_2(global0.d.x, 1i, vec4<f32>(-342f, var_0, -1228f, 1402f)), u_input.a, ~vec4<u32>(1u, 4294967295u, 38563u, global0.c.x)).a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(658f, var_0, -746f, var_0))).d), global0.b, global0.c, vec2<u32>(11510u, global0.c.x) ^ vec2<u32>(_wgslsmith_mult_u32(firstTrailingBit(global0.c.x), _wgslsmith_mult_u32(0u, 0u)), global0.d.x | ~35768u), ~func_2(4294967295u, u_input.a.x, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.x, -1005f, -996f, global0.b.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, global0.b.x, -343f, var_0))))).b.a);
    global1 = array<Struct_4, 7>();
    let var_3 = u_input.a.xx;
    var var_4 = _wgslsmith_div_vec4_i32(-vec4<i32>(var_3.x, func_3(vec4<u32>(global0.c.x, global0.c.x, global0.d.x, global0.d.x), Struct_3(Struct_2(-25874i, var_2.x), Struct_2(var_3.x, 128f), 74898u, false), vec4<i32>(var_1.x, 2147483647i, -10231i, -9203i), vec4<u32>(4294967295u, 6536u, 19046u, global0.c.x)).a, -2147483647i, _wgslsmith_add_i32(44271i, 16600i)) ^ firstTrailingBit(_wgslsmith_mult_vec4_i32(abs(u_input.a), _wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, global0.e, -2147483647i, u_input.a.x), u_input.a, vec4<i32>(var_1.x, 0i, var_1.x, var_3.x)))), u_input.a);
    let var_5 = Struct_5(Struct_2(~(1i & u_input.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), vec4<i32>(abs(~global0.e & (i32(-1i) * -2147483647i)), -21256i, -global0.e | func_2(global0.d.x, ~2147483647i, _wgslsmith_f_op_vec4_f32(vec4<f32>(592f, -879f, 221f, var_2.x) - vec4<f32>(var_2.x, global0.b.x, -725f, global0.b.x))).b.a, countOneBits(var_3.x) << (countOneBits(~43030u) % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.x), var_2.x))), Struct_1(global0.a.zx));
    let x = u_input.a;
    s_output = StorageBuffer(var_5.a.b, countOneBits(_wgslsmith_dot_vec3_u32(~global0.c, vec3<u32>(23801u, global0.c.x, global0.d.x) << (vec3<u32>(0u, 4294967295u, global0.d.x) % vec3<u32>(32u)))), var_4.zw << (~(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, global0.c.x), global0.c.zy) | vec2<u32>(global0.c.x, 36668u)) % vec2<u32>(32u)), vec3<u32>(firstLeadingBit(~_wgslsmith_dot_vec4_u32(vec4<u32>(global0.c.x, global0.c.x, 1u, 37432u), vec4<u32>(global0.c.x, 0u, global0.c.x, 365u))), ~_wgslsmith_div_u32(1u, global0.d.x) & global0.d.x, ~1u), global3[_wgslsmith_index_u32(select(5725u, 24807u, true) & func_2(_wgslsmith_dot_vec3_u32(global0.c, vec3<u32>(global0.c.x, 17426u, global0.c.x)) | ~global0.c.x, ~var_3.x | 1i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_5.c, -501f, 1443f, var_2.x))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-171f, 1421f, 991f, -900f) - vec4<f32>(-1000f, global0.b.x, var_5.c, 1000f)))).c, 18u)]);
}

