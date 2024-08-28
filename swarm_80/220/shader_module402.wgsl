struct Struct_1 {
    a: u32,
    b: u32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec3<i32>,
    d: u32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec2<f32>, 8>;

var<private> global2: array<Struct_1, 6>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> bool {
    global0 = arg_1;
    global1 = array<vec2<f32>, 8>();
    global0 = global2[_wgslsmith_index_u32(4294967295u, 6u)];
    let var_0 = -24155i;
    return all(select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true), false), vec3<bool>(true, true, false), vec3<bool>(true, true, true)));
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -830f) + _wgslsmith_f_op_f32(ceil(-105f)))) - _wgslsmith_f_op_f32(round(-780f)));
    var var_1 = _wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(arg_0.a, 8u)]);
    var var_2 = ~_wgslsmith_sub_u32(_wgslsmith_clamp_u32(39295u, arg_0.a, ~_wgslsmith_sub_u32(4294967295u, 47083u)), 0u);
    var var_3 = 4294967295u;
    let var_4 = global2[_wgslsmith_index_u32(4294967295u, 6u)];
    return _wgslsmith_sub_u32(~var_4.b, ~(~arg_0.b ^ u_input.a));
}

fn func_2() -> f32 {
    var var_0 = _wgslsmith_f_op_f32(abs(1000f));
    let var_1 = Struct_1(4294967295u, reverseBits(select(func_3(Struct_1(0u, 36060u, global0.c)), ~global0.b, true)), ~global0.c);
    var var_2 = global0.c.xy << (vec2<u32>(abs(global0.a), _wgslsmith_dot_vec3_u32(vec3<u32>(select(31625u, 4294967295u, false), 48096u, ~u_input.b), ~(vec3<u32>(global0.a, global0.a, u_input.a) & vec3<u32>(u_input.a, 4294967295u, 0u)))) % vec2<u32>(32u));
    let var_3 = vec4<u32>(var_1.b, ~58245u, ~u_input.a, var_1.b << (6019u % 32u));
    var_2 = countOneBits((vec2<i32>(var_2.x, firstTrailingBit(var_2.x)) >> ((vec2<u32>(var_1.b, var_3.x) ^ max(vec2<u32>(4294967295u, 45282u), vec2<u32>(global0.b, 1u))) % vec2<u32>(32u))) >> (var_3.xy % vec2<u32>(32u)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(532f))) + 521f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global2[_wgslsmith_index_u32(global0.b, 6u)];
    var var_0 = vec3<bool>(all(vec4<bool>(true, !all(vec3<bool>(true, true, false)), select(false, global0.a >= global0.b, func_1(25826u, Struct_1(77734u, u_input.a, vec3<i32>(-1i, 20038i, global0.c.x)))), any(vec2<bool>(true, true)))), true, true);
    var var_1 = _wgslsmith_add_vec4_i32(~(vec4<i32>(-1i) * -vec4<i32>(global0.c.x, global0.c.x, 0i, 2147483647i)), reverseBits(_wgslsmith_add_vec4_i32(select(~vec4<i32>(-21515i, global0.c.x, 30598i, global0.c.x), firstTrailingBit(vec4<i32>(-1i, global0.c.x, global0.c.x, 2147483647i)), vec4<bool>(true, var_0.x, false, true)), _wgslsmith_sub_vec4_i32(firstLeadingBit(vec4<i32>(global0.c.x, global0.c.x, global0.c.x, global0.c.x)), ~vec4<i32>(-1i, 0i, -1i, 0i)))));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1385f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-383f - -1184f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) * -1201f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)));
    var var_3 = vec2<bool>(all(!(!vec3<bool>(true, var_0.x, var_0.x))) || any(!select(vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(true, var_0.x, true))), ~1i > var_1.x);
    var var_4 = Struct_1(50634u, u_input.b, vec3<i32>(_wgslsmith_mult_i32(-global0.c.x, countOneBits(-2147483647i)) & ~(-1i), -1i, var_1.x));
    let x = u_input.a;
    s_output = StorageBuffer(~21388u, global1[_wgslsmith_index_u32(min(~u_input.b, u_input.b), 8u)], global0.c, var_4.a, select(_wgslsmith_div_vec2_i32(var_1.xx, ~vec2<i32>(global0.c.x, -1496i)), vec2<i32>(var_4.c.x, 2147483647i), select(var_0.yx, var_0.xx, true || var_0.x)));
}

