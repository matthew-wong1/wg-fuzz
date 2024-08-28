struct Struct_1 {
    a: i32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: bool,
    b: f32,
}

struct Struct_4 {
    a: bool,
    b: u32,
    c: vec4<f32>,
    d: vec2<i32>,
    e: Struct_1,
}

struct Struct_5 {
    a: f32,
    b: vec3<bool>,
    c: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: i32,
    d: vec2<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: array<Struct_1, 22>;

var<private> global2: vec2<f32> = vec2<f32>(856f, 166f);

var<private> global3: Struct_1 = Struct_1(2147483647i, vec2<bool>(false, false));

var<private> global4: array<u32, 4>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: bool, arg_1: Struct_4, arg_2: u32) -> bool {
    var var_0 = -u_input.c.x;
    let var_1 = Struct_1(min(i32(-1i) * -select(7664i, -2147483647i, true), 3285i), arg_1.e.b);
    let var_2 = arg_1.c.zy;
    global1 = array<Struct_1, 22>();
    global4 = array<u32, 4>();
    return var_1.b.x;
}

fn func_3(arg_0: u32, arg_1: vec3<bool>, arg_2: vec3<u32>) -> f32 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1297f, 234f)) - -1775f), global2.x, _wgslsmith_f_op_f32(-1211f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x))), _wgslsmith_f_op_f32(-214f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global2.x + global2.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)))));
    let var_1 = vec2<f32>(global2.x, 201f);
    global4 = array<u32, 4>();
    var var_2 = Struct_1(_wgslsmith_dot_vec4_i32(u_input.c ^ abs(abs(vec4<i32>(-1i, global3.a, -9498i, -18220i))), -(_wgslsmith_div_vec4_i32(vec4<i32>(-1i, u_input.c.x, u_input.c.x, 11277i), u_input.c) << (vec4<u32>(24901u, 39019u, global4[_wgslsmith_index_u32(u_input.a.x, 4u)], 24328u) % vec4<u32>(32u)))), !vec2<bool>(true, arg_1.x));
    var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-2380f * global2.x), global2.x, any(var_2.b))), var_1.x, var_1.x, -142f));
    return _wgslsmith_f_op_f32(exp2(var_0.x));
}

fn func_2(arg_0: u32, arg_1: vec3<bool>) -> f32 {
    global4 = array<u32, 4>();
    let var_0 = Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(abs(~arg_0), vec3<bool>(global3.b.x, arg_1.x, false), reverseBits(vec3<u32>(1u, global4[_wgslsmith_index_u32(1u, 4u)], arg_0)) | select(vec3<u32>(25172u, u_input.b.x, 0u), vec3<u32>(global4[_wgslsmith_index_u32(4294967295u, 4u)], 4294967295u, 0u), true))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(global2.x, _wgslsmith_f_op_f32(floor(global2.x)), true)), global2.x))), vec3<bool>(false, abs(_wgslsmith_sub_u32(46018u, 0u)) < arg_0, ~countOneBits(u_input.c.x) != _wgslsmith_div_i32(u_input.c.x, ~1i)), false);
    let var_1 = vec4<bool>(false, var_0.c, arg_1.x, true | arg_1.x);
    let var_2 = u_input.c.yww;
    let var_3 = _wgslsmith_f_op_f32(sign(global2.x));
    return 1765f;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = vec2<f32>(-464f, _wgslsmith_f_op_f32(round(global2.x)));
    let var_0 = ~firstTrailingBit(~u_input.b);
    var var_1 = _wgslsmith_f_op_f32(func_2(var_0.x, !vec3<bool>(true, global3.b.x, func_1(true, Struct_4(global3.b.x, var_0.x, vec4<f32>(1500f, 209f, global2.x, global2.x), u_input.c.xw, Struct_1(global3.a, vec2<bool>(false, global3.b.x))), _wgslsmith_add_u32(u_input.a.x, 25859u)))));
    global2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-411f + global2.x), _wgslsmith_f_op_f32(global2.x - global2.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    let var_2 = max(min(var_0.x, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.b.x, 4u)], 4u)]), global4[_wgslsmith_index_u32(0u << ((u_input.b.x | (u_input.b.x & abs(13975u))) % 32u), 4u)]);
    var var_3 = _wgslsmith_clamp_i32(u_input.c.x, 2147483647i, -19429i);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, vec4<i32>(u_input.c.x, select(0i, 11693i, global3.b.x), global3.a, u_input.c.x) << (countOneBits(~(~vec4<u32>(1u, var_2, 1u, global4[_wgslsmith_index_u32(4294967295u, 4u)]))) % vec4<u32>(32u)), u_input.c.x << ((~(~80543u) << ((~u_input.b.x & _wgslsmith_div_u32(var_0.x, 1804u)) % 32u)) % 32u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-229f, global2.x)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-122f, global2.x) * vec2<f32>(global2.x, -174f)) + vec2<f32>(global2.x, -354f)))), min(_wgslsmith_div_vec2_i32(select(-u_input.c.ww, vec2<i32>(4186i, global3.a) & vec2<i32>(u_input.c.x, global3.a), global3.b), ~vec2<i32>(u_input.c.x, global3.a)), -u_input.c.xz));
}

