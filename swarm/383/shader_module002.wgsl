struct Struct_1 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: f32,
    d: vec2<u32>,
    e: i32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: u32,
    d: vec4<bool>,
    e: Struct_2,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 20>;

var<private> global1: array<Struct_4, 23>;

var<private> global2: array<f32, 2> = array<f32, 2>(-660f, -1886f);

var<private> global3: bool = false;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: i32) -> vec4<bool> {
    let var_0 = Struct_5(true);
    var var_1 = vec3<u32>(4294967295u, 19008u, 17378u);
    var var_2 = ~_wgslsmith_dot_vec4_u32(select(firstLeadingBit(reverseBits(vec4<u32>(var_1.x, var_1.x, var_1.x, 1u))), ~select(vec4<u32>(var_1.x, var_1.x, 22646u, var_1.x), vec4<u32>(var_1.x, 4294967295u, 0u, 9205u), vec4<bool>(false, false, true, true)), any(vec2<bool>(false, true))), ~_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 1u, 102320u, 0u), vec4<u32>(90452u, 0u, var_1.x, 4294967295u)) ^ vec4<u32>(var_1.x, 1u & var_1.x, 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, var_1.x, var_1.x, 18761u), vec4<u32>(10104u, 49951u, var_1.x, var_1.x))));
    var var_3 = select(!vec4<bool>(var_0.a, !(!var_0.a), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(var_1.x, 2u)] + global2[_wgslsmith_index_u32(var_1.x, 2u)]) >= -779f, (var_0.a && var_0.a) | true), vec4<bool>(true, true, false, all(select(vec4<bool>(var_0.a, var_0.a, false, var_0.a), vec4<bool>(var_0.a, true, var_0.a, true), vec4<bool>(var_0.a, var_0.a, var_0.a, var_0.a))) || true), select(vec4<bool>(true, false, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, arg_0, -29630i, arg_0), vec4<i32>(arg_0, u_input.a, 24672i, u_input.b.x)) >= (-11299i & u_input.b.x), true), select(!vec4<bool>(var_0.a, false, false, var_0.a), select(vec4<bool>(var_0.a, true, var_0.a, false), vec4<bool>(true, false, var_0.a, true), global2[_wgslsmith_index_u32(var_1.x, 2u)] < global2[_wgslsmith_index_u32(var_1.x, 2u)]), any(vec2<bool>(var_0.a, var_0.a))), !(!vec4<bool>(var_0.a, var_0.a, true, var_0.a))));
    var_1 = ~(~(vec3<u32>(select(8487u, var_1.x, var_3.x), var_1.x, _wgslsmith_div_u32(var_1.x, var_1.x)) & vec3<u32>(_wgslsmith_clamp_u32(17153u, var_1.x, var_1.x), var_1.x, ~var_1.x)));
    return select(vec4<bool>(true, !(var_1.x > (var_1.x | 15884u)), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), 703f == global2[_wgslsmith_index_u32(var_1.x, 2u)])), var_3.x), !(!(!select(vec4<bool>(false, var_3.x, var_0.a, var_3.x), vec4<bool>(true, var_3.x, var_3.x, var_0.a), vec4<bool>(false, false, var_3.x, true)))), select(select(vec4<bool>(u_input.a >= -2147483647i, select(true, false, true), global2[_wgslsmith_index_u32(var_1.x, 2u)] <= global2[_wgslsmith_index_u32(30825u, 2u)], var_3.x), select(select(vec4<bool>(false, var_3.x, var_0.a, var_0.a), vec4<bool>(false, true, true, var_0.a), vec4<bool>(var_3.x, var_0.a, true, var_0.a)), select(vec4<bool>(var_3.x, var_0.a, var_0.a, var_3.x), vec4<bool>(var_0.a, var_3.x, true, var_0.a), vec4<bool>(var_3.x, false, true, false)), var_3.x), var_0.a), vec4<bool>(u_input.a <= -1i, select(true, any(vec3<bool>(var_0.a, false, var_0.a)), true), var_3.x | any(vec2<bool>(true, false)), all(vec4<bool>(true, var_3.x, var_3.x, true))), select(select(vec4<bool>(true, true, false, var_3.x), select(vec4<bool>(false, true, var_3.x, var_0.a), vec4<bool>(false, false, var_3.x, false), vec4<bool>(var_3.x, var_0.a, var_0.a, var_0.a)), vec4<bool>(var_3.x, true, false, true)), !(!vec4<bool>(false, var_0.a, true, var_3.x)), select(!vec4<bool>(var_3.x, var_0.a, var_3.x, true), vec4<bool>(var_0.a, true, true, false), select(vec4<bool>(true, true, false, var_0.a), vec4<bool>(var_0.a, var_3.x, true, var_0.a), var_3.x)))));
}

