struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: f32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec4<bool>,
}

struct Struct_5 {
    a: i32,
    b: vec4<i32>,
    c: Struct_2,
    d: f32,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<f32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec4<i32>(0i, 0i, -1i, 0i), vec4<bool>(true, true, false, true));

var<private> global1: array<vec3<u32>, 6>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(u_input.a << (3428u % 32u), reverseBits(1u));
    let var_1 = vec4<i32>(1i, 10386i, u_input.b.x >> (var_0 % 32u), u_input.b.x);
    let var_2 = reverseBits(17668u) | u_input.a;
    var var_3 = 46335u;
    let var_4 = select(select(global0.b, vec4<bool>(false, !all(global0.b.xwx), true, global0.b.x), all(global0.b.yz)), select(select(global0.b, global0.b, vec4<bool>(true, true, true, true)), select(global0.b, global0.b, !select(global0.b.x, true, true)), global0.b.x), global0.b);
    global1 = array<vec3<u32>, 6>();
    let var_5 = vec4<u32>(8522u, ~var_2, firstLeadingBit(~(~1u)), 4956u);
    var var_6 = Struct_5(_wgslsmith_mod_i32(-(~(u_input.c.x | global0.a.x)), firstTrailingBit(-(34077i ^ var_1.x))), select(vec4<i32>(i32(-1i) * -var_1.x, reverseBits(~6239i), -u_input.d.x, reverseBits(i32(-1i) * -1i)), vec4<i32>(_wgslsmith_add_i32(1i, 1i), ~var_1.x, _wgslsmith_mult_i32(~u_input.d.x, -10929i), _wgslsmith_sub_i32(_wgslsmith_clamp_i32(0i, var_1.x, -5667i), var_1.x)), global0.b.x), Struct_2(!(!vec3<bool>(false, global0.b.x, false)), var_5), 398f, global0.b.xwy);
    let var_7 = select(var_4.wzy, vec3<bool>(global0.b.x, !any(select(vec4<bool>(var_4.x, global0.b.x, global0.b.x, true), global0.b, global0.b.x)), all(!(!vec2<bool>(var_4.x, false)))), var_6.c.a);
    let x = u_input.a;
    s_output = StorageBuffer(var_6.b.x, 1u, vec2<f32>(1709f, _wgslsmith_f_op_f32(abs(var_6.d))), abs(_wgslsmith_add_vec3_u32(var_5.wyx, ~vec3<u32>(85410u, 4294967295u, var_0))));
}

