struct Struct_1 {
    a: u32,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31>;

var<private> global1: vec3<bool>;

var<private> global2: array<Struct_1, 4>;

var<private> global3: array<vec4<u32>, 14> = array<vec4<u32>, 14>(vec4<u32>(0u, 1u, 0u, 1u), vec4<u32>(4294967295u, 40310u, 4294967295u, 4294967295u), vec4<u32>(62192u, 4294967295u, 1u, 59163u), vec4<u32>(0u, 1u, 0u, 4294967295u), vec4<u32>(71723u, 0u, 4294967295u, 1u), vec4<u32>(0u, 4294967295u, 3052u, 90453u), vec4<u32>(60385u, 1u, 41103u, 1u), vec4<u32>(1u, 4956u, 16940u, 0u), vec4<u32>(37068u, 33173u, 7487u, 0u), vec4<u32>(1u, 0u, 92526u, 11100u), vec4<u32>(1u, 64336u, 42202u, 0u), vec4<u32>(35620u, 16923u, 1u, 0u), vec4<u32>(46610u, 8838u, 4294967295u, 14277u), vec4<u32>(1u, 0u, 4294967295u, 10624u));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1471f);
    global2 = array<Struct_1, 4>();
    global0 = array<Struct_1, 31>();
    let var_1 = ~_wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(1787u, 0u)), firstTrailingBit(vec2<u32>(29221u, u_input.a))), firstLeadingBit(~vec2<u32>(u_input.a, 0u))) >> (select(_wgslsmith_div_vec2_u32(~(~vec2<u32>(0u, 4294967295u)), ~vec2<u32>(3512u, u_input.a)), _wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, u_input.a), vec2<u32>(u_input.a, u_input.a)) | select(vec2<u32>(u_input.a, u_input.a), vec2<u32>(1u, 64717u), vec2<bool>(global1.x, global1.x)), vec2<u32>(0u, u_input.a)), !any(!vec4<bool>(global1.x, true, global1.x, false))) % vec2<u32>(32u));
    var var_2 = Struct_1(_wgslsmith_sub_u32(_wgslsmith_div_u32(1u, select(_wgslsmith_mult_u32(31360u, u_input.a), var_1.x, true)), 49605u), firstTrailingBit(vec2<u32>(u_input.a, 0u)));
    let var_3 = global2[_wgslsmith_index_u32(7800u, 4u)];
    var var_4 = global2[_wgslsmith_index_u32(min(_wgslsmith_dot_vec2_u32(select(_wgslsmith_add_vec2_u32(vec2<u32>(var_3.a, var_2.a), var_2.b) << (~vec2<u32>(var_3.b.x, 1u) % vec2<u32>(32u)), ~vec2<u32>(var_2.a, 38861u), _wgslsmith_mod_u32(var_1.x, var_3.b.x) <= (56537u << (var_3.b.x % 32u))), ~(_wgslsmith_mod_vec2_u32(vec2<u32>(777u, 23659u), var_1) << (_wgslsmith_clamp_vec2_u32(vec2<u32>(24082u, u_input.a), var_3.b, vec2<u32>(4294967295u, 1u)) % vec2<u32>(32u)))), ~u_input.a & _wgslsmith_dot_vec2_u32(~select(vec2<u32>(var_1.x, var_2.b.x), var_2.b, global1.x), _wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(var_2.b, vec2<u32>(var_3.a, 60818u)), vec2<u32>(u_input.a, var_2.a), ~var_2.b))), 4u)];
    let x = u_input.a;
    s_output = StorageBuffer((2147483647i << (max(max(var_4.b.x, 1u), abs(0u)) % 32u)) << ((((0u | var_2.a) << (var_1.x % 32u)) ^ var_2.a) % 32u), -148f);
}

