struct Struct_1 {
    a: i32,
    b: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: u32;

var<private> global2: Struct_1;

var<private> global3: vec3<f32> = vec3<f32>(1047f, -494f, -1462f);

var<private> global4: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(-44905i, false), Struct_1(1i, true), Struct_1(0i, false), Struct_1(10603i, true));

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: f32) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(arg_0 - 315f);
    let var_1 = countOneBits(~select(reverseBits(-1i), max(-2147483647i, 0i), global0.b) << (max(_wgslsmith_mult_u32(u_input.c, reverseBits(u_input.c)), min(u_input.c, ~0u)) % 32u));
    let var_2 = global3.x;
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -315f)), -620f, -459f, -1000f);
    global1 = ~_wgslsmith_div_u32(~(~u_input.c >> (u_input.c % 32u)), u_input.c);
    return 1u;
}

fn func_3(arg_0: vec2<u32>, arg_1: vec4<u32>, arg_2: vec3<i32>, arg_3: vec3<u32>) -> bool {
    var var_0 = 42065u;
    var_0 = _wgslsmith_mult_u32(u_input.c, ~834u);
    var var_1 = ~_wgslsmith_mult_vec4_u32(arg_1, vec4<u32>(~0u, 39981u, arg_1.x, func_1(_wgslsmith_f_op_f32(f32(-1f) * -454f))));
    var_0 = min(reverseBits(87707u), 97822u);
    var var_2 = global2.a;
    return any(vec3<bool>(true, true, _wgslsmith_f_op_f32(-1000f - 1326f) >= global3.x));
}

fn func_2(arg_0: vec2<u32>) -> u32 {
    let var_0 = !vec4<bool>(select(true, ~11897i >= _wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(1i, -16718i, -1i, global2.a)), true), (global3.x < _wgslsmith_f_op_f32(-797f - global3.x)) & func_3(abs(arg_0), ~vec4<u32>(1u, u_input.c, u_input.c, 0u), -u_input.b.zwz, vec3<u32>(0u, 81106u, u_input.c)), global2.b, true);
    let var_1 = all(select(var_0, var_0, any(vec3<bool>(!global2.b, !var_0.x, any(vec4<bool>(true, false, global0.b, global2.b))))));
    let var_2 = Struct_1(_wgslsmith_div_i32(min(global2.a, global0.a), firstTrailingBit(firstLeadingBit(10920i))), any(!var_0.xxz));
    global3 = vec3<f32>(global3.x, _wgslsmith_f_op_f32(floor(-1029f)), global3.x);
    global2 = global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(~countOneBits(abs(0u)), u_input.c, max(_wgslsmith_mod_u32(~arg_0.x, 0u), _wgslsmith_clamp_u32(abs(u_input.c), arg_0.x ^ u_input.c, max(u_input.c, 27868u)))), u_input.c, ~4294967295u), 4u)];
    return select(14368u, max(46661u, ~(~4294967295u)), all(vec2<bool>(true, any(vec2<bool>(true, true)) != all(var_0))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_vec4_u32(~vec4<u32>(func_1(_wgslsmith_f_op_f32(-global3.x)), u_input.c, func_2(vec2<u32>(0u, u_input.c)) | _wgslsmith_add_u32(u_input.c, 13347u), u_input.c), countOneBits(max(vec4<u32>(select(46824u, 1u, false), ~u_input.c, ~u_input.c, ~u_input.c), select(~vec4<u32>(u_input.c, u_input.c, u_input.c, 45294u), vec4<u32>(0u, 0u, u_input.c, 0u) & vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c), select(vec4<bool>(global2.b, false, true, global0.b), vec4<bool>(false, false, global0.b, global2.b), vec4<bool>(global0.b, global0.b, global0.b, global2.b))))));
    global3 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global3.x)) - _wgslsmith_f_op_f32(-658f - -936f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)), global3.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-897f, -603f, global3.x)))));
    var var_1 = global4[_wgslsmith_index_u32(var_0.x, 4u)];
    let var_2 = firstTrailingBit(min(_wgslsmith_mod_vec4_u32(~(vec4<u32>(var_0.x, var_0.x, u_input.c, var_0.x) >> (vec4<u32>(1u, 4294967295u, 8470u, 995u) % vec4<u32>(32u))), reverseBits(max(vec4<u32>(37210u, 4294967295u, u_input.c, 0u), vec4<u32>(u_input.c, u_input.c, var_0.x, 4294967295u)))), vec4<u32>(var_0.x, u_input.c, firstTrailingBit(~46849u), 0u)));
    let var_3 = select(vec3<bool>(true, global0.b, !(!global0.b) | true), !(!vec3<bool>(false, var_1.b, false)), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1514f), 1966f), global3.x, var_0.x >> (_wgslsmith_div_u32(var_2.x, ~u_input.c | min(u_input.c, 1u)) % 32u));
}

