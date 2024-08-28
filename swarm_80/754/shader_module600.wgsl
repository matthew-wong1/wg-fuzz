struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
    b: bool,
    c: Struct_2,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 8>;

var<private> global1: Struct_2;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: f32, arg_1: u32) -> vec2<bool> {
    global1 = Struct_2(Struct_1(max(vec3<u32>(0u, u_input.b, u_input.a.x) & ~global1.a.a, ~u_input.a), _wgslsmith_sub_u32(4294967295u >> (global1.a.a.x % 32u), 4294967295u), -2295i, vec4<i32>(-26959i, _wgslsmith_div_i32(global1.a.d.x, u_input.c) | global1.a.d.x, _wgslsmith_clamp_i32(-17050i, u_input.c, 0i), ~global1.a.c)), global1.b);
    var var_0 = any(select(vec3<bool>(true, true, true), vec3<bool>(false, !(70732u > u_input.b), all(vec3<bool>(true, true, true))), select(vec3<bool>(select(true, true, false), global1.a.c > global1.a.d.x, u_input.c != -1i), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true)), false), vec3<bool>(true, true, true))));
    var var_1 = global1.b;
    return vec2<bool>(_wgslsmith_div_u32(~firstTrailingBit(0u), 1u) == 1u, select(any(vec4<bool>(true, true, true, true)), true, true));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2) -> vec4<i32> {
    global1 = arg_0;
    let var_0 = 1i;
    global1 = arg_1;
    var var_1 = global0[_wgslsmith_index_u32(max((_wgslsmith_add_u32(arg_1.a.a.x, 1u) | 0u) << (arg_0.a.a.x % 32u), ~global1.a.a.x ^ arg_0.a.a.x) << (_wgslsmith_dot_vec2_u32(arg_0.a.a.yz, max(select(global1.a.a.yz, vec2<u32>(28098u, arg_1.a.a.x), vec2<bool>(false, true)) & select(arg_0.a.a.yx, arg_0.a.a.zz, vec2<bool>(false, false)), ~global1.a.a.zx)) % 32u), 8u)];
    let var_2 = select(vec4<bool>(all(func_3(_wgslsmith_f_op_f32(-arg_0.b.x), 1u & arg_0.a.b)), !any(select(var_1.a, vec3<bool>(var_1.b, false, false), vec3<bool>(var_1.b, false, var_1.b))), var_1.b, 1471f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.x))), vec4<bool>(!var_1.b, var_1.a.x != (u_input.c > u_input.c), !(all(var_1.a.zz) && !var_1.b), true), select(vec4<bool>(var_1.a.x, func_3(_wgslsmith_f_op_f32(round(545f)), ~var_1.c.a.b).x, true, any(!vec3<bool>(true, var_1.b, true))), !vec4<bool>(func_3(-341f, var_1.d.b.a.x).x, false, true, var_1.a.x), select(select(vec4<bool>(var_1.b, true, true, var_1.b), select(vec4<bool>(false, true, false, false), vec4<bool>(true, var_1.a.x, true, var_1.b), vec4<bool>(true, var_1.b, var_1.b, false)), var_1.b), vec4<bool>(var_1.a.x, var_1.a.x, false, arg_0.a.c >= u_input.c), !select(vec4<bool>(var_1.b, false, true, var_1.b), vec4<bool>(true, false, true, var_1.a.x), vec4<bool>(var_1.b, var_1.b, true, true)))));
    return ~_wgslsmith_add_vec4_i32(firstTrailingBit(arg_0.a.d), _wgslsmith_add_vec4_i32(var_1.d.b.d, abs(arg_0.a.d) << (min(vec4<u32>(12310u, 1u, 74783u, 62693u), vec4<u32>(55545u, arg_0.a.a.x, var_1.d.b.a.x, u_input.a.x)) % vec4<u32>(32u))));
}

fn func_1(arg_0: i32, arg_1: Struct_4) -> vec3<bool> {
    let var_0 = arg_1.d.b.a.x;
    var var_1 = Struct_2(Struct_1(vec3<u32>(u_input.b, ~var_0, 20317u), 55323u, arg_0 & arg_1.d.a, func_2(Struct_2(arg_1.d.b, arg_1.c.b), Struct_2(global1.a, global1.b)) | _wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, global1.a.c, 2147483647i, arg_0) << (vec4<u32>(var_0, u_input.b, 1u, var_0) % vec4<u32>(32u)), vec4<i32>(u_input.c, 14362i, arg_1.c.a.d.x, -62254i))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-218f, _wgslsmith_f_op_f32(arg_1.c.b.x - 1000f), -1000f) * global1.b)));
    var var_2 = !vec4<bool>(arg_1.b, select(any(arg_1.a.xz), !arg_1.a.x | true, true), all(vec4<bool>(arg_1.a.x || false, false, !arg_1.a.x, all(arg_1.a))), false | arg_1.b);
    var var_3 = vec4<bool>(true, !arg_1.b, true, var_2.x);
    var var_4 = 1162f;
    return select(var_3.yzw, select(select(var_2.xww, select(select(vec3<bool>(arg_1.a.x, var_3.x, var_3.x), vec3<bool>(true, var_3.x, true), var_2.wzy), arg_1.a, !vec3<bool>(arg_1.a.x, false, false)), var_3.x || any(vec4<bool>(var_3.x, var_2.x, arg_1.b, true))), !arg_1.a, true), select(var_3.yzx, !select(select(var_3.yyz, var_2.xzw, vec3<bool>(false, var_3.x, var_3.x)), select(vec3<bool>(var_2.x, var_2.x, arg_1.b), vec3<bool>(var_3.x, true, true), arg_1.a), var_3.wzw), select(select(vec3<bool>(false, var_3.x, var_3.x), !vec3<bool>(true, var_3.x, var_2.x), !vec3<bool>(true, arg_1.b, var_2.x)), select(!vec3<bool>(false, var_3.x, false), arg_1.a, true), any(!vec4<bool>(false, true, var_3.x, var_2.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(func_1(-(i32(-1i) * -2147483647i), global0[_wgslsmith_index_u32(global1.a.b, 8u)]), !(u_input.b >= max(~u_input.b, min(41416u, global1.a.a.x))), Struct_2(Struct_1(_wgslsmith_div_vec3_u32(u_input.a ^ vec3<u32>(2107u, global1.a.a.x, global1.a.a.x), u_input.a), _wgslsmith_clamp_u32(_wgslsmith_mult_u32(global1.a.b, global1.a.b), min(1u, global1.a.b), u_input.a.x), u_input.c, global1.a.d), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-357f + global1.b.x) - -529f), 575f, -1151f)), Struct_3(~83688i, global1.a));
    global0 = array<Struct_4, 8>();
    let var_1 = Struct_2(var_0.c.a, vec3<f32>(_wgslsmith_f_op_f32(-787f * 1000f), 3188f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.b.x * 1008f))));
    global0 = array<Struct_4, 8>();
    let var_2 = _wgslsmith_sub_u32(72641u, ~(~(~global1.a.b) << (firstLeadingBit(var_1.a.b >> (u_input.a.x % 32u)) % 32u)));
    global0 = array<Struct_4, 8>();
    let var_3 = _wgslsmith_f_op_f32(2032f * _wgslsmith_f_op_f32(step(-704f, var_1.b.x)));
    var var_4 = true;
    let var_5 = any(var_0.a.xz);
    let x = u_input.a;
    s_output = StorageBuffer((29597u << ((var_1.a.a.x & global1.a.a.x) % 32u)) ^ ~1u, var_0.d.b.a);
}

