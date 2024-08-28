struct Struct_1 {
    a: u32,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 8>;

var<private> global1: array<vec4<i32>, 22>;

var<private> global2: Struct_1;

var<private> global3: array<u32, 26>;

var<private> global4: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(12474u, 117f, 23520i), Struct_1(3616u, 1694f, -1i), Struct_1(0u, 897f, 2228i), Struct_1(68813u, 132f, 2147483647i), Struct_1(1u, 1362f, -17805i), Struct_1(1u, -1000f, -1i), Struct_1(77748u, 553f, 1i), Struct_1(30696u, -690f, -43190i), Struct_1(16859u, -630f, 39601i), Struct_1(8720u, -464f, 1i), Struct_1(0u, -937f, -40802i));

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec4<u32>) -> f32 {
    return global2.b;
}

fn func_3() -> f32 {
    var var_0 = Struct_1(firstTrailingBit(global2.a), -776f, global2.c);
    let var_1 = select(43076u, _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(~vec2<u32>(1u, 72349u) & _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, global3[_wgslsmith_index_u32(u_input.a, 26u)]), vec2<u32>(var_0.a, global2.a)), vec2<u32>(13352u, global3[_wgslsmith_index_u32(0u, 26u)]) | (vec2<u32>(global3[_wgslsmith_index_u32(0u, 26u)], global2.a) >> (vec2<u32>(4294967295u, 4294967295u) % vec2<u32>(32u)))), vec2<u32>(4294967295u, 4294967295u)), !select(!all(vec3<bool>(true, true, false)), !any(vec3<bool>(true, false, false)), false));
    var var_2 = vec2<bool>(~(-2147483647i) <= global2.c, -var_0.c < min(var_0.c, _wgslsmith_mod_i32(var_0.c, 1i)));
    let var_3 = Struct_2(_wgslsmith_f_op_f32(123f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global2.b), _wgslsmith_f_op_f32(1584f + 1461f))) * -374f)));
    var var_4 = ~(~(~vec4<u32>(var_0.a, ~11428u, ~0u, reverseBits(40321u))));
    return var_0.b;
}

fn func_1() -> f32 {
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec3<i32>(-12459i, 1i, global2.c), Struct_1(global2.a, global2.b, -12061i), vec4<u32>(global2.a, global3[_wgslsmith_index_u32(global2.a, 26u)], global2.a, 1u))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1101f - 566f) - _wgslsmith_f_op_f32(-129f + global2.b)) * 1082f)))));
    global0 = array<Struct_2, 8>();
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3()))));
    let var_2 = 1i;
    global2 = global4[_wgslsmith_index_u32(~select(0u << (_wgslsmith_div_u32(~11581u, 4294967295u) % 32u), _wgslsmith_mult_u32(~1u >> (_wgslsmith_dot_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a, 26u)], 26u)], u_input.b, 0u), vec3<u32>(global2.a, global2.a, global2.a)) % 32u), _wgslsmith_mod_u32(countOneBits(11076u), 21671u)), select(true, any(vec2<bool>(true, false)), true) || all(vec3<bool>(false, true, true))), 11u)];
    return 1373f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(1u, global2.b, global2.c);
    var var_1 = var_0.a;
    let var_2 = vec3<u32>(var_0.a, ~(0u ^ global2.a), abs(u_input.b));
    var var_3 = vec4<bool>(false, true, false, select(847f == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b * var_0.b) + _wgslsmith_f_op_f32(func_1())), false, !any(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)))));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.b) - var_0.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.b, -2063f))))), _wgslsmith_mod_i32(global2.c, ~(-12462i)), _wgslsmith_f_op_f32(var_0.b + global2.b));
}

