struct Struct_1 {
    a: vec4<i32>,
    b: vec3<f32>,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec2<u32>,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 5> = array<Struct_4, 5>(Struct_4(vec3<bool>(false, false, false)), Struct_4(vec3<bool>(false, false, true)), Struct_4(vec3<bool>(true, true, false)), Struct_4(vec3<bool>(true, false, true)), Struct_4(vec3<bool>(false, true, true)));

var<private> global1: Struct_2;

var<private> global2: Struct_1 = Struct_1(vec4<i32>(-18679i, 2147483647i, 10270i, -11965i), vec3<f32>(742f, -109f, -836f), 4294967295u, 40953u);

var<private> global3: array<u32, 2>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: i32) -> vec2<f32> {
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-global1.a));
    let var_1 = Struct_2(_wgslsmith_div_vec4_f32(global1.a, var_0.a));
    global1 = var_1;
    global1 = var_1;
    var var_2 = var_1.a.x;
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(global1.a.x - _wgslsmith_f_op_f32(select(359f, global2.b.x, arg_0.a.x))), _wgslsmith_f_op_f32(-global1.a.x)))) - vec2<f32>(var_1.a.x, _wgslsmith_f_op_f32(max(global1.a.x, _wgslsmith_div_f32(2246f, _wgslsmith_f_op_f32(max(1000f, var_1.a.x)))))));
}

fn func_2(arg_0: f32) -> Struct_2 {
    let var_0 = global0[_wgslsmith_index_u32(~0u, 5u)];
    let var_1 = true;
    global3 = array<u32, 2>();
    let var_2 = 35422u;
    let var_3 = _wgslsmith_f_op_vec2_f32(func_3(global0[_wgslsmith_index_u32(global2.c, 5u)], u_input.d.x));
    return Struct_2(global1.a);
}

fn func_1(arg_0: i32, arg_1: vec4<bool>) -> vec2<u32> {
    var var_0 = global2.b;
    var var_1 = vec4<bool>(~(~global3[_wgslsmith_index_u32(firstTrailingBit(global2.c), 2u)]) == global2.c, -global2.a.x < firstTrailingBit(_wgslsmith_mod_i32(-2147483647i << (0u % 32u), 0i | u_input.c.x)), !arg_1.x, !(!all(select(arg_1.xx, arg_1.yy, vec2<bool>(false, false)))));
    var_0 = global1.a.zyx;
    var var_2 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(-1000f * global2.b.x))) * _wgslsmith_f_op_f32(-global2.b.x)));
    let var_3 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1040f, 992f)))), global1.a.x, _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global2.b.x * var_2.a.x)))), global1.a.x));
    return ~(~(vec2<u32>(1u, _wgslsmith_dot_vec4_u32(u_input.e, u_input.e)) >> (~firstTrailingBit(u_input.e.yy) % vec2<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global2.b * vec3<f32>(1000f, _wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_div_f32(global2.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(global2.b.x)), _wgslsmith_div_f32(global2.b.x, -200f), _wgslsmith_f_op_f32(-global1.a.x)))));
    var var_1 = global2.a.zyy;
    let var_2 = _wgslsmith_add_u32(~firstTrailingBit(~firstTrailingBit(119035u)), reverseBits(31266u));
    global2 = Struct_1(global2.a, global1.a.xww, reverseBits(82448u), abs(~global2.c));
    var var_3 = _wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(1u, 67493u), select(vec2<u32>(75172u, global3[_wgslsmith_index_u32(29447u, 2u)]), vec2<u32>(global2.d, 37382u), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)))), ~u_input.e.yz) & ~_wgslsmith_add_vec2_u32(func_1(-2147483647i, vec4<bool>(true, false, true, false)), ~vec2<u32>(u_input.e.x, 12813u));
    var_0 = vec3<f32>(global1.a.x, var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3(global0[_wgslsmith_index_u32(var_2 >> (1u % 32u), 5u)], _wgslsmith_mult_i32(u_input.c.x, global2.a.x))).x)));
    var var_4 = abs(~(~_wgslsmith_sub_vec4_u32(~vec4<u32>(4294967295u, global2.c, 0u, 3673u), firstTrailingBit(u_input.e))));
    var var_5 = Struct_4(vec3<bool>(true, true, true));
    var var_6 = Struct_1(vec4<i32>(min(-13393i, global2.a.x) & global2.a.x, 4262i, _wgslsmith_mod_i32(-u_input.d.x, -3597i) >> (4294967295u % 32u), _wgslsmith_mult_i32(1i, -558i)), _wgslsmith_div_vec3_f32(vec3<f32>(global2.b.x, 528f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.a.x)))), global1.a.wyz), _wgslsmith_dot_vec3_u32(firstTrailingBit(select(_wgslsmith_div_vec3_u32(var_4.yyy, vec3<u32>(var_4.x, 1u, 1u)), countOneBits(vec3<u32>(9072u, var_4.x, 1u)), any(var_5.a.yz))), vec3<u32>(~23608u >> (_wgslsmith_dot_vec2_u32(vec2<u32>(29538u, 0u), var_4.xy) % 32u), firstLeadingBit(1u), ~firstLeadingBit(global2.c))), ~21165u);
    let x = u_input.a;
    s_output = StorageBuffer(global2.a.zxw, ~(~(_wgslsmith_dot_vec2_i32(vec2<i32>(-13274i, -2147483647i), var_6.a.yw) >> (~global3[_wgslsmith_index_u32(0u, 2u)] % 32u))), max(~var_4.xw, abs(firstLeadingBit(vec2<u32>(var_3.x, 101221u)))) | u_input.e.yx);
}

