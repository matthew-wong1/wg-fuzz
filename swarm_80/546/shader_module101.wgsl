struct Struct_1 {
    a: vec3<u32>,
    b: vec4<f32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 28>;

var<private> global1: array<i32, 3> = array<i32, 3>(0i, 0i, i32(-2147483648));

var<private> global2: vec4<bool>;

var<private> global3: Struct_2;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_1(arg_0: vec2<u32>) -> Struct_2 {
    var var_0 = global2.x;
    let var_1 = global2.x;
    global1 = array<i32, 3>();
    var var_2 = global3.a.b.wx;
    let var_3 = Struct_2(Struct_1(_wgslsmith_mod_vec3_u32(vec3<u32>(global3.c.x | 19521u, global3.c.x, global3.d.x), global3.a.a), _wgslsmith_f_op_vec4_f32(trunc(global3.a.b)), ~global3.d.x), 1000f, ~arg_0 & arg_0, abs(global3.a.a));
    return var_3;
}

fn func_3() -> vec3<u32> {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(min(vec4<u32>(global3.a.c, 1u, _wgslsmith_mult_u32(global3.d.x, global3.c.x), 59791u), reverseBits(~firstTrailingBit(vec4<u32>(global3.c.x, 23058u, global3.d.x, global3.c.x)))), vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(26892u, 0u, global3.a.a.x, 4294967295u) ^ vec4<u32>(1u, global3.c.x, 26481u, global3.a.a.x), abs(vec4<u32>(1u, global3.d.x, global3.c.x, global3.c.x))), reverseBits(~vec4<u32>(global3.c.x, 23954u, global3.d.x, 13805u))), global3.a.c, countOneBits(global3.a.a.x), 48790u)), 3u)];
    global1 = array<i32, 3>();
    let var_1 = global3.a.b.x;
    var_0 = _wgslsmith_add_i32(-30787i, max(u_input.a, select(~global1[_wgslsmith_index_u32(~1u, 3u)], global1[_wgslsmith_index_u32(_wgslsmith_add_u32(14698u, 40583u), 3u)], false)));
    global2 = vec4<bool>(!any(global2.zz), !(select(!global2.x, false, true) || (~global3.a.c >= (1u << (global3.c.x % 32u)))), !all(vec2<bool>(true, global2.x)), -12872i <= (reverseBits(_wgslsmith_div_i32(u_input.b.x, 37730i)) >> ((max(1u, global3.c.x) >> (select(global3.c.x, 29811u, false) % 32u)) % 32u)));
    return ~(~global3.d);
}

fn func_2(arg_0: vec3<i32>, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: Struct_2) -> vec2<u32> {
    let var_0 = _wgslsmith_div_vec3_f32(global3.a.b.yxz, _wgslsmith_f_op_vec3_f32(sign(arg_2.b.yyx)));
    let var_1 = arg_3.a;
    global3 = Struct_2(Struct_1(func_3(), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(11485u, 28u)], 333f)), 678f, 1196f, var_1.b.x) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-920f, 566f, 1601f, arg_2.b.x), vec4<f32>(arg_3.a.b.x, var_0.x, var_0.x, -2158f))), _wgslsmith_f_op_vec4_f32(-arg_2.b))), _wgslsmith_clamp_u32(1u, min(~var_1.c, 1u >> (var_1.a.x % 32u)), ~var_1.a.x | ~arg_2.a.x)), var_1.b.x, ~reverseBits(countOneBits(vec2<u32>(18526u, var_1.a.x))), abs(vec3<u32>(select(107235u << (arg_3.d.x % 32u), ~arg_2.a.x, true), ~arg_3.c.x, arg_2.a.x)));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1229f))))) + _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_3.a.b.x)), var_1.b.x), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(abs(-1000f))))))));
    var var_3 = func_1(vec2<u32>(arg_2.a.x, ~(~0u)));
    return abs((_wgslsmith_add_vec2_u32(~vec2<u32>(10877u, arg_3.d.x), vec2<u32>(var_3.d.x, 4294967295u)) & (~vec2<u32>(var_1.a.x, var_1.c) << (arg_3.a.a.yx % vec2<u32>(32u)))) << (arg_3.a.a.yz % vec2<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 3>();
    let var_0 = !(!select(vec2<bool>(select(true, global2.x, global2.x), select(global2.x, true, false)), global2.wx, global2.xz));
    global3 = func_1(select(vec2<u32>(~6354u, firstTrailingBit(global3.d.x) << (global3.d.x % 32u)), global3.c >> (global3.c % vec2<u32>(32u)), select(global2.xz, select(select(var_0, var_0, true), !vec2<bool>(global2.x, global2.x), true), select(select(global2.wy, var_0, global2.x), vec2<bool>(true, true), global2.xw))));
    global1 = array<i32, 3>();
    var var_1 = u_input.b;
    var var_2 = _wgslsmith_sub_vec3_u32(global3.a.a, func_1(~_wgslsmith_clamp_vec2_u32(func_2(u_input.b.wzz, vec4<i32>(u_input.b.x, u_input.b.x, global1[_wgslsmith_index_u32(global3.c.x, 3u)], 0i), global3.a, Struct_2(Struct_1(vec3<u32>(global3.c.x, global3.a.c, 68161u), vec4<f32>(global3.b, 122f, -676f, 757f), global3.d.x), global3.a.b.x, global3.d.zy, vec3<u32>(4294967295u, 1u, global3.a.c))), _wgslsmith_mult_vec2_u32(vec2<u32>(global3.d.x, 37160u), global3.c), select(global3.c, vec2<u32>(44007u, global3.d.x), var_0))).d);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~u_input.b));
}

