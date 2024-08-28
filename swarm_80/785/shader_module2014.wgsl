struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: bool,
    d: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: f32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 26> = array<bool, 26>(true, false, false, false, true, false, false, false, true, false, true, true, true, false, false, true, true, false, true, true, true, false, false, true, false, false);

var<private> global1: array<Struct_1, 5>;

var<private> global2: array<Struct_1, 24>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool) -> vec2<bool> {
    global1 = array<Struct_1, 5>();
    let var_0 = global1[_wgslsmith_index_u32(select(u_input.c, ~39153u, !(!(!arg_0)) & true), 5u)];
    global0 = array<bool, 26>();
    let var_1 = global2[_wgslsmith_index_u32(~(~u_input.d), 24u)];
    var var_2 = vec4<f32>(597f, _wgslsmith_f_op_f32(f32(-1f) * -478f), _wgslsmith_f_op_f32(-730f + -450f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -443f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + 1545f) - -1000f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(2486f, 881f), _wgslsmith_f_op_f32(trunc(334f)))))));
    return vec2<bool>(_wgslsmith_f_op_f32(-var_2.x) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_2.x)))), false);
}

fn func_2() -> f32 {
    var var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(995f * -795f), -797f))), _wgslsmith_f_op_f32(f32(-1f) * -510f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(363f + 364f))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1038f, -445f, _wgslsmith_f_op_f32(f32(-1f) * -481f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1911f, -541f, 489f), vec3<f32>(-1064f, 1197f, 808f), global0[_wgslsmith_index_u32(u_input.c, 26u)])) + _wgslsmith_f_op_vec3_f32(vec3<f32>(676f, -608f, -139f) + vec3<f32>(-1335f, 1000f, 421f))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(291f, 1616f, 1916f), vec3<f32>(518f, 244f, -589f), false)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1000f, -640f, -1126f), vec3<f32>(175f, -462f, 213f)))))));
    global2 = array<Struct_1, 24>();
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(max(var_0.x, -923f)), _wgslsmith_div_f32(-364f, var_0.x));
    var var_2 = !select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.d, 26u)], all(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 26u)], global0[_wgslsmith_index_u32(0u, 26u)]))), vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.c, 26u)]), !(!func_3(true)));
    var_0 = vec3<f32>(1132f, var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -181f));
    return _wgslsmith_div_f32(-850f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(2193f - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.x), 1f)), _wgslsmith_f_op_f32(max(var_1.x, var_0.x)))));
}

fn func_1() -> Struct_1 {
    var var_0 = vec4<bool>(_wgslsmith_f_op_f32(func_2()) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(930f + 920f), _wgslsmith_f_op_f32(-1000f - 989f)))), false, false, global0[_wgslsmith_index_u32(firstTrailingBit(u_input.e) | u_input.e, 26u)]);
    let var_1 = global1[_wgslsmith_index_u32(u_input.a.x, 5u)];
    global1 = array<Struct_1, 5>();
    global2 = array<Struct_1, 24>();
    var var_2 = u_input.b.x;
    return Struct_1(_wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.d, 1u), var_1.a), var_1.b, any(select(vec3<bool>(all(vec4<bool>(true, var_1.c, false, global0[_wgslsmith_index_u32(31346u, 26u)])), !var_1.b.x, true), !(!vec3<bool>(true, false, var_1.c)), select(!vec3<bool>(true, false, global0[_wgslsmith_index_u32(u_input.a.x, 26u)]), vec3<bool>(global0[_wgslsmith_index_u32(var_1.a, 26u)], var_1.c, var_1.c), vec3<bool>(var_0.x, true, false)))), abs(4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2[_wgslsmith_index_u32(~max(4027u, 4294967295u), 24u)];
    var var_1 = Struct_1(abs(countOneBits(var_0.d)), var_0.b, true, u_input.c);
    let var_2 = vec3<u32>(firstLeadingBit(~var_0.a), _wgslsmith_sub_u32(select(var_0.a, ~_wgslsmith_add_u32(0u, var_1.d), global0[_wgslsmith_index_u32(var_0.a, 26u)]), ~_wgslsmith_mult_u32(~u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a, 0u, var_0.d, 13274u), vec4<u32>(u_input.a.x, var_0.d, 0u, u_input.a.x)))), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u ^ u_input.c, countOneBits(var_0.a), ~1u), reverseBits(_wgslsmith_mult_vec3_u32(u_input.a, u_input.a))) ^ ~0u);
    var_1 = Struct_1(0u, !var_0.b, false, var_1.d);
    var var_3 = vec4<i32>(_wgslsmith_mult_i32(-_wgslsmith_mult_i32(26296i, u_input.b.x), _wgslsmith_dot_vec2_i32(-u_input.b, vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.b, u_input.b), -8977i))), -33998i, 0i, u_input.b.x);
    let var_4 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1101f + 1000f))))), _wgslsmith_f_op_f32(-463f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(252f, 908f))))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-534f + 851f), _wgslsmith_div_f32(-1273f, -1139f), _wgslsmith_f_op_f32(select(1095f, 1000f, global0[_wgslsmith_index_u32(4294967295u, 26u)]))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -392f) - -1788f), var_2);
}

