struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: vec4<f32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 18> = array<vec3<u32>, 18>(vec3<u32>(30439u, 0u, 4294967295u), vec3<u32>(0u, 52849u, 1u), vec3<u32>(1u, 92226u, 4294967295u), vec3<u32>(1u, 4294967295u, 1779u), vec3<u32>(1u, 2708u, 4294967295u), vec3<u32>(103711u, 2443u, 69086u), vec3<u32>(51516u, 28702u, 26301u), vec3<u32>(0u, 4294967295u, 1u), vec3<u32>(31815u, 0u, 1u), vec3<u32>(0u, 58482u, 47287u), vec3<u32>(0u, 50870u, 1u), vec3<u32>(0u, 1u, 1u), vec3<u32>(4294967295u, 10985u, 0u), vec3<u32>(7418u, 4294967295u, 5462u), vec3<u32>(1u, 167252u, 4294967295u), vec3<u32>(58482u, 1054u, 3096u), vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(1u, 0u, 6159u));

var<private> global1: array<vec3<u32>, 22>;

var<private> global2: Struct_1 = Struct_1(39580i, vec4<bool>(false, false, false, false), vec4<f32>(1321f, 1799f, -1943f, -284f), vec4<bool>(false, true, true, false));

var<private> global3: array<u32, 3>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> f32 {
    return _wgslsmith_f_op_f32(trunc(global2.c.x));
}

fn func_2(arg_0: vec4<f32>, arg_1: i32, arg_2: u32) -> Struct_2 {
    global0 = array<vec3<u32>, 18>();
    global3 = array<u32, 3>();
    let var_0 = !vec2<bool>(all(select(select(vec2<bool>(global2.b.x, global2.d.x), vec2<bool>(true, true), vec2<bool>(false, global2.b.x)), !global2.d.yy, true)), global2.b.x);
    var var_1 = -vec2<i32>(max(abs(-global2.a), 1i), global2.a << (_wgslsmith_dot_vec3_u32(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~56449u, 3u)], 22u)], vec3<u32>(u_input.c, 0u, u_input.d.x)) % 32u));
    var var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1951f)))));
    return Struct_2(31246i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2.c.zxy)));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: f32, arg_3: vec2<i32>) -> bool {
    return arg_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstLeadingBit(~firstLeadingBit(global2.a)) > -21780i;
    var var_1 = func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.c.x, global2.c.x, _wgslsmith_f_op_f32(f32(-1f) * -351f), global2.c.x) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.c.x, -103f, global2.c.x, global2.c.x)) + vec4<f32>(415f, _wgslsmith_f_op_f32(func_1(global2.a, Struct_1(0i, global2.b, vec4<f32>(699f, 342f, -632f, global2.c.x), global2.b))), -750f, global2.c.x))), ~(-15630i), 0u);
    var_0 = true || global2.b.x;
    var var_2 = Struct_1(-1i, vec4<bool>(!(!global2.b.x), !func_3(vec2<bool>(true, true), func_2(vec4<f32>(global2.c.x, var_1.b.x, 485f, var_1.b.x), global2.a, u_input.c), global2.c.x, _wgslsmith_div_vec2_i32(vec2<i32>(14805i, global2.a), vec2<i32>(48545i, -2147483647i))), u_input.a < ~4294967295u, global2.d.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global2.c)), global2.b);
    var var_3 = var_2.c.x;
    let var_4 = min(firstLeadingBit(u_input.d) & u_input.d, vec4<u32>(firstLeadingBit(~u_input.a), u_input.c, firstTrailingBit(~u_input.b), min(global3[_wgslsmith_index_u32(countOneBits(global3[_wgslsmith_index_u32(u_input.b, 3u)]), 3u)], _wgslsmith_mult_u32(0u, global3[_wgslsmith_index_u32(46604u, 3u)]))) & ~(~min(vec4<u32>(16680u, global3[_wgslsmith_index_u32(u_input.c, 3u)], 39195u, u_input.d.x), u_input.d)));
    var var_5 = var_1.b;
    var var_6 = ~_wgslsmith_sub_vec3_u32(firstLeadingBit(~var_4.xzw) >> (_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, var_4.x, 4294967295u), max(vec3<u32>(0u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 3u)], 3u)], 4294967295u), global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 3u)], 18u)])) % vec3<u32>(32u)), global0[_wgslsmith_index_u32(~39285u, 18u)]);
    let x = u_input.a;
    s_output = StorageBuffer(func_2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(exp2(var_2.c.x)), _wgslsmith_f_op_f32(select(var_1.b.x, -331f, true)), var_1.b.x, var_2.c.x))), var_2.a, var_6.x).b.x);
}

