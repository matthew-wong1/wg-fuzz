struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: Struct_1,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<u32, 23>;

var<private> global2: f32 = 284f;

var<private> global3: u32 = 57944u;

var<private> global4: array<Struct_1, 31>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~min((~u_input.a >> (~global1[_wgslsmith_index_u32(4294967295u, 23u)] % 32u)) >> (u_input.a % 32u), 1u);
    var var_1 = u_input.b.x;
    var_1 = u_input.b.x;
    var_1 = u_input.b.x;
    var_1 = _wgslsmith_div_i32(-countOneBits(u_input.b.x), -46362i);
    global3 = ~select(abs(_wgslsmith_add_u32(u_input.a, _wgslsmith_div_u32(42240u, 9319u))), 13149u, select(true, global0.a.x, global0.a.x));
    var_1 = -1i;
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-629f - -228f), _wgslsmith_f_op_f32(step(732f, -526f))), 1f)), 271f, -279f, -1453f);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(abs(vec3<u32>(global1[_wgslsmith_index_u32(21635u, 23u)], global1[_wgslsmith_index_u32(u_input.a, 23u)], 0u)), vec3<u32>(4294967295u, 41866u, 1u)), select(countOneBits(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 23u)], 23u)], 23u)], 6318u, 4294967295u)), ~vec3<u32>(global1[_wgslsmith_index_u32(5754u, 23u)], u_input.a, u_input.a), any(vec3<bool>(global0.a.x, false, global0.a.x)))), min(~vec4<i32>(u_input.b.x, 19575i << (u_input.a % 32u), u_input.b.x, u_input.b.x), reverseBits(~vec4<i32>(1i, 60271i, -1646i, 25356i) & vec4<i32>(-2147483647i, 0i, u_input.b.x, u_input.b.x))), _wgslsmith_f_op_f32(var_2.x - var_2.x));
}

