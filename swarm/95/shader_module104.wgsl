struct Struct_1 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 32> = array<f32, 32>(-1238f, -1000f, -2073f, 355f, 439f, 1318f, 1181f, -641f, -1000f, 434f, 361f, -1000f, -1000f, -1688f, -1293f, 1262f, -2048f, 1230f, -882f, -486f, -1837f, 2922f, 180f, 414f, 1000f, -1221f, 555f, 603f, 367f, 623f, 1000f, 1037f);

var<private> global1: array<Struct_1, 21>;

var<private> global2: array<vec2<i32>, 19> = array<vec2<i32>, 19>(vec2<i32>(0i, -1i), vec2<i32>(-19882i, -8821i), vec2<i32>(-90441i, -1i), vec2<i32>(-39603i, -1i), vec2<i32>(-23560i, 2147483647i), vec2<i32>(-39754i, 0i), vec2<i32>(-55784i, 6666i), vec2<i32>(-1188i, -12886i), vec2<i32>(-1i, -10214i), vec2<i32>(-6156i, -31688i), vec2<i32>(-1i, 15009i), vec2<i32>(0i, 2147483647i), vec2<i32>(1i, 2147483647i), vec2<i32>(0i, -68530i), vec2<i32>(20476i, -1i), vec2<i32>(24377i, -33478i), vec2<i32>(18223i, i32(-2147483648)), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(-8845i, i32(-2147483648)));

var<private> global3: vec3<u32> = vec3<u32>(21278u, 1u, 4294967295u);

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(vec3<u32>(1u, global3.x, _wgslsmith_clamp_u32(254u, countOneBits(u_input.a.x), max(0u >> (u_input.c.x % 32u), ~4294967295u))));
    let var_1 = !(!vec3<bool>(all(vec3<bool>(true, true, true)), all(vec3<bool>(false, true, true)) && false, u_input.b == _wgslsmith_mult_i32(u_input.b, u_input.b)));
    global1 = array<Struct_1, 21>();
    global2 = array<vec2<i32>, 19>();
    let var_2 = _wgslsmith_mult_vec2_u32(vec2<u32>(select(7878u, 4294967295u, true), ~_wgslsmith_mult_u32(4294967295u, u_input.c.x)), countOneBits(~vec2<u32>(35324u, global3.x))) ^ _wgslsmith_add_vec2_u32(abs(~abs(vec2<u32>(109816u, 12384u))), select(abs(~vec2<u32>(var_0.x, u_input.a.x)), ~(global3.xy ^ global3.zz), var_1.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(~(~(~var_0.x)), ~(~_wgslsmith_add_u32(var_0.x, 4294967295u))), -29004i, var_2.x, vec3<i32>(-u_input.b, u_input.b, u_input.b));
}

