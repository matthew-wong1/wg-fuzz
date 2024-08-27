struct Struct_1 {
    a: f32,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1 = Struct_1(2181f, vec3<f32>(-1580f, 2636f, -1000f));

var<private> global2: Struct_1;

var<private> global3: array<Struct_1, 30>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(!select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(true, true), vec2<bool>(false, true)), select(vec2<bool>(true, u_input.b.x >= u_input.b.x), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), true), !all(vec4<bool>(true, true, true, true)));
    var var_1 = Struct_1(-970f, _wgslsmith_f_op_vec3_f32(-global0.b));
    var var_2 = 1u;
    let var_3 = global3[_wgslsmith_index_u32(~(~(firstLeadingBit(reverseBits(u_input.c.x)) | u_input.c.x)), 30u)];
    var var_4 = ~41828u;
    let x = u_input.a;
    s_output = StorageBuffer(global1.a, u_input.a.wzy, ~(~select(min(u_input.c, u_input.c), reverseBits(vec4<u32>(41525u, 0u, u_input.c.x, u_input.c.x)), 1u <= u_input.c.x)), select(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.d.x, 2147483647i, u_input.a.x), vec3<i32>(u_input.d.x, u_input.d.x, -23111i)), 0i), 0i, false));
}

