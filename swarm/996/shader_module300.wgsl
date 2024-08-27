struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
    c: f32,
    d: Struct_1,
    e: vec2<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: vec3<i32>,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(23115i, 0i);

var<private> global1: array<Struct_3, 6>;

var<private> global2: array<bool, 14>;

var<private> global3: array<vec2<i32>, 13>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(264f - _wgslsmith_f_op_f32(sign(1170f)))) - 1f));
    var var_1 = Struct_2(Struct_1(_wgslsmith_add_vec2_u32(countOneBits(_wgslsmith_sub_vec2_u32(vec2<u32>(11461u, u_input.b), vec2<u32>(1u, u_input.b))), vec2<u32>(max(u_input.b, u_input.b), _wgslsmith_div_u32(12602u, 26988u)))), global0.x);
    var var_2 = global2[_wgslsmith_index_u32(select(firstLeadingBit(max(4294967295u, max(var_1.a.a.x, 5863u))), var_1.a.a.x, !all(!vec4<bool>(true, global2[_wgslsmith_index_u32(0u, 14u)], global2[_wgslsmith_index_u32(u_input.b, 14u)], true))) & u_input.b, 14u)];
    var var_3 = 29069u;
    var_2 = all(vec2<bool>(any(!(!vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 14u)], global2[_wgslsmith_index_u32(1u, 14u)], global2[_wgslsmith_index_u32(93117u, 14u)], true))), true & (var_1.a.a.x < u_input.b)));
    return vec2<u32>(u_input.b, ~(~u_input.b));
}

fn func_2(arg_0: u32) -> u32 {
    let var_0 = vec3<i32>(~(~global0.x), firstTrailingBit(u_input.a), global0.x);
    var var_1 = true;
    let var_2 = Struct_1(vec2<u32>(_wgslsmith_add_u32(0u, select(firstLeadingBit(47503u), u_input.b, true)), arg_0));
    global1 = array<Struct_3, 6>();
    var var_3 = Struct_1(select(~var_2.a, ~func_3(), vec2<bool>(2147483647i <= u_input.a, -21767i != -global0.x)));
    return ~_wgslsmith_dot_vec4_u32(countOneBits(firstTrailingBit(~vec4<u32>(1u, var_2.a.x, 15533u, 9545u))), vec4<u32>(abs(366u), var_2.a.x, 1u, reverseBits(var_3.a.x)));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec3<i32>) -> f32 {
    let var_0 = ~func_2(~22017u);
    let var_1 = ~(arg_2.x << ((_wgslsmith_add_u32(arg_0.a.x, 86594u) >> (var_0 % 32u)) % 32u)) << (var_0 % 32u);
    let var_2 = 0u;
    var var_3 = 454f;
    var var_4 = Struct_1(func_3());
    return _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(arg_1.x, 1465f), arg_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-2736f, 360f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_3, 6>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(107f + -1201f), _wgslsmith_f_op_f32(func_1(Struct_1(vec2<u32>(4294967295u, u_input.b)), vec4<f32>(-1027f, 1167f, -615f, 187f), vec3<i32>(1i, global0.x, global0.x))), false)) + -1151f))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(671f, -1831f, -352f) - vec3<f32>(-1462f, -953f, 774f)) * vec3<f32>(-319f, -866f, 892f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-121f, -1000f, 1669f)))), select(vec3<bool>(false, global2[_wgslsmith_index_u32(1u, 14u)], global2[_wgslsmith_index_u32(u_input.b, 14u)]), select(vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 14u)], false, global2[_wgslsmith_index_u32(4294967295u, 14u)]), vec3<bool>(global2[_wgslsmith_index_u32(10239u, 14u)], global2[_wgslsmith_index_u32(u_input.b, 14u)], true), vec3<bool>(global2[_wgslsmith_index_u32(u_input.b, 14u)], true, global2[_wgslsmith_index_u32(0u, 14u)])), any(vec4<bool>(global2[_wgslsmith_index_u32(u_input.b, 14u)], false, global2[_wgslsmith_index_u32(u_input.b, 14u)], global2[_wgslsmith_index_u32(30688u, 14u)]))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-300f, -441f, -730f))))));
    let var_2 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_mult_u32(select(u_input.b, u_input.b, var_1.x >= var_1.x), _wgslsmith_mod_u32(0u, 1u << (u_input.b % 32u)) ^ 56204u), u_input.b), 6u)];
    global3 = array<vec2<i32>, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(_wgslsmith_mult_vec2_u32(vec2<u32>(var_2.b.a.a.x, var_2.e.x) << (var_2.e % vec2<u32>(32u)), vec2<u32>(45917u, u_input.b)) | _wgslsmith_add_vec2_u32(vec2<u32>(0u, var_2.e.x) >> (vec2<u32>(0u, var_2.e.x) % vec2<u32>(32u)), var_2.b.a.a >> (var_2.d.a % vec2<u32>(32u)))));
}

