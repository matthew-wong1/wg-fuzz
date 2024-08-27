struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: vec3<f32>,
    d: vec3<u32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: u32,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<f32, 5> = array<f32, 5>(-292f, -1352f, 1872f, -1555f, 1518f);

var<private> global2: Struct_1;

var<private> global3: vec2<bool> = vec2<bool>(true, false);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: Struct_1) -> vec3<f32> {
    var var_0 = -1i;
    global2 = arg_2;
    var_0 = _wgslsmith_clamp_i32(-2147483647i, 65112i, -71484i);
    global3 = !vec2<bool>(true, global3.x);
    var var_1 = firstLeadingBit(59983i);
    return vec3<f32>(-777f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.c.x * global2.c.x), _wgslsmith_f_op_f32(global2.c.x + 469f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(15315u, 5u)])) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-405f, 423f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(global2.c.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(27726u, 5u)], -273f))), global2.c.x, arg_0)))));
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: vec2<f32>) -> vec3<f32> {
    global3 = vec2<bool>(all(vec4<bool>(_wgslsmith_clamp_i32(u_input.b.x, arg_1.b.x, 2147483647i) <= _wgslsmith_dot_vec4_i32(global2.b, vec4<i32>(global2.b.x, 36684i, u_input.b.x, 0i)), !(global3.x | false), all(!vec4<bool>(global3.x, false, arg_1.e.x, global3.x)), (global2.d.x > global2.d.x) || (arg_1.a & true))), !arg_1.a);
    let var_0 = arg_0.x;
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(select(arg_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global2.c.x, -1026f)))), (reverseBits(u_input.c.x) ^ 17030u) > ~(~arg_1.d.x))), 214f);
    return _wgslsmith_f_op_vec3_f32(func_3(global3.x, _wgslsmith_dot_vec4_i32(arg_1.b, ~vec4<i32>(~arg_1.b.x, global2.b.x, -2147483647i | global2.b.x, min(1i, -7848i))), arg_1));
}

fn func_1() -> Struct_1 {
    let var_0 = ~u_input.c.x;
    return Struct_1(global2.c.x < 1000f, abs(-select(~global2.b, max(global2.b, vec4<i32>(62159i, 44903i, u_input.a, 0i)), global3.x & global2.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global2.c.x, 722f, -630f), vec3<f32>(global2.c.x, 1158f, global2.c.x)) + _wgslsmith_f_op_vec3_f32(func_2(global2.e, Struct_1(false, global2.b, vec3<f32>(global1[_wgslsmith_index_u32(60555u, 5u)], global1[_wgslsmith_index_u32(52779u, 5u)], 432f), vec3<u32>(u_input.c.x, u_input.c.x, 13550u), vec3<bool>(global2.e.x, global2.a, global3.x)), vec2<bool>(global2.e.x, false), global2.c.yy))), vec3<f32>(global1[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 5u)], -280f, global1[_wgslsmith_index_u32(abs(0u), 5u)]))), vec3<u32>(u_input.c.x, _wgslsmith_dot_vec3_u32(u_input.c.xxy, vec3<u32>(58977u, var_0, u_input.c.x) << (_wgslsmith_div_vec3_u32(global2.d, vec3<u32>(29987u, var_0, 1u)) % vec3<u32>(32u))), ~(_wgslsmith_div_u32(u_input.c.x, u_input.c.x) << (u_input.c.x % 32u))), global2.e);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global2.b.x | 0i;
    let var_0 = true;
    var var_1 = func_1();
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(277f, global1[_wgslsmith_index_u32(global2.d.x, 5u)]))), _wgslsmith_f_op_vec3_f32(func_2(func_1().e, func_1(), select(vec2<bool>(true, var_1.a), global2.e.xx, false), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_1.c.x, global2.c.x))))).x) - vec2<f32>(-552f, global1[_wgslsmith_index_u32(4294967295u, 5u)])) + vec2<f32>(_wgslsmith_f_op_f32(-global2.c.x), -436f));
    global3 = vec2<bool>(all(!(!vec3<bool>(var_0, false, true))), false);
    var var_3 = global2.e.xz;
    global2 = Struct_1(all(vec4<bool>(global3.x, true, _wgslsmith_div_f32(var_1.c.x, global1[_wgslsmith_index_u32(72044u, 5u)]) == 362f, select(true, false == var_1.e.x, false))), firstLeadingBit(vec4<i32>(var_1.b.x, -var_1.b.x, _wgslsmith_mod_i32(-2147483647i, -17557i), _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.b.x, -10335i), vec2<i32>(-4191i, u_input.b.x)))) ^ (var_1.b >> (_wgslsmith_mult_vec4_u32(countOneBits(u_input.c), select(u_input.c, u_input.c, vec4<bool>(false, false, false, false))) % vec4<u32>(32u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_2.x, var_1.c.x, 558f))), vec3<f32>(global2.c.x, global2.c.x, 595f)))) - vec3<f32>(global2.c.x, -240f, global1[_wgslsmith_index_u32(countOneBits(_wgslsmith_dot_vec3_u32(var_1.d, vec3<u32>(var_1.d.x, 14182u, 1u))), 5u)])), var_1.d, func_1().e);
    let x = u_input.a;
    s_output = StorageBuffer(select(var_1.d, global2.d, any(var_1.e.yy)), vec2<u32>(0u, 15817u), 1u, _wgslsmith_div_vec3_i32(min(vec3<i32>(-12338i, global2.b.x, -1i), var_1.b.xyy) << (~vec3<u32>(26349u, 1u, var_1.d.x) % vec3<u32>(32u)), select(vec3<i32>(var_1.b.x, var_1.b.x, 27643i), global2.b.zzx, true)) >> (vec3<u32>(_wgslsmith_dot_vec2_u32(max(global2.d.xx, vec2<u32>(0u, 0u)), ~u_input.c.xw), ~_wgslsmith_clamp_u32(0u, 84175u, 4294967295u), 50519u) % vec3<u32>(32u)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_vec3_f32(func_2(func_1().e, Struct_1(global2.e.x, global2.b << (vec4<u32>(var_1.d.x, global2.d.x, 0u, global2.d.x) % vec4<u32>(32u)), _wgslsmith_f_op_vec3_f32(-global2.c), vec3<u32>(51775u, 22810u, 20308u), global2.e), var_1.e.zz, vec2<f32>(1950f, 208f))).x, var_2.x)));
}

