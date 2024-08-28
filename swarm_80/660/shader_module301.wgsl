struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: bool,
    c: vec3<u32>,
    d: Struct_1,
    e: vec2<f32>,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: bool,
    b: vec3<i32>,
    c: i32,
}

struct Struct_5 {
    a: vec4<bool>,
    b: Struct_4,
    c: vec4<i32>,
    d: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 21>;

var<private> global1: f32;

var<private> global2: Struct_3 = Struct_3(vec4<bool>(false, true, true, true));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_4) -> vec3<i32> {
    global1 = -1406f;
    let var_0 = ~u_input.b;
    global0 = array<bool, 21>();
    global0 = array<bool, 21>();
    global2 = Struct_3(!(!(!global2.a)));
    return vec3<i32>(_wgslsmith_mult_i32(abs(arg_0.b.x | arg_0.c), -2560i), _wgslsmith_sub_i32(firstTrailingBit(~firstTrailingBit(arg_0.b.x)), (~0i | (arg_0.c ^ arg_0.c)) & arg_0.c), arg_0.c);
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: Struct_1) -> u32 {
    let var_0 = arg_0;
    global1 = _wgslsmith_f_op_f32(abs(arg_2.a));
    let var_1 = Struct_4(!arg_1, -(~_wgslsmith_clamp_vec3_i32(func_3(Struct_4(arg_1, vec3<i32>(-35993i, arg_2.b, arg_2.b), arg_2.b)), func_3(Struct_4(global0[_wgslsmith_index_u32(13529u, 21u)], vec3<i32>(arg_2.b, -1i, arg_2.b), 24356i)), -vec3<i32>(arg_2.b, arg_2.b, arg_2.b))), arg_2.b);
    global2 = Struct_3(select(select(!vec4<bool>(true, true, var_1.a, var_1.a), vec4<bool>(global0[_wgslsmith_index_u32(29719u, 21u)], !var_1.a, all(global2.a.zx), arg_0 > arg_0), false), select(global2.a, !select(vec4<bool>(true, false, arg_1, arg_1), vec4<bool>(global2.a.x, false, global2.a.x, false), arg_1), select(!global2.a, select(global2.a, vec4<bool>(arg_1, false, false, true), var_1.a), global0[_wgslsmith_index_u32(firstTrailingBit(17901u), 21u)])), vec4<bool>(true, any(vec3<bool>(arg_1, true, arg_1)), global0[_wgslsmith_index_u32(var_0, 21u)], true)));
    global1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1257f)), -1000f);
    return select(select(arg_0, arg_0, ((arg_1 & true) | global0[_wgslsmith_index_u32(max(23248u, 47462u), 21u)]) || any(!global2.a)), u_input.c.x, false);
}

fn func_1(arg_0: vec4<f32>) -> Struct_1 {
    var var_0 = Struct_5(!select(vec4<bool>(global2.a.x, global2.a.x, false, true), !select(global2.a, vec4<bool>(false, true, global0[_wgslsmith_index_u32(u_input.a, 21u)], global0[_wgslsmith_index_u32(u_input.c.x, 21u)]), global2.a), vec4<bool>(global0[_wgslsmith_index_u32(func_2(u_input.c.x, true, Struct_1(-230f, -38175i)), 21u)], true, u_input.c.x >= 1u, any(vec3<bool>(global0[_wgslsmith_index_u32(u_input.b, 21u)], false, global0[_wgslsmith_index_u32(1u, 21u)])))), Struct_4(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(arg_0.x)), _wgslsmith_f_op_f32(select(-1307f, 210f, global2.a.x)), true)) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1000f)) + _wgslsmith_f_op_f32(-arg_0.x)), vec3<i32>(1i, 1i, 1i), _wgslsmith_dot_vec4_i32(vec4<i32>(-18464i, -31483i << (u_input.c.x % 32u), 1i, -17078i), reverseBits(vec4<i32>(1i, 1i, 1i, 1i)))), abs(select(vec4<i32>(1208i, 23118i, -21368i, 1i) << (vec4<u32>(18019u, u_input.b, 14794u, u_input.c.x) % vec4<u32>(32u)), abs(vec4<i32>(-19007i, -1i, -4130i, 1i)), select(global2.a, global2.a, global2.a.x)) ^ min(vec4<i32>(-2147483647i, -2147483647i, 1i, -2147483647i), vec4<i32>(1i, -10442i, -23264i, -19890i))), Struct_4(any(vec3<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 21u)], true, global2.a.x)) == true, vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-3478i, -32643i, -1i, -19316i), vec4<i32>(38350i, 0i, -20598i, -2147483647i)), ~1i, 1i) | ~vec3<i32>(-31072i, -13726i, 2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(func_3(Struct_4(global0[_wgslsmith_index_u32(u_input.c.x, 21u)], vec3<i32>(-20683i, 1i, -2147483647i), 39850i)).x, 1i), vec2<i32>(~1i, 62015i))));
    let var_1 = u_input.b;
    global0 = array<bool, 21>();
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -417f), arg_0.x)));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(arg_0.yw)))))));
    return Struct_1(1000f, countOneBits(var_0.d.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(~1u, 21u)];
    global1 = -705f;
    let var_1 = func_1(vec4<f32>(663f, 645f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-625f))), _wgslsmith_f_op_f32(select(-377f, _wgslsmith_f_op_f32(-449f * -1014f), false))), 319f));
    global0 = array<bool, 21>();
    let var_2 = _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -1i, countOneBits(_wgslsmith_clamp_i32(~var_1.b, -52986i, ~26414i)), func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(827f, 1192f, var_1.a, 1000f)) * vec4<f32>(-1996f, -1000f, 1514f, var_1.a))).b), vec4<i32>(var_1.b, reverseBits(var_1.b), var_1.b, -28110i));
    let x = u_input.a;
    s_output = StorageBuffer(-512f);
}

