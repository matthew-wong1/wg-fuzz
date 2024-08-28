struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: bool,
    d: vec4<u32>,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: u32;

var<private> global2: array<vec4<u32>, 5> = array<vec4<u32>, 5>(vec4<u32>(4294967295u, 7891u, 52638u, 48243u), vec4<u32>(191723u, 4793u, 1u, 105062u), vec4<u32>(1u, 0u, 2031u, 4294967295u), vec4<u32>(42160u, 0u, 4294967295u, 28040u), vec4<u32>(1u, 4294967295u, 1u, 26260u));

var<private> global3: u32 = 0u;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: vec3<f32>) -> Struct_1 {
    let var_0 = 2147483647i;
    let var_1 = -661f;
    var var_2 = 4294967295u;
    global2 = array<vec4<u32>, 5>();
    var_2 = u_input.b;
    return Struct_1(true);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = u_input.b;
    let var_0 = Struct_2(func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-300f, _wgslsmith_f_op_f32(select(434f, 1000f, true)), 1f))), ~abs(u_input.a), ((1000f < _wgslsmith_f_op_f32(select(666f, -127f, false))) || true) && true, global2[_wgslsmith_index_u32(~u_input.b, 5u)]);
    global1 = 1u;
    global0 = !var_0.c;
    global0 = any(!vec4<bool>(u_input.b != ~var_0.d.x, false, true, any(!vec4<bool>(var_0.c, false, var_0.a.a, var_0.a.a))));
    global0 = true;
    let x = u_input.a;
    s_output = StorageBuffer(42539i, _wgslsmith_sub_vec4_i32(abs(vec4<i32>(-48682i, -29979i << (u_input.a % 32u), firstTrailingBit(-10925i), ~0i)), vec4<i32>(_wgslsmith_sub_i32(0i, 2147483647i), 0i, 1i, 1i) >> (vec4<u32>(1u, abs(var_0.d.x), ~2883u, u_input.a) % vec4<u32>(32u))), var_0.d);
}

