struct Struct_1 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 23>;

var<private> global1: array<vec3<i32>, 22> = array<vec3<i32>, 22>(vec3<i32>(2147483647i, 2147483647i, 1289i), vec3<i32>(-1i, 2147483647i, -32754i), vec3<i32>(2147483647i, 1i, -1i), vec3<i32>(1i, i32(-2147483648), i32(-2147483648)), vec3<i32>(-1i, 1i, -3823i), vec3<i32>(689i, -44738i, -27264i), vec3<i32>(i32(-2147483648), -2181i, -29102i), vec3<i32>(-1i, -4426i, i32(-2147483648)), vec3<i32>(2147483647i, 0i, 2147483647i), vec3<i32>(i32(-2147483648), 16594i, -1i), vec3<i32>(0i, 1i, -3320i), vec3<i32>(69644i, 23074i, -1i), vec3<i32>(-57282i, 1i, -1i), vec3<i32>(24287i, -15374i, 5534i), vec3<i32>(0i, -1i, 36826i), vec3<i32>(2147483647i, 0i, -1i), vec3<i32>(i32(-2147483648), -16940i, 1i), vec3<i32>(-37655i, -50984i, 0i), vec3<i32>(-24315i, i32(-2147483648), 58730i), vec3<i32>(-12741i, -32514i, -1i), vec3<i32>(1i, 33738i, 1i), vec3<i32>(-19916i, -27539i, -31358i));

var<private> global2: array<vec3<bool>, 31>;

var<private> global3: vec4<f32> = vec4<f32>(1000f, 450f, 1084f, -901f);

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~abs(~((u_input.c.yy | u_input.c.zy) >> (firstLeadingBit(u_input.b.wy) % vec2<u32>(32u))));
    global2 = array<vec3<bool>, 31>();
    let var_1 = all(!vec3<bool>(true, any(vec4<bool>(true, true, true, true)), true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_i32((vec4<i32>(0i, 4630i, u_input.a, 19341i) << (vec4<u32>(var_0.x, var_0.x, u_input.c.x, 1u) % vec4<u32>(32u))) ^ ~vec4<i32>(global0[_wgslsmith_index_u32(var_0.x, 23u)], 0i, -1i, -2147483647i), firstLeadingBit(_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, 0i, global0[_wgslsmith_index_u32(u_input.b.x, 23u)], 7778i), vec4<i32>(global0[_wgslsmith_index_u32(1u, 23u)], 0i, global0[_wgslsmith_index_u32(45935u, 23u)], -11975i)))) ^ vec4<i32>(u_input.a, u_input.a, _wgslsmith_sub_i32(firstTrailingBit(0i), ~37949i), -3131i), abs(abs(global1[_wgslsmith_index_u32(~(~86220u), 22u)])));
}

