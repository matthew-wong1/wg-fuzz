struct Struct_1 {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<f32>,
    c: i32,
    d: vec2<u32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec4<u32>,
    c: u32,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
    c: u32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-227f, -1115f);

var<private> global1: Struct_4;

var<private> global2: array<vec2<u32>, 18>;

var<private> global3: array<i32, 22>;

var<private> global4: vec4<f32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: Struct_3) -> vec3<bool> {
    let var_0 = !vec4<bool>(!all(arg_0.a.zy), !(arg_0.d.b.x == global0.x), any(vec2<bool>(!arg_0.a.x, true)), true);
    let var_1 = !any(arg_0.a);
    global0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-global4.xw)));
    global4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(arg_0.d.b - arg_0.d.b))))) * _wgslsmith_f_op_vec4_f32(-arg_0.d.b));
    return !select(vec3<bool>(var_1, all(var_0), var_0.x), !(!vec3<bool>(var_1, true, arg_0.a.x)), any(var_0.xz));
}

fn func_2() -> vec2<i32> {
    var var_0 = Struct_4(global1.a);
    global4 = vec4<f32>(global4.x, global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - _wgslsmith_div_f32(1031f, -1456f))), -759f);
    var var_1 = Struct_3(func_3(Struct_3(select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), false), vec3<bool>(false, true, true), true), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.d.x, var_0.a.a.x, 15818u, 20100u), vec4<u32>(var_0.a.a.x, 9823u, u_input.d.x, 0u)) >> ((vec4<u32>(0u, 70476u, var_0.a.b.x, 12657u) & vec4<u32>(var_0.a.a.x, 4294967295u, var_0.a.a.x, u_input.a.x)) % vec4<u32>(32u)), u_input.d.x, Struct_2(~4294967295u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global4.x, global4.x, global0.x)), 28626i, vec2<u32>(1u, 0u)))), _wgslsmith_add_vec4_u32(~(~(~vec4<u32>(u_input.d.x, 51433u, var_0.a.a.x, 38437u))), ~select(~vec4<u32>(1u, 13476u, var_0.a.b.x, 46584u), vec4<u32>(var_0.a.b.x, 113196u, u_input.a.x, u_input.d.x) << (vec4<u32>(global1.a.a.x, 79230u, u_input.d.x, 1u) % vec4<u32>(32u)), vec4<bool>(true, true, true, true))), 8344u, Struct_2(23216u, vec4<f32>(357f, -485f, -590f, global4.x), global3[_wgslsmith_index_u32(u_input.d.x, 22u)], global1.a.b.zz));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2471f - _wgslsmith_f_op_f32(-global4.x))));
    global3 = array<i32, 22>();
    return -_wgslsmith_add_vec2_i32(u_input.c.xy, _wgslsmith_sub_vec2_i32(select(vec2<i32>(global3[_wgslsmith_index_u32(var_1.c, 22u)], global3[_wgslsmith_index_u32(var_1.d.d.x, 22u)]), u_input.c.yx, vec2<bool>(var_1.a.x, true)), ~u_input.c.yx) | vec2<i32>(_wgslsmith_mod_i32(global3[_wgslsmith_index_u32(4294967295u, 22u)], -29152i), global3[_wgslsmith_index_u32(~14975u, 22u)]));
}

fn func_1(arg_0: i32, arg_1: vec3<bool>, arg_2: i32) -> Struct_1 {
    global4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, -243f, global4.x)), vec4<f32>(global4.x, global4.x, global0.x, -2200f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global4.x, global4.x, global4.x, global4.x) * vec4<f32>(1497f, -667f, -352f, 333f)))));
    let var_0 = _wgslsmith_dot_vec2_i32(u_input.c.zz, -_wgslsmith_mod_vec2_i32(-select(u_input.c.yz, u_input.c.xx, arg_1.zz), func_2()));
    var var_1 = Struct_2(46201u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.x, -258f, -941f, _wgslsmith_f_op_f32(step(global0.x, _wgslsmith_f_op_f32(sign(-1097f)))))), ~u_input.b, ~(select(select(global2[_wgslsmith_index_u32(0u, 18u)], vec2<u32>(u_input.d.x, 4294967295u), arg_1.x), ~global1.a.a.zz, select(arg_1.zz, vec2<bool>(false, arg_1.x), vec2<bool>(true, true))) | _wgslsmith_mult_vec2_u32(countOneBits(global1.a.a.yy), global1.a.b.xx)));
    var var_2 = Struct_2(~(~u_input.a.x), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-835f - global0.x), var_1.b.x, _wgslsmith_f_op_f32(trunc(global0.x)), _wgslsmith_f_op_f32(-408f + 1000f))), var_1.b)), 13775i, global2[_wgslsmith_index_u32(24745u, 18u)] ^ ~(vec2<u32>(1u, global1.a.a.x) | firstTrailingBit(global1.a.b.xx)));
    var var_3 = ~(~(~select(4294967295u, 95741u, arg_1.x) & (global1.a.a.x & 1u)));
    return global1.a;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<i32, 22>();
    let var_0 = Struct_4(func_1(i32(-1i) * -2147483647i, !(!select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), false)), _wgslsmith_mult_i32(1i, ~u_input.c.x) ^ -4557i));
    var var_1 = Struct_3(!vec3<bool>(true, !(global0.x >= 1145f), true), vec4<u32>(3362u, firstTrailingBit(global1.a.a.x) << (_wgslsmith_sub_u32(reverseBits(10853u), 32597u >> (global1.a.a.x % 32u)) % 32u), global1.a.a.x, min(~0u, 29732u)), countOneBits(30173u), Struct_2(var_0.a.a.x << (var_0.a.a.x % 32u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-705f, global0.x, 2120f, -313f)) + vec4<f32>(1000f, global4.x, -2346f, -1024f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global4.x, global4.x, 1593f, -1633f), vec4<f32>(-484f, 894f, -1921f, global0.x))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1045f, global4.x, -228f, -239f) + vec4<f32>(global0.x, global0.x, global0.x, global0.x)))), u_input.b, _wgslsmith_add_vec2_u32(~vec2<u32>(4504u, 53732u), _wgslsmith_add_vec2_u32(global2[_wgslsmith_index_u32(u_input.a.x, 18u)], ~vec2<u32>(37324u, global1.a.b.x)))));
    var var_2 = -1946f;
    let var_3 = _wgslsmith_f_op_f32(var_1.d.b.x * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.d.b.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-var_1.d.b.zy), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(935f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(911f, global0.x))), global4.yx)), u_input.a.x, _wgslsmith_sub_vec4_i32(max(-(vec4<i32>(47586i, global3[_wgslsmith_index_u32(var_1.d.d.x, 22u)], var_1.d.c, u_input.b) << (vec4<u32>(var_1.b.x, u_input.a.x, u_input.a.x, var_1.d.d.x) % vec4<u32>(32u))), _wgslsmith_div_vec4_i32(vec4<i32>(1i, var_1.d.c, var_1.d.c, 0i), ~vec4<i32>(2147483647i, u_input.b, global3[_wgslsmith_index_u32(1u, 22u)], var_1.d.c))), _wgslsmith_mod_vec4_i32(vec4<i32>(var_1.d.c, abs(-1i), reverseBits(u_input.c.x), ~(-2147483647i)), vec4<i32>(u_input.c.x, ~0i, 22916i, ~var_1.d.c))));
}

