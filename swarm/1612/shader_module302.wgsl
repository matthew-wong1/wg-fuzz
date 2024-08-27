struct Struct_1 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec3<u32>(12877u, 0u, 1591u), vec3<bool>(false, true, true), vec2<f32>(671f, -630f)));

var<private> global1: vec4<f32>;

var<private> global2: array<vec4<bool>, 20>;

var<private> global3: array<vec4<u32>, 23>;

var<private> global4: array<bool, 24> = array<bool, 24>(false, false, false, true, true, false, false, false, true, false, false, true, true, true, false, false, false, true, false, false, true, false, true, true);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_1) -> vec2<f32> {
    let var_0 = Struct_2(Struct_1(abs(arg_0.a), select(select(vec3<bool>(arg_0.b.x, global4[_wgslsmith_index_u32(global0.a.a.x, 24u)], arg_0.b.x), vec3<bool>(true, false, arg_0.b.x), select(global0.a.b, vec3<bool>(arg_0.b.x, false, arg_0.b.x), global0.a.b)), !arg_0.b, all(vec2<bool>(global0.a.b.x, false))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, global1.x) * global1.xz)))));
    let var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(global1.xxx, global1.wyx))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-786f, 1000f, var_0.a.c.x) - global1.xyz))))), -204f, Struct_1(select(vec3<u32>(~34871u, min(58253u, var_0.a.a.x), ~26506u), _wgslsmith_add_vec3_u32(arg_0.a, arg_0.a) | vec3<u32>(11171u, arg_0.a.x, u_input.b), select(vec3<bool>(true, global4[_wgslsmith_index_u32(global0.a.a.x, 24u)], true), select(var_0.a.b, global0.a.b, var_0.a.b), var_0.a.b.x == arg_0.b.x)), vec3<bool>(true, true, any(vec2<bool>(true, global4[_wgslsmith_index_u32(u_input.a, 24u)]))), _wgslsmith_f_op_vec2_f32(-arg_0.c)));
    global3 = array<vec4<u32>, 23>();
    let var_2 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_1.a.x, _wgslsmith_f_op_f32(f32(-1f) * -234f))));
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-global1.xy))) + global0.a.c);
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.a.yz * _wgslsmith_f_op_vec2_f32(-global0.a.c)), vec2<f32>(_wgslsmith_f_op_f32(global0.a.c.x + global0.a.c.x), global1.x)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(var_2)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(var_1.a.xz * vec2<f32>(var_1.a.x, var_3.x))))), !var_0.a.b.yx)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.a.c - vec2<f32>(-1000f, -1000f)) - vec2<f32>(_wgslsmith_f_op_f32(max(-1000f, 1342f)), _wgslsmith_f_op_f32(min(var_0.a.c.x, -1171f)))) * global0.a.c));
}

fn func_2() -> Struct_2 {
    let var_0 = global0.a.b;
    global2 = array<vec4<bool>, 20>();
    var var_1 = -vec3<i32>(countOneBits(1i), ~(-7026i), -1i);
    let var_2 = _wgslsmith_f_op_vec2_f32(max(global0.a.c, _wgslsmith_f_op_vec2_f32(func_3(global0.a))));
    let var_3 = -804f;
    return Struct_2(global0.a);
}

fn func_1() -> Struct_2 {
    var var_0 = global0.a;
    let var_1 = Struct_2(Struct_1(_wgslsmith_mod_vec3_u32(var_0.a, reverseBits(vec3<u32>(75824u, 2261u, 43815u)) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(42213u, 39160u, var_0.a.x), global0.a.a) % vec3<u32>(32u))), !vec3<bool>(any(vec2<bool>(var_0.b.x, global4[_wgslsmith_index_u32(u_input.a, 24u)])), -766f < var_0.c.x, global4[_wgslsmith_index_u32(global0.a.a.x, 24u)]), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -618f), var_0.c.x)));
    global0 = func_2();
    let var_2 = min(~var_1.a.a.yy ^ _wgslsmith_mult_vec2_u32(var_1.a.a.zz, firstLeadingBit(var_0.a.xz)), vec2<u32>(u_input.a, 6661u) & ~(~firstTrailingBit(vec2<u32>(122028u, 12533u))));
    var var_3 = var_1;
    return Struct_2(func_2().a);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_1) -> Struct_3 {
    global0 = Struct_2(Struct_1(select(max(func_2().a.a, func_1().a.a), vec3<u32>(4294967295u, min(arg_1.a.a.x, u_input.a), _wgslsmith_mult_u32(arg_0.a.a.x, 68824u)), arg_2.b.x), vec3<bool>(!func_1().a.b.x, all(vec4<bool>(true, false, arg_1.a.b.x, global0.a.b.x)) | !arg_1.a.b.x, true), arg_2.c));
    global2 = array<vec4<bool>, 20>();
    let var_0 = false;
    var var_1 = arg_0.a;
    global4 = array<bool, 24>();
    return Struct_3(global1.zzx, arg_2.c.x, Struct_1(func_2().a.a, vec3<bool>(false, global0.a.b.x, _wgslsmith_f_op_f32(f32(-1f) * -550f) > func_2().a.c.x), vec2<f32>(184f, _wgslsmith_f_op_f32(var_1.c.x - _wgslsmith_f_op_f32(-global0.a.c.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_2(global0.a), func_1(), func_2().a, global0.a);
    var var_1 = vec2<i32>(-_wgslsmith_dot_vec2_i32(-vec2<i32>(0i, -1i), -(~vec2<i32>(-1i, -6672i))), _wgslsmith_dot_vec2_i32(vec2<i32>(3980i, _wgslsmith_mod_i32(reverseBits(18802i), max(-1i, -2147483647i))), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 59720i), vec2<i32>(-19384i, -1i)) | 1i, -(i32(-1i) * -2147483647i))));
    let var_2 = _wgslsmith_mult_i32(var_1.x, -36786i) & countOneBits(0i);
    global3 = array<vec4<u32>, 23>();
    let var_3 = !(var_0.c.a.x == ~0u);
    let x = u_input.a;
    s_output = StorageBuffer(global0.a.a.xz, var_2 >> (abs(u_input.b) % 32u), ~(var_0.c.a.x << (_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 35618u), global0.a.a.xx), 64745u) % 32u)));
}

