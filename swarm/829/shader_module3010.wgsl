struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: i32,
    b: vec2<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<f32, 6>;

var<private> global2: i32;

var<private> global3: bool;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<u32>, arg_1: vec4<u32>, arg_2: vec2<f32>) -> i32 {
    global2 = -15331i;
    let var_0 = ~(~global0.b.a.zxz);
    global3 = all(select(vec2<bool>(true, true), select(vec2<bool>(true, all(vec3<bool>(true, true, false))), !select(vec2<bool>(false, true), vec2<bool>(false, false), true), !(-13922i >= global0.a.a)), -465f < _wgslsmith_f_op_f32(-506f - _wgslsmith_f_op_f32(step(1000f, global1[_wgslsmith_index_u32(80946u, 6u)])))));
    let var_1 = ~arg_0.x;
    let var_2 = _wgslsmith_f_op_vec2_f32(-arg_2);
    return _wgslsmith_mod_i32(min(-1398i, i32(-1i) * -(~(-2147483647i))), ~global0.a.a);
}

fn func_2(arg_0: vec3<f32>) -> bool {
    let var_0 = countOneBits(-func_3(global0.b.a, global0.b.a, vec2<f32>(_wgslsmith_f_op_f32(-126f + 318f), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.d.x, u_input.d.x), 6u)])));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x));
    var var_2 = any(select(vec3<bool>(true, _wgslsmith_f_op_f32(-var_1) < _wgslsmith_f_op_f32(sign(-997f)), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 6u)]) > arg_0.x), vec3<bool>(true, true, true), vec3<bool>(!all(vec2<bool>(true, false)), true, select(select(true, false, true), true, true))));
    var var_3 = global0.b;
    let var_4 = Struct_3(global0.a.a | _wgslsmith_sub_i32(~0i, global0.a.a), abs(~_wgslsmith_div_vec2_u32(abs(vec2<u32>(u_input.c, var_3.a.x)), ~vec2<u32>(var_3.a.x, 16975u))));
    return true;
}

fn func_1(arg_0: Struct_3) -> Struct_2 {
    global0 = Struct_4(global0.a, global0.b);
    global0 = Struct_4(arg_0, Struct_2(~firstTrailingBit(vec4<u32>(u_input.c, arg_0.b.x, arg_0.b.x, 30956u))));
    var var_0 = u_input.a.xy;
    let var_1 = !(!(func_2(vec3<f32>(-865f, global1[_wgslsmith_index_u32(global0.a.b.x, 6u)], global1[_wgslsmith_index_u32(21545u, 6u)])) | true));
    return global0.b;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_4, arg_2: Struct_1, arg_3: u32) -> vec2<u32> {
    let var_0 = 39364u;
    global2 = abs(u_input.b);
    let var_1 = arg_2;
    global0 = arg_1;
    var var_2 = arg_1;
    return u_input.d;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 6>();
    global2 = u_input.a.x;
    global1 = array<f32, 6>();
    global0 = Struct_4(global0.a, global0.b);
    let var_0 = Struct_3(-1i, countOneBits(_wgslsmith_clamp_vec2_u32(u_input.d, _wgslsmith_div_vec2_u32(vec2<u32>(13025u, global0.b.a.x) & global0.b.a.yx, firstLeadingBit(vec2<u32>(u_input.d.x, global0.b.a.x))), func_4(func_1(global0.a), Struct_4(Struct_3(-53893i, vec2<u32>(u_input.d.x, u_input.d.x)), global0.b), Struct_1(false), ~1u))));
    global3 = false;
    let var_1 = _wgslsmith_add_i32(var_0.a, _wgslsmith_add_i32(func_3(global0.b.a, select(global0.b.a, vec4<u32>(global0.a.b.x, var_0.b.x, 44911u, u_input.d.x), vec4<bool>(true, true, false, true)), vec2<f32>(-1868f, 1317f)), u_input.b)) ^ _wgslsmith_mult_i32(13569i, -26707i);
    let var_2 = firstLeadingBit(~(~(_wgslsmith_sub_vec2_u32(u_input.d, vec2<u32>(u_input.c, 8886u)) >> (global0.b.a.yx % vec2<u32>(32u)))));
    let var_3 = Struct_1(func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, -987f, 303f))));
    let x = u_input.a;
    s_output = StorageBuffer(0u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-729f, 558f, 105f, -1000f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 2929f, 1993f, 965f)))))), reverseBits(~vec3<u32>(u_input.d.x, 4294967295u, 25385u) << ((~global0.b.a.yzx << (global0.b.a.xyx % vec3<u32>(32u))) % vec3<u32>(32u))));
}

