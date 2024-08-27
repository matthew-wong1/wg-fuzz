struct Struct_1 {
    a: vec3<bool>,
    b: vec3<bool>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), Struct_1(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true)));

var<private> global1: u32;

var<private> global2: array<i32, 24> = array<i32, 24>(46824i, 2147483647i, -60665i, 2147483647i, 43578i, 8550i, 1i, 2147483647i, 2147483647i, 3780i, -26922i, -81420i, 6044i, 2147483647i, -26240i, 45506i, -1i, -1i, 51989i, 1i, 17191i, i32(-2147483648), -1i, 27373i);

var<private> global3: array<i32, 8> = array<i32, 8>(18760i, 25959i, 16072i, i32(-2147483648), i32(-2147483648), -18599i, 18418i, -11465i);

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1(arg_0: vec2<bool>) -> u32 {
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<i32, 8>();
    let var_0 = max(u_input.b, _wgslsmith_div_i32(u_input.b << (func_1(global0.b.zy) % 32u), -31325i));
    global3 = array<i32, 8>();
    global1 = 11632u;
    var var_1 = _wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(firstTrailingBit(vec2<u32>(u_input.a, 66736u)), vec2<u32>(23270u, _wgslsmith_mult_u32(u_input.a, 64300u))), firstTrailingBit(vec2<u32>(12306u, 42868u))), ~firstTrailingBit(~abs(vec2<u32>(1u, 32316u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-179f, 248f, -303f))));
}