fn func_2(arg_0: vec2<i32>, arg_1: f32) -> vec4<bool> {
    global2 = array<f32, 2>();
    return func_3(u_input.a);
}

fn func_1() -> f32 {
    let var_0 = ~vec2<i32>(1i, abs(0i));
    global2 = array<f32, 2>();
    let var_1 = firstLeadingBit(_wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(4294967295u, 0u, 0u, 13431u)) >> (select(~vec4<u32>(1u, 8414u, 315u, 95195u), abs(vec4<u32>(1u, 75003u, 1891u, 32002u)), func_2(u_input.b, global2[_wgslsmith_index_u32(1u, 2u)])) % vec4<u32>(32u)), vec4<u32>(0u, ~(~88469u), 2632u, _wgslsmith_div_u32(countOneBits(0u), ~0u))));
    let var_2 = Struct_2(~countOneBits(var_1.x));
    global0 = array<Struct_5, 20>();
    return -1171f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(func_1());
    let var_1 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-538f)), -483f), _wgslsmith_f_op_f32(-466f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + 290f) - -728f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-637f, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(0u, 2u)] * global2[_wgslsmith_index_u32(1u, 2u)]))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(36403u, 2u)] * global2[_wgslsmith_index_u32(4294967295u, 2u)]), global2[_wgslsmith_index_u32(4294967295u, 2u)])))), _wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(~(_wgslsmith_dot_vec2_u32(vec2<u32>(80967u, 641u), vec2<u32>(1u, 95444u)) | ~1u), 2u)], global2[_wgslsmith_index_u32(~(~0u), 2u)])));
    var var_2 = true;
    let var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1122f, global2[_wgslsmith_index_u32(reverseBits(1u) << (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 46110u), vec4<u32>(24603u, 63348u, 0u, 1u)) % 32u), 2u)])), global2[_wgslsmith_index_u32(~1u, 2u)])));
    let var_4 = Struct_3(Struct_1(var_1.yx, vec3<u32>(firstLeadingBit(63749u), ~_wgslsmith_sub_u32(4294967295u, 21633u), _wgslsmith_dot_vec2_u32(vec2<u32>(6022u, 5279u), reverseBits(vec2<u32>(98739u, 81969u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-317f - -1932f)), firstLeadingBit(firstLeadingBit(vec2<u32>(0u, 31011u))), -2147483647i), Struct_1(_wgslsmith_f_op_vec2_f32(-var_1.xw), ~vec3<u32>(1u, ~0u, 4294967295u), 359f, max(select(vec2<u32>(1u, 1u), firstTrailingBit(vec2<u32>(4294967295u, 1u)), vec2<bool>(true, true)), vec2<u32>(1u, 1u)), u_input.b.x), vec4<bool>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.a, u_input.a, 2147483647i) >> (vec4<u32>(4294967295u, 32661u, 4294967295u, 33072u) % vec4<u32>(32u)), abs(vec4<i32>(u_input.a, -16372i, u_input.a, u_input.a))) == u_input.b.x, true, any(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), any(vec2<bool>(true, false)))), true & all(vec2<bool>(false, true))));
    var var_5 = global1[_wgslsmith_index_u32(countOneBits(39676u), 23u)];
    let x = u_input.a;
    s_output = StorageBuffer(~min(4294967295u, 1u), var_4.a.d.x);
}

