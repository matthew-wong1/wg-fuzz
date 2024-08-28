struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: i32,
    c: vec2<i32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: u32,
}

struct Struct_4 {
    a: f32,
    b: bool,
}

struct Struct_5 {
    a: f32,
    b: f32,
    c: f32,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(i32(-2147483648), 6137i, 19524i);

var<private> global1: Struct_5 = Struct_5(-1000f, -256f, 1085f, 36597i, Struct_1(vec4<bool>(true, true, false, false)));

var<private> global2: array<Struct_4, 18>;

var<private> global3: vec3<f32> = vec3<f32>(191f, -2432f, 1487f);

var<private> global4: array<Struct_2, 32>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_clamp_vec2_i32(vec2<i32>(-u_input.a.x, ~_wgslsmith_dot_vec4_i32(vec4<i32>(global1.d, 0i, 0i, global1.d), vec4<i32>(-5684i, -5374i, 4107i, global0.x))), global0.zz, _wgslsmith_sub_vec2_i32(select(vec2<i32>(u_input.c, global1.d), vec2<i32>(3629i, 0i), false) >> (_wgslsmith_mult_vec2_u32(u_input.b.wx, vec2<u32>(1u, 16497u)) % vec2<u32>(32u)), firstLeadingBit(-vec2<i32>(-40085i, global1.d))));
    let x = u_input.a;
    s_output = StorageBuffer(~4294967295u, abs(u_input.b.yy), global1.a);
}

