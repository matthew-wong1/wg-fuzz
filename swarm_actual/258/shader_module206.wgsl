struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 6>;

var<private> global1: array<vec4<i32>, 26> = array<vec4<i32>, 26>(vec4<i32>(i32(-2147483648), -39277i, 2147483647i, 13715i), vec4<i32>(-3596i, 1i, -23142i, 1i), vec4<i32>(-2168i, 17211i, 39284i, -20929i), vec4<i32>(-15815i, 2699i, 42787i, -11371i), vec4<i32>(37363i, -1i, 9678i, 2147483647i), vec4<i32>(-27958i, 2147483647i, 19485i, i32(-2147483648)), vec4<i32>(17558i, 1i, -27499i, 2147483647i), vec4<i32>(2147483647i, 0i, -1i, -201i), vec4<i32>(0i, 0i, 0i, i32(-2147483648)), vec4<i32>(-13657i, 16090i, -1i, -37419i), vec4<i32>(2147483647i, -1i, 1i, -1i), vec4<i32>(32313i, 2147483647i, i32(-2147483648), -43463i), vec4<i32>(1i, 7542i, -25182i, 8430i), vec4<i32>(-69710i, i32(-2147483648), -11885i, 3104i), vec4<i32>(37301i, i32(-2147483648), 2147483647i, 3657i), vec4<i32>(2147483647i, -26976i, 0i, 1901i), vec4<i32>(i32(-2147483648), 2147483647i, 0i, i32(-2147483648)), vec4<i32>(1i, -51252i, 52014i, i32(-2147483648)), vec4<i32>(-8250i, 7029i, 48636i, 12893i), vec4<i32>(i32(-2147483648), 2147483647i, -1i, -71530i), vec4<i32>(-56704i, 12701i, 25025i, 24148i), vec4<i32>(2147483647i, -38107i, 33274i, 0i), vec4<i32>(1i, i32(-2147483648), 0i, 2147483647i), vec4<i32>(46280i, 1i, -40719i, -1i), vec4<i32>(i32(-2147483648), 54145i, 0i, -1i), vec4<i32>(-11164i, 0i, -40098i, -1i));

var<private> global2: f32;

var<private> global3: array<Struct_2, 15>;

var<private> global4: array<vec4<i32>, 17>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select