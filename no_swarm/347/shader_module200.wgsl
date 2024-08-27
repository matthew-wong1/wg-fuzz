struct Struct_1 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<u32>(10127u, 1u));

var<private> global1: array<Struct_1, 27>;

var<private> global2: array<i32, 5> = array<i32, 5>(0i, -37735i, -17294i, 2147483647i, 13400i);

var<private> global3: array<bool, 19>;

var<private> global4: i32 = -69501i;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(max(vec2<u32>(global0.a.x, 40929u), vec2<u32>(u_input.b.x, u_input.b.x)), ~u_input.b), u_input.b) >> (abs(~global0.a) % vec2<u32>(32u)));
    let var_1 = Struct_1(select(select(vec2<u32>(u_input.b.x, _wgslsmith_clamp_u32(4294967295u, var_0.a.x, 3213u)), reverseBits(_wgslsmith_mult_vec2_u32(global0.a, vec2<u32>(1256u, 7454u))), false), global0.a, vec2<bool>(!all(vec4<bool>(global3[_wgslsmith_index_u32(global0.a.x, 19u)], global3[_wgslsmith_index_u32(u_input.b.x, 19u)], true, false)), (var_0.a.x >> (u_input.b.x % 32u)) > _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 0u), vec2<u32>(global0.a.x, global0.a.x)))));
    var var_2 = global1[_wgslsmith_index_u32(~2357u, 27u)];
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = Struct_1(_wgslsmith_mult_vec2_u32(u_input.b, var_0.a));
    let var_2 = var_0;
    let var_3 = var_1;
    global4 = u_input.a.x;
    var var_4 = ~vec3<u32>(~1u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(global0.a.x, 27281u, 4294967295u), vec3<u32>(var_0.a.x, 0u, var_3.a.x)) ^ 0u, reverseBits(var_3.a.x));
    let var_5 = var_0;
    let var_6 = false & !global3[_wgslsmith_index_u32(var_2.a.x, 19u)];
    global4 = countOneBits(i32(-1i) * -1i);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(1f, 1f), 369f, vec4<i32>(~2147483647i >> (_wgslsmith_mod_u32(~10213u, ~var_0.a.x) % 32u), u_input.a.x, min(i32(-1i) * -9251i, min(-1i, global2[_wgslsmith_index_u32(1u, 5u)])), -firstTrailingBit(~global2[_wgslsmith_index_u32(48221u, 5u)])));
}

