struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 26>;

var<private> global1: vec4<f32>;

var<private> global2: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(true, true), Struct_1(false, false), Struct_1(false, true));

var<private> global3: vec4<bool>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: vec2<i32>, arg_1: f32, arg_2: f32) -> bool {
    global2 = array<Struct_1, 3>();
    let var_0 = global2[_wgslsmith_index_u32(u_input.c, 3u)];
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(2076f, arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x + 927f) - arg_2)), -208f));
    var var_2 = _wgslsmith_f_op_f32(ceil(arg_2));
    var var_3 = u_input.c;
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2276f + 220f) - var_1.x) * _wgslsmith_f_op_f32(-global1.x)))) != _wgslsmith_f_op_f32(abs(-213f));
}

fn func_1(arg_0: bool, arg_1: i32) -> f32 {
    let var_0 = 4294967295u;
    global0 = array<Struct_3, 26>();
    global3 = select(select(!vec4<bool>(global3.x, arg_1 > arg_1, true, false), !(!vec4<bool>(arg_0, arg_0, global3.x, false)), arg_0), vec4<bool>(true, all(select(vec3<bool>(global3.x, true, false), vec3<bool>(false, true, true), vec3<bool>(true, global3.x, false))), func_2(vec2<i32>(-1i) * -vec2<i32>(38101i, 27181i), global1.x, global1.x), true), global3.x);
    global2 = array<Struct_1, 3>();
    global3 = !(!vec4<bool>(false, _wgslsmith_f_op_f32(global1.x * global1.x) < _wgslsmith_f_op_f32(abs(-1429f)), global3.x || (57126u >= var_0), true));
    return global1.x;
}

fn func_3() -> vec3<bool> {
    global2 = array<Struct_1, 3>();
    global0 = array<Struct_3, 26>();
    let var_0 = Struct_2(Struct_1(global3.x, !(!global3.x) == all(select(global3.wzw, global3.yyy, vec3<bool>(false, global3.x, false)))), ~abs(vec4<i32>(abs(-1i), u_input.b.x, 1i, -u_input.b.x)), Struct_1(any(vec3<bool>(true, false, 45645i <= u_input.b.x)), global3.x));
    var var_1 = global3.xz;
    var var_2 = select(~(~u_input.a.wz << (min(abs(u_input.a.wx), _wgslsmith_div_vec2_u32(u_input.a.zz, u_input.a.ww)) % vec2<u32>(32u))), ~firstLeadingBit(u_input.a.yw), var_1.x);
    return vec3<bool>(var_0.c.b, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -542f))))) == 555f, var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -562f, global1.x, global1.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -209f, global1.x, global1.x))) - vec4<f32>(_wgslsmith_f_op_f32(func_1(false, 2147483647i)), _wgslsmith_f_op_f32(f32(-1f) * -1368f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -418f)), global1.x)));
    global2 = array<Struct_1, 3>();
    var var_0 = func_3();
    var_0 = select(select(select(!vec3<bool>(global3.x, true, false), func_3(), false), select(select(global3.ywz, select(global3.xww, vec3<bool>(var_0.x, var_0.x, global3.x), false), true), select(!global3.wyx, vec3<bool>(global3.x, false, true), false | var_0.x), any(vec2<bool>(true, true))), global1.x > global1.x), global3.yyz, true);
    global3 = !vec4<bool>(true, _wgslsmith_clamp_u32(firstTrailingBit(55079u), u_input.c, ~58086u) != u_input.a.x, true, true);
    var_0 = global3.wyy;
    global2 = array<Struct_1, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_i32(-(~u_input.b.wy), vec2<i32>(max(u_input.b.x, u_input.b.x), 54644i)), select(29516i, 48947i, false), ~_wgslsmith_clamp_u32(4294967295u, ~39099u, countOneBits(max(1u, 0u))));
}

