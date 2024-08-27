struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: i32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec3<i32>,
    c: i32,
    d: u32,
}

struct Struct_5 {
    a: bool,
    b: Struct_4,
    c: Struct_3,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: vec3<u32>,
    e: vec4<i32>,
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

var<private> global0: bool;

var<private> global1: bool = false;

var<private> global2: array<bool, 19> = array<bool, 19>(false, false, false, true, true, true, true, true, false, true, true, false, true, true, false, true, false, false, false);

var<private> global3: Struct_4 = Struct_4(vec4<bool>(true, true, true, true), vec3<i32>(-4055i, 1i, 2147483647i), 27274i, 63102u);

var<private> global4: array<f32, 2> = array<f32, 2>(1166f, 1402f);

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec4<f32>) -> vec4<bool> {
    var var_0 = 583f < global4[_wgslsmith_index_u32(4294967295u, 2u)];
    var var_1 = _wgslsmith_dot_vec4_i32(firstTrailingBit(u_input.e), u_input.e);
    var_0 = true;
    global3 = Struct_4(global3.a, select(countOneBits(select(vec3<i32>(-2147483647i, -2147483647i, u_input.c), min(vec3<i32>(1i, 2147483647i, -2147483647i), global3.b), any(vec3<bool>(true, global3.a.x, true)))), (_wgslsmith_sub_vec3_i32(u_input.e.zyw, vec3<i32>(17125i, u_input.e.x, u_input.e.x)) << (select(u_input.d, vec3<u32>(48821u, u_input.a, u_input.a), global3.a.x) % vec3<u32>(32u))) ^ _wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-39633i, global3.b.x, u_input.e.x), global3.b), vec3<i32>(27527i, u_input.e.x, global3.c)), select(vec3<bool>(false, false, any(global3.a)), !global3.a.xyz, any(!global3.a.zwy))), -20505i, abs(global3.d));
    let var_2 = ~u_input.c;
    return global3.a;
}

fn func_2(arg_0: vec3<u32>, arg_1: vec2<bool>) -> vec2<f32> {
    global0 = any(func_3(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-727f, 744f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1049f * global4[_wgslsmith_index_u32(4297u, 2u)])), global4[_wgslsmith_index_u32(arg_0.x, 2u)], _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(global3.d, u_input.a), 2u)]))));
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2103f), _wgslsmith_div_f32(-1447f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(global4[_wgslsmith_index_u32(1u, 2u)])))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global4[_wgslsmith_index_u32(0u, 2u)], 1000f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global4[_wgslsmith_index_u32(1u, 2u)], global4[_wgslsmith_index_u32(36055u, 2u)]))) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(437f, -356f), vec2<f32>(global4[_wgslsmith_index_u32(global3.d, 2u)], 1224f)))))));
    let var_1 = global4[_wgslsmith_index_u32(global3.d, 2u)];
    var var_2 = select(u_input.e.zww, _wgslsmith_div_vec3_i32(max(vec3<i32>(global3.c, _wgslsmith_dot_vec2_i32(vec2<i32>(global3.b.x, -49966i), u_input.e.wz), _wgslsmith_clamp_i32(global3.c, 12345i, -1i)), vec3<i32>(_wgslsmith_mod_i32(global3.c, global3.b.x), -1i, 1i)), ~reverseBits(vec3<i32>(global3.b.x, 2147483647i, global3.b.x))), global3.a.wxw);
    let var_3 = Struct_4(global3.a, u_input.e.zzz, u_input.e.x, u_input.d.x);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(757f, -461f), vec2<f32>(global4[_wgslsmith_index_u32(0u, 2u)], var_0.x))))))));
}

fn func_1() -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global4[_wgslsmith_index_u32(104082u, 2u)], global4[_wgslsmith_index_u32(1u, 2u)]), vec2<f32>(global4[_wgslsmith_index_u32(11453u, 2u)], -1571f)) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global4[_wgslsmith_index_u32(global3.d, 2u)], global4[_wgslsmith_index_u32(global3.d, 2u)]), vec2<f32>(global4[_wgslsmith_index_u32(25760u, 2u)], global4[_wgslsmith_index_u32(global3.d, 2u)]), false))), _wgslsmith_f_op_vec2_f32(func_2(u_input.d, !global3.a.yz)))))));
    global2 = array<bool, 19>();
    let var_1 = vec4<f32>(-277f, 1000f, -1036f, var_0.x);
    global1 = (reverseBits(u_input.a) <= global3.d) | any(select(vec2<bool>(true, any(global3.a)), vec2<bool>(global2[_wgslsmith_index_u32(global3.d << (56424u % 32u), 19u)], global3.d <= 8440u), all(global3.a.yyx)));
    let var_2 = Struct_5(!select(true, global3.a.x, 4294967295u < ~u_input.a), Struct_4(global3.a, vec3<i32>(abs(1907i), u_input.e.x, global3.c), 0i, ~u_input.a), Struct_3(~(-(~2147483647i)), select(-13085i, abs(-global3.c), global2[_wgslsmith_index_u32(u_input.b.x, 19u)]), _wgslsmith_sub_i32(firstLeadingBit(global3.b.x), -30249i)), -71424i);
    return _wgslsmith_mult_vec4_i32(u_input.e, u_input.e);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(global3.b.x, 30900i & global3.b.x, 1i);
    var var_1 = global3.a.x;
    global2 = array<bool, 19>();
    global3 = Struct_4(!(!select(vec4<bool>(true, false, global2[_wgslsmith_index_u32(global3.d, 19u)], true), !global3.a, global3.a)), ~(-var_0), 0i, _wgslsmith_add_u32(u_input.b.x, 1u));
    let var_2 = !(!(!global3.a));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(692f * global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_sub_u32(1u, ~u_input.b.x), global3.d ^ _wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(22902u, u_input.d.x))), 2u)]));
    var var_4 = u_input.e;
    global4 = array<f32, 2>();
    var_4 = reverseBits(~(~_wgslsmith_add_vec4_i32(func_1(), func_1())));
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.e);
}

