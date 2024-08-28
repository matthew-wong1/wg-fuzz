struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: vec2<i32>,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: i32,
    d: vec3<u32>,
    e: bool,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: vec4<f32>,
    d: Struct_1,
    e: bool,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 7> = array<vec4<i32>, 7>(vec4<i32>(-1370i, 4794i, 79383i, 12577i), vec4<i32>(1i, i32(-2147483648), -45774i, -1i), vec4<i32>(-50680i, 2147483647i, -25616i, i32(-2147483648)), vec4<i32>(i32(-2147483648), 2147483647i, -14434i, -12128i), vec4<i32>(0i, 1i, 2147483647i, -22433i), vec4<i32>(0i, -39836i, 1i, 43380i), vec4<i32>(-12003i, i32(-2147483648), 1i, -24431i));

var<private> global1: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(-264f, vec4<bool>(true, false, true, false), vec2<i32>(i32(-2147483648), 32802i), 2147483647i, 0u));

var<private> global2: array<vec3<i32>, 5> = array<vec3<i32>, 5>(vec3<i32>(2147483647i, 2147483647i, 50621i), vec3<i32>(-18649i, 36503i, 15242i), vec3<i32>(-13467i, 15061i, 6072i), vec3<i32>(1i, 1i, i32(-2147483648)), vec3<i32>(2147483647i, -44847i, 44436i));

var<private> global3: array<u32, 2>;

var<private> global4: array<bool, 31>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<i32>, 7>();
    global4 = array<bool, 31>();
    global0 = array<vec4<i32>, 7>();
    global1 = array<Struct_1, 1>();
    var var_0 = u_input.b;
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-600f, -1253f, global4[_wgslsmith_index_u32(u_input.a, 31u)] && true))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(min(42603i, _wgslsmith_mult_i32(_wgslsmith_sub_i32(u_input.b, -27043i), 0i)), 1i, ~u_input.b), 105859u);
}

