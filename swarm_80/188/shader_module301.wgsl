struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: u32,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: bool,
    d: f32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: u32,
    c: Struct_3,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: vec4<f32> = vec4<f32>(1398f, -1000f, 620f, -2731f);

var<private> global2: vec3<bool> = vec3<bool>(false, true, false);

var<private> global3: array<bool, 23>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec4<bool>, arg_1: f32, arg_2: vec2<u32>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1268f, 304f), global1.zz, global2.x)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1222f, global1.x)))))));
    var var_1 = 20079i;
    var var_2 = Struct_4(vec3<u32>(1u, 4294967295u, reverseBits(28086u)), reverseBits(1u), Struct_3(firstLeadingBit(-firstLeadingBit(-33889i)), Struct_2(Struct_1(-901f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, 1000f, global1.x)), ~36630u, 4294967295u, arg_2.x), _wgslsmith_f_op_f32(-1917f * _wgslsmith_f_op_f32(-143f + -1165f)), Struct_1(arg_1, _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, 720f, 1515f, global1.x) * vec4<f32>(1955f, 329f, var_0.x, arg_1)), arg_2.x, _wgslsmith_sub_u32(arg_2.x, 1u), ~23514u), true), any(vec4<bool>(false, !global2.x, global2.x, global3[_wgslsmith_index_u32(global0.x, 23u)])), -212f), Struct_1(-680f, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 - -1005f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, global1.x) + var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x * 621f) - var_0.x)), min(_wgslsmith_div_u32(arg_2.x, ~1u), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, 1u), _wgslsmith_div_vec3_u32(vec3<u32>(arg_2.x, 4294967295u, 0u), vec3<u32>(8008u, 75168u, arg_2.x)))), _wgslsmith_mod_u32(arg_2.x, ~(~arg_2.x)), 1u));
    global3 = array<bool, 23>();
    var var_3 = var_0.x;
    return var_2.c.b.a.c;
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: f32, arg_3: bool) -> Struct_2 {
    var var_0 = global0.zy;
    var_0 = vec2<u32>(global0.x, global0.x);
    var var_1 = Struct_4(min(vec3<u32>(~(~18647u), 48819u, _wgslsmith_mult_u32(~9484u, global0.x)), vec3<u32>(min(10224u, arg_0), _wgslsmith_mult_u32(1u, 4294967295u), _wgslsmith_sub_u32(global0.x, 0u)) << (_wgslsmith_clamp_vec3_u32(~vec3<u32>(global0.x, 223u, var_0.x), vec3<u32>(29301u, 11792u, var_0.x) | vec3<u32>(arg_0, 89496u, global0.x), ~vec3<u32>(arg_0, var_0.x, 4294967295u)) % vec3<u32>(32u))), reverseBits(1u), Struct_3(u_input.a.x, Struct_2(Struct_1(_wgslsmith_f_op_f32(arg_2 * -608f), vec4<f32>(-424f, -913f, global1.x, 855f), ~arg_0, 14376u, func_3(vec4<bool>(true, true, global2.x, false), arg_2, vec2<u32>(15647u, 1u))), 1063f, Struct_1(_wgslsmith_f_op_f32(arg_2 - -1000f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, -1017f, global1.x, -1000f)), var_0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, 3480u), vec3<u32>(1u, global0.x, 0u)), 5630u), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(global0.zz, global0.xy) >> (~1u % 32u), 23u)]), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(countOneBits(35924u), arg_0), select(global0.xy, ~vec2<u32>(global0.x, 104063u), global2.yx)), 23u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_2, global1.x))))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1543f), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_2, 1215f, 816f, global1.x)))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 1000f, 723f, arg_2)))))), abs(firstTrailingBit(_wgslsmith_clamp_u32(12070u, arg_0, var_0.x))), var_0.x, _wgslsmith_div_u32(4294967295u, 42030u)));
    let var_2 = global1.x;
    let var_3 = max((min(arg_1, u_input.a.x) | var_1.c.a) & u_input.a.x, abs(_wgslsmith_dot_vec4_i32(~_wgslsmith_mod_vec4_i32(vec4<i32>(var_1.c.a, 33724i, -1i, 1i), vec4<i32>(arg_1, arg_1, 0i, 2147483647i)), abs(abs(vec4<i32>(0i, 2147483647i, -2147483647i, 0i))))));
    return var_1.c.b;
}

