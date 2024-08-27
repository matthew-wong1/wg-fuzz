struct Struct_1 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -31717i;

var<private> global1: array<Struct_1, 26>;

var<private> global2: vec3<i32> = vec3<i32>(-30944i, -15343i, 55995i);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1(arg_0: vec3<u32>) -> vec3<i32> {
    return ~u_input.a.yxz;
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> i32 {
    global0 = 60571i;
    global0 = 1i;
    var var_0 = arg_0;
    let var_1 = Struct_1(!var_0.a);
    global0 = _wgslsmith_mod_i32(~0i, 32675i ^ global2.x);
    return ~abs(_wgslsmith_dot_vec2_i32(global2.yx, ~vec2<i32>(global2.x, u_input.c)) ^ ~_wgslsmith_div_i32(u_input.a.x, global2.x));
}

fn func_3(arg_0: vec4<i32>) -> Struct_1 {
    var var_0 = Struct_1(select(vec3<bool>(all(vec4<bool>(false, false, true, false)), true, any(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), false))), select(vec3<bool>(false, 58563u > u_input.b.x, true), vec3<bool>(true, any(vec4<bool>(true, false, false, false)), u_input.b.x <= 1u), false), select(vec3<bool>(true, true, select(false, false, false)), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), false), true)));
    let var_1 = vec4<bool>(select(true, true, !(true && var_0.a.x)), var_0.a.x != var_0.a.x, true, false);
    return Struct_1(!var_1.yzy);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = ~func_1(u_input.b.ywz ^ u_input.b.wxy);
    var var_0 = func_3(vec4<i32>(~(-19780i), func_2(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(21643u, 4294967295u, u_input.b.x, u_input.b.x), vec4<u32>(0u, u_input.b.x, u_input.b.x, u_input.b.x)), 26u)], -1000f), 1i, global2.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_u32(max(~(~u_input.b.wx), ~u_input.b.zx << (select(vec2<u32>(u_input.b.x, u_input.b.x), u_input.b.wx, false) % vec2<u32>(32u))), _wgslsmith_sub_vec2_u32(vec2<u32>(43495u, u_input.b.x), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.b.x, 36978u), select(vec2<u32>(u_input.b.x, u_input.b.x), vec2<u32>(16061u, u_input.b.x), var_0.a.x)))), 546f, select(firstTrailingBit(u_input.b.x), 11607u >> (((1u ^ u_input.b.x) << (countOneBits(u_input.b.x) % 32u)) % 32u), true));
}

