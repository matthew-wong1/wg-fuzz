struct Struct_1 {
    a: f32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<f32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 14>;

var<private> global1: array<vec3<bool>, 17> = array<vec3<bool>, 17>(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true));

var<private> global2: i32 = 9941i;

var<private> global3: array<Struct_3, 19>;

var<private> global4: array<vec2<f32>, 19>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: vec4<bool>) -> i32 {
    global4 = array<vec2<f32>, 19>();
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-314f, -1590f) - 952f) + _wgslsmith_f_op_f32(-861f - 529f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1264f, 237f))))));
    let var_1 = ~abs(u_input.d);
    global3 = array<Struct_3, 19>();
    var var_2 = var_0;
    return -1i;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec2<u32>) -> bool {
    var var_0 = ~_wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(1u, u_input.d.x, 8252u, u_input.d.x) & _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, arg_2.x, 4294967295u, u_input.b.x), vec4<u32>(27035u, arg_2.x, arg_2.x, 12024u)), ~(~vec4<u32>(arg_2.x, 4198u, 4294967295u, 1u)), abs(~vec4<u32>(4478u, arg_2.x, u_input.d.x, 90518u))), firstLeadingBit(~vec4<u32>(1u, arg_2.x, 22339u, 24744u)), ~vec4<u32>(u_input.c, ~u_input.c, arg_2.x, 4294967295u));
    var var_1 = global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.c, _wgslsmith_div_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(var_0.zzy | vec3<u32>(var_0.x, 18339u, 51617u), ~vec3<u32>(var_0.x, 4294967295u, var_0.x)), u_input.c), var_0.x | min(~39781u, 1u))), 19u)];
    let var_2 = arg_0.b.x;
    global3 = array<Struct_3, 19>();
    global2 = func_3(!all(vec4<bool>(105402u >= arg_2.x, true, arg_1.b.x, arg_1.b.x)), arg_1.a.b);
    return !var_1.b.x;
}

fn func_1(arg_0: Struct_2, arg_1: f32, arg_2: f32, arg_3: bool) -> i32 {
    global0 = array<vec3<i32>, 14>();
    let var_0 = Struct_1(arg_1, vec4<bool>(true, false, any(vec2<bool>(true & arg_3, func_2(Struct_1(arg_1, vec4<bool>(true, false, arg_3, arg_3)), Struct_3(Struct_1(arg_1, vec4<bool>(arg_3, false, arg_3, true)), vec4<bool>(false, arg_3, arg_3, arg_3)), arg_0.a.xx))), arg_3));
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, var_0.a, -1026f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-111f, 1278f, 1689f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, var_0.a, arg_1)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1166f, -259f, arg_2), vec3<f32>(var_0.a, 2162f, 110f), var_0.b.x)), var_0.b.wxx)))), vec3<f32>(_wgslsmith_f_op_f32(ceil(1229f)), arg_2, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_1 + 435f), arg_1)), _wgslsmith_f_op_f32(-var_0.a)))), !select(vec3<bool>(var_0.b.x, true, 0u <= arg_0.a.x), global1[_wgslsmith_index_u32(70491u, 17u)], any(var_0.b.yzx))));
    let var_2 = var_0;
    var var_3 = min(select(vec3<u32>(arg_0.a.x, arg_0.a.x, 10390u), vec3<u32>(u_input.c, _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(13148u, 11173u, arg_0.a.x, 1u)), vec4<u32>(19313u, u_input.c, u_input.c, u_input.c)), arg_0.a.x), vec3<bool>(true, var_2.b.x, any(var_2.b))), _wgslsmith_div_vec3_u32(~arg_0.a.zyw, ~firstLeadingBit(~arg_0.a.zxw)));
    return firstTrailingBit(~47641i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1212f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-462f + 1000f), 986f, any(vec4<bool>(true, false, false, false)))) + _wgslsmith_f_op_f32(-208f - 786f))));
    let var_1 = u_input.c;
    let var_2 = _wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(trunc(var_0))) <= var_0;
    global0 = array<vec3<i32>, 14>();
    var var_3 = var_2;
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-675f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1553f, var_0)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -2672f)))))));
    let var_5 = select(vec4<i32>(2147483647i, 0i, ~(-8081i), countOneBits(~u_input.a)) ^ (abs(abs(vec4<i32>(-1i, -1i, 7999i, -2147483647i))) >> ((~vec4<u32>(12726u, u_input.b.x, u_input.c, 22456u) >> (~vec4<u32>(0u, var_1, 20821u, u_input.c) % vec4<u32>(32u))) % vec4<u32>(32u))), select(vec4<i32>(29281i, func_1(Struct_2(vec4<u32>(u_input.c, u_input.b.x, 0u, var_1)), var_4.x, -1131f, var_2) | u_input.a, -(u_input.a << (65468u % 32u)), u_input.a), -reverseBits(select(vec4<i32>(u_input.a, 2147483647i, u_input.a, u_input.a), vec4<i32>(-32019i, u_input.a, u_input.a, 2147483647i), var_2)), !var_2), !(!(!vec4<bool>(var_2, false, var_2, var_2))));
    let x = u_input.a;
    s_output = StorageBuffer(43910u, 1u, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(var_4.x, 954f)))), _wgslsmith_f_op_f32(exp2(var_0))) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_4.x, var_4.x), var_4.xz)), vec2<f32>(-251f, -157f))), vec2<f32>(_wgslsmith_f_op_f32(-1314f * -1322f), _wgslsmith_div_f32(var_0, var_4.x))))), (vec3<i32>(-1i) * -(~vec3<i32>(var_5.x, u_input.a, -18664i))) << (vec3<u32>(1u << (_wgslsmith_dot_vec2_u32(u_input.b, u_input.d.zy) % 32u), var_1, 55659u) % vec3<u32>(32u)));
}