fn func_1(arg_0: vec3<i32>, arg_1: f32, arg_2: Struct_4) -> Struct_2 {
    var var_0 = ((select(abs(arg_2.a.x), _wgslsmith_div_u32(arg_2.c.b.a.d, 1u), arg_2.c.d < arg_1) >= _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 12466u, 0u, 3869u), vec4<u32>(5346u, arg_2.a.x, global0.x, arg_2.b)), ~vec4<u32>(global0.x, global0.x, 0u, global0.x))) && (abs(~arg_0.x) < -_wgslsmith_mod_i32(u_input.a.x, 46659i))) == true;
    var var_1 = arg_2.a;
    var var_2 = global0.x;
    var var_3 = select(vec2<bool>(true, true), global2.yy, global2.x);
    var var_4 = 4294967295u > ~(~_wgslsmith_div_u32(_wgslsmith_clamp_u32(var_1.x, var_1.x, global0.x), global0.x));
    return func_2(~global0.x, i32(-1i) * -6595i, global1.x, all(vec2<bool>(arg_2.c.c, global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u >> (var_1.x % 32u), _wgslsmith_sub_u32(global0.x, 1u)), 23u)])));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_2) -> vec4<f32> {
    var var_0 = arg_2.b;
    let var_1 = -66478i;
    var var_2 = Struct_1(-1081f, _wgslsmith_f_op_vec4_f32(-arg_1.b.a.b), arg_1.b.a.d, _wgslsmith_sub_u32(arg_0.c.c, select(4500u, min(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.b.a.d, arg_0.a.c), vec2<u32>(global0.x, arg_2.c.d)), ~0u), !all(vec4<bool>(arg_0.d, true, false, true)))), _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(1u, 1u), global0.yz) & (global0.xx | global0.zx), ~(vec2<u32>(95206u, 0u) ^ ~vec2<u32>(1u, arg_1.b.c.d))));
    global3 = array<bool, 23>();
    var var_3 = arg_1.a;
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.c.b.x), arg_0.a.b.x), _wgslsmith_f_op_f32(-arg_1.b.c.b.x), _wgslsmith_div_f32(_wgslsmith_div_f32(933f, 1254f), _wgslsmith_f_op_f32(step(-1036f, -1759f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1075f)) * -1321f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(var_2.b))))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, arg_2.b, arg_1.d, arg_0.a.b.x) * arg_0.a.b)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-466f, 879f, global1.x, global1.x)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(Struct_2(Struct_1(global1.x, vec4<f32>(global1.x, 988f, global1.x, -732f), global0.x, 4294967295u, 44119u), global1.x, Struct_1(global1.x, vec4<f32>(-120f, 1000f, global1.x, global1.x), global0.x, global0.x, global0.x), false), Struct_3(u_input.a.x, Struct_2(Struct_1(global1.x, vec4<f32>(1000f, global1.x, 1579f, -963f), global0.x, global0.x, global0.x), global1.x, Struct_1(global1.x, vec4<f32>(global1.x, -1000f, global1.x, -762f), global0.x, global0.x, 0u), global2.x), false, global1.x), func_1(vec3<i32>(u_input.a.x, -177i, u_input.a.x), global1.x, Struct_4(vec3<u32>(2922u, 34178u, 1u), 760u, Struct_3(u_input.a.x, Struct_2(Struct_1(global1.x, vec4<f32>(global1.x, global1.x, global1.x, global1.x), global0.x, global0.x, global0.x), global1.x, Struct_1(global1.x, vec4<f32>(global1.x, global1.x, global1.x, -258f), global0.x, 4294967295u, 74226u), global3[_wgslsmith_index_u32(global0.x, 23u)]), global3[_wgslsmith_index_u32(global0.x, 23u)], 925f), Struct_1(-323f, vec4<f32>(global1.x, 643f, -2290f, global1.x), global0.x, global0.x, 60735u)))))))));
    global2 = vec3<bool>(false, false, global3[_wgslsmith_index_u32(reverseBits(global0.x), 23u)]);
    let var_1 = -(~(~(~(~u_input.a))));
    global0 = reverseBits(vec3<u32>(global0.x, 1u, ~_wgslsmith_sub_u32(global0.x, global0.x) << (_wgslsmith_mod_u32(44250u, 1u) % 32u)));
    var var_2 = Struct_1(func_1(var_1, global1.x, Struct_4(_wgslsmith_clamp_vec3_u32(vec3<u32>(4547u, global0.x, 17971u), vec3<u32>(global0.x, 21436u, global0.x), vec3<u32>(global0.x, global0.x, global0.x)) << ((vec3<u32>(0u, global0.x, 110982u) & vec3<u32>(global0.x, global0.x, 1662u)) % vec3<u32>(32u)), 0u, Struct_3(~u_input.a.x, func_1(var_1, 483f, Struct_4(vec3<u32>(51653u, global0.x, 28160u), global0.x, Struct_3(-1i, Struct_2(Struct_1(var_0.x, vec4<f32>(global1.x, var_0.x, global1.x, var_0.x), 18907u, 72662u, 1u), -1927f, Struct_1(var_0.x, vec4<f32>(global1.x, 1000f, -1456f, var_0.x), 24300u, global0.x, global0.x), false), true, var_0.x), Struct_1(192f, vec4<f32>(-1227f, 1000f, 433f, var_0.x), 0u, global0.x, 0u))), !global3[_wgslsmith_index_u32(global0.x, 23u)], _wgslsmith_f_op_f32(-var_0.x)), func_2(func_2(global0.x, 1i, 207f, false).c.c, 21194i, _wgslsmith_f_op_f32(floor(690f)), true).c)).c.b.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-global1.x), -857f, var_0.x, -577f)))), ~global0.x, global0.x, ~abs(countOneBits(_wgslsmith_div_u32(89981u, 4294967295u))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1081f - var_0.x))))) * 1193f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(~global0.xz << (global0.zz % vec2<u32>(32u)), reverseBits(~global0.yy)), global0.yy), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(floor(var_0.zx)), var_2.b.zz)));
}

