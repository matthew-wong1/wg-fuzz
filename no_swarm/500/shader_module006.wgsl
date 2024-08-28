struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec4<u32>,
    d: vec4<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: f32;

var<private> global2: array<vec4<bool>, 27>;

var<private> global3: array<vec4<f32>, 13>;

var<private> global4: array<Struct_1, 18>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(-select(-_wgslsmith_add_vec3_i32(global0.zzw, vec3<i32>(25044i, 12332i, -14033i)), ~global0.zyy & global0.ywx, vec3<bool>(true, true, true)), !any(!select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true))), vec4<u32>(countOneBits(1u), 53696u, 100508u, 4294967295u));
    let var_1 = var_0.c | ~var_0.c;
    global1 = 1077f;
    global0 = vec4<i32>(-1i) * -(_wgslsmith_mult_vec4_i32(vec4<i32>(0i, 74042i, var_0.a.x, global0.x), vec4<i32>(-27054i, -21952i, -29715i, 1i)) | ~(-vec4<i32>(global0.x, var_0.a.x, -15613i, var_0.a.x)));
    global3 = array<vec4<f32>, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(1i, global3[_wgslsmith_index_u32(4294967295u, 13u)], var_1, global3[_wgslsmith_index_u32(~var_0.c.x ^ _wgslsmith_div_u32((u_input.b >> (u_input.a.x % 32u)) >> (0u % 32u), 1u), 13u)], 1i);
}

