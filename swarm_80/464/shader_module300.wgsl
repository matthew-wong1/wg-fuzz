struct Struct_1 {
    a: f32,
    b: f32,
    c: u32,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: i32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 25>;

var<private> global1: vec4<u32>;

var<private> global2: vec2<f32> = vec2<f32>(407f, -122f);

var<private> global3: vec3<i32> = vec3<i32>(2147483647i, -1i, 0i);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(-73708i, vec4<u32>(_wgslsmith_dot_vec2_u32(countOneBits(global1.yz), global1.zy), global1.x, ~countOneBits(4294967295u), ~global1.x) << (((_wgslsmith_div_vec4_u32(vec4<u32>(12803u, 42943u, 1u, global1.x), vec4<u32>(23004u, 1u, global1.x, global1.x)) << (max(vec4<u32>(60266u, 4294967295u, global1.x, global1.x), vec4<u32>(global1.x, 34357u, global1.x, 60249u)) % vec4<u32>(32u))) << (firstLeadingBit(vec4<u32>(23267u, 4294967295u, global1.x, global1.x)) % vec4<u32>(32u))) % vec4<u32>(32u)), global3.x, _wgslsmith_add_i32(-1i, -u_input.a.x) | _wgslsmith_dot_vec2_i32(vec2<i32>(firstTrailingBit(global3.x), ~global3.x), select(_wgslsmith_clamp_vec2_i32(u_input.a.zz, global3.zz, u_input.a.xy), vec2<i32>(50884i, global3.x), vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-641f, -513f) - vec2<f32>(global2.x, 106f)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1046f, global2.x)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, global2.x)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(-238f)), global2.x))));
}

