struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec3<u32>,
    d: u32,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 26>;

var<private> global1: array<Struct_4, 26>;

var<private> global2: vec4<i32> = vec4<i32>(-32916i, 1i, -4902i, 36038i);

var<private> global3: array<Struct_4, 11>;

var<private> global4: Struct_2 = Struct_2(Struct_1(vec2<bool>(true, false), 239f, true), Struct_1(vec2<bool>(false, true), 1182f, true), Struct_1(vec2<bool>(false, false), 1990f, true), Struct_1(vec2<bool>(false, false), -1525f, true), Struct_1(vec2<bool>(false, true), -498f, true));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: i32, arg_1: vec2<bool>, arg_2: Struct_3) -> u32 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.b.b), arg_2.b.b);
    global2 = reverseBits(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i) | ~global2.yz, select(global2.wx << (vec2<u32>(u_input.a, 52950u) % vec2<u32>(32u)), firstLeadingBit(vec2<i32>(u_input.b.x, 26975i)), all(global0[_wgslsmith_index_u32(41423u, 26u)]))), -2147483647i, ~_wgslsmith_sub_i32(-arg_0, abs(-1i)), 2147483647i));
    let var_1 = 4294967295u;
    global1 = array<Struct_4, 26>();
    let var_2 = -233f;
    return (_wgslsmith_clamp_u32(arg_2.a, 0u, firstTrailingBit(~1u)) >> (arg_2.a % 32u)) << (119290u % 32u);
}

fn func_3(arg_0: i32) -> bool {
    var var_0 = Struct_2(global4.d, Struct_1(!global4.c.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-113f - -682f)))), !(!global4.c.c)), Struct_1(vec2<bool>(true, true), global4.c.b, false), global4.a, Struct_1(select(!global4.e.a, vec2<bool>(any(global4.e.a), !global4.b.a.x), false), global4.c.b, select(_wgslsmith_f_op_f32(step(877f, global4.a.b)) <= _wgslsmith_f_op_f32(sign(global4.c.b)), false, !all(global4.c.a))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global4.e.b)));
    var var_2 = firstLeadingBit(u_input.a) ^ u_input.e;
    var var_3 = vec3<u32>(firstTrailingBit(35024u), ~countOneBits(0u), _wgslsmith_dot_vec3_u32(select(vec3<u32>(u_input.e, u_input.c, 1u) << (vec3<u32>(u_input.a, u_input.c, u_input.c) % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.c, 0u, u_input.a), vec3<u32>(36755u, u_input.a, u_input.c)), !vec3<bool>(var_0.c.a.x, true, global4.a.a.x)), ~(~vec3<u32>(4294967295u, 26812u, u_input.a))) | 92470u);
    var_0 = Struct_2(Struct_1(vec2<bool>(select(global4.e.a.x, !global4.e.c, true), !(true & var_0.e.a.x)), 1293f, var_0.d.c), var_0.e, Struct_1(vec2<bool>(global4.b.b >= _wgslsmith_div_f32(global4.a.b, -714f), false), _wgslsmith_f_op_f32(f32(-1f) * -1746f), true), Struct_1(global4.d.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.b.b))))), global4.b.c), global4.b);
    return any(global0[_wgslsmith_index_u32(var_3.x, 26u)]);
}

fn func_1(arg_0: vec4<f32>, arg_1: u32) -> vec4<i32> {
    var var_0 = vec4<bool>(false, false, func_3((global2.x << (select(0u, 68887u, true) % 32u)) << ((u_input.c << (func_2(-14670i, global4.d.a, Struct_3(4294967295u, Struct_1(global4.e.a, global4.e.b, global4.d.c))) % 32u)) % 32u)), false);
    return vec4<i32>(global2.x | -1i, ~1i, -40329i, max(~u_input.b.x, u_input.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-627f, global4.e.b));
    let var_1 = countOneBits(21043u);
    let var_2 = vec4<f32>(global4.b.b, 1700f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(global4.e.b)), 577f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.x)))))), -2062f);
    var var_3 = vec4<i32>(_wgslsmith_mod_i32(u_input.d.x, ~_wgslsmith_mult_i32(u_input.d.x << (1u % 32u), -global2.x)), _wgslsmith_dot_vec4_i32(-_wgslsmith_sub_vec4_i32(func_1(vec4<f32>(var_2.x, var_0.x, var_2.x, 639f), 1u), func_1(vec4<f32>(-462f, 1234f, 1134f, -427f), var_1)), u_input.b), reverseBits(-1i), ~(i32(-1i) * -1i) << (~var_1 % 32u));
    global4 = Struct_2(global4.c, global4.b, Struct_1(vec2<bool>(global4.d.c, true), var_0.x, all(global4.b.a)), Struct_1(vec2<bool>(false, !global4.d.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1011f, var_0.x))), any(vec3<bool>(global4.c.a.x & true, global4.e.c, true))), Struct_1(global4.c.a, _wgslsmith_f_op_f32(global4.c.b - var_0.x), (_wgslsmith_add_u32(24247u, 16909u) >= u_input.a) != true));
    global3 = array<Struct_4, 11>();
    let var_4 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.c.b + var_2.x) + -2955f) + var_0.x), _wgslsmith_f_op_f32(-global4.c.b), -1293f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)));
    let var_5 = _wgslsmith_f_op_f32(-var_2.x);
    global0 = array<vec4<bool>, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(var_4.x, -841f, var_4.x != var_4.x))))), vec3<i32>(min(u_input.d.x, -1i), -2147483647i, 2147483647i), ~(~(~vec3<u32>(u_input.e, u_input.a, var_1))));
}

