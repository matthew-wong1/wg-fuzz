struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: f32,
    b: vec4<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: u32,
    d: f32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -1i;

var<private> global1: vec3<f32> = vec3<f32>(-697f, -1641f, -1000f);

var<private> global2: array<vec3<u32>, 7> = array<vec3<u32>, 7>(vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(0u, 7681u, 540u), vec3<u32>(1u, 0u, 22930u), vec3<u32>(1u, 61884u, 4294967295u), vec3<u32>(0u, 53748u, 4294967295u), vec3<u32>(63437u, 0u, 27130u), vec3<u32>(21313u, 22947u, 1707u));

var<private> global3: Struct_4;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2) -> bool {
    var var_0 = _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(arg_0.b.x, arg_0.b.x, u_input.d.x, 54968u | u_input.b.x) << ((vec4<u32>(u_input.a, 35567u, 0u, 33755u) ^ ~vec4<u32>(u_input.c.x, 23885u, 0u, arg_0.b.x)) % vec4<u32>(32u))), max(~(~(~vec4<u32>(4294967295u, u_input.b.x, 4294967295u, 1u))), _wgslsmith_clamp_vec4_u32(vec4<u32>(~46419u, ~15286u, 4294967295u, 20779u), reverseBits(min(arg_0.b, vec4<u32>(arg_0.b.x, arg_0.b.x, 0u, u_input.b.x))), u_input.d & _wgslsmith_mult_vec4_u32(vec4<u32>(52760u, arg_0.b.x, u_input.b.x, arg_0.b.x), u_input.b))));
    let var_1 = arg_0;
    var var_2 = _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(countOneBits(countOneBits(vec2<i32>(112i, -3844i))), abs(vec2<i32>(-2147483647i, 17620i))), select(vec2<i32>(20269i, 0i), min(~vec2<i32>(-1i, -38548i), vec2<i32>(1i, 1i)), true)), _wgslsmith_dot_vec2_i32(-vec2<i32>(-18623i, 1i), vec2<i32>(-1i, 33726i) << (arg_0.b.xw % vec2<u32>(32u))));
    let var_3 = ~abs(firstLeadingBit(countOneBits(arg_0.b.ywx)));
    let var_4 = Struct_1(arg_0.c.a, var_1.a);
    return global3.a;
}

fn func_2(arg_0: vec4<f32>) -> Struct_4 {
    let var_0 = Struct_4(func_3(Struct_2(_wgslsmith_f_op_f32(1596f * global1.x), min(u_input.d, u_input.b), Struct_1(-1000f, 1223f))) && select(global3.a, true, select(global3.a, global3.a, global3.a)));
    global1 = arg_0.yxz;
    global1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(739f, -2416f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global1.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-254f))))) + _wgslsmith_f_op_vec3_f32(-arg_0.xyw));
    var var_1 = _wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, u_input.c.x >> (u_input.c.x % 32u), 1u), ~global2[_wgslsmith_index_u32(select(u_input.c.x, u_input.c.x, true), 7u)]) << (~firstTrailingBit(select(u_input.c, vec3<u32>(u_input.b.x, u_input.d.x, u_input.c.x), var_0.a)) % vec3<u32>(32u)), abs(global2[_wgslsmith_index_u32(2876u << (~_wgslsmith_mult_u32(u_input.b.x, 0u) % 32u), 7u)]));
    var var_2 = var_0;
    return var_0;
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: i32) -> Struct_4 {
    global3 = Struct_4(false);
    global2 = array<vec3<u32>, 7>();
    let var_0 = vec2<u32>(u_input.d.x, ~(_wgslsmith_dot_vec3_u32(u_input.c, u_input.b.yww & vec3<u32>(112383u, 0u, 4294967295u)) & (~24424u << (abs(0u) % 32u))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x * _wgslsmith_div_f32(-1039f, global1.x))) + _wgslsmith_f_op_f32(-global1.x));
    var var_2 = vec2<i32>(arg_2, ~arg_2);
    return func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-145f, -223f, global1.x, -246f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<u32>, 7>();
    let var_0 = vec2<u32>(~_wgslsmith_clamp_u32(u_input.d.x ^ u_input.d.x, 44100u, firstLeadingBit(u_input.a)) & _wgslsmith_dot_vec4_u32(~(~u_input.d), ~(~u_input.b)), 1u);
    var var_1 = Struct_4(false == global3.a);
    global3 = func_1(true, var_1.a, -min(12825i << (0u % 32u), 0i));
    global2 = array<vec3<u32>, 7>();
    let var_2 = firstTrailingBit(min(526u, u_input.c.x));
    var var_3 = Struct_1(-1268f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-1342f)))), -418f)), global1.x, select(false, select(var_1.a, !var_1.a, true), true))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) * global1.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-168f, _wgslsmith_f_op_f32(min(-729f, -1240f))))))), 64235u, ~19424u, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -258f))))))), u_input.b.xw >> (u_input.c.xy % vec2<u32>(32u)));
}

