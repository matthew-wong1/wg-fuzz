struct Struct_1 {
    a: i32,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: array<vec4<f32>, 19>;

var<private> global2: array<bool, 23>;

var<private> global3: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(26568i, vec2<u32>(4294967295u, 80864u)), Struct_1(2147483647i, vec2<u32>(8460u, 13892u)), Struct_1(30884i, vec2<u32>(29729u, 4294967295u)), Struct_1(i32(-2147483648), vec2<u32>(11955u, 4294967295u)), Struct_1(1i, vec2<u32>(69940u, 0u)), Struct_1(-39577i, vec2<u32>(41831u, 0u)), Struct_1(41338i, vec2<u32>(14213u, 0u)), Struct_1(16413i, vec2<u32>(126375u, 4294967295u)), Struct_1(2147483647i, vec2<u32>(4294967295u, 4294967295u)), Struct_1(1i, vec2<u32>(4294967295u, 4294967295u)), Struct_1(-1i, vec2<u32>(1u, 49148u)), Struct_1(12895i, vec2<u32>(0u, 1u)), Struct_1(i32(-2147483648), vec2<u32>(0u, 53666u)), Struct_1(-42103i, vec2<u32>(16352u, 4294967295u)), Struct_1(-38265i, vec2<u32>(63413u, 4294967295u)), Struct_1(12827i, vec2<u32>(0u, 1u)), Struct_1(i32(-2147483648), vec2<u32>(4631u, 23779u)), Struct_1(36573i, vec2<u32>(54933u, 0u)), Struct_1(18844i, vec2<u32>(1u, 5538u)), Struct_1(1i, vec2<u32>(4294967295u, 0u)), Struct_1(0i, vec2<u32>(1u, 24754u)), Struct_1(-1i, vec2<u32>(82979u, 0u)), Struct_1(i32(-2147483648), vec2<u32>(0u, 58226u)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~u_input.a);
    var var_1 = u_input.a.x;
    let var_2 = !vec4<bool>(!all(vec2<bool>(false, global2[_wgslsmith_index_u32(18079u, 23u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(515f, 407f, global2[_wgslsmith_index_u32(107000u, 23u)]))) == _wgslsmith_f_op_f32(max(-451f, -1910f)), min(u_input.b, 0i) == global0.x, !global2[_wgslsmith_index_u32(abs(reverseBits(40166u)), 23u)]);
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1328f)) - _wgslsmith_f_op_f32(ceil(-988f))), -242f, -141f))));
    let var_4 = Struct_1(_wgslsmith_mod_i32(_wgslsmith_add_i32(1i, -u_input.a.x << (_wgslsmith_mod_u32(1u, 1u) % 32u)), i32(-1i) * -2147483647i), firstLeadingBit(vec2<u32>(_wgslsmith_clamp_u32(~4294967295u, min(0u, 44051u), ~0u), reverseBits(2562u))));
    global1 = array<vec4<f32>, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(var_3.x, var_4.b);
}

