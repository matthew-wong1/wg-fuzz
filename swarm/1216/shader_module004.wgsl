struct Struct_1 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(vec4<u32>(4294967295u, 4294967295u, 94369u, 4294967295u)), Struct_1(vec4<u32>(53475u, 10460u, 4367u, 4294967295u)), Struct_1(vec4<u32>(0u, 88101u, 1u, 102416u)), Struct_1(vec4<u32>(1u, 61882u, 1u, 0u)), Struct_1(vec4<u32>(4986u, 0u, 1u, 35117u)), Struct_1(vec4<u32>(0u, 21846u, 4294967295u, 4294967295u)));

var<private> global1: vec2<f32> = vec2<f32>(2443f, 290f);

var<private> global2: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(vec4<u32>(67279u, 4294967295u, 1005u, 13396u)), Struct_1(vec4<u32>(7877u, 29503u, 39821u, 10276u)), Struct_1(vec4<u32>(62487u, 85877u, 27194u, 0u)), Struct_1(vec4<u32>(4294967295u, 0u, 59352u, 0u)), Struct_1(vec4<u32>(23065u, 4294967295u, 35043u, 58059u)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: vec2<f32>, arg_3: Struct_1) -> u32 {
    global2 = array<Struct_1, 5>();
    let var_0 = select(select(vec2<bool>(true, true), vec2<bool>(arg_0 > _wgslsmith_f_op_f32(abs(-798f)), select(any(vec2<bool>(false, true)), arg_2.x > arg_0, false)), (select(true, true, false) || true) & true), select(!vec2<bool>(false, any(vec2<bool>(false, true))), vec2<bool>(!(global1.x > arg_0), any(vec4<bool>(true, true, true, true))), any(vec2<bool>(true, true))), false);
    let var_1 = arg_3;
    var var_2 = -(~1i);
    var var_3 = arg_3.a;
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(_wgslsmith_mod_u32(u_input.a, 1u), u_input.a, u_input.a, ~countOneBits(func_1(-694f, _wgslsmith_mult_u32(9075u, u_input.a), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, global1.x) * vec2<f32>(-799f, global1.x)), global2[_wgslsmith_index_u32(~1u, 5u)])));
    var var_1 = global2[_wgslsmith_index_u32(0u, 5u)];
    var_0 = ~(~vec4<u32>(var_1.a.x, ~var_1.a.x, u_input.a, firstLeadingBit(4294967295u)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-878f, 1358f));
    let var_3 = _wgslsmith_dot_vec2_i32(max(~countOneBits(-vec2<i32>(0i, 1i)), firstLeadingBit(countOneBits(~vec2<i32>(-44904i, 26448i)))), _wgslsmith_mult_vec2_i32(vec2<i32>(firstTrailingBit(abs(-2147483647i)), (40272i >> (var_0.x % 32u)) << (40309u % 32u)), max(-(~vec2<i32>(1i, -4558i)), vec2<i32>(1i, 1i))));
    let var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(0u);
}

