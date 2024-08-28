struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(vec4<f32>(1203f, -1722f, -1237f, 160f), -30394i, vec3<i32>(i32(-2147483648), -68243i, -1i)), Struct_1(vec4<f32>(1000f, 1598f, -1978f, -1083f), -22581i, vec3<i32>(-1i, i32(-2147483648), 2147483647i)), Struct_1(vec4<f32>(1063f, -594f, -1000f, -488f), 2147483647i, vec3<i32>(-5674i, i32(-2147483648), 2147483647i)), Struct_1(vec4<f32>(1324f, 1281f, -858f, -197f), 54271i, vec3<i32>(-4347i, -1i, 1i)), Struct_1(vec4<f32>(-1070f, -1000f, -1679f, -240f), 18450i, vec3<i32>(-73357i, 1i, 17010i)), Struct_1(vec4<f32>(1000f, -112f, 1955f, 717f), 1i, vec3<i32>(1i, 1294i, 1i)), Struct_1(vec4<f32>(1148f, -1528f, -225f, -672f), 8772i, vec3<i32>(-35765i, 1i, i32(-2147483648))), Struct_1(vec4<f32>(2084f, -1000f, 105f, 550f), 0i, vec3<i32>(i32(-2147483648), 0i, -5867i)), Struct_1(vec4<f32>(-219f, -707f, -271f, 478f), -1i, vec3<i32>(2147483647i, 62047i, 14230i)), Struct_1(vec4<f32>(-1309f, 1623f, 843f, -792f), -45138i, vec3<i32>(1i, 5922i, 0i)), Struct_1(vec4<f32>(-1196f, -1000f, -170f, -1000f), -7485i, vec3<i32>(-1i, 0i, 0i)));

var<private> global1: array<vec3<bool>, 29> = array<vec3<bool>, 29>(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false));

var<private> global2: array<vec4<bool>, 23> = array<vec4<bool>, 23>(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true));

var<private> global3: array<u32, 11>;

var<private> global4: Struct_1 = Struct_1(vec4<f32>(663f, 796f, -1698f, -1992f), 1i, vec3<i32>(-29517i, 0i, 50888i));

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: f32) -> vec4<f32> {
    global3 = array<u32, 11>();
    global1 = array<vec3<bool>, 29>();
    let var_0 = global1[_wgslsmith_index_u32(38783u, 29u)];
    let var_1 = Struct_1(global4.a, _wgslsmith_dot_vec4_i32(max(reverseBits(vec4<i32>(global4.b, global4.c.x, global4.b, global4.c.x) >> (vec4<u32>(4294967295u, u_input.a, 0u, 66267u) % vec4<u32>(32u))), _wgslsmith_add_vec4_i32(vec4<i32>(global4.c.x, global4.c.x, -1i, global4.c.x), abs(vec4<i32>(2147483647i, 2147483647i, global4.c.x, global4.c.x)))), vec4<i32>(_wgslsmith_mult_i32(global4.b, -5228i), -global4.b, 1i, global4.c.x) | (select(vec4<i32>(global4.b, 237i, global4.b, global4.c.x), vec4<i32>(global4.b, global4.b, 21366i, -2147483647i), global2[_wgslsmith_index_u32(29507u, 23u)]) | ~vec4<i32>(global4.c.x, 29577i, -26898i, 1i))), global4.c);
    global1 = array<vec3<bool>, 29>();
    return var_1.a;
}

fn func_2(arg_0: i32) -> vec3<i32> {
    global0 = array<Struct_1, 11>();
    let var_0 = vec3<bool>(true, select(all(global1[_wgslsmith_index_u32(4294967295u, 29u)]), any(select(vec2<bool>(true, false), vec2<bool>(false, true), false)) || true, true), _wgslsmith_f_op_f32(global4.a.x + -1185f) <= 704f);
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -394f)))))), arg_0, global4.c);
    var var_2 = 28407u;
    let var_3 = vec2<bool>(true, false);
    return ~global4.c;
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: vec3<u32>) -> i32 {
    let var_0 = vec2<i32>(_wgslsmith_add_i32(-_wgslsmith_mod_i32(global4.c.x, arg_1.c.x) ^ abs(_wgslsmith_div_i32(arg_0, -1i)), countOneBits(arg_0) & arg_1.c.x), -(-14539i ^ global4.c.x));
    global4 = global0[_wgslsmith_index_u32(4294967295u, 11u)];
    var var_1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_div_f32(1130f, _wgslsmith_div_f32(arg_2.x, -261f))), _wgslsmith_f_op_f32(f32(-1f) * -1401f), arg_2.x, 161f), var_0.x, func_2(i32(-1i) * -50258i));
    global3 = array<u32, 11>();
    global4 = arg_1;
    return _wgslsmith_dot_vec4_i32(vec4<i32>(0i, arg_1.c.x, ~func_2(arg_1.b).x, select(25056i, _wgslsmith_add_i32(2147483647i, var_0.x), false)) ^ vec4<i32>(_wgslsmith_mult_i32(-1i, max(38556i, -17267i)), -arg_0, _wgslsmith_clamp_i32(-var_1.c.x, arg_0 | arg_1.c.x, 1589i), 32858i), vec4<i32>(_wgslsmith_mult_i32(~(var_0.x | var_0.x), -2147483647i), ~_wgslsmith_mult_i32(48338i, arg_0), -global4.c.x, -var_1.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -vec4<i32>(global4.c.x, _wgslsmith_clamp_i32(~func_1(global4.c.x, global0[_wgslsmith_index_u32(u_input.a, 11u)], global4.a, vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 11u)], 11u)], 103848u, u_input.a)), max(~(-2147483647i), -global4.c.x), global4.c.x), -31559i, 0i);
    let var_1 = select(u_input.a << (reverseBits(1u) % 32u), ~32943u, (global4.c.x | select(min(global4.b, 0i), _wgslsmith_sub_i32(var_0.x, global4.c.x), false)) >= -countOneBits(firstTrailingBit(var_0.x)));
    global2 = array<vec4<bool>, 23>();
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))), -694f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global4.a.x)) - _wgslsmith_f_op_f32(global4.a.x + -1949f)), global4.a.x))), -2147483647i, vec3<i32>(1i, ~(~(~global4.b)), global4.b | var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.x, reverseBits(2147483647i), _wgslsmith_sub_vec2_i32(var_2.c.xz, vec2<i32>(-866i, var_0.x)), 19709u);
}

