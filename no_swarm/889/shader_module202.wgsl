struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec4<u32>,
    d: u32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec2<u32>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(vec2<f32>(1011f, 683f)));

var<private> global1: array<bool, 8>;

var<private> global2: vec2<i32> = vec2<i32>(i32(-2147483648), 30994i);

var<private> global3: array<f32, 17>;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_3) -> vec2<i32> {
    return ~(~(-(firstLeadingBit(vec2<i32>(u_input.b, global2.x)) | countOneBits(vec2<i32>(22544i, -26016i)))));
}

fn func_2() -> vec2<i32> {
    global1 = array<bool, 8>();
    global0 = array<Struct_1, 1>();
    return func_3(Struct_3(Struct_1(vec2<f32>(-1000f, 434f))));
}

fn func_1() -> Struct_2 {
    var var_0 = -21874i;
    global2 = -countOneBits(func_2());
    let var_1 = select(select(!(!vec2<bool>(global1[_wgslsmith_index_u32(1u, 8u)], global1[_wgslsmith_index_u32(u_input.a, 8u)])), vec2<bool>(global1[_wgslsmith_index_u32(0u, 8u)], all(!vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.a, 8u)], false, global1[_wgslsmith_index_u32(28712u, 8u)]))), global1[_wgslsmith_index_u32(u_input.c, 8u)]), vec2<bool>(global1[_wgslsmith_index_u32(u_input.e, 8u)], !(!all(vec3<bool>(false, false, global1[_wgslsmith_index_u32(u_input.d.x, 8u)])))), true);
    let var_2 = u_input.e;
    let var_3 = ~u_input.d.ww;
    return Struct_2(global0[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec4_u32(min(u_input.d, u_input.d) ^ ~u_input.d, u_input.d)), 1u)], 368f, max(vec4<u32>(4294967295u & _wgslsmith_sub_u32(var_2, var_3.x), 1u, _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, var_2, 4294967295u, var_2), _wgslsmith_div_vec4_u32(vec4<u32>(7852u, 4294967295u, 28437u, u_input.d.x), u_input.d)), var_2), _wgslsmith_sub_vec4_u32(u_input.d, ~_wgslsmith_sub_vec4_u32(u_input.d, u_input.d))), var_3.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(_wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(20629i, global2.x, -1i, -1i), vec4<i32>(-41534i, u_input.b, global2.x, u_input.b) >> (u_input.d % vec4<u32>(32u))), firstTrailingBit(~vec4<i32>(u_input.b, -12012i, 2147483647i, -4847i)), firstTrailingBit(~vec4<i32>(global2.x, -1i, global2.x, -1i)))) >> (u_input.d % vec4<u32>(32u));
    var var_1 = func_1();
    global3 = array<f32, 17>();
    let var_2 = _wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(~vec2<i32>(var_0.x, ~u_input.b), firstLeadingBit(min(-var_0.xz, var_0.wz & var_0.yy)), func_2()), vec2<i32>(19134i, _wgslsmith_dot_vec3_i32(var_0.yyw | vec3<i32>(-35090i, global2.x, var_0.x), select(var_0.xxy, ~var_0.zwz, vec3<bool>(true, global1[_wgslsmith_index_u32(24730u, 8u)], true)))));
    var_1 = func_1();
    global2 = var_0.ww;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_1.a.a.x));
}

