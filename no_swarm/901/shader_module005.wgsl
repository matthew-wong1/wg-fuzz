struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, false);

var<private> global1: array<vec4<u32>, 32>;

var<private> global2: vec3<bool> = vec3<bool>(true, false, false);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32) -> vec2<bool> {
    let var_0 = 1i;
    let var_1 = Struct_2(Struct_1(var_0, -585f));
    global2 = select(!vec3<bool>(global0.x, all(vec4<bool>(global2.x, global0.x, global2.x, true)), true), select(vec3<bool>(global2.x, true, !(!global0.x)), !vec3<bool>(true, global2.x, true), vec3<bool>(true, true, true)), all(!(!select(vec4<bool>(global2.x, global2.x, false, true), vec4<bool>(true, global2.x, global2.x, global2.x), vec4<bool>(false, true, true, global2.x)))));
    var var_2 = u_input.c.x;
    let var_3 = _wgslsmith_sub_vec4_u32(~vec4<u32>(19953u, 0u, 1u, select(~0u, ~4294967295u, true | global0.x)), (_wgslsmith_add_vec4_u32(vec4<u32>(0u, 6065u, 28950u, 0u) | global1[_wgslsmith_index_u32(25677u, 32u)], ~global1[_wgslsmith_index_u32(4294967295u, 32u)]) >> (reverseBits(vec4<u32>(1u, 1u, 1u, 1u)) % vec4<u32>(32u))) & ~(~vec4<u32>(4294967295u, 0u, 0u, 34773u)));
    return select(global2.zx, vec2<bool>(false, any(vec4<bool>(any(vec2<bool>(global2.x, true)), global2.x, true, true))), any(vec2<bool>(!global2.x, all(vec4<bool>(global0.x, global0.x, global0.x, false)) != any(global2.zz))));
}

fn func_2(arg_0: i32) -> vec2<u32> {
    let var_0 = func_3(-1507i);
    var var_1 = abs(reverseBits(vec2<u32>(_wgslsmith_dot_vec4_u32(global1[_wgslsmith_index_u32(4294967295u, 32u)], vec4<u32>(1u, 4294967295u, 4294967295u, 26766u)) & ~0u, ~0u)));
    var var_2 = select(!vec3<bool>(~0i == -arg_0, _wgslsmith_f_op_f32(783f + 1192f) != _wgslsmith_f_op_f32(trunc(-361f)), true), !vec3<bool>(any(var_0), all(select(vec3<bool>(var_0.x, true, true), vec3<bool>(var_0.x, global2.x, true), vec3<bool>(false, global0.x, false))), true), true);
    let var_3 = ~var_1.x;
    let var_4 = Struct_2(Struct_1(~_wgslsmith_add_i32(-28819i, u_input.a), 2628f));
    return vec2<u32>(var_3, abs(var_1.x));
}

fn func_1() -> Struct_2 {
    var var_0 = ~(~func_2(-8736i));
    global1 = array<vec4<u32>, 32>();
    let var_1 = select(global0.x, global2.x, global0.x);
    var var_2 = Struct_1(u_input.b.x, -1397f);
    let var_3 = func_2(-43655i).x >> (select(1u, var_0.x, select(global2.x, true | !global2.x, global0.x)) % 32u);
    return Struct_2(Struct_1(select(select(2147483647i, -16672i, var_1), abs(-1i), global0.x && global2.x) ^ -(~var_2.a), 753f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = _wgslsmith_f_op_f32(abs(1023f));
    var_1 = var_0.a.b;
    var_1 = -1257f;
    global2 = select(select(!(!vec3<bool>(global2.x, false, global2.x)), vec3<bool>(global2.x, true, reverseBits(76293u) < firstTrailingBit(7280u)), false), vec3<bool>(true, true, !(_wgslsmith_f_op_f32(-var_0.a.b) < _wgslsmith_f_op_f32(-var_0.a.b))), !select(vec3<bool>(true, global0.x, true), select(select(vec3<bool>(false, true, global2.x), vec3<bool>(global0.x, global2.x, false), vec3<bool>(global0.x, global2.x, global0.x)), select(vec3<bool>(true, false, global0.x), vec3<bool>(global0.x, true, global0.x), vec3<bool>(true, false, global2.x)), global2.x), vec3<bool>(global2.x, false, true)));
    var_1 = _wgslsmith_f_op_f32(floor(-859f));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(1u), max(u_input.c.x << (firstLeadingBit(15787u) % 32u), u_input.a) | _wgslsmith_mult_i32(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(var_0.a.a, u_input.a), var_0.a.a, -1i), i32(-1i) * -2147483647i), -(~u_input.b.xwz), 33004u);
}

