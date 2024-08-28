struct Struct_1 {
    a: vec3<u32>,
    b: vec4<f32>,
    c: i32,
}

struct Struct_2 {
    a: u32,
    b: vec3<bool>,
    c: Struct_1,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_2, 31>;

var<private> global2: Struct_2 = Struct_2(92314u, vec3<bool>(false, true, false), Struct_1(vec3<u32>(1u, 1u, 4294967295u), vec4<f32>(167f, -1132f, -2353f, -1081f), 2147483647i), Struct_1(vec3<u32>(29978u, 15011u, 111737u), vec4<f32>(-866f, 281f, 1000f, -1695f), i32(-2147483648)), 73347u);

var<private> global3: i32 = 2147483647i;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<i32>) -> f32 {
    let var_0 = reverseBits(~_wgslsmith_add_u32(_wgslsmith_mod_u32(global2.a, u_input.a), global2.d.a.x));
    global2 = global1[_wgslsmith_index_u32(1u, 31u)];
    let var_1 = !arg_0.b;
    var var_2 = -reverseBits(-(~(vec3<i32>(arg_0.d.c, 8406i, arg_1.x) & vec3<i32>(global2.c.c, 0i, arg_0.c.c))));
    let var_3 = abs(select(reverseBits(1u), u_input.a, true)) << (reverseBits(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.d.a.x, var_0, 0u, 1u), vec4<u32>(4523u, arg_0.a, var_0, 0u)))) % 32u);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(430f))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1242f + global2.c.b.x) + -606f))));
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    let var_0 = Struct_1(~arg_1.a, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), arg_2.b.x, _wgslsmith_f_op_f32(sign(563f)), _wgslsmith_f_op_f32(abs(arg_1.b.x))), arg_1.c);
    let var_1 = Struct_2(~arg_1.a.x, vec3<bool>(_wgslsmith_f_op_f32(var_0.b.x * _wgslsmith_f_op_f32(f32(-1f) * -1067f)) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(global1[_wgslsmith_index_u32(global2.e, 31u)], vec2<i32>(41943i, -2147483647i))) + global2.d.b.x), any(vec2<bool>(!global2.b.x, global2.c.b.x != -677f)), any(!select(vec2<bool>(true, true), global2.b.yx, false))), Struct_1(arg_2.a, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(463f, 1154f, 323f, var_0.b.x))))), arg_2.b), 2147483647i), var_0, 28512u);
    let var_2 = var_1;
    var var_3 = -_wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(~min(vec3<i32>(var_2.d.c, -69068i, 1i), vec3<i32>(2147483647i, 0i, 61486i)), countOneBits(vec3<i32>(var_2.d.c, global2.d.c, var_0.c) >> (vec3<u32>(4294967295u, 0u, 0u) % vec3<u32>(32u)))), vec3<i32>(-34516i, i32(-1i) * -2147483647i, _wgslsmith_div_i32(-arg_1.c, i32(-1i) * -11450i)));
    let var_4 = vec2<u32>(~(0u ^ arg_3.a.x) << (var_2.e % 32u), 36766u) ^ _wgslsmith_sub_vec2_u32(vec2<u32>(~var_1.c.a.x, ~arg_3.a.x), var_2.c.a.xz);
    return 2147483647i;
}

fn func_1(arg_0: bool, arg_1: vec2<f32>) -> vec3<u32> {
    let var_0 = _wgslsmith_div_vec3_i32(countOneBits(vec3<i32>(firstLeadingBit(global2.c.c), -2147483647i, -_wgslsmith_mod_i32(-2147483647i, global2.d.c))), vec3<i32>(global2.d.c, min(~(-19318i), ~global2.c.c), min(global2.d.c ^ -6557i, global2.c.c) << (firstTrailingBit(_wgslsmith_mod_u32(4294967295u, u_input.a)) % 32u)));
    var var_1 = vec2<i32>(0i, countOneBits(global2.d.c));
    let var_2 = global2.c.b.x;
    let var_3 = abs(vec3<i32>(var_1.x, (-global2.d.c ^ ~global2.d.c) | func_2(0u >> (1u % 32u), Struct_1(global2.c.a, global2.c.b, global2.d.c), global2.d, Struct_1(global2.d.a, vec4<f32>(-1704f, -2040f, global2.d.b.x, global2.d.b.x), 57079i)), 2147483647i & global2.d.c));
    let var_4 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(2068f, arg_1.x) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(global2.c.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -1022f)) * global2.c.b.wz)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(global2.c.b.xw))))));
    return global2.c.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(global2.c.c, _wgslsmith_add_i32(~(~global2.c.c), global2.c.c));
    let var_1 = _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(var_0.x, 20382i), -48309i >> (global2.e % 32u), -global2.d.c) >> (((vec3<u32>(global2.a, global2.c.a.x, u_input.a) | vec3<u32>(u_input.a, global2.c.a.x, 39617u)) >> (func_1(true, global2.d.b.yw) % vec3<u32>(32u))) % vec3<u32>(32u)), _wgslsmith_sub_vec3_i32(select(vec3<i32>(-18368i, -1i, -35620i), _wgslsmith_mult_vec3_i32(vec3<i32>(42681i, global2.d.c, 31861i), vec3<i32>(global2.c.c, global2.d.c, 1i)), global2.b.x | global2.b.x), vec3<i32>(var_0.x, -1i, 0i) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(43082u, 0u, u_input.a), global2.d.a, global2.c.a) % vec3<u32>(32u)))) & _wgslsmith_add_vec3_i32(vec3<i32>(min(-global2.c.c, var_0.x), _wgslsmith_add_i32(_wgslsmith_clamp_i32(var_0.x, var_0.x, -19589i), 8960i), _wgslsmith_add_i32(6043i, -var_0.x)), _wgslsmith_add_vec3_i32(vec3<i32>(-1i, select(0i, var_0.x, true), _wgslsmith_dot_vec2_i32(var_0, var_0)), (vec3<i32>(var_0.x, 0i, 36448i) >> (global2.c.a % vec3<u32>(32u))) ^ -vec3<i32>(var_0.x, global2.c.c, -57477i)));
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, min(vec4<u32>(global2.c.a.x, u_input.a, firstLeadingBit(1u), global2.a), ~select(vec4<u32>(40540u, 0u, u_input.a, 24264u), abs(vec4<u32>(1u, u_input.a, u_input.a, 0u)), !global2.b.x)));
}

