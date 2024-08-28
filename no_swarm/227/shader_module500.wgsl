struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec4<i32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 5>;

var<private> global1: vec3<i32>;

var<private> global2: Struct_5;

var<private> global3: vec2<bool>;

var<private> global4: array<Struct_5, 19>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 5>();
    let var_0 = Struct_3(i32(-1i) * -49812i, ~(_wgslsmith_div_vec4_i32(vec4<i32>(global1.x, global1.x, 2147483647i, 43017i), global2.a.b) ^ ~(global2.a.b ^ vec4<i32>(global1.x, -2147483647i, global1.x, global2.a.b.x))));
    global0 = array<Struct_3, 5>();
    global3 = vec2<bool>(false, global3.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_i32(global2.a.b.wy & var_0.b.ww, select(~global1.zx, vec2<i32>(abs(2147483647i), var_0.b.x), vec2<bool>(false | global3.x, true))), (~vec4<u32>(59574u, u_input.a.x, u_input.a.x, 0u) << (u_input.a % vec4<u32>(32u))) >> (~u_input.a % vec4<u32>(32u)), ~vec2<i32>(global2.a.b.x, _wgslsmith_add_i32(global1.x, -global1.x)), 1359f, -345f);
}

